# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:configservice)

module Aws::ConfigService
  # An API client for Aws::ConfigService.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::StarlingDoveService
    @identifier = :configservice

    add_plugin(::Aws::ConfigService::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ConfigService::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [#call(attempts)] :retry_backoff (Smithy::Client::Retry::ExponentialBackoff.new)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_base_delay (2)
    #  The base delay, in seconds, used to calculate the exponential backoff for
    #  retry attempts. This option is ignored if a custom `retry_backoff` is provided.
    #  Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_max_delay (20)
    #  The maximum delay, in seconds, between retry attempts. This option is ignored
    #  if a custom `retry_backoff` is provided. Used in the `standard` and `adaptive`
    #  retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Adds all resource types specified in the <code>ResourceTypes</code> list to the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a> of specified configuration recorder and includes those resource types when recording.</p>
    #          <p>For this operation, the specified configuration recorder must use a <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html">RecordingStrategy</a> that is either <code>INCLUSION_BY_RESOURCE_TYPES</code> or <code>EXCLUSION_BY_RESOURCE_TYPES</code>.</p>
    # @param [Hash, Types::AssociateResourceTypesRequest] params
    # @option params [String] :configuration_recorder_arn
    #   <p>The Amazon Resource Name (ARN) of the specified configuration recorder.</p>
    # @option params [Array<String>] :resource_types
    #   <p>The list of resource types you want to add to the recording group of the specified configuration recorder.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_recorder_arn: "AmazonResourceName", # required
    #     resource_types: ["AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"]], # required
    #   }
    #   options = {}
    #   response = client.associate_resource_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_recorder: { # required
    #       arn: "AmazonResourceName",
    #       name: "RecorderName",
    #       role_arn: "String",
    #       recording_group: {
    #         all_supported: false,
    #         include_global_resource_types: false,
    #         resource_types: ["AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"]],
    #         exclusion_by_resource_types: {
    #           resource_types: ["AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"]]
    #         },
    #         recording_strategy: {
    #           use_only: "ALL_SUPPORTED_RESOURCE_TYPES" # One of: ["ALL_SUPPORTED_RESOURCE_TYPES", "INCLUSION_BY_RESOURCE_TYPES", "EXCLUSION_BY_RESOURCE_TYPES"]
    #         }
    #       },
    #       recording_mode: {
    #         recording_frequency: "CONTINUOUS" # One of: ["CONTINUOUS", "DAILY"], # required
    #         recording_mode_overrides: [
    #           {
    #             description: "Description",
    #             resource_types: ["AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"]], # required
    #             recording_frequency: "CONTINUOUS" # One of: ["CONTINUOUS", "DAILY"], # required
    #           }
    #         ]
    #       },
    #       recording_scope: "INTERNAL" # One of: ["INTERNAL", "PAID"],
    #       service_principal: "ServicePrincipal"
    #     }
    #   }
    # @return [Types::AssociateResourceTypesResponse]
    def associate_resource_types(params = {}, options = {})
      request = build_request(:associate_resource_types, params)
      request.send_request(options)
    end

    # <p>Returns the current configuration items for resources that are present in your Config aggregator. The operation also returns a list of resources that are not processed in the current request. 
    # 			If there are no unprocessed resources, the operation returns an empty <code>unprocessedResourceIdentifiers</code> list. </p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>The API does not return results for deleted resources.</p>
    #                </li>
    #                <li>
    #                   <p> The API does not return tags and relationships.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::BatchGetAggregateResourceConfigRequest] params
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    # @option params [Array<Types::AggregateResourceIdentifier>] :resource_identifiers
    #   <p>A list of aggregate ResourceIdentifiers objects. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     resource_identifiers: [ # required
    #       {
    #         source_account_id: "AccountId", # required
    #         source_region: "AwsRegion", # required
    #         resource_id: "ResourceId", # required
    #         resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"], # required
    #         resource_name: "ResourceName"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_aggregate_resource_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     base_configuration_items: [
    #       {
    #         version: "Version",
    #         account_id: "AccountId",
    #         configuration_item_capture_time: Time.now,
    #         configuration_item_status: "OK" # One of: ["OK", "ResourceDiscovered", "ResourceNotRecorded", "ResourceDeleted", "ResourceDeletedNotRecorded"],
    #         configuration_state_id: "ConfigurationStateId",
    #         arn: "ARN",
    #         resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"],
    #         resource_id: "ResourceId",
    #         resource_name: "ResourceName",
    #         aws_region: "AwsRegion",
    #         availability_zone: "AvailabilityZone",
    #         resource_creation_time: Time.now,
    #         configuration: "Configuration",
    #         supplementary_configuration: {
    #           "SupplementaryConfigurationName" => "SupplementaryConfigurationValue"
    #         },
    #         recording_frequency: "CONTINUOUS" # One of: ["CONTINUOUS", "DAILY"],
    #         configuration_item_delivery_time: Time.now
    #       }
    #     ],
    #     unprocessed_resource_identifiers: [
    #       {
    #         source_account_id: "AccountId", # required
    #         source_region: "AwsRegion", # required
    #         resource_id: "ResourceId", # required
    #         resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"], # required
    #         resource_name: "ResourceName"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetAggregateResourceConfigResponse]
    def batch_get_aggregate_resource_config(params = {}, options = {})
      request = build_request(:batch_get_aggregate_resource_config, params)
      request.send_request(options)
    end

    # <p>Returns the <code>BaseConfigurationItem</code> for one or more requested resources.
    # 			The operation also returns a list of resources that are
    # 			not processed in the current request. If there are no unprocessed
    # 			resources, the operation returns an empty unprocessedResourceKeys
    # 			list. </p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>The API does not return results for deleted
    # 						resources.</p>
    #                </li>
    #                <li>
    #                   <p> The API does not return any tags for the requested
    # 						resources. This information is filtered out of the
    # 						supplementaryConfiguration section of the API
    # 						response.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::BatchGetResourceConfigRequest] params
    # @option params [Array<Types::ResourceKey>] :resource_keys
    #   <p>A list of resource keys to be processed with the current
    #   			request. Each element in the list consists of the resource type and
    #   			resource ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_keys: [ # required
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"], # required
    #         resource_id: "ResourceId", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_resource_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     base_configuration_items: [
    #       {
    #         version: "Version",
    #         account_id: "AccountId",
    #         configuration_item_capture_time: Time.now,
    #         configuration_item_status: "OK" # One of: ["OK", "ResourceDiscovered", "ResourceNotRecorded", "ResourceDeleted", "ResourceDeletedNotRecorded"],
    #         configuration_state_id: "ConfigurationStateId",
    #         arn: "ARN",
    #         resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"],
    #         resource_id: "ResourceId",
    #         resource_name: "ResourceName",
    #         aws_region: "AwsRegion",
    #         availability_zone: "AvailabilityZone",
    #         resource_creation_time: Time.now,
    #         configuration: "Configuration",
    #         supplementary_configuration: {
    #           "SupplementaryConfigurationName" => "SupplementaryConfigurationValue"
    #         },
    #         recording_frequency: "CONTINUOUS" # One of: ["CONTINUOUS", "DAILY"],
    #         configuration_item_delivery_time: Time.now
    #       }
    #     ],
    #     unprocessed_resource_keys: [
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"], # required
    #         resource_id: "ResourceId", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetResourceConfigResponse]
    def batch_get_resource_config(params = {}, options = {})
      request = build_request(:batch_get_resource_config, params)
      request.send_request(options)
    end

    # <p>Deletes the authorization granted to the specified
    # 			configuration aggregator account in a specified region.</p>
    # @param [Hash, Types::DeleteAggregationAuthorizationRequest] params
    # @option params [String] :authorized_account_id
    #   <p>The 12-digit account ID of the account authorized to aggregate
    #   			data.</p>
    # @option params [String] :authorized_aws_region
    #   <p>The region authorized to collect aggregated data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authorized_account_id: "AccountId", # required
    #     authorized_aws_region: "AwsRegion", # required
    #   }
    #   options = {}
    #   response = client.delete_aggregation_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_aggregation_authorization(params = {}, options = {})
      request = build_request(:delete_aggregation_authorization, params)
      request.send_request(options)
    end

    # <p>Deletes the specified Config rule and all of its evaluation
    # 			results.</p>
    #          <p>Config sets the state of a rule to <code>DELETING</code>
    # 			until the deletion is complete. You cannot update a rule while it is
    # 			in this state. If you make a <code>PutConfigRule</code> or
    # 				<code>DeleteConfigRule</code> request for the rule, you will
    # 			receive a <code>ResourceInUseException</code>.</p>
    #          <p>You can check the state of a rule by using the
    # 				<code>DescribeConfigRules</code> request.</p>
    #          <note>
    #             <p>
    #                <b>Recommendation: Consider excluding the <code>AWS::Config::ResourceCompliance</code> resource type from recording before deleting rules</b>
    #             </p>
    #             <p>Deleting rules creates configuration items (CIs) for <code>AWS::Config::ResourceCompliance</code>
    # 				that can affect your costs for the configuration recorder. If you are deleting rules which evaluate a large number of resource types,
    # 				this can lead to a spike in the number of CIs recorded.</p>
    #             <p>To avoid the associated costs, you can opt to disable recording 
    # 				for the <code>AWS::Config::ResourceCompliance</code> resource type before deleting rules, and re-enable recording after the rules have been deleted.</p>
    #             <p>However, since deleting rules is an asynchronous process, it might take an hour or more to complete. During the time
    # 				when recording is disabled for <code>AWS::Config::ResourceCompliance</code>, rule evaluations will not be recorded in the associated resource’s history.</p>
    #          </note>
    # @param [Hash, Types::DeleteConfigRuleRequest] params
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule that you want to
    #   			delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_rule_name: "ConfigRuleName", # required
    #   }
    #   options = {}
    #   response = client.delete_config_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_config_rule(params = {}, options = {})
      request = build_request(:delete_config_rule, params)
      request.send_request(options)
    end

    # <p>Deletes the specified configuration aggregator and the
    # 			aggregated data associated with the aggregator.</p>
    # @param [Hash, Types::DeleteConfigurationAggregatorRequest] params
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #   }
    #   options = {}
    #   response = client.delete_configuration_aggregator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_configuration_aggregator(params = {}, options = {})
      request = build_request(:delete_configuration_aggregator, params)
      request.send_request(options)
    end

    # <p>Deletes the customer managed configuration recorder.</p>
    #          <p>This operation does not delete the configuration information that
    # 			was previously recorded. You will be able to access the previously
    # 			recorded information by using the
    # 			<a href="https://docs.aws.amazon.com/config/latest/APIReference/API_GetResourceConfigHistory.html">GetResourceConfigHistory</a> operation, but you will not
    # 			be able to access this information in the Config console until
    # 			you have created a new customer managed configuration recorder.</p>
    # @param [Hash, Types::DeleteConfigurationRecorderRequest] params
    # @option params [String] :configuration_recorder_name
    #   <p>The name of the customer managed configuration recorder that you want to delete. You can
    #   			retrieve the name of your configuration recorders by using the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DescribeConfigurationRecorders.html">DescribeConfigurationRecorders</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_recorder_name: "RecorderName", # required
    #   }
    #   options = {}
    #   response = client.delete_configuration_recorder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_configuration_recorder(params = {}, options = {})
      request = build_request(:delete_configuration_recorder, params)
      request.send_request(options)
    end

    # <p>Deletes the specified conformance pack and all the Config rules, remediation actions, and all evaluation results within that 
    # 			conformance pack.</p>
    #          <p>Config sets the conformance pack to <code>DELETE_IN_PROGRESS</code> until the deletion is complete. 
    # 			You cannot update a conformance pack while it is in this state.</p>
    #          <note>
    #             <p>
    #                <b>Recommendation: Consider excluding the <code>AWS::Config::ResourceCompliance</code> resource type from recording before deleting rules</b>
    #             </p>
    #             <p>Deleting rules creates configuration items (CIs) for <code>AWS::Config::ResourceCompliance</code>
    # 				that can affect your costs for the configuration recorder. If you are deleting rules which evaluate a large number of resource types,
    # 				this can lead to a spike in the number of CIs recorded.</p>
    #             <p>To avoid the associated costs, you can opt to disable recording 
    # 				for the <code>AWS::Config::ResourceCompliance</code> resource type before deleting rules, and re-enable recording after the rules have been deleted.</p>
    #             <p>However, since deleting rules is an asynchronous process, it might take an hour or more to complete. During the time
    # 				when recording is disabled for <code>AWS::Config::ResourceCompliance</code>, rule evaluations will not be recorded in the associated resource’s history.</p>
    #          </note>
    # @param [Hash, Types::DeleteConformancePackRequest] params
    # @option params [String] :conformance_pack_name
    #   <p>Name of the conformance pack you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     conformance_pack_name: "ConformancePackName", # required
    #   }
    #   options = {}
    #   response = client.delete_conformance_pack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_conformance_pack(params = {}, options = {})
      request = build_request(:delete_conformance_pack, params)
      request.send_request(options)
    end

    # <p>Deletes the delivery channel.</p>
    #          <p>Before you can delete the delivery channel, you must stop the customer managed configuration recorder. You can use the <a>StopConfigurationRecorder</a> operation to stop the customer managed configuration recorder.</p>
    # @param [Hash, Types::DeleteDeliveryChannelRequest] params
    # @option params [String] :delivery_channel_name
    #   <p>The name of the delivery channel that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_channel_name: "ChannelName", # required
    #   }
    #   options = {}
    #   response = client.delete_delivery_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_delivery_channel(params = {}, options = {})
      request = build_request(:delete_delivery_channel, params)
      request.send_request(options)
    end

    # <p>Deletes the evaluation results for the specified Config
    # 			rule. You can specify one Config rule per request. After you
    # 			delete the evaluation results, you can call the <a>StartConfigRulesEvaluation</a> API to start evaluating
    # 			your Amazon Web Services resources against the rule.</p>
    # @param [Hash, Types::DeleteEvaluationResultsRequest] params
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule for which you want to delete
    #   			the evaluation results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_rule_name: "StringWithCharLimit64", # required
    #   }
    #   options = {}
    #   response = client.delete_evaluation_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEvaluationResultsResponse]
    def delete_evaluation_results(params = {}, options = {})
      request = build_request(:delete_evaluation_results, params)
      request.send_request(options)
    end

    # <p>Deletes the specified organization Config rule and all of its evaluation results from all member accounts in that organization. </p>
    #          <p>Only a management account and a delegated administrator account can delete an organization Config rule.
    # 		When calling this API with a delegated administrator, you must ensure Organizations 
    # 			<code>ListDelegatedAdministrator</code> permissions are added.</p>
    #          <p>Config sets the state of a rule to DELETE_IN_PROGRESS until the deletion is complete. 
    # 			You cannot update a rule while it is in this state.</p>
    #          <note>
    #             <p>
    #                <b>Recommendation: Consider excluding the <code>AWS::Config::ResourceCompliance</code> resource type from recording before deleting rules</b>
    #             </p>
    #             <p>Deleting rules creates configuration items (CIs) for <code>AWS::Config::ResourceCompliance</code>
    # 				that can affect your costs for the configuration recorder. If you are deleting rules which evaluate a large number of resource types,
    # 				this can lead to a spike in the number of CIs recorded.</p>
    #             <p>To avoid the associated costs, you can opt to disable recording 
    # 				for the <code>AWS::Config::ResourceCompliance</code> resource type before deleting rules, and re-enable recording after the rules have been deleted.</p>
    #             <p>However, since deleting rules is an asynchronous process, it might take an hour or more to complete. During the time
    # 				when recording is disabled for <code>AWS::Config::ResourceCompliance</code>, rule evaluations will not be recorded in the associated resource’s history.</p>
    #          </note>
    # @param [Hash, Types::DeleteOrganizationConfigRuleRequest] params
    # @option params [String] :organization_config_rule_name
    #   <p>The name of organization Config rule that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_config_rule_name: "OrganizationConfigRuleName", # required
    #   }
    #   options = {}
    #   response = client.delete_organization_config_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_organization_config_rule(params = {}, options = {})
      request = build_request(:delete_organization_config_rule, params)
      request.send_request(options)
    end

    # <p>Deletes the specified organization conformance pack and all of the Config rules and remediation actions from
    # 			all member accounts in that organization. </p>
    #          <p> Only a management account or a delegated administrator account can delete an organization conformance pack.
    # 	When calling this API with a delegated administrator, you must ensure Organizations 
    # 		<code>ListDelegatedAdministrator</code> permissions are added.</p>
    #          <p>Config sets the state of a conformance pack to DELETE_IN_PROGRESS until the deletion is complete. 
    # 				You cannot update a conformance pack while it is in this state. </p>
    #          <note>
    #             <p>
    #                <b>Recommendation: Consider excluding the <code>AWS::Config::ResourceCompliance</code> resource type from recording before deleting rules</b>
    #             </p>
    #             <p>Deleting rules creates configuration items (CIs) for <code>AWS::Config::ResourceCompliance</code>
    # 				that can affect your costs for the configuration recorder. If you are deleting rules which evaluate a large number of resource types,
    # 				this can lead to a spike in the number of CIs recorded.</p>
    #             <p>To avoid the associated costs, you can opt to disable recording 
    # 				for the <code>AWS::Config::ResourceCompliance</code> resource type before deleting rules, and re-enable recording after the rules have been deleted.</p>
    #             <p>However, since deleting rules is an asynchronous process, it might take an hour or more to complete. During the time
    # 				when recording is disabled for <code>AWS::Config::ResourceCompliance</code>, rule evaluations will not be recorded in the associated resource’s history.</p>
    #          </note>
    # @param [Hash, Types::DeleteOrganizationConformancePackRequest] params
    # @option params [String] :organization_conformance_pack_name
    #   <p>The name of organization conformance pack that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_conformance_pack_name: "OrganizationConformancePackName", # required
    #   }
    #   options = {}
    #   response = client.delete_organization_conformance_pack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_organization_conformance_pack(params = {}, options = {})
      request = build_request(:delete_organization_conformance_pack, params)
      request.send_request(options)
    end

    # <p>Deletes pending authorization requests for a specified
    # 			aggregator account in a specified region.</p>
    # @param [Hash, Types::DeletePendingAggregationRequestRequest] params
    # @option params [String] :requester_account_id
    #   <p>The 12-digit account ID of the account requesting to aggregate
    #   			data.</p>
    # @option params [String] :requester_aws_region
    #   <p>The region requesting to aggregate data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     requester_account_id: "AccountId", # required
    #     requester_aws_region: "AwsRegion", # required
    #   }
    #   options = {}
    #   response = client.delete_pending_aggregation_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_pending_aggregation_request(params = {}, options = {})
      request = build_request(:delete_pending_aggregation_request, params)
      request.send_request(options)
    end

    # <p>Deletes the remediation configuration.</p>
    # @param [Hash, Types::DeleteRemediationConfigurationRequest] params
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule for which you want to delete remediation configuration.</p>
    # @option params [String] :resource_type
    #   <p>The type of a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_rule_name: "ConfigRuleName", # required
    #     resource_type: "String"
    #   }
    #   options = {}
    #   response = client.delete_remediation_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRemediationConfigurationResponse]
    def delete_remediation_configuration(params = {}, options = {})
      request = build_request(:delete_remediation_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes one or more remediation exceptions mentioned in the resource keys.</p>
    #          <note>
    #             <p>Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource. 
    # 			Remediation exceptions blocks auto-remediation until the exception is cleared.</p>
    #          </note>
    # @param [Hash, Types::DeleteRemediationExceptionsRequest] params
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule for which you want to delete remediation exception configuration.</p>
    # @option params [Array<Types::RemediationExceptionResourceKey>] :resource_keys
    #   <p>An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_rule_name: "ConfigRuleName", # required
    #     resource_keys: [ # required
    #       {
    #         resource_type: "StringWithCharLimit256",
    #         resource_id: "StringWithCharLimit1024"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.delete_remediation_exceptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_batches: [
    #       {
    #         failure_message: "String",
    #         failed_items: [
    #           {
    #             resource_type: "StringWithCharLimit256",
    #             resource_id: "StringWithCharLimit1024"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DeleteRemediationExceptionsResponse]
    def delete_remediation_exceptions(params = {}, options = {})
      request = build_request(:delete_remediation_exceptions, params)
      request.send_request(options)
    end

    # <p>Records the configuration state for a custom resource that has been deleted.  This API records a new ConfigurationItem with a ResourceDeleted status. You can retrieve the ConfigurationItems recorded for this resource in your Config History.
    # 			 </p>
    # @param [Hash, Types::DeleteResourceConfigRequest] params
    # @option params [String] :resource_type
    #   <p>The type of the resource.</p>
    # @option params [String] :resource_id
    #   <p>Unique identifier of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "ResourceTypeString", # required
    #     resource_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_resource_config(params = {}, options = {})
      request = build_request(:delete_resource_config, params)
      request.send_request(options)
    end

    # <p>Deletes the retention configuration.</p>
    # @param [Hash, Types::DeleteRetentionConfigurationRequest] params
    # @option params [String] :retention_configuration_name
    #   <p>The name of the retention configuration to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     retention_configuration_name: "RetentionConfigurationName", # required
    #   }
    #   options = {}
    #   response = client.delete_retention_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_retention_configuration(params = {}, options = {})
      request = build_request(:delete_retention_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes an existing service-linked configuration recorder.</p>
    #          <p>This operation does not delete the configuration information that was previously recorded. You will be able to access the previously
    # 			recorded information by using the
    # 			<a href="https://docs.aws.amazon.com/config/latest/APIReference/API_GetResourceConfigHistory.html">GetResourceConfigHistory</a> operation, but you will not
    # 			be able to access this information in the Config console until
    # 			you have created a new service-linked configuration recorder for the same service.</p>
    #          <note>
    #             <p>
    #                <b>The recording scope determines if you receive configuration items</b>
    #             </p>
    #             <p>The recording scope is set by the service that is linked to the configuration recorder and determines whether you receive configuration items (CIs) in the delivery channel. If the recording scope is internal, you will not receive CIs in the delivery channel.</p>
    #          </note>
    # @param [Hash, Types::DeleteServiceLinkedConfigurationRecorderRequest] params
    # @option params [String] :service_principal
    #   <p>The service principal of the Amazon Web Services service for the service-linked configuration recorder that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_principal: "ServicePrincipal", # required
    #   }
    #   options = {}
    #   response = client.delete_service_linked_configuration_recorder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "AmazonResourceName", # required
    #     name: "RecorderName", # required
    #   }
    # @return [Types::DeleteServiceLinkedConfigurationRecorderResponse]
    def delete_service_linked_configuration_recorder(params = {}, options = {})
      request = build_request(:delete_service_linked_configuration_recorder, params)
      request.send_request(options)
    end

    # <p>Deletes the stored query for a single Amazon Web Services account and a single Amazon Web Services Region.</p>
    # @param [Hash, Types::DeleteStoredQueryRequest] params
    # @option params [String] :query_name
    #   <p>The name of the query that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_name: "QueryName", # required
    #   }
    #   options = {}
    #   response = client.delete_stored_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteStoredQueryResponse]
    def delete_stored_query(params = {}, options = {})
      request = build_request(:delete_stored_query, params)
      request.send_request(options)
    end

    # <p>Schedules delivery of a configuration snapshot to the Amazon S3
    # 			bucket in the specified delivery channel. After the delivery has
    # 			started, Config sends the following notifications using an
    # 			Amazon SNS topic that you have specified.</p>
    #          <ul>
    #             <li>
    #                <p>Notification of the start of the delivery.</p>
    #             </li>
    #             <li>
    #                <p>Notification of the completion of the delivery, if the
    # 					delivery was successfully completed.</p>
    #             </li>
    #             <li>
    #                <p>Notification of delivery failure, if the delivery
    # 					failed.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeliverConfigSnapshotRequest] params
    # @option params [String] :delivery_channel_name
    #   <p>The name of the delivery channel through which the snapshot is
    #   			delivered.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_channel_name: "ChannelName", # required
    #   }
    #   options = {}
    #   response = client.deliver_config_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     config_snapshot_id: "String"
    #   }
    # @return [Types::DeliverConfigSnapshotResponse]
    def deliver_config_snapshot(params = {}, options = {})
      request = build_request(:deliver_config_snapshot, params)
      request.send_request(options)
    end

    # <p>Returns a list of compliant and noncompliant rules with the
    # 			number of resources for compliant and noncompliant rules. Does not display rules that do not have compliance results. 
    # 			</p>
    #          <note>
    #             <p>The results can return an empty result page, but if you
    # 				have a <code>nextToken</code>, the results are displayed on the next
    # 				page.</p>
    #          </note>
    # @param [Hash, Types::DescribeAggregateComplianceByConfigRulesRequest] params
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    # @option params [Types::ConfigRuleComplianceFilters] :filters
    #   <p>Filters the results by ConfigRuleComplianceFilters object.
    #   		</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is
    #   			maximum.
    #   			If you specify 0, Config uses the default.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     filters: {
    #       config_rule_name: "ConfigRuleName",
    #       compliance_type: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"],
    #       account_id: "AccountId",
    #       aws_region: "AwsRegion"
    #     },
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_aggregate_compliance_by_config_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aggregate_compliance_by_config_rules: [
    #       {
    #         config_rule_name: "ConfigRuleName",
    #         compliance: {
    #           compliance_type: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"],
    #           compliance_contributor_count: {
    #             capped_count: 1,
    #             cap_exceeded: false
    #           }
    #         },
    #         account_id: "AccountId",
    #         aws_region: "AwsRegion"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeAggregateComplianceByConfigRulesResponse]
    def describe_aggregate_compliance_by_config_rules(params = {}, options = {})
      request = build_request(:describe_aggregate_compliance_by_config_rules, params)
      request.send_request(options)
    end

    # <p>Returns a list of the existing and deleted conformance packs and their associated compliance status with the count of compliant and noncompliant Config rules within each 
    # 			conformance pack. Also returns the total rule count which includes compliant rules, noncompliant rules, and rules that cannot be evaluated due to insufficient data.</p>
    #          <note>
    #             <p>The results can return an empty result page, but if you have a <code>nextToken</code>, the results are displayed on the next page.</p>
    #          </note>
    # @param [Hash, Types::DescribeAggregateComplianceByConformancePacksRequest] params
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    # @option params [Types::AggregateConformancePackComplianceFilters] :filters
    #   <p>Filters the result by <code>AggregateConformancePackComplianceFilters</code> object.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of conformance packs compliance details returned on each page. The default is maximum. If you specify 0, Config uses the default. </p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     filters: {
    #       conformance_pack_name: "ConformancePackName",
    #       compliance_type: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"],
    #       account_id: "AccountId",
    #       aws_region: "AwsRegion"
    #     },
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_aggregate_compliance_by_conformance_packs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aggregate_compliance_by_conformance_packs: [
    #       {
    #         conformance_pack_name: "ConformancePackName",
    #         compliance: {
    #           compliance_type: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"],
    #           compliant_rule_count: 1,
    #           non_compliant_rule_count: 1,
    #           total_rule_count: 1
    #         },
    #         account_id: "AccountId",
    #         aws_region: "AwsRegion"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeAggregateComplianceByConformancePacksResponse]
    def describe_aggregate_compliance_by_conformance_packs(params = {}, options = {})
      request = build_request(:describe_aggregate_compliance_by_conformance_packs, params)
      request.send_request(options)
    end

    # <p>Returns a list of authorizations granted to various aggregator
    # 			accounts and regions.</p>
    # @param [Hash, Types::DescribeAggregationAuthorizationsRequest] params
    # @option params [Integer] :limit
    #   <p>The maximum number of AggregationAuthorizations returned on
    #   			each page. The default is maximum. If you specify 0, Config uses
    #   			the default.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     limit: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_aggregation_authorizations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aggregation_authorizations: [
    #       {
    #         aggregation_authorization_arn: "String",
    #         authorized_account_id: "AccountId",
    #         authorized_aws_region: "AwsRegion",
    #         creation_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeAggregationAuthorizationsResponse]
    def describe_aggregation_authorizations(params = {}, options = {})
      request = build_request(:describe_aggregation_authorizations, params)
      request.send_request(options)
    end

    # <p>Indicates whether the specified Config rules are compliant.
    # 			If a rule is noncompliant, this operation returns the number of Amazon Web Services
    # 			resources that do not comply with the rule.</p>
    #          <p>A rule is compliant if all of the evaluated resources comply
    # 			with it. It is noncompliant if any of these resources do not
    # 			comply.</p>
    #          <p>If Config has no current evaluation results for the rule,
    # 			it returns <code>INSUFFICIENT_DATA</code>. This result might
    # 			indicate one of the following conditions:</p>
    #          <ul>
    #             <li>
    #                <p>Config has never invoked an evaluation for the
    # 					rule. To check whether it has, use the
    # 						<code>DescribeConfigRuleEvaluationStatus</code> action
    # 					to get the <code>LastSuccessfulInvocationTime</code> and
    # 						<code>LastFailedInvocationTime</code>.</p>
    #             </li>
    #             <li>
    #                <p>The rule's Lambda function is failing to send
    # 					evaluation results to Config. Verify that the role you
    # 					assigned to your configuration recorder includes the
    # 						<code>config:PutEvaluations</code> permission. If the
    # 					rule is a custom rule, verify that the Lambda execution
    # 					role includes the <code>config:PutEvaluations</code>
    # 					permission.</p>
    #             </li>
    #             <li>
    #                <p>The rule's Lambda function has returned
    # 						<code>NOT_APPLICABLE</code> for all evaluation results.
    # 					This can occur if the resources were deleted or removed from
    # 					the rule's scope.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeComplianceByConfigRuleRequest] params
    # @option params [Array<String>] :config_rule_names
    #   <p>Specify one or more Config rule names to filter the results
    #   			by rule.</p>
    # @option params [Array<String>] :compliance_types
    #   <p>Filters the results by compliance.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_rule_names: ["ConfigRuleName"],
    #     compliance_types: ["COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]],
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_compliance_by_config_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compliance_by_config_rules: [
    #       {
    #         config_rule_name: "StringWithCharLimit64",
    #         compliance: {
    #           compliance_type: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"],
    #           compliance_contributor_count: {
    #             capped_count: 1,
    #             cap_exceeded: false
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeComplianceByConfigRuleResponse]
    def describe_compliance_by_config_rule(params = {}, options = {})
      request = build_request(:describe_compliance_by_config_rule, params)
      request.send_request(options)
    end

    # <p>Indicates whether the specified Amazon Web Services resources are compliant. If
    # 			a resource is noncompliant, this operation returns the number of Config rules that the resource does not comply with.</p>
    #          <p>A resource is compliant if it complies with all the Config
    # 			rules that evaluate it. It is noncompliant if it does not comply
    # 			with one or more of these rules.</p>
    #          <p>If Config has no current evaluation results for the
    # 			resource, it returns <code>INSUFFICIENT_DATA</code>. This result
    # 			might indicate one of the following conditions about the rules that
    # 			evaluate the resource:</p>
    #          <ul>
    #             <li>
    #                <p>Config has never invoked an evaluation for the
    # 					rule. To check whether it has, use the
    # 						<code>DescribeConfigRuleEvaluationStatus</code> action
    # 					to get the <code>LastSuccessfulInvocationTime</code> and
    # 						<code>LastFailedInvocationTime</code>.</p>
    #             </li>
    #             <li>
    #                <p>The rule's Lambda function is failing to send
    # 					evaluation results to Config. Verify that the role that
    # 					you assigned to your configuration recorder includes the
    # 						<code>config:PutEvaluations</code> permission. If the
    # 					rule is a custom rule, verify that the Lambda execution
    # 					role includes the <code>config:PutEvaluations</code>
    # 					permission.</p>
    #             </li>
    #             <li>
    #                <p>The rule's Lambda function has returned
    # 						<code>NOT_APPLICABLE</code> for all evaluation results.
    # 					This can occur if the resources were deleted or removed from
    # 					the rule's scope.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeComplianceByResourceRequest] params
    # @option params [String] :resource_type
    #   <p>The types of Amazon Web Services resources for which you want compliance
    #   			information (for example, <code>AWS::EC2::Instance</code>). For this operation, you can specify that the resource type is an Amazon Web Services account by
    #   			specifying <code>AWS::::Account</code>.</p>
    # @option params [String] :resource_id
    #   <p>The ID of the Amazon Web Services resource for which you want compliance
    #   			information. You can specify only one resource ID. If you specify a
    #   			resource ID, you must also specify a type for
    #   				<code>ResourceType</code>.</p>
    # @option params [Array<String>] :compliance_types
    #   <p>Filters the results by compliance.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is 10. You cannot specify a number greater than 100. If
    #   			you specify 0, Config uses the default.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "StringWithCharLimit256",
    #     resource_id: "BaseResourceId",
    #     compliance_types: ["COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]],
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_compliance_by_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compliance_by_resources: [
    #       {
    #         resource_type: "StringWithCharLimit256",
    #         resource_id: "BaseResourceId",
    #         compliance: {
    #           compliance_type: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"],
    #           compliance_contributor_count: {
    #             capped_count: 1,
    #             cap_exceeded: false
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeComplianceByResourceResponse]
    def describe_compliance_by_resource(params = {}, options = {})
      request = build_request(:describe_compliance_by_resource, params)
      request.send_request(options)
    end

    # <p>Returns status information for each of your Config managed rules. The status includes information such as the last time Config invoked the rule, the last time Config failed to invoke
    # 			the rule, and the related error for the last failure.</p>
    # @param [Hash, Types::DescribeConfigRuleEvaluationStatusRequest] params
    # @option params [Array<String>] :config_rule_names
    #   <p>The name of the Config managed rules for which you want
    #   			status information. If you do not specify any names, Config
    #   			returns status information for all Config managed rules that you
    #   			use.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    # @option params [Integer] :limit
    #   <p>The number of rule evaluation results that you want
    #   			returned.</p>
    #            <p>This parameter is required if the rule limit for your account
    #   			is more than the default of 1000 rules.</p>
    #            <p>For information about requesting a rule limit increase, see
    #   				<a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config">Config Limits</a> in the <i>Amazon Web Services General
    #   				Reference Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_rule_names: ["ConfigRuleName"],
    #     next_token: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_config_rule_evaluation_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     config_rules_evaluation_status: [
    #       {
    #         config_rule_name: "ConfigRuleName",
    #         config_rule_arn: "String",
    #         config_rule_id: "String",
    #         last_successful_invocation_time: Time.now,
    #         last_failed_invocation_time: Time.now,
    #         last_successful_evaluation_time: Time.now,
    #         last_failed_evaluation_time: Time.now,
    #         first_activated_time: Time.now,
    #         last_deactivated_time: Time.now,
    #         last_error_code: "String",
    #         last_error_message: "String",
    #         first_evaluation_started: false,
    #         last_debug_log_delivery_status: "String",
    #         last_debug_log_delivery_status_reason: "String",
    #         last_debug_log_delivery_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeConfigRuleEvaluationStatusResponse]
    def describe_config_rule_evaluation_status(params = {}, options = {})
      request = build_request(:describe_config_rule_evaluation_status, params)
      request.send_request(options)
    end

    # <p>Returns details about your Config rules.</p>
    # @param [Hash, Types::DescribeConfigRulesRequest] params
    # @option params [Array<String>] :config_rule_names
    #   <p>The names of the Config rules for which you want details.
    #   			If you do not specify any names, Config returns details for all
    #   			your rules.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    # @option params [Types::DescribeConfigRulesFilters] :filters
    #   <p>Returns a list of Detective or Proactive Config rules. By default, this API returns an unfiltered list. For more information on Detective or Proactive Config rules,
    #   			see <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config-rules.html">
    #                  <b>Evaluation Mode</b>
    #               </a> in the <i>Config Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_rule_names: ["ConfigRuleName"],
    #     next_token: "String",
    #     filters: {
    #       evaluation_mode: "DETECTIVE" # One of: ["DETECTIVE", "PROACTIVE"]
    #     }
    #   }
    #   options = {}
    #   response = client.describe_config_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     config_rules: [
    #       {
    #         config_rule_name: "ConfigRuleName",
    #         config_rule_arn: "StringWithCharLimit256",
    #         config_rule_id: "StringWithCharLimit64",
    #         description: "EmptiableStringWithCharLimit256",
    #         scope: {
    #           compliance_resource_types: ["StringWithCharLimit256"],
    #           tag_key: "StringWithCharLimit128",
    #           tag_value: "StringWithCharLimit256",
    #           compliance_resource_id: "BaseResourceId"
    #         },
    #         source: { # required
    #           owner: "CUSTOM_LAMBDA" # One of: ["CUSTOM_LAMBDA", "AWS", "CUSTOM_POLICY"], # required
    #           source_identifier: "StringWithCharLimit256",
    #           source_details: [
    #             {
    #               event_source: "aws.config" # One of: ["aws.config"],
    #               message_type: "ConfigurationItemChangeNotification" # One of: ["ConfigurationItemChangeNotification", "ConfigurationSnapshotDeliveryCompleted", "ScheduledNotification", "OversizedConfigurationItemChangeNotification"],
    #               maximum_execution_frequency: "One_Hour" # One of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #             }
    #           ],
    #           custom_policy_details: {
    #             policy_runtime: "PolicyRuntime", # required
    #             policy_text: "PolicyText", # required
    #             enable_debug_log_delivery: false
    #           }
    #         },
    #         input_parameters: "StringWithCharLimit1024",
    #         maximum_execution_frequency: "One_Hour" # One of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"],
    #         config_rule_state: "ACTIVE" # One of: ["ACTIVE", "DELETING", "DELETING_RESULTS", "EVALUATING"],
    #         created_by: "StringWithCharLimit256",
    #         evaluation_modes: [
    #           {
    #             mode: "DETECTIVE" # One of: ["DETECTIVE", "PROACTIVE"]
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeConfigRulesResponse]
    def describe_config_rules(params = {}, options = {})
      request = build_request(:describe_config_rules, params)
      request.send_request(options)
    end

    # <p>Returns status information for sources within an aggregator.
    # 			The status includes information about the last time Config verified authorization between the source account and an aggregator account. In case of a failure, the status contains the related error code or message. </p>
    # @param [Hash, Types::DescribeConfigurationAggregatorSourcesStatusRequest] params
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    # @option params [Array<String>] :update_status
    #   <p>Filters the status type.</p>
    #            <ul>
    #               <li>
    #                  <p>Valid value FAILED indicates errors while moving
    #   					data.</p>
    #               </li>
    #               <li>
    #                  <p>Valid value SUCCEEDED indicates the data was
    #   					successfully moved.</p>
    #               </li>
    #               <li>
    #                  <p>Valid value OUTDATED indicates the data is not the most
    #   					recent.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of AggregatorSourceStatus returned on each
    #   			page. The default is maximum. If you specify 0, Config uses the
    #   			default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     update_status: ["FAILED" # One of: ["FAILED", "SUCCEEDED", "OUTDATED"]],
    #     next_token: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_configuration_aggregator_sources_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aggregated_source_status_list: [
    #       {
    #         source_id: "String",
    #         source_type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION"],
    #         aws_region: "AwsRegion",
    #         last_update_status: "FAILED" # One of: ["FAILED", "SUCCEEDED", "OUTDATED"],
    #         last_update_time: Time.now,
    #         last_error_code: "String",
    #         last_error_message: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeConfigurationAggregatorSourcesStatusResponse]
    def describe_configuration_aggregator_sources_status(params = {}, options = {})
      request = build_request(:describe_configuration_aggregator_sources_status, params)
      request.send_request(options)
    end

    # <p>Returns the details of one or more configuration aggregators.
    # 			If the configuration aggregator is not specified, this operation
    # 			returns the details for all the configuration aggregators associated
    # 			with the account. </p>
    # @param [Hash, Types::DescribeConfigurationAggregatorsRequest] params
    # @option params [Array<String>] :configuration_aggregator_names
    #   <p>The name of the configuration aggregators.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of configuration aggregators returned on
    #   			each page. The default is maximum. If you specify 0, Config uses
    #   			the default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_aggregator_names: ["ConfigurationAggregatorName"],
    #     next_token: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_configuration_aggregators(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_aggregators: [
    #       {
    #         configuration_aggregator_name: "ConfigurationAggregatorName",
    #         configuration_aggregator_arn: "ConfigurationAggregatorArn",
    #         account_aggregation_sources: [
    #           {
    #             account_ids: ["AccountId"], # required
    #             all_aws_regions: false,
    #             aws_regions: ["String"]
    #           }
    #         ],
    #         organization_aggregation_source: {
    #           role_arn: "String", # required
    #           aws_regions: ["String"],
    #           all_aws_regions: false
    #         },
    #         creation_time: Time.now,
    #         last_updated_time: Time.now,
    #         created_by: "StringWithCharLimit256",
    #         aggregator_filters: {
    #           resource_type: {
    #             type: "INCLUDE" # One of: ["INCLUDE"],
    #             value: ["ResourceTypeValue"]
    #           },
    #           service_principal: {
    #             type: "INCLUDE" # One of: ["INCLUDE"],
    #             value: ["ServicePrincipalValue"]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeConfigurationAggregatorsResponse]
    def describe_configuration_aggregators(params = {}, options = {})
      request = build_request(:describe_configuration_aggregators, params)
      request.send_request(options)
    end

    # <p>Returns the current status of the configuration
    # 			recorder you specify as well as the status of the last recording event for the configuration recorders.</p>
    #          <p>For a detailed status of recording events over time, add your Config events to Amazon CloudWatch metrics and use CloudWatch metrics.</p>
    #          <p>If a configuration recorder is not specified, this operation returns the status for the customer managed configuration recorder configured for the
    # 			account, if applicable.</p>
    #          <note>
    #             <p>When making a request to this operation, you can only specify one configuration recorder.</p>
    #          </note>
    # @param [Hash, Types::DescribeConfigurationRecorderStatusRequest] params
    # @option params [Array<String>] :configuration_recorder_names
    #   <p>The name of the configuration recorder. If the name is not
    #   			specified, the operation returns the status for the customer managed configuration recorder configured for the
    #   			account, if applicable.</p>
    #            <note>
    #               <p>When making a request to this operation, you can only specify one configuration recorder.</p>
    #            </note>
    # @option params [String] :service_principal
    #   <p>For service-linked configuration recorders, you can use the service principal of the linked Amazon Web Services service to specify the configuration recorder.</p>
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the configuration recorder that you want to specify.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_recorder_names: ["RecorderName"],
    #     service_principal: "ServicePrincipal",
    #     arn: "AmazonResourceName"
    #   }
    #   options = {}
    #   response = client.describe_configuration_recorder_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_recorders_status: [
    #       {
    #         arn: "AmazonResourceName",
    #         name: "String",
    #         last_start_time: Time.now,
    #         last_stop_time: Time.now,
    #         recording: false,
    #         last_status: "Pending" # One of: ["Pending", "Success", "Failure", "NotApplicable"],
    #         last_error_code: "String",
    #         last_error_message: "String",
    #         last_status_change_time: Time.now,
    #         service_principal: "ServicePrincipal"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeConfigurationRecorderStatusResponse]
    def describe_configuration_recorder_status(params = {}, options = {})
      request = build_request(:describe_configuration_recorder_status, params)
      request.send_request(options)
    end

    # <p>Returns details for the configuration recorder you specify.</p>
    #          <p>If a configuration recorder is not specified, this operation returns details for the customer managed configuration recorder configured for the
    # 			account, if applicable.</p>
    #          <note>
    #             <p>When making a request to this operation, you can only specify one configuration recorder.</p>
    #          </note>
    # @param [Hash, Types::DescribeConfigurationRecordersRequest] params
    # @option params [Array<String>] :configuration_recorder_names
    #   <p>A list of names of the configuration recorders that you want to specify.</p>
    #            <note>
    #               <p>When making a request to this operation, you can only specify one configuration recorder.</p>
    #            </note>
    # @option params [String] :service_principal
    #   <p>For service-linked configuration recorders, you can use the service principal of the linked Amazon Web Services service to specify the configuration recorder.</p>
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the configuration recorder that you want to specify.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_recorder_names: ["RecorderName"],
    #     service_principal: "ServicePrincipal",
    #     arn: "AmazonResourceName"
    #   }
    #   options = {}
    #   response = client.describe_configuration_recorders(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_recorders: [
    #       {
    #         arn: "AmazonResourceName",
    #         name: "RecorderName",
    #         role_arn: "String",
    #         recording_group: {
    #           all_supported: false,
    #           include_global_resource_types: false,
    #           resource_types: ["AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"]],
    #           exclusion_by_resource_types: {
    #             resource_types: ["AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"]]
    #           },
    #           recording_strategy: {
    #             use_only: "ALL_SUPPORTED_RESOURCE_TYPES" # One of: ["ALL_SUPPORTED_RESOURCE_TYPES", "INCLUSION_BY_RESOURCE_TYPES", "EXCLUSION_BY_RESOURCE_TYPES"]
    #           }
    #         },
    #         recording_mode: {
    #           recording_frequency: "CONTINUOUS" # One of: ["CONTINUOUS", "DAILY"], # required
    #           recording_mode_overrides: [
    #             {
    #               description: "Description",
    #               resource_types: ["AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"]], # required
    #               recording_frequency: "CONTINUOUS" # One of: ["CONTINUOUS", "DAILY"], # required
    #             }
    #           ]
    #         },
    #         recording_scope: "INTERNAL" # One of: ["INTERNAL", "PAID"],
    #         service_principal: "ServicePrincipal"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeConfigurationRecordersResponse]
    def describe_configuration_recorders(params = {}, options = {})
      request = build_request(:describe_configuration_recorders, params)
      request.send_request(options)
    end

    # <p>Returns compliance details for each rule in that conformance pack.</p>
    #          <note>
    #             <p>You must provide exact rule names.</p>
    #          </note>
    # @param [Hash, Types::DescribeConformancePackComplianceRequest] params
    # @option params [String] :conformance_pack_name
    #   <p>Name of the conformance pack.</p>
    # @option params [Types::ConformancePackComplianceFilters] :filters
    #   <p>A <code>ConformancePackComplianceFilters</code> object.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of Config rules within a conformance pack are returned on each page.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     conformance_pack_name: "ConformancePackName", # required
    #     filters: {
    #       config_rule_names: ["StringWithCharLimit64"],
    #       compliance_type: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"]
    #     },
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_conformance_pack_compliance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     conformance_pack_name: "ConformancePackName", # required
    #     conformance_pack_rule_compliance_list: [ # required
    #       {
    #         config_rule_name: "ConfigRuleName",
    #         compliance_type: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"],
    #         controls: ["StringWithCharLimit128"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeConformancePackComplianceResponse]
    def describe_conformance_pack_compliance(params = {}, options = {})
      request = build_request(:describe_conformance_pack_compliance, params)
      request.send_request(options)
    end

    # <p>Provides one or more conformance packs deployment status.</p>
    #          <note>
    #             <p>If there are no conformance packs then you will see an empty result.</p>
    #          </note>
    # @param [Hash, Types::DescribeConformancePackStatusRequest] params
    # @option params [Array<String>] :conformance_pack_names
    #   <p>Comma-separated list of conformance pack names.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of conformance packs status returned on each page.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     conformance_pack_names: ["ConformancePackName"],
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_conformance_pack_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     conformance_pack_status_details: [
    #       {
    #         conformance_pack_name: "ConformancePackName", # required
    #         conformance_pack_id: "ConformancePackId", # required
    #         conformance_pack_arn: "ConformancePackArn", # required
    #         conformance_pack_state: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"], # required
    #         stack_arn: "StackArn", # required
    #         conformance_pack_status_reason: "ConformancePackStatusReason",
    #         last_update_requested_time: Time.now, # required
    #         last_update_completed_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeConformancePackStatusResponse]
    def describe_conformance_pack_status(params = {}, options = {})
      request = build_request(:describe_conformance_pack_status, params)
      request.send_request(options)
    end

    # <p>Returns a list of one or more conformance packs.</p>
    # @param [Hash, Types::DescribeConformancePacksRequest] params
    # @option params [Array<String>] :conformance_pack_names
    #   <p>Comma-separated list of conformance pack names for which you want details. If you do not specify any names, Config returns details for all your conformance packs. </p>
    # @option params [Integer] :limit
    #   <p>The maximum number of conformance packs returned on each page.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     conformance_pack_names: ["ConformancePackName"],
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_conformance_packs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     conformance_pack_details: [
    #       {
    #         conformance_pack_name: "ConformancePackName", # required
    #         conformance_pack_arn: "ConformancePackArn", # required
    #         conformance_pack_id: "ConformancePackId", # required
    #         delivery_s3_bucket: "DeliveryS3Bucket",
    #         delivery_s3_key_prefix: "DeliveryS3KeyPrefix",
    #         conformance_pack_input_parameters: [
    #           {
    #             parameter_name: "ParameterName", # required
    #             parameter_value: "ParameterValue", # required
    #           }
    #         ],
    #         last_update_requested_time: Time.now,
    #         created_by: "StringWithCharLimit256",
    #         template_ssm_document_details: {
    #           document_name: "SSMDocumentName", # required
    #           document_version: "SSMDocumentVersion"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeConformancePacksResponse]
    def describe_conformance_packs(params = {}, options = {})
      request = build_request(:describe_conformance_packs, params)
      request.send_request(options)
    end

    # <p>Returns the current status of the specified delivery channel.
    # 			If a delivery channel is not specified, this operation returns the
    # 			current status of all delivery channels associated with the
    # 			account.</p>
    #          <note>
    #             <p>Currently, you can specify only one delivery channel per
    # 				region in your account.</p>
    #          </note>
    # @param [Hash, Types::DescribeDeliveryChannelStatusRequest] params
    # @option params [Array<String>] :delivery_channel_names
    #   <p>A list of delivery channel names.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_channel_names: ["ChannelName"]
    #   }
    #   options = {}
    #   response = client.describe_delivery_channel_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delivery_channels_status: [
    #       {
    #         name: "String",
    #         config_snapshot_delivery_info: {
    #           last_status: "Success" # One of: ["Success", "Failure", "Not_Applicable"],
    #           last_error_code: "String",
    #           last_error_message: "String",
    #           last_attempt_time: Time.now,
    #           last_successful_time: Time.now,
    #           next_delivery_time: Time.now
    #         },
    #         config_history_delivery_info: {
    #           last_status: "Success" # One of: ["Success", "Failure", "Not_Applicable"],
    #           last_error_code: "String",
    #           last_error_message: "String",
    #           last_attempt_time: Time.now,
    #           last_successful_time: Time.now,
    #           next_delivery_time: Time.now
    #         },
    #         config_stream_delivery_info: {
    #           last_status: "Success" # One of: ["Success", "Failure", "Not_Applicable"],
    #           last_error_code: "String",
    #           last_error_message: "String",
    #           last_status_change_time: Time.now
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeDeliveryChannelStatusResponse]
    def describe_delivery_channel_status(params = {}, options = {})
      request = build_request(:describe_delivery_channel_status, params)
      request.send_request(options)
    end

    # <p>Returns details about the specified delivery channel. If a
    # 			delivery channel is not specified, this operation returns the details
    # 			of all delivery channels associated with the account.</p>
    #          <note>
    #             <p>Currently, you can specify only one delivery channel per
    # 				region in your account.</p>
    #          </note>
    # @param [Hash, Types::DescribeDeliveryChannelsRequest] params
    # @option params [Array<String>] :delivery_channel_names
    #   <p>A list of delivery channel names.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_channel_names: ["ChannelName"]
    #   }
    #   options = {}
    #   response = client.describe_delivery_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delivery_channels: [
    #       {
    #         name: "ChannelName",
    #         s3_bucket_name: "String",
    #         s3_key_prefix: "String",
    #         s3_kms_key_arn: "String",
    #         sns_topic_arn: "String",
    #         config_snapshot_delivery_properties: {
    #           delivery_frequency: "One_Hour" # One of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeDeliveryChannelsResponse]
    def describe_delivery_channels(params = {}, options = {})
      request = build_request(:describe_delivery_channels, params)
      request.send_request(options)
    end

    # <p>Provides organization Config rule deployment status for an organization.</p>
    #          <note>
    #             <p>The status is not considered successful until organization Config rule is successfully deployed in all the member 
    # 			accounts with an exception of excluded accounts.</p>
    #             <p>When you specify the limit and the next token, you receive a paginated response.
    # 			Limit and next token are not applicable if you specify organization Config rule names. 
    # 			It is only applicable, when you request all the organization Config rules.</p>
    #          </note>
    # @param [Hash, Types::DescribeOrganizationConfigRuleStatusesRequest] params
    # @option params [Array<String>] :organization_config_rule_names
    #   <p>The names of organization Config rules for which you want status details. If you do not specify any names, Config returns details for all your organization Config rules.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of <code>OrganizationConfigRuleStatuses</code> returned on each page. If you do no specify a number, Config uses the default. The default is 100.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_config_rule_names: ["StringWithCharLimit64"],
    #     limit: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_organization_config_rule_statuses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_config_rule_statuses: [
    #       {
    #         organization_config_rule_name: "OrganizationConfigRuleName", # required
    #         organization_rule_status: "CREATE_SUCCESSFUL" # One of: ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"], # required
    #         error_code: "String",
    #         error_message: "String",
    #         last_update_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeOrganizationConfigRuleStatusesResponse]
    def describe_organization_config_rule_statuses(params = {}, options = {})
      request = build_request(:describe_organization_config_rule_statuses, params)
      request.send_request(options)
    end

    # <p>Returns a list of organization Config rules. </p>
    #          <note>
    #             <p>When you specify the limit and the next token, you receive a paginated response.</p>
    #             <p>Limit and next token are not applicable if you specify organization Config rule names. 
    # 			It is only applicable, when you request all the organization Config rules.</p>
    #             <p>
    #                <i>For accounts within an organization</i>
    #             </p>
    #             <p>If you deploy an organizational rule or conformance pack in an organization
    # 				administrator account, and then establish a delegated administrator and deploy an
    # 				organizational rule or conformance pack in the delegated administrator account, you
    # 				won't be able to see the organizational rule or conformance pack in the organization
    # 				administrator account from the delegated administrator account or see the organizational
    # 				rule or conformance pack in the delegated administrator account from organization
    # 				administrator account. The <code>DescribeOrganizationConfigRules</code> and 
    # 				<code>DescribeOrganizationConformancePacks</code> APIs can only see and interact with
    # 				the organization-related resource that were deployed from within the account calling
    # 				those APIs.</p>
    #          </note>
    # @param [Hash, Types::DescribeOrganizationConfigRulesRequest] params
    # @option params [Array<String>] :organization_config_rule_names
    #   <p>The names of organization Config rules for which you want details. If you do not specify any names, Config returns details for all your organization Config rules.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of organization Config rules returned on each page. If you do no specify a number, Config uses the default. The default is 100.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_config_rule_names: ["StringWithCharLimit64"],
    #     limit: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_organization_config_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_config_rules: [
    #       {
    #         organization_config_rule_name: "OrganizationConfigRuleName", # required
    #         organization_config_rule_arn: "StringWithCharLimit256", # required
    #         organization_managed_rule_metadata: {
    #           description: "StringWithCharLimit256Min0",
    #           rule_identifier: "StringWithCharLimit256", # required
    #           input_parameters: "StringWithCharLimit2048",
    #           maximum_execution_frequency: "One_Hour" # One of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"],
    #           resource_types_scope: ["StringWithCharLimit256"],
    #           resource_id_scope: "StringWithCharLimit768",
    #           tag_key_scope: "StringWithCharLimit128",
    #           tag_value_scope: "StringWithCharLimit256"
    #         },
    #         organization_custom_rule_metadata: {
    #           description: "StringWithCharLimit256Min0",
    #           lambda_function_arn: "StringWithCharLimit256", # required
    #           organization_config_rule_trigger_types: ["ConfigurationItemChangeNotification" # One of: ["ConfigurationItemChangeNotification", "OversizedConfigurationItemChangeNotification", "ScheduledNotification"]], # required
    #           input_parameters: "StringWithCharLimit2048",
    #           maximum_execution_frequency: "One_Hour" # One of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"],
    #           resource_types_scope: ["StringWithCharLimit256"],
    #           resource_id_scope: "StringWithCharLimit768",
    #           tag_key_scope: "StringWithCharLimit128",
    #           tag_value_scope: "StringWithCharLimit256"
    #         },
    #         excluded_accounts: ["AccountId"],
    #         last_update_time: Time.now,
    #         organization_custom_policy_rule_metadata: {
    #           description: "StringWithCharLimit256Min0",
    #           organization_config_rule_trigger_types: ["ConfigurationItemChangeNotification" # One of: ["ConfigurationItemChangeNotification", "OversizedConfigurationItemChangeNotification"]],
    #           input_parameters: "StringWithCharLimit2048",
    #           maximum_execution_frequency: "One_Hour" # One of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"],
    #           resource_types_scope: ["StringWithCharLimit256"],
    #           resource_id_scope: "StringWithCharLimit768",
    #           tag_key_scope: "StringWithCharLimit128",
    #           tag_value_scope: "StringWithCharLimit256",
    #           policy_runtime: "PolicyRuntime",
    #           debug_log_delivery_accounts: ["AccountId"]
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeOrganizationConfigRulesResponse]
    def describe_organization_config_rules(params = {}, options = {})
      request = build_request(:describe_organization_config_rules, params)
      request.send_request(options)
    end

    # <p>Provides organization conformance pack deployment status for an organization. </p>
    #          <note>
    #             <p>The status is not considered successful until organization conformance pack is successfully 
    # 				deployed in all the member accounts with an exception of excluded accounts.</p>
    #             <p>When you specify the limit and the next token, you receive a paginated response. 
    # 				Limit and next token are not applicable if you specify organization conformance pack names. 
    # 				They are only applicable, when you request all the organization conformance packs.</p>
    #          </note>
    # @param [Hash, Types::DescribeOrganizationConformancePackStatusesRequest] params
    # @option params [Array<String>] :organization_conformance_pack_names
    #   <p>The names of organization conformance packs for which you want status details. 
    #   			If you do not specify any names, Config returns details for all your organization conformance packs. </p>
    # @option params [Integer] :limit
    #   <p>The maximum number of OrganizationConformancePackStatuses returned on each page. 
    #   			If you do no specify a number, Config uses the default. The default is 100. </p>
    # @option params [String] :next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_conformance_pack_names: ["OrganizationConformancePackName"],
    #     limit: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_organization_conformance_pack_statuses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_conformance_pack_statuses: [
    #       {
    #         organization_conformance_pack_name: "OrganizationConformancePackName", # required
    #         status: "CREATE_SUCCESSFUL" # One of: ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"], # required
    #         error_code: "String",
    #         error_message: "String",
    #         last_update_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeOrganizationConformancePackStatusesResponse]
    def describe_organization_conformance_pack_statuses(params = {}, options = {})
      request = build_request(:describe_organization_conformance_pack_statuses, params)
      request.send_request(options)
    end

    # <p>Returns a list of organization conformance packs. </p>
    #          <note>
    #             <p>When you specify the limit and the next token, you receive a paginated response. </p>
    #             <p>Limit and next token are not applicable if you specify organization conformance packs names. They are only applicable,
    # 			when you request all the organization conformance packs. </p>
    #             <p>
    #                <i>For accounts within an organization</i>
    #             </p>
    #             <p>If you deploy an organizational rule or conformance pack in an organization
    # 				administrator account, and then establish a delegated administrator and deploy an
    # 				organizational rule or conformance pack in the delegated administrator account, you
    # 				won't be able to see the organizational rule or conformance pack in the organization
    # 				administrator account from the delegated administrator account or see the organizational
    # 				rule or conformance pack in the delegated administrator account from organization
    # 				administrator account. The <code>DescribeOrganizationConfigRules</code> and 
    # 				<code>DescribeOrganizationConformancePacks</code> APIs can only see and interact with
    # 				the organization-related resource that were deployed from within the account calling
    # 				those APIs.</p>
    #          </note>
    # @param [Hash, Types::DescribeOrganizationConformancePacksRequest] params
    # @option params [Array<String>] :organization_conformance_pack_names
    #   <p>The name that you assign to an organization conformance pack.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of organization config packs returned on each page. If you do no specify a
    #   			number, Config uses the default. The default is 100.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a
    #   			paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_conformance_pack_names: ["OrganizationConformancePackName"],
    #     limit: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_organization_conformance_packs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_conformance_packs: [
    #       {
    #         organization_conformance_pack_name: "OrganizationConformancePackName", # required
    #         organization_conformance_pack_arn: "StringWithCharLimit256", # required
    #         delivery_s3_bucket: "DeliveryS3Bucket",
    #         delivery_s3_key_prefix: "DeliveryS3KeyPrefix",
    #         conformance_pack_input_parameters: [
    #           {
    #             parameter_name: "ParameterName", # required
    #             parameter_value: "ParameterValue", # required
    #           }
    #         ],
    #         excluded_accounts: ["AccountId"],
    #         last_update_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeOrganizationConformancePacksResponse]
    def describe_organization_conformance_packs(params = {}, options = {})
      request = build_request(:describe_organization_conformance_packs, params)
      request.send_request(options)
    end

    # <p>Returns a list of all pending aggregation requests.</p>
    # @param [Hash, Types::DescribePendingAggregationRequestsRequest] params
    # @option params [Integer] :limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is maximum. If you specify 0, Config uses the
    #   			default.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     limit: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_pending_aggregation_requests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pending_aggregation_requests: [
    #       {
    #         requester_account_id: "AccountId",
    #         requester_aws_region: "AwsRegion"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribePendingAggregationRequestsResponse]
    def describe_pending_aggregation_requests(params = {}, options = {})
      request = build_request(:describe_pending_aggregation_requests, params)
      request.send_request(options)
    end

    # <p>Returns the details of one or more remediation configurations.</p>
    # @param [Hash, Types::DescribeRemediationConfigurationsRequest] params
    # @option params [Array<String>] :config_rule_names
    #   <p>A list of Config rule names of remediation configurations for which you want details. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_rule_names: ["ConfigRuleName"], # required
    #   }
    #   options = {}
    #   response = client.describe_remediation_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     remediation_configurations: [
    #       {
    #         config_rule_name: "ConfigRuleName", # required
    #         target_type: "SSM_DOCUMENT" # One of: ["SSM_DOCUMENT"], # required
    #         target_id: "StringWithCharLimit256", # required
    #         target_version: "String",
    #         parameters: {
    #           "StringWithCharLimit256" => {
    #             resource_value: {
    #               value: "RESOURCE_ID" # One of: ["RESOURCE_ID"], # required
    #             },
    #             static_value: {
    #               values: ["StringWithCharLimit256"], # required
    #             }
    #           }
    #         },
    #         resource_type: "String",
    #         automatic: false,
    #         execution_controls: {
    #           ssm_controls: {
    #             concurrent_execution_rate_percentage: 1,
    #             error_percentage: 1
    #           }
    #         },
    #         maximum_automatic_attempts: 1,
    #         retry_attempt_seconds: 1,
    #         arn: "StringWithCharLimit1024",
    #         created_by_service: "StringWithCharLimit1024"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeRemediationConfigurationsResponse]
    def describe_remediation_configurations(params = {}, options = {})
      request = build_request(:describe_remediation_configurations, params)
      request.send_request(options)
    end

    # <p>Returns the details of one or more remediation exceptions. A detailed view of a remediation exception for a set of resources that includes an explanation of an exception and the time when the exception will be deleted. 
    # 			When you specify the limit and the next token, you receive a paginated response. </p>
    #          <note>
    #             <p>Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource. 
    # 				Remediation exceptions blocks auto-remediation until the exception is cleared.</p>
    #             <p>When you specify the limit and the next token, you receive a paginated response. </p>
    #             <p>Limit and next token are not applicable if you request resources in batch. It is only applicable, when you request all resources.</p>
    #          </note>
    # @param [Hash, Types::DescribeRemediationExceptionsRequest] params
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule.</p>
    # @option params [Array<Types::RemediationExceptionResourceKey>] :resource_keys
    #   <p>An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys. </p>
    # @option params [Integer] :limit
    #   <p>The maximum number of RemediationExceptionResourceKey returned on each page. The default is 25. If you specify 0, Config uses the default.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_rule_name: "ConfigRuleName", # required
    #     resource_keys: [
    #       {
    #         resource_type: "StringWithCharLimit256",
    #         resource_id: "StringWithCharLimit1024"
    #       }
    #     ],
    #     limit: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_remediation_exceptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     remediation_exceptions: [
    #       {
    #         config_rule_name: "ConfigRuleName", # required
    #         resource_type: "StringWithCharLimit256", # required
    #         resource_id: "StringWithCharLimit1024", # required
    #         message: "StringWithCharLimit1024",
    #         expiration_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeRemediationExceptionsResponse]
    def describe_remediation_exceptions(params = {}, options = {})
      request = build_request(:describe_remediation_exceptions, params)
      request.send_request(options)
    end

    # <p>Provides a detailed view of a Remediation Execution for a set of resources including state, timestamps for when steps for the remediation execution occur, and any error messages for steps that have failed. 
    # 			When you specify the limit and the next token, you receive a paginated response.</p>
    # @param [Hash, Types::DescribeRemediationExecutionStatusRequest] params
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule.</p>
    # @option params [Array<Types::ResourceKey>] :resource_keys
    #   <p>A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID. </p>
    # @option params [Integer] :limit
    #   <p>The maximum number of RemediationExecutionStatuses returned on each page. The default is maximum. If you specify 0, Config uses the default. </p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_rule_name: "ConfigRuleName", # required
    #     resource_keys: [
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"], # required
    #         resource_id: "ResourceId", # required
    #       }
    #     ],
    #     limit: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_remediation_execution_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     remediation_execution_statuses: [
    #       {
    #         resource_key: {
    #           resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"], # required
    #           resource_id: "ResourceId", # required
    #         },
    #         state: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "UNKNOWN"],
    #         step_details: [
    #           {
    #             name: "String",
    #             state: "SUCCEEDED" # One of: ["SUCCEEDED", "PENDING", "FAILED", "IN_PROGRESS", "EXITED", "UNKNOWN"],
    #             error_message: "String",
    #             start_time: Time.now,
    #             stop_time: Time.now
    #           }
    #         ],
    #         invocation_time: Time.now,
    #         last_updated_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeRemediationExecutionStatusResponse]
    def describe_remediation_execution_status(params = {}, options = {})
      request = build_request(:describe_remediation_execution_status, params)
      request.send_request(options)
    end

    # <p>Returns the details of one or more retention configurations. If
    # 			the retention configuration name is not specified, this operation
    # 			returns the details for all the retention configurations for that
    # 			account.</p>
    #          <note>
    #             <p>Currently, Config supports only one retention
    # 				configuration per region in your account.</p>
    #          </note>
    # @param [Hash, Types::DescribeRetentionConfigurationsRequest] params
    # @option params [Array<String>] :retention_configuration_names
    #   <p>A list of names of retention configurations for which you want
    #   			details. If you do not specify a name, Config returns details
    #   			for all the retention configurations for that account.</p>
    #            <note>
    #               <p>Currently, Config supports only one retention
    #   				configuration per region in your account.</p>
    #            </note>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     retention_configuration_names: ["RetentionConfigurationName"],
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_retention_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     retention_configurations: [
    #       {
    #         name: "RetentionConfigurationName", # required
    #         retention_period_in_days: 1, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeRetentionConfigurationsResponse]
    def describe_retention_configurations(params = {}, options = {})
      request = build_request(:describe_retention_configurations, params)
      request.send_request(options)
    end

    # <p>Removes all resource types specified in the <code>ResourceTypes</code> list from the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html">RecordingGroup</a> of configuration recorder and excludes these resource types when recording.</p>
    #          <p>For this operation, the configuration recorder must use a <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html">RecordingStrategy</a> that is either <code>INCLUSION_BY_RESOURCE_TYPES</code> or <code>EXCLUSION_BY_RESOURCE_TYPES</code>.</p>
    # @param [Hash, Types::DisassociateResourceTypesRequest] params
    # @option params [String] :configuration_recorder_arn
    #   <p>The Amazon Resource Name (ARN) of the specified configuration recorder.</p>
    # @option params [Array<String>] :resource_types
    #   <p>The list of resource types you want to remove from the recording group of the specified configuration recorder.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_recorder_arn: "AmazonResourceName", # required
    #     resource_types: ["AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"]], # required
    #   }
    #   options = {}
    #   response = client.disassociate_resource_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_recorder: { # required
    #       arn: "AmazonResourceName",
    #       name: "RecorderName",
    #       role_arn: "String",
    #       recording_group: {
    #         all_supported: false,
    #         include_global_resource_types: false,
    #         resource_types: ["AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"]],
    #         exclusion_by_resource_types: {
    #           resource_types: ["AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"]]
    #         },
    #         recording_strategy: {
    #           use_only: "ALL_SUPPORTED_RESOURCE_TYPES" # One of: ["ALL_SUPPORTED_RESOURCE_TYPES", "INCLUSION_BY_RESOURCE_TYPES", "EXCLUSION_BY_RESOURCE_TYPES"]
    #         }
    #       },
    #       recording_mode: {
    #         recording_frequency: "CONTINUOUS" # One of: ["CONTINUOUS", "DAILY"], # required
    #         recording_mode_overrides: [
    #           {
    #             description: "Description",
    #             resource_types: ["AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"]], # required
    #             recording_frequency: "CONTINUOUS" # One of: ["CONTINUOUS", "DAILY"], # required
    #           }
    #         ]
    #       },
    #       recording_scope: "INTERNAL" # One of: ["INTERNAL", "PAID"],
    #       service_principal: "ServicePrincipal"
    #     }
    #   }
    # @return [Types::DisassociateResourceTypesResponse]
    def disassociate_resource_types(params = {}, options = {})
      request = build_request(:disassociate_resource_types, params)
      request.send_request(options)
    end

    # <p>Returns the evaluation results for the specified Config
    # 			rule for a specific resource in a rule. The results indicate which
    # 			Amazon Web Services resources were evaluated by the rule, when each resource was
    # 			last evaluated, and whether each resource complies with the rule. </p>
    #          <note>
    #             <p>The results can return an empty result page. But if you
    # 				have a <code>nextToken</code>, the results are displayed on the next
    # 				page.</p>
    #          </note>
    # @param [Hash, Types::GetAggregateComplianceDetailsByConfigRuleRequest] params
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule for which you want compliance
    #   			information.</p>
    # @option params [String] :account_id
    #   <p>The 12-digit account ID of the source account.</p>
    # @option params [String] :aws_region
    #   <p>The source region from where the data is aggregated.</p>
    # @option params [String] :compliance_type
    #   <p>The resource compliance status.</p>
    #            <note>
    #               <p>For the
    #   					<code>GetAggregateComplianceDetailsByConfigRuleRequest</code>
    #   				data type, Config supports only the <code>COMPLIANT</code>
    #   				and <code>NON_COMPLIANT</code>. Config does not support the
    #   					<code>NOT_APPLICABLE</code> and
    #   					<code>INSUFFICIENT_DATA</code> values.</p>
    #            </note>
    # @option params [Integer] :limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is 50. You cannot specify a number greater than 100. If
    #   			you specify 0, Config uses the default.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     config_rule_name: "ConfigRuleName", # required
    #     account_id: "AccountId", # required
    #     aws_region: "AwsRegion", # required
    #     compliance_type: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"],
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_aggregate_compliance_details_by_config_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aggregate_evaluation_results: [
    #       {
    #         evaluation_result_identifier: {
    #           evaluation_result_qualifier: {
    #             config_rule_name: "ConfigRuleName",
    #             resource_type: "StringWithCharLimit256",
    #             resource_id: "BaseResourceId",
    #             evaluation_mode: "DETECTIVE" # One of: ["DETECTIVE", "PROACTIVE"]
    #           },
    #           ordering_timestamp: Time.now,
    #           resource_evaluation_id: "ResourceEvaluationId"
    #         },
    #         compliance_type: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"],
    #         result_recorded_time: Time.now,
    #         config_rule_invoked_time: Time.now,
    #         annotation: "StringWithCharLimit256",
    #         account_id: "AccountId",
    #         aws_region: "AwsRegion"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetAggregateComplianceDetailsByConfigRuleResponse]
    def get_aggregate_compliance_details_by_config_rule(params = {}, options = {})
      request = build_request(:get_aggregate_compliance_details_by_config_rule, params)
      request.send_request(options)
    end

    # <p>Returns the number of compliant and noncompliant rules for one
    # 			or more accounts and regions in an aggregator.</p>
    #          <note>
    #             <p>The results can return an empty result page, but if you
    # 				have a nextToken, the results are displayed on the next
    # 				page.</p>
    #          </note>
    # @param [Hash, Types::GetAggregateConfigRuleComplianceSummaryRequest] params
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    # @option params [Types::ConfigRuleComplianceSummaryFilters] :filters
    #   <p>Filters the results based on the
    #   			ConfigRuleComplianceSummaryFilters object.</p>
    # @option params [String] :group_by_key
    #   <p>Groups the result based on ACCOUNT_ID or AWS_REGION.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is 1000. You cannot specify a number greater than 1000.
    #   			If you specify 0, Config uses the default.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use
    #   			to get the next page of results in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     filters: {
    #       account_id: "AccountId",
    #       aws_region: "AwsRegion"
    #     },
    #     group_by_key: "ACCOUNT_ID" # One of: ["ACCOUNT_ID", "AWS_REGION"],
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_aggregate_config_rule_compliance_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_by_key: "StringWithCharLimit256",
    #     aggregate_compliance_counts: [
    #       {
    #         group_name: "StringWithCharLimit256",
    #         compliance_summary: {
    #           compliant_resource_count: {
    #             capped_count: 1,
    #             cap_exceeded: false
    #           },
    #           non_compliant_resource_count: {
    #             capped_count: 1,
    #             cap_exceeded: false
    #           },
    #           compliance_summary_timestamp: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetAggregateConfigRuleComplianceSummaryResponse]
    def get_aggregate_config_rule_compliance_summary(params = {}, options = {})
      request = build_request(:get_aggregate_config_rule_compliance_summary, params)
      request.send_request(options)
    end

    # <p>Returns the count of compliant and noncompliant conformance packs across all Amazon Web Services accounts and Amazon Web Services Regions in an aggregator. You can filter based on Amazon Web Services account ID or Amazon Web Services Region.</p>
    #          <note>
    #             <p>The results can return an empty result page, but if you have a nextToken, the results are displayed on the next page.</p>
    #          </note>
    # @param [Hash, Types::GetAggregateConformancePackComplianceSummaryRequest] params
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    # @option params [Types::AggregateConformancePackComplianceSummaryFilters] :filters
    #   <p>Filters the results based on the <code>AggregateConformancePackComplianceSummaryFilters</code> object.</p>
    # @option params [String] :group_by_key
    #   <p>Groups the result based on Amazon Web Services account ID or Amazon Web Services Region.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results returned on each page. The default is maximum. If you specify 0, Config uses the default.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     filters: {
    #       account_id: "AccountId",
    #       aws_region: "AwsRegion"
    #     },
    #     group_by_key: "ACCOUNT_ID" # One of: ["ACCOUNT_ID", "AWS_REGION"],
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_aggregate_conformance_pack_compliance_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aggregate_conformance_pack_compliance_summaries: [
    #       {
    #         compliance_summary: {
    #           compliant_conformance_pack_count: 1,
    #           non_compliant_conformance_pack_count: 1
    #         },
    #         group_name: "StringWithCharLimit256"
    #       }
    #     ],
    #     group_by_key: "StringWithCharLimit256",
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetAggregateConformancePackComplianceSummaryResponse]
    def get_aggregate_conformance_pack_compliance_summary(params = {}, options = {})
      request = build_request(:get_aggregate_conformance_pack_compliance_summary, params)
      request.send_request(options)
    end

    # <p>Returns the resource counts across accounts and regions that are present in your Config aggregator. You can request the resource counts by providing filters and GroupByKey.</p>
    #          <p>For example, if the input contains accountID 12345678910 and region us-east-1 in filters, the API returns the count of resources in account ID 12345678910 and region us-east-1.
    # 			If the input contains ACCOUNT_ID as a GroupByKey, the API returns resource counts for all source accounts that are present in your aggregator.</p>
    # @param [Hash, Types::GetAggregateDiscoveredResourceCountsRequest] params
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    # @option params [Types::ResourceCountFilters] :filters
    #   <p>Filters the results based on the <code>ResourceCountFilters</code> object.</p>
    # @option params [String] :group_by_key
    #   <p>The key to group the resource counts.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of <a>GroupedResourceCount</a> objects returned on each page. The default is 1000. You cannot specify a number greater than 1000. If you specify 0, Config uses the default.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     filters: {
    #       resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"],
    #       account_id: "AccountId",
    #       region: "AwsRegion"
    #     },
    #     group_by_key: "RESOURCE_TYPE" # One of: ["RESOURCE_TYPE", "ACCOUNT_ID", "AWS_REGION"],
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_aggregate_discovered_resource_counts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     total_discovered_resources: 1, # required
    #     group_by_key: "StringWithCharLimit256",
    #     grouped_resource_counts: [
    #       {
    #         group_name: "StringWithCharLimit256", # required
    #         resource_count: 1, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetAggregateDiscoveredResourceCountsResponse]
    def get_aggregate_discovered_resource_counts(params = {}, options = {})
      request = build_request(:get_aggregate_discovered_resource_counts, params)
      request.send_request(options)
    end

    # <p>Returns configuration item that is aggregated for your specific resource in a specific source account and region.</p>
    #          <note>
    #             <p>The API does not return results for deleted resources.</p>
    #          </note>
    # @param [Hash, Types::GetAggregateResourceConfigRequest] params
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    # @option params [Types::AggregateResourceIdentifier] :resource_identifier
    #   <p>An object that identifies aggregate resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     resource_identifier: { # required
    #       source_account_id: "AccountId", # required
    #       source_region: "AwsRegion", # required
    #       resource_id: "ResourceId", # required
    #       resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"], # required
    #       resource_name: "ResourceName"
    #     }
    #   }
    #   options = {}
    #   response = client.get_aggregate_resource_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_item: {
    #       version: "Version",
    #       account_id: "AccountId",
    #       configuration_item_capture_time: Time.now,
    #       configuration_item_status: "OK" # One of: ["OK", "ResourceDiscovered", "ResourceNotRecorded", "ResourceDeleted", "ResourceDeletedNotRecorded"],
    #       configuration_state_id: "ConfigurationStateId",
    #       configuration_item_md5_hash: "ConfigurationItemMD5Hash",
    #       arn: "ARN",
    #       resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"],
    #       resource_id: "ResourceId",
    #       resource_name: "ResourceName",
    #       aws_region: "AwsRegion",
    #       availability_zone: "AvailabilityZone",
    #       resource_creation_time: Time.now,
    #       tags: {
    #         "Name" => "Value"
    #       },
    #       related_events: ["RelatedEvent"],
    #       relationships: [
    #         {
    #           resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"],
    #           resource_id: "ResourceId",
    #           resource_name: "ResourceName",
    #           relationship_name: "RelationshipName"
    #         }
    #       ],
    #       configuration: "Configuration",
    #       supplementary_configuration: {
    #         "SupplementaryConfigurationName" => "SupplementaryConfigurationValue"
    #       },
    #       recording_frequency: "CONTINUOUS" # One of: ["CONTINUOUS", "DAILY"],
    #       configuration_item_delivery_time: Time.now
    #     }
    #   }
    # @return [Types::GetAggregateResourceConfigResponse]
    def get_aggregate_resource_config(params = {}, options = {})
      request = build_request(:get_aggregate_resource_config, params)
      request.send_request(options)
    end

    # <p>Returns the evaluation results for the specified Config
    # 			rule. The results indicate which Amazon Web Services resources were evaluated by the
    # 			rule, when each resource was last evaluated, and whether each
    # 			resource complies with the rule.</p>
    # @param [Hash, Types::GetComplianceDetailsByConfigRuleRequest] params
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule for which you want compliance
    #   			information.</p>
    # @option params [Array<String>] :compliance_types
    #   <p>Filters the results by compliance.</p>
    #            <p>
    #               <code>INSUFFICIENT_DATA</code> is a valid <code>ComplianceType</code> that is returned when an Config rule cannot be evaluated. However, <code>INSUFFICIENT_DATA</code> cannot be used as a <code>ComplianceType</code> for filtering results.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of evaluation results returned on each page.
    #   			The default is 10. You cannot specify a number greater than 100. If
    #   			you specify 0, Config uses the default.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_rule_name: "StringWithCharLimit64", # required
    #     compliance_types: ["COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]],
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_compliance_details_by_config_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_results: [
    #       {
    #         evaluation_result_identifier: {
    #           evaluation_result_qualifier: {
    #             config_rule_name: "ConfigRuleName",
    #             resource_type: "StringWithCharLimit256",
    #             resource_id: "BaseResourceId",
    #             evaluation_mode: "DETECTIVE" # One of: ["DETECTIVE", "PROACTIVE"]
    #           },
    #           ordering_timestamp: Time.now,
    #           resource_evaluation_id: "ResourceEvaluationId"
    #         },
    #         compliance_type: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"],
    #         result_recorded_time: Time.now,
    #         config_rule_invoked_time: Time.now,
    #         annotation: "StringWithCharLimit256",
    #         result_token: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetComplianceDetailsByConfigRuleResponse]
    def get_compliance_details_by_config_rule(params = {}, options = {})
      request = build_request(:get_compliance_details_by_config_rule, params)
      request.send_request(options)
    end

    # <p>Returns the evaluation results for the specified Amazon Web Services resource.
    # 			The results indicate which Config rules were used to evaluate
    # 			the resource, when each rule was last invoked, and whether the resource
    # 			complies with each rule.</p>
    # @param [Hash, Types::GetComplianceDetailsByResourceRequest] params
    # @option params [String] :resource_type
    #   <p>The type of the Amazon Web Services resource for which you want compliance
    #   			information.</p>
    # @option params [String] :resource_id
    #   <p>The ID of the Amazon Web Services resource for which you want compliance
    #   			information.</p>
    # @option params [Array<String>] :compliance_types
    #   <p>Filters the results by compliance.</p>
    #            <p>
    #               <code>INSUFFICIENT_DATA</code> is a valid <code>ComplianceType</code> that is returned when an Config rule cannot be evaluated. However, <code>INSUFFICIENT_DATA</code> cannot be used as a <code>ComplianceType</code> for filtering results.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    # @option params [String] :resource_evaluation_id
    #   <p>The unique ID of Amazon Web Services resource execution for which you want to retrieve evaluation results. </p>
    #            <note>
    #               <p>You need to only provide either a <code>ResourceEvaluationID</code> or a <code>ResourceID </code>and <code>ResourceType</code>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "StringWithCharLimit256",
    #     resource_id: "BaseResourceId",
    #     compliance_types: ["COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"]],
    #     next_token: "String",
    #     resource_evaluation_id: "ResourceEvaluationId"
    #   }
    #   options = {}
    #   response = client.get_compliance_details_by_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_results: [
    #       {
    #         evaluation_result_identifier: {
    #           evaluation_result_qualifier: {
    #             config_rule_name: "ConfigRuleName",
    #             resource_type: "StringWithCharLimit256",
    #             resource_id: "BaseResourceId",
    #             evaluation_mode: "DETECTIVE" # One of: ["DETECTIVE", "PROACTIVE"]
    #           },
    #           ordering_timestamp: Time.now,
    #           resource_evaluation_id: "ResourceEvaluationId"
    #         },
    #         compliance_type: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"],
    #         result_recorded_time: Time.now,
    #         config_rule_invoked_time: Time.now,
    #         annotation: "StringWithCharLimit256",
    #         result_token: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetComplianceDetailsByResourceResponse]
    def get_compliance_details_by_resource(params = {}, options = {})
      request = build_request(:get_compliance_details_by_resource, params)
      request.send_request(options)
    end

    # <p>Returns the number of Config rules that are compliant and
    # 			noncompliant, up to a maximum of 25 for each.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_compliance_summary_by_config_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compliance_summary: {
    #       compliant_resource_count: {
    #         capped_count: 1,
    #         cap_exceeded: false
    #       },
    #       non_compliant_resource_count: {
    #         capped_count: 1,
    #         cap_exceeded: false
    #       },
    #       compliance_summary_timestamp: Time.now
    #     }
    #   }
    # @return [Types::GetComplianceSummaryByConfigRuleResponse]
    def get_compliance_summary_by_config_rule(params = {}, options = {})
      request = build_request(:get_compliance_summary_by_config_rule, params)
      request.send_request(options)
    end

    # <p>Returns the number of resources that are compliant and the
    # 			number that are noncompliant. You can specify one or more resource
    # 			types to get these numbers for each resource type. The maximum
    # 			number returned is 100.</p>
    # @param [Hash, Types::GetComplianceSummaryByResourceTypeRequest] params
    # @option params [Array<String>] :resource_types
    #   <p>Specify one or more resource types to get the number of
    #   			resources that are compliant and the number that are noncompliant
    #   			for each resource type.</p>
    #            <p>For this request, you can specify an Amazon Web Services resource type such as
    #   				<code>AWS::EC2::Instance</code>. You can specify that the
    #   			resource type is an Amazon Web Services account by specifying
    #   				<code>AWS::::Account</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_types: ["StringWithCharLimit256"]
    #   }
    #   options = {}
    #   response = client.get_compliance_summary_by_resource_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compliance_summaries_by_resource_type: [
    #       {
    #         resource_type: "StringWithCharLimit256",
    #         compliance_summary: {
    #           compliant_resource_count: {
    #             capped_count: 1,
    #             cap_exceeded: false
    #           },
    #           non_compliant_resource_count: {
    #             capped_count: 1,
    #             cap_exceeded: false
    #           },
    #           compliance_summary_timestamp: Time.now
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetComplianceSummaryByResourceTypeResponse]
    def get_compliance_summary_by_resource_type(params = {}, options = {})
      request = build_request(:get_compliance_summary_by_resource_type, params)
      request.send_request(options)
    end

    # <p>Returns compliance details of a conformance pack for all Amazon Web Services resources that are monitered by conformance pack.</p>
    # @param [Hash, Types::GetConformancePackComplianceDetailsRequest] params
    # @option params [String] :conformance_pack_name
    #   <p>Name of the conformance pack.</p>
    # @option params [Types::ConformancePackEvaluationFilters] :filters
    #   <p>A <code>ConformancePackEvaluationFilters</code> object.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of evaluation results returned on each page. If you do no specify a number, Config uses the default. The default is 100.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     conformance_pack_name: "ConformancePackName", # required
    #     filters: {
    #       config_rule_names: ["StringWithCharLimit64"],
    #       compliance_type: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"],
    #       resource_type: "StringWithCharLimit256",
    #       resource_ids: ["StringWithCharLimit256"]
    #     },
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_conformance_pack_compliance_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     conformance_pack_name: "ConformancePackName", # required
    #     conformance_pack_rule_evaluation_results: [
    #       {
    #         compliance_type: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"], # required
    #         evaluation_result_identifier: { # required
    #           evaluation_result_qualifier: {
    #             config_rule_name: "ConfigRuleName",
    #             resource_type: "StringWithCharLimit256",
    #             resource_id: "BaseResourceId",
    #             evaluation_mode: "DETECTIVE" # One of: ["DETECTIVE", "PROACTIVE"]
    #           },
    #           ordering_timestamp: Time.now,
    #           resource_evaluation_id: "ResourceEvaluationId"
    #         },
    #         config_rule_invoked_time: Time.now, # required
    #         result_recorded_time: Time.now, # required
    #         annotation: "Annotation"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetConformancePackComplianceDetailsResponse]
    def get_conformance_pack_compliance_details(params = {}, options = {})
      request = build_request(:get_conformance_pack_compliance_details, params)
      request.send_request(options)
    end

    # <p>Returns compliance details for the conformance pack based on the cumulative compliance results of all the rules in that conformance pack.</p>
    # @param [Hash, Types::GetConformancePackComplianceSummaryRequest] params
    # @option params [Array<String>] :conformance_pack_names
    #   <p>Names of conformance packs.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of conformance packs returned on each page.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     conformance_pack_names: ["ConformancePackName"], # required
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_conformance_pack_compliance_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     conformance_pack_compliance_summary_list: [
    #       {
    #         conformance_pack_name: "ConformancePackName", # required
    #         conformance_pack_compliance_status: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "INSUFFICIENT_DATA"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetConformancePackComplianceSummaryResponse]
    def get_conformance_pack_compliance_summary(params = {}, options = {})
      request = build_request(:get_conformance_pack_compliance_summary, params)
      request.send_request(options)
    end

    # <p>Returns the policy definition containing the logic for your Config Custom Policy rule.</p>
    # @param [Hash, Types::GetCustomRulePolicyRequest] params
    # @option params [String] :config_rule_name
    #   <p>The name of your Config Custom Policy rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_rule_name: "ConfigRuleName"
    #   }
    #   options = {}
    #   response = client.get_custom_rule_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_text: "PolicyText"
    #   }
    # @return [Types::GetCustomRulePolicyResponse]
    def get_custom_rule_policy(params = {}, options = {})
      request = build_request(:get_custom_rule_policy, params)
      request.send_request(options)
    end

    # <p>Returns the resource types, the number of each resource type,
    # 			and the total number of resources that Config is recording in
    # 			this region for your Amazon Web Services account. </p>
    #          <p class="title">
    #             <b>Example</b>
    #          </p>
    #          <ol>
    #             <li>
    #                <p>Config is recording three resource types in the US
    # 					East (Ohio) Region for your account: 25 EC2 instances, 20
    # 					IAM users, and 15 S3 buckets.</p>
    #             </li>
    #             <li>
    #                <p>You make a call to the
    # 						<code>GetDiscoveredResourceCounts</code> action and
    # 					specify that you want all resource types. </p>
    #             </li>
    #             <li>
    #                <p>Config returns the following:</p>
    #                <ul>
    #                   <li>
    #                      <p>The resource types (EC2 instances, IAM users,
    # 							and S3 buckets).</p>
    #                   </li>
    #                   <li>
    #                      <p>The number of each resource type (25, 20, and
    # 							15).</p>
    #                   </li>
    #                   <li>
    #                      <p>The total number of all resources
    # 							(60).</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ol>
    #          <p>The response is paginated. By default, Config lists 100
    # 				<a>ResourceCount</a> objects on each page. You can
    # 			customize this number with the <code>limit</code> parameter. The
    # 			response includes a <code>nextToken</code> string. To get the next
    # 			page of results, run the request again and specify the string for
    # 			the <code>nextToken</code> parameter.</p>
    #          <note>
    #             <p>If you make a call to the <a>GetDiscoveredResourceCounts</a> action, you might
    # 				not immediately receive resource counts in the following
    # 				situations:</p>
    #             <ul>
    #                <li>
    #                   <p>You are a new Config customer.</p>
    #                </li>
    #                <li>
    #                   <p>You just enabled resource recording.</p>
    #                </li>
    #             </ul>
    #             <p>It might take a few minutes for Config to record and
    # 				count your resources. Wait a few minutes and then retry the
    # 					<a>GetDiscoveredResourceCounts</a> action.
    # 			</p>
    #          </note>
    # @param [Hash, Types::GetDiscoveredResourceCountsRequest] params
    # @option params [Array<String>] :resource_types
    #   <p>The comma-separated list that specifies the resource types that
    #   			you want Config to return (for example,
    #   				<code>"AWS::EC2::Instance"</code>,
    #   			<code>"AWS::IAM::User"</code>).</p>
    #            <p>If a value for <code>resourceTypes</code> is not specified, Config returns all resource types that Config is recording in
    #   			the region for your account.</p>
    #            <note>
    #               <p>If the configuration recorder is turned off, Config
    #   				returns an empty list of <a>ResourceCount</a>
    #   				objects. If the configuration recorder is not recording a
    #   				specific resource type (for example, S3 buckets), that resource
    #   				type is not returned in the list of <a>ResourceCount</a> objects.</p>
    #            </note>
    # @option params [Integer] :limit
    #   <p>The maximum number of <a>ResourceCount</a> objects
    #   			returned on each page. The default is 100. You cannot specify a
    #   			number greater than 100. If you specify 0, Config uses the
    #   			default.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_types: ["StringWithCharLimit256"],
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_discovered_resource_counts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     total_discovered_resources: 1,
    #     resource_counts: [
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"],
    #         count: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetDiscoveredResourceCountsResponse]
    def get_discovered_resource_counts(params = {}, options = {})
      request = build_request(:get_discovered_resource_counts, params)
      request.send_request(options)
    end

    # <p>Returns detailed status for each member account within an organization for a given organization Config rule.</p>
    # @param [Hash, Types::GetOrganizationConfigRuleDetailedStatusRequest] params
    # @option params [String] :organization_config_rule_name
    #   <p>The name of your organization Config rule for which you want status details for member accounts.</p>
    # @option params [Types::StatusDetailFilters] :filters
    #   <p>A <code>StatusDetailFilters</code> object.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of <code>OrganizationConfigRuleDetailedStatus</code> returned on each page. If you do not specify a number, Config uses the default. The default is 100.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_config_rule_name: "OrganizationConfigRuleName", # required
    #     filters: {
    #       account_id: "AccountId",
    #       member_account_rule_status: "CREATE_SUCCESSFUL" # One of: ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #     },
    #     limit: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.get_organization_config_rule_detailed_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_config_rule_detailed_status: [
    #       {
    #         account_id: "AccountId", # required
    #         config_rule_name: "StringWithCharLimit64", # required
    #         member_account_rule_status: "CREATE_SUCCESSFUL" # One of: ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"], # required
    #         error_code: "String",
    #         error_message: "String",
    #         last_update_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetOrganizationConfigRuleDetailedStatusResponse]
    def get_organization_config_rule_detailed_status(params = {}, options = {})
      request = build_request(:get_organization_config_rule_detailed_status, params)
      request.send_request(options)
    end

    # <p>Returns detailed status for each member account within an organization for a given organization conformance pack.</p>
    # @param [Hash, Types::GetOrganizationConformancePackDetailedStatusRequest] params
    # @option params [String] :organization_conformance_pack_name
    #   <p>The name of organization conformance pack for which you want status details for member accounts.</p>
    # @option params [Types::OrganizationResourceDetailedStatusFilters] :filters
    #   <p>An <code>OrganizationResourceDetailedStatusFilters</code> object.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of <code>OrganizationConformancePackDetailedStatuses</code> returned on each page. 
    #   			If you do not specify a number, Config uses the default. The default is 100. </p>
    # @option params [String] :next_token
    #   <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_conformance_pack_name: "OrganizationConformancePackName", # required
    #     filters: {
    #       account_id: "AccountId",
    #       status: "CREATE_SUCCESSFUL" # One of: ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #     },
    #     limit: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.get_organization_conformance_pack_detailed_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_conformance_pack_detailed_statuses: [
    #       {
    #         account_id: "AccountId", # required
    #         conformance_pack_name: "StringWithCharLimit256", # required
    #         status: "CREATE_SUCCESSFUL" # One of: ["CREATE_SUCCESSFUL", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_SUCCESSFUL", "DELETE_FAILED", "DELETE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"], # required
    #         error_code: "String",
    #         error_message: "String",
    #         last_update_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetOrganizationConformancePackDetailedStatusResponse]
    def get_organization_conformance_pack_detailed_status(params = {}, options = {})
      request = build_request(:get_organization_conformance_pack_detailed_status, params)
      request.send_request(options)
    end

    # <p>Returns the policy definition containing the logic for your organization Config Custom Policy rule.</p>
    # @param [Hash, Types::GetOrganizationCustomRulePolicyRequest] params
    # @option params [String] :organization_config_rule_name
    #   <p>The name of your organization Config Custom Policy rule. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_config_rule_name: "OrganizationConfigRuleName", # required
    #   }
    #   options = {}
    #   response = client.get_organization_custom_rule_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_text: "PolicyText"
    #   }
    # @return [Types::GetOrganizationCustomRulePolicyResponse]
    def get_organization_custom_rule_policy(params = {}, options = {})
      request = build_request(:get_organization_custom_rule_policy, params)
      request.send_request(options)
    end

    # <important>
    #             <p>For accurate reporting on the compliance status, you must record the <code>AWS::Config::ResourceCompliance</code> resource type.</p>
    #             <p>For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html">Recording Amazon Web Services Resources</a> in the <i>Config Resources Developer Guide</i>.</p>
    #          </important>
    #          <p>Returns a list of configurations items (CIs) for the specified resource.</p>
    #          <p>
    #             <b>Contents</b>
    #          </p>
    #          <p>The list contains details about each state of the resource
    # 			during the specified time interval. If you specified a retention
    # 			period to retain your CIs between a
    # 			minimum of 30 days and a maximum of 7 years (2557 days), Config
    # 			returns the CIs for the specified
    # 			retention period. </p>
    #          <p>
    #             <b>Pagination</b>
    #          </p>
    #          <p>The response is paginated. By default, Config returns a
    # 			limit of 10 configuration items per page. You can customize this
    # 			number with the <code>limit</code> parameter. The response includes
    # 			a <code>nextToken</code> string. To get the next page of results,
    # 			run the request again and specify the string for the
    # 				<code>nextToken</code> parameter.</p>
    #          <note>
    #             <p>Each call to the API is limited to span a duration of seven
    # 				days. It is likely that the number of records returned is
    # 				smaller than the specified <code>limit</code>. In such cases,
    # 				you can make another call, using the
    # 				<code>nextToken</code>.</p>
    #          </note>
    # @param [Hash, Types::GetResourceConfigHistoryRequest] params
    # @option params [String] :resource_type
    #   <p>The resource type.</p>
    # @option params [String] :resource_id
    #   <p>The ID of the resource (for example.,
    #   			<code>sg-xxxxxx</code>).</p>
    # @option params [Time] :later_time
    #   <p>The chronologically latest time in the time range for which the history requested. If not specified,
    #   			current time is taken.</p>
    # @option params [Time] :earlier_time
    #   <p>The chronologically earliest time in the time range for which the history requested. If not
    #   			specified, the action returns paginated results that contain
    #   			configuration items that start when the first configuration item was
    #   			recorded.</p>
    # @option params [String] :chronological_order
    #   <p>The chronological order for configuration items listed. By
    #   			default, the results are listed in reverse chronological
    #   			order.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of configuration items returned on each
    #   			page. The default is 10. You cannot specify a number greater than
    #   			100. If you specify 0, Config uses the default.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"], # required
    #     resource_id: "ResourceId", # required
    #     later_time: Time.now,
    #     earlier_time: Time.now,
    #     chronological_order: "Reverse" # One of: ["Reverse", "Forward"],
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_resource_config_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_items: [
    #       {
    #         version: "Version",
    #         account_id: "AccountId",
    #         configuration_item_capture_time: Time.now,
    #         configuration_item_status: "OK" # One of: ["OK", "ResourceDiscovered", "ResourceNotRecorded", "ResourceDeleted", "ResourceDeletedNotRecorded"],
    #         configuration_state_id: "ConfigurationStateId",
    #         configuration_item_md5_hash: "ConfigurationItemMD5Hash",
    #         arn: "ARN",
    #         resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"],
    #         resource_id: "ResourceId",
    #         resource_name: "ResourceName",
    #         aws_region: "AwsRegion",
    #         availability_zone: "AvailabilityZone",
    #         resource_creation_time: Time.now,
    #         tags: {
    #           "Name" => "Value"
    #         },
    #         related_events: ["RelatedEvent"],
    #         relationships: [
    #           {
    #             resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"],
    #             resource_id: "ResourceId",
    #             resource_name: "ResourceName",
    #             relationship_name: "RelationshipName"
    #           }
    #         ],
    #         configuration: "Configuration",
    #         supplementary_configuration: {
    #           "SupplementaryConfigurationName" => "SupplementaryConfigurationValue"
    #         },
    #         recording_frequency: "CONTINUOUS" # One of: ["CONTINUOUS", "DAILY"],
    #         configuration_item_delivery_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetResourceConfigHistoryResponse]
    def get_resource_config_history(params = {}, options = {})
      request = build_request(:get_resource_config_history, params)
      request.send_request(options)
    end

    # <p>Returns a summary of resource evaluation for the specified resource evaluation ID from the proactive rules that were run. 
    # 			The results indicate which evaluation context was used to evaluate the rules, which resource details were evaluated,
    # 			the evaluation mode that was run, and whether the resource details comply with the configuration of the proactive rules. </p>
    #          <note>
    #             <p>To see additional information about the evaluation result, such as which rule flagged a resource as NON_COMPLIANT, use the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_GetComplianceDetailsByResource.html">GetComplianceDetailsByResource</a> API.
    # 			For more information, see the  <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_GetResourceEvaluationSummary.html#API_GetResourceEvaluationSummary_Examples">Examples</a> section.</p>
    #          </note>
    # @param [Hash, Types::GetResourceEvaluationSummaryRequest] params
    # @option params [String] :resource_evaluation_id
    #   <p>The unique <code>ResourceEvaluationId</code> of Amazon Web Services resource execution for which you want to retrieve the evaluation summary.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_evaluation_id: "ResourceEvaluationId", # required
    #   }
    #   options = {}
    #   response = client.get_resource_evaluation_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_evaluation_id: "ResourceEvaluationId",
    #     evaluation_mode: "DETECTIVE" # One of: ["DETECTIVE", "PROACTIVE"],
    #     evaluation_status: {
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "SUCCEEDED"], # required
    #       failure_reason: "StringWithCharLimit1024"
    #     },
    #     evaluation_start_timestamp: Time.now,
    #     compliance: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"],
    #     evaluation_context: {
    #       evaluation_context_identifier: "EvaluationContextIdentifier"
    #     },
    #     resource_details: {
    #       resource_id: "BaseResourceId", # required
    #       resource_type: "StringWithCharLimit256", # required
    #       resource_configuration: "ResourceConfiguration", # required
    #       resource_configuration_schema_type: "CFN_RESOURCE_SCHEMA" # One of: ["CFN_RESOURCE_SCHEMA"]
    #     }
    #   }
    # @return [Types::GetResourceEvaluationSummaryResponse]
    def get_resource_evaluation_summary(params = {}, options = {})
      request = build_request(:get_resource_evaluation_summary, params)
      request.send_request(options)
    end

    # <p>Returns the details of a specific stored query.</p>
    # @param [Hash, Types::GetStoredQueryRequest] params
    # @option params [String] :query_name
    #   <p>The name of the query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_name: "QueryName", # required
    #   }
    #   options = {}
    #   response = client.get_stored_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stored_query: {
    #       query_id: "QueryId",
    #       query_arn: "QueryArn",
    #       query_name: "QueryName", # required
    #       description: "QueryDescription",
    #       expression: "QueryExpression"
    #     }
    #   }
    # @return [Types::GetStoredQueryResponse]
    def get_stored_query(params = {}, options = {})
      request = build_request(:get_stored_query, params)
      request.send_request(options)
    end

    # <p>Accepts a resource type and returns a list of resource identifiers that are aggregated for a specific resource type across accounts and regions. 
    # 			A resource identifier includes the resource type, ID, (if available) the custom resource name, source account, and source region. 
    # 			You can narrow the results to include only resources that have specific resource IDs, or a resource name, or source account ID, or source region.</p>
    #          <p>For example, if the input consists of accountID 12345678910 and the region is us-east-1 for resource type <code>AWS::EC2::Instance</code> then the API returns all the EC2 instance identifiers of accountID 12345678910 and region us-east-1.</p>
    # @param [Hash, Types::ListAggregateDiscoveredResourcesRequest] params
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator. </p>
    # @option params [String] :resource_type
    #   <p>The type of resources that you want Config to list in the response.</p>
    # @option params [Types::ResourceFilters] :filters
    #   <p>Filters the results based on the <code>ResourceFilters</code> object.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of resource identifiers returned on each page. You cannot specify a number greater than 100. If you specify 0, Config uses the default.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"], # required
    #     filters: {
    #       account_id: "AccountId",
    #       resource_id: "ResourceId",
    #       resource_name: "ResourceName",
    #       region: "AwsRegion"
    #     },
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_aggregate_discovered_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_identifiers: [
    #       {
    #         source_account_id: "AccountId", # required
    #         source_region: "AwsRegion", # required
    #         resource_id: "ResourceId", # required
    #         resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"], # required
    #         resource_name: "ResourceName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAggregateDiscoveredResourcesResponse]
    def list_aggregate_discovered_resources(params = {}, options = {})
      request = build_request(:list_aggregate_discovered_resources, params)
      request.send_request(options)
    end

    # <p>Returns a list of configuration recorders depending on the filters you specify.</p>
    # @param [Hash, Types::ListConfigurationRecordersRequest] params
    # @option params [Array<Types::ConfigurationRecorderFilter>] :filters
    #   <p>Filters the results based on a list of <code>ConfigurationRecorderFilter</code> objects that you specify.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response.</p>
    # @option params [String] :next_token
    #   <p>The <code>NextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         filter_name: "recordingScope" # One of: ["recordingScope"],
    #         filter_value: ["ConfigurationRecorderFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_configuration_recorders(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_recorder_summaries: [ # required
    #       {
    #         arn: "AmazonResourceName", # required
    #         name: "RecorderName", # required
    #         service_principal: "ServicePrincipal",
    #         recording_scope: "INTERNAL" # One of: ["INTERNAL", "PAID"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConfigurationRecordersResponse]
    def list_configuration_recorders(params = {}, options = {})
      request = build_request(:list_configuration_recorders, params)
      request.send_request(options)
    end

    # <p>Returns a list of conformance pack compliance scores. 
    # 			A compliance score is the percentage of the number of compliant rule-resource combinations in a conformance pack compared to the number of total possible rule-resource combinations in the conformance pack.
    # 			This metric provides you with a high-level view of the compliance state of your conformance packs. You can use it to identify, investigate, and understand
    # 			the level of compliance in your conformance packs.</p>
    #          <note>
    #             <p>Conformance packs with no evaluation results will have a compliance score of <code>INSUFFICIENT_DATA</code>.</p>
    #          </note>
    # @param [Hash, Types::ListConformancePackComplianceScoresRequest] params
    # @option params [Types::ConformancePackComplianceScoresFilters] :filters
    #   <p>Filters the results based on the <code>ConformancePackComplianceScoresFilters</code>.</p>
    # @option params [String] :sort_order
    #   <p>Determines the order in which conformance pack compliance scores are sorted. Either in ascending or descending order.</p>
    #            <p>By default, conformance pack compliance scores are sorted in alphabetical order by name of the conformance pack. Conformance pack compliance scores are sorted in reverse alphabetical order if you enter <code>DESCENDING</code>.</p>
    #            <p>You can sort conformance pack compliance scores by the numerical value of the compliance score by entering <code>SCORE</code> in the <code>SortBy</code> action. When compliance scores are sorted by <code>SCORE</code>, conformance packs with a compliance score of <code>INSUFFICIENT_DATA</code> will be last when sorting by ascending order and first when sorting by descending order.</p>
    # @option params [String] :sort_by
    #   <p>Sorts your conformance pack compliance scores in either ascending or descending order, depending on <code>SortOrder</code>.</p>
    #            <p>By default, conformance pack compliance scores are sorted in alphabetical order by name of the conformance pack.
    #   			Enter <code>SCORE</code>, to sort conformance pack compliance scores by the numerical value of the compliance score.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of conformance pack compliance scores returned on each page.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string in a prior request that you can use to get the paginated response for the next set of conformance pack compliance scores.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       conformance_pack_names: ["ConformancePackName"], # required
    #     },
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     sort_by: "SCORE" # One of: ["SCORE"],
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_conformance_pack_compliance_scores(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     conformance_pack_compliance_scores: [ # required
    #       {
    #         score: "ComplianceScore",
    #         conformance_pack_name: "ConformancePackName",
    #         last_updated_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListConformancePackComplianceScoresResponse]
    def list_conformance_pack_compliance_scores(params = {}, options = {})
      request = build_request(:list_conformance_pack_compliance_scores, params)
      request.send_request(options)
    end

    # <p>Returns a list of resource
    # 			resource identifiers for the specified resource types for the resources of that type. A <i>resource identifier</i>
    # 			includes the resource type, ID, and (if available) the custom
    # 			resource name.</p>
    #          <p>The results consist of resources that Config has
    # 			<i>discovered</i>, including those that Config is not currently
    # 			recording. You can narrow the results to include only resources that
    # 			have specific resource IDs or a resource name.</p>
    #          <note>
    #             <p>You can specify either resource IDs or a resource name, but
    # 				not both, in the same request.</p>
    #          </note>
    #          <important>
    #             <p>
    #                <i>CloudFormation stack recording behavior in Config</i>
    #             </p>
    #             <p>When a CloudFormation stack fails to create (for example, it enters the <code>ROLLBACK_FAILED</code> state), 
    # 				Config does not record a configuration item (CI) for that stack. Configuration items are only recorded for stacks that reach 
    # 				the following states:</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <code>CREATE_COMPLETE</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>UPDATE_COMPLETE</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>UPDATE_ROLLBACK_COMPLETE</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>UPDATE_ROLLBACK_FAILED</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>DELETE_FAILED</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>DELETE_COMPLETE</code>
    #                   </p>
    #                </li>
    #             </ul>
    #             <p>Because no CI is created for a failed stack creation, you won't see configuration history 
    # 				for that stack in Config, even after the stack is deleted. This helps make sure that Config only 
    # 				tracks resources that were successfully provisioned.</p>
    #          </important>
    # @param [Hash, Types::ListDiscoveredResourcesRequest] params
    # @option params [String] :resource_type
    #   <p>The type of resources that you want Config to list in the
    #   			response.</p>
    # @option params [Array<String>] :resource_ids
    #   <p>The IDs of only those resources that you want Config to
    #   			list in the response. If you do not specify this parameter, Config lists all resources of the specified type that it has
    #   			discovered. You can list a minimum of 1 resourceID and a maximum of 20 resourceIds.</p>
    # @option params [String] :resource_name
    #   <p>The custom name of only those resources that you want Config to list in the response. If you do not specify this
    #   			parameter, Config lists all resources of the specified type that
    #   			it has discovered.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of resource identifiers returned on each
    #   			page. The default is 100. You cannot specify a number greater than
    #   			100. If you specify 0, Config uses the default.</p>
    # @option params [Boolean] :include_deleted_resources
    #   <p>Specifies whether Config includes deleted resources in the
    #   			results. By default, deleted resources are not included.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page
    #   			that you use to get the next page of results in a paginated
    #   			response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"], # required
    #     resource_ids: ["ResourceId"],
    #     resource_name: "ResourceName",
    #     limit: 1,
    #     include_deleted_resources: false,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_discovered_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_identifiers: [
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"],
    #         resource_id: "ResourceId",
    #         resource_name: "ResourceName",
    #         resource_deletion_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDiscoveredResourcesResponse]
    def list_discovered_resources(params = {}, options = {})
      request = build_request(:list_discovered_resources, params)
      request.send_request(options)
    end

    # <p>Returns a list of proactive resource evaluations.</p>
    # @param [Hash, Types::ListResourceEvaluationsRequest] params
    # @option params [Types::ResourceEvaluationFilters] :filters
    #   <p>Returns a <code>ResourceEvaluationFilters</code> object.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of evaluations returned on each page. The default is 10. 
    #   			You cannot specify a number greater than 100. If you specify 0, Config uses the default.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       evaluation_mode: "DETECTIVE" # One of: ["DETECTIVE", "PROACTIVE"],
    #       time_window: {
    #         start_time: Time.now,
    #         end_time: Time.now
    #       },
    #       evaluation_context_identifier: "EvaluationContextIdentifier"
    #     },
    #     limit: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_resource_evaluations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_evaluations: [
    #       {
    #         resource_evaluation_id: "ResourceEvaluationId",
    #         evaluation_mode: "DETECTIVE" # One of: ["DETECTIVE", "PROACTIVE"],
    #         evaluation_start_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListResourceEvaluationsResponse]
    def list_resource_evaluations(params = {}, options = {})
      request = build_request(:list_resource_evaluations, params)
      request.send_request(options)
    end

    # <p>Lists the stored queries for a single Amazon Web Services account and a single Amazon Web Services Region. The default is 100. </p>
    # @param [Hash, Types::ListStoredQueriesRequest] params
    # @option params [String] :next_token
    #   <p>The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_stored_queries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stored_query_metadata: [
    #       {
    #         query_id: "QueryId", # required
    #         query_arn: "QueryArn", # required
    #         query_name: "QueryName", # required
    #         description: "QueryDescription"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListStoredQueriesResponse]
    def list_stored_queries(params = {}, options = {})
      request = build_request(:list_stored_queries, params)
      request.send_request(options)
    end

    # <p>List the tags for Config resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. The following resources are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationRecorder</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfigRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OrganizationConfigRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConformancePack</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OrganizationConformancePack</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationAggregator</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AggregationAuthorization</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StoredQuery</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :limit
    #   <p>The maximum number of tags returned on each page. The limit maximum is 50. You cannot specify a number greater than 50. If you specify 0, Config uses the default. </p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Authorizes the aggregator account and region to collect data
    # 			from the source account and region. </p>
    #          <note>
    #             <p>
    #                <b>Tags are added at creation and cannot be updated with this operation</b>
    #             </p>
    #             <p>
    #                <code>PutAggregationAuthorization</code> is an idempotent API. Subsequent requests won’t create a duplicate resource if one was already created. If a following request has different <code>tags</code> values,
    # 			Config will ignore these differences and treat it as an idempotent request of the previous. In this case, <code>tags</code> will not be updated, even if they are different.</p>
    #             <p>Use <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html">TagResource</a> and <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html">UntagResource</a> to update tags after creation.</p>
    #          </note>
    # @param [Hash, Types::PutAggregationAuthorizationRequest] params
    # @option params [String] :authorized_account_id
    #   <p>The 12-digit account ID of the account authorized to aggregate data.</p>
    # @option params [String] :authorized_aws_region
    #   <p>The region authorized to collect aggregated data.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of tag object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authorized_account_id: "AccountId", # required
    #     authorized_aws_region: "AwsRegion", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_aggregation_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aggregation_authorization: {
    #       aggregation_authorization_arn: "String",
    #       authorized_account_id: "AccountId",
    #       authorized_aws_region: "AwsRegion",
    #       creation_time: Time.now
    #     }
    #   }
    # @return [Types::PutAggregationAuthorizationResponse]
    def put_aggregation_authorization(params = {}, options = {})
      request = build_request(:put_aggregation_authorization, params)
      request.send_request(options)
    end

    # <p>Adds or updates an Config rule to evaluate if your
    # 			Amazon Web Services resources comply with your desired configurations. For information on how many Config rules you can have per account, 
    # 			see <a href="https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html">
    #                <b>Service Limits</b>
    #             </a> in the <i>Config Developer Guide</i>.</p>
    #          <p>There are two types of rules: <i>Config Managed Rules</i> and <i>Config Custom Rules</i>.
    # 			You can use <code>PutConfigRule</code> to create both Config Managed Rules and  Config Custom Rules.</p>
    #          <p>Config Managed Rules are predefined,
    # 			customizable rules created by Config. For a list of managed rules, see
    # 			<a href="https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html">List of Config
    # 				Managed Rules</a>. If you are adding an Config managed rule, you must specify the
    # 			rule's identifier for the <code>SourceIdentifier</code> key.</p>
    #          <p>Config Custom Rules are rules that you create from scratch. There are two ways to create Config custom rules: with Lambda functions
    # 			(<a href="https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function"> Lambda Developer Guide</a>) and with Guard (<a href="https://github.com/aws-cloudformation/cloudformation-guard">Guard GitHub
    # 					Repository</a>), a policy-as-code language.
    # 			
    # 			Config custom rules created with Lambda
    # 			are called <i>Config Custom Lambda Rules</i> and Config custom rules created with
    # 			Guard are called <i>Config Custom Policy Rules</i>.</p>
    #          <p>If you are adding a new Config Custom Lambda rule,
    # 			you first need to create an Lambda function that the rule invokes to evaluate
    # 			your resources. When you use <code>PutConfigRule</code> to add a Custom Lambda rule to Config, you must specify the Amazon Resource
    # 			Name (ARN) that Lambda assigns to the function. You specify the ARN
    # 			in the <code>SourceIdentifier</code> key. This key is part of the
    # 			<code>Source</code> object, which is part of the
    # 			<code>ConfigRule</code> object. </p>
    #          <p>For any new Config rule that you add, specify the
    # 				<code>ConfigRuleName</code> in the <code>ConfigRule</code>
    # 			object. Do not specify the <code>ConfigRuleArn</code> or the
    # 			<code>ConfigRuleId</code>. These values are generated by Config for new rules.</p>
    #          <p>If you are updating a rule that you added previously, you can
    # 			specify the rule by <code>ConfigRuleName</code>,
    # 				<code>ConfigRuleId</code>, or <code>ConfigRuleArn</code> in the
    # 				<code>ConfigRule</code> data type that you use in this
    # 			request.</p>
    #          <p>For more information about developing and using Config
    # 			rules, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html">Evaluating Resources with Config Rules</a>
    # 			in the <i>Config Developer Guide</i>.</p>
    #          <note>
    #             <p>
    #                <b>Tags are added at creation and cannot be updated with this operation</b>
    #             </p>
    #             <p>
    #                <code>PutConfigRule</code> is an idempotent API. Subsequent requests won’t create a duplicate resource if one was already created. If a following request has different <code>tags</code> values,
    # 			Config will ignore these differences and treat it as an idempotent request of the previous. In this case, <code>tags</code> will not be updated, even if they are different.</p>
    #             <p>Use <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html">TagResource</a> and <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html">UntagResource</a> to update tags after creation.</p>
    #          </note>
    # @param [Hash, Types::PutConfigRuleRequest] params
    # @option params [Types::ConfigRule] :config_rule
    #   <p>The rule that you want to add to your account.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of tag object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_rule: { # required
    #       config_rule_name: "ConfigRuleName",
    #       config_rule_arn: "StringWithCharLimit256",
    #       config_rule_id: "StringWithCharLimit64",
    #       description: "EmptiableStringWithCharLimit256",
    #       scope: {
    #         compliance_resource_types: ["StringWithCharLimit256"],
    #         tag_key: "StringWithCharLimit128",
    #         tag_value: "StringWithCharLimit256",
    #         compliance_resource_id: "BaseResourceId"
    #       },
    #       source: { # required
    #         owner: "CUSTOM_LAMBDA" # One of: ["CUSTOM_LAMBDA", "AWS", "CUSTOM_POLICY"], # required
    #         source_identifier: "StringWithCharLimit256",
    #         source_details: [
    #           {
    #             event_source: "aws.config" # One of: ["aws.config"],
    #             message_type: "ConfigurationItemChangeNotification" # One of: ["ConfigurationItemChangeNotification", "ConfigurationSnapshotDeliveryCompleted", "ScheduledNotification", "OversizedConfigurationItemChangeNotification"],
    #             maximum_execution_frequency: "One_Hour" # One of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #           }
    #         ],
    #         custom_policy_details: {
    #           policy_runtime: "PolicyRuntime", # required
    #           policy_text: "PolicyText", # required
    #           enable_debug_log_delivery: false
    #         }
    #       },
    #       input_parameters: "StringWithCharLimit1024",
    #       maximum_execution_frequency: "One_Hour" # One of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"],
    #       config_rule_state: "ACTIVE" # One of: ["ACTIVE", "DELETING", "DELETING_RESULTS", "EVALUATING"],
    #       created_by: "StringWithCharLimit256",
    #       evaluation_modes: [
    #         {
    #           mode: "DETECTIVE" # One of: ["DETECTIVE", "PROACTIVE"]
    #         }
    #       ]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_config_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_config_rule(params = {}, options = {})
      request = build_request(:put_config_rule, params)
      request.send_request(options)
    end

    # <p>Creates and updates the configuration aggregator with the
    # 			selected source accounts and regions. The source account can be
    # 			individual account(s) or an organization.</p>
    #          <p>
    #             <code>accountIds</code> that are passed will be replaced with existing accounts.
    # 			If you want to add additional accounts into the aggregator, call <code>DescribeConfigurationAggregators</code> to get the previous accounts and then append new ones.</p>
    #          <note>
    #             <p>Config should be enabled in source accounts and regions
    # 				you want to aggregate.</p>
    #             <p>If your source type is an organization, you must be signed in to the management account or a registered delegated administrator and all the features must be enabled in your organization. 
    # 				If the caller is a management account, Config calls <code>EnableAwsServiceAccess</code> API to enable integration between Config and Organizations.
    # 				If the caller is a registered delegated administrator, Config calls <code>ListDelegatedAdministrators</code> API to verify whether the caller is a valid delegated administrator.</p>
    #             <p>To register a delegated administrator, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/set-up-aggregator-cli.html#register-a-delegated-administrator-cli">Register a Delegated Administrator</a> in the <i>Config developer guide</i>. </p>
    #          </note>
    #          <note>
    #             <p>
    #                <b>Tags are added at creation and cannot be updated with this operation</b>
    #             </p>
    #             <p>
    #                <code>PutConfigurationAggregator</code> is an idempotent API. Subsequent requests won’t create a duplicate resource if one was already created. If a following request has different <code>tags</code> values,
    # 			Config will ignore these differences and treat it as an idempotent request of the previous. In this case, <code>tags</code> will not be updated, even if they are different.</p>
    #             <p>Use <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html">TagResource</a> and <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html">UntagResource</a> to update tags after creation.</p>
    #          </note>
    # @param [Hash, Types::PutConfigurationAggregatorRequest] params
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    # @option params [Array<Types::AccountAggregationSource>] :account_aggregation_sources
    #   <p>A list of AccountAggregationSource object.
    #   			
    #   		</p>
    # @option params [Types::OrganizationAggregationSource] :organization_aggregation_source
    #   <p>An OrganizationAggregationSource object.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of tag object.</p>
    # @option params [Types::AggregatorFilters] :aggregator_filters
    #   <p>An object to filter configuration recorders in an aggregator. Either <code>ResourceType</code> or <code>ServicePrincipal</code> is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     account_aggregation_sources: [
    #       {
    #         account_ids: ["AccountId"], # required
    #         all_aws_regions: false,
    #         aws_regions: ["String"]
    #       }
    #     ],
    #     organization_aggregation_source: {
    #       role_arn: "String", # required
    #       aws_regions: ["String"],
    #       all_aws_regions: false
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     aggregator_filters: {
    #       resource_type: {
    #         type: "INCLUDE" # One of: ["INCLUDE"],
    #         value: ["ResourceTypeValue"]
    #       },
    #       service_principal: {
    #         type: "INCLUDE" # One of: ["INCLUDE"],
    #         value: ["ServicePrincipalValue"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_configuration_aggregator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_aggregator: {
    #       configuration_aggregator_name: "ConfigurationAggregatorName",
    #       configuration_aggregator_arn: "ConfigurationAggregatorArn",
    #       account_aggregation_sources: [
    #         {
    #           account_ids: ["AccountId"], # required
    #           all_aws_regions: false,
    #           aws_regions: ["String"]
    #         }
    #       ],
    #       organization_aggregation_source: {
    #         role_arn: "String", # required
    #         aws_regions: ["String"],
    #         all_aws_regions: false
    #       },
    #       creation_time: Time.now,
    #       last_updated_time: Time.now,
    #       created_by: "StringWithCharLimit256",
    #       aggregator_filters: {
    #         resource_type: {
    #           type: "INCLUDE" # One of: ["INCLUDE"],
    #           value: ["ResourceTypeValue"]
    #         },
    #         service_principal: {
    #           type: "INCLUDE" # One of: ["INCLUDE"],
    #           value: ["ServicePrincipalValue"]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::PutConfigurationAggregatorResponse]
    def put_configuration_aggregator(params = {}, options = {})
      request = build_request(:put_configuration_aggregator, params)
      request.send_request(options)
    end

    # <p>Creates or updates the customer managed configuration recorder.</p>
    #          <p>You can use this operation to create a new customer managed configuration recorder or to update the <code>roleARN</code> and the <code>recordingGroup</code> for an existing customer managed configuration recorder.</p>
    #          <p>To start the customer managed configuration recorder and begin recording configuration changes for the resource types you specify,
    # 			use the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_StartConfigurationRecorder.html">StartConfigurationRecorder</a> operation.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html">
    #                <b>Working with the Configuration Recorder</b>
    #             </a> in the <i>Config Developer Guide</i>.</p>
    #          <note>
    #             <p>
    #                <b>One customer managed configuration recorder per account per Region</b>
    #             </p>
    #             <p>You can create only one customer managed configuration recorder for each account for each Amazon Web Services Region.</p>
    #             <p>
    #                <b>Default is to record all supported resource types, excluding the global IAM resource types</b>
    #             </p>
    #             <p>If you have not specified values for the <code>recordingGroup</code> field, the default for the customer managed configuration recorder is to record all supported resource
    # 				types, excluding the global IAM resource types: <code>AWS::IAM::Group</code>, <code>AWS::IAM::Policy</code>, <code>AWS::IAM::Role</code>, and <code>AWS::IAM::User</code>.</p>
    #             <p>
    #                <b>Tags are added at creation and cannot be updated</b>
    #             </p>
    #             <p>
    #                <code>PutConfigurationRecorder</code> is an idempotent API. Subsequent requests won’t create a duplicate resource if one was already created. If a following request has different tags values,
    # 				Config will ignore these differences and treat it as an idempotent request of the previous. In this case, tags will not be updated, even if they are different.</p>
    #             <p>Use <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html">TagResource</a> and <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html">UntagResource</a> to update tags after creation.</p>
    #          </note>
    # @param [Hash, Types::PutConfigurationRecorderRequest] params
    # @option params [Types::ConfigurationRecorder] :configuration_recorder
    #   <p>An object for the configuration recorder. A configuration recorder records configuration changes for the resource types in scope.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags for the customer managed configuration recorder. Each tag consists of a key and an optional value, both of which you define.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_recorder: { # required
    #       arn: "AmazonResourceName",
    #       name: "RecorderName",
    #       role_arn: "String",
    #       recording_group: {
    #         all_supported: false,
    #         include_global_resource_types: false,
    #         resource_types: ["AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"]],
    #         exclusion_by_resource_types: {
    #           resource_types: ["AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"]]
    #         },
    #         recording_strategy: {
    #           use_only: "ALL_SUPPORTED_RESOURCE_TYPES" # One of: ["ALL_SUPPORTED_RESOURCE_TYPES", "INCLUSION_BY_RESOURCE_TYPES", "EXCLUSION_BY_RESOURCE_TYPES"]
    #         }
    #       },
    #       recording_mode: {
    #         recording_frequency: "CONTINUOUS" # One of: ["CONTINUOUS", "DAILY"], # required
    #         recording_mode_overrides: [
    #           {
    #             description: "Description",
    #             resource_types: ["AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"]], # required
    #             recording_frequency: "CONTINUOUS" # One of: ["CONTINUOUS", "DAILY"], # required
    #           }
    #         ]
    #       },
    #       recording_scope: "INTERNAL" # One of: ["INTERNAL", "PAID"],
    #       service_principal: "ServicePrincipal"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_configuration_recorder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_configuration_recorder(params = {}, options = {})
      request = build_request(:put_configuration_recorder, params)
      request.send_request(options)
    end

    # <p>Creates or updates a conformance pack. A conformance pack is a collection of Config rules that can be easily deployed in an account and a region and across an organization.
    # 			For information on how many conformance packs you can have per account, 
    # 			see <a href="https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html">
    #                <b>Service Limits</b>
    #             </a> in the <i>Config Developer Guide</i>.</p>
    #          <important>
    #             <p>When you use <code>PutConformancePack</code> to deploy conformance packs in your account,
    # 				the operation can create Config rules and remediation actions without
    # 				requiring <code>config:PutConfigRule</code> or
    # 					<code>config:PutRemediationConfigurations</code> permissions in your account IAM
    # 				policies.</p>
    #             <p>This API uses the <code>AWSServiceRoleForConfigConforms</code> service-linked role in your
    # 				account to create conformance pack resources. This service-linked role includes the
    # 				permissions to create Config rules and remediation configurations, even
    # 				if your account IAM policies explicitly deny these actions.</p>
    #          </important>
    #          <p>This API creates a service-linked role <code>AWSServiceRoleForConfigConforms</code> in your account. 
    # 		The service-linked role is created only when the role does not exist in your account. </p>
    #          <note>
    #             <p>You must specify only one of the follow parameters: <code>TemplateS3Uri</code>, <code>TemplateBody</code> or <code>TemplateSSMDocumentDetails</code>.</p>
    #          </note>
    # @param [Hash, Types::PutConformancePackRequest] params
    # @option params [String] :conformance_pack_name
    #   <p>The unique name of the conformance pack you want to deploy.</p>
    # @option params [String] :template_s3_uri
    #   <p>The location of the file containing the template body (<code>s3://bucketname/prefix</code>). The uri must point to a conformance pack template (max size: 300 KB) that is located in an Amazon S3 bucket in the same Region as the conformance pack. </p>
    #            <note>
    #               <p>You must have access to read Amazon S3 bucket.
    #   			In addition, in order to ensure a successful deployment, the template object must not be in an <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-class-intro.html">archived storage class</a> if this parameter is passed.</p>
    #            </note>
    # @option params [String] :template_body
    #   <p>A string that contains the full conformance pack template body. The structure containing the template body has a minimum length of 1 byte and a maximum length of 51,200 bytes.</p>
    #            <note>
    #               <p>You can use a YAML template with two resource types: Config rule (<code>AWS::Config::ConfigRule</code>) and remediation action (<code>AWS::Config::RemediationConfiguration</code>).</p>
    #            </note>
    # @option params [String] :delivery_s3_bucket
    #   <p>The name of the Amazon S3 bucket where Config stores conformance pack templates.</p>
    #            <note>
    #               <p>This field is optional.</p>
    #            </note>
    # @option params [String] :delivery_s3_key_prefix
    #   <p>The prefix for the Amazon S3 bucket. </p>
    #            <note>
    #               <p>This field is optional.</p>
    #            </note>
    # @option params [Array<Types::ConformancePackInputParameter>] :conformance_pack_input_parameters
    #   <p>A list of <code>ConformancePackInputParameter</code> objects.</p>
    # @option params [Types::TemplateSSMDocumentDetails] :template_ssm_document_details
    #   <p>An object of type <code>TemplateSSMDocumentDetails</code>, which contains the name or the Amazon Resource Name (ARN) of the Amazon Web Services Systems Manager document (SSM document) and the version of the SSM document that is used to create a conformance pack.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     conformance_pack_name: "ConformancePackName", # required
    #     template_s3_uri: "TemplateS3Uri",
    #     template_body: "TemplateBody",
    #     delivery_s3_bucket: "DeliveryS3Bucket",
    #     delivery_s3_key_prefix: "DeliveryS3KeyPrefix",
    #     conformance_pack_input_parameters: [
    #       {
    #         parameter_name: "ParameterName", # required
    #         parameter_value: "ParameterValue", # required
    #       }
    #     ],
    #     template_ssm_document_details: {
    #       document_name: "SSMDocumentName", # required
    #       document_version: "SSMDocumentVersion"
    #     }
    #   }
    #   options = {}
    #   response = client.put_conformance_pack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     conformance_pack_arn: "ConformancePackArn"
    #   }
    # @return [Types::PutConformancePackResponse]
    def put_conformance_pack(params = {}, options = {})
      request = build_request(:put_conformance_pack, params)
      request.send_request(options)
    end

    # <p>Creates or updates a delivery channel to deliver configuration
    # 			information and other compliance information.</p>
    #          <p>You can use this operation to create a new delivery channel or to update the Amazon S3 bucket and the
    # 			Amazon SNS topic of an existing delivery channel.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/manage-delivery-channel.html">
    #                <b>Working with the Delivery Channel</b>
    #             </a> in the <i>Config Developer Guide.</i>
    #          </p>
    #          <note>
    #             <p>
    #                <b>One delivery channel per account per Region</b>
    #             </p>
    #             <p>You can have only one delivery channel for each account for each Amazon Web Services Region.</p>
    #          </note>
    # @param [Hash, Types::PutDeliveryChannelRequest] params
    # @option params [Types::DeliveryChannel] :delivery_channel
    #   <p>An object for the delivery channel. A delivery channel sends notifications and updated configuration states.
    #   		</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_channel: { # required
    #       name: "ChannelName",
    #       s3_bucket_name: "String",
    #       s3_key_prefix: "String",
    #       s3_kms_key_arn: "String",
    #       sns_topic_arn: "String",
    #       config_snapshot_delivery_properties: {
    #         delivery_frequency: "One_Hour" # One of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_delivery_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_delivery_channel(params = {}, options = {})
      request = build_request(:put_delivery_channel, params)
      request.send_request(options)
    end

    # <p>Used by an Lambda function to deliver evaluation results to
    # 			Config. This operation is required in every Lambda function
    # 			that is invoked by an Config rule.</p>
    # @param [Hash, Types::PutEvaluationsRequest] params
    # @option params [Array<Types::Evaluation>] :evaluations
    #   <p>The assessments that the Lambda function performs. Each
    #   			evaluation identifies an Amazon Web Services resource and indicates whether it
    #   			complies with the Config rule that invokes the Lambda
    #   			function.</p>
    # @option params [String] :result_token
    #   <p>An encrypted token that associates an evaluation with an Config rule. Identifies the rule and the event that triggered the
    #   			evaluation.</p>
    # @option params [Boolean] :test_mode
    #   <p>Use this parameter to specify a test run for
    #   			<code>PutEvaluations</code>. You can verify whether your Lambda function will deliver evaluation results to Config. No
    #   			updates occur to your existing evaluations, and evaluation results
    #   			are not sent to Config.</p>
    #            <note>
    #               <p>When <code>TestMode</code> is <code>true</code>,
    #   					<code>PutEvaluations</code> doesn't require a valid value
    #   				for the <code>ResultToken</code> parameter, but the value cannot
    #   				be null.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     evaluations: [
    #       {
    #         compliance_resource_type: "StringWithCharLimit256", # required
    #         compliance_resource_id: "BaseResourceId", # required
    #         compliance_type: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"], # required
    #         annotation: "StringWithCharLimit256",
    #         ordering_timestamp: Time.now, # required
    #       }
    #     ],
    #     result_token: "String", # required
    #     test_mode: false
    #   }
    #   options = {}
    #   response = client.put_evaluations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_evaluations: [
    #       {
    #         compliance_resource_type: "StringWithCharLimit256", # required
    #         compliance_resource_id: "BaseResourceId", # required
    #         compliance_type: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"], # required
    #         annotation: "StringWithCharLimit256",
    #         ordering_timestamp: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::PutEvaluationsResponse]
    def put_evaluations(params = {}, options = {})
      request = build_request(:put_evaluations, params)
      request.send_request(options)
    end

    # <p>Add or updates the evaluations for process checks.		
    # 			This API checks if the rule is a process check when the name of the Config rule is provided.</p>
    # @param [Hash, Types::PutExternalEvaluationRequest] params
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule.</p>
    # @option params [Types::ExternalEvaluation] :external_evaluation
    #   <p>An <code>ExternalEvaluation</code> object that provides details about compliance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_rule_name: "ConfigRuleName", # required
    #     external_evaluation: { # required
    #       compliance_resource_type: "StringWithCharLimit256", # required
    #       compliance_resource_id: "BaseResourceId", # required
    #       compliance_type: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE", "INSUFFICIENT_DATA"], # required
    #       annotation: "StringWithCharLimit256",
    #       ordering_timestamp: Time.now, # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_external_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutExternalEvaluationResponse]
    def put_external_evaluation(params = {}, options = {})
      request = build_request(:put_external_evaluation, params)
      request.send_request(options)
    end

    # <p>Adds or updates an Config rule for your entire organization to evaluate if your Amazon Web Services resources comply with your 
    # 			desired configurations. For information on how many organization Config rules you can have per account, 
    # 			see <a href="https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html">
    #                <b>Service Limits</b>
    #             </a> in the <i>Config Developer Guide</i>.</p>
    #          <p> Only a management account and a delegated administrator can create or update an organization Config rule.
    # 		When calling this API with a delegated administrator, you must ensure Organizations 
    # 		<code>ListDelegatedAdministrator</code> permissions are added. An organization can have up to 3 delegated administrators.</p>
    #          <p>This API enables organization service access through the <code>EnableAWSServiceAccess</code> action and creates a service-linked 
    # 			role <code>AWSServiceRoleForConfigMultiAccountSetup</code> in the management or delegated administrator account of your organization. 
    # 			The service-linked role is created only when the role does not exist in the caller account. 
    # 			Config verifies the existence of role with <code>GetRole</code> action.</p>
    #          <p>To use this API with delegated administrator, register a delegated administrator by calling Amazon Web Services Organization
    # 			<code>register-delegated-administrator</code> for <code>config-multiaccountsetup.amazonaws.com</code>. </p>
    #          <p>There are two types of rules: <i>Config Managed Rules</i> and <i>Config Custom Rules</i>. 
    # 			You can use <code>PutOrganizationConfigRule</code> to create both Config Managed Rules and Config Custom Rules.</p>
    #          <p>Config Managed Rules are predefined,
    # 			customizable rules created by Config. For a list of managed rules, see
    # 			<a href="https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html">List of Config
    # 				Managed Rules</a>. If you are adding an Config managed rule, you must specify the rule's identifier for the <code>RuleIdentifier</code> key.</p>
    #          <p>Config Custom Rules are rules that you create from scratch. There are two ways to create Config custom rules: with Lambda functions
    # 			(<a href="https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function"> Lambda Developer Guide</a>) and with Guard (<a href="https://github.com/aws-cloudformation/cloudformation-guard">Guard GitHub
    # 					Repository</a>), a policy-as-code language.
    # 			
    # 			Config custom rules created with Lambda
    # 			are called <i>Config Custom Lambda Rules</i> and Config custom rules created with
    # 			Guard are called <i>Config Custom Policy Rules</i>.</p>
    #          <p>If you are adding a new Config Custom Lambda rule, you first need to create an Lambda function in the management account or a delegated 
    # 		administrator that the rule invokes to evaluate your resources. You also need to create an IAM role in the managed account that can be assumed by the Lambda function.
    # 		When you use <code>PutOrganizationConfigRule</code> to add a Custom Lambda rule to Config, you must 
    # 			specify the Amazon Resource Name (ARN) that Lambda assigns to the function.</p>
    #          <note>
    #             <p>Prerequisite: Ensure you call <code>EnableAllFeatures</code> API to enable all features in an organization.</p>
    #             <p>Make sure to specify one of either <code>OrganizationCustomPolicyRuleMetadata</code> for Custom Policy rules, <code>OrganizationCustomRuleMetadata</code> for Custom Lambda rules, or <code>OrganizationManagedRuleMetadata</code> for managed rules.</p>
    #          </note>
    # @param [Hash, Types::PutOrganizationConfigRuleRequest] params
    # @option params [String] :organization_config_rule_name
    #   <p>The name that you assign to an organization Config rule.</p>
    # @option params [Types::OrganizationManagedRuleMetadata] :organization_managed_rule_metadata
    #   <p>An <code>OrganizationManagedRuleMetadata</code> object. This object specifies organization
    #   			managed rule metadata such as resource type and ID of Amazon Web Services resource along with the rule identifier.
    #   			It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.</p>
    # @option params [Types::OrganizationCustomRuleMetadata] :organization_custom_rule_metadata
    #   <p>An <code>OrganizationCustomRuleMetadata</code> object. This object specifies organization custom rule metadata such as resource type,
    #   			resource ID of Amazon Web Services resource, Lambda function ARN, and organization trigger types that trigger Config to evaluate your Amazon Web Services resources against a rule.
    #   			It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.</p>
    # @option params [Array<String>] :excluded_accounts
    #   <p>A comma-separated list of accounts that you want to exclude from an organization Config rule.</p>
    # @option params [Types::OrganizationCustomPolicyRuleMetadata] :organization_custom_policy_rule_metadata
    #   <p>An <code>OrganizationCustomPolicyRuleMetadata</code> object. This object specifies metadata for your organization's Config Custom Policy rule. The metadata includes the runtime system in use, which accounts have debug
    #   			logging enabled, and other custom rule metadata, such as resource type, resource ID of
    #   			Amazon Web Services resource, and organization trigger types that initiate Config to evaluate Amazon Web Services resources against a rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_config_rule_name: "OrganizationConfigRuleName", # required
    #     organization_managed_rule_metadata: {
    #       description: "StringWithCharLimit256Min0",
    #       rule_identifier: "StringWithCharLimit256", # required
    #       input_parameters: "StringWithCharLimit2048",
    #       maximum_execution_frequency: "One_Hour" # One of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"],
    #       resource_types_scope: ["StringWithCharLimit256"],
    #       resource_id_scope: "StringWithCharLimit768",
    #       tag_key_scope: "StringWithCharLimit128",
    #       tag_value_scope: "StringWithCharLimit256"
    #     },
    #     organization_custom_rule_metadata: {
    #       description: "StringWithCharLimit256Min0",
    #       lambda_function_arn: "StringWithCharLimit256", # required
    #       organization_config_rule_trigger_types: ["ConfigurationItemChangeNotification" # One of: ["ConfigurationItemChangeNotification", "OversizedConfigurationItemChangeNotification", "ScheduledNotification"]], # required
    #       input_parameters: "StringWithCharLimit2048",
    #       maximum_execution_frequency: "One_Hour" # One of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"],
    #       resource_types_scope: ["StringWithCharLimit256"],
    #       resource_id_scope: "StringWithCharLimit768",
    #       tag_key_scope: "StringWithCharLimit128",
    #       tag_value_scope: "StringWithCharLimit256"
    #     },
    #     excluded_accounts: ["AccountId"],
    #     organization_custom_policy_rule_metadata: {
    #       description: "StringWithCharLimit256Min0",
    #       organization_config_rule_trigger_types: ["ConfigurationItemChangeNotification" # One of: ["ConfigurationItemChangeNotification", "OversizedConfigurationItemChangeNotification"]],
    #       input_parameters: "StringWithCharLimit2048",
    #       maximum_execution_frequency: "One_Hour" # One of: ["One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours", "TwentyFour_Hours"],
    #       resource_types_scope: ["StringWithCharLimit256"],
    #       resource_id_scope: "StringWithCharLimit768",
    #       tag_key_scope: "StringWithCharLimit128",
    #       tag_value_scope: "StringWithCharLimit256",
    #       policy_runtime: "PolicyRuntime", # required
    #       policy_text: "PolicyText", # required
    #       debug_log_delivery_accounts: ["AccountId"]
    #     }
    #   }
    #   options = {}
    #   response = client.put_organization_config_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_config_rule_arn: "StringWithCharLimit256"
    #   }
    # @return [Types::PutOrganizationConfigRuleResponse]
    def put_organization_config_rule(params = {}, options = {})
      request = build_request(:put_organization_config_rule, params)
      request.send_request(options)
    end

    # <p>Deploys conformance packs across member accounts in an Amazon Web Services Organization. For information on how many organization conformance packs and how many Config rules you can have per account, 
    # 			see <a href="https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html">
    #                <b>Service Limits</b>
    #             </a> in the <i>Config Developer Guide</i>.</p>
    #          <p>Only a management account and a delegated administrator can call this API. 
    # 			When calling this API with a delegated administrator, you must ensure Organizations 
    # 			<code>ListDelegatedAdministrator</code> permissions are added. An organization can have up to 3 delegated administrators.</p>
    #          <important>
    #             <p>When you use <code>PutOrganizationConformancePack</code> to deploy conformance packs across
    # 				member accounts, the operation can create Config rules and remediation
    # 				actions without requiring <code>config:PutConfigRule</code> or
    # 					<code>config:PutRemediationConfigurations</code> permissions in member account
    # 				IAM policies.</p>
    #             <p>This API uses the <code>AWSServiceRoleForConfigConforms</code> service-linked role in each
    # 				member account to create conformance pack resources. This service-linked role
    # 				includes the permissions to create Config rules and remediation
    # 				configurations, even if member account IAM policies explicitly deny these
    # 				actions.</p>
    #          </important>
    #          <p>This API enables organization service access for <code>config-multiaccountsetup.amazonaws.com</code>
    # 			through the <code>EnableAWSServiceAccess</code> action and creates a 
    # 			service-linked role <code>AWSServiceRoleForConfigMultiAccountSetup</code> in the management or delegated administrator account of your organization. 
    # 			The service-linked role is created only when the role does not exist in the caller account. 
    # 			To use this API with delegated administrator, register a delegated administrator by calling Amazon Web Services Organization 
    # 			<code>register-delegate-admin</code> for <code>config-multiaccountsetup.amazonaws.com</code>.</p>
    #          <note>
    #             <p>Prerequisite: Ensure you call <code>EnableAllFeatures</code> API to enable all features in an organization.</p>
    #             <p>You must specify either the <code>TemplateS3Uri</code> or the <code>TemplateBody</code> parameter, but not both. 
    # 			If you provide both Config uses the <code>TemplateS3Uri</code> parameter and ignores the <code>TemplateBody</code> parameter.</p>
    #             <p>Config sets the state of a conformance pack to CREATE_IN_PROGRESS and UPDATE_IN_PROGRESS until the conformance pack is created or updated.  
    # 				You cannot update a conformance pack while it is in this state.</p>
    #          </note>
    # @param [Hash, Types::PutOrganizationConformancePackRequest] params
    # @option params [String] :organization_conformance_pack_name
    #   <p>Name of the organization conformance pack you want to create.</p>
    # @option params [String] :template_s3_uri
    #   <p>Location of file containing the template body. The uri must point to the conformance pack template
    #   			(max size: 300 KB).</p>
    #            <note>
    #               <p>You must have access to read Amazon S3 bucket.
    #   			In addition, in order to ensure a successful deployment, the template object must not be in an <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-class-intro.html">archived storage class</a> if this parameter is passed.</p>
    #            </note>
    # @option params [String] :template_body
    #   <p>A string that contains the full conformance pack template body. Structure containing the template body
    #   			with a minimum length of 1 byte and a maximum length of 51,200 bytes.</p>
    # @option params [String] :delivery_s3_bucket
    #   <p>The name of the Amazon S3 bucket where Config stores conformance pack templates.</p>
    #            <note>
    #               <p>This field is optional. If used, it must be prefixed with <code>awsconfigconforms</code>.</p>
    #            </note>
    # @option params [String] :delivery_s3_key_prefix
    #   <p>The prefix for the Amazon S3 bucket.</p>
    #            <note>
    #               <p>This field is optional.</p>
    #            </note>
    # @option params [Array<Types::ConformancePackInputParameter>] :conformance_pack_input_parameters
    #   <p>A list of <code>ConformancePackInputParameter</code> objects.</p>
    # @option params [Array<String>] :excluded_accounts
    #   <p>A list of Amazon Web Services accounts to be excluded from an organization conformance pack while deploying a conformance pack.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_conformance_pack_name: "OrganizationConformancePackName", # required
    #     template_s3_uri: "TemplateS3Uri",
    #     template_body: "TemplateBody",
    #     delivery_s3_bucket: "DeliveryS3Bucket",
    #     delivery_s3_key_prefix: "DeliveryS3KeyPrefix",
    #     conformance_pack_input_parameters: [
    #       {
    #         parameter_name: "ParameterName", # required
    #         parameter_value: "ParameterValue", # required
    #       }
    #     ],
    #     excluded_accounts: ["AccountId"]
    #   }
    #   options = {}
    #   response = client.put_organization_conformance_pack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_conformance_pack_arn: "StringWithCharLimit256"
    #   }
    # @return [Types::PutOrganizationConformancePackResponse]
    def put_organization_conformance_pack(params = {}, options = {})
      request = build_request(:put_organization_conformance_pack, params)
      request.send_request(options)
    end

    # <p>Adds or updates the remediation configuration with a specific Config rule with the 
    # 			selected target or action. 
    # 			The API creates the <code>RemediationConfiguration</code> object for the Config rule. 
    # 		The Config rule must already exist for you to add a remediation configuration. 
    # 		The target (SSM document) must exist and have permissions to use the target. </p>
    #          <note>
    #             <p>
    #                <b>Be aware of backward incompatible changes</b>
    #             </p>
    #             <p>If you make backward incompatible changes to the SSM document, 
    # 			you must call this again to ensure the remediations can run.</p>
    #             <p>This API does not support adding remediation configurations for service-linked Config Rules such as Organization Config rules, 
    # 				the rules deployed by conformance packs, and rules deployed by Amazon Web Services Security Hub.</p>
    #          </note>
    #          <note>
    #             <p>
    #                <b>Required fields</b>
    #             </p>
    #             <p>For manual remediation configuration, you need to provide a value for <code>automationAssumeRole</code> or use a value in the <code>assumeRole</code>field  to remediate your resources. The SSM automation document can use either as long as it maps to a valid parameter.</p>
    #             <p>However, for automatic remediation configuration, the only valid <code>assumeRole</code> field value is <code>AutomationAssumeRole</code> and you need to provide a value for <code>AutomationAssumeRole</code> to remediate your resources.</p>
    #          </note>
    #          <note>
    #             <p>
    #                <b>Auto remediation can be initiated even for compliant resources</b>
    #             </p>
    #             <p>If you enable auto remediation for a specific Config rule using the <a href="https://docs.aws.amazon.com/config/latest/APIReference/emAPI_PutRemediationConfigurations.html">PutRemediationConfigurations</a> API or the Config console,
    # 				it initiates the remediation process for all non-compliant resources for that specific rule.
    # 				The auto remediation process relies on the compliance data snapshot which is captured on a periodic basis.
    # 				Any non-compliant resource that is updated between the snapshot schedule will continue to be remediated based on the last known compliance data snapshot.</p>
    #             <p>This means that in some cases auto remediation can be initiated even for compliant resources, since the bootstrap processor uses a database that can have stale evaluation results based on the last known compliance data snapshot.</p>
    #          </note>
    # @param [Hash, Types::PutRemediationConfigurationsRequest] params
    # @option params [Array<Types::RemediationConfiguration>] :remediation_configurations
    #   <p>A list of remediation configuration objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     remediation_configurations: [ # required
    #       {
    #         config_rule_name: "ConfigRuleName", # required
    #         target_type: "SSM_DOCUMENT" # One of: ["SSM_DOCUMENT"], # required
    #         target_id: "StringWithCharLimit256", # required
    #         target_version: "String",
    #         parameters: {
    #           "StringWithCharLimit256" => {
    #             resource_value: {
    #               value: "RESOURCE_ID" # One of: ["RESOURCE_ID"], # required
    #             },
    #             static_value: {
    #               values: ["StringWithCharLimit256"], # required
    #             }
    #           }
    #         },
    #         resource_type: "String",
    #         automatic: false,
    #         execution_controls: {
    #           ssm_controls: {
    #             concurrent_execution_rate_percentage: 1,
    #             error_percentage: 1
    #           }
    #         },
    #         maximum_automatic_attempts: 1,
    #         retry_attempt_seconds: 1,
    #         arn: "StringWithCharLimit1024",
    #         created_by_service: "StringWithCharLimit1024"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_remediation_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_batches: [
    #       {
    #         failure_message: "String",
    #         failed_items: [
    #           {
    #             config_rule_name: "ConfigRuleName", # required
    #             target_type: "SSM_DOCUMENT" # One of: ["SSM_DOCUMENT"], # required
    #             target_id: "StringWithCharLimit256", # required
    #             target_version: "String",
    #             parameters: {
    #               "StringWithCharLimit256" => {
    #                 resource_value: {
    #                   value: "RESOURCE_ID" # One of: ["RESOURCE_ID"], # required
    #                 },
    #                 static_value: {
    #                   values: ["StringWithCharLimit256"], # required
    #                 }
    #               }
    #             },
    #             resource_type: "String",
    #             automatic: false,
    #             execution_controls: {
    #               ssm_controls: {
    #                 concurrent_execution_rate_percentage: 1,
    #                 error_percentage: 1
    #               }
    #             },
    #             maximum_automatic_attempts: 1,
    #             retry_attempt_seconds: 1,
    #             arn: "StringWithCharLimit1024",
    #             created_by_service: "StringWithCharLimit1024"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::PutRemediationConfigurationsResponse]
    def put_remediation_configurations(params = {}, options = {})
      request = build_request(:put_remediation_configurations, params)
      request.send_request(options)
    end

    # <p>A remediation exception is when a specified resource is no longer considered for auto-remediation. 
    # 			This API adds a new exception or updates an existing exception for a specified resource with a specified Config rule. </p>
    #          <note>
    #             <p>
    #                <b>Exceptions block auto remediation</b>
    #             </p>
    #             <p>Config generates a remediation exception when a problem occurs running a remediation action for a specified resource. 
    # 			Remediation exceptions blocks auto-remediation until the exception is cleared.</p>
    #          </note>
    #          <note>
    #             <p>
    #                <b>Manual remediation is recommended when placing an exception</b>
    #             </p>
    #             <p>When placing an exception on an Amazon Web Services resource, it is recommended that remediation is set as manual remediation until
    # 			the given Config rule for the specified resource evaluates the resource as <code>NON_COMPLIANT</code>.
    # 			Once the resource has been evaluated as <code>NON_COMPLIANT</code>, you can add remediation exceptions and change the remediation type back from Manual to Auto if you want to use auto-remediation.
    # 			Otherwise, using auto-remediation before a <code>NON_COMPLIANT</code> evaluation result can delete resources before the exception is applied.</p>
    #          </note>
    #          <note>
    #             <p>
    #                <b>Exceptions can only be performed on non-compliant resources</b>
    #             </p>
    #             <p>Placing an exception can only be performed on resources that are <code>NON_COMPLIANT</code>.
    # 			If you use this API for <code>COMPLIANT</code> resources or resources that are <code>NOT_APPLICABLE</code>, a remediation exception will not be generated.
    # 			For more information on the conditions that initiate the possible Config evaluation results,
    # 			see <a href="https://docs.aws.amazon.com/config/latest/developerguide/config-concepts.html#aws-config-rules">Concepts | Config  Rules</a> in the <i>Config Developer Guide</i>.</p>
    #          </note>
    #          <note>
    #             <p>
    #                <b>Exceptions cannot be placed on service-linked remediation actions</b>
    #             </p>
    #             <p>You cannot place an exception on service-linked remediation actions, such as remediation actions put by an organizational conformance pack.</p>
    #          </note>
    #          <note>
    #             <p>
    #                <b>Auto remediation can be initiated even for compliant resources</b>
    #             </p>
    #             <p>If you enable auto remediation for a specific Config rule using the <a href="https://docs.aws.amazon.com/config/latest/APIReference/emAPI_PutRemediationConfigurations.html">PutRemediationConfigurations</a> API or the Config console,
    # 				it initiates the remediation process for all non-compliant resources for that specific rule.
    # 				The auto remediation process relies on the compliance data snapshot which is captured on a periodic basis.
    # 				Any non-compliant resource that is updated between the snapshot schedule will continue to be remediated based on the last known compliance data snapshot.</p>
    #             <p>This means that in some cases auto remediation can be initiated even for compliant resources, since the bootstrap processor uses a database that can have stale evaluation results based on the last known compliance data snapshot.</p>
    #          </note>
    # @param [Hash, Types::PutRemediationExceptionsRequest] params
    # @option params [String] :config_rule_name
    #   <p>The name of the Config rule for which you want to create remediation exception.</p>
    # @option params [Array<Types::RemediationExceptionResourceKey>] :resource_keys
    #   <p>An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys. </p>
    # @option params [String] :message
    #   <p>The message contains an explanation of the exception.</p>
    # @option params [Time] :expiration_time
    #   <p>The exception is automatically deleted after the expiration date.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_rule_name: "ConfigRuleName", # required
    #     resource_keys: [ # required
    #       {
    #         resource_type: "StringWithCharLimit256",
    #         resource_id: "StringWithCharLimit1024"
    #       }
    #     ],
    #     message: "StringWithCharLimit1024",
    #     expiration_time: Time.now
    #   }
    #   options = {}
    #   response = client.put_remediation_exceptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_batches: [
    #       {
    #         failure_message: "String",
    #         failed_items: [
    #           {
    #             config_rule_name: "ConfigRuleName", # required
    #             resource_type: "StringWithCharLimit256", # required
    #             resource_id: "StringWithCharLimit1024", # required
    #             message: "StringWithCharLimit1024",
    #             expiration_time: Time.now
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::PutRemediationExceptionsResponse]
    def put_remediation_exceptions(params = {}, options = {})
      request = build_request(:put_remediation_exceptions, params)
      request.send_request(options)
    end

    # <p>Records the configuration state for the resource provided in the request.
    # 			 
    # 			The configuration state of a resource is represented in Config as Configuration Items. 
    # 			Once this API records the configuration item, you can retrieve the list of configuration items for the custom resource type using existing Config APIs. </p>
    #          <note>
    #             <p>The custom resource type must be registered with CloudFormation. This API accepts the configuration item registered with CloudFormation.</p>
    #             <p>When you call this API, Config only stores configuration state of the resource provided in the request. This API does not change or remediate the configuration of the resource.
    # 				</p>
    #             <p>Write-only schema properites are not recorded as part of the published configuration item.</p>
    #          </note>
    # @param [Hash, Types::PutResourceConfigRequest] params
    # @option params [String] :resource_type
    #   <p>The type of the resource. The custom resource type must be registered with CloudFormation. </p>
    #            <note>
    #               <p>You cannot use the organization names “amzn”, “amazon”, “alexa”, “custom” with custom resource types. It is the first part of the ResourceType up to the first ::.</p>
    #            </note>
    # @option params [String] :schema_version_id
    #   <p>Version of the schema registered for the ResourceType in CloudFormation.</p>
    # @option params [String] :resource_id
    #   <p>Unique identifier of the resource.</p>
    # @option params [String] :resource_name
    #   <p>Name of the resource.</p>
    # @option params [String] :configuration
    #   <p>The configuration object of the resource in valid JSON format. It must match the schema registered with CloudFormation.</p>
    #            <note>
    #               <p>The configuration JSON must not exceed 64 KB.</p>
    #            </note>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags associated with the resource.</p>
    #            <note>
    #               <p>This field is not to be confused with the Amazon Web Services-wide tag feature for Amazon Web Services resources.
    #   			Tags for <code>PutResourceConfig</code> are tags that you supply for the configuration items of your custom resources.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "ResourceTypeString", # required
    #     schema_version_id: "SchemaVersionId", # required
    #     resource_id: "ResourceId", # required
    #     resource_name: "ResourceName",
    #     configuration: "Configuration", # required
    #     tags: {
    #       "Name" => "Value"
    #     }
    #   }
    #   options = {}
    #   response = client.put_resource_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_resource_config(params = {}, options = {})
      request = build_request(:put_resource_config, params)
      request.send_request(options)
    end

    # <p>Creates and updates the retention configuration with details
    # 			about retention period (number of days) that Config stores your
    # 			historical information. The API creates the
    # 				<code>RetentionConfiguration</code> object and names the object
    # 			as <b>default</b>. When you have a
    # 				<code>RetentionConfiguration</code> object named <b>default</b>, calling the API modifies the
    # 			default object. </p>
    #          <note>
    #             <p>Currently, Config supports only one retention
    # 				configuration per region in your account.</p>
    #          </note>
    # @param [Hash, Types::PutRetentionConfigurationRequest] params
    # @option params [Integer] :retention_period_in_days
    #   <p>Number of days Config stores your historical
    #   			information.</p>
    #            <note>
    #               <p>Currently, only applicable to the configuration item
    #   				history.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     retention_period_in_days: 1, # required
    #   }
    #   options = {}
    #   response = client.put_retention_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     retention_configuration: {
    #       name: "RetentionConfigurationName", # required
    #       retention_period_in_days: 1, # required
    #     }
    #   }
    # @return [Types::PutRetentionConfigurationResponse]
    def put_retention_configuration(params = {}, options = {})
      request = build_request(:put_retention_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a service-linked configuration recorder that is linked to a specific Amazon Web Services service based on the <code>ServicePrincipal</code> you specify.</p>
    #          <p>The configuration recorder's <code>name</code>, <code>recordingGroup</code>, <code>recordingMode</code>, and <code>recordingScope</code> is set by the service that is linked to the configuration recorder.</p>
    #          <p>For more information and a list of supported services/service principals, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html">
    #                <b>Working with the Configuration Recorder</b>
    #             </a> in the <i>Config Developer Guide</i>.</p>
    #          <p>This API creates a service-linked role <code>AWSServiceRoleForConfig</code> in your account. The service-linked role is created only when the role does not exist in your account.</p>
    #          <note>
    #             <p>
    #                <b>The recording scope determines if you receive configuration items</b>
    #             </p>
    #             <p>The recording scope is set by the service that is linked to the configuration recorder and determines whether you receive configuration items (CIs) in the delivery channel. If the recording scope is internal, you will not receive CIs in the delivery channel.</p>
    #             <p>
    #                <b>Tags are added at creation and cannot be updated with this operation</b>
    #             </p>
    #             <p>Use <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html">TagResource</a> and <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html">UntagResource</a> to update tags after creation.</p>
    #          </note>
    # @param [Hash, Types::PutServiceLinkedConfigurationRecorderRequest] params
    # @option params [String] :service_principal
    #   <p>The service principal of the Amazon Web Services service for the service-linked configuration recorder that you want to create.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags for a service-linked configuration recorder. Each tag consists of a key and an optional value, both of which you define.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_principal: "ServicePrincipal", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_service_linked_configuration_recorder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "AmazonResourceName",
    #     name: "RecorderName"
    #   }
    # @return [Types::PutServiceLinkedConfigurationRecorderResponse]
    def put_service_linked_configuration_recorder(params = {}, options = {})
      request = build_request(:put_service_linked_configuration_recorder, params)
      request.send_request(options)
    end

    # <p>Saves a new query or updates an existing saved query. The <code>QueryName</code> must be unique for a single Amazon Web Services account and a single Amazon Web Services Region.
    # 			You can create upto 300 queries in a single Amazon Web Services account and a single Amazon Web Services Region.</p>
    #          <note>
    #             <p>
    #                <b>Tags are added at creation and cannot be updated</b>
    #             </p>
    #             <p>
    #                <code>PutStoredQuery</code> is an idempotent API. Subsequent requests won’t create a duplicate resource if one was already created. If a following request has different <code>tags</code> values,
    # 			Config will ignore these differences and treat it as an idempotent request of the previous. In this case, <code>tags</code> will not be updated, even if they are different.</p>
    #          </note>
    # @param [Hash, Types::PutStoredQueryRequest] params
    # @option params [Types::StoredQuery] :stored_query
    #   <p>A list of <code>StoredQuery</code> objects. 
    #   			The mandatory fields are <code>QueryName</code> and <code>Expression</code>.</p>
    #            <note>
    #               <p>When you are creating a query, you must provide a query name and an expression. 
    #   			When you are updating a query, you must provide a query name but updating the description is optional.</p>
    #            </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <code>Tags</code> object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stored_query: { # required
    #       query_id: "QueryId",
    #       query_arn: "QueryArn",
    #       query_name: "QueryName", # required
    #       description: "QueryDescription",
    #       expression: "QueryExpression"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_stored_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_arn: "QueryArn"
    #   }
    # @return [Types::PutStoredQueryResponse]
    def put_stored_query(params = {}, options = {})
      request = build_request(:put_stored_query, params)
      request.send_request(options)
    end

    # <p>Accepts a structured query language (SQL) SELECT command and an aggregator to query configuration state of Amazon Web Services resources across multiple accounts and regions, 
    # 			performs the corresponding search, and returns resource configurations matching the properties.</p>
    #          <p>For more information about query components, see the 
    # 			<a href="https://docs.aws.amazon.com/config/latest/developerguide/query-components.html">
    #                <b>Query Components</b>
    #             </a> section in the <i>Config Developer Guide</i>.</p>
    #          <note>
    #             <p>If you run an aggregation query (i.e., using <code>GROUP BY</code> or using aggregate functions such as <code>COUNT</code>; e.g., <code>SELECT resourceId, COUNT(*) WHERE resourceType = 'AWS::IAM::Role' GROUP BY resourceId</code>)
    # 				and do not specify the <code>MaxResults</code> or the <code>Limit</code> query parameters, the default page size is set to 500.</p>
    #             <p>If you run a non-aggregation query (i.e., not using <code>GROUP BY</code> or aggregate function; e.g., <code>SELECT * WHERE resourceType = 'AWS::IAM::Role'</code>)
    # 				and do not specify the <code>MaxResults</code> or the <code>Limit</code> query parameters, the default page size is set to 25.</p>
    #          </note>
    # @param [Hash, Types::SelectAggregateResourceConfigRequest] params
    # @option params [String] :expression
    #   <p>The SQL query SELECT command. </p>
    # @option params [String] :configuration_aggregator_name
    #   <p>The name of the configuration aggregator.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of query results returned on each page. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of query results returned on each page. Config also allows the Limit request parameter.</p>
    # @option params [String] :next_token
    #   <p>The nextToken string returned in a previous request that you use to request the next page of results in a paginated response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     expression: "Expression", # required
    #     configuration_aggregator_name: "ConfigurationAggregatorName", # required
    #     limit: 1,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.select_aggregate_resource_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: ["String"],
    #     query_info: {
    #       select_fields: [
    #         {
    #           name: "FieldName"
    #         }
    #       ]
    #     },
    #     next_token: "NextToken"
    #   }
    # @return [Types::SelectAggregateResourceConfigResponse]
    def select_aggregate_resource_config(params = {}, options = {})
      request = build_request(:select_aggregate_resource_config, params)
      request.send_request(options)
    end

    # <p>Accepts a structured query language (SQL) <code>SELECT</code> command, performs the corresponding search, and returns resource configurations matching the properties.</p>
    #          <p>For more information about query components, see the 
    # 			<a href="https://docs.aws.amazon.com/config/latest/developerguide/query-components.html">
    #                <b>Query Components</b>
    #             </a> section in the <i>Config Developer Guide</i>.</p>
    # @param [Hash, Types::SelectResourceConfigRequest] params
    # @option params [String] :expression
    #   <p>The SQL query <code>SELECT</code> command.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of query results returned on each page. </p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     expression: "Expression", # required
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.select_resource_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: ["String"],
    #     query_info: {
    #       select_fields: [
    #         {
    #           name: "FieldName"
    #         }
    #       ]
    #     },
    #     next_token: "NextToken"
    #   }
    # @return [Types::SelectResourceConfigResponse]
    def select_resource_config(params = {}, options = {})
      request = build_request(:select_resource_config, params)
      request.send_request(options)
    end

    # <p>Runs an on-demand evaluation for the specified Config rules
    # 			against the last known configuration state of the resources. Use
    # 				<code>StartConfigRulesEvaluation</code> when you want to test
    # 			that a rule you updated is working as expected.
    # 				<code>StartConfigRulesEvaluation</code> does not re-record the
    # 			latest configuration state for your resources. It re-runs an
    # 			evaluation against the last known state of your resources. </p>
    #          <p>You can specify up to 25 Config rules per request. </p>
    #          <p>An existing <code>StartConfigRulesEvaluation</code> call for
    # 			the specified rules must complete before you can call the API again.
    # 			If you chose to have Config stream to an Amazon SNS topic, you
    # 			will receive a <code>ConfigRuleEvaluationStarted</code> notification
    # 			when the evaluation starts.</p>
    #          <note>
    #             <p>You don't need to call the
    # 					<code>StartConfigRulesEvaluation</code> API to run an
    # 				evaluation for a new rule. When you create a rule, Config
    # 				evaluates your resources against the rule automatically.
    # 			</p>
    #          </note>
    #          <p>The <code>StartConfigRulesEvaluation</code> API is useful if
    # 			you want to run on-demand evaluations, such as the following
    # 			example:</p>
    #          <ol>
    #             <li>
    #                <p>You have a custom rule that evaluates your IAM
    # 					resources every 24 hours.</p>
    #             </li>
    #             <li>
    #                <p>You update your Lambda function to add additional
    # 					conditions to your rule.</p>
    #             </li>
    #             <li>
    #                <p>Instead of waiting for the next periodic evaluation,
    # 					you call the <code>StartConfigRulesEvaluation</code>
    # 					API.</p>
    #             </li>
    #             <li>
    #                <p>Config invokes your Lambda function and evaluates
    # 					your IAM resources.</p>
    #             </li>
    #             <li>
    #                <p>Your custom rule will still run periodic evaluations
    # 					every 24 hours.</p>
    #             </li>
    #          </ol>
    # @param [Hash, Types::StartConfigRulesEvaluationRequest] params
    # @option params [Array<String>] :config_rule_names
    #   <p>The list of names of Config rules that you want to run
    #   			evaluations for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_rule_names: ["ConfigRuleName"]
    #   }
    #   options = {}
    #   response = client.start_config_rules_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartConfigRulesEvaluationResponse]
    def start_config_rules_evaluation(params = {}, options = {})
      request = build_request(:start_config_rules_evaluation, params)
      request.send_request(options)
    end

    # <p>Starts the customer managed configuration recorder. The customer managed configuration recorder will begin recording configuration changes for the resource types you specify.</p>
    #          <p>You must have created a delivery channel to
    # 			successfully start the customer managed configuration recorder. You can use the <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutDeliveryChannel.html">PutDeliveryChannel</a> operation to create a delivery channel.</p>
    # @param [Hash, Types::StartConfigurationRecorderRequest] params
    # @option params [String] :configuration_recorder_name
    #   <p>The name of the customer managed configuration recorder that you want to start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_recorder_name: "RecorderName", # required
    #   }
    #   options = {}
    #   response = client.start_configuration_recorder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def start_configuration_recorder(params = {}, options = {})
      request = build_request(:start_configuration_recorder, params)
      request.send_request(options)
    end

    # <p>Runs an on-demand remediation for the specified Config rules against the last known remediation configuration. It runs an execution against the current state of your resources. Remediation execution is asynchronous.</p>
    #          <p>You can specify up to 100 resource keys per request. An existing StartRemediationExecution call for the specified resource keys must complete before you can call the API again.</p>
    # @param [Hash, Types::StartRemediationExecutionRequest] params
    # @option params [String] :config_rule_name
    #   <p>The list of names of Config rules that you want to run remediation execution for.</p>
    # @option params [Array<Types::ResourceKey>] :resource_keys
    #   <p>A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_rule_name: "ConfigRuleName", # required
    #     resource_keys: [ # required
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"], # required
    #         resource_id: "ResourceId", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_remediation_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failure_message: "String",
    #     failed_items: [
    #       {
    #         resource_type: "AWS::EC2::CustomerGateway" # One of: ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::EC2::RegisteredHAInstance", "AWS::EC2::NatGateway", "AWS::EC2::EgressOnlyInternetGateway", "AWS::EC2::VPCEndpoint", "AWS::EC2::VPCEndpointService", "AWS::EC2::FlowLog", "AWS::EC2::VPCPeeringConnection", "AWS::Elasticsearch::Domain", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::DBCluster", "AWS::RDS::DBClusterSnapshot", "AWS::RDS::EventSubscription", "AWS::S3::Bucket", "AWS::S3::AccountPublicAccessBlock", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::SSM::ManagedInstanceInventory", "AWS::CloudWatch::Alarm", "AWS::CloudFormation::Stack", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::AutoScaling::AutoScalingGroup", "AWS::AutoScaling::LaunchConfiguration", "AWS::AutoScaling::ScalingPolicy", "AWS::AutoScaling::ScheduledAction", "AWS::DynamoDB::Table", "AWS::CodeBuild::Project", "AWS::WAF::RateBasedRule", "AWS::WAF::Rule", "AWS::WAF::RuleGroup", "AWS::WAF::WebACL", "AWS::WAFRegional::RateBasedRule", "AWS::WAFRegional::Rule", "AWS::WAFRegional::RuleGroup", "AWS::WAFRegional::WebACL", "AWS::CloudFront::Distribution", "AWS::CloudFront::StreamingDistribution", "AWS::Lambda::Function", "AWS::NetworkFirewall::Firewall", "AWS::NetworkFirewall::FirewallPolicy", "AWS::NetworkFirewall::RuleGroup", "AWS::ElasticBeanstalk::Application", "AWS::ElasticBeanstalk::ApplicationVersion", "AWS::ElasticBeanstalk::Environment", "AWS::WAFv2::WebACL", "AWS::WAFv2::RuleGroup", "AWS::WAFv2::IPSet", "AWS::WAFv2::RegexPatternSet", "AWS::WAFv2::ManagedRuleSet", "AWS::XRay::EncryptionConfig", "AWS::SSM::AssociationCompliance", "AWS::SSM::PatchCompliance", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection", "AWS::Config::ConformancePackCompliance", "AWS::Config::ResourceCompliance", "AWS::ApiGateway::Stage", "AWS::ApiGateway::RestApi", "AWS::ApiGatewayV2::Stage", "AWS::ApiGatewayV2::Api", "AWS::CodePipeline::Pipeline", "AWS::ServiceCatalog::CloudFormationProvisionedProduct", "AWS::ServiceCatalog::CloudFormationProduct", "AWS::ServiceCatalog::Portfolio", "AWS::SQS::Queue", "AWS::KMS::Key", "AWS::QLDB::Ledger", "AWS::SecretsManager::Secret", "AWS::SNS::Topic", "AWS::SSM::FileData", "AWS::Backup::BackupPlan", "AWS::Backup::BackupSelection", "AWS::Backup::BackupVault", "AWS::Backup::RecoveryPoint", "AWS::ECR::Repository", "AWS::ECS::Cluster", "AWS::ECS::Service", "AWS::ECS::TaskDefinition", "AWS::EFS::AccessPoint", "AWS::EFS::FileSystem", "AWS::EKS::Cluster", "AWS::OpenSearch::Domain", "AWS::EC2::TransitGateway", "AWS::Kinesis::Stream", "AWS::Kinesis::StreamConsumer", "AWS::CodeDeploy::Application", "AWS::CodeDeploy::DeploymentConfig", "AWS::CodeDeploy::DeploymentGroup", "AWS::EC2::LaunchTemplate", "AWS::ECR::PublicRepository", "AWS::GuardDuty::Detector", "AWS::EMR::SecurityConfiguration", "AWS::SageMaker::CodeRepository", "AWS::Route53Resolver::ResolverEndpoint", "AWS::Route53Resolver::ResolverRule", "AWS::Route53Resolver::ResolverRuleAssociation", "AWS::DMS::ReplicationSubnetGroup", "AWS::DMS::EventSubscription", "AWS::MSK::Cluster", "AWS::StepFunctions::Activity", "AWS::WorkSpaces::Workspace", "AWS::WorkSpaces::ConnectionAlias", "AWS::SageMaker::Model", "AWS::ElasticLoadBalancingV2::Listener", "AWS::StepFunctions::StateMachine", "AWS::Batch::JobQueue", "AWS::Batch::ComputeEnvironment", "AWS::AccessAnalyzer::Analyzer", "AWS::Athena::WorkGroup", "AWS::Athena::DataCatalog", "AWS::Detective::Graph", "AWS::GlobalAccelerator::Accelerator", "AWS::GlobalAccelerator::EndpointGroup", "AWS::GlobalAccelerator::Listener", "AWS::EC2::TransitGatewayAttachment", "AWS::EC2::TransitGatewayRouteTable", "AWS::DMS::Certificate", "AWS::AppConfig::Application", "AWS::AppSync::GraphQLApi", "AWS::DataSync::LocationSMB", "AWS::DataSync::LocationFSxLustre", "AWS::DataSync::LocationS3", "AWS::DataSync::LocationEFS", "AWS::DataSync::Task", "AWS::DataSync::LocationNFS", "AWS::EC2::NetworkInsightsAccessScopeAnalysis", "AWS::EKS::FargateProfile", "AWS::Glue::Job", "AWS::GuardDuty::ThreatIntelSet", "AWS::GuardDuty::IPSet", "AWS::SageMaker::Workteam", "AWS::SageMaker::NotebookInstanceLifecycleConfig", "AWS::ServiceDiscovery::Service", "AWS::ServiceDiscovery::PublicDnsNamespace", "AWS::SES::ContactList", "AWS::SES::ConfigurationSet", "AWS::Route53::HostedZone", "AWS::IoTEvents::Input", "AWS::IoTEvents::DetectorModel", "AWS::IoTEvents::AlarmModel", "AWS::ServiceDiscovery::HttpNamespace", "AWS::Events::EventBus", "AWS::ImageBuilder::ContainerRecipe", "AWS::ImageBuilder::DistributionConfiguration", "AWS::ImageBuilder::InfrastructureConfiguration", "AWS::DataSync::LocationObjectStorage", "AWS::DataSync::LocationHDFS", "AWS::Glue::Classifier", "AWS::Route53RecoveryReadiness::Cell", "AWS::Route53RecoveryReadiness::ReadinessCheck", "AWS::ECR::RegistryPolicy", "AWS::Backup::ReportPlan", "AWS::Lightsail::Certificate", "AWS::RUM::AppMonitor", "AWS::Events::Endpoint", "AWS::SES::ReceiptRuleSet", "AWS::Events::Archive", "AWS::Events::ApiDestination", "AWS::Lightsail::Disk", "AWS::FIS::ExperimentTemplate", "AWS::DataSync::LocationFSxWindows", "AWS::SES::ReceiptFilter", "AWS::GuardDuty::Filter", "AWS::SES::Template", "AWS::AmazonMQ::Broker", "AWS::AppConfig::Environment", "AWS::AppConfig::ConfigurationProfile", "AWS::Cloud9::EnvironmentEC2", "AWS::EventSchemas::Registry", "AWS::EventSchemas::RegistryPolicy", "AWS::EventSchemas::Discoverer", "AWS::FraudDetector::Label", "AWS::FraudDetector::EntityType", "AWS::FraudDetector::Variable", "AWS::FraudDetector::Outcome", "AWS::IoT::Authorizer", "AWS::IoT::SecurityProfile", "AWS::IoT::RoleAlias", "AWS::IoT::Dimension", "AWS::IoTAnalytics::Datastore", "AWS::Lightsail::Bucket", "AWS::Lightsail::StaticIp", "AWS::MediaPackage::PackagingGroup", "AWS::Route53RecoveryReadiness::RecoveryGroup", "AWS::ResilienceHub::ResiliencyPolicy", "AWS::Transfer::Workflow", "AWS::EKS::IdentityProviderConfig", "AWS::EKS::Addon", "AWS::Glue::MLTransform", "AWS::IoT::Policy", "AWS::IoT::MitigationAction", "AWS::IoTTwinMaker::Workspace", "AWS::IoTTwinMaker::Entity", "AWS::IoTAnalytics::Dataset", "AWS::IoTAnalytics::Pipeline", "AWS::IoTAnalytics::Channel", "AWS::IoTSiteWise::Dashboard", "AWS::IoTSiteWise::Project", "AWS::IoTSiteWise::Portal", "AWS::IoTSiteWise::AssetModel", "AWS::IVS::Channel", "AWS::IVS::RecordingConfiguration", "AWS::IVS::PlaybackKeyPair", "AWS::KinesisAnalyticsV2::Application", "AWS::RDS::GlobalCluster", "AWS::S3::MultiRegionAccessPoint", "AWS::DeviceFarm::TestGridProject", "AWS::Budgets::BudgetsAction", "AWS::Lex::Bot", "AWS::CodeGuruReviewer::RepositoryAssociation", "AWS::IoT::CustomMetric", "AWS::Route53Resolver::FirewallDomainList", "AWS::RoboMaker::RobotApplicationVersion", "AWS::EC2::TrafficMirrorSession", "AWS::IoTSiteWise::Gateway", "AWS::Lex::BotAlias", "AWS::LookoutMetrics::Alert", "AWS::IoT::AccountAuditConfiguration", "AWS::EC2::TrafficMirrorTarget", "AWS::S3::StorageLens", "AWS::IoT::ScheduledAudit", "AWS::Events::Connection", "AWS::EventSchemas::Schema", "AWS::MediaPackage::PackagingConfiguration", "AWS::KinesisVideo::SignalingChannel", "AWS::AppStream::DirectoryConfig", "AWS::LookoutVision::Project", "AWS::Route53RecoveryControl::Cluster", "AWS::Route53RecoveryControl::SafetyRule", "AWS::Route53RecoveryControl::ControlPanel", "AWS::Route53RecoveryControl::RoutingControl", "AWS::Route53RecoveryReadiness::ResourceSet", "AWS::RoboMaker::SimulationApplication", "AWS::RoboMaker::RobotApplication", "AWS::HealthLake::FHIRDatastore", "AWS::Pinpoint::Segment", "AWS::Pinpoint::ApplicationSettings", "AWS::Events::Rule", "AWS::EC2::DHCPOptions", "AWS::EC2::NetworkInsightsPath", "AWS::EC2::TrafficMirrorFilter", "AWS::EC2::IPAM", "AWS::IoTTwinMaker::Scene", "AWS::NetworkManager::TransitGatewayRegistration", "AWS::CustomerProfiles::Domain", "AWS::AutoScaling::WarmPool", "AWS::Connect::PhoneNumber", "AWS::AppConfig::DeploymentStrategy", "AWS::AppFlow::Flow", "AWS::AuditManager::Assessment", "AWS::CloudWatch::MetricStream", "AWS::DeviceFarm::InstanceProfile", "AWS::DeviceFarm::Project", "AWS::EC2::EC2Fleet", "AWS::EC2::SubnetRouteTableAssociation", "AWS::ECR::PullThroughCacheRule", "AWS::GroundStation::Config", "AWS::ImageBuilder::ImagePipeline", "AWS::IoT::FleetMetric", "AWS::IoTWireless::ServiceProfile", "AWS::NetworkManager::Device", "AWS::NetworkManager::GlobalNetwork", "AWS::NetworkManager::Link", "AWS::NetworkManager::Site", "AWS::Panorama::Package", "AWS::Pinpoint::App", "AWS::Redshift::ScheduledAction", "AWS::Route53Resolver::FirewallRuleGroupAssociation", "AWS::SageMaker::AppImageConfig", "AWS::SageMaker::Image", "AWS::ECS::TaskSet", "AWS::Cassandra::Keyspace", "AWS::Signer::SigningProfile", "AWS::Amplify::App", "AWS::AppMesh::VirtualNode", "AWS::AppMesh::VirtualService", "AWS::AppRunner::VpcConnector", "AWS::AppStream::Application", "AWS::CodeArtifact::Repository", "AWS::EC2::PrefixList", "AWS::EC2::SpotFleet", "AWS::Evidently::Project", "AWS::Forecast::Dataset", "AWS::IAM::SAMLProvider", "AWS::IAM::ServerCertificate", "AWS::Pinpoint::Campaign", "AWS::Pinpoint::InAppTemplate", "AWS::SageMaker::Domain", "AWS::Transfer::Agreement", "AWS::Transfer::Connector", "AWS::KinesisFirehose::DeliveryStream", "AWS::Amplify::Branch", "AWS::AppIntegrations::EventIntegration", "AWS::AppMesh::Route", "AWS::Athena::PreparedStatement", "AWS::EC2::IPAMScope", "AWS::Evidently::Launch", "AWS::Forecast::DatasetGroup", "AWS::GreengrassV2::ComponentVersion", "AWS::GroundStation::MissionProfile", "AWS::MediaConnect::FlowEntitlement", "AWS::MediaConnect::FlowVpcInterface", "AWS::MediaTailor::PlaybackConfiguration", "AWS::MSK::Configuration", "AWS::Personalize::Dataset", "AWS::Personalize::Schema", "AWS::Personalize::Solution", "AWS::Pinpoint::EmailTemplate", "AWS::Pinpoint::EventStream", "AWS::ResilienceHub::App", "AWS::ACMPCA::CertificateAuthority", "AWS::AppConfig::HostedConfigurationVersion", "AWS::AppMesh::VirtualGateway", "AWS::AppMesh::VirtualRouter", "AWS::AppRunner::Service", "AWS::CustomerProfiles::ObjectType", "AWS::DMS::Endpoint", "AWS::EC2::CapacityReservation", "AWS::EC2::ClientVpnEndpoint", "AWS::Kendra::Index", "AWS::KinesisVideo::Stream", "AWS::Logs::Destination", "AWS::Pinpoint::EmailChannel", "AWS::S3::AccessPoint", "AWS::NetworkManager::CustomerGatewayAssociation", "AWS::NetworkManager::LinkAssociation", "AWS::IoTWireless::MulticastGroup", "AWS::Personalize::DatasetGroup", "AWS::IoTTwinMaker::ComponentType", "AWS::CodeBuild::ReportGroup", "AWS::SageMaker::FeatureGroup", "AWS::MSK::BatchScramSecret", "AWS::AppStream::Stack", "AWS::IoT::JobTemplate", "AWS::IoTWireless::FuotaTask", "AWS::IoT::ProvisioningTemplate", "AWS::InspectorV2::Filter", "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation", "AWS::ServiceDiscovery::Instance", "AWS::Transfer::Certificate", "AWS::MediaConnect::FlowSource", "AWS::APS::RuleGroupsNamespace", "AWS::CodeGuruProfiler::ProfilingGroup", "AWS::Route53Resolver::ResolverQueryLoggingConfig", "AWS::Batch::SchedulingPolicy", "AWS::ACMPCA::CertificateAuthorityActivation", "AWS::AppMesh::GatewayRoute", "AWS::AppMesh::Mesh", "AWS::Connect::Instance", "AWS::Connect::QuickConnect", "AWS::EC2::CarrierGateway", "AWS::EC2::IPAMPool", "AWS::EC2::TransitGatewayConnect", "AWS::EC2::TransitGatewayMulticastDomain", "AWS::ECS::CapacityProvider", "AWS::IAM::InstanceProfile", "AWS::IoT::CACertificate", "AWS::IoTTwinMaker::SyncJob", "AWS::KafkaConnect::Connector", "AWS::Lambda::CodeSigningConfig", "AWS::NetworkManager::ConnectPeer", "AWS::ResourceExplorer2::Index", "AWS::AppStream::Fleet", "AWS::Cognito::UserPool", "AWS::Cognito::UserPoolClient", "AWS::Cognito::UserPoolGroup", "AWS::EC2::NetworkInsightsAccessScope", "AWS::EC2::NetworkInsightsAnalysis", "AWS::Grafana::Workspace", "AWS::GroundStation::DataflowEndpointGroup", "AWS::ImageBuilder::ImageRecipe", "AWS::KMS::Alias", "AWS::M2::Environment", "AWS::QuickSight::DataSource", "AWS::QuickSight::Template", "AWS::QuickSight::Theme", "AWS::RDS::OptionGroup", "AWS::Redshift::EndpointAccess", "AWS::Route53Resolver::FirewallRuleGroup", "AWS::SSM::Document", "AWS::AppConfig::ExtensionAssociation", "AWS::AppIntegrations::Application", "AWS::AppSync::ApiCache", "AWS::Bedrock::Guardrail", "AWS::Bedrock::KnowledgeBase", "AWS::Cognito::IdentityPool", "AWS::Connect::Rule", "AWS::Connect::User", "AWS::EC2::ClientVpnTargetNetworkAssociation", "AWS::EC2::EIPAssociation", "AWS::EC2::IPAMResourceDiscovery", "AWS::EC2::IPAMResourceDiscoveryAssociation", "AWS::EC2::InstanceConnectEndpoint", "AWS::EC2::SnapshotBlockPublicAccess", "AWS::EC2::VPCBlockPublicAccessExclusion", "AWS::EC2::VPCBlockPublicAccessOptions", "AWS::EC2::VPCEndpointConnectionNotification", "AWS::EC2::VPNConnectionRoute", "AWS::Evidently::Segment", "AWS::IAM::OIDCProvider", "AWS::InspectorV2::Activation", "AWS::MSK::ClusterPolicy", "AWS::MSK::VpcConnection", "AWS::MediaConnect::Gateway", "AWS::MemoryDB::SubnetGroup", "AWS::OpenSearchServerless::Collection", "AWS::OpenSearchServerless::VpcEndpoint", "AWS::Redshift::EndpointAuthorization", "AWS::Route53Profiles::Profile", "AWS::S3::StorageLensGroup", "AWS::S3Express::BucketPolicy", "AWS::S3Express::DirectoryBucket", "AWS::SageMaker::InferenceExperiment", "AWS::SecurityHub::Standard", "AWS::Transfer::Profile"], # required
    #         resource_id: "ResourceId", # required
    #       }
    #     ]
    #   }
    # @return [Types::StartRemediationExecutionResponse]
    def start_remediation_execution(params = {}, options = {})
      request = build_request(:start_remediation_execution, params)
      request.send_request(options)
    end

    # <p>Runs an on-demand evaluation for the specified resource to determine whether the resource details will comply with configured Config rules.
    # 			You can also use it for evaluation purposes. Config recommends using an evaluation context. It runs an execution against the resource details with all
    # 			of the Config rules in your account that match with the specified proactive mode and resource type.</p>
    #          <note>
    #             <p>Ensure you have the <code>cloudformation:DescribeType</code> role setup to validate the resource type schema.</p>
    #             <p>You can find the
    # 				<a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">Resource type schema</a> in "<i>Amazon Web Services public extensions</i>" within the CloudFormation registry or with the following CLI commmand:
    # 			<code>aws cloudformation describe-type --type-name "AWS::S3::Bucket" --type RESOURCE</code>.</p>
    #             <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry.html#registry-view">Managing extensions through the CloudFormation registry</a>
    # 			and <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services resource and property types reference</a> in the CloudFormation User Guide.</p>
    #          </note>
    # @param [Hash, Types::StartResourceEvaluationRequest] params
    # @option params [Types::ResourceDetails] :resource_details
    #   <p>Returns a <code>ResourceDetails</code> object.</p>
    # @option params [Types::EvaluationContext] :evaluation_context
    #   <p>Returns an <code>EvaluationContext</code> object.</p>
    # @option params [String] :evaluation_mode
    #   <p>The mode of an evaluation.</p>
    #            <note>
    #               <p>The only valid value for this API is <code>PROACTIVE</code>.</p>
    #            </note>
    # @option params [Integer] :evaluation_timeout
    #   <p>The timeout for an evaluation. The default is 900 seconds. You cannot specify a number greater than 3600. If you specify 0, Config uses the default.</p>
    # @option params [String] :client_token
    #   <p>A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   			To make an idempotent API request using one of these actions, specify a client token in the request.</p>
    #            <note>
    #               <p>Avoid reusing the same client token for other API requests. If you retry
    #   				a request that completed successfully using the same client token and the same
    #   				parameters, the retry succeeds without performing any further actions. If you retry
    #   				a successful request using the same client token, but one or more of the parameters
    #   				are different, other than the Region or Availability Zone, the retry fails with an
    #   				IdempotentParameterMismatch error.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_details: { # required
    #       resource_id: "BaseResourceId", # required
    #       resource_type: "StringWithCharLimit256", # required
    #       resource_configuration: "ResourceConfiguration", # required
    #       resource_configuration_schema_type: "CFN_RESOURCE_SCHEMA" # One of: ["CFN_RESOURCE_SCHEMA"]
    #     },
    #     evaluation_context: {
    #       evaluation_context_identifier: "EvaluationContextIdentifier"
    #     },
    #     evaluation_mode: "DETECTIVE" # One of: ["DETECTIVE", "PROACTIVE"], # required
    #     evaluation_timeout: 1,
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.start_resource_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_evaluation_id: "ResourceEvaluationId"
    #   }
    # @return [Types::StartResourceEvaluationResponse]
    def start_resource_evaluation(params = {}, options = {})
      request = build_request(:start_resource_evaluation, params)
      request.send_request(options)
    end

    # <p>Stops the customer managed configuration recorder. The customer managed configuration recorder will stop recording configuration changes for the resource types you have specified.</p>
    # @param [Hash, Types::StopConfigurationRecorderRequest] params
    # @option params [String] :configuration_recorder_name
    #   <p>The name of the customer managed configuration recorder that you want to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_recorder_name: "RecorderName", # required
    #   }
    #   options = {}
    #   response = client.stop_configuration_recorder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_configuration_recorder(params = {}, options = {})
      request = build_request(:stop_configuration_recorder, params)
      request.send_request(options)
    end

    # <p>Associates the specified tags to a resource with the specified <code>ResourceArn</code>. If existing tags on a resource are not specified in the request parameters, they are not changed.
    # 			If existing tags are specified, however, then their values will be updated. When a resource is deleted, the tags associated with that resource are deleted as well.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. The following resources are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationRecorder</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfigRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OrganizationConfigRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConformancePack</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OrganizationConformancePack</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationAggregator</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AggregationAuthorization</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StoredQuery</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of tag object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Deletes specified tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. The following resources are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationRecorder</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfigRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OrganizationConfigRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConformancePack</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OrganizationConformancePack</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfigurationAggregator</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AggregationAuthorization</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StoredQuery</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to be removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-configservice'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
