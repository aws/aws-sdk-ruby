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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:elasticsearchservice)

module Aws::ElasticsearchService
  # An API client for ElasticsearchService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ElasticsearchService::Client.new(
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

    @identifier = :elasticsearchservice

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
    #     to test endpoints. This should be a valid HTTP(S) URI.
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

    # Allows the destination domain owner to accept an inbound cross-cluster
    # search connection request.
    #
    # @option params [required, String] :cross_cluster_search_connection_id
    #   The id of the inbound connection that you want to accept.
    #
    # @return [Types::AcceptInboundCrossClusterSearchConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptInboundCrossClusterSearchConnectionResponse#cross_cluster_search_connection #cross_cluster_search_connection} => Types::InboundCrossClusterSearchConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_inbound_cross_cluster_search_connection({
    #     cross_cluster_search_connection_id: "CrossClusterSearchConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cross_cluster_search_connection.source_domain_info.owner_id #=> String
    #   resp.cross_cluster_search_connection.source_domain_info.domain_name #=> String
    #   resp.cross_cluster_search_connection.source_domain_info.region #=> String
    #   resp.cross_cluster_search_connection.destination_domain_info.owner_id #=> String
    #   resp.cross_cluster_search_connection.destination_domain_info.domain_name #=> String
    #   resp.cross_cluster_search_connection.destination_domain_info.region #=> String
    #   resp.cross_cluster_search_connection.cross_cluster_search_connection_id #=> String
    #   resp.cross_cluster_search_connection.connection_status.status_code #=> String, one of "PENDING_ACCEPTANCE", "APPROVED", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.cross_cluster_search_connection.connection_status.message #=> String
    #
    # @overload accept_inbound_cross_cluster_search_connection(params = {})
    # @param [Hash] params ({})
    def accept_inbound_cross_cluster_search_connection(params = {}, options = {})
      req = build_request(:accept_inbound_cross_cluster_search_connection, params)
      req.send_request(options)
    end

    # Attaches tags to an existing Elasticsearch domain. Tags are a set of
    # case-sensitive key value pairs. An Elasticsearch domain may have up to
    # 10 tags. See [ Tagging Amazon Elasticsearch Service Domains for more
    # information.][1]
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging
    #
    # @option params [required, String] :arn
    #   Specify the `ARN` for which you want to add the tags.
    #
    # @option params [required, Array<Types::Tag>] :tag_list
    #   List of `Tag` that need to be added for the Elasticsearch domain.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags({
    #     arn: "ARN", # required
    #     tag_list: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @overload add_tags(params = {})
    # @param [Hash] params ({})
    def add_tags(params = {}, options = {})
      req = build_request(:add_tags, params)
      req.send_request(options)
    end

    # Associates a package with an Amazon ES domain.
    #
    # @option params [required, String] :package_id
    #   Internal ID of the package that you want to associate with a domain.
    #   Use `DescribePackages` to find this value.
    #
    # @option params [required, String] :domain_name
    #   Name of the domain that you want to associate the package with.
    #
    # @return [Types::AssociatePackageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociatePackageResponse#domain_package_details #domain_package_details} => Types::DomainPackageDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_package({
    #     package_id: "PackageID", # required
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_package_details.package_id #=> String
    #   resp.domain_package_details.package_name #=> String
    #   resp.domain_package_details.package_type #=> String, one of "TXT-DICTIONARY"
    #   resp.domain_package_details.last_updated #=> Time
    #   resp.domain_package_details.domain_name #=> String
    #   resp.domain_package_details.domain_package_status #=> String, one of "ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"
    #   resp.domain_package_details.reference_path #=> String
    #   resp.domain_package_details.error_details.error_type #=> String
    #   resp.domain_package_details.error_details.error_message #=> String
    #
    # @overload associate_package(params = {})
    # @param [Hash] params ({})
    def associate_package(params = {}, options = {})
      req = build_request(:associate_package, params)
      req.send_request(options)
    end

    # Cancels a scheduled service software update for an Amazon ES domain.
    # You can only perform this operation before the `AutomatedUpdateDate`
    # and when the `UpdateStatus` is in the `PENDING_UPDATE` state.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to stop the latest service
    #   software update on.
    #
    # @return [Types::CancelElasticsearchServiceSoftwareUpdateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelElasticsearchServiceSoftwareUpdateResponse#service_software_options #service_software_options} => Types::ServiceSoftwareOptions
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_elasticsearch_service_software_update({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_software_options.current_version #=> String
    #   resp.service_software_options.new_version #=> String
    #   resp.service_software_options.update_available #=> Boolean
    #   resp.service_software_options.cancellable #=> Boolean
    #   resp.service_software_options.update_status #=> String, one of "PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"
    #   resp.service_software_options.description #=> String
    #   resp.service_software_options.automated_update_date #=> Time
    #   resp.service_software_options.optional_deployment #=> Boolean
    #
    # @overload cancel_elasticsearch_service_software_update(params = {})
    # @param [Hash] params ({})
    def cancel_elasticsearch_service_software_update(params = {}, options = {})
      req = build_request(:cancel_elasticsearch_service_software_update, params)
      req.send_request(options)
    end

    # Creates a new Elasticsearch domain. For more information, see
    # [Creating Elasticsearch Domains][1] in the *Amazon Elasticsearch
    # Service Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains
    #
    # @option params [required, String] :domain_name
    #   The name of the Elasticsearch domain that you are creating. Domain
    #   names are unique across the domains owned by an account within an AWS
    #   region. Domain names must start with a lowercase letter and can
    #   contain the following characters: a-z (lowercase), 0-9, and -
    #   (hyphen).
    #
    # @option params [String] :elasticsearch_version
    #   String of format X.Y to specify version for the Elasticsearch domain
    #   eg. "1.5" or "2.3". For more information, see [Creating
    #   Elasticsearch Domains][1] in the *Amazon Elasticsearch Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains
    #
    # @option params [Types::ElasticsearchClusterConfig] :elasticsearch_cluster_config
    #   Configuration options for an Elasticsearch domain. Specifies the
    #   instance type and number of instances in the domain cluster.
    #
    # @option params [Types::EBSOptions] :ebs_options
    #   Options to enable, disable and specify the type and size of EBS
    #   storage volumes.
    #
    # @option params [String] :access_policies
    #   IAM access policy as a JSON-formatted string.
    #
    # @option params [Types::SnapshotOptions] :snapshot_options
    #   Option to set time, in UTC format, of the daily automated snapshot.
    #   Default value is 0 hours.
    #
    # @option params [Types::VPCOptions] :vpc_options
    #   Options to specify the subnets and security groups for VPC endpoint.
    #   For more information, see [Creating a VPC][1] in *VPC Endpoints for
    #   Amazon Elasticsearch Service Domains*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc
    #
    # @option params [Types::CognitoOptions] :cognito_options
    #   Options to specify the Cognito user and identity pools for Kibana
    #   authentication. For more information, see [Amazon Cognito
    #   Authentication for Kibana][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html
    #
    # @option params [Types::EncryptionAtRestOptions] :encryption_at_rest_options
    #   Specifies the Encryption At Rest Options.
    #
    # @option params [Types::NodeToNodeEncryptionOptions] :node_to_node_encryption_options
    #   Specifies the NodeToNodeEncryptionOptions.
    #
    # @option params [Hash<String,String>] :advanced_options
    #   Option to allow references to indices in an HTTP request body. Must be
    #   `false` when configuring access to individual sub-resources. By
    #   default, the value is `true`. See [Configuration Advanced Options][1]
    #   for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options
    #
    # @option params [Hash<String,Types::LogPublishingOption>] :log_publishing_options
    #   Map of `LogType` and `LogPublishingOption`, each containing options to
    #   publish a given type of Elasticsearch log.
    #
    # @option params [Types::DomainEndpointOptions] :domain_endpoint_options
    #   Options to specify configuration that will be applied to the domain
    #   endpoint.
    #
    # @option params [Types::AdvancedSecurityOptionsInput] :advanced_security_options
    #   Specifies advanced security options.
    #
    # @return [Types::CreateElasticsearchDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateElasticsearchDomainResponse#domain_status #domain_status} => Types::ElasticsearchDomainStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_elasticsearch_domain({
    #     domain_name: "DomainName", # required
    #     elasticsearch_version: "ElasticsearchVersionString",
    #     elasticsearch_cluster_config: {
    #       instance_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, m5.large.elasticsearch, m5.xlarge.elasticsearch, m5.2xlarge.elasticsearch, m5.4xlarge.elasticsearch, m5.12xlarge.elasticsearch, r5.large.elasticsearch, r5.xlarge.elasticsearch, r5.2xlarge.elasticsearch, r5.4xlarge.elasticsearch, r5.12xlarge.elasticsearch, c5.large.elasticsearch, c5.xlarge.elasticsearch, c5.2xlarge.elasticsearch, c5.4xlarge.elasticsearch, c5.9xlarge.elasticsearch, c5.18xlarge.elasticsearch, ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch, d2.xlarge.elasticsearch, d2.2xlarge.elasticsearch, d2.4xlarge.elasticsearch, d2.8xlarge.elasticsearch, c4.large.elasticsearch, c4.xlarge.elasticsearch, c4.2xlarge.elasticsearch, c4.4xlarge.elasticsearch, c4.8xlarge.elasticsearch, r4.large.elasticsearch, r4.xlarge.elasticsearch, r4.2xlarge.elasticsearch, r4.4xlarge.elasticsearch, r4.8xlarge.elasticsearch, r4.16xlarge.elasticsearch, i3.large.elasticsearch, i3.xlarge.elasticsearch, i3.2xlarge.elasticsearch, i3.4xlarge.elasticsearch, i3.8xlarge.elasticsearch, i3.16xlarge.elasticsearch
    #       instance_count: 1,
    #       dedicated_master_enabled: false,
    #       zone_awareness_enabled: false,
    #       zone_awareness_config: {
    #         availability_zone_count: 1,
    #       },
    #       dedicated_master_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, m5.large.elasticsearch, m5.xlarge.elasticsearch, m5.2xlarge.elasticsearch, m5.4xlarge.elasticsearch, m5.12xlarge.elasticsearch, r5.large.elasticsearch, r5.xlarge.elasticsearch, r5.2xlarge.elasticsearch, r5.4xlarge.elasticsearch, r5.12xlarge.elasticsearch, c5.large.elasticsearch, c5.xlarge.elasticsearch, c5.2xlarge.elasticsearch, c5.4xlarge.elasticsearch, c5.9xlarge.elasticsearch, c5.18xlarge.elasticsearch, ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch, d2.xlarge.elasticsearch, d2.2xlarge.elasticsearch, d2.4xlarge.elasticsearch, d2.8xlarge.elasticsearch, c4.large.elasticsearch, c4.xlarge.elasticsearch, c4.2xlarge.elasticsearch, c4.4xlarge.elasticsearch, c4.8xlarge.elasticsearch, r4.large.elasticsearch, r4.xlarge.elasticsearch, r4.2xlarge.elasticsearch, r4.4xlarge.elasticsearch, r4.8xlarge.elasticsearch, r4.16xlarge.elasticsearch, i3.large.elasticsearch, i3.xlarge.elasticsearch, i3.2xlarge.elasticsearch, i3.4xlarge.elasticsearch, i3.8xlarge.elasticsearch, i3.16xlarge.elasticsearch
    #       dedicated_master_count: 1,
    #       warm_enabled: false,
    #       warm_type: "ultrawarm1.medium.elasticsearch", # accepts ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch
    #       warm_count: 1,
    #     },
    #     ebs_options: {
    #       ebs_enabled: false,
    #       volume_type: "standard", # accepts standard, gp2, io1
    #       volume_size: 1,
    #       iops: 1,
    #     },
    #     access_policies: "PolicyDocument",
    #     snapshot_options: {
    #       automated_snapshot_start_hour: 1,
    #     },
    #     vpc_options: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #     },
    #     cognito_options: {
    #       enabled: false,
    #       user_pool_id: "UserPoolId",
    #       identity_pool_id: "IdentityPoolId",
    #       role_arn: "RoleArn",
    #     },
    #     encryption_at_rest_options: {
    #       enabled: false,
    #       kms_key_id: "KmsKeyId",
    #     },
    #     node_to_node_encryption_options: {
    #       enabled: false,
    #     },
    #     advanced_options: {
    #       "String" => "String",
    #     },
    #     log_publishing_options: {
    #       "INDEX_SLOW_LOGS" => {
    #         cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #         enabled: false,
    #       },
    #     },
    #     domain_endpoint_options: {
    #       enforce_https: false,
    #       tls_security_policy: "Policy-Min-TLS-1-0-2019-07", # accepts Policy-Min-TLS-1-0-2019-07, Policy-Min-TLS-1-2-2019-07
    #     },
    #     advanced_security_options: {
    #       enabled: false,
    #       internal_user_database_enabled: false,
    #       master_user_options: {
    #         master_user_arn: "ARN",
    #         master_user_name: "Username",
    #         master_user_password: "Password",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_status.domain_id #=> String
    #   resp.domain_status.domain_name #=> String
    #   resp.domain_status.arn #=> String
    #   resp.domain_status.created #=> Boolean
    #   resp.domain_status.deleted #=> Boolean
    #   resp.domain_status.endpoint #=> String
    #   resp.domain_status.endpoints #=> Hash
    #   resp.domain_status.endpoints["String"] #=> String
    #   resp.domain_status.processing #=> Boolean
    #   resp.domain_status.upgrade_processing #=> Boolean
    #   resp.domain_status.elasticsearch_version #=> String
    #   resp.domain_status.elasticsearch_cluster_config.instance_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"
    #   resp.domain_status.elasticsearch_cluster_config.instance_count #=> Integer
    #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.domain_status.elasticsearch_cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.domain_status.elasticsearch_cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"
    #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_count #=> Integer
    #   resp.domain_status.elasticsearch_cluster_config.warm_enabled #=> Boolean
    #   resp.domain_status.elasticsearch_cluster_config.warm_type #=> String, one of "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"
    #   resp.domain_status.elasticsearch_cluster_config.warm_count #=> Integer
    #   resp.domain_status.ebs_options.ebs_enabled #=> Boolean
    #   resp.domain_status.ebs_options.volume_type #=> String, one of "standard", "gp2", "io1"
    #   resp.domain_status.ebs_options.volume_size #=> Integer
    #   resp.domain_status.ebs_options.iops #=> Integer
    #   resp.domain_status.access_policies #=> String
    #   resp.domain_status.snapshot_options.automated_snapshot_start_hour #=> Integer
    #   resp.domain_status.vpc_options.vpc_id #=> String
    #   resp.domain_status.vpc_options.subnet_ids #=> Array
    #   resp.domain_status.vpc_options.subnet_ids[0] #=> String
    #   resp.domain_status.vpc_options.availability_zones #=> Array
    #   resp.domain_status.vpc_options.availability_zones[0] #=> String
    #   resp.domain_status.vpc_options.security_group_ids #=> Array
    #   resp.domain_status.vpc_options.security_group_ids[0] #=> String
    #   resp.domain_status.cognito_options.enabled #=> Boolean
    #   resp.domain_status.cognito_options.user_pool_id #=> String
    #   resp.domain_status.cognito_options.identity_pool_id #=> String
    #   resp.domain_status.cognito_options.role_arn #=> String
    #   resp.domain_status.encryption_at_rest_options.enabled #=> Boolean
    #   resp.domain_status.encryption_at_rest_options.kms_key_id #=> String
    #   resp.domain_status.node_to_node_encryption_options.enabled #=> Boolean
    #   resp.domain_status.advanced_options #=> Hash
    #   resp.domain_status.advanced_options["String"] #=> String
    #   resp.domain_status.log_publishing_options #=> Hash
    #   resp.domain_status.log_publishing_options["LogType"].cloud_watch_logs_log_group_arn #=> String
    #   resp.domain_status.log_publishing_options["LogType"].enabled #=> Boolean
    #   resp.domain_status.service_software_options.current_version #=> String
    #   resp.domain_status.service_software_options.new_version #=> String
    #   resp.domain_status.service_software_options.update_available #=> Boolean
    #   resp.domain_status.service_software_options.cancellable #=> Boolean
    #   resp.domain_status.service_software_options.update_status #=> String, one of "PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"
    #   resp.domain_status.service_software_options.description #=> String
    #   resp.domain_status.service_software_options.automated_update_date #=> Time
    #   resp.domain_status.service_software_options.optional_deployment #=> Boolean
    #   resp.domain_status.domain_endpoint_options.enforce_https #=> Boolean
    #   resp.domain_status.domain_endpoint_options.tls_security_policy #=> String, one of "Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"
    #   resp.domain_status.advanced_security_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.internal_user_database_enabled #=> Boolean
    #
    # @overload create_elasticsearch_domain(params = {})
    # @param [Hash] params ({})
    def create_elasticsearch_domain(params = {}, options = {})
      req = build_request(:create_elasticsearch_domain, params)
      req.send_request(options)
    end

    # Creates a new cross-cluster search connection from a source domain to
    # a destination domain.
    #
    # @option params [required, Types::DomainInformation] :source_domain_info
    #   Specifies the `DomainInformation` for the source Elasticsearch domain.
    #
    # @option params [required, Types::DomainInformation] :destination_domain_info
    #   Specifies the `DomainInformation` for the destination Elasticsearch
    #   domain.
    #
    # @option params [required, String] :connection_alias
    #   Specifies the connection alias that will be used by the customer for
    #   this connection.
    #
    # @return [Types::CreateOutboundCrossClusterSearchConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOutboundCrossClusterSearchConnectionResponse#source_domain_info #source_domain_info} => Types::DomainInformation
    #   * {Types::CreateOutboundCrossClusterSearchConnectionResponse#destination_domain_info #destination_domain_info} => Types::DomainInformation
    #   * {Types::CreateOutboundCrossClusterSearchConnectionResponse#connection_alias #connection_alias} => String
    #   * {Types::CreateOutboundCrossClusterSearchConnectionResponse#connection_status #connection_status} => Types::OutboundCrossClusterSearchConnectionStatus
    #   * {Types::CreateOutboundCrossClusterSearchConnectionResponse#cross_cluster_search_connection_id #cross_cluster_search_connection_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_outbound_cross_cluster_search_connection({
    #     source_domain_info: { # required
    #       owner_id: "OwnerId",
    #       domain_name: "DomainName", # required
    #       region: "Region",
    #     },
    #     destination_domain_info: { # required
    #       owner_id: "OwnerId",
    #       domain_name: "DomainName", # required
    #       region: "Region",
    #     },
    #     connection_alias: "ConnectionAlias", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.source_domain_info.owner_id #=> String
    #   resp.source_domain_info.domain_name #=> String
    #   resp.source_domain_info.region #=> String
    #   resp.destination_domain_info.owner_id #=> String
    #   resp.destination_domain_info.domain_name #=> String
    #   resp.destination_domain_info.region #=> String
    #   resp.connection_alias #=> String
    #   resp.connection_status.status_code #=> String, one of "PENDING_ACCEPTANCE", "VALIDATING", "VALIDATION_FAILED", "PROVISIONING", "ACTIVE", "REJECTED", "DELETING", "DELETED"
    #   resp.connection_status.message #=> String
    #   resp.cross_cluster_search_connection_id #=> String
    #
    # @overload create_outbound_cross_cluster_search_connection(params = {})
    # @param [Hash] params ({})
    def create_outbound_cross_cluster_search_connection(params = {}, options = {})
      req = build_request(:create_outbound_cross_cluster_search_connection, params)
      req.send_request(options)
    end

    # Create a package for use with Amazon ES domains.
    #
    # @option params [required, String] :package_name
    #   Unique identifier for the package.
    #
    # @option params [required, String] :package_type
    #   Type of package. Currently supports only TXT-DICTIONARY.
    #
    # @option params [String] :package_description
    #   Description of the package.
    #
    # @option params [required, Types::PackageSource] :package_source
    #   The customer S3 location `PackageSource` for importing the package.
    #
    # @return [Types::CreatePackageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePackageResponse#package_details #package_details} => Types::PackageDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_package({
    #     package_name: "PackageName", # required
    #     package_type: "TXT-DICTIONARY", # required, accepts TXT-DICTIONARY
    #     package_description: "PackageDescription",
    #     package_source: { # required
    #       s3_bucket_name: "S3BucketName",
    #       s3_key: "S3Key",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.package_details.package_id #=> String
    #   resp.package_details.package_name #=> String
    #   resp.package_details.package_type #=> String, one of "TXT-DICTIONARY"
    #   resp.package_details.package_description #=> String
    #   resp.package_details.package_status #=> String, one of "COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.package_details.created_at #=> Time
    #   resp.package_details.error_details.error_type #=> String
    #   resp.package_details.error_details.error_message #=> String
    #
    # @overload create_package(params = {})
    # @param [Hash] params ({})
    def create_package(params = {}, options = {})
      req = build_request(:create_package, params)
      req.send_request(options)
    end

    # Permanently deletes the specified Elasticsearch domain and all of its
    # data. Once a domain is deleted, it cannot be recovered.
    #
    # @option params [required, String] :domain_name
    #   The name of the Elasticsearch domain that you want to permanently
    #   delete.
    #
    # @return [Types::DeleteElasticsearchDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteElasticsearchDomainResponse#domain_status #domain_status} => Types::ElasticsearchDomainStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_elasticsearch_domain({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_status.domain_id #=> String
    #   resp.domain_status.domain_name #=> String
    #   resp.domain_status.arn #=> String
    #   resp.domain_status.created #=> Boolean
    #   resp.domain_status.deleted #=> Boolean
    #   resp.domain_status.endpoint #=> String
    #   resp.domain_status.endpoints #=> Hash
    #   resp.domain_status.endpoints["String"] #=> String
    #   resp.domain_status.processing #=> Boolean
    #   resp.domain_status.upgrade_processing #=> Boolean
    #   resp.domain_status.elasticsearch_version #=> String
    #   resp.domain_status.elasticsearch_cluster_config.instance_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"
    #   resp.domain_status.elasticsearch_cluster_config.instance_count #=> Integer
    #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.domain_status.elasticsearch_cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.domain_status.elasticsearch_cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"
    #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_count #=> Integer
    #   resp.domain_status.elasticsearch_cluster_config.warm_enabled #=> Boolean
    #   resp.domain_status.elasticsearch_cluster_config.warm_type #=> String, one of "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"
    #   resp.domain_status.elasticsearch_cluster_config.warm_count #=> Integer
    #   resp.domain_status.ebs_options.ebs_enabled #=> Boolean
    #   resp.domain_status.ebs_options.volume_type #=> String, one of "standard", "gp2", "io1"
    #   resp.domain_status.ebs_options.volume_size #=> Integer
    #   resp.domain_status.ebs_options.iops #=> Integer
    #   resp.domain_status.access_policies #=> String
    #   resp.domain_status.snapshot_options.automated_snapshot_start_hour #=> Integer
    #   resp.domain_status.vpc_options.vpc_id #=> String
    #   resp.domain_status.vpc_options.subnet_ids #=> Array
    #   resp.domain_status.vpc_options.subnet_ids[0] #=> String
    #   resp.domain_status.vpc_options.availability_zones #=> Array
    #   resp.domain_status.vpc_options.availability_zones[0] #=> String
    #   resp.domain_status.vpc_options.security_group_ids #=> Array
    #   resp.domain_status.vpc_options.security_group_ids[0] #=> String
    #   resp.domain_status.cognito_options.enabled #=> Boolean
    #   resp.domain_status.cognito_options.user_pool_id #=> String
    #   resp.domain_status.cognito_options.identity_pool_id #=> String
    #   resp.domain_status.cognito_options.role_arn #=> String
    #   resp.domain_status.encryption_at_rest_options.enabled #=> Boolean
    #   resp.domain_status.encryption_at_rest_options.kms_key_id #=> String
    #   resp.domain_status.node_to_node_encryption_options.enabled #=> Boolean
    #   resp.domain_status.advanced_options #=> Hash
    #   resp.domain_status.advanced_options["String"] #=> String
    #   resp.domain_status.log_publishing_options #=> Hash
    #   resp.domain_status.log_publishing_options["LogType"].cloud_watch_logs_log_group_arn #=> String
    #   resp.domain_status.log_publishing_options["LogType"].enabled #=> Boolean
    #   resp.domain_status.service_software_options.current_version #=> String
    #   resp.domain_status.service_software_options.new_version #=> String
    #   resp.domain_status.service_software_options.update_available #=> Boolean
    #   resp.domain_status.service_software_options.cancellable #=> Boolean
    #   resp.domain_status.service_software_options.update_status #=> String, one of "PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"
    #   resp.domain_status.service_software_options.description #=> String
    #   resp.domain_status.service_software_options.automated_update_date #=> Time
    #   resp.domain_status.service_software_options.optional_deployment #=> Boolean
    #   resp.domain_status.domain_endpoint_options.enforce_https #=> Boolean
    #   resp.domain_status.domain_endpoint_options.tls_security_policy #=> String, one of "Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"
    #   resp.domain_status.advanced_security_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.internal_user_database_enabled #=> Boolean
    #
    # @overload delete_elasticsearch_domain(params = {})
    # @param [Hash] params ({})
    def delete_elasticsearch_domain(params = {}, options = {})
      req = build_request(:delete_elasticsearch_domain, params)
      req.send_request(options)
    end

    # Deletes the service-linked role that Elasticsearch Service uses to
    # manage and maintain VPC domains. Role deletion will fail if any
    # existing VPC domains use the role. You must delete any such
    # Elasticsearch domains before deleting the role. See [Deleting
    # Elasticsearch Service Role][1] in *VPC Endpoints for Amazon
    # Elasticsearch Service Domains*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-enabling-slr
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @overload delete_elasticsearch_service_role(params = {})
    # @param [Hash] params ({})
    def delete_elasticsearch_service_role(params = {}, options = {})
      req = build_request(:delete_elasticsearch_service_role, params)
      req.send_request(options)
    end

    # Allows the destination domain owner to delete an existing inbound
    # cross-cluster search connection.
    #
    # @option params [required, String] :cross_cluster_search_connection_id
    #   The id of the inbound connection that you want to permanently delete.
    #
    # @return [Types::DeleteInboundCrossClusterSearchConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInboundCrossClusterSearchConnectionResponse#cross_cluster_search_connection #cross_cluster_search_connection} => Types::InboundCrossClusterSearchConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_inbound_cross_cluster_search_connection({
    #     cross_cluster_search_connection_id: "CrossClusterSearchConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cross_cluster_search_connection.source_domain_info.owner_id #=> String
    #   resp.cross_cluster_search_connection.source_domain_info.domain_name #=> String
    #   resp.cross_cluster_search_connection.source_domain_info.region #=> String
    #   resp.cross_cluster_search_connection.destination_domain_info.owner_id #=> String
    #   resp.cross_cluster_search_connection.destination_domain_info.domain_name #=> String
    #   resp.cross_cluster_search_connection.destination_domain_info.region #=> String
    #   resp.cross_cluster_search_connection.cross_cluster_search_connection_id #=> String
    #   resp.cross_cluster_search_connection.connection_status.status_code #=> String, one of "PENDING_ACCEPTANCE", "APPROVED", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.cross_cluster_search_connection.connection_status.message #=> String
    #
    # @overload delete_inbound_cross_cluster_search_connection(params = {})
    # @param [Hash] params ({})
    def delete_inbound_cross_cluster_search_connection(params = {}, options = {})
      req = build_request(:delete_inbound_cross_cluster_search_connection, params)
      req.send_request(options)
    end

    # Allows the source domain owner to delete an existing outbound
    # cross-cluster search connection.
    #
    # @option params [required, String] :cross_cluster_search_connection_id
    #   The id of the outbound connection that you want to permanently delete.
    #
    # @return [Types::DeleteOutboundCrossClusterSearchConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteOutboundCrossClusterSearchConnectionResponse#cross_cluster_search_connection #cross_cluster_search_connection} => Types::OutboundCrossClusterSearchConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_outbound_cross_cluster_search_connection({
    #     cross_cluster_search_connection_id: "CrossClusterSearchConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cross_cluster_search_connection.source_domain_info.owner_id #=> String
    #   resp.cross_cluster_search_connection.source_domain_info.domain_name #=> String
    #   resp.cross_cluster_search_connection.source_domain_info.region #=> String
    #   resp.cross_cluster_search_connection.destination_domain_info.owner_id #=> String
    #   resp.cross_cluster_search_connection.destination_domain_info.domain_name #=> String
    #   resp.cross_cluster_search_connection.destination_domain_info.region #=> String
    #   resp.cross_cluster_search_connection.cross_cluster_search_connection_id #=> String
    #   resp.cross_cluster_search_connection.connection_alias #=> String
    #   resp.cross_cluster_search_connection.connection_status.status_code #=> String, one of "PENDING_ACCEPTANCE", "VALIDATING", "VALIDATION_FAILED", "PROVISIONING", "ACTIVE", "REJECTED", "DELETING", "DELETED"
    #   resp.cross_cluster_search_connection.connection_status.message #=> String
    #
    # @overload delete_outbound_cross_cluster_search_connection(params = {})
    # @param [Hash] params ({})
    def delete_outbound_cross_cluster_search_connection(params = {}, options = {})
      req = build_request(:delete_outbound_cross_cluster_search_connection, params)
      req.send_request(options)
    end

    # Delete the package.
    #
    # @option params [required, String] :package_id
    #   Internal ID of the package that you want to delete. Use
    #   `DescribePackages` to find this value.
    #
    # @return [Types::DeletePackageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePackageResponse#package_details #package_details} => Types::PackageDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_package({
    #     package_id: "PackageID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.package_details.package_id #=> String
    #   resp.package_details.package_name #=> String
    #   resp.package_details.package_type #=> String, one of "TXT-DICTIONARY"
    #   resp.package_details.package_description #=> String
    #   resp.package_details.package_status #=> String, one of "COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.package_details.created_at #=> Time
    #   resp.package_details.error_details.error_type #=> String
    #   resp.package_details.error_details.error_message #=> String
    #
    # @overload delete_package(params = {})
    # @param [Hash] params ({})
    def delete_package(params = {}, options = {})
      req = build_request(:delete_package, params)
      req.send_request(options)
    end

    # Returns domain configuration information about the specified
    # Elasticsearch domain, including the domain ID, domain endpoint, and
    # domain ARN.
    #
    # @option params [required, String] :domain_name
    #   The name of the Elasticsearch domain for which you want information.
    #
    # @return [Types::DescribeElasticsearchDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeElasticsearchDomainResponse#domain_status #domain_status} => Types::ElasticsearchDomainStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_elasticsearch_domain({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_status.domain_id #=> String
    #   resp.domain_status.domain_name #=> String
    #   resp.domain_status.arn #=> String
    #   resp.domain_status.created #=> Boolean
    #   resp.domain_status.deleted #=> Boolean
    #   resp.domain_status.endpoint #=> String
    #   resp.domain_status.endpoints #=> Hash
    #   resp.domain_status.endpoints["String"] #=> String
    #   resp.domain_status.processing #=> Boolean
    #   resp.domain_status.upgrade_processing #=> Boolean
    #   resp.domain_status.elasticsearch_version #=> String
    #   resp.domain_status.elasticsearch_cluster_config.instance_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"
    #   resp.domain_status.elasticsearch_cluster_config.instance_count #=> Integer
    #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.domain_status.elasticsearch_cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.domain_status.elasticsearch_cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"
    #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_count #=> Integer
    #   resp.domain_status.elasticsearch_cluster_config.warm_enabled #=> Boolean
    #   resp.domain_status.elasticsearch_cluster_config.warm_type #=> String, one of "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"
    #   resp.domain_status.elasticsearch_cluster_config.warm_count #=> Integer
    #   resp.domain_status.ebs_options.ebs_enabled #=> Boolean
    #   resp.domain_status.ebs_options.volume_type #=> String, one of "standard", "gp2", "io1"
    #   resp.domain_status.ebs_options.volume_size #=> Integer
    #   resp.domain_status.ebs_options.iops #=> Integer
    #   resp.domain_status.access_policies #=> String
    #   resp.domain_status.snapshot_options.automated_snapshot_start_hour #=> Integer
    #   resp.domain_status.vpc_options.vpc_id #=> String
    #   resp.domain_status.vpc_options.subnet_ids #=> Array
    #   resp.domain_status.vpc_options.subnet_ids[0] #=> String
    #   resp.domain_status.vpc_options.availability_zones #=> Array
    #   resp.domain_status.vpc_options.availability_zones[0] #=> String
    #   resp.domain_status.vpc_options.security_group_ids #=> Array
    #   resp.domain_status.vpc_options.security_group_ids[0] #=> String
    #   resp.domain_status.cognito_options.enabled #=> Boolean
    #   resp.domain_status.cognito_options.user_pool_id #=> String
    #   resp.domain_status.cognito_options.identity_pool_id #=> String
    #   resp.domain_status.cognito_options.role_arn #=> String
    #   resp.domain_status.encryption_at_rest_options.enabled #=> Boolean
    #   resp.domain_status.encryption_at_rest_options.kms_key_id #=> String
    #   resp.domain_status.node_to_node_encryption_options.enabled #=> Boolean
    #   resp.domain_status.advanced_options #=> Hash
    #   resp.domain_status.advanced_options["String"] #=> String
    #   resp.domain_status.log_publishing_options #=> Hash
    #   resp.domain_status.log_publishing_options["LogType"].cloud_watch_logs_log_group_arn #=> String
    #   resp.domain_status.log_publishing_options["LogType"].enabled #=> Boolean
    #   resp.domain_status.service_software_options.current_version #=> String
    #   resp.domain_status.service_software_options.new_version #=> String
    #   resp.domain_status.service_software_options.update_available #=> Boolean
    #   resp.domain_status.service_software_options.cancellable #=> Boolean
    #   resp.domain_status.service_software_options.update_status #=> String, one of "PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"
    #   resp.domain_status.service_software_options.description #=> String
    #   resp.domain_status.service_software_options.automated_update_date #=> Time
    #   resp.domain_status.service_software_options.optional_deployment #=> Boolean
    #   resp.domain_status.domain_endpoint_options.enforce_https #=> Boolean
    #   resp.domain_status.domain_endpoint_options.tls_security_policy #=> String, one of "Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"
    #   resp.domain_status.advanced_security_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.internal_user_database_enabled #=> Boolean
    #
    # @overload describe_elasticsearch_domain(params = {})
    # @param [Hash] params ({})
    def describe_elasticsearch_domain(params = {}, options = {})
      req = build_request(:describe_elasticsearch_domain, params)
      req.send_request(options)
    end

    # Provides cluster configuration information about the specified
    # Elasticsearch domain, such as the state, creation date, update
    # version, and update date for cluster options.
    #
    # @option params [required, String] :domain_name
    #   The Elasticsearch domain that you want to get information about.
    #
    # @return [Types::DescribeElasticsearchDomainConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeElasticsearchDomainConfigResponse#domain_config #domain_config} => Types::ElasticsearchDomainConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_elasticsearch_domain_config({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_config.elasticsearch_version.options #=> String
    #   resp.domain_config.elasticsearch_version.status.creation_date #=> Time
    #   resp.domain_config.elasticsearch_version.status.update_date #=> Time
    #   resp.domain_config.elasticsearch_version.status.update_version #=> Integer
    #   resp.domain_config.elasticsearch_version.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.elasticsearch_version.status.pending_deletion #=> Boolean
    #   resp.domain_config.elasticsearch_cluster_config.options.instance_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"
    #   resp.domain_config.elasticsearch_cluster_config.options.instance_count #=> Integer
    #   resp.domain_config.elasticsearch_cluster_config.options.dedicated_master_enabled #=> Boolean
    #   resp.domain_config.elasticsearch_cluster_config.options.zone_awareness_enabled #=> Boolean
    #   resp.domain_config.elasticsearch_cluster_config.options.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_config.elasticsearch_cluster_config.options.dedicated_master_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"
    #   resp.domain_config.elasticsearch_cluster_config.options.dedicated_master_count #=> Integer
    #   resp.domain_config.elasticsearch_cluster_config.options.warm_enabled #=> Boolean
    #   resp.domain_config.elasticsearch_cluster_config.options.warm_type #=> String, one of "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"
    #   resp.domain_config.elasticsearch_cluster_config.options.warm_count #=> Integer
    #   resp.domain_config.elasticsearch_cluster_config.status.creation_date #=> Time
    #   resp.domain_config.elasticsearch_cluster_config.status.update_date #=> Time
    #   resp.domain_config.elasticsearch_cluster_config.status.update_version #=> Integer
    #   resp.domain_config.elasticsearch_cluster_config.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.elasticsearch_cluster_config.status.pending_deletion #=> Boolean
    #   resp.domain_config.ebs_options.options.ebs_enabled #=> Boolean
    #   resp.domain_config.ebs_options.options.volume_type #=> String, one of "standard", "gp2", "io1"
    #   resp.domain_config.ebs_options.options.volume_size #=> Integer
    #   resp.domain_config.ebs_options.options.iops #=> Integer
    #   resp.domain_config.ebs_options.status.creation_date #=> Time
    #   resp.domain_config.ebs_options.status.update_date #=> Time
    #   resp.domain_config.ebs_options.status.update_version #=> Integer
    #   resp.domain_config.ebs_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.ebs_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.access_policies.options #=> String
    #   resp.domain_config.access_policies.status.creation_date #=> Time
    #   resp.domain_config.access_policies.status.update_date #=> Time
    #   resp.domain_config.access_policies.status.update_version #=> Integer
    #   resp.domain_config.access_policies.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.access_policies.status.pending_deletion #=> Boolean
    #   resp.domain_config.snapshot_options.options.automated_snapshot_start_hour #=> Integer
    #   resp.domain_config.snapshot_options.status.creation_date #=> Time
    #   resp.domain_config.snapshot_options.status.update_date #=> Time
    #   resp.domain_config.snapshot_options.status.update_version #=> Integer
    #   resp.domain_config.snapshot_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.snapshot_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.vpc_options.options.vpc_id #=> String
    #   resp.domain_config.vpc_options.options.subnet_ids #=> Array
    #   resp.domain_config.vpc_options.options.subnet_ids[0] #=> String
    #   resp.domain_config.vpc_options.options.availability_zones #=> Array
    #   resp.domain_config.vpc_options.options.availability_zones[0] #=> String
    #   resp.domain_config.vpc_options.options.security_group_ids #=> Array
    #   resp.domain_config.vpc_options.options.security_group_ids[0] #=> String
    #   resp.domain_config.vpc_options.status.creation_date #=> Time
    #   resp.domain_config.vpc_options.status.update_date #=> Time
    #   resp.domain_config.vpc_options.status.update_version #=> Integer
    #   resp.domain_config.vpc_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.vpc_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.cognito_options.options.enabled #=> Boolean
    #   resp.domain_config.cognito_options.options.user_pool_id #=> String
    #   resp.domain_config.cognito_options.options.identity_pool_id #=> String
    #   resp.domain_config.cognito_options.options.role_arn #=> String
    #   resp.domain_config.cognito_options.status.creation_date #=> Time
    #   resp.domain_config.cognito_options.status.update_date #=> Time
    #   resp.domain_config.cognito_options.status.update_version #=> Integer
    #   resp.domain_config.cognito_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.cognito_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.encryption_at_rest_options.options.enabled #=> Boolean
    #   resp.domain_config.encryption_at_rest_options.options.kms_key_id #=> String
    #   resp.domain_config.encryption_at_rest_options.status.creation_date #=> Time
    #   resp.domain_config.encryption_at_rest_options.status.update_date #=> Time
    #   resp.domain_config.encryption_at_rest_options.status.update_version #=> Integer
    #   resp.domain_config.encryption_at_rest_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.encryption_at_rest_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.node_to_node_encryption_options.options.enabled #=> Boolean
    #   resp.domain_config.node_to_node_encryption_options.status.creation_date #=> Time
    #   resp.domain_config.node_to_node_encryption_options.status.update_date #=> Time
    #   resp.domain_config.node_to_node_encryption_options.status.update_version #=> Integer
    #   resp.domain_config.node_to_node_encryption_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.node_to_node_encryption_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.advanced_options.options #=> Hash
    #   resp.domain_config.advanced_options.options["String"] #=> String
    #   resp.domain_config.advanced_options.status.creation_date #=> Time
    #   resp.domain_config.advanced_options.status.update_date #=> Time
    #   resp.domain_config.advanced_options.status.update_version #=> Integer
    #   resp.domain_config.advanced_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.advanced_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.log_publishing_options.options #=> Hash
    #   resp.domain_config.log_publishing_options.options["LogType"].cloud_watch_logs_log_group_arn #=> String
    #   resp.domain_config.log_publishing_options.options["LogType"].enabled #=> Boolean
    #   resp.domain_config.log_publishing_options.status.creation_date #=> Time
    #   resp.domain_config.log_publishing_options.status.update_date #=> Time
    #   resp.domain_config.log_publishing_options.status.update_version #=> Integer
    #   resp.domain_config.log_publishing_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.log_publishing_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.domain_endpoint_options.options.enforce_https #=> Boolean
    #   resp.domain_config.domain_endpoint_options.options.tls_security_policy #=> String, one of "Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"
    #   resp.domain_config.domain_endpoint_options.status.creation_date #=> Time
    #   resp.domain_config.domain_endpoint_options.status.update_date #=> Time
    #   resp.domain_config.domain_endpoint_options.status.update_version #=> Integer
    #   resp.domain_config.domain_endpoint_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.domain_endpoint_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.advanced_security_options.options.enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.internal_user_database_enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.status.creation_date #=> Time
    #   resp.domain_config.advanced_security_options.status.update_date #=> Time
    #   resp.domain_config.advanced_security_options.status.update_version #=> Integer
    #   resp.domain_config.advanced_security_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.advanced_security_options.status.pending_deletion #=> Boolean
    #
    # @overload describe_elasticsearch_domain_config(params = {})
    # @param [Hash] params ({})
    def describe_elasticsearch_domain_config(params = {}, options = {})
      req = build_request(:describe_elasticsearch_domain_config, params)
      req.send_request(options)
    end

    # Returns domain configuration information about the specified
    # Elasticsearch domains, including the domain ID, domain endpoint, and
    # domain ARN.
    #
    # @option params [required, Array<String>] :domain_names
    #   The Elasticsearch domains for which you want information.
    #
    # @return [Types::DescribeElasticsearchDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeElasticsearchDomainsResponse#domain_status_list #domain_status_list} => Array&lt;Types::ElasticsearchDomainStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_elasticsearch_domains({
    #     domain_names: ["DomainName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_status_list #=> Array
    #   resp.domain_status_list[0].domain_id #=> String
    #   resp.domain_status_list[0].domain_name #=> String
    #   resp.domain_status_list[0].arn #=> String
    #   resp.domain_status_list[0].created #=> Boolean
    #   resp.domain_status_list[0].deleted #=> Boolean
    #   resp.domain_status_list[0].endpoint #=> String
    #   resp.domain_status_list[0].endpoints #=> Hash
    #   resp.domain_status_list[0].endpoints["String"] #=> String
    #   resp.domain_status_list[0].processing #=> Boolean
    #   resp.domain_status_list[0].upgrade_processing #=> Boolean
    #   resp.domain_status_list[0].elasticsearch_version #=> String
    #   resp.domain_status_list[0].elasticsearch_cluster_config.instance_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"
    #   resp.domain_status_list[0].elasticsearch_cluster_config.instance_count #=> Integer
    #   resp.domain_status_list[0].elasticsearch_cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.domain_status_list[0].elasticsearch_cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.domain_status_list[0].elasticsearch_cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_status_list[0].elasticsearch_cluster_config.dedicated_master_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"
    #   resp.domain_status_list[0].elasticsearch_cluster_config.dedicated_master_count #=> Integer
    #   resp.domain_status_list[0].elasticsearch_cluster_config.warm_enabled #=> Boolean
    #   resp.domain_status_list[0].elasticsearch_cluster_config.warm_type #=> String, one of "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"
    #   resp.domain_status_list[0].elasticsearch_cluster_config.warm_count #=> Integer
    #   resp.domain_status_list[0].ebs_options.ebs_enabled #=> Boolean
    #   resp.domain_status_list[0].ebs_options.volume_type #=> String, one of "standard", "gp2", "io1"
    #   resp.domain_status_list[0].ebs_options.volume_size #=> Integer
    #   resp.domain_status_list[0].ebs_options.iops #=> Integer
    #   resp.domain_status_list[0].access_policies #=> String
    #   resp.domain_status_list[0].snapshot_options.automated_snapshot_start_hour #=> Integer
    #   resp.domain_status_list[0].vpc_options.vpc_id #=> String
    #   resp.domain_status_list[0].vpc_options.subnet_ids #=> Array
    #   resp.domain_status_list[0].vpc_options.subnet_ids[0] #=> String
    #   resp.domain_status_list[0].vpc_options.availability_zones #=> Array
    #   resp.domain_status_list[0].vpc_options.availability_zones[0] #=> String
    #   resp.domain_status_list[0].vpc_options.security_group_ids #=> Array
    #   resp.domain_status_list[0].vpc_options.security_group_ids[0] #=> String
    #   resp.domain_status_list[0].cognito_options.enabled #=> Boolean
    #   resp.domain_status_list[0].cognito_options.user_pool_id #=> String
    #   resp.domain_status_list[0].cognito_options.identity_pool_id #=> String
    #   resp.domain_status_list[0].cognito_options.role_arn #=> String
    #   resp.domain_status_list[0].encryption_at_rest_options.enabled #=> Boolean
    #   resp.domain_status_list[0].encryption_at_rest_options.kms_key_id #=> String
    #   resp.domain_status_list[0].node_to_node_encryption_options.enabled #=> Boolean
    #   resp.domain_status_list[0].advanced_options #=> Hash
    #   resp.domain_status_list[0].advanced_options["String"] #=> String
    #   resp.domain_status_list[0].log_publishing_options #=> Hash
    #   resp.domain_status_list[0].log_publishing_options["LogType"].cloud_watch_logs_log_group_arn #=> String
    #   resp.domain_status_list[0].log_publishing_options["LogType"].enabled #=> Boolean
    #   resp.domain_status_list[0].service_software_options.current_version #=> String
    #   resp.domain_status_list[0].service_software_options.new_version #=> String
    #   resp.domain_status_list[0].service_software_options.update_available #=> Boolean
    #   resp.domain_status_list[0].service_software_options.cancellable #=> Boolean
    #   resp.domain_status_list[0].service_software_options.update_status #=> String, one of "PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"
    #   resp.domain_status_list[0].service_software_options.description #=> String
    #   resp.domain_status_list[0].service_software_options.automated_update_date #=> Time
    #   resp.domain_status_list[0].service_software_options.optional_deployment #=> Boolean
    #   resp.domain_status_list[0].domain_endpoint_options.enforce_https #=> Boolean
    #   resp.domain_status_list[0].domain_endpoint_options.tls_security_policy #=> String, one of "Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"
    #   resp.domain_status_list[0].advanced_security_options.enabled #=> Boolean
    #   resp.domain_status_list[0].advanced_security_options.internal_user_database_enabled #=> Boolean
    #
    # @overload describe_elasticsearch_domains(params = {})
    # @param [Hash] params ({})
    def describe_elasticsearch_domains(params = {}, options = {})
      req = build_request(:describe_elasticsearch_domains, params)
      req.send_request(options)
    end

    # Describe Elasticsearch Limits for a given InstanceType and
    # ElasticsearchVersion. When modifying existing Domain, specify the `
    # DomainName ` to know what Limits are supported for modifying.
    #
    # @option params [String] :domain_name
    #   DomainName represents the name of the Domain that we are trying to
    #   modify. This should be present only if we are querying for
    #   Elasticsearch ` Limits ` for existing domain.
    #
    # @option params [required, String] :instance_type
    #   The instance type for an Elasticsearch cluster for which Elasticsearch
    #   ` Limits ` are needed.
    #
    # @option params [required, String] :elasticsearch_version
    #   Version of Elasticsearch for which ` Limits ` are needed.
    #
    # @return [Types::DescribeElasticsearchInstanceTypeLimitsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeElasticsearchInstanceTypeLimitsResponse#limits_by_role #limits_by_role} => Hash&lt;String,Types::Limits&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_elasticsearch_instance_type_limits({
    #     domain_name: "DomainName",
    #     instance_type: "m3.medium.elasticsearch", # required, accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, m5.large.elasticsearch, m5.xlarge.elasticsearch, m5.2xlarge.elasticsearch, m5.4xlarge.elasticsearch, m5.12xlarge.elasticsearch, r5.large.elasticsearch, r5.xlarge.elasticsearch, r5.2xlarge.elasticsearch, r5.4xlarge.elasticsearch, r5.12xlarge.elasticsearch, c5.large.elasticsearch, c5.xlarge.elasticsearch, c5.2xlarge.elasticsearch, c5.4xlarge.elasticsearch, c5.9xlarge.elasticsearch, c5.18xlarge.elasticsearch, ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch, d2.xlarge.elasticsearch, d2.2xlarge.elasticsearch, d2.4xlarge.elasticsearch, d2.8xlarge.elasticsearch, c4.large.elasticsearch, c4.xlarge.elasticsearch, c4.2xlarge.elasticsearch, c4.4xlarge.elasticsearch, c4.8xlarge.elasticsearch, r4.large.elasticsearch, r4.xlarge.elasticsearch, r4.2xlarge.elasticsearch, r4.4xlarge.elasticsearch, r4.8xlarge.elasticsearch, r4.16xlarge.elasticsearch, i3.large.elasticsearch, i3.xlarge.elasticsearch, i3.2xlarge.elasticsearch, i3.4xlarge.elasticsearch, i3.8xlarge.elasticsearch, i3.16xlarge.elasticsearch
    #     elasticsearch_version: "ElasticsearchVersionString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.limits_by_role #=> Hash
    #   resp.limits_by_role["InstanceRole"].storage_types #=> Array
    #   resp.limits_by_role["InstanceRole"].storage_types[0].storage_type_name #=> String
    #   resp.limits_by_role["InstanceRole"].storage_types[0].storage_sub_type_name #=> String
    #   resp.limits_by_role["InstanceRole"].storage_types[0].storage_type_limits #=> Array
    #   resp.limits_by_role["InstanceRole"].storage_types[0].storage_type_limits[0].limit_name #=> String
    #   resp.limits_by_role["InstanceRole"].storage_types[0].storage_type_limits[0].limit_values #=> Array
    #   resp.limits_by_role["InstanceRole"].storage_types[0].storage_type_limits[0].limit_values[0] #=> String
    #   resp.limits_by_role["InstanceRole"].instance_limits.instance_count_limits.minimum_instance_count #=> Integer
    #   resp.limits_by_role["InstanceRole"].instance_limits.instance_count_limits.maximum_instance_count #=> Integer
    #   resp.limits_by_role["InstanceRole"].additional_limits #=> Array
    #   resp.limits_by_role["InstanceRole"].additional_limits[0].limit_name #=> String
    #   resp.limits_by_role["InstanceRole"].additional_limits[0].limit_values #=> Array
    #   resp.limits_by_role["InstanceRole"].additional_limits[0].limit_values[0] #=> String
    #
    # @overload describe_elasticsearch_instance_type_limits(params = {})
    # @param [Hash] params ({})
    def describe_elasticsearch_instance_type_limits(params = {}, options = {})
      req = build_request(:describe_elasticsearch_instance_type_limits, params)
      req.send_request(options)
    end

    # Lists all the inbound cross-cluster search connections for a
    # destination domain.
    #
    # @option params [Array<Types::Filter>] :filters
    #   A list of filters used to match properties for inbound cross-cluster
    #   search connection. Available `Filter` names for this operation are: *
    #   cross-cluster-search-connection-id
    #   * source-domain-info.domain-name
    #   * source-domain-info.owner-id
    #   * source-domain-info.region
    #   * destination-domain-info.domain-name
    #
    # @option params [Integer] :max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #
    # @option params [String] :next_token
    #   NextToken is sent in case the earlier API call results contain the
    #   NextToken. It is used for pagination.
    #
    # @return [Types::DescribeInboundCrossClusterSearchConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInboundCrossClusterSearchConnectionsResponse#cross_cluster_search_connections #cross_cluster_search_connections} => Array&lt;Types::InboundCrossClusterSearchConnection&gt;
    #   * {Types::DescribeInboundCrossClusterSearchConnectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_inbound_cross_cluster_search_connections({
    #     filters: [
    #       {
    #         name: "NonEmptyString",
    #         values: ["NonEmptyString"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.cross_cluster_search_connections #=> Array
    #   resp.cross_cluster_search_connections[0].source_domain_info.owner_id #=> String
    #   resp.cross_cluster_search_connections[0].source_domain_info.domain_name #=> String
    #   resp.cross_cluster_search_connections[0].source_domain_info.region #=> String
    #   resp.cross_cluster_search_connections[0].destination_domain_info.owner_id #=> String
    #   resp.cross_cluster_search_connections[0].destination_domain_info.domain_name #=> String
    #   resp.cross_cluster_search_connections[0].destination_domain_info.region #=> String
    #   resp.cross_cluster_search_connections[0].cross_cluster_search_connection_id #=> String
    #   resp.cross_cluster_search_connections[0].connection_status.status_code #=> String, one of "PENDING_ACCEPTANCE", "APPROVED", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.cross_cluster_search_connections[0].connection_status.message #=> String
    #   resp.next_token #=> String
    #
    # @overload describe_inbound_cross_cluster_search_connections(params = {})
    # @param [Hash] params ({})
    def describe_inbound_cross_cluster_search_connections(params = {}, options = {})
      req = build_request(:describe_inbound_cross_cluster_search_connections, params)
      req.send_request(options)
    end

    # Lists all the outbound cross-cluster search connections for a source
    # domain.
    #
    # @option params [Array<Types::Filter>] :filters
    #   A list of filters used to match properties for outbound cross-cluster
    #   search connection. Available `Filter` names for this operation are: *
    #   cross-cluster-search-connection-id
    #   * destination-domain-info.domain-name
    #   * destination-domain-info.owner-id
    #   * destination-domain-info.region
    #   * source-domain-info.domain-name
    #
    # @option params [Integer] :max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #
    # @option params [String] :next_token
    #   NextToken is sent in case the earlier API call results contain the
    #   NextToken. It is used for pagination.
    #
    # @return [Types::DescribeOutboundCrossClusterSearchConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOutboundCrossClusterSearchConnectionsResponse#cross_cluster_search_connections #cross_cluster_search_connections} => Array&lt;Types::OutboundCrossClusterSearchConnection&gt;
    #   * {Types::DescribeOutboundCrossClusterSearchConnectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_outbound_cross_cluster_search_connections({
    #     filters: [
    #       {
    #         name: "NonEmptyString",
    #         values: ["NonEmptyString"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.cross_cluster_search_connections #=> Array
    #   resp.cross_cluster_search_connections[0].source_domain_info.owner_id #=> String
    #   resp.cross_cluster_search_connections[0].source_domain_info.domain_name #=> String
    #   resp.cross_cluster_search_connections[0].source_domain_info.region #=> String
    #   resp.cross_cluster_search_connections[0].destination_domain_info.owner_id #=> String
    #   resp.cross_cluster_search_connections[0].destination_domain_info.domain_name #=> String
    #   resp.cross_cluster_search_connections[0].destination_domain_info.region #=> String
    #   resp.cross_cluster_search_connections[0].cross_cluster_search_connection_id #=> String
    #   resp.cross_cluster_search_connections[0].connection_alias #=> String
    #   resp.cross_cluster_search_connections[0].connection_status.status_code #=> String, one of "PENDING_ACCEPTANCE", "VALIDATING", "VALIDATION_FAILED", "PROVISIONING", "ACTIVE", "REJECTED", "DELETING", "DELETED"
    #   resp.cross_cluster_search_connections[0].connection_status.message #=> String
    #   resp.next_token #=> String
    #
    # @overload describe_outbound_cross_cluster_search_connections(params = {})
    # @param [Hash] params ({})
    def describe_outbound_cross_cluster_search_connections(params = {}, options = {})
      req = build_request(:describe_outbound_cross_cluster_search_connections, params)
      req.send_request(options)
    end

    # Describes all packages available to Amazon ES. Includes options for
    # filtering, limiting the number of results, and pagination.
    #
    # @option params [Array<Types::DescribePackagesFilter>] :filters
    #   Only returns packages that match the `DescribePackagesFilterList`
    #   values.
    #
    # @option params [Integer] :max_results
    #   Limits results to a maximum number of packages.
    #
    # @option params [String] :next_token
    #   Used for pagination. Only necessary if a previous API call includes a
    #   non-null NextToken value. If provided, returns results for the next
    #   page.
    #
    # @return [Types::DescribePackagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePackagesResponse#package_details_list #package_details_list} => Array&lt;Types::PackageDetails&gt;
    #   * {Types::DescribePackagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_packages({
    #     filters: [
    #       {
    #         name: "PackageID", # accepts PackageID, PackageName, PackageStatus
    #         value: ["DescribePackagesFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.package_details_list #=> Array
    #   resp.package_details_list[0].package_id #=> String
    #   resp.package_details_list[0].package_name #=> String
    #   resp.package_details_list[0].package_type #=> String, one of "TXT-DICTIONARY"
    #   resp.package_details_list[0].package_description #=> String
    #   resp.package_details_list[0].package_status #=> String, one of "COPYING", "COPY_FAILED", "VALIDATING", "VALIDATION_FAILED", "AVAILABLE", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.package_details_list[0].created_at #=> Time
    #   resp.package_details_list[0].error_details.error_type #=> String
    #   resp.package_details_list[0].error_details.error_message #=> String
    #   resp.next_token #=> String
    #
    # @overload describe_packages(params = {})
    # @param [Hash] params ({})
    def describe_packages(params = {}, options = {})
      req = build_request(:describe_packages, params)
      req.send_request(options)
    end

    # Lists available reserved Elasticsearch instance offerings.
    #
    # @option params [String] :reserved_elasticsearch_instance_offering_id
    #   The offering identifier filter value. Use this parameter to show only
    #   the available offering that matches the specified reservation
    #   identifier.
    #
    # @option params [Integer] :max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #
    # @option params [String] :next_token
    #   NextToken should be sent in case if earlier API call produced result
    #   containing NextToken. It is used for pagination.
    #
    # @return [Types::DescribeReservedElasticsearchInstanceOfferingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReservedElasticsearchInstanceOfferingsResponse#next_token #next_token} => String
    #   * {Types::DescribeReservedElasticsearchInstanceOfferingsResponse#reserved_elasticsearch_instance_offerings #reserved_elasticsearch_instance_offerings} => Array&lt;Types::ReservedElasticsearchInstanceOffering&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_elasticsearch_instance_offerings({
    #     reserved_elasticsearch_instance_offering_id: "GUID",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reserved_elasticsearch_instance_offerings #=> Array
    #   resp.reserved_elasticsearch_instance_offerings[0].reserved_elasticsearch_instance_offering_id #=> String
    #   resp.reserved_elasticsearch_instance_offerings[0].elasticsearch_instance_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"
    #   resp.reserved_elasticsearch_instance_offerings[0].duration #=> Integer
    #   resp.reserved_elasticsearch_instance_offerings[0].fixed_price #=> Float
    #   resp.reserved_elasticsearch_instance_offerings[0].usage_price #=> Float
    #   resp.reserved_elasticsearch_instance_offerings[0].currency_code #=> String
    #   resp.reserved_elasticsearch_instance_offerings[0].payment_option #=> String, one of "ALL_UPFRONT", "PARTIAL_UPFRONT", "NO_UPFRONT"
    #   resp.reserved_elasticsearch_instance_offerings[0].recurring_charges #=> Array
    #   resp.reserved_elasticsearch_instance_offerings[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_elasticsearch_instance_offerings[0].recurring_charges[0].recurring_charge_frequency #=> String
    #
    # @overload describe_reserved_elasticsearch_instance_offerings(params = {})
    # @param [Hash] params ({})
    def describe_reserved_elasticsearch_instance_offerings(params = {}, options = {})
      req = build_request(:describe_reserved_elasticsearch_instance_offerings, params)
      req.send_request(options)
    end

    # Returns information about reserved Elasticsearch instances for this
    # account.
    #
    # @option params [String] :reserved_elasticsearch_instance_id
    #   The reserved instance identifier filter value. Use this parameter to
    #   show only the reservation that matches the specified reserved
    #   Elasticsearch instance ID.
    #
    # @option params [Integer] :max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #
    # @option params [String] :next_token
    #   NextToken should be sent in case if earlier API call produced result
    #   containing NextToken. It is used for pagination.
    #
    # @return [Types::DescribeReservedElasticsearchInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReservedElasticsearchInstancesResponse#next_token #next_token} => String
    #   * {Types::DescribeReservedElasticsearchInstancesResponse#reserved_elasticsearch_instances #reserved_elasticsearch_instances} => Array&lt;Types::ReservedElasticsearchInstance&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_elasticsearch_instances({
    #     reserved_elasticsearch_instance_id: "GUID",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reserved_elasticsearch_instances #=> Array
    #   resp.reserved_elasticsearch_instances[0].reservation_name #=> String
    #   resp.reserved_elasticsearch_instances[0].reserved_elasticsearch_instance_id #=> String
    #   resp.reserved_elasticsearch_instances[0].reserved_elasticsearch_instance_offering_id #=> String
    #   resp.reserved_elasticsearch_instances[0].elasticsearch_instance_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"
    #   resp.reserved_elasticsearch_instances[0].start_time #=> Time
    #   resp.reserved_elasticsearch_instances[0].duration #=> Integer
    #   resp.reserved_elasticsearch_instances[0].fixed_price #=> Float
    #   resp.reserved_elasticsearch_instances[0].usage_price #=> Float
    #   resp.reserved_elasticsearch_instances[0].currency_code #=> String
    #   resp.reserved_elasticsearch_instances[0].elasticsearch_instance_count #=> Integer
    #   resp.reserved_elasticsearch_instances[0].state #=> String
    #   resp.reserved_elasticsearch_instances[0].payment_option #=> String, one of "ALL_UPFRONT", "PARTIAL_UPFRONT", "NO_UPFRONT"
    #   resp.reserved_elasticsearch_instances[0].recurring_charges #=> Array
    #   resp.reserved_elasticsearch_instances[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_elasticsearch_instances[0].recurring_charges[0].recurring_charge_frequency #=> String
    #
    # @overload describe_reserved_elasticsearch_instances(params = {})
    # @param [Hash] params ({})
    def describe_reserved_elasticsearch_instances(params = {}, options = {})
      req = build_request(:describe_reserved_elasticsearch_instances, params)
      req.send_request(options)
    end

    # Dissociates a package from the Amazon ES domain.
    #
    # @option params [required, String] :package_id
    #   Internal ID of the package that you want to associate with a domain.
    #   Use `DescribePackages` to find this value.
    #
    # @option params [required, String] :domain_name
    #   Name of the domain that you want to associate the package with.
    #
    # @return [Types::DissociatePackageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DissociatePackageResponse#domain_package_details #domain_package_details} => Types::DomainPackageDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.dissociate_package({
    #     package_id: "PackageID", # required
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_package_details.package_id #=> String
    #   resp.domain_package_details.package_name #=> String
    #   resp.domain_package_details.package_type #=> String, one of "TXT-DICTIONARY"
    #   resp.domain_package_details.last_updated #=> Time
    #   resp.domain_package_details.domain_name #=> String
    #   resp.domain_package_details.domain_package_status #=> String, one of "ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"
    #   resp.domain_package_details.reference_path #=> String
    #   resp.domain_package_details.error_details.error_type #=> String
    #   resp.domain_package_details.error_details.error_message #=> String
    #
    # @overload dissociate_package(params = {})
    # @param [Hash] params ({})
    def dissociate_package(params = {}, options = {})
      req = build_request(:dissociate_package, params)
      req.send_request(options)
    end

    # Returns a list of upgrade compatible Elastisearch versions. You can
    # optionally pass a ` DomainName ` to get all upgrade compatible
    # Elasticsearch versions for that specific domain.
    #
    # @option params [String] :domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @return [Types::GetCompatibleElasticsearchVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCompatibleElasticsearchVersionsResponse#compatible_elasticsearch_versions #compatible_elasticsearch_versions} => Array&lt;Types::CompatibleVersionsMap&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compatible_elasticsearch_versions({
    #     domain_name: "DomainName",
    #   })
    #
    # @example Response structure
    #
    #   resp.compatible_elasticsearch_versions #=> Array
    #   resp.compatible_elasticsearch_versions[0].source_version #=> String
    #   resp.compatible_elasticsearch_versions[0].target_versions #=> Array
    #   resp.compatible_elasticsearch_versions[0].target_versions[0] #=> String
    #
    # @overload get_compatible_elasticsearch_versions(params = {})
    # @param [Hash] params ({})
    def get_compatible_elasticsearch_versions(params = {}, options = {})
      req = build_request(:get_compatible_elasticsearch_versions, params)
      req.send_request(options)
    end

    # Retrieves the complete history of the last 10 upgrades that were
    # performed on the domain.
    #
    # @option params [required, String] :domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @option params [Integer] :max_results
    #   Set this value to limit the number of results returned.
    #
    # @option params [String] :next_token
    #   Paginated APIs accepts NextToken input to returns next page results
    #   and provides a NextToken output in the response which can be used by
    #   the client to retrieve more results.
    #
    # @return [Types::GetUpgradeHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUpgradeHistoryResponse#upgrade_histories #upgrade_histories} => Array&lt;Types::UpgradeHistory&gt;
    #   * {Types::GetUpgradeHistoryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_upgrade_history({
    #     domain_name: "DomainName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.upgrade_histories #=> Array
    #   resp.upgrade_histories[0].upgrade_name #=> String
    #   resp.upgrade_histories[0].start_timestamp #=> Time
    #   resp.upgrade_histories[0].upgrade_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "SUCCEEDED_WITH_ISSUES", "FAILED"
    #   resp.upgrade_histories[0].steps_list #=> Array
    #   resp.upgrade_histories[0].steps_list[0].upgrade_step #=> String, one of "PRE_UPGRADE_CHECK", "SNAPSHOT", "UPGRADE"
    #   resp.upgrade_histories[0].steps_list[0].upgrade_step_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "SUCCEEDED_WITH_ISSUES", "FAILED"
    #   resp.upgrade_histories[0].steps_list[0].issues #=> Array
    #   resp.upgrade_histories[0].steps_list[0].issues[0] #=> String
    #   resp.upgrade_histories[0].steps_list[0].progress_percent #=> Float
    #   resp.next_token #=> String
    #
    # @overload get_upgrade_history(params = {})
    # @param [Hash] params ({})
    def get_upgrade_history(params = {}, options = {})
      req = build_request(:get_upgrade_history, params)
      req.send_request(options)
    end

    # Retrieves the latest status of the last upgrade or upgrade eligibility
    # check that was performed on the domain.
    #
    # @option params [required, String] :domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @return [Types::GetUpgradeStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUpgradeStatusResponse#upgrade_step #upgrade_step} => String
    #   * {Types::GetUpgradeStatusResponse#step_status #step_status} => String
    #   * {Types::GetUpgradeStatusResponse#upgrade_name #upgrade_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_upgrade_status({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.upgrade_step #=> String, one of "PRE_UPGRADE_CHECK", "SNAPSHOT", "UPGRADE"
    #   resp.step_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "SUCCEEDED_WITH_ISSUES", "FAILED"
    #   resp.upgrade_name #=> String
    #
    # @overload get_upgrade_status(params = {})
    # @param [Hash] params ({})
    def get_upgrade_status(params = {}, options = {})
      req = build_request(:get_upgrade_status, params)
      req.send_request(options)
    end

    # Returns the name of all Elasticsearch domains owned by the current
    # user's account.
    #
    # @return [Types::ListDomainNamesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainNamesResponse#domain_names #domain_names} => Array&lt;Types::DomainInfo&gt;
    #
    # @example Response structure
    #
    #   resp.domain_names #=> Array
    #   resp.domain_names[0].domain_name #=> String
    #
    # @overload list_domain_names(params = {})
    # @param [Hash] params ({})
    def list_domain_names(params = {}, options = {})
      req = build_request(:list_domain_names, params)
      req.send_request(options)
    end

    # Lists all Amazon ES domains associated with the package.
    #
    # @option params [required, String] :package_id
    #   The package for which to list domains.
    #
    # @option params [Integer] :max_results
    #   Limits results to a maximum number of domains.
    #
    # @option params [String] :next_token
    #   Used for pagination. Only necessary if a previous API call includes a
    #   non-null NextToken value. If provided, returns results for the next
    #   page.
    #
    # @return [Types::ListDomainsForPackageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainsForPackageResponse#domain_package_details_list #domain_package_details_list} => Array&lt;Types::DomainPackageDetails&gt;
    #   * {Types::ListDomainsForPackageResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains_for_package({
    #     package_id: "PackageID", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_package_details_list #=> Array
    #   resp.domain_package_details_list[0].package_id #=> String
    #   resp.domain_package_details_list[0].package_name #=> String
    #   resp.domain_package_details_list[0].package_type #=> String, one of "TXT-DICTIONARY"
    #   resp.domain_package_details_list[0].last_updated #=> Time
    #   resp.domain_package_details_list[0].domain_name #=> String
    #   resp.domain_package_details_list[0].domain_package_status #=> String, one of "ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"
    #   resp.domain_package_details_list[0].reference_path #=> String
    #   resp.domain_package_details_list[0].error_details.error_type #=> String
    #   resp.domain_package_details_list[0].error_details.error_message #=> String
    #   resp.next_token #=> String
    #
    # @overload list_domains_for_package(params = {})
    # @param [Hash] params ({})
    def list_domains_for_package(params = {}, options = {})
      req = build_request(:list_domains_for_package, params)
      req.send_request(options)
    end

    # List all Elasticsearch instance types that are supported for given
    # ElasticsearchVersion
    #
    # @option params [required, String] :elasticsearch_version
    #   Version of Elasticsearch for which list of supported elasticsearch
    #   instance types are needed.
    #
    # @option params [String] :domain_name
    #   DomainName represents the name of the Domain that we are trying to
    #   modify. This should be present only if we are querying for list of
    #   available Elasticsearch instance types when modifying existing domain.
    #
    # @option params [Integer] :max_results
    #   Set this value to limit the number of results returned. Value provided
    #   must be greater than 30 else it wont be honored.
    #
    # @option params [String] :next_token
    #   NextToken should be sent in case if earlier API call produced result
    #   containing NextToken. It is used for pagination.
    #
    # @return [Types::ListElasticsearchInstanceTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListElasticsearchInstanceTypesResponse#elasticsearch_instance_types #elasticsearch_instance_types} => Array&lt;String&gt;
    #   * {Types::ListElasticsearchInstanceTypesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_elasticsearch_instance_types({
    #     elasticsearch_version: "ElasticsearchVersionString", # required
    #     domain_name: "DomainName",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.elasticsearch_instance_types #=> Array
    #   resp.elasticsearch_instance_types[0] #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"
    #   resp.next_token #=> String
    #
    # @overload list_elasticsearch_instance_types(params = {})
    # @param [Hash] params ({})
    def list_elasticsearch_instance_types(params = {}, options = {})
      req = build_request(:list_elasticsearch_instance_types, params)
      req.send_request(options)
    end

    # List all supported Elasticsearch versions
    #
    # @option params [Integer] :max_results
    #   Set this value to limit the number of results returned. Value provided
    #   must be greater than 10 else it wont be honored.
    #
    # @option params [String] :next_token
    #   Paginated APIs accepts NextToken input to returns next page results
    #   and provides a NextToken output in the response which can be used by
    #   the client to retrieve more results.
    #
    # @return [Types::ListElasticsearchVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListElasticsearchVersionsResponse#elasticsearch_versions #elasticsearch_versions} => Array&lt;String&gt;
    #   * {Types::ListElasticsearchVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_elasticsearch_versions({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.elasticsearch_versions #=> Array
    #   resp.elasticsearch_versions[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_elasticsearch_versions(params = {})
    # @param [Hash] params ({})
    def list_elasticsearch_versions(params = {}, options = {})
      req = build_request(:list_elasticsearch_versions, params)
      req.send_request(options)
    end

    # Lists all packages associated with the Amazon ES domain.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain for which you want to list associated packages.
    #
    # @option params [Integer] :max_results
    #   Limits results to a maximum number of packages.
    #
    # @option params [String] :next_token
    #   Used for pagination. Only necessary if a previous API call includes a
    #   non-null NextToken value. If provided, returns results for the next
    #   page.
    #
    # @return [Types::ListPackagesForDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPackagesForDomainResponse#domain_package_details_list #domain_package_details_list} => Array&lt;Types::DomainPackageDetails&gt;
    #   * {Types::ListPackagesForDomainResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_packages_for_domain({
    #     domain_name: "DomainName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_package_details_list #=> Array
    #   resp.domain_package_details_list[0].package_id #=> String
    #   resp.domain_package_details_list[0].package_name #=> String
    #   resp.domain_package_details_list[0].package_type #=> String, one of "TXT-DICTIONARY"
    #   resp.domain_package_details_list[0].last_updated #=> Time
    #   resp.domain_package_details_list[0].domain_name #=> String
    #   resp.domain_package_details_list[0].domain_package_status #=> String, one of "ASSOCIATING", "ASSOCIATION_FAILED", "ACTIVE", "DISSOCIATING", "DISSOCIATION_FAILED"
    #   resp.domain_package_details_list[0].reference_path #=> String
    #   resp.domain_package_details_list[0].error_details.error_type #=> String
    #   resp.domain_package_details_list[0].error_details.error_message #=> String
    #   resp.next_token #=> String
    #
    # @overload list_packages_for_domain(params = {})
    # @param [Hash] params ({})
    def list_packages_for_domain(params = {}, options = {})
      req = build_request(:list_packages_for_domain, params)
      req.send_request(options)
    end

    # Returns all tags for the given Elasticsearch domain.
    #
    # @option params [required, String] :arn
    #   Specify the `ARN` for the Elasticsearch domain to which the tags are
    #   attached that you want to view.
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Allows you to purchase reserved Elasticsearch instances.
    #
    # @option params [required, String] :reserved_elasticsearch_instance_offering_id
    #   The ID of the reserved Elasticsearch instance offering to purchase.
    #
    # @option params [required, String] :reservation_name
    #   A customer-specified identifier to track this reservation.
    #
    # @option params [Integer] :instance_count
    #   The number of Elasticsearch instances to reserve.
    #
    # @return [Types::PurchaseReservedElasticsearchInstanceOfferingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PurchaseReservedElasticsearchInstanceOfferingResponse#reserved_elasticsearch_instance_id #reserved_elasticsearch_instance_id} => String
    #   * {Types::PurchaseReservedElasticsearchInstanceOfferingResponse#reservation_name #reservation_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_reserved_elasticsearch_instance_offering({
    #     reserved_elasticsearch_instance_offering_id: "GUID", # required
    #     reservation_name: "ReservationToken", # required
    #     instance_count: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.reserved_elasticsearch_instance_id #=> String
    #   resp.reservation_name #=> String
    #
    # @overload purchase_reserved_elasticsearch_instance_offering(params = {})
    # @param [Hash] params ({})
    def purchase_reserved_elasticsearch_instance_offering(params = {}, options = {})
      req = build_request(:purchase_reserved_elasticsearch_instance_offering, params)
      req.send_request(options)
    end

    # Allows the destination domain owner to reject an inbound cross-cluster
    # search connection request.
    #
    # @option params [required, String] :cross_cluster_search_connection_id
    #   The id of the inbound connection that you want to reject.
    #
    # @return [Types::RejectInboundCrossClusterSearchConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectInboundCrossClusterSearchConnectionResponse#cross_cluster_search_connection #cross_cluster_search_connection} => Types::InboundCrossClusterSearchConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_inbound_cross_cluster_search_connection({
    #     cross_cluster_search_connection_id: "CrossClusterSearchConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cross_cluster_search_connection.source_domain_info.owner_id #=> String
    #   resp.cross_cluster_search_connection.source_domain_info.domain_name #=> String
    #   resp.cross_cluster_search_connection.source_domain_info.region #=> String
    #   resp.cross_cluster_search_connection.destination_domain_info.owner_id #=> String
    #   resp.cross_cluster_search_connection.destination_domain_info.domain_name #=> String
    #   resp.cross_cluster_search_connection.destination_domain_info.region #=> String
    #   resp.cross_cluster_search_connection.cross_cluster_search_connection_id #=> String
    #   resp.cross_cluster_search_connection.connection_status.status_code #=> String, one of "PENDING_ACCEPTANCE", "APPROVED", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.cross_cluster_search_connection.connection_status.message #=> String
    #
    # @overload reject_inbound_cross_cluster_search_connection(params = {})
    # @param [Hash] params ({})
    def reject_inbound_cross_cluster_search_connection(params = {}, options = {})
      req = build_request(:reject_inbound_cross_cluster_search_connection, params)
      req.send_request(options)
    end

    # Removes the specified set of tags from the specified Elasticsearch
    # domain.
    #
    # @option params [required, String] :arn
    #   Specifies the `ARN` for the Elasticsearch domain from which you want
    #   to delete the specified tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Specifies the `TagKey` list which you want to remove from the
    #   Elasticsearch domain.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags({
    #     arn: "ARN", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @overload remove_tags(params = {})
    # @param [Hash] params ({})
    def remove_tags(params = {}, options = {})
      req = build_request(:remove_tags, params)
      req.send_request(options)
    end

    # Schedules a service software update for an Amazon ES domain.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to update to the latest service
    #   software.
    #
    # @return [Types::StartElasticsearchServiceSoftwareUpdateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartElasticsearchServiceSoftwareUpdateResponse#service_software_options #service_software_options} => Types::ServiceSoftwareOptions
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_elasticsearch_service_software_update({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_software_options.current_version #=> String
    #   resp.service_software_options.new_version #=> String
    #   resp.service_software_options.update_available #=> Boolean
    #   resp.service_software_options.cancellable #=> Boolean
    #   resp.service_software_options.update_status #=> String, one of "PENDING_UPDATE", "IN_PROGRESS", "COMPLETED", "NOT_ELIGIBLE", "ELIGIBLE"
    #   resp.service_software_options.description #=> String
    #   resp.service_software_options.automated_update_date #=> Time
    #   resp.service_software_options.optional_deployment #=> Boolean
    #
    # @overload start_elasticsearch_service_software_update(params = {})
    # @param [Hash] params ({})
    def start_elasticsearch_service_software_update(params = {}, options = {})
      req = build_request(:start_elasticsearch_service_software_update, params)
      req.send_request(options)
    end

    # Modifies the cluster configuration of the specified Elasticsearch
    # domain, setting as setting the instance type and the number of
    # instances.
    #
    # @option params [required, String] :domain_name
    #   The name of the Elasticsearch domain that you are updating.
    #
    # @option params [Types::ElasticsearchClusterConfig] :elasticsearch_cluster_config
    #   The type and number of instances to instantiate for the domain
    #   cluster.
    #
    # @option params [Types::EBSOptions] :ebs_options
    #   Specify the type and size of the EBS volume that you want to use.
    #
    # @option params [Types::SnapshotOptions] :snapshot_options
    #   Option to set the time, in UTC format, for the daily automated
    #   snapshot. Default value is `0` hours.
    #
    # @option params [Types::VPCOptions] :vpc_options
    #   Options to specify the subnets and security groups for VPC endpoint.
    #   For more information, see [Creating a VPC][1] in *VPC Endpoints for
    #   Amazon Elasticsearch Service Domains*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc
    #
    # @option params [Types::CognitoOptions] :cognito_options
    #   Options to specify the Cognito user and identity pools for Kibana
    #   authentication. For more information, see [Amazon Cognito
    #   Authentication for Kibana][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html
    #
    # @option params [Hash<String,String>] :advanced_options
    #   Modifies the advanced option to allow references to indices in an HTTP
    #   request body. Must be `false` when configuring access to individual
    #   sub-resources. By default, the value is `true`. See [Configuration
    #   Advanced Options][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options
    #
    # @option params [String] :access_policies
    #   IAM access policy as a JSON-formatted string.
    #
    # @option params [Hash<String,Types::LogPublishingOption>] :log_publishing_options
    #   Map of `LogType` and `LogPublishingOption`, each containing options to
    #   publish a given type of Elasticsearch log.
    #
    # @option params [Types::DomainEndpointOptions] :domain_endpoint_options
    #   Options to specify configuration that will be applied to the domain
    #   endpoint.
    #
    # @option params [Types::AdvancedSecurityOptionsInput] :advanced_security_options
    #   Specifies advanced security options.
    #
    # @return [Types::UpdateElasticsearchDomainConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateElasticsearchDomainConfigResponse#domain_config #domain_config} => Types::ElasticsearchDomainConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_elasticsearch_domain_config({
    #     domain_name: "DomainName", # required
    #     elasticsearch_cluster_config: {
    #       instance_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, m5.large.elasticsearch, m5.xlarge.elasticsearch, m5.2xlarge.elasticsearch, m5.4xlarge.elasticsearch, m5.12xlarge.elasticsearch, r5.large.elasticsearch, r5.xlarge.elasticsearch, r5.2xlarge.elasticsearch, r5.4xlarge.elasticsearch, r5.12xlarge.elasticsearch, c5.large.elasticsearch, c5.xlarge.elasticsearch, c5.2xlarge.elasticsearch, c5.4xlarge.elasticsearch, c5.9xlarge.elasticsearch, c5.18xlarge.elasticsearch, ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch, d2.xlarge.elasticsearch, d2.2xlarge.elasticsearch, d2.4xlarge.elasticsearch, d2.8xlarge.elasticsearch, c4.large.elasticsearch, c4.xlarge.elasticsearch, c4.2xlarge.elasticsearch, c4.4xlarge.elasticsearch, c4.8xlarge.elasticsearch, r4.large.elasticsearch, r4.xlarge.elasticsearch, r4.2xlarge.elasticsearch, r4.4xlarge.elasticsearch, r4.8xlarge.elasticsearch, r4.16xlarge.elasticsearch, i3.large.elasticsearch, i3.xlarge.elasticsearch, i3.2xlarge.elasticsearch, i3.4xlarge.elasticsearch, i3.8xlarge.elasticsearch, i3.16xlarge.elasticsearch
    #       instance_count: 1,
    #       dedicated_master_enabled: false,
    #       zone_awareness_enabled: false,
    #       zone_awareness_config: {
    #         availability_zone_count: 1,
    #       },
    #       dedicated_master_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, m5.large.elasticsearch, m5.xlarge.elasticsearch, m5.2xlarge.elasticsearch, m5.4xlarge.elasticsearch, m5.12xlarge.elasticsearch, r5.large.elasticsearch, r5.xlarge.elasticsearch, r5.2xlarge.elasticsearch, r5.4xlarge.elasticsearch, r5.12xlarge.elasticsearch, c5.large.elasticsearch, c5.xlarge.elasticsearch, c5.2xlarge.elasticsearch, c5.4xlarge.elasticsearch, c5.9xlarge.elasticsearch, c5.18xlarge.elasticsearch, ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch, d2.xlarge.elasticsearch, d2.2xlarge.elasticsearch, d2.4xlarge.elasticsearch, d2.8xlarge.elasticsearch, c4.large.elasticsearch, c4.xlarge.elasticsearch, c4.2xlarge.elasticsearch, c4.4xlarge.elasticsearch, c4.8xlarge.elasticsearch, r4.large.elasticsearch, r4.xlarge.elasticsearch, r4.2xlarge.elasticsearch, r4.4xlarge.elasticsearch, r4.8xlarge.elasticsearch, r4.16xlarge.elasticsearch, i3.large.elasticsearch, i3.xlarge.elasticsearch, i3.2xlarge.elasticsearch, i3.4xlarge.elasticsearch, i3.8xlarge.elasticsearch, i3.16xlarge.elasticsearch
    #       dedicated_master_count: 1,
    #       warm_enabled: false,
    #       warm_type: "ultrawarm1.medium.elasticsearch", # accepts ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch
    #       warm_count: 1,
    #     },
    #     ebs_options: {
    #       ebs_enabled: false,
    #       volume_type: "standard", # accepts standard, gp2, io1
    #       volume_size: 1,
    #       iops: 1,
    #     },
    #     snapshot_options: {
    #       automated_snapshot_start_hour: 1,
    #     },
    #     vpc_options: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #     },
    #     cognito_options: {
    #       enabled: false,
    #       user_pool_id: "UserPoolId",
    #       identity_pool_id: "IdentityPoolId",
    #       role_arn: "RoleArn",
    #     },
    #     advanced_options: {
    #       "String" => "String",
    #     },
    #     access_policies: "PolicyDocument",
    #     log_publishing_options: {
    #       "INDEX_SLOW_LOGS" => {
    #         cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #         enabled: false,
    #       },
    #     },
    #     domain_endpoint_options: {
    #       enforce_https: false,
    #       tls_security_policy: "Policy-Min-TLS-1-0-2019-07", # accepts Policy-Min-TLS-1-0-2019-07, Policy-Min-TLS-1-2-2019-07
    #     },
    #     advanced_security_options: {
    #       enabled: false,
    #       internal_user_database_enabled: false,
    #       master_user_options: {
    #         master_user_arn: "ARN",
    #         master_user_name: "Username",
    #         master_user_password: "Password",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_config.elasticsearch_version.options #=> String
    #   resp.domain_config.elasticsearch_version.status.creation_date #=> Time
    #   resp.domain_config.elasticsearch_version.status.update_date #=> Time
    #   resp.domain_config.elasticsearch_version.status.update_version #=> Integer
    #   resp.domain_config.elasticsearch_version.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.elasticsearch_version.status.pending_deletion #=> Boolean
    #   resp.domain_config.elasticsearch_cluster_config.options.instance_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"
    #   resp.domain_config.elasticsearch_cluster_config.options.instance_count #=> Integer
    #   resp.domain_config.elasticsearch_cluster_config.options.dedicated_master_enabled #=> Boolean
    #   resp.domain_config.elasticsearch_cluster_config.options.zone_awareness_enabled #=> Boolean
    #   resp.domain_config.elasticsearch_cluster_config.options.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_config.elasticsearch_cluster_config.options.dedicated_master_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "m5.large.elasticsearch", "m5.xlarge.elasticsearch", "m5.2xlarge.elasticsearch", "m5.4xlarge.elasticsearch", "m5.12xlarge.elasticsearch", "r5.large.elasticsearch", "r5.xlarge.elasticsearch", "r5.2xlarge.elasticsearch", "r5.4xlarge.elasticsearch", "r5.12xlarge.elasticsearch", "c5.large.elasticsearch", "c5.xlarge.elasticsearch", "c5.2xlarge.elasticsearch", "c5.4xlarge.elasticsearch", "c5.9xlarge.elasticsearch", "c5.18xlarge.elasticsearch", "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch", "i3.16xlarge.elasticsearch"
    #   resp.domain_config.elasticsearch_cluster_config.options.dedicated_master_count #=> Integer
    #   resp.domain_config.elasticsearch_cluster_config.options.warm_enabled #=> Boolean
    #   resp.domain_config.elasticsearch_cluster_config.options.warm_type #=> String, one of "ultrawarm1.medium.elasticsearch", "ultrawarm1.large.elasticsearch"
    #   resp.domain_config.elasticsearch_cluster_config.options.warm_count #=> Integer
    #   resp.domain_config.elasticsearch_cluster_config.status.creation_date #=> Time
    #   resp.domain_config.elasticsearch_cluster_config.status.update_date #=> Time
    #   resp.domain_config.elasticsearch_cluster_config.status.update_version #=> Integer
    #   resp.domain_config.elasticsearch_cluster_config.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.elasticsearch_cluster_config.status.pending_deletion #=> Boolean
    #   resp.domain_config.ebs_options.options.ebs_enabled #=> Boolean
    #   resp.domain_config.ebs_options.options.volume_type #=> String, one of "standard", "gp2", "io1"
    #   resp.domain_config.ebs_options.options.volume_size #=> Integer
    #   resp.domain_config.ebs_options.options.iops #=> Integer
    #   resp.domain_config.ebs_options.status.creation_date #=> Time
    #   resp.domain_config.ebs_options.status.update_date #=> Time
    #   resp.domain_config.ebs_options.status.update_version #=> Integer
    #   resp.domain_config.ebs_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.ebs_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.access_policies.options #=> String
    #   resp.domain_config.access_policies.status.creation_date #=> Time
    #   resp.domain_config.access_policies.status.update_date #=> Time
    #   resp.domain_config.access_policies.status.update_version #=> Integer
    #   resp.domain_config.access_policies.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.access_policies.status.pending_deletion #=> Boolean
    #   resp.domain_config.snapshot_options.options.automated_snapshot_start_hour #=> Integer
    #   resp.domain_config.snapshot_options.status.creation_date #=> Time
    #   resp.domain_config.snapshot_options.status.update_date #=> Time
    #   resp.domain_config.snapshot_options.status.update_version #=> Integer
    #   resp.domain_config.snapshot_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.snapshot_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.vpc_options.options.vpc_id #=> String
    #   resp.domain_config.vpc_options.options.subnet_ids #=> Array
    #   resp.domain_config.vpc_options.options.subnet_ids[0] #=> String
    #   resp.domain_config.vpc_options.options.availability_zones #=> Array
    #   resp.domain_config.vpc_options.options.availability_zones[0] #=> String
    #   resp.domain_config.vpc_options.options.security_group_ids #=> Array
    #   resp.domain_config.vpc_options.options.security_group_ids[0] #=> String
    #   resp.domain_config.vpc_options.status.creation_date #=> Time
    #   resp.domain_config.vpc_options.status.update_date #=> Time
    #   resp.domain_config.vpc_options.status.update_version #=> Integer
    #   resp.domain_config.vpc_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.vpc_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.cognito_options.options.enabled #=> Boolean
    #   resp.domain_config.cognito_options.options.user_pool_id #=> String
    #   resp.domain_config.cognito_options.options.identity_pool_id #=> String
    #   resp.domain_config.cognito_options.options.role_arn #=> String
    #   resp.domain_config.cognito_options.status.creation_date #=> Time
    #   resp.domain_config.cognito_options.status.update_date #=> Time
    #   resp.domain_config.cognito_options.status.update_version #=> Integer
    #   resp.domain_config.cognito_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.cognito_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.encryption_at_rest_options.options.enabled #=> Boolean
    #   resp.domain_config.encryption_at_rest_options.options.kms_key_id #=> String
    #   resp.domain_config.encryption_at_rest_options.status.creation_date #=> Time
    #   resp.domain_config.encryption_at_rest_options.status.update_date #=> Time
    #   resp.domain_config.encryption_at_rest_options.status.update_version #=> Integer
    #   resp.domain_config.encryption_at_rest_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.encryption_at_rest_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.node_to_node_encryption_options.options.enabled #=> Boolean
    #   resp.domain_config.node_to_node_encryption_options.status.creation_date #=> Time
    #   resp.domain_config.node_to_node_encryption_options.status.update_date #=> Time
    #   resp.domain_config.node_to_node_encryption_options.status.update_version #=> Integer
    #   resp.domain_config.node_to_node_encryption_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.node_to_node_encryption_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.advanced_options.options #=> Hash
    #   resp.domain_config.advanced_options.options["String"] #=> String
    #   resp.domain_config.advanced_options.status.creation_date #=> Time
    #   resp.domain_config.advanced_options.status.update_date #=> Time
    #   resp.domain_config.advanced_options.status.update_version #=> Integer
    #   resp.domain_config.advanced_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.advanced_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.log_publishing_options.options #=> Hash
    #   resp.domain_config.log_publishing_options.options["LogType"].cloud_watch_logs_log_group_arn #=> String
    #   resp.domain_config.log_publishing_options.options["LogType"].enabled #=> Boolean
    #   resp.domain_config.log_publishing_options.status.creation_date #=> Time
    #   resp.domain_config.log_publishing_options.status.update_date #=> Time
    #   resp.domain_config.log_publishing_options.status.update_version #=> Integer
    #   resp.domain_config.log_publishing_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.log_publishing_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.domain_endpoint_options.options.enforce_https #=> Boolean
    #   resp.domain_config.domain_endpoint_options.options.tls_security_policy #=> String, one of "Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"
    #   resp.domain_config.domain_endpoint_options.status.creation_date #=> Time
    #   resp.domain_config.domain_endpoint_options.status.update_date #=> Time
    #   resp.domain_config.domain_endpoint_options.status.update_version #=> Integer
    #   resp.domain_config.domain_endpoint_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.domain_endpoint_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.advanced_security_options.options.enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.internal_user_database_enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.status.creation_date #=> Time
    #   resp.domain_config.advanced_security_options.status.update_date #=> Time
    #   resp.domain_config.advanced_security_options.status.update_version #=> Integer
    #   resp.domain_config.advanced_security_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.advanced_security_options.status.pending_deletion #=> Boolean
    #
    # @overload update_elasticsearch_domain_config(params = {})
    # @param [Hash] params ({})
    def update_elasticsearch_domain_config(params = {}, options = {})
      req = build_request(:update_elasticsearch_domain_config, params)
      req.send_request(options)
    end

    # Allows you to either upgrade your domain or perform an Upgrade
    # eligibility check to a compatible Elasticsearch version.
    #
    # @option params [required, String] :domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @option params [required, String] :target_version
    #   The version of Elasticsearch that you intend to upgrade the domain to.
    #
    # @option params [Boolean] :perform_check_only
    #   This flag, when set to True, indicates that an Upgrade Eligibility
    #   Check needs to be performed. This will not actually perform the
    #   Upgrade.
    #
    # @return [Types::UpgradeElasticsearchDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpgradeElasticsearchDomainResponse#domain_name #domain_name} => String
    #   * {Types::UpgradeElasticsearchDomainResponse#target_version #target_version} => String
    #   * {Types::UpgradeElasticsearchDomainResponse#perform_check_only #perform_check_only} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upgrade_elasticsearch_domain({
    #     domain_name: "DomainName", # required
    #     target_version: "ElasticsearchVersionString", # required
    #     perform_check_only: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.target_version #=> String
    #   resp.perform_check_only #=> Boolean
    #
    # @overload upgrade_elasticsearch_domain(params = {})
    # @param [Hash] params ({})
    def upgrade_elasticsearch_domain(params = {}, options = {})
      req = build_request(:upgrade_elasticsearch_domain, params)
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
      context[:gem_name] = 'aws-sdk-elasticsearchservice'
      context[:gem_version] = '1.36.0'
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
