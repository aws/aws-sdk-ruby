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
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:opensearchservice)

module Aws::OpenSearchService
  # An API client for OpenSearchService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::OpenSearchService::Client.new(
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

    @identifier = :opensearchservice

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
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
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

    # Allows the remote domain owner to accept an inbound cross-cluster
    # connection request.
    #
    # @option params [required, String] :connection_id
    #   The ID of the inbound connection you want to accept.
    #
    # @return [Types::AcceptInboundConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptInboundConnectionResponse#connection #connection} => Types::InboundConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_inbound_connection({
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connection.local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connection.local_domain_info.aws_domain_information.region #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.region #=> String
    #   resp.connection.connection_id #=> String
    #   resp.connection.connection_status.status_code #=> String, one of "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.connection.connection_status.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AcceptInboundConnection AWS API Documentation
    #
    # @overload accept_inbound_connection(params = {})
    # @param [Hash] params ({})
    def accept_inbound_connection(params = {}, options = {})
      req = build_request(:accept_inbound_connection, params)
      req.send_request(options)
    end

    # Attaches tags to an existing domain. Tags are a set of case-sensitive
    # key value pairs. An domain can have up to 10 tags. See [ Tagging
    # Amazon OpenSearch Service domains][1] for more information.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains.html#managedomains-awsresorcetagging
    #
    # @option params [required, String] :arn
    #   Specify the `ARN` of the domain you want to add tags to.
    #
    # @option params [required, Array<Types::Tag>] :tag_list
    #   List of `Tag` to add to the domain.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AddTags AWS API Documentation
    #
    # @overload add_tags(params = {})
    # @param [Hash] params ({})
    def add_tags(params = {}, options = {})
      req = build_request(:add_tags, params)
      req.send_request(options)
    end

    # Associates a package with an Amazon OpenSearch Service domain.
    #
    # @option params [required, String] :package_id
    #   Internal ID of the package to associate with a domain. Use
    #   `DescribePackages` to find this value.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain to associate the package with.
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
    #   resp.domain_package_details.package_version #=> String
    #   resp.domain_package_details.reference_path #=> String
    #   resp.domain_package_details.error_details.error_type #=> String
    #   resp.domain_package_details.error_details.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AssociatePackage AWS API Documentation
    #
    # @overload associate_package(params = {})
    # @param [Hash] params ({})
    def associate_package(params = {}, options = {})
      req = build_request(:associate_package, params)
      req.send_request(options)
    end

    # Cancels a scheduled service software update for an Amazon OpenSearch
    # Service domain. You can only perform this operation before the
    # `AutomatedUpdateDate` and when the `UpdateStatus` is in the
    # `PENDING_UPDATE` state.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to stop the latest service
    #   software update on.
    #
    # @return [Types::CancelServiceSoftwareUpdateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelServiceSoftwareUpdateResponse#service_software_options #service_software_options} => Types::ServiceSoftwareOptions
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_service_software_update({
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CancelServiceSoftwareUpdate AWS API Documentation
    #
    # @overload cancel_service_software_update(params = {})
    # @param [Hash] params ({})
    def cancel_service_software_update(params = {}, options = {})
      req = build_request(:cancel_service_software_update, params)
      req.send_request(options)
    end

    # Creates a new Amazon OpenSearch Service domain. For more information,
    # see [Creating and managing Amazon OpenSearch Service domains ][1] in
    # the *Amazon OpenSearch Service Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html
    #
    # @option params [required, String] :domain_name
    #   The name of the Amazon OpenSearch Service domain you're creating.
    #   Domain names are unique across the domains owned by an account within
    #   an AWS region. Domain names must start with a lowercase letter and can
    #   contain the following characters: a-z (lowercase), 0-9, and -
    #   (hyphen).
    #
    # @option params [String] :engine_version
    #   String of format Elasticsearch\_X.Y or OpenSearch\_X.Y to specify the
    #   engine version for the Amazon OpenSearch Service domain. For example,
    #   "OpenSearch\_1.0" or "Elasticsearch\_7.9". For more information,
    #   see [Creating and managing Amazon OpenSearch Service domains ][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomains
    #
    # @option params [Types::ClusterConfig] :cluster_config
    #   Configuration options for a domain. Specifies the instance type and
    #   number of instances in the domain.
    #
    # @option params [Types::EBSOptions] :ebs_options
    #   Options to enable, disable, and specify the type and size of EBS
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
    #   Options to specify the subnets and security groups for a VPC endpoint.
    #   For more information, see [Launching your Amazon OpenSearch Service
    #   domains using a VPC ][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html
    #
    # @option params [Types::CognitoOptions] :cognito_options
    #   Options to specify the Cognito user and identity pools for OpenSearch
    #   Dashboards authentication. For more information, see [Configuring
    #   Amazon Cognito authentication for OpenSearch Dashboards][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html
    #
    # @option params [Types::EncryptionAtRestOptions] :encryption_at_rest_options
    #   Options for encryption of data at rest.
    #
    # @option params [Types::NodeToNodeEncryptionOptions] :node_to_node_encryption_options
    #   Node-to-node encryption options.
    #
    # @option params [Hash<String,String>] :advanced_options
    #   Option to allow references to indices in an HTTP request body. Must be
    #   `false` when configuring access to individual sub-resources. By
    #   default, the value is `true`. See [Advanced cluster parameters ][1]
    #   for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options
    #
    # @option params [Hash<String,Types::LogPublishingOption>] :log_publishing_options
    #   Map of `LogType` and `LogPublishingOption`, each containing options to
    #   publish a given type of OpenSearch log.
    #
    # @option params [Types::DomainEndpointOptions] :domain_endpoint_options
    #   Options to specify configurations that will be applied to the domain
    #   endpoint.
    #
    # @option params [Types::AdvancedSecurityOptionsInput] :advanced_security_options
    #   Specifies advanced security options.
    #
    # @option params [Array<Types::Tag>] :tag_list
    #   A list of `Tag` added during domain creation.
    #
    # @option params [Types::AutoTuneOptionsInput] :auto_tune_options
    #   Specifies Auto-Tune options.
    #
    # @return [Types::CreateDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainResponse#domain_status #domain_status} => Types::DomainStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain({
    #     domain_name: "DomainName", # required
    #     engine_version: "VersionString",
    #     cluster_config: {
    #       instance_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #       instance_count: 1,
    #       dedicated_master_enabled: false,
    #       zone_awareness_enabled: false,
    #       zone_awareness_config: {
    #         availability_zone_count: 1,
    #       },
    #       dedicated_master_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #       dedicated_master_count: 1,
    #       warm_enabled: false,
    #       warm_type: "ultrawarm1.medium.search", # accepts ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search
    #       warm_count: 1,
    #       cold_storage_options: {
    #         enabled: false, # required
    #       },
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
    #       custom_endpoint_enabled: false,
    #       custom_endpoint: "DomainNameFqdn",
    #       custom_endpoint_certificate_arn: "ARN",
    #     },
    #     advanced_security_options: {
    #       enabled: false,
    #       internal_user_database_enabled: false,
    #       master_user_options: {
    #         master_user_arn: "ARN",
    #         master_user_name: "Username",
    #         master_user_password: "Password",
    #       },
    #       saml_options: {
    #         enabled: false,
    #         idp: {
    #           metadata_content: "SAMLMetadata", # required
    #           entity_id: "SAMLEntityId", # required
    #         },
    #         master_user_name: "Username",
    #         master_backend_role: "BackendRole",
    #         subject_key: "String",
    #         roles_key: "String",
    #         session_timeout_minutes: 1,
    #       },
    #       anonymous_auth_enabled: false,
    #     },
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     auto_tune_options: {
    #       desired_state: "ENABLED", # accepts ENABLED, DISABLED
    #       maintenance_schedules: [
    #         {
    #           start_at: Time.now,
    #           duration: {
    #             value: 1,
    #             unit: "HOURS", # accepts HOURS
    #           },
    #           cron_expression_for_recurrence: "String",
    #         },
    #       ],
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
    #   resp.domain_status.engine_version #=> String
    #   resp.domain_status.cluster_config.instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status.cluster_config.instance_count #=> Integer
    #   resp.domain_status.cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.domain_status.cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.domain_status.cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_status.cluster_config.dedicated_master_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status.cluster_config.dedicated_master_count #=> Integer
    #   resp.domain_status.cluster_config.warm_enabled #=> Boolean
    #   resp.domain_status.cluster_config.warm_type #=> String, one of "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"
    #   resp.domain_status.cluster_config.warm_count #=> Integer
    #   resp.domain_status.cluster_config.cold_storage_options.enabled #=> Boolean
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
    #   resp.domain_status.domain_endpoint_options.custom_endpoint_enabled #=> Boolean
    #   resp.domain_status.domain_endpoint_options.custom_endpoint #=> String
    #   resp.domain_status.domain_endpoint_options.custom_endpoint_certificate_arn #=> String
    #   resp.domain_status.advanced_security_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.internal_user_database_enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.saml_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.saml_options.idp.metadata_content #=> String
    #   resp.domain_status.advanced_security_options.saml_options.idp.entity_id #=> String
    #   resp.domain_status.advanced_security_options.saml_options.subject_key #=> String
    #   resp.domain_status.advanced_security_options.saml_options.roles_key #=> String
    #   resp.domain_status.advanced_security_options.saml_options.session_timeout_minutes #=> Integer
    #   resp.domain_status.advanced_security_options.anonymous_auth_disable_date #=> Time
    #   resp.domain_status.advanced_security_options.anonymous_auth_enabled #=> Boolean
    #   resp.domain_status.auto_tune_options.state #=> String, one of "ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"
    #   resp.domain_status.auto_tune_options.error_message #=> String
    #   resp.domain_status.change_progress_details.change_id #=> String
    #   resp.domain_status.change_progress_details.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreateDomain AWS API Documentation
    #
    # @overload create_domain(params = {})
    # @param [Hash] params ({})
    def create_domain(params = {}, options = {})
      req = build_request(:create_domain, params)
      req.send_request(options)
    end

    # Creates a new cross-cluster connection from a local OpenSearch domain
    # to a remote OpenSearch domain.
    #
    # @option params [required, Types::DomainInformationContainer] :local_domain_info
    #   The ` AWSDomainInformation ` for the local OpenSearch domain.
    #
    # @option params [required, Types::DomainInformationContainer] :remote_domain_info
    #   The ` AWSDomainInformation ` for the remote OpenSearch domain.
    #
    # @option params [required, String] :connection_alias
    #   The connection alias used used by the customer for this cross-cluster
    #   connection.
    #
    # @return [Types::CreateOutboundConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOutboundConnectionResponse#local_domain_info #local_domain_info} => Types::DomainInformationContainer
    #   * {Types::CreateOutboundConnectionResponse#remote_domain_info #remote_domain_info} => Types::DomainInformationContainer
    #   * {Types::CreateOutboundConnectionResponse#connection_alias #connection_alias} => String
    #   * {Types::CreateOutboundConnectionResponse#connection_status #connection_status} => Types::OutboundConnectionStatus
    #   * {Types::CreateOutboundConnectionResponse#connection_id #connection_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_outbound_connection({
    #     local_domain_info: { # required
    #       aws_domain_information: {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region",
    #       },
    #     },
    #     remote_domain_info: { # required
    #       aws_domain_information: {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region",
    #       },
    #     },
    #     connection_alias: "ConnectionAlias", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.local_domain_info.aws_domain_information.region #=> String
    #   resp.remote_domain_info.aws_domain_information.owner_id #=> String
    #   resp.remote_domain_info.aws_domain_information.domain_name #=> String
    #   resp.remote_domain_info.aws_domain_information.region #=> String
    #   resp.connection_alias #=> String
    #   resp.connection_status.status_code #=> String, one of "VALIDATING", "VALIDATION_FAILED", "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.connection_status.message #=> String
    #   resp.connection_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreateOutboundConnection AWS API Documentation
    #
    # @overload create_outbound_connection(params = {})
    # @param [Hash] params ({})
    def create_outbound_connection(params = {}, options = {})
      req = build_request(:create_outbound_connection, params)
      req.send_request(options)
    end

    # Create a package for use with Amazon OpenSearch Service domains.
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
    #   The Amazon S3 location from which to import the package.
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
    #   resp.package_details.last_updated_at #=> Time
    #   resp.package_details.available_package_version #=> String
    #   resp.package_details.error_details.error_type #=> String
    #   resp.package_details.error_details.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreatePackage AWS API Documentation
    #
    # @overload create_package(params = {})
    # @param [Hash] params ({})
    def create_package(params = {}, options = {})
      req = build_request(:create_package, params)
      req.send_request(options)
    end

    # Permanently deletes the specified domain and all of its data. Once a
    # domain is deleted, it cannot be recovered.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain you want to permanently delete.
    #
    # @return [Types::DeleteDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDomainResponse#domain_status #domain_status} => Types::DomainStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain({
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
    #   resp.domain_status.engine_version #=> String
    #   resp.domain_status.cluster_config.instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status.cluster_config.instance_count #=> Integer
    #   resp.domain_status.cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.domain_status.cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.domain_status.cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_status.cluster_config.dedicated_master_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status.cluster_config.dedicated_master_count #=> Integer
    #   resp.domain_status.cluster_config.warm_enabled #=> Boolean
    #   resp.domain_status.cluster_config.warm_type #=> String, one of "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"
    #   resp.domain_status.cluster_config.warm_count #=> Integer
    #   resp.domain_status.cluster_config.cold_storage_options.enabled #=> Boolean
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
    #   resp.domain_status.domain_endpoint_options.custom_endpoint_enabled #=> Boolean
    #   resp.domain_status.domain_endpoint_options.custom_endpoint #=> String
    #   resp.domain_status.domain_endpoint_options.custom_endpoint_certificate_arn #=> String
    #   resp.domain_status.advanced_security_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.internal_user_database_enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.saml_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.saml_options.idp.metadata_content #=> String
    #   resp.domain_status.advanced_security_options.saml_options.idp.entity_id #=> String
    #   resp.domain_status.advanced_security_options.saml_options.subject_key #=> String
    #   resp.domain_status.advanced_security_options.saml_options.roles_key #=> String
    #   resp.domain_status.advanced_security_options.saml_options.session_timeout_minutes #=> Integer
    #   resp.domain_status.advanced_security_options.anonymous_auth_disable_date #=> Time
    #   resp.domain_status.advanced_security_options.anonymous_auth_enabled #=> Boolean
    #   resp.domain_status.auto_tune_options.state #=> String, one of "ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"
    #   resp.domain_status.auto_tune_options.error_message #=> String
    #   resp.domain_status.change_progress_details.change_id #=> String
    #   resp.domain_status.change_progress_details.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteDomain AWS API Documentation
    #
    # @overload delete_domain(params = {})
    # @param [Hash] params ({})
    def delete_domain(params = {}, options = {})
      req = build_request(:delete_domain, params)
      req.send_request(options)
    end

    # Allows the remote domain owner to delete an existing inbound
    # cross-cluster connection.
    #
    # @option params [required, String] :connection_id
    #   The ID of the inbound connection to permanently delete.
    #
    # @return [Types::DeleteInboundConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInboundConnectionResponse#connection #connection} => Types::InboundConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_inbound_connection({
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connection.local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connection.local_domain_info.aws_domain_information.region #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.region #=> String
    #   resp.connection.connection_id #=> String
    #   resp.connection.connection_status.status_code #=> String, one of "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.connection.connection_status.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteInboundConnection AWS API Documentation
    #
    # @overload delete_inbound_connection(params = {})
    # @param [Hash] params ({})
    def delete_inbound_connection(params = {}, options = {})
      req = build_request(:delete_inbound_connection, params)
      req.send_request(options)
    end

    # Allows the local domain owner to delete an existing outbound
    # cross-cluster connection.
    #
    # @option params [required, String] :connection_id
    #   The ID of the outbound connection you want to permanently delete.
    #
    # @return [Types::DeleteOutboundConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteOutboundConnectionResponse#connection #connection} => Types::OutboundConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_outbound_connection({
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connection.local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connection.local_domain_info.aws_domain_information.region #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.region #=> String
    #   resp.connection.connection_id #=> String
    #   resp.connection.connection_alias #=> String
    #   resp.connection.connection_status.status_code #=> String, one of "VALIDATING", "VALIDATION_FAILED", "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.connection.connection_status.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteOutboundConnection AWS API Documentation
    #
    # @overload delete_outbound_connection(params = {})
    # @param [Hash] params ({})
    def delete_outbound_connection(params = {}, options = {})
      req = build_request(:delete_outbound_connection, params)
      req.send_request(options)
    end

    # Deletes the package.
    #
    # @option params [required, String] :package_id
    #   The internal ID of the package you want to delete. Use
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
    #   resp.package_details.last_updated_at #=> Time
    #   resp.package_details.available_package_version #=> String
    #   resp.package_details.error_details.error_type #=> String
    #   resp.package_details.error_details.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeletePackage AWS API Documentation
    #
    # @overload delete_package(params = {})
    # @param [Hash] params ({})
    def delete_package(params = {}, options = {})
      req = build_request(:delete_package, params)
      req.send_request(options)
    end

    # Returns domain configuration information about the specified domain,
    # including the domain ID, domain endpoint, and domain ARN.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain for which you want information.
    #
    # @return [Types::DescribeDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainResponse#domain_status #domain_status} => Types::DomainStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain({
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
    #   resp.domain_status.engine_version #=> String
    #   resp.domain_status.cluster_config.instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status.cluster_config.instance_count #=> Integer
    #   resp.domain_status.cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.domain_status.cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.domain_status.cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_status.cluster_config.dedicated_master_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status.cluster_config.dedicated_master_count #=> Integer
    #   resp.domain_status.cluster_config.warm_enabled #=> Boolean
    #   resp.domain_status.cluster_config.warm_type #=> String, one of "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"
    #   resp.domain_status.cluster_config.warm_count #=> Integer
    #   resp.domain_status.cluster_config.cold_storage_options.enabled #=> Boolean
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
    #   resp.domain_status.domain_endpoint_options.custom_endpoint_enabled #=> Boolean
    #   resp.domain_status.domain_endpoint_options.custom_endpoint #=> String
    #   resp.domain_status.domain_endpoint_options.custom_endpoint_certificate_arn #=> String
    #   resp.domain_status.advanced_security_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.internal_user_database_enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.saml_options.enabled #=> Boolean
    #   resp.domain_status.advanced_security_options.saml_options.idp.metadata_content #=> String
    #   resp.domain_status.advanced_security_options.saml_options.idp.entity_id #=> String
    #   resp.domain_status.advanced_security_options.saml_options.subject_key #=> String
    #   resp.domain_status.advanced_security_options.saml_options.roles_key #=> String
    #   resp.domain_status.advanced_security_options.saml_options.session_timeout_minutes #=> Integer
    #   resp.domain_status.advanced_security_options.anonymous_auth_disable_date #=> Time
    #   resp.domain_status.advanced_security_options.anonymous_auth_enabled #=> Boolean
    #   resp.domain_status.auto_tune_options.state #=> String, one of "ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"
    #   resp.domain_status.auto_tune_options.error_message #=> String
    #   resp.domain_status.change_progress_details.change_id #=> String
    #   resp.domain_status.change_progress_details.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomain AWS API Documentation
    #
    # @overload describe_domain(params = {})
    # @param [Hash] params ({})
    def describe_domain(params = {}, options = {})
      req = build_request(:describe_domain, params)
      req.send_request(options)
    end

    # Provides scheduled Auto-Tune action details for the domain, such as
    # Auto-Tune action type, description, severity, and scheduled date.
    #
    # @option params [required, String] :domain_name
    #   The domain name for which you want Auto-Tune action details.
    #
    # @option params [Integer] :max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #
    # @option params [String] :next_token
    #   NextToken is sent in case the earlier API call results contain the
    #   NextToken. Used for pagination.
    #
    # @return [Types::DescribeDomainAutoTunesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainAutoTunesResponse#auto_tunes #auto_tunes} => Array&lt;Types::AutoTune&gt;
    #   * {Types::DescribeDomainAutoTunesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain_auto_tunes({
    #     domain_name: "DomainName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_tunes #=> Array
    #   resp.auto_tunes[0].auto_tune_type #=> String, one of "SCHEDULED_ACTION"
    #   resp.auto_tunes[0].auto_tune_details.scheduled_auto_tune_details.date #=> Time
    #   resp.auto_tunes[0].auto_tune_details.scheduled_auto_tune_details.action_type #=> String, one of "JVM_HEAP_SIZE_TUNING", "JVM_YOUNG_GEN_TUNING"
    #   resp.auto_tunes[0].auto_tune_details.scheduled_auto_tune_details.action #=> String
    #   resp.auto_tunes[0].auto_tune_details.scheduled_auto_tune_details.severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainAutoTunes AWS API Documentation
    #
    # @overload describe_domain_auto_tunes(params = {})
    # @param [Hash] params ({})
    def describe_domain_auto_tunes(params = {}, options = {})
      req = build_request(:describe_domain_auto_tunes, params)
      req.send_request(options)
    end

    # Returns information about the current blue/green deployment happening
    # on a domain, including a change ID, status, and progress stages.
    #
    # @option params [required, String] :domain_name
    #   The domain you want to get the progress information about.
    #
    # @option params [String] :change_id
    #   The specific change ID for which you want to get progress information.
    #   This is an optional parameter. If omitted, the service returns
    #   information about the most recent configuration change.
    #
    # @return [Types::DescribeDomainChangeProgressResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainChangeProgressResponse#change_progress_status #change_progress_status} => Types::ChangeProgressStatusDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain_change_progress({
    #     domain_name: "DomainName", # required
    #     change_id: "GUID",
    #   })
    #
    # @example Response structure
    #
    #   resp.change_progress_status.change_id #=> String
    #   resp.change_progress_status.start_time #=> Time
    #   resp.change_progress_status.status #=> String, one of "PENDING", "PROCESSING", "COMPLETED", "FAILED"
    #   resp.change_progress_status.pending_properties #=> Array
    #   resp.change_progress_status.pending_properties[0] #=> String
    #   resp.change_progress_status.completed_properties #=> Array
    #   resp.change_progress_status.completed_properties[0] #=> String
    #   resp.change_progress_status.total_number_of_stages #=> Integer
    #   resp.change_progress_status.change_progress_stages #=> Array
    #   resp.change_progress_status.change_progress_stages[0].name #=> String
    #   resp.change_progress_status.change_progress_stages[0].status #=> String
    #   resp.change_progress_status.change_progress_stages[0].description #=> String
    #   resp.change_progress_status.change_progress_stages[0].last_updated #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainChangeProgress AWS API Documentation
    #
    # @overload describe_domain_change_progress(params = {})
    # @param [Hash] params ({})
    def describe_domain_change_progress(params = {}, options = {})
      req = build_request(:describe_domain_change_progress, params)
      req.send_request(options)
    end

    # Provides cluster configuration information about the specified domain,
    # such as the state, creation date, update version, and update date for
    # cluster options.
    #
    # @option params [required, String] :domain_name
    #   The domain you want to get information about.
    #
    # @return [Types::DescribeDomainConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainConfigResponse#domain_config #domain_config} => Types::DomainConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain_config({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_config.engine_version.options #=> String
    #   resp.domain_config.engine_version.status.creation_date #=> Time
    #   resp.domain_config.engine_version.status.update_date #=> Time
    #   resp.domain_config.engine_version.status.update_version #=> Integer
    #   resp.domain_config.engine_version.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.engine_version.status.pending_deletion #=> Boolean
    #   resp.domain_config.cluster_config.options.instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_config.cluster_config.options.instance_count #=> Integer
    #   resp.domain_config.cluster_config.options.dedicated_master_enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.zone_awareness_enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_config.cluster_config.options.dedicated_master_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_config.cluster_config.options.dedicated_master_count #=> Integer
    #   resp.domain_config.cluster_config.options.warm_enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.warm_type #=> String, one of "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"
    #   resp.domain_config.cluster_config.options.warm_count #=> Integer
    #   resp.domain_config.cluster_config.options.cold_storage_options.enabled #=> Boolean
    #   resp.domain_config.cluster_config.status.creation_date #=> Time
    #   resp.domain_config.cluster_config.status.update_date #=> Time
    #   resp.domain_config.cluster_config.status.update_version #=> Integer
    #   resp.domain_config.cluster_config.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.cluster_config.status.pending_deletion #=> Boolean
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
    #   resp.domain_config.domain_endpoint_options.options.custom_endpoint_enabled #=> Boolean
    #   resp.domain_config.domain_endpoint_options.options.custom_endpoint #=> String
    #   resp.domain_config.domain_endpoint_options.options.custom_endpoint_certificate_arn #=> String
    #   resp.domain_config.domain_endpoint_options.status.creation_date #=> Time
    #   resp.domain_config.domain_endpoint_options.status.update_date #=> Time
    #   resp.domain_config.domain_endpoint_options.status.update_version #=> Integer
    #   resp.domain_config.domain_endpoint_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.domain_endpoint_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.advanced_security_options.options.enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.internal_user_database_enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.saml_options.enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.saml_options.idp.metadata_content #=> String
    #   resp.domain_config.advanced_security_options.options.saml_options.idp.entity_id #=> String
    #   resp.domain_config.advanced_security_options.options.saml_options.subject_key #=> String
    #   resp.domain_config.advanced_security_options.options.saml_options.roles_key #=> String
    #   resp.domain_config.advanced_security_options.options.saml_options.session_timeout_minutes #=> Integer
    #   resp.domain_config.advanced_security_options.options.anonymous_auth_disable_date #=> Time
    #   resp.domain_config.advanced_security_options.options.anonymous_auth_enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.status.creation_date #=> Time
    #   resp.domain_config.advanced_security_options.status.update_date #=> Time
    #   resp.domain_config.advanced_security_options.status.update_version #=> Integer
    #   resp.domain_config.advanced_security_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.advanced_security_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.auto_tune_options.options.desired_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.domain_config.auto_tune_options.options.rollback_on_disable #=> String, one of "NO_ROLLBACK", "DEFAULT_ROLLBACK"
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules #=> Array
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules[0].start_at #=> Time
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules[0].duration.value #=> Integer
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules[0].duration.unit #=> String, one of "HOURS"
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules[0].cron_expression_for_recurrence #=> String
    #   resp.domain_config.auto_tune_options.status.creation_date #=> Time
    #   resp.domain_config.auto_tune_options.status.update_date #=> Time
    #   resp.domain_config.auto_tune_options.status.update_version #=> Integer
    #   resp.domain_config.auto_tune_options.status.state #=> String, one of "ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"
    #   resp.domain_config.auto_tune_options.status.error_message #=> String
    #   resp.domain_config.auto_tune_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.change_progress_details.change_id #=> String
    #   resp.domain_config.change_progress_details.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainConfig AWS API Documentation
    #
    # @overload describe_domain_config(params = {})
    # @param [Hash] params ({})
    def describe_domain_config(params = {}, options = {})
      req = build_request(:describe_domain_config, params)
      req.send_request(options)
    end

    # Returns domain configuration information about the specified domains,
    # including the domain ID, domain endpoint, and domain ARN.
    #
    # @option params [required, Array<String>] :domain_names
    #   The domains for which you want information.
    #
    # @return [Types::DescribeDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainsResponse#domain_status_list #domain_status_list} => Array&lt;Types::DomainStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domains({
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
    #   resp.domain_status_list[0].engine_version #=> String
    #   resp.domain_status_list[0].cluster_config.instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status_list[0].cluster_config.instance_count #=> Integer
    #   resp.domain_status_list[0].cluster_config.dedicated_master_enabled #=> Boolean
    #   resp.domain_status_list[0].cluster_config.zone_awareness_enabled #=> Boolean
    #   resp.domain_status_list[0].cluster_config.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_status_list[0].cluster_config.dedicated_master_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_status_list[0].cluster_config.dedicated_master_count #=> Integer
    #   resp.domain_status_list[0].cluster_config.warm_enabled #=> Boolean
    #   resp.domain_status_list[0].cluster_config.warm_type #=> String, one of "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"
    #   resp.domain_status_list[0].cluster_config.warm_count #=> Integer
    #   resp.domain_status_list[0].cluster_config.cold_storage_options.enabled #=> Boolean
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
    #   resp.domain_status_list[0].domain_endpoint_options.custom_endpoint_enabled #=> Boolean
    #   resp.domain_status_list[0].domain_endpoint_options.custom_endpoint #=> String
    #   resp.domain_status_list[0].domain_endpoint_options.custom_endpoint_certificate_arn #=> String
    #   resp.domain_status_list[0].advanced_security_options.enabled #=> Boolean
    #   resp.domain_status_list[0].advanced_security_options.internal_user_database_enabled #=> Boolean
    #   resp.domain_status_list[0].advanced_security_options.saml_options.enabled #=> Boolean
    #   resp.domain_status_list[0].advanced_security_options.saml_options.idp.metadata_content #=> String
    #   resp.domain_status_list[0].advanced_security_options.saml_options.idp.entity_id #=> String
    #   resp.domain_status_list[0].advanced_security_options.saml_options.subject_key #=> String
    #   resp.domain_status_list[0].advanced_security_options.saml_options.roles_key #=> String
    #   resp.domain_status_list[0].advanced_security_options.saml_options.session_timeout_minutes #=> Integer
    #   resp.domain_status_list[0].advanced_security_options.anonymous_auth_disable_date #=> Time
    #   resp.domain_status_list[0].advanced_security_options.anonymous_auth_enabled #=> Boolean
    #   resp.domain_status_list[0].auto_tune_options.state #=> String, one of "ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"
    #   resp.domain_status_list[0].auto_tune_options.error_message #=> String
    #   resp.domain_status_list[0].change_progress_details.change_id #=> String
    #   resp.domain_status_list[0].change_progress_details.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomains AWS API Documentation
    #
    # @overload describe_domains(params = {})
    # @param [Hash] params ({})
    def describe_domains(params = {}, options = {})
      req = build_request(:describe_domains, params)
      req.send_request(options)
    end

    # Lists all the inbound cross-cluster connections for a remote domain.
    #
    # @option params [Array<Types::Filter>] :filters
    #   A list of filters used to match properties for inbound cross-cluster
    #   connections. Available ` Filter ` values are: * connection-id
    #   * local-domain-info.domain-name
    #   * local-domain-info.owner-id
    #   * local-domain-info.region
    #   * remote-domain-info.domain-name
    #
    # @option params [Integer] :max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #
    # @option params [String] :next_token
    #   If more results are available and NextToken is present, make the next
    #   request to the same API with the received NextToken to paginate the
    #   remaining results.
    #
    # @return [Types::DescribeInboundConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInboundConnectionsResponse#connections #connections} => Array&lt;Types::InboundConnection&gt;
    #   * {Types::DescribeInboundConnectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_inbound_connections({
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
    #   resp.connections #=> Array
    #   resp.connections[0].local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connections[0].local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connections[0].local_domain_info.aws_domain_information.region #=> String
    #   resp.connections[0].remote_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connections[0].remote_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connections[0].remote_domain_info.aws_domain_information.region #=> String
    #   resp.connections[0].connection_id #=> String
    #   resp.connections[0].connection_status.status_code #=> String, one of "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.connections[0].connection_status.message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeInboundConnections AWS API Documentation
    #
    # @overload describe_inbound_connections(params = {})
    # @param [Hash] params ({})
    def describe_inbound_connections(params = {}, options = {})
      req = build_request(:describe_inbound_connections, params)
      req.send_request(options)
    end

    # Describe the limits for a given instance type and OpenSearch or
    # Elasticsearch version. When modifying an existing domain, specify the
    # ` DomainName ` to see which limits you can modify.
    #
    # @option params [String] :domain_name
    #   The name of the domain you want to modify. Only include this value if
    #   you're querying OpenSearch ` Limits ` for an existing domain.
    #
    # @option params [required, String] :instance_type
    #   The instance type for an OpenSearch cluster for which OpenSearch `
    #   Limits ` are needed.
    #
    # @option params [required, String] :engine_version
    #   Version of OpenSearch for which ` Limits ` are needed.
    #
    # @return [Types::DescribeInstanceTypeLimitsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstanceTypeLimitsResponse#limits_by_role #limits_by_role} => Hash&lt;String,Types::Limits&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_type_limits({
    #     domain_name: "DomainName",
    #     instance_type: "m3.medium.search", # required, accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #     engine_version: "VersionString", # required
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeInstanceTypeLimits AWS API Documentation
    #
    # @overload describe_instance_type_limits(params = {})
    # @param [Hash] params ({})
    def describe_instance_type_limits(params = {}, options = {})
      req = build_request(:describe_instance_type_limits, params)
      req.send_request(options)
    end

    # Lists all the outbound cross-cluster connections for a local domain.
    #
    # @option params [Array<Types::Filter>] :filters
    #   A list of filters used to match properties for outbound cross-cluster
    #   connections. Available ` Filter ` names for this operation are: *
    #   connection-id
    #   * remote-domain-info.domain-name
    #   * remote-domain-info.owner-id
    #   * remote-domain-info.region
    #   * local-domain-info.domain-name
    #
    # @option params [Integer] :max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #
    # @option params [String] :next_token
    #   NextToken is sent in case the earlier API call results contain the
    #   NextToken parameter. Used for pagination.
    #
    # @return [Types::DescribeOutboundConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOutboundConnectionsResponse#connections #connections} => Array&lt;Types::OutboundConnection&gt;
    #   * {Types::DescribeOutboundConnectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_outbound_connections({
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
    #   resp.connections #=> Array
    #   resp.connections[0].local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connections[0].local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connections[0].local_domain_info.aws_domain_information.region #=> String
    #   resp.connections[0].remote_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connections[0].remote_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connections[0].remote_domain_info.aws_domain_information.region #=> String
    #   resp.connections[0].connection_id #=> String
    #   resp.connections[0].connection_alias #=> String
    #   resp.connections[0].connection_status.status_code #=> String, one of "VALIDATING", "VALIDATION_FAILED", "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.connections[0].connection_status.message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeOutboundConnections AWS API Documentation
    #
    # @overload describe_outbound_connections(params = {})
    # @param [Hash] params ({})
    def describe_outbound_connections(params = {}, options = {})
      req = build_request(:describe_outbound_connections, params)
      req.send_request(options)
    end

    # Describes all packages available to Amazon OpenSearch Service domains.
    # Includes options for filtering, limiting the number of results, and
    # pagination.
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
    #   resp.package_details_list[0].last_updated_at #=> Time
    #   resp.package_details_list[0].available_package_version #=> String
    #   resp.package_details_list[0].error_details.error_type #=> String
    #   resp.package_details_list[0].error_details.error_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribePackages AWS API Documentation
    #
    # @overload describe_packages(params = {})
    # @param [Hash] params ({})
    def describe_packages(params = {}, options = {})
      req = build_request(:describe_packages, params)
      req.send_request(options)
    end

    # Lists available reserved OpenSearch instance offerings.
    #
    # @option params [String] :reserved_instance_offering_id
    #   The offering identifier filter value. Use this parameter to show only
    #   the available offering that matches the specified reservation
    #   identifier.
    #
    # @option params [Integer] :max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #
    # @option params [String] :next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #
    # @return [Types::DescribeReservedInstanceOfferingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReservedInstanceOfferingsResponse#next_token #next_token} => String
    #   * {Types::DescribeReservedInstanceOfferingsResponse#reserved_instance_offerings #reserved_instance_offerings} => Array&lt;Types::ReservedInstanceOffering&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_instance_offerings({
    #     reserved_instance_offering_id: "GUID",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reserved_instance_offerings #=> Array
    #   resp.reserved_instance_offerings[0].reserved_instance_offering_id #=> String
    #   resp.reserved_instance_offerings[0].instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.reserved_instance_offerings[0].duration #=> Integer
    #   resp.reserved_instance_offerings[0].fixed_price #=> Float
    #   resp.reserved_instance_offerings[0].usage_price #=> Float
    #   resp.reserved_instance_offerings[0].currency_code #=> String
    #   resp.reserved_instance_offerings[0].payment_option #=> String, one of "ALL_UPFRONT", "PARTIAL_UPFRONT", "NO_UPFRONT"
    #   resp.reserved_instance_offerings[0].recurring_charges #=> Array
    #   resp.reserved_instance_offerings[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_instance_offerings[0].recurring_charges[0].recurring_charge_frequency #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeReservedInstanceOfferings AWS API Documentation
    #
    # @overload describe_reserved_instance_offerings(params = {})
    # @param [Hash] params ({})
    def describe_reserved_instance_offerings(params = {}, options = {})
      req = build_request(:describe_reserved_instance_offerings, params)
      req.send_request(options)
    end

    # Returns information about reserved OpenSearch instances for this
    # account.
    #
    # @option params [String] :reserved_instance_id
    #   The reserved instance identifier filter value. Use this parameter to
    #   show only the reservation that matches the specified reserved
    #   OpenSearch instance ID.
    #
    # @option params [Integer] :max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #
    # @option params [String] :next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #
    # @return [Types::DescribeReservedInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReservedInstancesResponse#next_token #next_token} => String
    #   * {Types::DescribeReservedInstancesResponse#reserved_instances #reserved_instances} => Array&lt;Types::ReservedInstance&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_instances({
    #     reserved_instance_id: "GUID",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reserved_instances #=> Array
    #   resp.reserved_instances[0].reservation_name #=> String
    #   resp.reserved_instances[0].reserved_instance_id #=> String
    #   resp.reserved_instances[0].billing_subscription_id #=> Integer
    #   resp.reserved_instances[0].reserved_instance_offering_id #=> String
    #   resp.reserved_instances[0].instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.reserved_instances[0].start_time #=> Time
    #   resp.reserved_instances[0].duration #=> Integer
    #   resp.reserved_instances[0].fixed_price #=> Float
    #   resp.reserved_instances[0].usage_price #=> Float
    #   resp.reserved_instances[0].currency_code #=> String
    #   resp.reserved_instances[0].instance_count #=> Integer
    #   resp.reserved_instances[0].state #=> String
    #   resp.reserved_instances[0].payment_option #=> String, one of "ALL_UPFRONT", "PARTIAL_UPFRONT", "NO_UPFRONT"
    #   resp.reserved_instances[0].recurring_charges #=> Array
    #   resp.reserved_instances[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_instances[0].recurring_charges[0].recurring_charge_frequency #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeReservedInstances AWS API Documentation
    #
    # @overload describe_reserved_instances(params = {})
    # @param [Hash] params ({})
    def describe_reserved_instances(params = {}, options = {})
      req = build_request(:describe_reserved_instances, params)
      req.send_request(options)
    end

    # Dissociates a package from the Amazon OpenSearch Service domain.
    #
    # @option params [required, String] :package_id
    #   The internal ID of the package to associate with a domain. Use
    #   `DescribePackages` to find this value.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain to associate the package with.
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
    #   resp.domain_package_details.package_version #=> String
    #   resp.domain_package_details.reference_path #=> String
    #   resp.domain_package_details.error_details.error_type #=> String
    #   resp.domain_package_details.error_details.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DissociatePackage AWS API Documentation
    #
    # @overload dissociate_package(params = {})
    # @param [Hash] params ({})
    def dissociate_package(params = {}, options = {})
      req = build_request(:dissociate_package, params)
      req.send_request(options)
    end

    # Returns a list of upgrade-compatible versions of
    # OpenSearch/Elasticsearch. You can optionally pass a ` DomainName ` to
    # get all upgrade-compatible versions of OpenSearch/Elasticsearch for
    # that specific domain.
    #
    # @option params [String] :domain_name
    #   The name of an domain. Domain names are unique across the domains
    #   owned by an account within an AWS region. Domain names start with a
    #   letter or number and can contain the following characters: a-z
    #   (lowercase), 0-9, and - (hyphen).
    #
    # @return [Types::GetCompatibleVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCompatibleVersionsResponse#compatible_versions #compatible_versions} => Array&lt;Types::CompatibleVersionsMap&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compatible_versions({
    #     domain_name: "DomainName",
    #   })
    #
    # @example Response structure
    #
    #   resp.compatible_versions #=> Array
    #   resp.compatible_versions[0].source_version #=> String
    #   resp.compatible_versions[0].target_versions #=> Array
    #   resp.compatible_versions[0].target_versions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetCompatibleVersions AWS API Documentation
    #
    # @overload get_compatible_versions(params = {})
    # @param [Hash] params ({})
    def get_compatible_versions(params = {}, options = {})
      req = build_request(:get_compatible_versions, params)
      req.send_request(options)
    end

    # Returns a list of package versions, along with their creation time and
    # commit message.
    #
    # @option params [required, String] :package_id
    #   Returns an audit history of package versions.
    #
    # @option params [Integer] :max_results
    #   Limits results to a maximum number of package versions.
    #
    # @option params [String] :next_token
    #   Used for pagination. Only necessary if a previous API call includes a
    #   non-null NextToken value. If provided, returns results for the next
    #   page.
    #
    # @return [Types::GetPackageVersionHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPackageVersionHistoryResponse#package_id #package_id} => String
    #   * {Types::GetPackageVersionHistoryResponse#package_version_history_list #package_version_history_list} => Array&lt;Types::PackageVersionHistory&gt;
    #   * {Types::GetPackageVersionHistoryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_package_version_history({
    #     package_id: "PackageID", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.package_id #=> String
    #   resp.package_version_history_list #=> Array
    #   resp.package_version_history_list[0].package_version #=> String
    #   resp.package_version_history_list[0].commit_message #=> String
    #   resp.package_version_history_list[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetPackageVersionHistory AWS API Documentation
    #
    # @overload get_package_version_history(params = {})
    # @param [Hash] params ({})
    def get_package_version_history(params = {}, options = {})
      req = build_request(:get_package_version_history, params)
      req.send_request(options)
    end

    # Retrieves the complete history of the last 10 upgrades performed on
    # the domain.
    #
    # @option params [required, String] :domain_name
    #   The name of an domain. Domain names are unique across the domains
    #   owned by an account within an AWS region. Domain names start with a
    #   letter or number and can contain the following characters: a-z
    #   (lowercase), 0-9, and - (hyphen).
    #
    # @option params [Integer] :max_results
    #   Set this value to limit the number of results returned.
    #
    # @option params [String] :next_token
    #   Paginated APIs accept the NextToken input to return the next page of
    #   results and provide a NextToken output in the response, which you can
    #   use to retrieve more results.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetUpgradeHistory AWS API Documentation
    #
    # @overload get_upgrade_history(params = {})
    # @param [Hash] params ({})
    def get_upgrade_history(params = {}, options = {})
      req = build_request(:get_upgrade_history, params)
      req.send_request(options)
    end

    # Retrieves the latest status of the last upgrade or upgrade eligibility
    # check performed on the domain.
    #
    # @option params [required, String] :domain_name
    #   The name of an domain. Domain names are unique across the domains
    #   owned by an account within an AWS region. Domain names start with a
    #   letter or number and can contain the following characters: a-z
    #   (lowercase), 0-9, and - (hyphen).
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetUpgradeStatus AWS API Documentation
    #
    # @overload get_upgrade_status(params = {})
    # @param [Hash] params ({})
    def get_upgrade_status(params = {}, options = {})
      req = build_request(:get_upgrade_status, params)
      req.send_request(options)
    end

    # Returns the names of all domains owned by the current user's account.
    #
    # @option params [String] :engine_type
    #   Optional parameter to filter the output by domain engine type.
    #   Acceptable values are 'Elasticsearch' and 'OpenSearch'.
    #
    # @return [Types::ListDomainNamesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainNamesResponse#domain_names #domain_names} => Array&lt;Types::DomainInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domain_names({
    #     engine_type: "OpenSearch", # accepts OpenSearch, Elasticsearch
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_names #=> Array
    #   resp.domain_names[0].domain_name #=> String
    #   resp.domain_names[0].engine_type #=> String, one of "OpenSearch", "Elasticsearch"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListDomainNames AWS API Documentation
    #
    # @overload list_domain_names(params = {})
    # @param [Hash] params ({})
    def list_domain_names(params = {}, options = {})
      req = build_request(:list_domain_names, params)
      req.send_request(options)
    end

    # Lists all Amazon OpenSearch Service domains associated with the
    # package.
    #
    # @option params [required, String] :package_id
    #   The package for which to list associated domains.
    #
    # @option params [Integer] :max_results
    #   Limits the results to a maximum number of domains.
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
    #   resp.domain_package_details_list[0].package_version #=> String
    #   resp.domain_package_details_list[0].reference_path #=> String
    #   resp.domain_package_details_list[0].error_details.error_type #=> String
    #   resp.domain_package_details_list[0].error_details.error_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListDomainsForPackage AWS API Documentation
    #
    # @overload list_domains_for_package(params = {})
    # @param [Hash] params ({})
    def list_domains_for_package(params = {}, options = {})
      req = build_request(:list_domains_for_package, params)
      req.send_request(options)
    end

    # @option params [required, String] :engine_version
    #
    # @option params [String] :domain_name
    #   The name of an domain. Domain names are unique across the domains
    #   owned by an account within an AWS region. Domain names start with a
    #   letter or number and can contain the following characters: a-z
    #   (lowercase), 0-9, and - (hyphen).
    #
    # @option params [Integer] :max_results
    #   Set this value to limit the number of results returned.
    #
    # @option params [String] :next_token
    #   Paginated APIs accept the NextToken input to return the next page of
    #   results and provide a NextToken output in the response, which you can
    #   use to retrieve more results.
    #
    # @return [Types::ListInstanceTypeDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstanceTypeDetailsResponse#instance_type_details #instance_type_details} => Array&lt;Types::InstanceTypeDetails&gt;
    #   * {Types::ListInstanceTypeDetailsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_type_details({
    #     engine_version: "VersionString", # required
    #     domain_name: "DomainName",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_type_details #=> Array
    #   resp.instance_type_details[0].instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.instance_type_details[0].encryption_enabled #=> Boolean
    #   resp.instance_type_details[0].cognito_enabled #=> Boolean
    #   resp.instance_type_details[0].app_logs_enabled #=> Boolean
    #   resp.instance_type_details[0].advanced_security_enabled #=> Boolean
    #   resp.instance_type_details[0].warm_enabled #=> Boolean
    #   resp.instance_type_details[0].instance_role #=> Array
    #   resp.instance_type_details[0].instance_role[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListInstanceTypeDetails AWS API Documentation
    #
    # @overload list_instance_type_details(params = {})
    # @param [Hash] params ({})
    def list_instance_type_details(params = {}, options = {})
      req = build_request(:list_instance_type_details, params)
      req.send_request(options)
    end

    # Lists all packages associated with the Amazon OpenSearch Service
    # domain.
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
    #   resp.domain_package_details_list[0].package_version #=> String
    #   resp.domain_package_details_list[0].reference_path #=> String
    #   resp.domain_package_details_list[0].error_details.error_type #=> String
    #   resp.domain_package_details_list[0].error_details.error_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListPackagesForDomain AWS API Documentation
    #
    # @overload list_packages_for_domain(params = {})
    # @param [Hash] params ({})
    def list_packages_for_domain(params = {}, options = {})
      req = build_request(:list_packages_for_domain, params)
      req.send_request(options)
    end

    # Returns all tags for the given domain.
    #
    # @option params [required, String] :arn
    #   Specify the `ARN` of the domain that the tags you want to view are
    #   attached to.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # List all supported versions of OpenSearch and Elasticsearch.
    #
    # @option params [Integer] :max_results
    #   Set this value to limit the number of results returned. Value must be
    #   greater than 10 or it won't be honored.
    #
    # @option params [String] :next_token
    #   Paginated APIs accept the NextToken input to return the next page of
    #   results and provide a NextToken output in the response, which you can
    #   use to retrieve more results.
    #
    # @return [Types::ListVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVersionsResponse#versions #versions} => Array&lt;String&gt;
    #   * {Types::ListVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_versions({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.versions #=> Array
    #   resp.versions[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListVersions AWS API Documentation
    #
    # @overload list_versions(params = {})
    # @param [Hash] params ({})
    def list_versions(params = {}, options = {})
      req = build_request(:list_versions, params)
      req.send_request(options)
    end

    # Allows you to purchase reserved OpenSearch instances.
    #
    # @option params [required, String] :reserved_instance_offering_id
    #   The ID of the reserved OpenSearch instance offering to purchase.
    #
    # @option params [required, String] :reservation_name
    #   A customer-specified identifier to track this reservation.
    #
    # @option params [Integer] :instance_count
    #   The number of OpenSearch instances to reserve.
    #
    # @return [Types::PurchaseReservedInstanceOfferingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PurchaseReservedInstanceOfferingResponse#reserved_instance_id #reserved_instance_id} => String
    #   * {Types::PurchaseReservedInstanceOfferingResponse#reservation_name #reservation_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_reserved_instance_offering({
    #     reserved_instance_offering_id: "GUID", # required
    #     reservation_name: "ReservationToken", # required
    #     instance_count: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.reserved_instance_id #=> String
    #   resp.reservation_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/PurchaseReservedInstanceOffering AWS API Documentation
    #
    # @overload purchase_reserved_instance_offering(params = {})
    # @param [Hash] params ({})
    def purchase_reserved_instance_offering(params = {}, options = {})
      req = build_request(:purchase_reserved_instance_offering, params)
      req.send_request(options)
    end

    # Allows the remote domain owner to reject an inbound cross-cluster
    # connection request.
    #
    # @option params [required, String] :connection_id
    #   The ID of the inbound connection to reject.
    #
    # @return [Types::RejectInboundConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectInboundConnectionResponse#connection #connection} => Types::InboundConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_inbound_connection({
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.local_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connection.local_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connection.local_domain_info.aws_domain_information.region #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.owner_id #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.domain_name #=> String
    #   resp.connection.remote_domain_info.aws_domain_information.region #=> String
    #   resp.connection.connection_id #=> String
    #   resp.connection.connection_status.status_code #=> String, one of "PENDING_ACCEPTANCE", "APPROVED", "PROVISIONING", "ACTIVE", "REJECTING", "REJECTED", "DELETING", "DELETED"
    #   resp.connection.connection_status.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/RejectInboundConnection AWS API Documentation
    #
    # @overload reject_inbound_connection(params = {})
    # @param [Hash] params ({})
    def reject_inbound_connection(params = {}, options = {})
      req = build_request(:reject_inbound_connection, params)
      req.send_request(options)
    end

    # Removes the specified set of tags from the given domain.
    #
    # @option params [required, String] :arn
    #   The `ARN` of the domain from which you want to delete the specified
    #   tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The `TagKey` list you want to remove from the domain.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/RemoveTags AWS API Documentation
    #
    # @overload remove_tags(params = {})
    # @param [Hash] params ({})
    def remove_tags(params = {}, options = {})
      req = build_request(:remove_tags, params)
      req.send_request(options)
    end

    # Schedules a service software update for an Amazon OpenSearch Service
    # domain.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to update to the latest service
    #   software.
    #
    # @return [Types::StartServiceSoftwareUpdateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartServiceSoftwareUpdateResponse#service_software_options #service_software_options} => Types::ServiceSoftwareOptions
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_service_software_update({
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/StartServiceSoftwareUpdate AWS API Documentation
    #
    # @overload start_service_software_update(params = {})
    # @param [Hash] params ({})
    def start_service_software_update(params = {}, options = {})
      req = build_request(:start_service_software_update, params)
      req.send_request(options)
    end

    # Modifies the cluster configuration of the specified domain, such as
    # setting the instance type and the number of instances.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain you're updating.
    #
    # @option params [Types::ClusterConfig] :cluster_config
    #   The type and number of instances to instantiate for the domain
    #   cluster.
    #
    # @option params [Types::EBSOptions] :ebs_options
    #   Specify the type and size of the EBS volume to use.
    #
    # @option params [Types::SnapshotOptions] :snapshot_options
    #   Option to set the time, in UTC format, for the daily automated
    #   snapshot. Default value is `0` hours.
    #
    # @option params [Types::VPCOptions] :vpc_options
    #   Options to specify the subnets and security groups for the VPC
    #   endpoint. For more information, see [Launching your Amazon OpenSearch
    #   Service domains using a VPC ][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html
    #
    # @option params [Types::CognitoOptions] :cognito_options
    #   Options to specify the Cognito user and identity pools for OpenSearch
    #   Dashboards authentication. For more information, see [Configuring
    #   Amazon Cognito authentication for OpenSearch Dashboards][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html
    #
    # @option params [Hash<String,String>] :advanced_options
    #   Modifies the advanced option to allow references to indices in an HTTP
    #   request body. Must be `false` when configuring access to individual
    #   sub-resources. By default, the value is `true`. See [Advanced options
    #   ][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options
    #
    # @option params [String] :access_policies
    #   IAM access policy as a JSON-formatted string.
    #
    # @option params [Hash<String,Types::LogPublishingOption>] :log_publishing_options
    #   Map of `LogType` and `LogPublishingOption`, each containing options to
    #   publish a given type of OpenSearch log.
    #
    # @option params [Types::EncryptionAtRestOptions] :encryption_at_rest_options
    #   Specifies encryption of data at rest options.
    #
    # @option params [Types::DomainEndpointOptions] :domain_endpoint_options
    #   Options to specify configuration that will be applied to the domain
    #   endpoint.
    #
    # @option params [Types::NodeToNodeEncryptionOptions] :node_to_node_encryption_options
    #   Specifies node-to-node encryption options.
    #
    # @option params [Types::AdvancedSecurityOptionsInput] :advanced_security_options
    #   Specifies advanced security options.
    #
    # @option params [Types::AutoTuneOptions] :auto_tune_options
    #   Specifies Auto-Tune options.
    #
    # @option params [Boolean] :dry_run
    #   This flag, when set to True, specifies whether the `UpdateDomain`
    #   request should return the results of validation checks (DryRunResults)
    #   without actually applying the change.
    #
    # @return [Types::UpdateDomainConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainConfigResponse#domain_config #domain_config} => Types::DomainConfig
    #   * {Types::UpdateDomainConfigResponse#dry_run_results #dry_run_results} => Types::DryRunResults
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_config({
    #     domain_name: "DomainName", # required
    #     cluster_config: {
    #       instance_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #       instance_count: 1,
    #       dedicated_master_enabled: false,
    #       zone_awareness_enabled: false,
    #       zone_awareness_config: {
    #         availability_zone_count: 1,
    #       },
    #       dedicated_master_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #       dedicated_master_count: 1,
    #       warm_enabled: false,
    #       warm_type: "ultrawarm1.medium.search", # accepts ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search
    #       warm_count: 1,
    #       cold_storage_options: {
    #         enabled: false, # required
    #       },
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
    #     encryption_at_rest_options: {
    #       enabled: false,
    #       kms_key_id: "KmsKeyId",
    #     },
    #     domain_endpoint_options: {
    #       enforce_https: false,
    #       tls_security_policy: "Policy-Min-TLS-1-0-2019-07", # accepts Policy-Min-TLS-1-0-2019-07, Policy-Min-TLS-1-2-2019-07
    #       custom_endpoint_enabled: false,
    #       custom_endpoint: "DomainNameFqdn",
    #       custom_endpoint_certificate_arn: "ARN",
    #     },
    #     node_to_node_encryption_options: {
    #       enabled: false,
    #     },
    #     advanced_security_options: {
    #       enabled: false,
    #       internal_user_database_enabled: false,
    #       master_user_options: {
    #         master_user_arn: "ARN",
    #         master_user_name: "Username",
    #         master_user_password: "Password",
    #       },
    #       saml_options: {
    #         enabled: false,
    #         idp: {
    #           metadata_content: "SAMLMetadata", # required
    #           entity_id: "SAMLEntityId", # required
    #         },
    #         master_user_name: "Username",
    #         master_backend_role: "BackendRole",
    #         subject_key: "String",
    #         roles_key: "String",
    #         session_timeout_minutes: 1,
    #       },
    #       anonymous_auth_enabled: false,
    #     },
    #     auto_tune_options: {
    #       desired_state: "ENABLED", # accepts ENABLED, DISABLED
    #       rollback_on_disable: "NO_ROLLBACK", # accepts NO_ROLLBACK, DEFAULT_ROLLBACK
    #       maintenance_schedules: [
    #         {
    #           start_at: Time.now,
    #           duration: {
    #             value: 1,
    #             unit: "HOURS", # accepts HOURS
    #           },
    #           cron_expression_for_recurrence: "String",
    #         },
    #       ],
    #     },
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_config.engine_version.options #=> String
    #   resp.domain_config.engine_version.status.creation_date #=> Time
    #   resp.domain_config.engine_version.status.update_date #=> Time
    #   resp.domain_config.engine_version.status.update_version #=> Integer
    #   resp.domain_config.engine_version.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.engine_version.status.pending_deletion #=> Boolean
    #   resp.domain_config.cluster_config.options.instance_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_config.cluster_config.options.instance_count #=> Integer
    #   resp.domain_config.cluster_config.options.dedicated_master_enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.zone_awareness_enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.zone_awareness_config.availability_zone_count #=> Integer
    #   resp.domain_config.cluster_config.options.dedicated_master_type #=> String, one of "m3.medium.search", "m3.large.search", "m3.xlarge.search", "m3.2xlarge.search", "m4.large.search", "m4.xlarge.search", "m4.2xlarge.search", "m4.4xlarge.search", "m4.10xlarge.search", "m5.large.search", "m5.xlarge.search", "m5.2xlarge.search", "m5.4xlarge.search", "m5.12xlarge.search", "m5.24xlarge.search", "r5.large.search", "r5.xlarge.search", "r5.2xlarge.search", "r5.4xlarge.search", "r5.12xlarge.search", "r5.24xlarge.search", "c5.large.search", "c5.xlarge.search", "c5.2xlarge.search", "c5.4xlarge.search", "c5.9xlarge.search", "c5.18xlarge.search", "t3.nano.search", "t3.micro.search", "t3.small.search", "t3.medium.search", "t3.large.search", "t3.xlarge.search", "t3.2xlarge.search", "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search", "t2.micro.search", "t2.small.search", "t2.medium.search", "r3.large.search", "r3.xlarge.search", "r3.2xlarge.search", "r3.4xlarge.search", "r3.8xlarge.search", "i2.xlarge.search", "i2.2xlarge.search", "d2.xlarge.search", "d2.2xlarge.search", "d2.4xlarge.search", "d2.8xlarge.search", "c4.large.search", "c4.xlarge.search", "c4.2xlarge.search", "c4.4xlarge.search", "c4.8xlarge.search", "r4.large.search", "r4.xlarge.search", "r4.2xlarge.search", "r4.4xlarge.search", "r4.8xlarge.search", "r4.16xlarge.search", "i3.large.search", "i3.xlarge.search", "i3.2xlarge.search", "i3.4xlarge.search", "i3.8xlarge.search", "i3.16xlarge.search", "r6g.large.search", "r6g.xlarge.search", "r6g.2xlarge.search", "r6g.4xlarge.search", "r6g.8xlarge.search", "r6g.12xlarge.search", "m6g.large.search", "m6g.xlarge.search", "m6g.2xlarge.search", "m6g.4xlarge.search", "m6g.8xlarge.search", "m6g.12xlarge.search", "c6g.large.search", "c6g.xlarge.search", "c6g.2xlarge.search", "c6g.4xlarge.search", "c6g.8xlarge.search", "c6g.12xlarge.search", "r6gd.large.search", "r6gd.xlarge.search", "r6gd.2xlarge.search", "r6gd.4xlarge.search", "r6gd.8xlarge.search", "r6gd.12xlarge.search", "r6gd.16xlarge.search", "t4g.small.search", "t4g.medium.search"
    #   resp.domain_config.cluster_config.options.dedicated_master_count #=> Integer
    #   resp.domain_config.cluster_config.options.warm_enabled #=> Boolean
    #   resp.domain_config.cluster_config.options.warm_type #=> String, one of "ultrawarm1.medium.search", "ultrawarm1.large.search", "ultrawarm1.xlarge.search"
    #   resp.domain_config.cluster_config.options.warm_count #=> Integer
    #   resp.domain_config.cluster_config.options.cold_storage_options.enabled #=> Boolean
    #   resp.domain_config.cluster_config.status.creation_date #=> Time
    #   resp.domain_config.cluster_config.status.update_date #=> Time
    #   resp.domain_config.cluster_config.status.update_version #=> Integer
    #   resp.domain_config.cluster_config.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.cluster_config.status.pending_deletion #=> Boolean
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
    #   resp.domain_config.domain_endpoint_options.options.custom_endpoint_enabled #=> Boolean
    #   resp.domain_config.domain_endpoint_options.options.custom_endpoint #=> String
    #   resp.domain_config.domain_endpoint_options.options.custom_endpoint_certificate_arn #=> String
    #   resp.domain_config.domain_endpoint_options.status.creation_date #=> Time
    #   resp.domain_config.domain_endpoint_options.status.update_date #=> Time
    #   resp.domain_config.domain_endpoint_options.status.update_version #=> Integer
    #   resp.domain_config.domain_endpoint_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.domain_endpoint_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.advanced_security_options.options.enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.internal_user_database_enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.saml_options.enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.options.saml_options.idp.metadata_content #=> String
    #   resp.domain_config.advanced_security_options.options.saml_options.idp.entity_id #=> String
    #   resp.domain_config.advanced_security_options.options.saml_options.subject_key #=> String
    #   resp.domain_config.advanced_security_options.options.saml_options.roles_key #=> String
    #   resp.domain_config.advanced_security_options.options.saml_options.session_timeout_minutes #=> Integer
    #   resp.domain_config.advanced_security_options.options.anonymous_auth_disable_date #=> Time
    #   resp.domain_config.advanced_security_options.options.anonymous_auth_enabled #=> Boolean
    #   resp.domain_config.advanced_security_options.status.creation_date #=> Time
    #   resp.domain_config.advanced_security_options.status.update_date #=> Time
    #   resp.domain_config.advanced_security_options.status.update_version #=> Integer
    #   resp.domain_config.advanced_security_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
    #   resp.domain_config.advanced_security_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.auto_tune_options.options.desired_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.domain_config.auto_tune_options.options.rollback_on_disable #=> String, one of "NO_ROLLBACK", "DEFAULT_ROLLBACK"
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules #=> Array
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules[0].start_at #=> Time
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules[0].duration.value #=> Integer
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules[0].duration.unit #=> String, one of "HOURS"
    #   resp.domain_config.auto_tune_options.options.maintenance_schedules[0].cron_expression_for_recurrence #=> String
    #   resp.domain_config.auto_tune_options.status.creation_date #=> Time
    #   resp.domain_config.auto_tune_options.status.update_date #=> Time
    #   resp.domain_config.auto_tune_options.status.update_version #=> Integer
    #   resp.domain_config.auto_tune_options.status.state #=> String, one of "ENABLED", "DISABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "DISABLED_AND_ROLLBACK_SCHEDULED", "DISABLED_AND_ROLLBACK_IN_PROGRESS", "DISABLED_AND_ROLLBACK_COMPLETE", "DISABLED_AND_ROLLBACK_ERROR", "ERROR"
    #   resp.domain_config.auto_tune_options.status.error_message #=> String
    #   resp.domain_config.auto_tune_options.status.pending_deletion #=> Boolean
    #   resp.domain_config.change_progress_details.change_id #=> String
    #   resp.domain_config.change_progress_details.message #=> String
    #   resp.dry_run_results.deployment_type #=> String
    #   resp.dry_run_results.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdateDomainConfig AWS API Documentation
    #
    # @overload update_domain_config(params = {})
    # @param [Hash] params ({})
    def update_domain_config(params = {}, options = {})
      req = build_request(:update_domain_config, params)
      req.send_request(options)
    end

    # Updates a package for use with Amazon OpenSearch Service domains.
    #
    # @option params [required, String] :package_id
    #   The unique identifier for the package.
    #
    # @option params [required, Types::PackageSource] :package_source
    #   The Amazon S3 location for importing the package specified as
    #   `S3BucketName` and `S3Key`
    #
    # @option params [String] :package_description
    #   A new description of the package.
    #
    # @option params [String] :commit_message
    #   A commit message for the new version which is shown as part of
    #   `GetPackageVersionHistoryResponse`.
    #
    # @return [Types::UpdatePackageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePackageResponse#package_details #package_details} => Types::PackageDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_package({
    #     package_id: "PackageID", # required
    #     package_source: { # required
    #       s3_bucket_name: "S3BucketName",
    #       s3_key: "S3Key",
    #     },
    #     package_description: "PackageDescription",
    #     commit_message: "CommitMessage",
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
    #   resp.package_details.last_updated_at #=> Time
    #   resp.package_details.available_package_version #=> String
    #   resp.package_details.error_details.error_type #=> String
    #   resp.package_details.error_details.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdatePackage AWS API Documentation
    #
    # @overload update_package(params = {})
    # @param [Hash] params ({})
    def update_package(params = {}, options = {})
      req = build_request(:update_package, params)
      req.send_request(options)
    end

    # Allows you to either upgrade your domain or perform an upgrade
    # eligibility check to a compatible version of OpenSearch or
    # Elasticsearch.
    #
    # @option params [required, String] :domain_name
    #   The name of an domain. Domain names are unique across the domains
    #   owned by an account within an AWS region. Domain names start with a
    #   letter or number and can contain the following characters: a-z
    #   (lowercase), 0-9, and - (hyphen).
    #
    # @option params [required, String] :target_version
    #   The version of OpenSearch you intend to upgrade the domain to.
    #
    # @option params [Boolean] :perform_check_only
    #   When true, indicates that an upgrade eligibility check needs to be
    #   performed. Does not actually perform the upgrade.
    #
    # @option params [Hash<String,String>] :advanced_options
    #   Exposes select native OpenSearch configuration values from
    #   `opensearch.yml`. Currently, the following advanced options are
    #   available:
    #
    #   * Option to allow references to indices in an HTTP request body. Must
    #     be `false` when configuring access to individual sub-resources. By
    #     default, the value is `true`. See [Advanced cluster parameters ][1]
    #     for more information.
    #   * Option to specify the percentage of heap space allocated to field
    #     data. By default, this setting is unbounded.
    #
    #   For more information, see [ Advanced cluster parameters][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options
    #
    # @return [Types::UpgradeDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpgradeDomainResponse#upgrade_id #upgrade_id} => String
    #   * {Types::UpgradeDomainResponse#domain_name #domain_name} => String
    #   * {Types::UpgradeDomainResponse#target_version #target_version} => String
    #   * {Types::UpgradeDomainResponse#perform_check_only #perform_check_only} => Boolean
    #   * {Types::UpgradeDomainResponse#advanced_options #advanced_options} => Hash&lt;String,String&gt;
    #   * {Types::UpgradeDomainResponse#change_progress_details #change_progress_details} => Types::ChangeProgressDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upgrade_domain({
    #     domain_name: "DomainName", # required
    #     target_version: "VersionString", # required
    #     perform_check_only: false,
    #     advanced_options: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.upgrade_id #=> String
    #   resp.domain_name #=> String
    #   resp.target_version #=> String
    #   resp.perform_check_only #=> Boolean
    #   resp.advanced_options #=> Hash
    #   resp.advanced_options["String"] #=> String
    #   resp.change_progress_details.change_id #=> String
    #   resp.change_progress_details.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpgradeDomain AWS API Documentation
    #
    # @overload upgrade_domain(params = {})
    # @param [Hash] params ({})
    def upgrade_domain(params = {}, options = {})
      req = build_request(:upgrade_domain, params)
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
      context[:gem_name] = 'aws-sdk-opensearchservice'
      context[:gem_version] = '1.9.0'
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
