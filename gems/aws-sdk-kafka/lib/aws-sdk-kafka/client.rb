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

Aws::Plugins::GlobalConfiguration.add_identifier(:kafka)

module Aws::Kafka
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :kafka

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

    # Creates a new MSK cluster.
    #
    # @option params [required, Types::BrokerNodeGroupInfo] :broker_node_group_info
    #   Information about the broker nodes in the cluster.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster.
    #
    # @option params [Types::ConfigurationInfo] :configuration_info
    #   Comprises of the Configuration to be used on Kafka brokers in a
    #   cluster.
    #
    # @option params [Types::EncryptionInfo] :encryption_info
    #   Includes all encryption-related information.
    #
    # @option params [String] :enhanced_monitoring
    #   Specifies the level of monitoring for the MSK cluster. The possible
    #   values are DEFAULT, PER\_BROKER, and PER\_TOPIC\_PER\_BROKER.
    #
    # @option params [required, String] :kafka_version
    #   The version of Apache Kafka.
    #
    # @option params [required, Integer] :number_of_broker_nodes
    #   The number of Kafka broker nodes in the Amazon MSK cluster.
    #
    # @return [Types::CreateClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterResponse#cluster_arn #cluster_arn} => String
    #   * {Types::CreateClusterResponse#cluster_name #cluster_name} => String
    #   * {Types::CreateClusterResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster({
    #     broker_node_group_info: { # required
    #       broker_az_distribution: "DEFAULT", # accepts DEFAULT
    #       client_subnets: ["__string"], # required
    #       instance_type: "__stringMin5Max32", # required
    #       security_groups: ["__string"],
    #       storage_info: {
    #         ebs_storage_info: {
    #           volume_size: 1,
    #         },
    #       },
    #     },
    #     cluster_name: "__stringMin1Max64", # required
    #     configuration_info: {
    #       arn: "__string", # required
    #       revision: 1, # required
    #     },
    #     encryption_info: {
    #       encryption_at_rest: {
    #         data_volume_kms_key_id: "__string", # required
    #       },
    #     },
    #     enhanced_monitoring: "DEFAULT", # accepts DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER
    #     kafka_version: "__stringMin1Max128", # required
    #     number_of_broker_nodes: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_arn #=> String
    #   resp.cluster_name #=> String
    #   resp.state #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Creates a new MSK configuration.
    #
    # @option params [String] :description
    #   The description of the configuration.
    #
    # @option params [required, Array<String>] :kafka_versions
    #   The versions of Apache Kafka with which you can use this MSK
    #   configuration.
    #
    # @option params [required, String] :name
    #   The name of the configuration.
    #
    # @option params [required, String, IO] :server_properties
    #   Contents of the server.properties file. When using the API, you must
    #   ensure that the contents of the file are base64 encoded. When using
    #   the AWS Management Console, the SDK, or the AWS CLI, the contents of
    #   server.properties can be in plaintext.
    #
    # @return [Types::CreateConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConfigurationResponse#arn #arn} => String
    #   * {Types::CreateConfigurationResponse#creation_time #creation_time} => Time
    #   * {Types::CreateConfigurationResponse#latest_revision #latest_revision} => Types::ConfigurationRevision
    #   * {Types::CreateConfigurationResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration({
    #     description: "__string",
    #     kafka_versions: ["__string"], # required
    #     name: "__string", # required
    #     server_properties: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.latest_revision.creation_time #=> Time
    #   resp.latest_revision.description #=> String
    #   resp.latest_revision.revision #=> Integer
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateConfiguration AWS API Documentation
    #
    # @overload create_configuration(params = {})
    # @param [Hash] params ({})
    def create_configuration(params = {}, options = {})
      req = build_request(:create_configuration, params)
      req.send_request(options)
    end

    # Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in
    # the request.
    #
    # @option params [required, String] :cluster_arn
    #
    # @option params [String] :current_version
    #
    # @return [Types::DeleteClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteClusterResponse#cluster_arn #cluster_arn} => String
    #   * {Types::DeleteClusterResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster({
    #     cluster_arn: "__string", # required
    #     current_version: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_arn #=> String
    #   resp.state #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteCluster AWS API Documentation
    #
    # @overload delete_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cluster(params = {}, options = {})
      req = build_request(:delete_cluster, params)
      req.send_request(options)
    end

    # Returns a description of the MSK cluster whose Amazon Resource Name
    # (ARN) is specified in the request.
    #
    # @option params [required, String] :cluster_arn
    #
    # @return [Types::DescribeClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClusterResponse#cluster_info #cluster_info} => Types::ClusterInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster({
    #     cluster_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_info.broker_node_group_info.broker_az_distribution #=> String, one of "DEFAULT"
    #   resp.cluster_info.broker_node_group_info.client_subnets #=> Array
    #   resp.cluster_info.broker_node_group_info.client_subnets[0] #=> String
    #   resp.cluster_info.broker_node_group_info.instance_type #=> String
    #   resp.cluster_info.broker_node_group_info.security_groups #=> Array
    #   resp.cluster_info.broker_node_group_info.security_groups[0] #=> String
    #   resp.cluster_info.broker_node_group_info.storage_info.ebs_storage_info.volume_size #=> Integer
    #   resp.cluster_info.cluster_arn #=> String
    #   resp.cluster_info.cluster_name #=> String
    #   resp.cluster_info.creation_time #=> Time
    #   resp.cluster_info.current_broker_software_info.configuration_arn #=> String
    #   resp.cluster_info.current_broker_software_info.configuration_revision #=> Integer
    #   resp.cluster_info.current_broker_software_info.kafka_version #=> String
    #   resp.cluster_info.current_version #=> String
    #   resp.cluster_info.encryption_info.encryption_at_rest.data_volume_kms_key_id #=> String
    #   resp.cluster_info.enhanced_monitoring #=> String, one of "DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER"
    #   resp.cluster_info.number_of_broker_nodes #=> Integer
    #   resp.cluster_info.state #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED"
    #   resp.cluster_info.zookeeper_connect_string #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeCluster AWS API Documentation
    #
    # @overload describe_cluster(params = {})
    # @param [Hash] params ({})
    def describe_cluster(params = {}, options = {})
      req = build_request(:describe_cluster, params)
      req.send_request(options)
    end

    # Returns a description of this MSK configuration.
    #
    # @option params [required, String] :arn
    #
    # @return [Types::DescribeConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigurationResponse#arn #arn} => String
    #   * {Types::DescribeConfigurationResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeConfigurationResponse#description #description} => String
    #   * {Types::DescribeConfigurationResponse#kafka_versions #kafka_versions} => Array&lt;String&gt;
    #   * {Types::DescribeConfigurationResponse#latest_revision #latest_revision} => Types::ConfigurationRevision
    #   * {Types::DescribeConfigurationResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration({
    #     arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.kafka_versions #=> Array
    #   resp.kafka_versions[0] #=> String
    #   resp.latest_revision.creation_time #=> Time
    #   resp.latest_revision.description #=> String
    #   resp.latest_revision.revision #=> Integer
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeConfiguration AWS API Documentation
    #
    # @overload describe_configuration(params = {})
    # @param [Hash] params ({})
    def describe_configuration(params = {}, options = {})
      req = build_request(:describe_configuration, params)
      req.send_request(options)
    end

    # Returns a description of this revision of the configuration.
    #
    # @option params [required, String] :arn
    #
    # @option params [required, Integer] :revision
    #
    # @return [Types::DescribeConfigurationRevisionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigurationRevisionResponse#arn #arn} => String
    #   * {Types::DescribeConfigurationRevisionResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeConfigurationRevisionResponse#description #description} => String
    #   * {Types::DescribeConfigurationRevisionResponse#revision #revision} => Integer
    #   * {Types::DescribeConfigurationRevisionResponse#server_properties #server_properties} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_revision({
    #     arn: "__string", # required
    #     revision: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.revision #=> Integer
    #   resp.server_properties #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeConfigurationRevision AWS API Documentation
    #
    # @overload describe_configuration_revision(params = {})
    # @param [Hash] params ({})
    def describe_configuration_revision(params = {}, options = {})
      req = build_request(:describe_configuration_revision, params)
      req.send_request(options)
    end

    # A list of brokers that a client application can use to bootstrap.
    #
    # @option params [required, String] :cluster_arn
    #
    # @return [Types::GetBootstrapBrokersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBootstrapBrokersResponse#bootstrap_broker_string #bootstrap_broker_string} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bootstrap_brokers({
    #     cluster_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bootstrap_broker_string #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/GetBootstrapBrokers AWS API Documentation
    #
    # @overload get_bootstrap_brokers(params = {})
    # @param [Hash] params ({})
    def get_bootstrap_brokers(params = {}, options = {})
      req = build_request(:get_bootstrap_brokers, params)
      req.send_request(options)
    end

    # Returns a list of clusters in an account.
    #
    # @option params [String] :cluster_name_filter
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListClustersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClustersResponse#cluster_info_list #cluster_info_list} => Array&lt;Types::ClusterInfo&gt;
    #   * {Types::ListClustersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters({
    #     cluster_name_filter: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_info_list #=> Array
    #   resp.cluster_info_list[0].broker_node_group_info.broker_az_distribution #=> String, one of "DEFAULT"
    #   resp.cluster_info_list[0].broker_node_group_info.client_subnets #=> Array
    #   resp.cluster_info_list[0].broker_node_group_info.client_subnets[0] #=> String
    #   resp.cluster_info_list[0].broker_node_group_info.instance_type #=> String
    #   resp.cluster_info_list[0].broker_node_group_info.security_groups #=> Array
    #   resp.cluster_info_list[0].broker_node_group_info.security_groups[0] #=> String
    #   resp.cluster_info_list[0].broker_node_group_info.storage_info.ebs_storage_info.volume_size #=> Integer
    #   resp.cluster_info_list[0].cluster_arn #=> String
    #   resp.cluster_info_list[0].cluster_name #=> String
    #   resp.cluster_info_list[0].creation_time #=> Time
    #   resp.cluster_info_list[0].current_broker_software_info.configuration_arn #=> String
    #   resp.cluster_info_list[0].current_broker_software_info.configuration_revision #=> Integer
    #   resp.cluster_info_list[0].current_broker_software_info.kafka_version #=> String
    #   resp.cluster_info_list[0].current_version #=> String
    #   resp.cluster_info_list[0].encryption_info.encryption_at_rest.data_volume_kms_key_id #=> String
    #   resp.cluster_info_list[0].enhanced_monitoring #=> String, one of "DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER"
    #   resp.cluster_info_list[0].number_of_broker_nodes #=> Integer
    #   resp.cluster_info_list[0].state #=> String, one of "ACTIVE", "CREATING", "DELETING", "FAILED"
    #   resp.cluster_info_list[0].zookeeper_connect_string #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListClusters AWS API Documentation
    #
    # @overload list_clusters(params = {})
    # @param [Hash] params ({})
    def list_clusters(params = {}, options = {})
      req = build_request(:list_clusters, params)
      req.send_request(options)
    end

    # Returns a list of all the MSK configurations in this Region for this
    # account.
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationsResponse#configurations #configurations} => Array&lt;Types::Configuration&gt;
    #   * {Types::ListConfigurationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configurations({
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.configurations #=> Array
    #   resp.configurations[0].arn #=> String
    #   resp.configurations[0].creation_time #=> Time
    #   resp.configurations[0].description #=> String
    #   resp.configurations[0].kafka_versions #=> Array
    #   resp.configurations[0].kafka_versions[0] #=> String
    #   resp.configurations[0].latest_revision.creation_time #=> Time
    #   resp.configurations[0].latest_revision.description #=> String
    #   resp.configurations[0].latest_revision.revision #=> Integer
    #   resp.configurations[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListConfigurations AWS API Documentation
    #
    # @overload list_configurations(params = {})
    # @param [Hash] params ({})
    def list_configurations(params = {}, options = {})
      req = build_request(:list_configurations, params)
      req.send_request(options)
    end

    # Returns a list of the broker nodes in the cluster.
    #
    # @option params [required, String] :cluster_arn
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListNodesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNodesResponse#next_token #next_token} => String
    #   * {Types::ListNodesResponse#node_info_list #node_info_list} => Array&lt;Types::NodeInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_nodes({
    #     cluster_arn: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.node_info_list #=> Array
    #   resp.node_info_list[0].added_to_cluster_time #=> String
    #   resp.node_info_list[0].broker_node_info.attached_eni_id #=> String
    #   resp.node_info_list[0].broker_node_info.broker_id #=> Float
    #   resp.node_info_list[0].broker_node_info.client_subnet #=> String
    #   resp.node_info_list[0].broker_node_info.client_vpc_ip_address #=> String
    #   resp.node_info_list[0].broker_node_info.current_broker_software_info.configuration_arn #=> String
    #   resp.node_info_list[0].broker_node_info.current_broker_software_info.configuration_revision #=> Integer
    #   resp.node_info_list[0].broker_node_info.current_broker_software_info.kafka_version #=> String
    #   resp.node_info_list[0].instance_type #=> String
    #   resp.node_info_list[0].node_arn #=> String
    #   resp.node_info_list[0].node_type #=> String, one of "BROKER"
    #   resp.node_info_list[0].zookeeper_node_info.attached_eni_id #=> String
    #   resp.node_info_list[0].zookeeper_node_info.client_vpc_ip_address #=> String
    #   resp.node_info_list[0].zookeeper_node_info.zookeeper_id #=> Float
    #   resp.node_info_list[0].zookeeper_node_info.zookeeper_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListNodes AWS API Documentation
    #
    # @overload list_nodes(params = {})
    # @param [Hash] params ({})
    def list_nodes(params = {}, options = {})
      req = build_request(:list_nodes, params)
      req.send_request(options)
    end

    # List tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Add tags to a resource
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Hash<String,String>] :tags
    #   The Key value pairs indicating resource tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/TagResource AWS API Documentation
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
    #
    # @option params [required, Array<String>] :tag_keys
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UntagResource AWS API Documentation
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
      context[:gem_name] = 'aws-sdk-kafka'
      context[:gem_version] = '1.8.0'
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
