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

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudhsmv2)

module Aws::CloudHSMV2
  # An API client for CloudHSMV2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudHSMV2::Client.new(
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

    @identifier = :cloudhsmv2

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

    # Copy an AWS CloudHSM cluster backup to a different region.
    #
    # @option params [required, String] :destination_region
    #   The AWS region that will contain your copied CloudHSM cluster backup.
    #
    # @option params [required, String] :backup_id
    #   The ID of the backup that will be copied to the destination region.
    #
    # @option params [Array<Types::Tag>] :tag_list
    #   Tags to apply to the destination backup during creation. If you
    #   specify tags, only these tags will be applied to the destination
    #   backup. If you do not specify tags, the service copies tags from the
    #   source backup to the destination backup.
    #
    # @return [Types::CopyBackupToRegionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyBackupToRegionResponse#destination_backup #destination_backup} => Types::DestinationBackup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_backup_to_region({
    #     destination_region: "Region", # required
    #     backup_id: "BackupId", # required
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.destination_backup.create_timestamp #=> Time
    #   resp.destination_backup.source_region #=> String
    #   resp.destination_backup.source_backup #=> String
    #   resp.destination_backup.source_cluster #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/CopyBackupToRegion AWS API Documentation
    #
    # @overload copy_backup_to_region(params = {})
    # @param [Hash] params ({})
    def copy_backup_to_region(params = {}, options = {})
      req = build_request(:copy_backup_to_region, params)
      req.send_request(options)
    end

    # Creates a new AWS CloudHSM cluster.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   The identifiers (IDs) of the subnets where you are creating the
    #   cluster. You must specify at least one subnet. If you specify multiple
    #   subnets, they must meet the following criteria:
    #
    #   * All subnets must be in the same virtual private cloud (VPC).
    #
    #   * You can specify only one subnet per Availability Zone.
    #
    # @option params [required, String] :hsm_type
    #   The type of HSM to use in the cluster. Currently the only allowed
    #   value is `hsm1.medium`.
    #
    # @option params [String] :source_backup_id
    #   The identifier (ID) of the cluster backup to restore. Use this value
    #   to restore the cluster from a backup instead of creating a new
    #   cluster. To find the backup ID, use DescribeBackups.
    #
    # @option params [Array<Types::Tag>] :tag_list
    #   Tags to apply to the CloudHSM cluster during creation.
    #
    # @return [Types::CreateClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster({
    #     subnet_ids: ["SubnetId"], # required
    #     hsm_type: "HsmType", # required
    #     source_backup_id: "BackupId",
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.backup_policy #=> String, one of "DEFAULT"
    #   resp.cluster.cluster_id #=> String
    #   resp.cluster.create_timestamp #=> Time
    #   resp.cluster.hsms #=> Array
    #   resp.cluster.hsms[0].availability_zone #=> String
    #   resp.cluster.hsms[0].cluster_id #=> String
    #   resp.cluster.hsms[0].subnet_id #=> String
    #   resp.cluster.hsms[0].eni_id #=> String
    #   resp.cluster.hsms[0].eni_ip #=> String
    #   resp.cluster.hsms[0].hsm_id #=> String
    #   resp.cluster.hsms[0].state #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"
    #   resp.cluster.hsms[0].state_message #=> String
    #   resp.cluster.hsm_type #=> String
    #   resp.cluster.pre_co_password #=> String
    #   resp.cluster.security_group #=> String
    #   resp.cluster.source_backup_id #=> String
    #   resp.cluster.state #=> String, one of "CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"
    #   resp.cluster.state_message #=> String
    #   resp.cluster.subnet_mapping #=> Hash
    #   resp.cluster.subnet_mapping["ExternalAz"] #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.certificates.cluster_csr #=> String
    #   resp.cluster.certificates.hsm_certificate #=> String
    #   resp.cluster.certificates.aws_hardware_certificate #=> String
    #   resp.cluster.certificates.manufacturer_hardware_certificate #=> String
    #   resp.cluster.certificates.cluster_certificate #=> String
    #   resp.cluster.tag_list #=> Array
    #   resp.cluster.tag_list[0].key #=> String
    #   resp.cluster.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Creates a new hardware security module (HSM) in the specified AWS
    # CloudHSM cluster.
    #
    # @option params [required, String] :cluster_id
    #   The identifier (ID) of the HSM's cluster. To find the cluster ID, use
    #   DescribeClusters.
    #
    # @option params [required, String] :availability_zone
    #   The Availability Zone where you are creating the HSM. To find the
    #   cluster's Availability Zones, use DescribeClusters.
    #
    # @option params [String] :ip_address
    #   The HSM's IP address. If you specify an IP address, use an available
    #   address from the subnet that maps to the Availability Zone where you
    #   are creating the HSM. If you don't specify an IP address, one is
    #   chosen for you from that subnet.
    #
    # @return [Types::CreateHsmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHsmResponse#hsm #hsm} => Types::Hsm
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hsm({
    #     cluster_id: "ClusterId", # required
    #     availability_zone: "ExternalAz", # required
    #     ip_address: "IpAddress",
    #   })
    #
    # @example Response structure
    #
    #   resp.hsm.availability_zone #=> String
    #   resp.hsm.cluster_id #=> String
    #   resp.hsm.subnet_id #=> String
    #   resp.hsm.eni_id #=> String
    #   resp.hsm.eni_ip #=> String
    #   resp.hsm.hsm_id #=> String
    #   resp.hsm.state #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"
    #   resp.hsm.state_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/CreateHsm AWS API Documentation
    #
    # @overload create_hsm(params = {})
    # @param [Hash] params ({})
    def create_hsm(params = {}, options = {})
      req = build_request(:create_hsm, params)
      req.send_request(options)
    end

    # Deletes a specified AWS CloudHSM backup. A backup can be restored up
    # to 7 days after the DeleteBackup request is made. For more information
    # on restoring a backup, see RestoreBackup.
    #
    # @option params [required, String] :backup_id
    #   The ID of the backup to be deleted. To find the ID of a backup, use
    #   the DescribeBackups operation.
    #
    # @return [Types::DeleteBackupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBackupResponse#backup #backup} => Types::Backup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup({
    #     backup_id: "BackupId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup.backup_id #=> String
    #   resp.backup.backup_state #=> String, one of "CREATE_IN_PROGRESS", "READY", "DELETED", "PENDING_DELETION"
    #   resp.backup.cluster_id #=> String
    #   resp.backup.create_timestamp #=> Time
    #   resp.backup.copy_timestamp #=> Time
    #   resp.backup.source_region #=> String
    #   resp.backup.source_backup #=> String
    #   resp.backup.source_cluster #=> String
    #   resp.backup.delete_timestamp #=> Time
    #   resp.backup.tag_list #=> Array
    #   resp.backup.tag_list[0].key #=> String
    #   resp.backup.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/DeleteBackup AWS API Documentation
    #
    # @overload delete_backup(params = {})
    # @param [Hash] params ({})
    def delete_backup(params = {}, options = {})
      req = build_request(:delete_backup, params)
      req.send_request(options)
    end

    # Deletes the specified AWS CloudHSM cluster. Before you can delete a
    # cluster, you must delete all HSMs in the cluster. To see if the
    # cluster contains any HSMs, use DescribeClusters. To delete an HSM, use
    # DeleteHsm.
    #
    # @option params [required, String] :cluster_id
    #   The identifier (ID) of the cluster that you are deleting. To find the
    #   cluster ID, use DescribeClusters.
    #
    # @return [Types::DeleteClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster({
    #     cluster_id: "ClusterId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.backup_policy #=> String, one of "DEFAULT"
    #   resp.cluster.cluster_id #=> String
    #   resp.cluster.create_timestamp #=> Time
    #   resp.cluster.hsms #=> Array
    #   resp.cluster.hsms[0].availability_zone #=> String
    #   resp.cluster.hsms[0].cluster_id #=> String
    #   resp.cluster.hsms[0].subnet_id #=> String
    #   resp.cluster.hsms[0].eni_id #=> String
    #   resp.cluster.hsms[0].eni_ip #=> String
    #   resp.cluster.hsms[0].hsm_id #=> String
    #   resp.cluster.hsms[0].state #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"
    #   resp.cluster.hsms[0].state_message #=> String
    #   resp.cluster.hsm_type #=> String
    #   resp.cluster.pre_co_password #=> String
    #   resp.cluster.security_group #=> String
    #   resp.cluster.source_backup_id #=> String
    #   resp.cluster.state #=> String, one of "CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"
    #   resp.cluster.state_message #=> String
    #   resp.cluster.subnet_mapping #=> Hash
    #   resp.cluster.subnet_mapping["ExternalAz"] #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.certificates.cluster_csr #=> String
    #   resp.cluster.certificates.hsm_certificate #=> String
    #   resp.cluster.certificates.aws_hardware_certificate #=> String
    #   resp.cluster.certificates.manufacturer_hardware_certificate #=> String
    #   resp.cluster.certificates.cluster_certificate #=> String
    #   resp.cluster.tag_list #=> Array
    #   resp.cluster.tag_list[0].key #=> String
    #   resp.cluster.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/DeleteCluster AWS API Documentation
    #
    # @overload delete_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cluster(params = {}, options = {})
      req = build_request(:delete_cluster, params)
      req.send_request(options)
    end

    # Deletes the specified HSM. To specify an HSM, you can use its
    # identifier (ID), the IP address of the HSM's elastic network
    # interface (ENI), or the ID of the HSM's ENI. You need to specify only
    # one of these values. To find these values, use DescribeClusters.
    #
    # @option params [required, String] :cluster_id
    #   The identifier (ID) of the cluster that contains the HSM that you are
    #   deleting.
    #
    # @option params [String] :hsm_id
    #   The identifier (ID) of the HSM that you are deleting.
    #
    # @option params [String] :eni_id
    #   The identifier (ID) of the elastic network interface (ENI) of the HSM
    #   that you are deleting.
    #
    # @option params [String] :eni_ip
    #   The IP address of the elastic network interface (ENI) of the HSM that
    #   you are deleting.
    #
    # @return [Types::DeleteHsmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteHsmResponse#hsm_id #hsm_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hsm({
    #     cluster_id: "ClusterId", # required
    #     hsm_id: "HsmId",
    #     eni_id: "EniId",
    #     eni_ip: "IpAddress",
    #   })
    #
    # @example Response structure
    #
    #   resp.hsm_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/DeleteHsm AWS API Documentation
    #
    # @overload delete_hsm(params = {})
    # @param [Hash] params ({})
    def delete_hsm(params = {}, options = {})
      req = build_request(:delete_hsm, params)
      req.send_request(options)
    end

    # Gets information about backups of AWS CloudHSM clusters.
    #
    # This is a paginated operation, which means that each response might
    # contain only a subset of all the backups. When the response contains
    # only a subset of backups, it includes a `NextToken` value. Use this
    # value in a subsequent `DescribeBackups` request to get more backups.
    # When you receive a response with no `NextToken` (or an empty or null
    # value), that means there are no more backups to get.
    #
    # @option params [String] :next_token
    #   The `NextToken` value that you received in the previous response. Use
    #   this value to get more backups.
    #
    # @option params [Integer] :max_results
    #   The maximum number of backups to return in the response. When there
    #   are more backups than the number you specify, the response contains a
    #   `NextToken` value.
    #
    # @option params [Hash<String,Array>] :filters
    #   One or more filters to limit the items returned in the response.
    #
    #   Use the `backupIds` filter to return only the specified backups.
    #   Specify backups by their backup identifier (ID).
    #
    #   Use the `sourceBackupIds` filter to return only the backups created
    #   from a source backup. The `sourceBackupID` of a source backup is
    #   returned by the CopyBackupToRegion operation.
    #
    #   Use the `clusterIds` filter to return only the backups for the
    #   specified clusters. Specify clusters by their cluster identifier (ID).
    #
    #   Use the `states` filter to return only backups that match the
    #   specified state.
    #
    # @option params [Boolean] :sort_ascending
    #   Designates whether or not to sort the return backups by ascending
    #   chronological order of generation.
    #
    # @return [Types::DescribeBackupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBackupsResponse#backups #backups} => Array&lt;Types::Backup&gt;
    #   * {Types::DescribeBackupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backups({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: {
    #       "Field" => ["String"],
    #     },
    #     sort_ascending: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.backups #=> Array
    #   resp.backups[0].backup_id #=> String
    #   resp.backups[0].backup_state #=> String, one of "CREATE_IN_PROGRESS", "READY", "DELETED", "PENDING_DELETION"
    #   resp.backups[0].cluster_id #=> String
    #   resp.backups[0].create_timestamp #=> Time
    #   resp.backups[0].copy_timestamp #=> Time
    #   resp.backups[0].source_region #=> String
    #   resp.backups[0].source_backup #=> String
    #   resp.backups[0].source_cluster #=> String
    #   resp.backups[0].delete_timestamp #=> Time
    #   resp.backups[0].tag_list #=> Array
    #   resp.backups[0].tag_list[0].key #=> String
    #   resp.backups[0].tag_list[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/DescribeBackups AWS API Documentation
    #
    # @overload describe_backups(params = {})
    # @param [Hash] params ({})
    def describe_backups(params = {}, options = {})
      req = build_request(:describe_backups, params)
      req.send_request(options)
    end

    # Gets information about AWS CloudHSM clusters.
    #
    # This is a paginated operation, which means that each response might
    # contain only a subset of all the clusters. When the response contains
    # only a subset of clusters, it includes a `NextToken` value. Use this
    # value in a subsequent `DescribeClusters` request to get more clusters.
    # When you receive a response with no `NextToken` (or an empty or null
    # value), that means there are no more clusters to get.
    #
    # @option params [Hash<String,Array>] :filters
    #   One or more filters to limit the items returned in the response.
    #
    #   Use the `clusterIds` filter to return only the specified clusters.
    #   Specify clusters by their cluster identifier (ID).
    #
    #   Use the `vpcIds` filter to return only the clusters in the specified
    #   virtual private clouds (VPCs). Specify VPCs by their VPC identifier
    #   (ID).
    #
    #   Use the `states` filter to return only clusters that match the
    #   specified state.
    #
    # @option params [String] :next_token
    #   The `NextToken` value that you received in the previous response. Use
    #   this value to get more clusters.
    #
    # @option params [Integer] :max_results
    #   The maximum number of clusters to return in the response. When there
    #   are more clusters than the number you specify, the response contains a
    #   `NextToken` value.
    #
    # @return [Types::DescribeClustersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClustersResponse#clusters #clusters} => Array&lt;Types::Cluster&gt;
    #   * {Types::DescribeClustersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_clusters({
    #     filters: {
    #       "Field" => ["String"],
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.clusters #=> Array
    #   resp.clusters[0].backup_policy #=> String, one of "DEFAULT"
    #   resp.clusters[0].cluster_id #=> String
    #   resp.clusters[0].create_timestamp #=> Time
    #   resp.clusters[0].hsms #=> Array
    #   resp.clusters[0].hsms[0].availability_zone #=> String
    #   resp.clusters[0].hsms[0].cluster_id #=> String
    #   resp.clusters[0].hsms[0].subnet_id #=> String
    #   resp.clusters[0].hsms[0].eni_id #=> String
    #   resp.clusters[0].hsms[0].eni_ip #=> String
    #   resp.clusters[0].hsms[0].hsm_id #=> String
    #   resp.clusters[0].hsms[0].state #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"
    #   resp.clusters[0].hsms[0].state_message #=> String
    #   resp.clusters[0].hsm_type #=> String
    #   resp.clusters[0].pre_co_password #=> String
    #   resp.clusters[0].security_group #=> String
    #   resp.clusters[0].source_backup_id #=> String
    #   resp.clusters[0].state #=> String, one of "CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"
    #   resp.clusters[0].state_message #=> String
    #   resp.clusters[0].subnet_mapping #=> Hash
    #   resp.clusters[0].subnet_mapping["ExternalAz"] #=> String
    #   resp.clusters[0].vpc_id #=> String
    #   resp.clusters[0].certificates.cluster_csr #=> String
    #   resp.clusters[0].certificates.hsm_certificate #=> String
    #   resp.clusters[0].certificates.aws_hardware_certificate #=> String
    #   resp.clusters[0].certificates.manufacturer_hardware_certificate #=> String
    #   resp.clusters[0].certificates.cluster_certificate #=> String
    #   resp.clusters[0].tag_list #=> Array
    #   resp.clusters[0].tag_list[0].key #=> String
    #   resp.clusters[0].tag_list[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/DescribeClusters AWS API Documentation
    #
    # @overload describe_clusters(params = {})
    # @param [Hash] params ({})
    def describe_clusters(params = {}, options = {})
      req = build_request(:describe_clusters, params)
      req.send_request(options)
    end

    # Claims an AWS CloudHSM cluster by submitting the cluster certificate
    # issued by your issuing certificate authority (CA) and the CA's root
    # certificate. Before you can claim a cluster, you must sign the
    # cluster's certificate signing request (CSR) with your issuing CA. To
    # get the cluster's CSR, use DescribeClusters.
    #
    # @option params [required, String] :cluster_id
    #   The identifier (ID) of the cluster that you are claiming. To find the
    #   cluster ID, use DescribeClusters.
    #
    # @option params [required, String] :signed_cert
    #   The cluster certificate issued (signed) by your issuing certificate
    #   authority (CA). The certificate must be in PEM format and can contain
    #   a maximum of 5000 characters.
    #
    # @option params [required, String] :trust_anchor
    #   The issuing certificate of the issuing certificate authority (CA) that
    #   issued (signed) the cluster certificate. You must use a self-signed
    #   certificate. The certificate used to sign the HSM CSR must be directly
    #   available, and thus must be the root certificate. The certificate must
    #   be in PEM format and can contain a maximum of 5000 characters.
    #
    # @return [Types::InitializeClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InitializeClusterResponse#state #state} => String
    #   * {Types::InitializeClusterResponse#state_message #state_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initialize_cluster({
    #     cluster_id: "ClusterId", # required
    #     signed_cert: "Cert", # required
    #     trust_anchor: "Cert", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.state #=> String, one of "CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"
    #   resp.state_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/InitializeCluster AWS API Documentation
    #
    # @overload initialize_cluster(params = {})
    # @param [Hash] params ({})
    def initialize_cluster(params = {}, options = {})
      req = build_request(:initialize_cluster, params)
      req.send_request(options)
    end

    # Gets a list of tags for the specified AWS CloudHSM cluster.
    #
    # This is a paginated operation, which means that each response might
    # contain only a subset of all the tags. When the response contains only
    # a subset of tags, it includes a `NextToken` value. Use this value in a
    # subsequent `ListTags` request to get more tags. When you receive a
    # response with no `NextToken` (or an empty or null value), that means
    # there are no more tags to get.
    #
    # @option params [required, String] :resource_id
    #   The cluster identifier (ID) for the cluster whose tags you are
    #   getting. To find the cluster ID, use DescribeClusters.
    #
    # @option params [String] :next_token
    #   The `NextToken` value that you received in the previous response. Use
    #   this value to get more tags.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tags to return in the response. When there are
    #   more tags than the number you specify, the response contains a
    #   `NextToken` value.
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     resource_id: "ResourceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Restores a specified AWS CloudHSM backup that is in the
    # `PENDING_DELETION` state. For mor information on deleting a backup,
    # see DeleteBackup.
    #
    # @option params [required, String] :backup_id
    #   The ID of the backup to be restored. To find the ID of a backup, use
    #   the DescribeBackups operation.
    #
    # @return [Types::RestoreBackupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreBackupResponse#backup #backup} => Types::Backup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_backup({
    #     backup_id: "BackupId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup.backup_id #=> String
    #   resp.backup.backup_state #=> String, one of "CREATE_IN_PROGRESS", "READY", "DELETED", "PENDING_DELETION"
    #   resp.backup.cluster_id #=> String
    #   resp.backup.create_timestamp #=> Time
    #   resp.backup.copy_timestamp #=> Time
    #   resp.backup.source_region #=> String
    #   resp.backup.source_backup #=> String
    #   resp.backup.source_cluster #=> String
    #   resp.backup.delete_timestamp #=> Time
    #   resp.backup.tag_list #=> Array
    #   resp.backup.tag_list[0].key #=> String
    #   resp.backup.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/RestoreBackup AWS API Documentation
    #
    # @overload restore_backup(params = {})
    # @param [Hash] params ({})
    def restore_backup(params = {}, options = {})
      req = build_request(:restore_backup, params)
      req.send_request(options)
    end

    # Adds or overwrites one or more tags for the specified AWS CloudHSM
    # cluster.
    #
    # @option params [required, String] :resource_id
    #   The cluster identifier (ID) for the cluster that you are tagging. To
    #   find the cluster ID, use DescribeClusters.
    #
    # @option params [required, Array<Types::Tag>] :tag_list
    #   A list of one or more tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_id: "ResourceId", # required
    #     tag_list: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tag or tags from the specified AWS CloudHSM
    # cluster.
    #
    # @option params [required, String] :resource_id
    #   The cluster identifier (ID) for the cluster whose tags you are
    #   removing. To find the cluster ID, use DescribeClusters.
    #
    # @option params [required, Array<String>] :tag_key_list
    #   A list of one or more tag keys for the tags that you are removing.
    #   Specify only the tag keys, not the tag values.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_id: "ResourceId", # required
    #     tag_key_list: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/UntagResource AWS API Documentation
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
      context[:gem_name] = 'aws-sdk-cloudhsmv2'
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
