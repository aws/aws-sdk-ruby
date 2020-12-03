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

Aws::Plugins::GlobalConfiguration.add_identifier(:managedblockchain)

module Aws::ManagedBlockchain
  # An API client for ManagedBlockchain.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ManagedBlockchain::Client.new(
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

    @identifier = :managedblockchain

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

    # Creates a member within a Managed Blockchain network.
    #
    # @option params [required, String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the operation. An idempotent operation completes no
    #   more than one time. This identifier is required only if you make a
    #   service request directly using an HTTP client. It is generated
    #   automatically if you use an AWS SDK or the AWS CLI.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :invitation_id
    #   The unique identifier of the invitation that is sent to the member to
    #   join the network.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network in which the member is created.
    #
    # @option params [required, Types::MemberConfiguration] :member_configuration
    #   Member configuration parameters.
    #
    # @return [Types::CreateMemberOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMemberOutput#member_id #member_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_member({
    #     client_request_token: "ClientRequestTokenString", # required
    #     invitation_id: "ResourceIdString", # required
    #     network_id: "ResourceIdString", # required
    #     member_configuration: { # required
    #       name: "NetworkMemberNameString", # required
    #       description: "DescriptionString",
    #       framework_configuration: { # required
    #         fabric: {
    #           admin_username: "UsernameString", # required
    #           admin_password: "PasswordString", # required
    #         },
    #       },
    #       log_publishing_configuration: {
    #         fabric: {
    #           ca_logs: {
    #             cloudwatch: {
    #               enabled: false,
    #             },
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.member_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/CreateMember AWS API Documentation
    #
    # @overload create_member(params = {})
    # @param [Hash] params ({})
    def create_member(params = {}, options = {})
      req = build_request(:create_member, params)
      req.send_request(options)
    end

    # Creates a new blockchain network using Amazon Managed Blockchain.
    #
    # @option params [required, String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the operation. An idempotent operation completes no
    #   more than one time. This identifier is required only if you make a
    #   service request directly using an HTTP client. It is generated
    #   automatically if you use an AWS SDK or the AWS CLI.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The name of the network.
    #
    # @option params [String] :description
    #   An optional description for the network.
    #
    # @option params [required, String] :framework
    #   The blockchain framework that the network uses.
    #
    # @option params [required, String] :framework_version
    #   The version of the blockchain framework that the network uses.
    #
    # @option params [Types::NetworkFrameworkConfiguration] :framework_configuration
    #   Configuration properties of the blockchain framework relevant to the
    #   network configuration.
    #
    # @option params [required, Types::VotingPolicy] :voting_policy
    #   The voting rules used by the network to determine if a proposal is
    #   approved.
    #
    # @option params [required, Types::MemberConfiguration] :member_configuration
    #   Configuration properties for the first member within the network.
    #
    # @return [Types::CreateNetworkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNetworkOutput#network_id #network_id} => String
    #   * {Types::CreateNetworkOutput#member_id #member_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network({
    #     client_request_token: "ClientRequestTokenString", # required
    #     name: "NameString", # required
    #     description: "DescriptionString",
    #     framework: "HYPERLEDGER_FABRIC", # required, accepts HYPERLEDGER_FABRIC
    #     framework_version: "FrameworkVersionString", # required
    #     framework_configuration: {
    #       fabric: {
    #         edition: "STARTER", # required, accepts STARTER, STANDARD
    #       },
    #     },
    #     voting_policy: { # required
    #       approval_threshold_policy: {
    #         threshold_percentage: 1,
    #         proposal_duration_in_hours: 1,
    #         threshold_comparator: "GREATER_THAN", # accepts GREATER_THAN, GREATER_THAN_OR_EQUAL_TO
    #       },
    #     },
    #     member_configuration: { # required
    #       name: "NetworkMemberNameString", # required
    #       description: "DescriptionString",
    #       framework_configuration: { # required
    #         fabric: {
    #           admin_username: "UsernameString", # required
    #           admin_password: "PasswordString", # required
    #         },
    #       },
    #       log_publishing_configuration: {
    #         fabric: {
    #           ca_logs: {
    #             cloudwatch: {
    #               enabled: false,
    #             },
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.network_id #=> String
    #   resp.member_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/CreateNetwork AWS API Documentation
    #
    # @overload create_network(params = {})
    # @param [Hash] params ({})
    def create_network(params = {}, options = {})
      req = build_request(:create_network, params)
      req.send_request(options)
    end

    # Creates a peer node in a member.
    #
    # @option params [required, String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the operation. An idempotent operation completes no
    #   more than one time. This identifier is required only if you make a
    #   service request directly using an HTTP client. It is generated
    #   automatically if you use an AWS SDK or the AWS CLI.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network in which this node runs.
    #
    # @option params [required, String] :member_id
    #   The unique identifier of the member that owns this node.
    #
    # @option params [required, Types::NodeConfiguration] :node_configuration
    #   The properties of a node configuration.
    #
    # @return [Types::CreateNodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNodeOutput#node_id #node_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_node({
    #     client_request_token: "ClientRequestTokenString", # required
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString", # required
    #     node_configuration: { # required
    #       instance_type: "InstanceTypeString", # required
    #       availability_zone: "AvailabilityZoneString", # required
    #       log_publishing_configuration: {
    #         fabric: {
    #           chaincode_logs: {
    #             cloudwatch: {
    #               enabled: false,
    #             },
    #           },
    #           peer_logs: {
    #             cloudwatch: {
    #               enabled: false,
    #             },
    #           },
    #         },
    #       },
    #       state_db: "LevelDB", # accepts LevelDB, CouchDB
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.node_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/CreateNode AWS API Documentation
    #
    # @overload create_node(params = {})
    # @param [Hash] params ({})
    def create_node(params = {}, options = {})
      req = build_request(:create_node, params)
      req.send_request(options)
    end

    # Creates a proposal for a change to the network that other members of
    # the network can vote on, for example, a proposal to add a new member
    # to the network. Any member can create a proposal.
    #
    # @option params [required, String] :client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the operation. An idempotent operation completes no
    #   more than one time. This identifier is required only if you make a
    #   service request directly using an HTTP client. It is generated
    #   automatically if you use an AWS SDK or the AWS CLI.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network for which the proposal is made.
    #
    # @option params [required, String] :member_id
    #   The unique identifier of the member that is creating the proposal.
    #   This identifier is especially useful for identifying the member making
    #   the proposal when multiple members exist in a single AWS account.
    #
    # @option params [required, Types::ProposalActions] :actions
    #   The type of actions proposed, such as inviting a member or removing a
    #   member. The types of `Actions` in a proposal are mutually exclusive.
    #   For example, a proposal with `Invitations` actions cannot also contain
    #   `Removals` actions.
    #
    # @option params [String] :description
    #   A description for the proposal that is visible to voting members, for
    #   example, "Proposal to add Example Corp. as member."
    #
    # @return [Types::CreateProposalOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProposalOutput#proposal_id #proposal_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_proposal({
    #     client_request_token: "ClientRequestTokenString", # required
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString", # required
    #     actions: { # required
    #       invitations: [
    #         {
    #           principal: "PrincipalString", # required
    #         },
    #       ],
    #       removals: [
    #         {
    #           member_id: "ResourceIdString", # required
    #         },
    #       ],
    #     },
    #     description: "DescriptionString",
    #   })
    #
    # @example Response structure
    #
    #   resp.proposal_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/CreateProposal AWS API Documentation
    #
    # @overload create_proposal(params = {})
    # @param [Hash] params ({})
    def create_proposal(params = {}, options = {})
      req = build_request(:create_proposal, params)
      req.send_request(options)
    end

    # Deletes a member. Deleting a member removes the member and all
    # associated resources from the network. `DeleteMember` can only be
    # called for a specified `MemberId` if the principal performing the
    # action is associated with the AWS account that owns the member. In all
    # other cases, the `DeleteMember` action is carried out as the result of
    # an approved proposal to remove a member. If `MemberId` is the last
    # member in a network specified by the last AWS account, the network is
    # deleted also.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network from which the member is removed.
    #
    # @option params [required, String] :member_id
    #   The unique identifier of the member to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_member({
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/DeleteMember AWS API Documentation
    #
    # @overload delete_member(params = {})
    # @param [Hash] params ({})
    def delete_member(params = {}, options = {})
      req = build_request(:delete_member, params)
      req.send_request(options)
    end

    # Deletes a peer node from a member that your AWS account owns. All data
    # on the node is lost and cannot be recovered.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network that the node belongs to.
    #
    # @option params [required, String] :member_id
    #   The unique identifier of the member that owns this node.
    #
    # @option params [required, String] :node_id
    #   The unique identifier of the node.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_node({
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString", # required
    #     node_id: "ResourceIdString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/DeleteNode AWS API Documentation
    #
    # @overload delete_node(params = {})
    # @param [Hash] params ({})
    def delete_node(params = {}, options = {})
      req = build_request(:delete_node, params)
      req.send_request(options)
    end

    # Returns detailed information about a member.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network to which the member belongs.
    #
    # @option params [required, String] :member_id
    #   The unique identifier of the member.
    #
    # @return [Types::GetMemberOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMemberOutput#member #member} => Types::Member
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_member({
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.member.network_id #=> String
    #   resp.member.id #=> String
    #   resp.member.name #=> String
    #   resp.member.description #=> String
    #   resp.member.framework_attributes.fabric.admin_username #=> String
    #   resp.member.framework_attributes.fabric.ca_endpoint #=> String
    #   resp.member.log_publishing_configuration.fabric.ca_logs.cloudwatch.enabled #=> Boolean
    #   resp.member.status #=> String, one of "CREATING", "AVAILABLE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED"
    #   resp.member.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/GetMember AWS API Documentation
    #
    # @overload get_member(params = {})
    # @param [Hash] params ({})
    def get_member(params = {}, options = {})
      req = build_request(:get_member, params)
      req.send_request(options)
    end

    # Returns detailed information about a network.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network to get information about.
    #
    # @return [Types::GetNetworkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNetworkOutput#network #network} => Types::Network
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network({
    #     network_id: "ResourceIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.network.id #=> String
    #   resp.network.name #=> String
    #   resp.network.description #=> String
    #   resp.network.framework #=> String, one of "HYPERLEDGER_FABRIC"
    #   resp.network.framework_version #=> String
    #   resp.network.framework_attributes.fabric.ordering_service_endpoint #=> String
    #   resp.network.framework_attributes.fabric.edition #=> String, one of "STARTER", "STANDARD"
    #   resp.network.vpc_endpoint_service_name #=> String
    #   resp.network.voting_policy.approval_threshold_policy.threshold_percentage #=> Integer
    #   resp.network.voting_policy.approval_threshold_policy.proposal_duration_in_hours #=> Integer
    #   resp.network.voting_policy.approval_threshold_policy.threshold_comparator #=> String, one of "GREATER_THAN", "GREATER_THAN_OR_EQUAL_TO"
    #   resp.network.status #=> String, one of "CREATING", "AVAILABLE", "CREATE_FAILED", "DELETING", "DELETED"
    #   resp.network.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/GetNetwork AWS API Documentation
    #
    # @overload get_network(params = {})
    # @param [Hash] params ({})
    def get_network(params = {}, options = {})
      req = build_request(:get_network, params)
      req.send_request(options)
    end

    # Returns detailed information about a peer node.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network to which the node belongs.
    #
    # @option params [required, String] :member_id
    #   The unique identifier of the member that owns the node.
    #
    # @option params [required, String] :node_id
    #   The unique identifier of the node.
    #
    # @return [Types::GetNodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNodeOutput#node #node} => Types::Node
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_node({
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString", # required
    #     node_id: "ResourceIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.node.network_id #=> String
    #   resp.node.member_id #=> String
    #   resp.node.id #=> String
    #   resp.node.instance_type #=> String
    #   resp.node.availability_zone #=> String
    #   resp.node.framework_attributes.fabric.peer_endpoint #=> String
    #   resp.node.framework_attributes.fabric.peer_event_endpoint #=> String
    #   resp.node.log_publishing_configuration.fabric.chaincode_logs.cloudwatch.enabled #=> Boolean
    #   resp.node.log_publishing_configuration.fabric.peer_logs.cloudwatch.enabled #=> Boolean
    #   resp.node.state_db #=> String, one of "LevelDB", "CouchDB"
    #   resp.node.status #=> String, one of "CREATING", "AVAILABLE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "FAILED"
    #   resp.node.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/GetNode AWS API Documentation
    #
    # @overload get_node(params = {})
    # @param [Hash] params ({})
    def get_node(params = {}, options = {})
      req = build_request(:get_node, params)
      req.send_request(options)
    end

    # Returns detailed information about a proposal.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network for which the proposal is made.
    #
    # @option params [required, String] :proposal_id
    #   The unique identifier of the proposal.
    #
    # @return [Types::GetProposalOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProposalOutput#proposal #proposal} => Types::Proposal
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_proposal({
    #     network_id: "ResourceIdString", # required
    #     proposal_id: "ResourceIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.proposal.proposal_id #=> String
    #   resp.proposal.network_id #=> String
    #   resp.proposal.description #=> String
    #   resp.proposal.actions.invitations #=> Array
    #   resp.proposal.actions.invitations[0].principal #=> String
    #   resp.proposal.actions.removals #=> Array
    #   resp.proposal.actions.removals[0].member_id #=> String
    #   resp.proposal.proposed_by_member_id #=> String
    #   resp.proposal.proposed_by_member_name #=> String
    #   resp.proposal.status #=> String, one of "IN_PROGRESS", "APPROVED", "REJECTED", "EXPIRED", "ACTION_FAILED"
    #   resp.proposal.creation_date #=> Time
    #   resp.proposal.expiration_date #=> Time
    #   resp.proposal.yes_vote_count #=> Integer
    #   resp.proposal.no_vote_count #=> Integer
    #   resp.proposal.outstanding_vote_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/GetProposal AWS API Documentation
    #
    # @overload get_proposal(params = {})
    # @param [Hash] params ({})
    def get_proposal(params = {}, options = {})
      req = build_request(:get_proposal, params)
      req.send_request(options)
    end

    # Returns a listing of all invitations for the current AWS account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of invitations to return.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListInvitationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInvitationsOutput#invitations #invitations} => Array&lt;Types::Invitation&gt;
    #   * {Types::ListInvitationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invitations({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.invitations #=> Array
    #   resp.invitations[0].invitation_id #=> String
    #   resp.invitations[0].creation_date #=> Time
    #   resp.invitations[0].expiration_date #=> Time
    #   resp.invitations[0].status #=> String, one of "PENDING", "ACCEPTED", "ACCEPTING", "REJECTED", "EXPIRED"
    #   resp.invitations[0].network_summary.id #=> String
    #   resp.invitations[0].network_summary.name #=> String
    #   resp.invitations[0].network_summary.description #=> String
    #   resp.invitations[0].network_summary.framework #=> String, one of "HYPERLEDGER_FABRIC"
    #   resp.invitations[0].network_summary.framework_version #=> String
    #   resp.invitations[0].network_summary.status #=> String, one of "CREATING", "AVAILABLE", "CREATE_FAILED", "DELETING", "DELETED"
    #   resp.invitations[0].network_summary.creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListInvitations AWS API Documentation
    #
    # @overload list_invitations(params = {})
    # @param [Hash] params ({})
    def list_invitations(params = {}, options = {})
      req = build_request(:list_invitations, params)
      req.send_request(options)
    end

    # Returns a listing of the members in a network and properties of their
    # configurations.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network for which to list members.
    #
    # @option params [String] :name
    #   The optional name of the member to list.
    #
    # @option params [String] :status
    #   An optional status specifier. If provided, only members currently in
    #   this status are listed.
    #
    # @option params [Boolean] :is_owned
    #   An optional Boolean value. If provided, the request is limited either
    #   to members that the current AWS account owns (`true`) or that other
    #   AWS accounts own (`false`). If omitted, all members are listed.
    #
    # @option params [Integer] :max_results
    #   The maximum number of members to return in the request.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListMembersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMembersOutput#members #members} => Array&lt;Types::MemberSummary&gt;
    #   * {Types::ListMembersOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_members({
    #     network_id: "ResourceIdString", # required
    #     name: "String",
    #     status: "CREATING", # accepts CREATING, AVAILABLE, CREATE_FAILED, UPDATING, DELETING, DELETED
    #     is_owned: false,
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].id #=> String
    #   resp.members[0].name #=> String
    #   resp.members[0].description #=> String
    #   resp.members[0].status #=> String, one of "CREATING", "AVAILABLE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED"
    #   resp.members[0].creation_date #=> Time
    #   resp.members[0].is_owned #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListMembers AWS API Documentation
    #
    # @overload list_members(params = {})
    # @param [Hash] params ({})
    def list_members(params = {}, options = {})
      req = build_request(:list_members, params)
      req.send_request(options)
    end

    # Returns information about the networks in which the current AWS
    # account has members.
    #
    # @option params [String] :name
    #   The name of the network.
    #
    # @option params [String] :framework
    #   An optional framework specifier. If provided, only networks of this
    #   framework type are listed.
    #
    # @option params [String] :status
    #   An optional status specifier. If provided, only networks currently in
    #   this status are listed.
    #
    # @option params [Integer] :max_results
    #   The maximum number of networks to list.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListNetworksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNetworksOutput#networks #networks} => Array&lt;Types::NetworkSummary&gt;
    #   * {Types::ListNetworksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_networks({
    #     name: "String",
    #     framework: "HYPERLEDGER_FABRIC", # accepts HYPERLEDGER_FABRIC
    #     status: "CREATING", # accepts CREATING, AVAILABLE, CREATE_FAILED, DELETING, DELETED
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.networks #=> Array
    #   resp.networks[0].id #=> String
    #   resp.networks[0].name #=> String
    #   resp.networks[0].description #=> String
    #   resp.networks[0].framework #=> String, one of "HYPERLEDGER_FABRIC"
    #   resp.networks[0].framework_version #=> String
    #   resp.networks[0].status #=> String, one of "CREATING", "AVAILABLE", "CREATE_FAILED", "DELETING", "DELETED"
    #   resp.networks[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListNetworks AWS API Documentation
    #
    # @overload list_networks(params = {})
    # @param [Hash] params ({})
    def list_networks(params = {}, options = {})
      req = build_request(:list_networks, params)
      req.send_request(options)
    end

    # Returns information about the nodes within a network.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network for which to list nodes.
    #
    # @option params [required, String] :member_id
    #   The unique identifier of the member who owns the nodes to list.
    #
    # @option params [String] :status
    #   An optional status specifier. If provided, only nodes currently in
    #   this status are listed.
    #
    # @option params [Integer] :max_results
    #   The maximum number of nodes to list.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListNodesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNodesOutput#nodes #nodes} => Array&lt;Types::NodeSummary&gt;
    #   * {Types::ListNodesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_nodes({
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString", # required
    #     status: "CREATING", # accepts CREATING, AVAILABLE, CREATE_FAILED, UPDATING, DELETING, DELETED, FAILED
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.nodes #=> Array
    #   resp.nodes[0].id #=> String
    #   resp.nodes[0].status #=> String, one of "CREATING", "AVAILABLE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "FAILED"
    #   resp.nodes[0].creation_date #=> Time
    #   resp.nodes[0].availability_zone #=> String
    #   resp.nodes[0].instance_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListNodes AWS API Documentation
    #
    # @overload list_nodes(params = {})
    # @param [Hash] params ({})
    def list_nodes(params = {}, options = {})
      req = build_request(:list_nodes, params)
      req.send_request(options)
    end

    # Returns the listing of votes for a specified proposal, including the
    # value of each vote and the unique identifier of the member that cast
    # the vote.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network.
    #
    # @option params [required, String] :proposal_id
    #   The unique identifier of the proposal.
    #
    # @option params [Integer] :max_results
    #   The maximum number of votes to return.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListProposalVotesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProposalVotesOutput#proposal_votes #proposal_votes} => Array&lt;Types::VoteSummary&gt;
    #   * {Types::ListProposalVotesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_proposal_votes({
    #     network_id: "ResourceIdString", # required
    #     proposal_id: "ResourceIdString", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.proposal_votes #=> Array
    #   resp.proposal_votes[0].vote #=> String, one of "YES", "NO"
    #   resp.proposal_votes[0].member_name #=> String
    #   resp.proposal_votes[0].member_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListProposalVotes AWS API Documentation
    #
    # @overload list_proposal_votes(params = {})
    # @param [Hash] params ({})
    def list_proposal_votes(params = {}, options = {})
      req = build_request(:list_proposal_votes, params)
      req.send_request(options)
    end

    # Returns a listing of proposals for the network.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network.
    #
    # @option params [Integer] :max_results
    #   The maximum number of proposals to return.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #
    # @return [Types::ListProposalsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProposalsOutput#proposals #proposals} => Array&lt;Types::ProposalSummary&gt;
    #   * {Types::ListProposalsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_proposals({
    #     network_id: "ResourceIdString", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.proposals #=> Array
    #   resp.proposals[0].proposal_id #=> String
    #   resp.proposals[0].description #=> String
    #   resp.proposals[0].proposed_by_member_id #=> String
    #   resp.proposals[0].proposed_by_member_name #=> String
    #   resp.proposals[0].status #=> String, one of "IN_PROGRESS", "APPROVED", "REJECTED", "EXPIRED", "ACTION_FAILED"
    #   resp.proposals[0].creation_date #=> Time
    #   resp.proposals[0].expiration_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListProposals AWS API Documentation
    #
    # @overload list_proposals(params = {})
    # @param [Hash] params ({})
    def list_proposals(params = {}, options = {})
      req = build_request(:list_proposals, params)
      req.send_request(options)
    end

    # Rejects an invitation to join a network. This action can be called by
    # a principal in an AWS account that has received an invitation to
    # create a member and join a network.
    #
    # @option params [required, String] :invitation_id
    #   The unique identifier of the invitation to reject.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_invitation({
    #     invitation_id: "ResourceIdString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/RejectInvitation AWS API Documentation
    #
    # @overload reject_invitation(params = {})
    # @param [Hash] params ({})
    def reject_invitation(params = {}, options = {})
      req = build_request(:reject_invitation, params)
      req.send_request(options)
    end

    # Updates a member configuration with new parameters.
    #
    # @option params [required, String] :network_id
    #   The unique ID of the Managed Blockchain network to which the member
    #   belongs.
    #
    # @option params [required, String] :member_id
    #   The unique ID of the member.
    #
    # @option params [Types::MemberLogPublishingConfiguration] :log_publishing_configuration
    #   Configuration properties for publishing to Amazon CloudWatch Logs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_member({
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString", # required
    #     log_publishing_configuration: {
    #       fabric: {
    #         ca_logs: {
    #           cloudwatch: {
    #             enabled: false,
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/UpdateMember AWS API Documentation
    #
    # @overload update_member(params = {})
    # @param [Hash] params ({})
    def update_member(params = {}, options = {})
      req = build_request(:update_member, params)
      req.send_request(options)
    end

    # Updates a node configuration with new parameters.
    #
    # @option params [required, String] :network_id
    #   The unique ID of the Managed Blockchain network to which the node
    #   belongs.
    #
    # @option params [required, String] :member_id
    #   The unique ID of the member that owns the node.
    #
    # @option params [required, String] :node_id
    #   The unique ID of the node.
    #
    # @option params [Types::NodeLogPublishingConfiguration] :log_publishing_configuration
    #   Configuration properties for publishing to Amazon CloudWatch Logs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_node({
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString", # required
    #     node_id: "ResourceIdString", # required
    #     log_publishing_configuration: {
    #       fabric: {
    #         chaincode_logs: {
    #           cloudwatch: {
    #             enabled: false,
    #           },
    #         },
    #         peer_logs: {
    #           cloudwatch: {
    #             enabled: false,
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/UpdateNode AWS API Documentation
    #
    # @overload update_node(params = {})
    # @param [Hash] params ({})
    def update_node(params = {}, options = {})
      req = build_request(:update_node, params)
      req.send_request(options)
    end

    # Casts a vote for a specified `ProposalId` on behalf of a member. The
    # member to vote as, specified by `VoterMemberId`, must be in the same
    # AWS account as the principal that calls the action.
    #
    # @option params [required, String] :network_id
    #   The unique identifier of the network.
    #
    # @option params [required, String] :proposal_id
    #   The unique identifier of the proposal.
    #
    # @option params [required, String] :voter_member_id
    #   The unique identifier of the member casting the vote.
    #
    # @option params [required, String] :vote
    #   The value of the vote.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.vote_on_proposal({
    #     network_id: "ResourceIdString", # required
    #     proposal_id: "ResourceIdString", # required
    #     voter_member_id: "ResourceIdString", # required
    #     vote: "YES", # required, accepts YES, NO
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/VoteOnProposal AWS API Documentation
    #
    # @overload vote_on_proposal(params = {})
    # @param [Hash] params ({})
    def vote_on_proposal(params = {}, options = {})
      req = build_request(:vote_on_proposal, params)
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
      context[:gem_name] = 'aws-sdk-managedblockchain'
      context[:gem_version] = '1.17.0'
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
