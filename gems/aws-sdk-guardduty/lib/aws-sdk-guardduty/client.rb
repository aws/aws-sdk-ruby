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

Aws::Plugins::GlobalConfiguration.add_identifier(:guardduty)

module Aws::GuardDuty
  # An API client for GuardDuty.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::GuardDuty::Client.new(
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

    @identifier = :guardduty

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

    # Accepts the invitation to be monitored by a master GuardDuty account.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #
    # @option params [required, String] :master_id
    #   The account ID of the master GuardDuty account whose invitation
    #   you're accepting.
    #
    # @option params [required, String] :invitation_id
    #   The value that is used to validate the master account to the member
    #   account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_invitation({
    #     detector_id: "DetectorId", # required
    #     master_id: "String", # required
    #     invitation_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AcceptInvitation AWS API Documentation
    #
    # @overload accept_invitation(params = {})
    # @param [Hash] params ({})
    def accept_invitation(params = {}, options = {})
      req = build_request(:accept_invitation, params)
      req.send_request(options)
    end

    # Archives GuardDuty findings that are specified by the list of finding
    # IDs.
    #
    # <note markdown="1"> Only the master account can archive findings. Member accounts don't
    # have permission to archive findings from their accounts.
    #
    #  </note>
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector that specifies the GuardDuty service whose
    #   findings you want to archive.
    #
    # @option params [required, Array<String>] :finding_ids
    #   The IDs of the findings that you want to archive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.archive_findings({
    #     detector_id: "DetectorId", # required
    #     finding_ids: ["FindingId"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ArchiveFindings AWS API Documentation
    #
    # @overload archive_findings(params = {})
    # @param [Hash] params ({})
    def archive_findings(params = {}, options = {})
      req = build_request(:archive_findings, params)
      req.send_request(options)
    end

    # Creates a single Amazon GuardDuty detector. A detector is a resource
    # that represents the GuardDuty service. To start using GuardDuty, you
    # must create a detector in each Region where you enable the service.
    # You can have only one detector per account per Region.
    #
    # @option params [required, Boolean] :enable
    #   A Boolean value that specifies whether the detector is to be enabled.
    #
    # @option params [String] :client_token
    #   The idempotency token for the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :finding_publishing_frequency
    #   An enum value that specifies how frequently updated findings are
    #   exported.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be added to a new detector resource.
    #
    # @return [Types::CreateDetectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDetectorResponse#detector_id #detector_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_detector({
    #     enable: false, # required
    #     client_token: "ClientToken",
    #     finding_publishing_frequency: "FIFTEEN_MINUTES", # accepts FIFTEEN_MINUTES, ONE_HOUR, SIX_HOURS
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.detector_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateDetector AWS API Documentation
    #
    # @overload create_detector(params = {})
    # @param [Hash] params ({})
    def create_detector(params = {}, options = {})
      req = build_request(:create_detector, params)
      req.send_request(options)
    end

    # Creates a filter using the specified finding criteria.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty account that you want
    #   to create a filter for.
    #
    # @option params [required, String] :name
    #   The name of the filter.
    #
    # @option params [String] :description
    #   The description of the filter.
    #
    # @option params [String] :action
    #   Specifies the action that is to be applied to the findings that match
    #   the filter.
    #
    # @option params [Integer] :rank
    #   Specifies the position of the filter in the list of current filters.
    #   Also specifies the order in which this filter is applied to the
    #   findings.
    #
    # @option params [required, Types::FindingCriteria] :finding_criteria
    #   Represents the criteria to be used in the filter for querying
    #   findings.
    #
    #   You can only use the following attributes to query findings:
    #
    #   * accountId
    #
    #   * region
    #
    #   * confidence
    #
    #   * id
    #
    #   * resource.accessKeyDetails.accessKeyId
    #
    #   * resource.accessKeyDetails.principalId
    #
    #   * resource.accessKeyDetails.userName
    #
    #   * resource.accessKeyDetails.userType
    #
    #   * resource.instanceDetails.iamInstanceProfile.id
    #
    #   * resource.instanceDetails.imageId
    #
    #   * resource.instanceDetails.instanceId
    #
    #   * resource.instanceDetails.outpostArn
    #
    #   * resource.instanceDetails.networkInterfaces.ipv6Addresses
    #
    #   * resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress
    #
    #   * resource.instanceDetails.networkInterfaces.publicDnsName
    #
    #   * resource.instanceDetails.networkInterfaces.publicIp
    #
    #   * resource.instanceDetails.networkInterfaces.securityGroups.groupId
    #
    #   * resource.instanceDetails.networkInterfaces.securityGroups.groupName
    #
    #   * resource.instanceDetails.networkInterfaces.subnetId
    #
    #   * resource.instanceDetails.networkInterfaces.vpcId
    #
    #   * resource.instanceDetails.tags.key
    #
    #   * resource.instanceDetails.tags.value
    #
    #   * resource.resourceType
    #
    #   * service.action.actionType
    #
    #   * service.action.awsApiCallAction.api
    #
    #   * service.action.awsApiCallAction.callerType
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.city.cityName
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.country.countryName
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.ipAddressV4
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.organization.asn
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg
    #
    #   * service.action.awsApiCallAction.serviceName
    #
    #   * service.action.dnsRequestAction.domain
    #
    #   * service.action.networkConnectionAction.blocked
    #
    #   * service.action.networkConnectionAction.connectionDirection
    #
    #   * service.action.networkConnectionAction.localPortDetails.port
    #
    #   * service.action.networkConnectionAction.protocol
    #
    #   * service.action.networkConnectionAction.localIpDetails.ipAddressV4
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.city.cityName
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.country.countryName
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.ipAddressV4
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.organization.asn
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg
    #
    #   * service.action.networkConnectionAction.remotePortDetails.port
    #
    #   * service.additionalInfo.threatListName
    #
    #   * service.archived
    #
    #     When this attribute is set to TRUE, only archived findings are
    #     listed. When it's set to FALSE, only unarchived findings are
    #     listed. When this attribute is not set, all existing findings are
    #     listed.
    #
    #   * service.resourceRole
    #
    #   * severity
    #
    #   * type
    #
    #   * updatedAt
    #
    #     Type: ISO 8601 string format: YYYY-MM-DDTHH:MM:SS.SSSZ or
    #     YYYY-MM-DDTHH:MM:SSZ depending on whether the value contains
    #     milliseconds.
    #
    # @option params [String] :client_token
    #   The idempotency token for the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be added to a new filter resource.
    #
    # @return [Types::CreateFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFilterResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_filter({
    #     detector_id: "DetectorId", # required
    #     name: "FilterName", # required
    #     description: "FilterDescription",
    #     action: "NOOP", # accepts NOOP, ARCHIVE
    #     rank: 1,
    #     finding_criteria: { # required
    #       criterion: {
    #         "String" => {
    #           eq: ["String"],
    #           neq: ["String"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           equals: ["String"],
    #           not_equals: ["String"],
    #           greater_than: 1,
    #           greater_than_or_equal: 1,
    #           less_than: 1,
    #           less_than_or_equal: 1,
    #         },
    #       },
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateFilter AWS API Documentation
    #
    # @overload create_filter(params = {})
    # @param [Hash] params ({})
    def create_filter(params = {}, options = {})
      req = build_request(:create_filter, params)
      req.send_request(options)
    end

    # Creates a new IPSet, which is called a trusted IP list in the console
    # user interface. An IPSet is a list of IP addresses that are trusted
    # for secure communication with AWS infrastructure and applications.
    # GuardDuty doesn't generate findings for IP addresses that are
    # included in IPSets. Only users from the master account can use this
    # operation.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty account that you want
    #   to create an IPSet for.
    #
    # @option params [required, String] :name
    #   The user-friendly name to identify the IPSet.
    #
    #   Allowed characters are alphanumerics, spaces, hyphens (-), and
    #   underscores (\_).
    #
    # @option params [required, String] :format
    #   The format of the file that contains the IPSet.
    #
    # @option params [required, String] :location
    #   The URI of the file that contains the IPSet. For example:
    #   https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
    #
    # @option params [required, Boolean] :activate
    #   A Boolean value that indicates whether GuardDuty is to start using the
    #   uploaded IPSet.
    #
    # @option params [String] :client_token
    #   The idempotency token for the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be added to a new IP set resource.
    #
    # @return [Types::CreateIPSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIPSetResponse#ip_set_id #ip_set_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ip_set({
    #     detector_id: "DetectorId", # required
    #     name: "Name", # required
    #     format: "TXT", # required, accepts TXT, STIX, OTX_CSV, ALIEN_VAULT, PROOF_POINT, FIRE_EYE
    #     location: "Location", # required
    #     activate: false, # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.ip_set_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateIPSet AWS API Documentation
    #
    # @overload create_ip_set(params = {})
    # @param [Hash] params ({})
    def create_ip_set(params = {}, options = {})
      req = build_request(:create_ip_set, params)
      req.send_request(options)
    end

    # Creates member accounts of the current AWS account by specifying a
    # list of AWS account IDs. The current AWS account can then invite these
    # members to manage GuardDuty in their accounts.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty account that you want
    #   to associate member accounts with.
    #
    # @option params [required, Array<Types::AccountDetail>] :account_details
    #   A list of account ID and email address pairs of the accounts that you
    #   want to associate with the master GuardDuty account.
    #
    # @return [Types::CreateMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_members({
    #     detector_id: "DetectorId", # required
    #     account_details: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         email: "Email", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateMembers AWS API Documentation
    #
    # @overload create_members(params = {})
    # @param [Hash] params ({})
    def create_members(params = {}, options = {})
      req = build_request(:create_members, params)
      req.send_request(options)
    end

    # Creates a publishing destination to export findings to. The resource
    # to export findings to must exist before you use this operation.
    #
    # @option params [required, String] :detector_id
    #   The ID of the GuardDuty detector associated with the publishing
    #   destination.
    #
    # @option params [required, String] :destination_type
    #   The type of resource for the publishing destination. Currently only
    #   Amazon S3 buckets are supported.
    #
    # @option params [required, Types::DestinationProperties] :destination_properties
    #   The properties of the publishing destination, including the ARNs for
    #   the destination and the KMS key used for encryption.
    #
    # @option params [String] :client_token
    #   The idempotency token for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreatePublishingDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePublishingDestinationResponse#destination_id #destination_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_publishing_destination({
    #     detector_id: "DetectorId", # required
    #     destination_type: "S3", # required, accepts S3
    #     destination_properties: { # required
    #       destination_arn: "String",
    #       kms_key_arn: "String",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.destination_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreatePublishingDestination AWS API Documentation
    #
    # @overload create_publishing_destination(params = {})
    # @param [Hash] params ({})
    def create_publishing_destination(params = {}, options = {})
      req = build_request(:create_publishing_destination, params)
      req.send_request(options)
    end

    # Generates example findings of types specified by the list of finding
    # types. If 'NULL' is specified for `findingTypes`, the API generates
    # example findings of all supported finding types.
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector to create sample findings for.
    #
    # @option params [Array<String>] :finding_types
    #   The types of sample findings to generate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sample_findings({
    #     detector_id: "DetectorId", # required
    #     finding_types: ["FindingType"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateSampleFindings AWS API Documentation
    #
    # @overload create_sample_findings(params = {})
    # @param [Hash] params ({})
    def create_sample_findings(params = {}, options = {})
      req = build_request(:create_sample_findings, params)
      req.send_request(options)
    end

    # Creates a new ThreatIntelSet. ThreatIntelSets consist of known
    # malicious IP addresses. GuardDuty generates findings based on
    # ThreatIntelSets. Only users of the master account can use this
    # operation.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty account that you want
    #   to create a threatIntelSet for.
    #
    # @option params [required, String] :name
    #   A user-friendly ThreatIntelSet name displayed in all findings that are
    #   generated by activity that involves IP addresses included in this
    #   ThreatIntelSet.
    #
    # @option params [required, String] :format
    #   The format of the file that contains the ThreatIntelSet.
    #
    # @option params [required, String] :location
    #   The URI of the file that contains the ThreatIntelSet. For example:
    #   https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
    #
    # @option params [required, Boolean] :activate
    #   A Boolean value that indicates whether GuardDuty is to start using the
    #   uploaded ThreatIntelSet.
    #
    # @option params [String] :client_token
    #   The idempotency token for the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be added to a new threat list resource.
    #
    # @return [Types::CreateThreatIntelSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateThreatIntelSetResponse#threat_intel_set_id #threat_intel_set_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_threat_intel_set({
    #     detector_id: "DetectorId", # required
    #     name: "Name", # required
    #     format: "TXT", # required, accepts TXT, STIX, OTX_CSV, ALIEN_VAULT, PROOF_POINT, FIRE_EYE
    #     location: "Location", # required
    #     activate: false, # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.threat_intel_set_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateThreatIntelSet AWS API Documentation
    #
    # @overload create_threat_intel_set(params = {})
    # @param [Hash] params ({})
    def create_threat_intel_set(params = {}, options = {})
      req = build_request(:create_threat_intel_set, params)
      req.send_request(options)
    end

    # Declines invitations sent to the current member account by AWS
    # accounts specified by their account IDs.
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of account IDs of the AWS accounts that sent invitations to the
    #   current member account that you want to decline invitations from.
    #
    # @return [Types::DeclineInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeclineInvitationsResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decline_invitations({
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeclineInvitations AWS API Documentation
    #
    # @overload decline_invitations(params = {})
    # @param [Hash] params ({})
    def decline_invitations(params = {}, options = {})
      req = build_request(:decline_invitations, params)
      req.send_request(options)
    end

    # Deletes an Amazon GuardDuty detector that is specified by the detector
    # ID.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_detector({
    #     detector_id: "DetectorId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteDetector AWS API Documentation
    #
    # @overload delete_detector(params = {})
    # @param [Hash] params ({})
    def delete_detector(params = {}, options = {})
      req = build_request(:delete_detector, params)
      req.send_request(options)
    end

    # Deletes the filter specified by the filter name.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that the filter is associated with.
    #
    # @option params [required, String] :filter_name
    #   The name of the filter that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_filter({
    #     detector_id: "DetectorId", # required
    #     filter_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteFilter AWS API Documentation
    #
    # @overload delete_filter(params = {})
    # @param [Hash] params ({})
    def delete_filter(params = {}, options = {})
      req = build_request(:delete_filter, params)
      req.send_request(options)
    end

    # Deletes the IPSet specified by the `ipSetId`. IPSets are called
    # trusted IP lists in the console user interface.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector associated with the IPSet.
    #
    # @option params [required, String] :ip_set_id
    #   The unique ID of the IPSet to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ip_set({
    #     detector_id: "DetectorId", # required
    #     ip_set_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteIPSet AWS API Documentation
    #
    # @overload delete_ip_set(params = {})
    # @param [Hash] params ({})
    def delete_ip_set(params = {}, options = {})
      req = build_request(:delete_ip_set, params)
      req.send_request(options)
    end

    # Deletes invitations sent to the current member account by AWS accounts
    # specified by their account IDs.
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of account IDs of the AWS accounts that sent invitations to the
    #   current member account that you want to delete invitations from.
    #
    # @return [Types::DeleteInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInvitationsResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_invitations({
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteInvitations AWS API Documentation
    #
    # @overload delete_invitations(params = {})
    # @param [Hash] params ({})
    def delete_invitations(params = {}, options = {})
      req = build_request(:delete_invitations, params)
      req.send_request(options)
    end

    # Deletes GuardDuty member accounts (to the current GuardDuty master
    # account) specified by the account IDs.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty account whose members
    #   you want to delete.
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of account IDs of the GuardDuty member accounts that you want
    #   to delete.
    #
    # @return [Types::DeleteMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_members({
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteMembers AWS API Documentation
    #
    # @overload delete_members(params = {})
    # @param [Hash] params ({})
    def delete_members(params = {}, options = {})
      req = build_request(:delete_members, params)
      req.send_request(options)
    end

    # Deletes the publishing definition with the specified `destinationId`.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector associated with the publishing
    #   destination to delete.
    #
    # @option params [required, String] :destination_id
    #   The ID of the publishing destination to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_publishing_destination({
    #     detector_id: "DetectorId", # required
    #     destination_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeletePublishingDestination AWS API Documentation
    #
    # @overload delete_publishing_destination(params = {})
    # @param [Hash] params ({})
    def delete_publishing_destination(params = {}, options = {})
      req = build_request(:delete_publishing_destination, params)
      req.send_request(options)
    end

    # Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that the threatIntelSet is associated
    #   with.
    #
    # @option params [required, String] :threat_intel_set_id
    #   The unique ID of the threatIntelSet that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_threat_intel_set({
    #     detector_id: "DetectorId", # required
    #     threat_intel_set_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteThreatIntelSet AWS API Documentation
    #
    # @overload delete_threat_intel_set(params = {})
    # @param [Hash] params ({})
    def delete_threat_intel_set(params = {}, options = {})
      req = build_request(:delete_threat_intel_set, params)
      req.send_request(options)
    end

    # Returns information about the account selected as the delegated
    # administrator for GuardDuty.
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector to retrieve information about the delegated
    #   administrator from.
    #
    # @return [Types::DescribeOrganizationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationConfigurationResponse#auto_enable #auto_enable} => Boolean
    #   * {Types::DescribeOrganizationConfigurationResponse#member_account_limit_reached #member_account_limit_reached} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_configuration({
    #     detector_id: "DetectorId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_enable #=> Boolean
    #   resp.member_account_limit_reached #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DescribeOrganizationConfiguration AWS API Documentation
    #
    # @overload describe_organization_configuration(params = {})
    # @param [Hash] params ({})
    def describe_organization_configuration(params = {}, options = {})
      req = build_request(:describe_organization_configuration, params)
      req.send_request(options)
    end

    # Returns information about the publishing destination specified by the
    # provided `destinationId`.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector associated with the publishing
    #   destination to retrieve.
    #
    # @option params [required, String] :destination_id
    #   The ID of the publishing destination to retrieve.
    #
    # @return [Types::DescribePublishingDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePublishingDestinationResponse#destination_id #destination_id} => String
    #   * {Types::DescribePublishingDestinationResponse#destination_type #destination_type} => String
    #   * {Types::DescribePublishingDestinationResponse#status #status} => String
    #   * {Types::DescribePublishingDestinationResponse#publishing_failure_start_timestamp #publishing_failure_start_timestamp} => Integer
    #   * {Types::DescribePublishingDestinationResponse#destination_properties #destination_properties} => Types::DestinationProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_publishing_destination({
    #     detector_id: "DetectorId", # required
    #     destination_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.destination_id #=> String
    #   resp.destination_type #=> String, one of "S3"
    #   resp.status #=> String, one of "PENDING_VERIFICATION", "PUBLISHING", "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY", "STOPPED"
    #   resp.publishing_failure_start_timestamp #=> Integer
    #   resp.destination_properties.destination_arn #=> String
    #   resp.destination_properties.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DescribePublishingDestination AWS API Documentation
    #
    # @overload describe_publishing_destination(params = {})
    # @param [Hash] params ({})
    def describe_publishing_destination(params = {}, options = {})
      req = build_request(:describe_publishing_destination, params)
      req.send_request(options)
    end

    # Disables an AWS account within the Organization as the GuardDuty
    # delegated administrator.
    #
    # @option params [required, String] :admin_account_id
    #   The AWS Account ID for the organizations account to be disabled as a
    #   GuardDuty delegated administrator.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_organization_admin_account({
    #     admin_account_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisableOrganizationAdminAccount AWS API Documentation
    #
    # @overload disable_organization_admin_account(params = {})
    # @param [Hash] params ({})
    def disable_organization_admin_account(params = {}, options = {})
      req = build_request(:disable_organization_admin_account, params)
      req.send_request(options)
    end

    # Disassociates the current GuardDuty member account from its master
    # account.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_from_master_account({
    #     detector_id: "DetectorId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateFromMasterAccount AWS API Documentation
    #
    # @overload disassociate_from_master_account(params = {})
    # @param [Hash] params ({})
    def disassociate_from_master_account(params = {}, options = {})
      req = build_request(:disassociate_from_master_account, params)
      req.send_request(options)
    end

    # Disassociates GuardDuty member accounts (to the current GuardDuty
    # master account) specified by the account IDs.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty account whose members
    #   you want to disassociate from the master account.
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of account IDs of the GuardDuty member accounts that you want
    #   to disassociate from the master account.
    #
    # @return [Types::DisassociateMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_members({
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateMembers AWS API Documentation
    #
    # @overload disassociate_members(params = {})
    # @param [Hash] params ({})
    def disassociate_members(params = {}, options = {})
      req = build_request(:disassociate_members, params)
      req.send_request(options)
    end

    # Enables an AWS account within the organization as the GuardDuty
    # delegated administrator.
    #
    # @option params [required, String] :admin_account_id
    #   The AWS Account ID for the organization account to be enabled as a
    #   GuardDuty delegated administrator.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_organization_admin_account({
    #     admin_account_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/EnableOrganizationAdminAccount AWS API Documentation
    #
    # @overload enable_organization_admin_account(params = {})
    # @param [Hash] params ({})
    def enable_organization_admin_account(params = {}, options = {})
      req = build_request(:enable_organization_admin_account, params)
      req.send_request(options)
    end

    # Retrieves an Amazon GuardDuty detector specified by the detectorId.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that you want to get.
    #
    # @return [Types::GetDetectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDetectorResponse#created_at #created_at} => String
    #   * {Types::GetDetectorResponse#finding_publishing_frequency #finding_publishing_frequency} => String
    #   * {Types::GetDetectorResponse#service_role #service_role} => String
    #   * {Types::GetDetectorResponse#status #status} => String
    #   * {Types::GetDetectorResponse#updated_at #updated_at} => String
    #   * {Types::GetDetectorResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_detector({
    #     detector_id: "DetectorId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> String
    #   resp.finding_publishing_frequency #=> String, one of "FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"
    #   resp.service_role #=> String
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.updated_at #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetDetector AWS API Documentation
    #
    # @overload get_detector(params = {})
    # @param [Hash] params ({})
    def get_detector(params = {}, options = {})
      req = build_request(:get_detector, params)
      req.send_request(options)
    end

    # Returns the details of the filter specified by the filter name.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that the filter is associated with.
    #
    # @option params [required, String] :filter_name
    #   The name of the filter you want to get.
    #
    # @return [Types::GetFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFilterResponse#name #name} => String
    #   * {Types::GetFilterResponse#description #description} => String
    #   * {Types::GetFilterResponse#action #action} => String
    #   * {Types::GetFilterResponse#rank #rank} => Integer
    #   * {Types::GetFilterResponse#finding_criteria #finding_criteria} => Types::FindingCriteria
    #   * {Types::GetFilterResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_filter({
    #     detector_id: "DetectorId", # required
    #     filter_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.action #=> String, one of "NOOP", "ARCHIVE"
    #   resp.rank #=> Integer
    #   resp.finding_criteria.criterion #=> Hash
    #   resp.finding_criteria.criterion["String"].eq #=> Array
    #   resp.finding_criteria.criterion["String"].eq[0] #=> String
    #   resp.finding_criteria.criterion["String"].neq #=> Array
    #   resp.finding_criteria.criterion["String"].neq[0] #=> String
    #   resp.finding_criteria.criterion["String"].gt #=> Integer
    #   resp.finding_criteria.criterion["String"].gte #=> Integer
    #   resp.finding_criteria.criterion["String"].lt #=> Integer
    #   resp.finding_criteria.criterion["String"].lte #=> Integer
    #   resp.finding_criteria.criterion["String"].equals #=> Array
    #   resp.finding_criteria.criterion["String"].equals[0] #=> String
    #   resp.finding_criteria.criterion["String"].not_equals #=> Array
    #   resp.finding_criteria.criterion["String"].not_equals[0] #=> String
    #   resp.finding_criteria.criterion["String"].greater_than #=> Integer
    #   resp.finding_criteria.criterion["String"].greater_than_or_equal #=> Integer
    #   resp.finding_criteria.criterion["String"].less_than #=> Integer
    #   resp.finding_criteria.criterion["String"].less_than_or_equal #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFilter AWS API Documentation
    #
    # @overload get_filter(params = {})
    # @param [Hash] params ({})
    def get_filter(params = {}, options = {})
      req = build_request(:get_filter, params)
      req.send_request(options)
    end

    # Describes Amazon GuardDuty findings specified by finding IDs.
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector that specifies the GuardDuty service whose
    #   findings you want to retrieve.
    #
    # @option params [required, Array<String>] :finding_ids
    #   The IDs of the findings that you want to retrieve.
    #
    # @option params [Types::SortCriteria] :sort_criteria
    #   Represents the criteria used for sorting findings.
    #
    # @return [Types::GetFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingsResponse#findings #findings} => Array&lt;Types::Finding&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings({
    #     detector_id: "DetectorId", # required
    #     finding_ids: ["FindingId"], # required
    #     sort_criteria: {
    #       attribute_name: "String",
    #       order_by: "ASC", # accepts ASC, DESC
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.findings #=> Array
    #   resp.findings[0].account_id #=> String
    #   resp.findings[0].arn #=> String
    #   resp.findings[0].confidence #=> Float
    #   resp.findings[0].created_at #=> String
    #   resp.findings[0].description #=> String
    #   resp.findings[0].id #=> String
    #   resp.findings[0].partition #=> String
    #   resp.findings[0].region #=> String
    #   resp.findings[0].resource.access_key_details.access_key_id #=> String
    #   resp.findings[0].resource.access_key_details.principal_id #=> String
    #   resp.findings[0].resource.access_key_details.user_name #=> String
    #   resp.findings[0].resource.access_key_details.user_type #=> String
    #   resp.findings[0].resource.s3_bucket_details #=> Array
    #   resp.findings[0].resource.s3_bucket_details[0].arn #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].name #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].type #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].created_at #=> Time
    #   resp.findings[0].resource.s3_bucket_details[0].owner.id #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].tags #=> Array
    #   resp.findings[0].resource.s3_bucket_details[0].tags[0].key #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].tags[0].value #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].default_server_side_encryption.encryption_type #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].default_server_side_encryption.kms_master_key_arn #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.access_control_list.allows_public_read_access #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.access_control_list.allows_public_write_access #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.bucket_policy.allows_public_read_access #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.bucket_policy.allows_public_write_access #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.block_public_access.ignore_public_acls #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.block_public_access.restrict_public_buckets #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.block_public_access.block_public_acls #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.block_public_access.block_public_policy #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.account_level_permissions.block_public_access.ignore_public_acls #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.account_level_permissions.block_public_access.restrict_public_buckets #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.account_level_permissions.block_public_access.block_public_acls #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.account_level_permissions.block_public_access.block_public_policy #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.effective_permission #=> String
    #   resp.findings[0].resource.instance_details.availability_zone #=> String
    #   resp.findings[0].resource.instance_details.iam_instance_profile.arn #=> String
    #   resp.findings[0].resource.instance_details.iam_instance_profile.id #=> String
    #   resp.findings[0].resource.instance_details.image_description #=> String
    #   resp.findings[0].resource.instance_details.image_id #=> String
    #   resp.findings[0].resource.instance_details.instance_id #=> String
    #   resp.findings[0].resource.instance_details.instance_state #=> String
    #   resp.findings[0].resource.instance_details.instance_type #=> String
    #   resp.findings[0].resource.instance_details.outpost_arn #=> String
    #   resp.findings[0].resource.instance_details.launch_time #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces #=> Array
    #   resp.findings[0].resource.instance_details.network_interfaces[0].ipv_6_addresses #=> Array
    #   resp.findings[0].resource.instance_details.network_interfaces[0].ipv_6_addresses[0] #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].network_interface_id #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].private_dns_name #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].private_ip_address #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].private_ip_addresses #=> Array
    #   resp.findings[0].resource.instance_details.network_interfaces[0].private_ip_addresses[0].private_dns_name #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].private_ip_addresses[0].private_ip_address #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].public_dns_name #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].public_ip #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].security_groups #=> Array
    #   resp.findings[0].resource.instance_details.network_interfaces[0].security_groups[0].group_id #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].security_groups[0].group_name #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].subnet_id #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].vpc_id #=> String
    #   resp.findings[0].resource.instance_details.platform #=> String
    #   resp.findings[0].resource.instance_details.product_codes #=> Array
    #   resp.findings[0].resource.instance_details.product_codes[0].code #=> String
    #   resp.findings[0].resource.instance_details.product_codes[0].product_type #=> String
    #   resp.findings[0].resource.instance_details.tags #=> Array
    #   resp.findings[0].resource.instance_details.tags[0].key #=> String
    #   resp.findings[0].resource.instance_details.tags[0].value #=> String
    #   resp.findings[0].resource.resource_type #=> String
    #   resp.findings[0].schema_version #=> String
    #   resp.findings[0].service.action.action_type #=> String
    #   resp.findings[0].service.action.aws_api_call_action.api #=> String
    #   resp.findings[0].service.action.aws_api_call_action.caller_type #=> String
    #   resp.findings[0].service.action.aws_api_call_action.domain_details.domain #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.city.city_name #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.country.country_code #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.country.country_name #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.geo_location.lat #=> Float
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.geo_location.lon #=> Float
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.ip_address_v4 #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.organization.asn #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.organization.asn_org #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.organization.isp #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.organization.org #=> String
    #   resp.findings[0].service.action.aws_api_call_action.service_name #=> String
    #   resp.findings[0].service.action.dns_request_action.domain #=> String
    #   resp.findings[0].service.action.network_connection_action.blocked #=> Boolean
    #   resp.findings[0].service.action.network_connection_action.connection_direction #=> String
    #   resp.findings[0].service.action.network_connection_action.local_port_details.port #=> Integer
    #   resp.findings[0].service.action.network_connection_action.local_port_details.port_name #=> String
    #   resp.findings[0].service.action.network_connection_action.protocol #=> String
    #   resp.findings[0].service.action.network_connection_action.local_ip_details.ip_address_v4 #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.city.city_name #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.country.country_code #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.country.country_name #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.geo_location.lat #=> Float
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.geo_location.lon #=> Float
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.ip_address_v4 #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.organization.asn #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.organization.asn_org #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.organization.isp #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.organization.org #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_port_details.port #=> Integer
    #   resp.findings[0].service.action.network_connection_action.remote_port_details.port_name #=> String
    #   resp.findings[0].service.action.port_probe_action.blocked #=> Boolean
    #   resp.findings[0].service.action.port_probe_action.port_probe_details #=> Array
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].local_port_details.port #=> Integer
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].local_port_details.port_name #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].local_ip_details.ip_address_v4 #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.city.city_name #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.country.country_code #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.country.country_name #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.geo_location.lat #=> Float
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.geo_location.lon #=> Float
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.ip_address_v4 #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.organization.asn #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.organization.asn_org #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.organization.isp #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.organization.org #=> String
    #   resp.findings[0].service.evidence.threat_intelligence_details #=> Array
    #   resp.findings[0].service.evidence.threat_intelligence_details[0].threat_list_name #=> String
    #   resp.findings[0].service.evidence.threat_intelligence_details[0].threat_names #=> Array
    #   resp.findings[0].service.evidence.threat_intelligence_details[0].threat_names[0] #=> String
    #   resp.findings[0].service.archived #=> Boolean
    #   resp.findings[0].service.count #=> Integer
    #   resp.findings[0].service.detector_id #=> String
    #   resp.findings[0].service.event_first_seen #=> String
    #   resp.findings[0].service.event_last_seen #=> String
    #   resp.findings[0].service.resource_role #=> String
    #   resp.findings[0].service.service_name #=> String
    #   resp.findings[0].service.user_feedback #=> String
    #   resp.findings[0].severity #=> Float
    #   resp.findings[0].title #=> String
    #   resp.findings[0].type #=> String
    #   resp.findings[0].updated_at #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFindings AWS API Documentation
    #
    # @overload get_findings(params = {})
    # @param [Hash] params ({})
    def get_findings(params = {}, options = {})
      req = build_request(:get_findings, params)
      req.send_request(options)
    end

    # Lists Amazon GuardDuty findings statistics for the specified detector
    # ID.
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector that specifies the GuardDuty service whose
    #   findings' statistics you want to retrieve.
    #
    # @option params [required, Array<String>] :finding_statistic_types
    #   The types of finding statistics to retrieve.
    #
    # @option params [Types::FindingCriteria] :finding_criteria
    #   Represents the criteria that is used for querying findings.
    #
    # @return [Types::GetFindingsStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingsStatisticsResponse#finding_statistics #finding_statistics} => Types::FindingStatistics
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings_statistics({
    #     detector_id: "DetectorId", # required
    #     finding_statistic_types: ["COUNT_BY_SEVERITY"], # required, accepts COUNT_BY_SEVERITY
    #     finding_criteria: {
    #       criterion: {
    #         "String" => {
    #           eq: ["String"],
    #           neq: ["String"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           equals: ["String"],
    #           not_equals: ["String"],
    #           greater_than: 1,
    #           greater_than_or_equal: 1,
    #           less_than: 1,
    #           less_than_or_equal: 1,
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.finding_statistics.count_by_severity #=> Hash
    #   resp.finding_statistics.count_by_severity["String"] #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFindingsStatistics AWS API Documentation
    #
    # @overload get_findings_statistics(params = {})
    # @param [Hash] params ({})
    def get_findings_statistics(params = {}, options = {})
      req = build_request(:get_findings_statistics, params)
      req.send_request(options)
    end

    # Retrieves the IPSet specified by the `ipSetId`.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that the IPSet is associated with.
    #
    # @option params [required, String] :ip_set_id
    #   The unique ID of the IPSet to retrieve.
    #
    # @return [Types::GetIPSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIPSetResponse#name #name} => String
    #   * {Types::GetIPSetResponse#format #format} => String
    #   * {Types::GetIPSetResponse#location #location} => String
    #   * {Types::GetIPSetResponse#status #status} => String
    #   * {Types::GetIPSetResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ip_set({
    #     detector_id: "DetectorId", # required
    #     ip_set_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.format #=> String, one of "TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"
    #   resp.location #=> String
    #   resp.status #=> String, one of "INACTIVE", "ACTIVATING", "ACTIVE", "DEACTIVATING", "ERROR", "DELETE_PENDING", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetIPSet AWS API Documentation
    #
    # @overload get_ip_set(params = {})
    # @param [Hash] params ({})
    def get_ip_set(params = {}, options = {})
      req = build_request(:get_ip_set, params)
      req.send_request(options)
    end

    # Returns the count of all GuardDuty membership invitations that were
    # sent to the current member account except the currently accepted
    # invitation.
    #
    # @return [Types::GetInvitationsCountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInvitationsCountResponse#invitations_count #invitations_count} => Integer
    #
    # @example Response structure
    #
    #   resp.invitations_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetInvitationsCount AWS API Documentation
    #
    # @overload get_invitations_count(params = {})
    # @param [Hash] params ({})
    def get_invitations_count(params = {}, options = {})
      req = build_request(:get_invitations_count, params)
      req.send_request(options)
    end

    # Provides the details for the GuardDuty master account associated with
    # the current GuardDuty member account.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #
    # @return [Types::GetMasterAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMasterAccountResponse#master #master} => Types::Master
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_master_account({
    #     detector_id: "DetectorId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.master.account_id #=> String
    #   resp.master.invitation_id #=> String
    #   resp.master.relationship_status #=> String
    #   resp.master.invited_at #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMasterAccount AWS API Documentation
    #
    # @overload get_master_account(params = {})
    # @param [Hash] params ({})
    def get_master_account(params = {}, options = {})
      req = build_request(:get_master_account, params)
      req.send_request(options)
    end

    # Retrieves GuardDuty member accounts (to the current GuardDuty master
    # account) specified by the account IDs.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty account whose members
    #   you want to retrieve.
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of account IDs of the GuardDuty member accounts that you want
    #   to describe.
    #
    # @return [Types::GetMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMembersResponse#members #members} => Array&lt;Types::Member&gt;
    #   * {Types::GetMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_members({
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].account_id #=> String
    #   resp.members[0].detector_id #=> String
    #   resp.members[0].master_id #=> String
    #   resp.members[0].email #=> String
    #   resp.members[0].relationship_status #=> String
    #   resp.members[0].invited_at #=> String
    #   resp.members[0].updated_at #=> String
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMembers AWS API Documentation
    #
    # @overload get_members(params = {})
    # @param [Hash] params ({})
    def get_members(params = {}, options = {})
      req = build_request(:get_members, params)
      req.send_request(options)
    end

    # Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet
    # ID.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that the threatIntelSet is associated
    #   with.
    #
    # @option params [required, String] :threat_intel_set_id
    #   The unique ID of the threatIntelSet that you want to get.
    #
    # @return [Types::GetThreatIntelSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetThreatIntelSetResponse#name #name} => String
    #   * {Types::GetThreatIntelSetResponse#format #format} => String
    #   * {Types::GetThreatIntelSetResponse#location #location} => String
    #   * {Types::GetThreatIntelSetResponse#status #status} => String
    #   * {Types::GetThreatIntelSetResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_threat_intel_set({
    #     detector_id: "DetectorId", # required
    #     threat_intel_set_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.format #=> String, one of "TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"
    #   resp.location #=> String
    #   resp.status #=> String, one of "INACTIVE", "ACTIVATING", "ACTIVE", "DEACTIVATING", "ERROR", "DELETE_PENDING", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetThreatIntelSet AWS API Documentation
    #
    # @overload get_threat_intel_set(params = {})
    # @param [Hash] params ({})
    def get_threat_intel_set(params = {}, options = {})
      req = build_request(:get_threat_intel_set, params)
      req.send_request(options)
    end

    # Invites other AWS accounts (created as members of the current AWS
    # account by CreateMembers) to enable GuardDuty, and allow the current
    # AWS account to view and manage these accounts' GuardDuty findings on
    # their behalf as the master account.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty account that you want
    #   to invite members with.
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of account IDs of the accounts that you want to invite to
    #   GuardDuty as members.
    #
    # @option params [Boolean] :disable_email_notification
    #   A Boolean value that specifies whether you want to disable email
    #   notification to the accounts that you’re inviting to GuardDuty as
    #   members.
    #
    # @option params [String] :message
    #   The invitation message that you want to send to the accounts that
    #   you’re inviting to GuardDuty as members.
    #
    # @return [Types::InviteMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InviteMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invite_members({
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #     disable_email_notification: false,
    #     message: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/InviteMembers AWS API Documentation
    #
    # @overload invite_members(params = {})
    # @param [Hash] params ({})
    def invite_members(params = {}, options = {})
      req = build_request(:invite_members, params)
      req.send_request(options)
    end

    # Lists detectorIds of all the existing Amazon GuardDuty detector
    # resources.
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response. The default value is 50. The maximum
    #   value is 50.
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with the
    #   value of NextToken from the previous response to continue listing
    #   data.
    #
    # @return [Types::ListDetectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDetectorsResponse#detector_ids #detector_ids} => Array&lt;String&gt;
    #   * {Types::ListDetectorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_detectors({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.detector_ids #=> Array
    #   resp.detector_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListDetectors AWS API Documentation
    #
    # @overload list_detectors(params = {})
    # @param [Hash] params ({})
    def list_detectors(params = {}, options = {})
      req = build_request(:list_detectors, params)
      req.send_request(options)
    end

    # Returns a paginated list of the current filters.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that the filter is associated with.
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response. The default value is 50. The maximum
    #   value is 50.
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with the
    #   value of NextToken from the previous response to continue listing
    #   data.
    #
    # @return [Types::ListFiltersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFiltersResponse#filter_names #filter_names} => Array&lt;String&gt;
    #   * {Types::ListFiltersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_filters({
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.filter_names #=> Array
    #   resp.filter_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListFilters AWS API Documentation
    #
    # @overload list_filters(params = {})
    # @param [Hash] params ({})
    def list_filters(params = {}, options = {})
      req = build_request(:list_filters, params)
      req.send_request(options)
    end

    # Lists Amazon GuardDuty findings for the specified detector ID.
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector that specifies the GuardDuty service whose
    #   findings you want to list.
    #
    # @option params [Types::FindingCriteria] :finding_criteria
    #   Represents the criteria used for querying findings. Valid values
    #   include:
    #
    #   * JSON field name
    #
    #   * accountId
    #
    #   * region
    #
    #   * confidence
    #
    #   * id
    #
    #   * resource.accessKeyDetails.accessKeyId
    #
    #   * resource.accessKeyDetails.principalId
    #
    #   * resource.accessKeyDetails.userName
    #
    #   * resource.accessKeyDetails.userType
    #
    #   * resource.instanceDetails.iamInstanceProfile.id
    #
    #   * resource.instanceDetails.imageId
    #
    #   * resource.instanceDetails.instanceId
    #
    #   * resource.instanceDetails.networkInterfaces.ipv6Addresses
    #
    #   * resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress
    #
    #   * resource.instanceDetails.networkInterfaces.publicDnsName
    #
    #   * resource.instanceDetails.networkInterfaces.publicIp
    #
    #   * resource.instanceDetails.networkInterfaces.securityGroups.groupId
    #
    #   * resource.instanceDetails.networkInterfaces.securityGroups.groupName
    #
    #   * resource.instanceDetails.networkInterfaces.subnetId
    #
    #   * resource.instanceDetails.networkInterfaces.vpcId
    #
    #   * resource.instanceDetails.tags.key
    #
    #   * resource.instanceDetails.tags.value
    #
    #   * resource.resourceType
    #
    #   * service.action.actionType
    #
    #   * service.action.awsApiCallAction.api
    #
    #   * service.action.awsApiCallAction.callerType
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.city.cityName
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.country.countryName
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.ipAddressV4
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.organization.asn
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg
    #
    #   * service.action.awsApiCallAction.serviceName
    #
    #   * service.action.dnsRequestAction.domain
    #
    #   * service.action.networkConnectionAction.blocked
    #
    #   * service.action.networkConnectionAction.connectionDirection
    #
    #   * service.action.networkConnectionAction.localPortDetails.port
    #
    #   * service.action.networkConnectionAction.protocol
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.city.cityName
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.country.countryName
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.ipAddressV4
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.organization.asn
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg
    #
    #   * service.action.networkConnectionAction.remotePortDetails.port
    #
    #   * service.additionalInfo.threatListName
    #
    #   * service.archived
    #
    #     When this attribute is set to 'true', only archived findings are
    #     listed. When it's set to 'false', only unarchived findings are
    #     listed. When this attribute is not set, all existing findings are
    #     listed.
    #
    #   * service.resourceRole
    #
    #   * severity
    #
    #   * type
    #
    #   * updatedAt
    #
    #     Type: Timestamp in Unix Epoch millisecond format: 1486685375000
    #
    # @option params [Types::SortCriteria] :sort_criteria
    #   Represents the criteria used for sorting findings.
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items you
    #   want in the response. The default value is 50. The maximum value is
    #   50.
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with the
    #   value of NextToken from the previous response to continue listing
    #   data.
    #
    # @return [Types::ListFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFindingsResponse#finding_ids #finding_ids} => Array&lt;String&gt;
    #   * {Types::ListFindingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings({
    #     detector_id: "DetectorId", # required
    #     finding_criteria: {
    #       criterion: {
    #         "String" => {
    #           eq: ["String"],
    #           neq: ["String"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           equals: ["String"],
    #           not_equals: ["String"],
    #           greater_than: 1,
    #           greater_than_or_equal: 1,
    #           less_than: 1,
    #           less_than_or_equal: 1,
    #         },
    #       },
    #     },
    #     sort_criteria: {
    #       attribute_name: "String",
    #       order_by: "ASC", # accepts ASC, DESC
    #     },
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.finding_ids #=> Array
    #   resp.finding_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListFindings AWS API Documentation
    #
    # @overload list_findings(params = {})
    # @param [Hash] params ({})
    def list_findings(params = {}, options = {})
      req = build_request(:list_findings, params)
      req.send_request(options)
    end

    # Lists the IPSets of the GuardDuty service specified by the detector
    # ID. If you use this operation from a member account, the IPSets
    # returned are the IPSets from the associated master account.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that the IPSet is associated with.
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items you
    #   want in the response. The default value is 50. The maximum value is
    #   50.
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with the
    #   value of NextToken from the previous response to continue listing
    #   data.
    #
    # @return [Types::ListIPSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIPSetsResponse#ip_set_ids #ip_set_ids} => Array&lt;String&gt;
    #   * {Types::ListIPSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ip_sets({
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ip_set_ids #=> Array
    #   resp.ip_set_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListIPSets AWS API Documentation
    #
    # @overload list_ip_sets(params = {})
    # @param [Hash] params ({})
    def list_ip_sets(params = {}, options = {})
      req = build_request(:list_ip_sets, params)
      req.send_request(options)
    end

    # Lists all GuardDuty membership invitations that were sent to the
    # current AWS account.
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response. The default value is 50. The maximum
    #   value is 50.
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with the
    #   value of NextToken from the previous response to continue listing
    #   data.
    #
    # @return [Types::ListInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInvitationsResponse#invitations #invitations} => Array&lt;Types::Invitation&gt;
    #   * {Types::ListInvitationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invitations({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.invitations #=> Array
    #   resp.invitations[0].account_id #=> String
    #   resp.invitations[0].invitation_id #=> String
    #   resp.invitations[0].relationship_status #=> String
    #   resp.invitations[0].invited_at #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListInvitations AWS API Documentation
    #
    # @overload list_invitations(params = {})
    # @param [Hash] params ({})
    def list_invitations(params = {}, options = {})
      req = build_request(:list_invitations, params)
      req.send_request(options)
    end

    # Lists details about all member accounts for the current GuardDuty
    # master account.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector the member is associated with.
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items you
    #   want in the response. The default value is 50. The maximum value is
    #   50.
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with the
    #   value of NextToken from the previous response to continue listing
    #   data.
    #
    # @option params [String] :only_associated
    #   Specifies whether to only return associated members or to return all
    #   members (including members who haven't been invited yet or have been
    #   disassociated).
    #
    # @return [Types::ListMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMembersResponse#members #members} => Array&lt;Types::Member&gt;
    #   * {Types::ListMembersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_members({
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String",
    #     only_associated: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].account_id #=> String
    #   resp.members[0].detector_id #=> String
    #   resp.members[0].master_id #=> String
    #   resp.members[0].email #=> String
    #   resp.members[0].relationship_status #=> String
    #   resp.members[0].invited_at #=> String
    #   resp.members[0].updated_at #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListMembers AWS API Documentation
    #
    # @overload list_members(params = {})
    # @param [Hash] params ({})
    def list_members(params = {}, options = {})
      req = build_request(:list_members, params)
      req.send_request(options)
    end

    # Lists the accounts configured as GuardDuty delegated administrators.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #
    # @return [Types::ListOrganizationAdminAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrganizationAdminAccountsResponse#admin_accounts #admin_accounts} => Array&lt;Types::AdminAccount&gt;
    #   * {Types::ListOrganizationAdminAccountsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_admin_accounts({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.admin_accounts #=> Array
    #   resp.admin_accounts[0].admin_account_id #=> String
    #   resp.admin_accounts[0].admin_status #=> String, one of "ENABLED", "DISABLE_IN_PROGRESS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListOrganizationAdminAccounts AWS API Documentation
    #
    # @overload list_organization_admin_accounts(params = {})
    # @param [Hash] params ({})
    def list_organization_admin_accounts(params = {}, options = {})
      req = build_request(:list_organization_admin_accounts, params)
      req.send_request(options)
    end

    # Returns a list of publishing destinations associated with the
    # specified `dectectorId`.
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector to retrieve publishing destinations for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #
    # @return [Types::ListPublishingDestinationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPublishingDestinationsResponse#destinations #destinations} => Array&lt;Types::Destination&gt;
    #   * {Types::ListPublishingDestinationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_publishing_destinations({
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.destinations #=> Array
    #   resp.destinations[0].destination_id #=> String
    #   resp.destinations[0].destination_type #=> String, one of "S3"
    #   resp.destinations[0].status #=> String, one of "PENDING_VERIFICATION", "PUBLISHING", "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY", "STOPPED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListPublishingDestinations AWS API Documentation
    #
    # @overload list_publishing_destinations(params = {})
    # @param [Hash] params ({})
    def list_publishing_destinations(params = {}, options = {})
      req = build_request(:list_publishing_destinations, params)
      req.send_request(options)
    end

    # Lists tags for a resource. Tagging is currently supported for
    # detectors, finding filters, IP sets, and threat intel sets, with a
    # limit of 50 tags per resource. When invoked, this operation returns
    # all assigned tags for a given resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the given GuardDuty resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "GuardDutyArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the ThreatIntelSets of the GuardDuty service specified by the
    # detector ID. If you use this operation from a member account, the
    # ThreatIntelSets associated with the master account are returned.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that the threatIntelSet is associated
    #   with.
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response. The default value is 50. The maximum
    #   value is 50.
    #
    # @option params [String] :next_token
    #   You can use this parameter to paginate results in the response. Set
    #   the value of this parameter to null on your first call to the list
    #   action. For subsequent calls to the action, fill nextToken in the
    #   request with the value of NextToken from the previous response to
    #   continue listing data.
    #
    # @return [Types::ListThreatIntelSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThreatIntelSetsResponse#threat_intel_set_ids #threat_intel_set_ids} => Array&lt;String&gt;
    #   * {Types::ListThreatIntelSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_threat_intel_sets({
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.threat_intel_set_ids #=> Array
    #   resp.threat_intel_set_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListThreatIntelSets AWS API Documentation
    #
    # @overload list_threat_intel_sets(params = {})
    # @param [Hash] params ({})
    def list_threat_intel_sets(params = {}, options = {})
      req = build_request(:list_threat_intel_sets, params)
      req.send_request(options)
    end

    # Turns on GuardDuty monitoring of the specified member accounts. Use
    # this operation to restart monitoring of accounts that you stopped
    # monitoring with the `StopMonitoringMembers` operation.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty master account
    #   associated with the member accounts to monitor.
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of account IDs of the GuardDuty member accounts to start
    #   monitoring.
    #
    # @return [Types::StartMonitoringMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMonitoringMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_monitoring_members({
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/StartMonitoringMembers AWS API Documentation
    #
    # @overload start_monitoring_members(params = {})
    # @param [Hash] params ({})
    def start_monitoring_members(params = {}, options = {})
      req = build_request(:start_monitoring_members, params)
      req.send_request(options)
    end

    # Stops GuardDuty monitoring for the specified member accounts. Use the
    # `StartMonitoringMembers` operation to restart monitoring for those
    # accounts.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector associated with the GuardDuty master
    #   account that is monitoring member accounts.
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of account IDs for the member accounts to stop monitoring.
    #
    # @return [Types::StopMonitoringMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopMonitoringMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_monitoring_members({
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/StopMonitoringMembers AWS API Documentation
    #
    # @overload stop_monitoring_members(params = {})
    # @param [Hash] params ({})
    def stop_monitoring_members(params = {}, options = {})
      req = build_request(:stop_monitoring_members, params)
      req.send_request(options)
    end

    # Adds tags to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the GuardDuty resource to apply a
    #   tag to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to be added to a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "GuardDutyArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Unarchives GuardDuty findings specified by the `findingIds`.
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector associated with the findings to unarchive.
    #
    # @option params [required, Array<String>] :finding_ids
    #   The IDs of the findings to unarchive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unarchive_findings({
    #     detector_id: "DetectorId", # required
    #     finding_ids: ["FindingId"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UnarchiveFindings AWS API Documentation
    #
    # @overload unarchive_findings(params = {})
    # @param [Hash] params ({})
    def unarchive_findings(params = {}, options = {})
      req = build_request(:unarchive_findings, params)
      req.send_request(options)
    end

    # Removes tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "GuardDutyArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the Amazon GuardDuty detector specified by the detectorId.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector to update.
    #
    # @option params [Boolean] :enable
    #   Specifies whether the detector is enabled or not enabled.
    #
    # @option params [String] :finding_publishing_frequency
    #   An enum value that specifies how frequently findings are exported,
    #   such as to CloudWatch Events.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_detector({
    #     detector_id: "DetectorId", # required
    #     enable: false,
    #     finding_publishing_frequency: "FIFTEEN_MINUTES", # accepts FIFTEEN_MINUTES, ONE_HOUR, SIX_HOURS
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateDetector AWS API Documentation
    #
    # @overload update_detector(params = {})
    # @param [Hash] params ({})
    def update_detector(params = {}, options = {})
      req = build_request(:update_detector, params)
      req.send_request(options)
    end

    # Updates the filter specified by the filter name.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that specifies the GuardDuty service
    #   where you want to update a filter.
    #
    # @option params [required, String] :filter_name
    #   The name of the filter.
    #
    # @option params [String] :description
    #   The description of the filter.
    #
    # @option params [String] :action
    #   Specifies the action that is to be applied to the findings that match
    #   the filter.
    #
    # @option params [Integer] :rank
    #   Specifies the position of the filter in the list of current filters.
    #   Also specifies the order in which this filter is applied to the
    #   findings.
    #
    # @option params [Types::FindingCriteria] :finding_criteria
    #   Represents the criteria to be used in the filter for querying
    #   findings.
    #
    # @return [Types::UpdateFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFilterResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_filter({
    #     detector_id: "DetectorId", # required
    #     filter_name: "String", # required
    #     description: "FilterDescription",
    #     action: "NOOP", # accepts NOOP, ARCHIVE
    #     rank: 1,
    #     finding_criteria: {
    #       criterion: {
    #         "String" => {
    #           eq: ["String"],
    #           neq: ["String"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           equals: ["String"],
    #           not_equals: ["String"],
    #           greater_than: 1,
    #           greater_than_or_equal: 1,
    #           less_than: 1,
    #           less_than_or_equal: 1,
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateFilter AWS API Documentation
    #
    # @overload update_filter(params = {})
    # @param [Hash] params ({})
    def update_filter(params = {}, options = {})
      req = build_request(:update_filter, params)
      req.send_request(options)
    end

    # Marks the specified GuardDuty findings as useful or not useful.
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector associated with the findings to update feedback
    #   for.
    #
    # @option params [required, Array<String>] :finding_ids
    #   The IDs of the findings that you want to mark as useful or not useful.
    #
    # @option params [required, String] :feedback
    #   The feedback for the finding.
    #
    # @option params [String] :comments
    #   Additional feedback about the GuardDuty findings.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_findings_feedback({
    #     detector_id: "DetectorId", # required
    #     finding_ids: ["FindingId"], # required
    #     feedback: "USEFUL", # required, accepts USEFUL, NOT_USEFUL
    #     comments: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateFindingsFeedback AWS API Documentation
    #
    # @overload update_findings_feedback(params = {})
    # @param [Hash] params ({})
    def update_findings_feedback(params = {}, options = {})
      req = build_request(:update_findings_feedback, params)
      req.send_request(options)
    end

    # Updates the IPSet specified by the IPSet ID.
    #
    # @option params [required, String] :detector_id
    #   The detectorID that specifies the GuardDuty service whose IPSet you
    #   want to update.
    #
    # @option params [required, String] :ip_set_id
    #   The unique ID that specifies the IPSet that you want to update.
    #
    # @option params [String] :name
    #   The unique ID that specifies the IPSet that you want to update.
    #
    # @option params [String] :location
    #   The updated URI of the file that contains the IPSet. For example:
    #   https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
    #
    # @option params [Boolean] :activate
    #   The updated Boolean value that specifies whether the IPSet is active
    #   or not.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ip_set({
    #     detector_id: "DetectorId", # required
    #     ip_set_id: "String", # required
    #     name: "Name",
    #     location: "Location",
    #     activate: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateIPSet AWS API Documentation
    #
    # @overload update_ip_set(params = {})
    # @param [Hash] params ({})
    def update_ip_set(params = {}, options = {})
      req = build_request(:update_ip_set, params)
      req.send_request(options)
    end

    # Updates the delegated administrator account with the values provided.
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector to update the delegated administrator for.
    #
    # @option params [required, Boolean] :auto_enable
    #   Indicates whether to automatically enable member accounts in the
    #   organization.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_organization_configuration({
    #     detector_id: "DetectorId", # required
    #     auto_enable: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateOrganizationConfiguration AWS API Documentation
    #
    # @overload update_organization_configuration(params = {})
    # @param [Hash] params ({})
    def update_organization_configuration(params = {}, options = {})
      req = build_request(:update_organization_configuration, params)
      req.send_request(options)
    end

    # Updates information about the publishing destination specified by the
    # `destinationId`.
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector associated with the publishing destinations to
    #   update.
    #
    # @option params [required, String] :destination_id
    #   The ID of the publishing destination to update.
    #
    # @option params [Types::DestinationProperties] :destination_properties
    #   A `DestinationProperties` object that includes the `DestinationArn`
    #   and `KmsKeyArn` of the publishing destination.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_publishing_destination({
    #     detector_id: "DetectorId", # required
    #     destination_id: "String", # required
    #     destination_properties: {
    #       destination_arn: "String",
    #       kms_key_arn: "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdatePublishingDestination AWS API Documentation
    #
    # @overload update_publishing_destination(params = {})
    # @param [Hash] params ({})
    def update_publishing_destination(params = {}, options = {})
      req = build_request(:update_publishing_destination, params)
      req.send_request(options)
    end

    # Updates the ThreatIntelSet specified by the ThreatIntelSet ID.
    #
    # @option params [required, String] :detector_id
    #   The detectorID that specifies the GuardDuty service whose
    #   ThreatIntelSet you want to update.
    #
    # @option params [required, String] :threat_intel_set_id
    #   The unique ID that specifies the ThreatIntelSet that you want to
    #   update.
    #
    # @option params [String] :name
    #   The unique ID that specifies the ThreatIntelSet that you want to
    #   update.
    #
    # @option params [String] :location
    #   The updated URI of the file that contains the ThreateIntelSet. For
    #   example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
    #
    # @option params [Boolean] :activate
    #   The updated Boolean value that specifies whether the ThreateIntelSet
    #   is active or not.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_threat_intel_set({
    #     detector_id: "DetectorId", # required
    #     threat_intel_set_id: "String", # required
    #     name: "Name",
    #     location: "Location",
    #     activate: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateThreatIntelSet AWS API Documentation
    #
    # @overload update_threat_intel_set(params = {})
    # @param [Hash] params ({})
    def update_threat_intel_set(params = {}, options = {})
      req = build_request(:update_threat_intel_set, params)
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
      context[:gem_name] = 'aws-sdk-guardduty'
      context[:gem_version] = '1.34.0'
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
