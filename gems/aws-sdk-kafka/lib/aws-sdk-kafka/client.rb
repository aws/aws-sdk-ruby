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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:kafka)

module Aws::Kafka
  # An API client for Kafka.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Kafka::Client.new(
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
    add_plugin(Aws::Plugins::HttpChecksum)
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

    # Associates one or more Scram Secrets with an Amazon MSK cluster.
    #
    # @option params [required, String] :cluster_arn
    #
    # @option params [required, Array<String>] :secret_arn_list
    #   List of AWS Secrets Manager secret ARNs.
    #
    # @return [Types::BatchAssociateScramSecretResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchAssociateScramSecretResponse#cluster_arn #cluster_arn} => String
    #   * {Types::BatchAssociateScramSecretResponse#unprocessed_scram_secrets #unprocessed_scram_secrets} => Array&lt;Types::UnprocessedScramSecret&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_scram_secret({
    #     cluster_arn: "__string", # required
    #     secret_arn_list: ["__string"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_arn #=> String
    #   resp.unprocessed_scram_secrets #=> Array
    #   resp.unprocessed_scram_secrets[0].error_code #=> String
    #   resp.unprocessed_scram_secrets[0].error_message #=> String
    #   resp.unprocessed_scram_secrets[0].secret_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BatchAssociateScramSecret AWS API Documentation
    #
    # @overload batch_associate_scram_secret(params = {})
    # @param [Hash] params ({})
    def batch_associate_scram_secret(params = {}, options = {})
      req = build_request(:batch_associate_scram_secret, params)
      req.send_request(options)
    end

    # Creates a new MSK cluster.
    #
    # @option params [required, Types::BrokerNodeGroupInfo] :broker_node_group_info
    #   Information about the broker nodes in the cluster.
    #
    # @option params [Types::ClientAuthentication] :client_authentication
    #   Includes all client authentication related information.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster.
    #
    # @option params [Types::ConfigurationInfo] :configuration_info
    #   Represents the configuration that you want MSK to use for the cluster.
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
    # @option params [Types::LoggingInfo] :logging_info
    #   LoggingInfo details.
    #
    # @option params [required, Integer] :number_of_broker_nodes
    #   The number of Kafka broker nodes in the Amazon MSK cluster.
    #
    # @option params [Types::OpenMonitoringInfo] :open_monitoring
    #   The settings for open monitoring.
    #
    # @option params [Hash<String,String>] :tags
    #   Create tags when creating the cluster.
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
    #     client_authentication: {
    #       sasl: {
    #         scram: {
    #           enabled: false,
    #         },
    #       },
    #       tls: {
    #         certificate_authority_arn_list: ["__string"],
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
    #       encryption_in_transit: {
    #         client_broker: "TLS", # accepts TLS, TLS_PLAINTEXT, PLAINTEXT
    #         in_cluster: false,
    #       },
    #     },
    #     enhanced_monitoring: "DEFAULT", # accepts DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER
    #     kafka_version: "__stringMin1Max128", # required
    #     logging_info: {
    #       broker_logs: { # required
    #         cloud_watch_logs: {
    #           enabled: false, # required
    #           log_group: "__string",
    #         },
    #         firehose: {
    #           delivery_stream: "__string",
    #           enabled: false, # required
    #         },
    #         s3: {
    #           bucket: "__string",
    #           enabled: false, # required
    #           prefix: "__string",
    #         },
    #       },
    #     },
    #     number_of_broker_nodes: 1, # required
    #     open_monitoring: {
    #       prometheus: { # required
    #         jmx_exporter: {
    #           enabled_in_broker: false, # required
    #         },
    #         node_exporter: {
    #           enabled_in_broker: false, # required
    #         },
    #       },
    #     },
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_arn #=> String
    #   resp.cluster_name #=> String
    #   resp.state #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "FAILED"
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
    # @option params [Array<String>] :kafka_versions
    #   The versions of Apache Kafka with which you can use this MSK
    #   configuration.
    #
    # @option params [required, String] :name
    #   The name of the configuration. Configuration names are strings that
    #   match the regex "^\[0-9A-Za-z-\]+$".
    #
    # @option params [required, String, StringIO, File] :server_properties
    #
    # @return [Types::CreateConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConfigurationResponse#arn #arn} => String
    #   * {Types::CreateConfigurationResponse#creation_time #creation_time} => Time
    #   * {Types::CreateConfigurationResponse#latest_revision #latest_revision} => Types::ConfigurationRevision
    #   * {Types::CreateConfigurationResponse#name #name} => String
    #   * {Types::CreateConfigurationResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration({
    #     description: "__string",
    #     kafka_versions: ["__string"],
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
    #   resp.state #=> String, one of "ACTIVE", "DELETING", "DELETE_FAILED"
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
    #   resp.state #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteCluster AWS API Documentation
    #
    # @overload delete_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cluster(params = {}, options = {})
      req = build_request(:delete_cluster, params)
      req.send_request(options)
    end

    # Deletes the specified MSK configuration. The configuration must be in
    # the ACTIVE or DELETE\_FAILED state.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the configuration.
    #
    # @return [Types::DeleteConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteConfigurationResponse#arn #arn} => String
    #   * {Types::DeleteConfigurationResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration({
    #     arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.state #=> String, one of "ACTIVE", "DELETING", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteConfiguration AWS API Documentation
    #
    # @overload delete_configuration(params = {})
    # @param [Hash] params ({})
    def delete_configuration(params = {}, options = {})
      req = build_request(:delete_configuration, params)
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
    #   resp.cluster_info.active_operation_arn #=> String
    #   resp.cluster_info.broker_node_group_info.broker_az_distribution #=> String, one of "DEFAULT"
    #   resp.cluster_info.broker_node_group_info.client_subnets #=> Array
    #   resp.cluster_info.broker_node_group_info.client_subnets[0] #=> String
    #   resp.cluster_info.broker_node_group_info.instance_type #=> String
    #   resp.cluster_info.broker_node_group_info.security_groups #=> Array
    #   resp.cluster_info.broker_node_group_info.security_groups[0] #=> String
    #   resp.cluster_info.broker_node_group_info.storage_info.ebs_storage_info.volume_size #=> Integer
    #   resp.cluster_info.client_authentication.sasl.scram.enabled #=> Boolean
    #   resp.cluster_info.client_authentication.tls.certificate_authority_arn_list #=> Array
    #   resp.cluster_info.client_authentication.tls.certificate_authority_arn_list[0] #=> String
    #   resp.cluster_info.cluster_arn #=> String
    #   resp.cluster_info.cluster_name #=> String
    #   resp.cluster_info.creation_time #=> Time
    #   resp.cluster_info.current_broker_software_info.configuration_arn #=> String
    #   resp.cluster_info.current_broker_software_info.configuration_revision #=> Integer
    #   resp.cluster_info.current_broker_software_info.kafka_version #=> String
    #   resp.cluster_info.logging_info.broker_logs.cloud_watch_logs.enabled #=> Boolean
    #   resp.cluster_info.logging_info.broker_logs.cloud_watch_logs.log_group #=> String
    #   resp.cluster_info.logging_info.broker_logs.firehose.delivery_stream #=> String
    #   resp.cluster_info.logging_info.broker_logs.firehose.enabled #=> Boolean
    #   resp.cluster_info.logging_info.broker_logs.s3.bucket #=> String
    #   resp.cluster_info.logging_info.broker_logs.s3.enabled #=> Boolean
    #   resp.cluster_info.logging_info.broker_logs.s3.prefix #=> String
    #   resp.cluster_info.current_version #=> String
    #   resp.cluster_info.encryption_info.encryption_at_rest.data_volume_kms_key_id #=> String
    #   resp.cluster_info.encryption_info.encryption_in_transit.client_broker #=> String, one of "TLS", "TLS_PLAINTEXT", "PLAINTEXT"
    #   resp.cluster_info.encryption_info.encryption_in_transit.in_cluster #=> Boolean
    #   resp.cluster_info.enhanced_monitoring #=> String, one of "DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER"
    #   resp.cluster_info.number_of_broker_nodes #=> Integer
    #   resp.cluster_info.open_monitoring.prometheus.jmx_exporter.enabled_in_broker #=> Boolean
    #   resp.cluster_info.open_monitoring.prometheus.node_exporter.enabled_in_broker #=> Boolean
    #   resp.cluster_info.state #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "FAILED"
    #   resp.cluster_info.tags #=> Hash
    #   resp.cluster_info.tags["__string"] #=> String
    #   resp.cluster_info.zookeeper_connect_string #=> String
    #   resp.cluster_info.zookeeper_connect_string_tls #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeCluster AWS API Documentation
    #
    # @overload describe_cluster(params = {})
    # @param [Hash] params ({})
    def describe_cluster(params = {}, options = {})
      req = build_request(:describe_cluster, params)
      req.send_request(options)
    end

    # Returns a description of the cluster operation specified by the ARN.
    #
    # @option params [required, String] :cluster_operation_arn
    #
    # @return [Types::DescribeClusterOperationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClusterOperationResponse#cluster_operation_info #cluster_operation_info} => Types::ClusterOperationInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_operation({
    #     cluster_operation_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_operation_info.client_request_id #=> String
    #   resp.cluster_operation_info.cluster_arn #=> String
    #   resp.cluster_operation_info.creation_time #=> Time
    #   resp.cluster_operation_info.end_time #=> Time
    #   resp.cluster_operation_info.error_info.error_code #=> String
    #   resp.cluster_operation_info.error_info.error_string #=> String
    #   resp.cluster_operation_info.operation_steps #=> Array
    #   resp.cluster_operation_info.operation_steps[0].step_info.step_status #=> String
    #   resp.cluster_operation_info.operation_steps[0].step_name #=> String
    #   resp.cluster_operation_info.operation_arn #=> String
    #   resp.cluster_operation_info.operation_state #=> String
    #   resp.cluster_operation_info.operation_type #=> String
    #   resp.cluster_operation_info.source_cluster_info.broker_ebs_volume_info #=> Array
    #   resp.cluster_operation_info.source_cluster_info.broker_ebs_volume_info[0].kafka_broker_node_id #=> String
    #   resp.cluster_operation_info.source_cluster_info.broker_ebs_volume_info[0].volume_size_gb #=> Integer
    #   resp.cluster_operation_info.source_cluster_info.configuration_info.arn #=> String
    #   resp.cluster_operation_info.source_cluster_info.configuration_info.revision #=> Integer
    #   resp.cluster_operation_info.source_cluster_info.number_of_broker_nodes #=> Integer
    #   resp.cluster_operation_info.source_cluster_info.open_monitoring.prometheus.jmx_exporter.enabled_in_broker #=> Boolean
    #   resp.cluster_operation_info.source_cluster_info.open_monitoring.prometheus.node_exporter.enabled_in_broker #=> Boolean
    #   resp.cluster_operation_info.source_cluster_info.enhanced_monitoring #=> String, one of "DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER"
    #   resp.cluster_operation_info.source_cluster_info.kafka_version #=> String
    #   resp.cluster_operation_info.source_cluster_info.logging_info.broker_logs.cloud_watch_logs.enabled #=> Boolean
    #   resp.cluster_operation_info.source_cluster_info.logging_info.broker_logs.cloud_watch_logs.log_group #=> String
    #   resp.cluster_operation_info.source_cluster_info.logging_info.broker_logs.firehose.delivery_stream #=> String
    #   resp.cluster_operation_info.source_cluster_info.logging_info.broker_logs.firehose.enabled #=> Boolean
    #   resp.cluster_operation_info.source_cluster_info.logging_info.broker_logs.s3.bucket #=> String
    #   resp.cluster_operation_info.source_cluster_info.logging_info.broker_logs.s3.enabled #=> Boolean
    #   resp.cluster_operation_info.source_cluster_info.logging_info.broker_logs.s3.prefix #=> String
    #   resp.cluster_operation_info.target_cluster_info.broker_ebs_volume_info #=> Array
    #   resp.cluster_operation_info.target_cluster_info.broker_ebs_volume_info[0].kafka_broker_node_id #=> String
    #   resp.cluster_operation_info.target_cluster_info.broker_ebs_volume_info[0].volume_size_gb #=> Integer
    #   resp.cluster_operation_info.target_cluster_info.configuration_info.arn #=> String
    #   resp.cluster_operation_info.target_cluster_info.configuration_info.revision #=> Integer
    #   resp.cluster_operation_info.target_cluster_info.number_of_broker_nodes #=> Integer
    #   resp.cluster_operation_info.target_cluster_info.open_monitoring.prometheus.jmx_exporter.enabled_in_broker #=> Boolean
    #   resp.cluster_operation_info.target_cluster_info.open_monitoring.prometheus.node_exporter.enabled_in_broker #=> Boolean
    #   resp.cluster_operation_info.target_cluster_info.enhanced_monitoring #=> String, one of "DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER"
    #   resp.cluster_operation_info.target_cluster_info.kafka_version #=> String
    #   resp.cluster_operation_info.target_cluster_info.logging_info.broker_logs.cloud_watch_logs.enabled #=> Boolean
    #   resp.cluster_operation_info.target_cluster_info.logging_info.broker_logs.cloud_watch_logs.log_group #=> String
    #   resp.cluster_operation_info.target_cluster_info.logging_info.broker_logs.firehose.delivery_stream #=> String
    #   resp.cluster_operation_info.target_cluster_info.logging_info.broker_logs.firehose.enabled #=> Boolean
    #   resp.cluster_operation_info.target_cluster_info.logging_info.broker_logs.s3.bucket #=> String
    #   resp.cluster_operation_info.target_cluster_info.logging_info.broker_logs.s3.enabled #=> Boolean
    #   resp.cluster_operation_info.target_cluster_info.logging_info.broker_logs.s3.prefix #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeClusterOperation AWS API Documentation
    #
    # @overload describe_cluster_operation(params = {})
    # @param [Hash] params ({})
    def describe_cluster_operation(params = {}, options = {})
      req = build_request(:describe_cluster_operation, params)
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
    #   * {Types::DescribeConfigurationResponse#state #state} => String
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
    #   resp.state #=> String, one of "ACTIVE", "DELETING", "DELETE_FAILED"
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

    # Disassociates one or more Scram Secrets from an Amazon MSK cluster.
    #
    # @option params [required, String] :cluster_arn
    #
    # @option params [required, Array<String>] :secret_arn_list
    #   List of AWS Secrets Manager secret ARNs.
    #
    # @return [Types::BatchDisassociateScramSecretResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDisassociateScramSecretResponse#cluster_arn #cluster_arn} => String
    #   * {Types::BatchDisassociateScramSecretResponse#unprocessed_scram_secrets #unprocessed_scram_secrets} => Array&lt;Types::UnprocessedScramSecret&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_scram_secret({
    #     cluster_arn: "__string", # required
    #     secret_arn_list: ["__string"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_arn #=> String
    #   resp.unprocessed_scram_secrets #=> Array
    #   resp.unprocessed_scram_secrets[0].error_code #=> String
    #   resp.unprocessed_scram_secrets[0].error_message #=> String
    #   resp.unprocessed_scram_secrets[0].secret_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BatchDisassociateScramSecret AWS API Documentation
    #
    # @overload batch_disassociate_scram_secret(params = {})
    # @param [Hash] params ({})
    def batch_disassociate_scram_secret(params = {}, options = {})
      req = build_request(:batch_disassociate_scram_secret, params)
      req.send_request(options)
    end

    # A list of brokers that a client application can use to bootstrap.
    #
    # @option params [required, String] :cluster_arn
    #
    # @return [Types::GetBootstrapBrokersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBootstrapBrokersResponse#bootstrap_broker_string #bootstrap_broker_string} => String
    #   * {Types::GetBootstrapBrokersResponse#bootstrap_broker_string_tls #bootstrap_broker_string_tls} => String
    #   * {Types::GetBootstrapBrokersResponse#bootstrap_broker_string_sasl_scram #bootstrap_broker_string_sasl_scram} => String
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
    #   resp.bootstrap_broker_string_tls #=> String
    #   resp.bootstrap_broker_string_sasl_scram #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/GetBootstrapBrokers AWS API Documentation
    #
    # @overload get_bootstrap_brokers(params = {})
    # @param [Hash] params ({})
    def get_bootstrap_brokers(params = {}, options = {})
      req = build_request(:get_bootstrap_brokers, params)
      req.send_request(options)
    end

    # Gets the Apache Kafka versions to which you can update the MSK
    # cluster.
    #
    # @option params [String] :cluster_arn
    #
    # @return [Types::GetCompatibleKafkaVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCompatibleKafkaVersionsResponse#compatible_kafka_versions #compatible_kafka_versions} => Array&lt;Types::CompatibleKafkaVersion&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compatible_kafka_versions({
    #     cluster_arn: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.compatible_kafka_versions #=> Array
    #   resp.compatible_kafka_versions[0].source_version #=> String
    #   resp.compatible_kafka_versions[0].target_versions #=> Array
    #   resp.compatible_kafka_versions[0].target_versions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/GetCompatibleKafkaVersions AWS API Documentation
    #
    # @overload get_compatible_kafka_versions(params = {})
    # @param [Hash] params ({})
    def get_compatible_kafka_versions(params = {}, options = {})
      req = build_request(:get_compatible_kafka_versions, params)
      req.send_request(options)
    end

    # Returns a list of all the operations that have been performed on the
    # specified MSK cluster.
    #
    # @option params [required, String] :cluster_arn
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListClusterOperationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClusterOperationsResponse#cluster_operation_info_list #cluster_operation_info_list} => Array&lt;Types::ClusterOperationInfo&gt;
    #   * {Types::ListClusterOperationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cluster_operations({
    #     cluster_arn: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_operation_info_list #=> Array
    #   resp.cluster_operation_info_list[0].client_request_id #=> String
    #   resp.cluster_operation_info_list[0].cluster_arn #=> String
    #   resp.cluster_operation_info_list[0].creation_time #=> Time
    #   resp.cluster_operation_info_list[0].end_time #=> Time
    #   resp.cluster_operation_info_list[0].error_info.error_code #=> String
    #   resp.cluster_operation_info_list[0].error_info.error_string #=> String
    #   resp.cluster_operation_info_list[0].operation_steps #=> Array
    #   resp.cluster_operation_info_list[0].operation_steps[0].step_info.step_status #=> String
    #   resp.cluster_operation_info_list[0].operation_steps[0].step_name #=> String
    #   resp.cluster_operation_info_list[0].operation_arn #=> String
    #   resp.cluster_operation_info_list[0].operation_state #=> String
    #   resp.cluster_operation_info_list[0].operation_type #=> String
    #   resp.cluster_operation_info_list[0].source_cluster_info.broker_ebs_volume_info #=> Array
    #   resp.cluster_operation_info_list[0].source_cluster_info.broker_ebs_volume_info[0].kafka_broker_node_id #=> String
    #   resp.cluster_operation_info_list[0].source_cluster_info.broker_ebs_volume_info[0].volume_size_gb #=> Integer
    #   resp.cluster_operation_info_list[0].source_cluster_info.configuration_info.arn #=> String
    #   resp.cluster_operation_info_list[0].source_cluster_info.configuration_info.revision #=> Integer
    #   resp.cluster_operation_info_list[0].source_cluster_info.number_of_broker_nodes #=> Integer
    #   resp.cluster_operation_info_list[0].source_cluster_info.open_monitoring.prometheus.jmx_exporter.enabled_in_broker #=> Boolean
    #   resp.cluster_operation_info_list[0].source_cluster_info.open_monitoring.prometheus.node_exporter.enabled_in_broker #=> Boolean
    #   resp.cluster_operation_info_list[0].source_cluster_info.enhanced_monitoring #=> String, one of "DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER"
    #   resp.cluster_operation_info_list[0].source_cluster_info.kafka_version #=> String
    #   resp.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs.cloud_watch_logs.enabled #=> Boolean
    #   resp.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs.cloud_watch_logs.log_group #=> String
    #   resp.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs.firehose.delivery_stream #=> String
    #   resp.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs.firehose.enabled #=> Boolean
    #   resp.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs.s3.bucket #=> String
    #   resp.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs.s3.enabled #=> Boolean
    #   resp.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs.s3.prefix #=> String
    #   resp.cluster_operation_info_list[0].target_cluster_info.broker_ebs_volume_info #=> Array
    #   resp.cluster_operation_info_list[0].target_cluster_info.broker_ebs_volume_info[0].kafka_broker_node_id #=> String
    #   resp.cluster_operation_info_list[0].target_cluster_info.broker_ebs_volume_info[0].volume_size_gb #=> Integer
    #   resp.cluster_operation_info_list[0].target_cluster_info.configuration_info.arn #=> String
    #   resp.cluster_operation_info_list[0].target_cluster_info.configuration_info.revision #=> Integer
    #   resp.cluster_operation_info_list[0].target_cluster_info.number_of_broker_nodes #=> Integer
    #   resp.cluster_operation_info_list[0].target_cluster_info.open_monitoring.prometheus.jmx_exporter.enabled_in_broker #=> Boolean
    #   resp.cluster_operation_info_list[0].target_cluster_info.open_monitoring.prometheus.node_exporter.enabled_in_broker #=> Boolean
    #   resp.cluster_operation_info_list[0].target_cluster_info.enhanced_monitoring #=> String, one of "DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER"
    #   resp.cluster_operation_info_list[0].target_cluster_info.kafka_version #=> String
    #   resp.cluster_operation_info_list[0].target_cluster_info.logging_info.broker_logs.cloud_watch_logs.enabled #=> Boolean
    #   resp.cluster_operation_info_list[0].target_cluster_info.logging_info.broker_logs.cloud_watch_logs.log_group #=> String
    #   resp.cluster_operation_info_list[0].target_cluster_info.logging_info.broker_logs.firehose.delivery_stream #=> String
    #   resp.cluster_operation_info_list[0].target_cluster_info.logging_info.broker_logs.firehose.enabled #=> Boolean
    #   resp.cluster_operation_info_list[0].target_cluster_info.logging_info.broker_logs.s3.bucket #=> String
    #   resp.cluster_operation_info_list[0].target_cluster_info.logging_info.broker_logs.s3.enabled #=> Boolean
    #   resp.cluster_operation_info_list[0].target_cluster_info.logging_info.broker_logs.s3.prefix #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListClusterOperations AWS API Documentation
    #
    # @overload list_cluster_operations(params = {})
    # @param [Hash] params ({})
    def list_cluster_operations(params = {}, options = {})
      req = build_request(:list_cluster_operations, params)
      req.send_request(options)
    end

    # Returns a list of all the MSK clusters in the current Region.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.cluster_info_list[0].active_operation_arn #=> String
    #   resp.cluster_info_list[0].broker_node_group_info.broker_az_distribution #=> String, one of "DEFAULT"
    #   resp.cluster_info_list[0].broker_node_group_info.client_subnets #=> Array
    #   resp.cluster_info_list[0].broker_node_group_info.client_subnets[0] #=> String
    #   resp.cluster_info_list[0].broker_node_group_info.instance_type #=> String
    #   resp.cluster_info_list[0].broker_node_group_info.security_groups #=> Array
    #   resp.cluster_info_list[0].broker_node_group_info.security_groups[0] #=> String
    #   resp.cluster_info_list[0].broker_node_group_info.storage_info.ebs_storage_info.volume_size #=> Integer
    #   resp.cluster_info_list[0].client_authentication.sasl.scram.enabled #=> Boolean
    #   resp.cluster_info_list[0].client_authentication.tls.certificate_authority_arn_list #=> Array
    #   resp.cluster_info_list[0].client_authentication.tls.certificate_authority_arn_list[0] #=> String
    #   resp.cluster_info_list[0].cluster_arn #=> String
    #   resp.cluster_info_list[0].cluster_name #=> String
    #   resp.cluster_info_list[0].creation_time #=> Time
    #   resp.cluster_info_list[0].current_broker_software_info.configuration_arn #=> String
    #   resp.cluster_info_list[0].current_broker_software_info.configuration_revision #=> Integer
    #   resp.cluster_info_list[0].current_broker_software_info.kafka_version #=> String
    #   resp.cluster_info_list[0].logging_info.broker_logs.cloud_watch_logs.enabled #=> Boolean
    #   resp.cluster_info_list[0].logging_info.broker_logs.cloud_watch_logs.log_group #=> String
    #   resp.cluster_info_list[0].logging_info.broker_logs.firehose.delivery_stream #=> String
    #   resp.cluster_info_list[0].logging_info.broker_logs.firehose.enabled #=> Boolean
    #   resp.cluster_info_list[0].logging_info.broker_logs.s3.bucket #=> String
    #   resp.cluster_info_list[0].logging_info.broker_logs.s3.enabled #=> Boolean
    #   resp.cluster_info_list[0].logging_info.broker_logs.s3.prefix #=> String
    #   resp.cluster_info_list[0].current_version #=> String
    #   resp.cluster_info_list[0].encryption_info.encryption_at_rest.data_volume_kms_key_id #=> String
    #   resp.cluster_info_list[0].encryption_info.encryption_in_transit.client_broker #=> String, one of "TLS", "TLS_PLAINTEXT", "PLAINTEXT"
    #   resp.cluster_info_list[0].encryption_info.encryption_in_transit.in_cluster #=> Boolean
    #   resp.cluster_info_list[0].enhanced_monitoring #=> String, one of "DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER"
    #   resp.cluster_info_list[0].number_of_broker_nodes #=> Integer
    #   resp.cluster_info_list[0].open_monitoring.prometheus.jmx_exporter.enabled_in_broker #=> Boolean
    #   resp.cluster_info_list[0].open_monitoring.prometheus.node_exporter.enabled_in_broker #=> Boolean
    #   resp.cluster_info_list[0].state #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "FAILED"
    #   resp.cluster_info_list[0].tags #=> Hash
    #   resp.cluster_info_list[0].tags["__string"] #=> String
    #   resp.cluster_info_list[0].zookeeper_connect_string #=> String
    #   resp.cluster_info_list[0].zookeeper_connect_string_tls #=> String
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

    # Returns a list of all the revisions of an MSK configuration.
    #
    # @option params [required, String] :arn
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListConfigurationRevisionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationRevisionsResponse#next_token #next_token} => String
    #   * {Types::ListConfigurationRevisionsResponse#revisions #revisions} => Array&lt;Types::ConfigurationRevision&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_revisions({
    #     arn: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.revisions #=> Array
    #   resp.revisions[0].creation_time #=> Time
    #   resp.revisions[0].description #=> String
    #   resp.revisions[0].revision #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListConfigurationRevisions AWS API Documentation
    #
    # @overload list_configuration_revisions(params = {})
    # @param [Hash] params ({})
    def list_configuration_revisions(params = {}, options = {})
      req = build_request(:list_configuration_revisions, params)
      req.send_request(options)
    end

    # Returns a list of all the MSK configurations in this Region.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationsResponse#configurations #configurations} => Array&lt;Types::Configuration&gt;
    #   * {Types::ListConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configurations({
    #     max_results: 1,
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
    #   resp.configurations[0].state #=> String, one of "ACTIVE", "DELETING", "DELETE_FAILED"
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

    # Returns a list of Kafka versions.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListKafkaVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKafkaVersionsResponse#kafka_versions #kafka_versions} => Array&lt;Types::KafkaVersion&gt;
    #   * {Types::ListKafkaVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_kafka_versions({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.kafka_versions #=> Array
    #   resp.kafka_versions[0].version #=> String
    #   resp.kafka_versions[0].status #=> String, one of "ACTIVE", "DEPRECATED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListKafkaVersions AWS API Documentation
    #
    # @overload list_kafka_versions(params = {})
    # @param [Hash] params ({})
    def list_kafka_versions(params = {}, options = {})
      req = build_request(:list_kafka_versions, params)
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.node_info_list[0].broker_node_info.endpoints #=> Array
    #   resp.node_info_list[0].broker_node_info.endpoints[0] #=> String
    #   resp.node_info_list[0].instance_type #=> String
    #   resp.node_info_list[0].node_arn #=> String
    #   resp.node_info_list[0].node_type #=> String, one of "BROKER"
    #   resp.node_info_list[0].zookeeper_node_info.attached_eni_id #=> String
    #   resp.node_info_list[0].zookeeper_node_info.client_vpc_ip_address #=> String
    #   resp.node_info_list[0].zookeeper_node_info.endpoints #=> Array
    #   resp.node_info_list[0].zookeeper_node_info.endpoints[0] #=> String
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

    # Returns a list of the Scram Secrets associated with an Amazon MSK
    # cluster.
    #
    # @option params [required, String] :cluster_arn
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListScramSecretsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListScramSecretsResponse#next_token #next_token} => String
    #   * {Types::ListScramSecretsResponse#secret_arn_list #secret_arn_list} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scram_secrets({
    #     cluster_arn: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.secret_arn_list #=> Array
    #   resp.secret_arn_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListScramSecrets AWS API Documentation
    #
    # @overload list_scram_secrets(params = {})
    # @param [Hash] params ({})
    def list_scram_secrets(params = {}, options = {})
      req = build_request(:list_scram_secrets, params)
      req.send_request(options)
    end

    # Returns a list of the tags associated with the specified resource.
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

    # Executes a reboot on a broker.
    #
    # @option params [required, Array<String>] :broker_ids
    #   The list of broker ids to be rebooted.
    #
    # @option params [required, String] :cluster_arn
    #
    # @return [Types::RebootBrokerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebootBrokerResponse#cluster_arn #cluster_arn} => String
    #   * {Types::RebootBrokerResponse#cluster_operation_arn #cluster_operation_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_broker({
    #     broker_ids: ["__string"], # required
    #     cluster_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_arn #=> String
    #   resp.cluster_operation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/RebootBroker AWS API Documentation
    #
    # @overload reboot_broker(params = {})
    # @param [Hash] params ({})
    def reboot_broker(params = {}, options = {})
      req = build_request(:reboot_broker, params)
      req.send_request(options)
    end

    # Adds tags to the specified MSK resource.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Hash<String,String>] :tags
    #   The key-value pair for the resource tag.
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

    # Removes the tags associated with the keys that are provided in the
    # query.
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

    # Updates the number of broker nodes in the cluster. You can use this
    # operation to increase the number of brokers in an existing cluster.
    # You can't decrease the number of brokers.
    #
    # @option params [required, String] :cluster_arn
    #
    # @option params [required, String] :current_version
    #   The current version of the cluster.
    #
    # @option params [required, Integer] :target_number_of_broker_nodes
    #   The number of broker nodes that you want the cluster to have after
    #   this operation completes successfully.
    #
    # @return [Types::UpdateBrokerCountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBrokerCountResponse#cluster_arn #cluster_arn} => String
    #   * {Types::UpdateBrokerCountResponse#cluster_operation_arn #cluster_operation_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_broker_count({
    #     cluster_arn: "__string", # required
    #     current_version: "__string", # required
    #     target_number_of_broker_nodes: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_arn #=> String
    #   resp.cluster_operation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateBrokerCount AWS API Documentation
    #
    # @overload update_broker_count(params = {})
    # @param [Hash] params ({})
    def update_broker_count(params = {}, options = {})
      req = build_request(:update_broker_count, params)
      req.send_request(options)
    end

    # Updates the EBS storage associated with MSK brokers.
    #
    # @option params [required, String] :cluster_arn
    #
    # @option params [required, String] :current_version
    #   The version of cluster to update from. A successful operation will
    #   then generate a new version.
    #
    # @option params [required, Array<Types::BrokerEBSVolumeInfo>] :target_broker_ebs_volume_info
    #   Describes the target volume size and the ID of the broker to apply the
    #   update to.
    #
    #   The value you specify for Target-Volume-in-GiB must be a whole number
    #   that is greater than 100 GiB.
    #
    #   The storage per broker after the update operation can't exceed 16384
    #   GiB.
    #
    # @return [Types::UpdateBrokerStorageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBrokerStorageResponse#cluster_arn #cluster_arn} => String
    #   * {Types::UpdateBrokerStorageResponse#cluster_operation_arn #cluster_operation_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_broker_storage({
    #     cluster_arn: "__string", # required
    #     current_version: "__string", # required
    #     target_broker_ebs_volume_info: [ # required
    #       {
    #         kafka_broker_node_id: "__string", # required
    #         volume_size_gb: 1, # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_arn #=> String
    #   resp.cluster_operation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateBrokerStorage AWS API Documentation
    #
    # @overload update_broker_storage(params = {})
    # @param [Hash] params ({})
    def update_broker_storage(params = {}, options = {})
      req = build_request(:update_broker_storage, params)
      req.send_request(options)
    end

    # Updates an existing MSK configuration. The configuration must be in
    # the Active state.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the configuration.
    #
    # @option params [String] :description
    #   The description of the configuration.
    #
    # @option params [required, String, StringIO, File] :server_properties
    #
    # @return [Types::UpdateConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConfigurationResponse#arn #arn} => String
    #   * {Types::UpdateConfigurationResponse#latest_revision #latest_revision} => Types::ConfigurationRevision
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration({
    #     arn: "__string", # required
    #     description: "__string",
    #     server_properties: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.latest_revision.creation_time #=> Time
    #   resp.latest_revision.description #=> String
    #   resp.latest_revision.revision #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateConfiguration AWS API Documentation
    #
    # @overload update_configuration(params = {})
    # @param [Hash] params ({})
    def update_configuration(params = {}, options = {})
      req = build_request(:update_configuration, params)
      req.send_request(options)
    end

    # Updates the cluster with the configuration that is specified in the
    # request body.
    #
    # @option params [required, String] :cluster_arn
    #
    # @option params [required, Types::ConfigurationInfo] :configuration_info
    #   Represents the configuration that you want MSK to use for the cluster.
    #
    # @option params [required, String] :current_version
    #   The version of the cluster that you want to update.
    #
    # @return [Types::UpdateClusterConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateClusterConfigurationResponse#cluster_arn #cluster_arn} => String
    #   * {Types::UpdateClusterConfigurationResponse#cluster_operation_arn #cluster_operation_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster_configuration({
    #     cluster_arn: "__string", # required
    #     configuration_info: { # required
    #       arn: "__string", # required
    #       revision: 1, # required
    #     },
    #     current_version: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_arn #=> String
    #   resp.cluster_operation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateClusterConfiguration AWS API Documentation
    #
    # @overload update_cluster_configuration(params = {})
    # @param [Hash] params ({})
    def update_cluster_configuration(params = {}, options = {})
      req = build_request(:update_cluster_configuration, params)
      req.send_request(options)
    end

    # Updates the Apache Kafka version for the cluster.
    #
    # @option params [required, String] :cluster_arn
    #
    # @option params [Types::ConfigurationInfo] :configuration_info
    #   Specifies the configuration to use for the brokers.
    #
    # @option params [required, String] :current_version
    #   Current cluster version.
    #
    # @option params [required, String] :target_kafka_version
    #   Target Kafka version.
    #
    # @return [Types::UpdateClusterKafkaVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateClusterKafkaVersionResponse#cluster_arn #cluster_arn} => String
    #   * {Types::UpdateClusterKafkaVersionResponse#cluster_operation_arn #cluster_operation_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster_kafka_version({
    #     cluster_arn: "__string", # required
    #     configuration_info: {
    #       arn: "__string", # required
    #       revision: 1, # required
    #     },
    #     current_version: "__string", # required
    #     target_kafka_version: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_arn #=> String
    #   resp.cluster_operation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateClusterKafkaVersion AWS API Documentation
    #
    # @overload update_cluster_kafka_version(params = {})
    # @param [Hash] params ({})
    def update_cluster_kafka_version(params = {}, options = {})
      req = build_request(:update_cluster_kafka_version, params)
      req.send_request(options)
    end

    # Updates the monitoring settings for the cluster. You can use this
    # operation to specify which Apache Kafka metrics you want Amazon MSK to
    # send to Amazon CloudWatch. You can also specify settings for open
    # monitoring with Prometheus.
    #
    # @option params [required, String] :cluster_arn
    #
    # @option params [required, String] :current_version
    #   The version of cluster to update from. A successful operation will
    #   then generate a new version.
    #
    # @option params [String] :enhanced_monitoring
    #   Specifies which Apache Kafka metrics Amazon MSK gathers and sends to
    #   Amazon CloudWatch for this cluster.
    #
    # @option params [Types::OpenMonitoringInfo] :open_monitoring
    #   The settings for open monitoring.
    #
    # @option params [Types::LoggingInfo] :logging_info
    #   LoggingInfo details.
    #
    # @return [Types::UpdateMonitoringResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMonitoringResponse#cluster_arn #cluster_arn} => String
    #   * {Types::UpdateMonitoringResponse#cluster_operation_arn #cluster_operation_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_monitoring({
    #     cluster_arn: "__string", # required
    #     current_version: "__string", # required
    #     enhanced_monitoring: "DEFAULT", # accepts DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER
    #     open_monitoring: {
    #       prometheus: { # required
    #         jmx_exporter: {
    #           enabled_in_broker: false, # required
    #         },
    #         node_exporter: {
    #           enabled_in_broker: false, # required
    #         },
    #       },
    #     },
    #     logging_info: {
    #       broker_logs: { # required
    #         cloud_watch_logs: {
    #           enabled: false, # required
    #           log_group: "__string",
    #         },
    #         firehose: {
    #           delivery_stream: "__string",
    #           enabled: false, # required
    #         },
    #         s3: {
    #           bucket: "__string",
    #           enabled: false, # required
    #           prefix: "__string",
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_arn #=> String
    #   resp.cluster_operation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateMonitoring AWS API Documentation
    #
    # @overload update_monitoring(params = {})
    # @param [Hash] params ({})
    def update_monitoring(params = {}, options = {})
      req = build_request(:update_monitoring, params)
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
      context[:gem_version] = '1.29.0'
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
