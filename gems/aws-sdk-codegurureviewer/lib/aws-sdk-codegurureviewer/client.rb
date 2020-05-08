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

Aws::Plugins::GlobalConfiguration.add_identifier(:codegurureviewer)

module Aws::CodeGuruReviewer
  # An API client for CodeGuruReviewer.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CodeGuruReviewer::Client.new(
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

    # Associates an AWS CodeCommit repository with Amazon CodeGuru Reviewer.
    # When you associate an AWS CodeCommit repository with Amazon CodeGuru
    # Reviewer, Amazon CodeGuru Reviewer will provide recommendations for
    # each pull request raised within the repository. You can view
    # recommendations in the AWS CodeCommit repository.
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
    #   To add a new repository association, this parameter specifies a unique
    #   identifier for the new repository association that helps ensure
    #   idempotency.
    #
    #   If you use the AWS CLI or one of the AWS SDKs to call this operation,
    #   you can leave this parameter empty. The CLI or SDK generates a random
    #   UUID for you and includes that in the request. If you don't use the
    #   SDK and instead generate a raw HTTP request to the Secrets Manager
    #   service endpoint, you must generate a ClientRequestToken yourself for
    #   new versions and include that value in the request.
    #
    #   You typically interact with this value if you implement your own retry
    #   logic and want to ensure that a given repository association is not
    #   created twice. We recommend that you generate a UUID-type value to
    #   ensure uniqueness within the specified repository association.
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

    # Returns the metadaata associated with the code review along with its
    # status.
    #
    # @option params [required, String] :code_review_arn
    #   The Amazon Resource Name (ARN) of the code review to describe.
    #
    # @return [Types::DescribeCodeReviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCodeReviewResponse#code_review #code_review} => Types::CodeReview
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_code_review({
    #     code_review_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_review.name #=> String
    #   resp.code_review.code_review_arn #=> String
    #   resp.code_review.repository_name #=> String
    #   resp.code_review.owner #=> String
    #   resp.code_review.provider_type #=> String, one of "CodeCommit", "GitHub"
    #   resp.code_review.state #=> String, one of "Completed", "Pending", "Failed", "Deleting"
    #   resp.code_review.state_reason #=> String
    #   resp.code_review.created_time_stamp #=> Time
    #   resp.code_review.last_updated_time_stamp #=> Time
    #   resp.code_review.type #=> String, one of "PullRequest"
    #   resp.code_review.pull_request_id #=> String
    #   resp.code_review.source_code_type.commit_diff.source_commit #=> String
    #   resp.code_review.source_code_type.commit_diff.destination_commit #=> String
    #   resp.code_review.metrics.metered_lines_of_code_count #=> Integer
    #   resp.code_review.metrics.findings_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DescribeCodeReview AWS API Documentation
    #
    # @overload describe_code_review(params = {})
    # @param [Hash] params ({})
    def describe_code_review(params = {}, options = {})
      req = build_request(:describe_code_review, params)
      req.send_request(options)
    end

    # Describes the customer feedback for a CodeGuru Reviewer
    # recommendation.
    #
    # @option params [required, String] :code_review_arn
    #   The Amazon Resource Name (ARN) that identifies the code review.
    #
    # @option params [required, String] :recommendation_id
    #   The recommendation ID that can be used to track the provided
    #   recommendations and then to collect the feedback.
    #
    # @option params [String] :user_id
    #   Optional parameter to describe the feedback for a given user. If this
    #   is not supplied, it defaults to the user making the request.
    #
    # @return [Types::DescribeRecommendationFeedbackResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRecommendationFeedbackResponse#recommendation_feedback #recommendation_feedback} => Types::RecommendationFeedback
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recommendation_feedback({
    #     code_review_arn: "Arn", # required
    #     recommendation_id: "RecommendationId", # required
    #     user_id: "UserId",
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation_feedback.code_review_arn #=> String
    #   resp.recommendation_feedback.recommendation_id #=> String
    #   resp.recommendation_feedback.reactions #=> Array
    #   resp.recommendation_feedback.reactions[0] #=> String, one of "ThumbsUp", "ThumbsDown"
    #   resp.recommendation_feedback.user_id #=> String
    #   resp.recommendation_feedback.created_time_stamp #=> Time
    #   resp.recommendation_feedback.last_updated_time_stamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DescribeRecommendationFeedback AWS API Documentation
    #
    # @overload describe_recommendation_feedback(params = {})
    # @param [Hash] params ({})
    def describe_recommendation_feedback(params = {}, options = {})
      req = build_request(:describe_recommendation_feedback, params)
      req.send_request(options)
    end

    # Describes a repository association.
    #
    # @option params [required, String] :association_arn
    #   The Amazon Resource Name (ARN) identifying the association. You can
    #   retrieve this ARN by calling `ListRepositories`.
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

    # Lists all the code reviews that the customer has created in the past
    # 90 days.
    #
    # @option params [Array<String>] :provider_types
    #   List of provider types for filtering that needs to be applied before
    #   displaying the result. For example, "providerTypes=\[GitHub\]" will
    #   list code reviews from GitHub.
    #
    # @option params [Array<String>] :states
    #   List of states for filtering that needs to be applied before
    #   displaying the result. For example, "states=\[Pending\]" will list
    #   code reviews in the Pending state.
    #
    # @option params [Array<String>] :repository_names
    #   List of repository names for filtering that needs to be applied before
    #   displaying the result.
    #
    # @option params [required, String] :type
    #   The type of code reviews to list in the response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. The default
    #   is 100.
    #
    # @option params [String] :next_token
    #   If nextToken is returned, there are more results available. The value
    #   of nextToken is a unique pagination token for each page. Make the call
    #   again using the returned token to retrieve the next page. Keep all
    #   other arguments unchanged.
    #
    # @return [Types::ListCodeReviewsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCodeReviewsResponse#code_review_summaries #code_review_summaries} => Array&lt;Types::CodeReviewSummary&gt;
    #   * {Types::ListCodeReviewsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_reviews({
    #     provider_types: ["CodeCommit"], # accepts CodeCommit, GitHub
    #     states: ["Completed"], # accepts Completed, Pending, Failed, Deleting
    #     repository_names: ["Name"],
    #     type: "PullRequest", # required, accepts PullRequest
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.code_review_summaries #=> Array
    #   resp.code_review_summaries[0].name #=> String
    #   resp.code_review_summaries[0].code_review_arn #=> String
    #   resp.code_review_summaries[0].repository_name #=> String
    #   resp.code_review_summaries[0].owner #=> String
    #   resp.code_review_summaries[0].provider_type #=> String, one of "CodeCommit", "GitHub"
    #   resp.code_review_summaries[0].state #=> String, one of "Completed", "Pending", "Failed", "Deleting"
    #   resp.code_review_summaries[0].created_time_stamp #=> Time
    #   resp.code_review_summaries[0].last_updated_time_stamp #=> Time
    #   resp.code_review_summaries[0].type #=> String, one of "PullRequest"
    #   resp.code_review_summaries[0].pull_request_id #=> String
    #   resp.code_review_summaries[0].metrics_summary.metered_lines_of_code_count #=> Integer
    #   resp.code_review_summaries[0].metrics_summary.findings_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListCodeReviews AWS API Documentation
    #
    # @overload list_code_reviews(params = {})
    # @param [Hash] params ({})
    def list_code_reviews(params = {}, options = {})
      req = build_request(:list_code_reviews, params)
      req.send_request(options)
    end

    # Lists the customer feedback for a CodeGuru Reviewer recommendation for
    # all users. This API will be used from the console to extract the
    # previously given feedback by the user to pre-populate the feedback
    # emojis for all recommendations.
    #
    # @option params [String] :next_token
    #   If nextToken is returned, there are more results available. The value
    #   of nextToken is a unique pagination token for each page. Make the call
    #   again using the returned token to retrieve the next page. Keep all
    #   other arguments unchanged.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. The default
    #   is 100.
    #
    # @option params [required, String] :code_review_arn
    #   The Amazon Resource Name (ARN) that identifies the code review.
    #
    # @option params [Array<String>] :user_ids
    #   Filter on userIds that need to be applied before displaying the
    #   result. This can be used to query all the recommendation feedback for
    #   a code review from a given user.
    #
    # @option params [Array<String>] :recommendation_ids
    #   Filter on recommendationIds that need to be applied before displaying
    #   the result. This can be used to query all the recommendation feedback
    #   for a given recommendation.
    #
    # @return [Types::ListRecommendationFeedbackResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendationFeedbackResponse#recommendation_feedback_summaries #recommendation_feedback_summaries} => Array&lt;Types::RecommendationFeedbackSummary&gt;
    #   * {Types::ListRecommendationFeedbackResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendation_feedback({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     code_review_arn: "Arn", # required
    #     user_ids: ["UserId"],
    #     recommendation_ids: ["RecommendationId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation_feedback_summaries #=> Array
    #   resp.recommendation_feedback_summaries[0].recommendation_id #=> String
    #   resp.recommendation_feedback_summaries[0].reactions #=> Array
    #   resp.recommendation_feedback_summaries[0].reactions[0] #=> String, one of "ThumbsUp", "ThumbsDown"
    #   resp.recommendation_feedback_summaries[0].user_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListRecommendationFeedback AWS API Documentation
    #
    # @overload list_recommendation_feedback(params = {})
    # @param [Hash] params ({})
    def list_recommendation_feedback(params = {}, options = {})
      req = build_request(:list_recommendation_feedback, params)
      req.send_request(options)
    end

    # Returns the list of all recommendations for a completed code review.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. The default
    #   is 100.
    #
    # @option params [required, String] :code_review_arn
    #   The Amazon Resource Name (ARN) of the code review to describe.
    #
    # @return [Types::ListRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendationsResponse#recommendation_summaries #recommendation_summaries} => Array&lt;Types::RecommendationSummary&gt;
    #   * {Types::ListRecommendationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     code_review_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation_summaries #=> Array
    #   resp.recommendation_summaries[0].file_path #=> String
    #   resp.recommendation_summaries[0].recommendation_id #=> String
    #   resp.recommendation_summaries[0].start_line #=> Integer
    #   resp.recommendation_summaries[0].end_line #=> Integer
    #   resp.recommendation_summaries[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListRecommendations AWS API Documentation
    #
    # @overload list_recommendations(params = {})
    # @param [Hash] params ({})
    def list_recommendations(params = {}, options = {})
      req = build_request(:list_recommendations, params)
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
    #   List of repository names to use as a filter.
    #
    # @option params [Array<String>] :owners
    #   List of owners to use as a filter. For GitHub, this is name of the
    #   GitHub account that was used to associate the repository. For AWS
    #   CodeCommit, it is the name of the CodeCommit account that was used to
    #   associate the repository.
    #
    # @option params [Integer] :max_results
    #   The maximum number of repository association results returned by
    #   `ListRepositoryAssociations` in paginated output. When this parameter
    #   is used, `ListRepositoryAssociations` only returns `maxResults`
    #   results in a single page with a `nextToken` response element. The
    #   remaining results of the initial request can be seen by sending
    #   another `ListRepositoryAssociations` request with the returned
    #   `nextToken` value. This value can be between 1 and 25. If this
    #   parameter is not used, `ListRepositoryAssociations` returns up to 25
    #   results and a `nextToken` value if applicable.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListRepositoryAssociations` request where `maxResults` was used and
    #   the results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> Treat this token as an opaque identifier that is only used to retrieve
    #   the next items in a list and not for other programmatic purposes.
    #
    #    </note>
    #
    # @return [Types::ListRepositoryAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRepositoryAssociationsResponse#repository_association_summaries #repository_association_summaries} => Array&lt;Types::RepositoryAssociationSummary&gt;
    #   * {Types::ListRepositoryAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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

    # Stores customer feedback for a CodeGuru-Reviewer recommendation. When
    # this API is called again with different reactions the previous
    # feedback is overwritten.
    #
    # @option params [required, String] :code_review_arn
    #   The Amazon Resource Name (ARN) that identifies the code review.
    #
    # @option params [required, String] :recommendation_id
    #   The recommendation ID that can be used to track the provided
    #   recommendations and then to collect the feedback.
    #
    # @option params [required, Array<String>] :reactions
    #   List for storing reactions. Reactions are utf-8 text code for emojis.
    #   If you send an empty list it clears all your feedback.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_recommendation_feedback({
    #     code_review_arn: "Arn", # required
    #     recommendation_id: "RecommendationId", # required
    #     reactions: ["ThumbsUp"], # required, accepts ThumbsUp, ThumbsDown
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/PutRecommendationFeedback AWS API Documentation
    #
    # @overload put_recommendation_feedback(params = {})
    # @param [Hash] params ({})
    def put_recommendation_feedback(params = {}, options = {})
      req = build_request(:put_recommendation_feedback, params)
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
      context[:gem_version] = '1.4.0'
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
