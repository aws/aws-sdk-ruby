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
require 'aws-sdk-core/plugins/client_metrics.rb'
require 'aws-sdk-core/plugins/client_metrics_sender.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:codegurureviewer)

module Aws::CodeGuruReviewer
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :codegurureviewer

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
    add_plugin(Aws::Plugins::ClientMetrics)
    add_plugin(Aws::Plugins::ClientMetricsSender)
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

    # Associates an AWS CodeCommit repository with Amazon CodeGuru Reviewer.
    # When you associate an AWS CodeCommit repository with Amazon CodeGuru
    # Reviewer, Amazon CodeGuru Reviewer will provide recommendations for
    # each pull request. You can view recommendations in the AWS CodeCommit
    # repository.
    #
    # You can associate a GitHub repository using the Amazon CodeGuru
    # Reviewer console.
    #
    # @option params [required, Types::Repository] :repository
    #   The repository to associate.
    #
    # @option params [String] :client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   If you want to add a new repository association, this parameter
    #   specifies a unique identifier for the new repository association that
    #   helps ensure idempotency.
    #
    #   If you use the AWS CLI or one of the AWS SDK to call this operation,
    #   then you can leave this parameter empty. The CLI or SDK generates a
    #   random UUID for you and includes that in the request. If you don't
    #   use the SDK and instead generate a raw HTTP request to the Secrets
    #   Manager service endpoint, then you must generate a ClientRequestToken
    #   yourself for new versions and include that value in the request.
    #
    #   You typically only need to interact with this value if you implement
    #   your own retry logic and want to ensure that a given repository
    #   association is not created twice. We recommend that you generate a
    #   UUID-type value to ensure uniqueness within the specified repository
    #   association.
    #
    #   Amazon CodeGuru Reviewer uses this value to prevent the accidental
    #   creation of duplicate repository associations if there are failures
    #   and retries.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::AssociateRepositoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateRepositoryResponse#repository_association #repository_association} => Types::RepositoryAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_repository({
    #     repository: { # required
    #       code_commit: {
    #         name: "Name", # required
    #       },
    #     },
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_association.association_id #=> String
    #   resp.repository_association.association_arn #=> String
    #   resp.repository_association.name #=> String
    #   resp.repository_association.owner #=> String
    #   resp.repository_association.provider_type #=> String, one of "CodeCommit", "GitHub"
    #   resp.repository_association.state #=> String, one of "Associated", "Associating", "Failed", "Disassociating"
    #   resp.repository_association.state_reason #=> String
    #   resp.repository_association.last_updated_time_stamp #=> Time
    #   resp.repository_association.created_time_stamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/AssociateRepository AWS API Documentation
    #
    # @overload associate_repository(params = {})
    # @param [Hash] params ({})
    def associate_repository(params = {}, options = {})
      req = build_request(:associate_repository, params)
      req.send_request(options)
    end

    # Describes a repository association.
    #
    # @option params [required, String] :association_arn
    #   The Amazon Resource Name (ARN) identifying the association.
    #
    # @return [Types::DescribeRepositoryAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRepositoryAssociationResponse#repository_association #repository_association} => Types::RepositoryAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_repository_association({
    #     association_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_association.association_id #=> String
    #   resp.repository_association.association_arn #=> String
    #   resp.repository_association.name #=> String
    #   resp.repository_association.owner #=> String
    #   resp.repository_association.provider_type #=> String, one of "CodeCommit", "GitHub"
    #   resp.repository_association.state #=> String, one of "Associated", "Associating", "Failed", "Disassociating"
    #   resp.repository_association.state_reason #=> String
    #   resp.repository_association.last_updated_time_stamp #=> Time
    #   resp.repository_association.created_time_stamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DescribeRepositoryAssociation AWS API Documentation
    #
    # @overload describe_repository_association(params = {})
    # @param [Hash] params ({})
    def describe_repository_association(params = {}, options = {})
      req = build_request(:describe_repository_association, params)
      req.send_request(options)
    end

    # Removes the association between Amazon CodeGuru Reviewer and a
    # repository.
    #
    # @option params [required, String] :association_arn
    #   The Amazon Resource Name (ARN) identifying the association.
    #
    # @return [Types::DisassociateRepositoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateRepositoryResponse#repository_association #repository_association} => Types::RepositoryAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_repository({
    #     association_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_association.association_id #=> String
    #   resp.repository_association.association_arn #=> String
    #   resp.repository_association.name #=> String
    #   resp.repository_association.owner #=> String
    #   resp.repository_association.provider_type #=> String, one of "CodeCommit", "GitHub"
    #   resp.repository_association.state #=> String, one of "Associated", "Associating", "Failed", "Disassociating"
    #   resp.repository_association.state_reason #=> String
    #   resp.repository_association.last_updated_time_stamp #=> Time
    #   resp.repository_association.created_time_stamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DisassociateRepository AWS API Documentation
    #
    # @overload disassociate_repository(params = {})
    # @param [Hash] params ({})
    def disassociate_repository(params = {}, options = {})
      req = build_request(:disassociate_repository, params)
      req.send_request(options)
    end

    # Lists repository associations. You can optionally filter on one or
    # more of the following recommendation properties: provider types,
    # states, names, and owners.
    #
    # @option params [Array<String>] :provider_types
    #   List of provider types to use as a filter.
    #
    # @option params [Array<String>] :states
    #   List of states to use as a filter.
    #
    # @option params [Array<String>] :names
    #   List of names to use as a filter.
    #
    # @option params [Array<String>] :owners
    #   List of owners to use as a filter. For AWS CodeCommit, the owner is
    #   the AWS account id. For GitHub, it is the GitHub account name.
    #
    # @option params [Integer] :max_results
    #   The maximum number of repository association results returned by
    #   `ListRepositoryAssociations` in paginated output. When this parameter
    #   is used, `ListRepositoryAssociations` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `ListRepositoryAssociations` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter is not used, then `ListRepositoryAssociations` returns up to
    #   100 results and a `nextToken` value if applicable.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListRepositoryAssociations` request where `maxResults` was used and
    #   the results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::ListRepositoryAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRepositoryAssociationsResponse#repository_association_summaries #repository_association_summaries} => Array&lt;Types::RepositoryAssociationSummary&gt;
    #   * {Types::ListRepositoryAssociationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_repository_associations({
    #     provider_types: ["CodeCommit"], # accepts CodeCommit, GitHub
    #     states: ["Associated"], # accepts Associated, Associating, Failed, Disassociating
    #     names: ["Name"],
    #     owners: ["Owner"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_association_summaries #=> Array
    #   resp.repository_association_summaries[0].association_arn #=> String
    #   resp.repository_association_summaries[0].last_updated_time_stamp #=> Time
    #   resp.repository_association_summaries[0].association_id #=> String
    #   resp.repository_association_summaries[0].name #=> String
    #   resp.repository_association_summaries[0].owner #=> String
    #   resp.repository_association_summaries[0].provider_type #=> String, one of "CodeCommit", "GitHub"
    #   resp.repository_association_summaries[0].state #=> String, one of "Associated", "Associating", "Failed", "Disassociating"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListRepositoryAssociations AWS API Documentation
    #
    # @overload list_repository_associations(params = {})
    # @param [Hash] params ({})
    def list_repository_associations(params = {}, options = {})
      req = build_request(:list_repository_associations, params)
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
      context[:gem_name] = 'aws-sdk-codegurureviewer'
      context[:gem_version] = '1.0.0'
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
