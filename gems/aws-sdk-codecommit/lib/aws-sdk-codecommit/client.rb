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

Aws::Plugins::GlobalConfiguration.add_identifier(:codecommit)

module Aws::CodeCommit
  # An API client for CodeCommit.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CodeCommit::Client.new(
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

    @identifier = :codecommit

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

    # Creates an association between an approval rule template and a
    # specified repository. Then, the next time a pull request is created in
    # the repository where the destination reference (if specified) matches
    # the destination reference (branch) for the pull request, an approval
    # rule that matches the template conditions is automatically created for
    # that pull request. If no destination references are specified in the
    # template, an approval rule that matches the template contents is
    # created for all pull requests in that repository.
    #
    # @option params [required, String] :approval_rule_template_name
    #   The name for the approval rule template.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that you want to associate with the
    #   template.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_approval_rule_template_with_repository({
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/AssociateApprovalRuleTemplateWithRepository AWS API Documentation
    #
    # @overload associate_approval_rule_template_with_repository(params = {})
    # @param [Hash] params ({})
    def associate_approval_rule_template_with_repository(params = {}, options = {})
      req = build_request(:associate_approval_rule_template_with_repository, params)
      req.send_request(options)
    end

    # Creates an association between an approval rule template and one or
    # more specified repositories.
    #
    # @option params [required, String] :approval_rule_template_name
    #   The name of the template you want to associate with one or more
    #   repositories.
    #
    # @option params [required, Array<String>] :repository_names
    #   The names of the repositories you want to associate with the template.
    #
    #   <note markdown="1"> The length constraint limit is for each string in the array. The array
    #   itself can be empty.
    #
    #    </note>
    #
    # @return [Types::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput#associated_repository_names #associated_repository_names} => Array&lt;String&gt;
    #   * {Types::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput#errors #errors} => Array&lt;Types::BatchAssociateApprovalRuleTemplateWithRepositoriesError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_approval_rule_template_with_repositories({
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     repository_names: ["RepositoryName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.associated_repository_names #=> Array
    #   resp.associated_repository_names[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].repository_name #=> String
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchAssociateApprovalRuleTemplateWithRepositories AWS API Documentation
    #
    # @overload batch_associate_approval_rule_template_with_repositories(params = {})
    # @param [Hash] params ({})
    def batch_associate_approval_rule_template_with_repositories(params = {}, options = {})
      req = build_request(:batch_associate_approval_rule_template_with_repositories, params)
      req.send_request(options)
    end

    # Returns information about one or more merge conflicts in the attempted
    # merge of two commit specifiers using the squash or three-way merge
    # strategy.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that contains the merge conflicts you want
    #   to review.
    #
    # @option params [required, String] :destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [required, String] :source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [required, String] :merge_option
    #   The merge option or strategy you want to use to merge the code.
    #
    # @option params [Integer] :max_merge_hunks
    #   The maximum number of merge hunks to include in the output.
    #
    # @option params [Integer] :max_conflict_files
    #   The maximum number of files to include in the output.
    #
    # @option params [Array<String>] :file_paths
    #   The path of the target files used to describe the conflicts. If not
    #   specified, the default is all conflict files.
    #
    # @option params [String] :conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the same
    #   file has differences in both branches. If LINE\_LEVEL is specified, a
    #   conflict is considered not mergeable if the same file in both branches
    #   has differences on the same line.
    #
    # @option params [String] :conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether to
    #   attempt automatically merging two versions of a file. The default is
    #   NONE, which requires any conflicts to be resolved manually before the
    #   merge operation is successful.
    #
    # @option params [String] :next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #
    # @return [Types::BatchDescribeMergeConflictsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDescribeMergeConflictsOutput#conflicts #conflicts} => Array&lt;Types::Conflict&gt;
    #   * {Types::BatchDescribeMergeConflictsOutput#next_token #next_token} => String
    #   * {Types::BatchDescribeMergeConflictsOutput#errors #errors} => Array&lt;Types::BatchDescribeMergeConflictsError&gt;
    #   * {Types::BatchDescribeMergeConflictsOutput#destination_commit_id #destination_commit_id} => String
    #   * {Types::BatchDescribeMergeConflictsOutput#source_commit_id #source_commit_id} => String
    #   * {Types::BatchDescribeMergeConflictsOutput#base_commit_id #base_commit_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_describe_merge_conflicts({
    #     repository_name: "RepositoryName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     source_commit_specifier: "CommitName", # required
    #     merge_option: "FAST_FORWARD_MERGE", # required, accepts FAST_FORWARD_MERGE, SQUASH_MERGE, THREE_WAY_MERGE
    #     max_merge_hunks: 1,
    #     max_conflict_files: 1,
    #     file_paths: ["Path"],
    #     conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #     conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.conflicts #=> Array
    #   resp.conflicts[0].conflict_metadata.file_path #=> String
    #   resp.conflicts[0].conflict_metadata.file_sizes.source #=> Integer
    #   resp.conflicts[0].conflict_metadata.file_sizes.destination #=> Integer
    #   resp.conflicts[0].conflict_metadata.file_sizes.base #=> Integer
    #   resp.conflicts[0].conflict_metadata.file_modes.source #=> String, one of "EXECUTABLE", "NORMAL", "SYMLINK"
    #   resp.conflicts[0].conflict_metadata.file_modes.destination #=> String, one of "EXECUTABLE", "NORMAL", "SYMLINK"
    #   resp.conflicts[0].conflict_metadata.file_modes.base #=> String, one of "EXECUTABLE", "NORMAL", "SYMLINK"
    #   resp.conflicts[0].conflict_metadata.object_types.source #=> String, one of "FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"
    #   resp.conflicts[0].conflict_metadata.object_types.destination #=> String, one of "FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"
    #   resp.conflicts[0].conflict_metadata.object_types.base #=> String, one of "FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"
    #   resp.conflicts[0].conflict_metadata.number_of_conflicts #=> Integer
    #   resp.conflicts[0].conflict_metadata.is_binary_file.source #=> Boolean
    #   resp.conflicts[0].conflict_metadata.is_binary_file.destination #=> Boolean
    #   resp.conflicts[0].conflict_metadata.is_binary_file.base #=> Boolean
    #   resp.conflicts[0].conflict_metadata.content_conflict #=> Boolean
    #   resp.conflicts[0].conflict_metadata.file_mode_conflict #=> Boolean
    #   resp.conflicts[0].conflict_metadata.object_type_conflict #=> Boolean
    #   resp.conflicts[0].conflict_metadata.merge_operations.source #=> String, one of "A", "M", "D"
    #   resp.conflicts[0].conflict_metadata.merge_operations.destination #=> String, one of "A", "M", "D"
    #   resp.conflicts[0].merge_hunks #=> Array
    #   resp.conflicts[0].merge_hunks[0].is_conflict #=> Boolean
    #   resp.conflicts[0].merge_hunks[0].source.start_line #=> Integer
    #   resp.conflicts[0].merge_hunks[0].source.end_line #=> Integer
    #   resp.conflicts[0].merge_hunks[0].source.hunk_content #=> String
    #   resp.conflicts[0].merge_hunks[0].destination.start_line #=> Integer
    #   resp.conflicts[0].merge_hunks[0].destination.end_line #=> Integer
    #   resp.conflicts[0].merge_hunks[0].destination.hunk_content #=> String
    #   resp.conflicts[0].merge_hunks[0].base.start_line #=> Integer
    #   resp.conflicts[0].merge_hunks[0].base.end_line #=> Integer
    #   resp.conflicts[0].merge_hunks[0].base.hunk_content #=> String
    #   resp.next_token #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].file_path #=> String
    #   resp.errors[0].exception_name #=> String
    #   resp.errors[0].message #=> String
    #   resp.destination_commit_id #=> String
    #   resp.source_commit_id #=> String
    #   resp.base_commit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchDescribeMergeConflicts AWS API Documentation
    #
    # @overload batch_describe_merge_conflicts(params = {})
    # @param [Hash] params ({})
    def batch_describe_merge_conflicts(params = {}, options = {})
      req = build_request(:batch_describe_merge_conflicts, params)
      req.send_request(options)
    end

    # Removes the association between an approval rule template and one or
    # more specified repositories.
    #
    # @option params [required, String] :approval_rule_template_name
    #   The name of the template that you want to disassociate from one or
    #   more repositories.
    #
    # @option params [required, Array<String>] :repository_names
    #   The repository names that you want to disassociate from the approval
    #   rule template.
    #
    #   <note markdown="1"> The length constraint limit is for each string in the array. The array
    #   itself can be empty.
    #
    #    </note>
    #
    # @return [Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput#disassociated_repository_names #disassociated_repository_names} => Array&lt;String&gt;
    #   * {Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput#errors #errors} => Array&lt;Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_approval_rule_template_from_repositories({
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     repository_names: ["RepositoryName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.disassociated_repository_names #=> Array
    #   resp.disassociated_repository_names[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].repository_name #=> String
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchDisassociateApprovalRuleTemplateFromRepositories AWS API Documentation
    #
    # @overload batch_disassociate_approval_rule_template_from_repositories(params = {})
    # @param [Hash] params ({})
    def batch_disassociate_approval_rule_template_from_repositories(params = {}, options = {})
      req = build_request(:batch_disassociate_approval_rule_template_from_repositories, params)
      req.send_request(options)
    end

    # Returns information about the contents of one or more commits in a
    # repository.
    #
    # @option params [required, Array<String>] :commit_ids
    #   The full commit IDs of the commits to get information about.
    #
    #   <note markdown="1"> You must supply the full SHA IDs of each commit. You cannot use
    #   shortened SHA IDs.
    #
    #    </note>
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that contains the commits.
    #
    # @return [Types::BatchGetCommitsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetCommitsOutput#commits #commits} => Array&lt;Types::Commit&gt;
    #   * {Types::BatchGetCommitsOutput#errors #errors} => Array&lt;Types::BatchGetCommitsError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_commits({
    #     commit_ids: ["ObjectId"], # required
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.commits #=> Array
    #   resp.commits[0].commit_id #=> String
    #   resp.commits[0].tree_id #=> String
    #   resp.commits[0].parents #=> Array
    #   resp.commits[0].parents[0] #=> String
    #   resp.commits[0].message #=> String
    #   resp.commits[0].author.name #=> String
    #   resp.commits[0].author.email #=> String
    #   resp.commits[0].author.date #=> String
    #   resp.commits[0].committer.name #=> String
    #   resp.commits[0].committer.email #=> String
    #   resp.commits[0].committer.date #=> String
    #   resp.commits[0].additional_data #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].commit_id #=> String
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchGetCommits AWS API Documentation
    #
    # @overload batch_get_commits(params = {})
    # @param [Hash] params ({})
    def batch_get_commits(params = {}, options = {})
      req = build_request(:batch_get_commits, params)
      req.send_request(options)
    end

    # Returns information about one or more repositories.
    #
    # <note markdown="1"> The description field for a repository accepts all HTML characters and
    # all valid Unicode characters. Applications that do not HTML-encode the
    # description and display it in a webpage can expose users to
    # potentially malicious code. Make sure that you HTML-encode the
    # description field in any application that uses this API to display the
    # repository description on a webpage.
    #
    #  </note>
    #
    # @option params [required, Array<String>] :repository_names
    #   The names of the repositories to get information about.
    #
    #   <note markdown="1"> The length constraint limit is for each string in the array. The array
    #   itself can be empty.
    #
    #    </note>
    #
    # @return [Types::BatchGetRepositoriesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetRepositoriesOutput#repositories #repositories} => Array&lt;Types::RepositoryMetadata&gt;
    #   * {Types::BatchGetRepositoriesOutput#repositories_not_found #repositories_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_repositories({
    #     repository_names: ["RepositoryName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.repositories #=> Array
    #   resp.repositories[0].account_id #=> String
    #   resp.repositories[0].repository_id #=> String
    #   resp.repositories[0].repository_name #=> String
    #   resp.repositories[0].repository_description #=> String
    #   resp.repositories[0].default_branch #=> String
    #   resp.repositories[0].last_modified_date #=> Time
    #   resp.repositories[0].creation_date #=> Time
    #   resp.repositories[0].clone_url_http #=> String
    #   resp.repositories[0].clone_url_ssh #=> String
    #   resp.repositories[0].arn #=> String
    #   resp.repositories_not_found #=> Array
    #   resp.repositories_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchGetRepositories AWS API Documentation
    #
    # @overload batch_get_repositories(params = {})
    # @param [Hash] params ({})
    def batch_get_repositories(params = {}, options = {})
      req = build_request(:batch_get_repositories, params)
      req.send_request(options)
    end

    # Creates a template for approval rules that can then be associated with
    # one or more repositories in your AWS account. When you associate a
    # template with a repository, AWS CodeCommit creates an approval rule
    # that matches the conditions of the template for all pull requests that
    # meet the conditions of the template. For more information, see
    # AssociateApprovalRuleTemplateWithRepository.
    #
    # @option params [required, String] :approval_rule_template_name
    #   The name of the approval rule template. Provide descriptive names,
    #   because this name is applied to the approval rules created
    #   automatically in associated repositories.
    #
    # @option params [required, String] :approval_rule_template_content
    #   The content of the approval rule that is created on pull requests in
    #   associated repositories. If you specify one or more destination
    #   references (branches), approval rules are created in an associated
    #   repository only if their destination references (branches) match those
    #   specified in the template.
    #
    #   <note markdown="1"> When you create the content of the approval rule template, you can
    #   specify approvers in an approval pool in one of two ways:
    #
    #    * **CodeCommitApprovers**\: This option only requires an AWS account
    #     and a resource. It can be used for both IAM users and federated
    #     access users whose name matches the provided resource name. This is
    #     a very powerful option that offers a great deal of flexibility. For
    #     example, if you specify the AWS account *123456789012* and
    #     *Mary\_Major*, all of the following are counted as approvals coming
    #     from that user:
    #
    #     * An IAM user in the account
    #       (arn:aws:iam::*123456789012*\:user/*Mary\_Major*)
    #
    #     * A federated user identified in IAM as Mary\_Major
    #       (arn:aws:sts::*123456789012*\:federated-user/*Mary\_Major*)
    #
    #     This option does not recognize an active session of someone assuming
    #     the role of CodeCommitReview with a role session name of
    #     *Mary\_Major*
    #     (arn:aws:sts::*123456789012*\:assumed-role/CodeCommitReview/*Mary\_Major*)
    #     unless you include a wildcard (*Mary\_Major).
    #
    #   * **Fully qualified ARN**\: This option allows you to specify the
    #     fully qualified Amazon Resource Name (ARN) of the IAM user or role.
    #
    #    For more information about IAM ARNs, wildcards, and formats, see [IAM
    #   Identifiers][1] in the *IAM User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #
    # @option params [String] :approval_rule_template_description
    #   The description of the approval rule template. Consider providing a
    #   description that explains what this template does and when it might be
    #   appropriate to associate it with repositories.
    #
    # @return [Types::CreateApprovalRuleTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApprovalRuleTemplateOutput#approval_rule_template #approval_rule_template} => Types::ApprovalRuleTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_approval_rule_template({
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     approval_rule_template_content: "ApprovalRuleTemplateContent", # required
    #     approval_rule_template_description: "ApprovalRuleTemplateDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.approval_rule_template.approval_rule_template_id #=> String
    #   resp.approval_rule_template.approval_rule_template_name #=> String
    #   resp.approval_rule_template.approval_rule_template_description #=> String
    #   resp.approval_rule_template.approval_rule_template_content #=> String
    #   resp.approval_rule_template.rule_content_sha_256 #=> String
    #   resp.approval_rule_template.last_modified_date #=> Time
    #   resp.approval_rule_template.creation_date #=> Time
    #   resp.approval_rule_template.last_modified_user #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreateApprovalRuleTemplate AWS API Documentation
    #
    # @overload create_approval_rule_template(params = {})
    # @param [Hash] params ({})
    def create_approval_rule_template(params = {}, options = {})
      req = build_request(:create_approval_rule_template, params)
      req.send_request(options)
    end

    # Creates a branch in a repository and points the branch to a commit.
    #
    # <note markdown="1"> Calling the create branch operation does not set a repository's
    # default branch. To do this, call the update default branch operation.
    #
    #  </note>
    #
    # @option params [required, String] :repository_name
    #   The name of the repository in which you want to create the new branch.
    #
    # @option params [required, String] :branch_name
    #   The name of the new branch to create.
    #
    # @option params [required, String] :commit_id
    #   The ID of the commit to point the new branch to.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_branch({
    #     repository_name: "RepositoryName", # required
    #     branch_name: "BranchName", # required
    #     commit_id: "CommitId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreateBranch AWS API Documentation
    #
    # @overload create_branch(params = {})
    # @param [Hash] params ({})
    def create_branch(params = {}, options = {})
      req = build_request(:create_branch, params)
      req.send_request(options)
    end

    # Creates a commit for a repository on the tip of a specified branch.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where you create the commit.
    #
    # @option params [required, String] :branch_name
    #   The name of the branch where you create the commit.
    #
    # @option params [String] :parent_commit_id
    #   The ID of the commit that is the parent of the commit you create. Not
    #   required if this is an empty repository.
    #
    # @option params [String] :author_name
    #   The name of the author who created the commit. This information is
    #   used as both the author and committer for the commit.
    #
    # @option params [String] :email
    #   The email address of the person who created the commit.
    #
    # @option params [String] :commit_message
    #   The commit message you want to include in the commit. Commit messages
    #   are limited to 256 KB. If no message is specified, a default message
    #   is used.
    #
    # @option params [Boolean] :keep_empty_folders
    #   If the commit contains deletions, whether to keep a folder or folder
    #   structure if the changes leave the folders empty. If true, a ..gitkeep
    #   file is created for empty folders. The default is false.
    #
    # @option params [Array<Types::PutFileEntry>] :put_files
    #   The files to add or update in this commit.
    #
    # @option params [Array<Types::DeleteFileEntry>] :delete_files
    #   The files to delete in this commit. These files still exist in earlier
    #   commits.
    #
    # @option params [Array<Types::SetFileModeEntry>] :set_file_modes
    #   The file modes to update for files in this commit.
    #
    # @return [Types::CreateCommitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCommitOutput#commit_id #commit_id} => String
    #   * {Types::CreateCommitOutput#tree_id #tree_id} => String
    #   * {Types::CreateCommitOutput#files_added #files_added} => Array&lt;Types::FileMetadata&gt;
    #   * {Types::CreateCommitOutput#files_updated #files_updated} => Array&lt;Types::FileMetadata&gt;
    #   * {Types::CreateCommitOutput#files_deleted #files_deleted} => Array&lt;Types::FileMetadata&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_commit({
    #     repository_name: "RepositoryName", # required
    #     branch_name: "BranchName", # required
    #     parent_commit_id: "CommitId",
    #     author_name: "Name",
    #     email: "Email",
    #     commit_message: "Message",
    #     keep_empty_folders: false,
    #     put_files: [
    #       {
    #         file_path: "Path", # required
    #         file_mode: "EXECUTABLE", # accepts EXECUTABLE, NORMAL, SYMLINK
    #         file_content: "data",
    #         source_file: {
    #           file_path: "Path", # required
    #           is_move: false,
    #         },
    #       },
    #     ],
    #     delete_files: [
    #       {
    #         file_path: "Path", # required
    #       },
    #     ],
    #     set_file_modes: [
    #       {
    #         file_path: "Path", # required
    #         file_mode: "EXECUTABLE", # required, accepts EXECUTABLE, NORMAL, SYMLINK
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.commit_id #=> String
    #   resp.tree_id #=> String
    #   resp.files_added #=> Array
    #   resp.files_added[0].absolute_path #=> String
    #   resp.files_added[0].blob_id #=> String
    #   resp.files_added[0].file_mode #=> String, one of "EXECUTABLE", "NORMAL", "SYMLINK"
    #   resp.files_updated #=> Array
    #   resp.files_updated[0].absolute_path #=> String
    #   resp.files_updated[0].blob_id #=> String
    #   resp.files_updated[0].file_mode #=> String, one of "EXECUTABLE", "NORMAL", "SYMLINK"
    #   resp.files_deleted #=> Array
    #   resp.files_deleted[0].absolute_path #=> String
    #   resp.files_deleted[0].blob_id #=> String
    #   resp.files_deleted[0].file_mode #=> String, one of "EXECUTABLE", "NORMAL", "SYMLINK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreateCommit AWS API Documentation
    #
    # @overload create_commit(params = {})
    # @param [Hash] params ({})
    def create_commit(params = {}, options = {})
      req = build_request(:create_commit, params)
      req.send_request(options)
    end

    # Creates a pull request in the specified repository.
    #
    # @option params [required, String] :title
    #   The title of the pull request. This title is used to identify the pull
    #   request to other users in the repository.
    #
    # @option params [String] :description
    #   A description of the pull request.
    #
    # @option params [required, Array<Types::Target>] :targets
    #   The targets for the pull request, including the source of the code to
    #   be reviewed (the source branch) and the destination where the creator
    #   of the pull request intends the code to be merged after the pull
    #   request is closed (the destination branch).
    #
    # @option params [String] :client_request_token
    #   A unique, client-generated idempotency token that, when provided in a
    #   request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request returns information about the initial
    #   request that used that token.
    #
    #   <note markdown="1"> The AWS SDKs prepopulate client request tokens. If you are using an
    #   AWS SDK, an idempotency token is created for you.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreatePullRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePullRequestOutput#pull_request #pull_request} => Types::PullRequest
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pull_request({
    #     title: "Title", # required
    #     description: "Description",
    #     targets: [ # required
    #       {
    #         repository_name: "RepositoryName", # required
    #         source_reference: "ReferenceName", # required
    #         destination_reference: "ReferenceName",
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.pull_request.pull_request_id #=> String
    #   resp.pull_request.title #=> String
    #   resp.pull_request.description #=> String
    #   resp.pull_request.last_activity_date #=> Time
    #   resp.pull_request.creation_date #=> Time
    #   resp.pull_request.pull_request_status #=> String, one of "OPEN", "CLOSED"
    #   resp.pull_request.author_arn #=> String
    #   resp.pull_request.pull_request_targets #=> Array
    #   resp.pull_request.pull_request_targets[0].repository_name #=> String
    #   resp.pull_request.pull_request_targets[0].source_reference #=> String
    #   resp.pull_request.pull_request_targets[0].destination_reference #=> String
    #   resp.pull_request.pull_request_targets[0].destination_commit #=> String
    #   resp.pull_request.pull_request_targets[0].source_commit #=> String
    #   resp.pull_request.pull_request_targets[0].merge_base #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.is_merged #=> Boolean
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merged_by #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merge_commit_id #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merge_option #=> String, one of "FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"
    #   resp.pull_request.client_request_token #=> String
    #   resp.pull_request.revision_id #=> String
    #   resp.pull_request.approval_rules #=> Array
    #   resp.pull_request.approval_rules[0].approval_rule_id #=> String
    #   resp.pull_request.approval_rules[0].approval_rule_name #=> String
    #   resp.pull_request.approval_rules[0].approval_rule_content #=> String
    #   resp.pull_request.approval_rules[0].rule_content_sha_256 #=> String
    #   resp.pull_request.approval_rules[0].last_modified_date #=> Time
    #   resp.pull_request.approval_rules[0].creation_date #=> Time
    #   resp.pull_request.approval_rules[0].last_modified_user #=> String
    #   resp.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreatePullRequest AWS API Documentation
    #
    # @overload create_pull_request(params = {})
    # @param [Hash] params ({})
    def create_pull_request(params = {}, options = {})
      req = build_request(:create_pull_request, params)
      req.send_request(options)
    end

    # Creates an approval rule for a pull request.
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID of the pull request for which you want to
    #   create the approval rule.
    #
    # @option params [required, String] :approval_rule_name
    #   The name for the approval rule.
    #
    # @option params [required, String] :approval_rule_content
    #   The content of the approval rule, including the number of approvals
    #   needed and the structure of an approval pool defined for approvals, if
    #   any. For more information about approval pools, see the AWS CodeCommit
    #   User Guide.
    #
    #   <note markdown="1"> When you create the content of the approval rule, you can specify
    #   approvers in an approval pool in one of two ways:
    #
    #    * **CodeCommitApprovers**\: This option only requires an AWS account
    #     and a resource. It can be used for both IAM users and federated
    #     access users whose name matches the provided resource name. This is
    #     a very powerful option that offers a great deal of flexibility. For
    #     example, if you specify the AWS account *123456789012* and
    #     *Mary\_Major*, all of the following would be counted as approvals
    #     coming from that user:
    #
    #     * An IAM user in the account
    #       (arn:aws:iam::*123456789012*\:user/*Mary\_Major*)
    #
    #     * A federated user identified in IAM as Mary\_Major
    #       (arn:aws:sts::*123456789012*\:federated-user/*Mary\_Major*)
    #
    #     This option does not recognize an active session of someone assuming
    #     the role of CodeCommitReview with a role session name of
    #     *Mary\_Major*
    #     (arn:aws:sts::*123456789012*\:assumed-role/CodeCommitReview/*Mary\_Major*)
    #     unless you include a wildcard (*Mary\_Major).
    #
    #   * **Fully qualified ARN**\: This option allows you to specify the
    #     fully qualified Amazon Resource Name (ARN) of the IAM user or role.
    #
    #    For more information about IAM ARNs, wildcards, and formats, see [IAM
    #   Identifiers][1] in the *IAM User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #
    # @return [Types::CreatePullRequestApprovalRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePullRequestApprovalRuleOutput#approval_rule #approval_rule} => Types::ApprovalRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pull_request_approval_rule({
    #     pull_request_id: "PullRequestId", # required
    #     approval_rule_name: "ApprovalRuleName", # required
    #     approval_rule_content: "ApprovalRuleContent", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.approval_rule.approval_rule_id #=> String
    #   resp.approval_rule.approval_rule_name #=> String
    #   resp.approval_rule.approval_rule_content #=> String
    #   resp.approval_rule.rule_content_sha_256 #=> String
    #   resp.approval_rule.last_modified_date #=> Time
    #   resp.approval_rule.creation_date #=> Time
    #   resp.approval_rule.last_modified_user #=> String
    #   resp.approval_rule.origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.approval_rule.origin_approval_rule_template.approval_rule_template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreatePullRequestApprovalRule AWS API Documentation
    #
    # @overload create_pull_request_approval_rule(params = {})
    # @param [Hash] params ({})
    def create_pull_request_approval_rule(params = {}, options = {})
      req = build_request(:create_pull_request_approval_rule, params)
      req.send_request(options)
    end

    # Creates a new, empty repository.
    #
    # @option params [required, String] :repository_name
    #   The name of the new repository to be created.
    #
    #   <note markdown="1"> The repository name must be unique across the calling AWS account.
    #   Repository names are limited to 100 alphanumeric, dash, and underscore
    #   characters, and cannot include certain characters. For more
    #   information about the limits on repository names, see [Limits][1] in
    #   the *AWS CodeCommit User Guide*. The suffix .git is prohibited.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html
    #
    # @option params [String] :repository_description
    #   A comment or description about the new repository.
    #
    #   <note markdown="1"> The description field for a repository accepts all HTML characters and
    #   all valid Unicode characters. Applications that do not HTML-encode the
    #   description and display it in a webpage can expose users to
    #   potentially malicious code. Make sure that you HTML-encode the
    #   description field in any application that uses this API to display the
    #   repository description on a webpage.
    #
    #    </note>
    #
    # @option params [Hash<String,String>] :tags
    #   One or more tag key-value pairs to use when tagging this repository.
    #
    # @return [Types::CreateRepositoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRepositoryOutput#repository_metadata #repository_metadata} => Types::RepositoryMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_repository({
    #     repository_name: "RepositoryName", # required
    #     repository_description: "RepositoryDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_metadata.account_id #=> String
    #   resp.repository_metadata.repository_id #=> String
    #   resp.repository_metadata.repository_name #=> String
    #   resp.repository_metadata.repository_description #=> String
    #   resp.repository_metadata.default_branch #=> String
    #   resp.repository_metadata.last_modified_date #=> Time
    #   resp.repository_metadata.creation_date #=> Time
    #   resp.repository_metadata.clone_url_http #=> String
    #   resp.repository_metadata.clone_url_ssh #=> String
    #   resp.repository_metadata.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreateRepository AWS API Documentation
    #
    # @overload create_repository(params = {})
    # @param [Hash] params ({})
    def create_repository(params = {}, options = {})
      req = build_request(:create_repository, params)
      req.send_request(options)
    end

    # Creates an unreferenced commit that represents the result of merging
    # two branches using a specified merge strategy. This can help you
    # determine the outcome of a potential merge. This API cannot be used
    # with the fast-forward merge strategy because that strategy does not
    # create a merge commit.
    #
    # <note markdown="1"> This unreferenced merge commit can only be accessed using the
    # GetCommit API or through git commands such as git fetch. To retrieve
    # this commit, you must specify its commit ID or otherwise reference it.
    #
    #  </note>
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where you want to create the unreferenced
    #   merge commit.
    #
    # @option params [required, String] :source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [required, String] :destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [required, String] :merge_option
    #   The merge option or strategy you want to use to merge the code.
    #
    # @option params [String] :conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the same
    #   file has differences in both branches. If LINE\_LEVEL is specified, a
    #   conflict is considered not mergeable if the same file in both branches
    #   has differences on the same line.
    #
    # @option params [String] :conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether to
    #   attempt automatically merging two versions of a file. The default is
    #   NONE, which requires any conflicts to be resolved manually before the
    #   merge operation is successful.
    #
    # @option params [String] :author_name
    #   The name of the author who created the unreferenced commit. This
    #   information is used as both the author and committer for the commit.
    #
    # @option params [String] :email
    #   The email address for the person who created the unreferenced commit.
    #
    # @option params [String] :commit_message
    #   The commit message for the unreferenced commit.
    #
    # @option params [Boolean] :keep_empty_folders
    #   If the commit contains deletions, whether to keep a folder or folder
    #   structure if the changes leave the folders empty. If this is specified
    #   as true, a .gitkeep file is created for empty folders. The default is
    #   false.
    #
    # @option params [Types::ConflictResolution] :conflict_resolution
    #   If AUTOMERGE is the conflict resolution strategy, a list of inputs to
    #   use when resolving conflicts during a merge.
    #
    # @return [Types::CreateUnreferencedMergeCommitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUnreferencedMergeCommitOutput#commit_id #commit_id} => String
    #   * {Types::CreateUnreferencedMergeCommitOutput#tree_id #tree_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_unreferenced_merge_commit({
    #     repository_name: "RepositoryName", # required
    #     source_commit_specifier: "CommitName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     merge_option: "FAST_FORWARD_MERGE", # required, accepts FAST_FORWARD_MERGE, SQUASH_MERGE, THREE_WAY_MERGE
    #     conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #     conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #     author_name: "Name",
    #     email: "Email",
    #     commit_message: "Message",
    #     keep_empty_folders: false,
    #     conflict_resolution: {
    #       replace_contents: [
    #         {
    #           file_path: "Path", # required
    #           replacement_type: "KEEP_BASE", # required, accepts KEEP_BASE, KEEP_SOURCE, KEEP_DESTINATION, USE_NEW_CONTENT
    #           content: "data",
    #           file_mode: "EXECUTABLE", # accepts EXECUTABLE, NORMAL, SYMLINK
    #         },
    #       ],
    #       delete_files: [
    #         {
    #           file_path: "Path", # required
    #         },
    #       ],
    #       set_file_modes: [
    #         {
    #           file_path: "Path", # required
    #           file_mode: "EXECUTABLE", # required, accepts EXECUTABLE, NORMAL, SYMLINK
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.commit_id #=> String
    #   resp.tree_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreateUnreferencedMergeCommit AWS API Documentation
    #
    # @overload create_unreferenced_merge_commit(params = {})
    # @param [Hash] params ({})
    def create_unreferenced_merge_commit(params = {}, options = {})
      req = build_request(:create_unreferenced_merge_commit, params)
      req.send_request(options)
    end

    # Deletes a specified approval rule template. Deleting a template does
    # not remove approval rules on pull requests already created with the
    # template.
    #
    # @option params [required, String] :approval_rule_template_name
    #   The name of the approval rule template to delete.
    #
    # @return [Types::DeleteApprovalRuleTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteApprovalRuleTemplateOutput#approval_rule_template_id #approval_rule_template_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_approval_rule_template({
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.approval_rule_template_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteApprovalRuleTemplate AWS API Documentation
    #
    # @overload delete_approval_rule_template(params = {})
    # @param [Hash] params ({})
    def delete_approval_rule_template(params = {}, options = {})
      req = build_request(:delete_approval_rule_template, params)
      req.send_request(options)
    end

    # Deletes a branch from a repository, unless that branch is the default
    # branch for the repository.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that contains the branch to be deleted.
    #
    # @option params [required, String] :branch_name
    #   The name of the branch to delete.
    #
    # @return [Types::DeleteBranchOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBranchOutput#deleted_branch #deleted_branch} => Types::BranchInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_branch({
    #     repository_name: "RepositoryName", # required
    #     branch_name: "BranchName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deleted_branch.branch_name #=> String
    #   resp.deleted_branch.commit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteBranch AWS API Documentation
    #
    # @overload delete_branch(params = {})
    # @param [Hash] params ({})
    def delete_branch(params = {}, options = {})
      req = build_request(:delete_branch, params)
      req.send_request(options)
    end

    # Deletes the content of a comment made on a change, file, or commit in
    # a repository.
    #
    # @option params [required, String] :comment_id
    #   The unique, system-generated ID of the comment. To get this ID, use
    #   GetCommentsForComparedCommit or GetCommentsForPullRequest.
    #
    # @return [Types::DeleteCommentContentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCommentContentOutput#comment #comment} => Types::Comment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_comment_content({
    #     comment_id: "CommentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.comment.comment_id #=> String
    #   resp.comment.content #=> String
    #   resp.comment.in_reply_to #=> String
    #   resp.comment.creation_date #=> Time
    #   resp.comment.last_modified_date #=> Time
    #   resp.comment.author_arn #=> String
    #   resp.comment.deleted #=> Boolean
    #   resp.comment.client_request_token #=> String
    #   resp.comment.caller_reactions #=> Array
    #   resp.comment.caller_reactions[0] #=> String
    #   resp.comment.reaction_counts #=> Hash
    #   resp.comment.reaction_counts["ReactionValue"] #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteCommentContent AWS API Documentation
    #
    # @overload delete_comment_content(params = {})
    # @param [Hash] params ({})
    def delete_comment_content(params = {}, options = {})
      req = build_request(:delete_comment_content, params)
      req.send_request(options)
    end

    # Deletes a specified file from a specified branch. A commit is created
    # on the branch that contains the revision. The file still exists in the
    # commits earlier to the commit that contains the deletion.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that contains the file to delete.
    #
    # @option params [required, String] :branch_name
    #   The name of the branch where the commit that deletes the file is made.
    #
    # @option params [required, String] :file_path
    #   The fully qualified path to the file that to be deleted, including the
    #   full name and extension of that file. For example, /examples/file.md
    #   is a fully qualified path to a file named file.md in a folder named
    #   examples.
    #
    # @option params [required, String] :parent_commit_id
    #   The ID of the commit that is the tip of the branch where you want to
    #   create the commit that deletes the file. This must be the HEAD commit
    #   for the branch. The commit that deletes the file is created from this
    #   commit ID.
    #
    # @option params [Boolean] :keep_empty_folders
    #   If a file is the only object in the folder or directory, specifies
    #   whether to delete the folder or directory that contains the file. By
    #   default, empty folders are deleted. This includes empty folders that
    #   are part of the directory structure. For example, if the path to a
    #   file is dir1/dir2/dir3/dir4, and dir2 and dir3 are empty, deleting the
    #   last file in dir4 also deletes the empty folders dir4, dir3, and dir2.
    #
    # @option params [String] :commit_message
    #   The commit message you want to include as part of deleting the file.
    #   Commit messages are limited to 256 KB. If no message is specified, a
    #   default message is used.
    #
    # @option params [String] :name
    #   The name of the author of the commit that deletes the file. If no name
    #   is specified, the user's ARN is used as the author name and committer
    #   name.
    #
    # @option params [String] :email
    #   The email address for the commit that deletes the file. If no email
    #   address is specified, the email address is left blank.
    #
    # @return [Types::DeleteFileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFileOutput#commit_id #commit_id} => String
    #   * {Types::DeleteFileOutput#blob_id #blob_id} => String
    #   * {Types::DeleteFileOutput#tree_id #tree_id} => String
    #   * {Types::DeleteFileOutput#file_path #file_path} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_file({
    #     repository_name: "RepositoryName", # required
    #     branch_name: "BranchName", # required
    #     file_path: "Path", # required
    #     parent_commit_id: "CommitId", # required
    #     keep_empty_folders: false,
    #     commit_message: "Message",
    #     name: "Name",
    #     email: "Email",
    #   })
    #
    # @example Response structure
    #
    #   resp.commit_id #=> String
    #   resp.blob_id #=> String
    #   resp.tree_id #=> String
    #   resp.file_path #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteFile AWS API Documentation
    #
    # @overload delete_file(params = {})
    # @param [Hash] params ({})
    def delete_file(params = {}, options = {})
      req = build_request(:delete_file, params)
      req.send_request(options)
    end

    # Deletes an approval rule from a specified pull request. Approval rules
    # can be deleted from a pull request only if the pull request is open,
    # and if the approval rule was created specifically for a pull request
    # and not generated from an approval rule template associated with the
    # repository where the pull request was created. You cannot delete an
    # approval rule from a merged or closed pull request.
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID of the pull request that contains the approval
    #   rule you want to delete.
    #
    # @option params [required, String] :approval_rule_name
    #   The name of the approval rule you want to delete.
    #
    # @return [Types::DeletePullRequestApprovalRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePullRequestApprovalRuleOutput#approval_rule_id #approval_rule_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pull_request_approval_rule({
    #     pull_request_id: "PullRequestId", # required
    #     approval_rule_name: "ApprovalRuleName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.approval_rule_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeletePullRequestApprovalRule AWS API Documentation
    #
    # @overload delete_pull_request_approval_rule(params = {})
    # @param [Hash] params ({})
    def delete_pull_request_approval_rule(params = {}, options = {})
      req = build_request(:delete_pull_request_approval_rule, params)
      req.send_request(options)
    end

    # Deletes a repository. If a specified repository was already deleted, a
    # null repository ID is returned.
    #
    # Deleting a repository also deletes all associated objects and
    # metadata. After a repository is deleted, all future push calls to the
    # deleted repository fail.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to delete.
    #
    # @return [Types::DeleteRepositoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRepositoryOutput#repository_id #repository_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_repository({
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteRepository AWS API Documentation
    #
    # @overload delete_repository(params = {})
    # @param [Hash] params ({})
    def delete_repository(params = {}, options = {})
      req = build_request(:delete_repository, params)
      req.send_request(options)
    end

    # Returns information about one or more merge conflicts in the attempted
    # merge of two commit specifiers using the squash or three-way merge
    # strategy. If the merge option for the attempted merge is specified as
    # FAST\_FORWARD\_MERGE, an exception is thrown.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where you want to get information about a
    #   merge conflict.
    #
    # @option params [required, String] :destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [required, String] :source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [required, String] :merge_option
    #   The merge option or strategy you want to use to merge the code.
    #
    # @option params [Integer] :max_merge_hunks
    #   The maximum number of merge hunks to include in the output.
    #
    # @option params [required, String] :file_path
    #   The path of the target files used to describe the conflicts.
    #
    # @option params [String] :conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the same
    #   file has differences in both branches. If LINE\_LEVEL is specified, a
    #   conflict is considered not mergeable if the same file in both branches
    #   has differences on the same line.
    #
    # @option params [String] :conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether to
    #   attempt automatically merging two versions of a file. The default is
    #   NONE, which requires any conflicts to be resolved manually before the
    #   merge operation is successful.
    #
    # @option params [String] :next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #
    # @return [Types::DescribeMergeConflictsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMergeConflictsOutput#conflict_metadata #conflict_metadata} => Types::ConflictMetadata
    #   * {Types::DescribeMergeConflictsOutput#merge_hunks #merge_hunks} => Array&lt;Types::MergeHunk&gt;
    #   * {Types::DescribeMergeConflictsOutput#next_token #next_token} => String
    #   * {Types::DescribeMergeConflictsOutput#destination_commit_id #destination_commit_id} => String
    #   * {Types::DescribeMergeConflictsOutput#source_commit_id #source_commit_id} => String
    #   * {Types::DescribeMergeConflictsOutput#base_commit_id #base_commit_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_merge_conflicts({
    #     repository_name: "RepositoryName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     source_commit_specifier: "CommitName", # required
    #     merge_option: "FAST_FORWARD_MERGE", # required, accepts FAST_FORWARD_MERGE, SQUASH_MERGE, THREE_WAY_MERGE
    #     max_merge_hunks: 1,
    #     file_path: "Path", # required
    #     conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #     conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.conflict_metadata.file_path #=> String
    #   resp.conflict_metadata.file_sizes.source #=> Integer
    #   resp.conflict_metadata.file_sizes.destination #=> Integer
    #   resp.conflict_metadata.file_sizes.base #=> Integer
    #   resp.conflict_metadata.file_modes.source #=> String, one of "EXECUTABLE", "NORMAL", "SYMLINK"
    #   resp.conflict_metadata.file_modes.destination #=> String, one of "EXECUTABLE", "NORMAL", "SYMLINK"
    #   resp.conflict_metadata.file_modes.base #=> String, one of "EXECUTABLE", "NORMAL", "SYMLINK"
    #   resp.conflict_metadata.object_types.source #=> String, one of "FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"
    #   resp.conflict_metadata.object_types.destination #=> String, one of "FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"
    #   resp.conflict_metadata.object_types.base #=> String, one of "FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"
    #   resp.conflict_metadata.number_of_conflicts #=> Integer
    #   resp.conflict_metadata.is_binary_file.source #=> Boolean
    #   resp.conflict_metadata.is_binary_file.destination #=> Boolean
    #   resp.conflict_metadata.is_binary_file.base #=> Boolean
    #   resp.conflict_metadata.content_conflict #=> Boolean
    #   resp.conflict_metadata.file_mode_conflict #=> Boolean
    #   resp.conflict_metadata.object_type_conflict #=> Boolean
    #   resp.conflict_metadata.merge_operations.source #=> String, one of "A", "M", "D"
    #   resp.conflict_metadata.merge_operations.destination #=> String, one of "A", "M", "D"
    #   resp.merge_hunks #=> Array
    #   resp.merge_hunks[0].is_conflict #=> Boolean
    #   resp.merge_hunks[0].source.start_line #=> Integer
    #   resp.merge_hunks[0].source.end_line #=> Integer
    #   resp.merge_hunks[0].source.hunk_content #=> String
    #   resp.merge_hunks[0].destination.start_line #=> Integer
    #   resp.merge_hunks[0].destination.end_line #=> Integer
    #   resp.merge_hunks[0].destination.hunk_content #=> String
    #   resp.merge_hunks[0].base.start_line #=> Integer
    #   resp.merge_hunks[0].base.end_line #=> Integer
    #   resp.merge_hunks[0].base.hunk_content #=> String
    #   resp.next_token #=> String
    #   resp.destination_commit_id #=> String
    #   resp.source_commit_id #=> String
    #   resp.base_commit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DescribeMergeConflicts AWS API Documentation
    #
    # @overload describe_merge_conflicts(params = {})
    # @param [Hash] params ({})
    def describe_merge_conflicts(params = {}, options = {})
      req = build_request(:describe_merge_conflicts, params)
      req.send_request(options)
    end

    # Returns information about one or more pull request events.
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #
    # @option params [String] :pull_request_event_type
    #   Optional. The pull request event type about which you want to return
    #   information.
    #
    # @option params [String] :actor_arn
    #   The Amazon Resource Name (ARN) of the user whose actions resulted in
    #   the event. Examples include updating the pull request with more
    #   commits or changing the status of a pull request.
    #
    # @option params [String] :next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #
    # @option params [Integer] :max_results
    #   A non-zero, non-negative integer used to limit the number of returned
    #   results. The default is 100 events, which is also the maximum number
    #   of events that can be returned in a result.
    #
    # @return [Types::DescribePullRequestEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePullRequestEventsOutput#pull_request_events #pull_request_events} => Array&lt;Types::PullRequestEvent&gt;
    #   * {Types::DescribePullRequestEventsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pull_request_events({
    #     pull_request_id: "PullRequestId", # required
    #     pull_request_event_type: "PULL_REQUEST_CREATED", # accepts PULL_REQUEST_CREATED, PULL_REQUEST_STATUS_CHANGED, PULL_REQUEST_SOURCE_REFERENCE_UPDATED, PULL_REQUEST_MERGE_STATE_CHANGED, PULL_REQUEST_APPROVAL_RULE_CREATED, PULL_REQUEST_APPROVAL_RULE_UPDATED, PULL_REQUEST_APPROVAL_RULE_DELETED, PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN, PULL_REQUEST_APPROVAL_STATE_CHANGED
    #     actor_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.pull_request_events #=> Array
    #   resp.pull_request_events[0].pull_request_id #=> String
    #   resp.pull_request_events[0].event_date #=> Time
    #   resp.pull_request_events[0].pull_request_event_type #=> String, one of "PULL_REQUEST_CREATED", "PULL_REQUEST_STATUS_CHANGED", "PULL_REQUEST_SOURCE_REFERENCE_UPDATED", "PULL_REQUEST_MERGE_STATE_CHANGED", "PULL_REQUEST_APPROVAL_RULE_CREATED", "PULL_REQUEST_APPROVAL_RULE_UPDATED", "PULL_REQUEST_APPROVAL_RULE_DELETED", "PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN", "PULL_REQUEST_APPROVAL_STATE_CHANGED"
    #   resp.pull_request_events[0].actor_arn #=> String
    #   resp.pull_request_events[0].pull_request_created_event_metadata.repository_name #=> String
    #   resp.pull_request_events[0].pull_request_created_event_metadata.source_commit_id #=> String
    #   resp.pull_request_events[0].pull_request_created_event_metadata.destination_commit_id #=> String
    #   resp.pull_request_events[0].pull_request_created_event_metadata.merge_base #=> String
    #   resp.pull_request_events[0].pull_request_status_changed_event_metadata.pull_request_status #=> String, one of "OPEN", "CLOSED"
    #   resp.pull_request_events[0].pull_request_source_reference_updated_event_metadata.repository_name #=> String
    #   resp.pull_request_events[0].pull_request_source_reference_updated_event_metadata.before_commit_id #=> String
    #   resp.pull_request_events[0].pull_request_source_reference_updated_event_metadata.after_commit_id #=> String
    #   resp.pull_request_events[0].pull_request_source_reference_updated_event_metadata.merge_base #=> String
    #   resp.pull_request_events[0].pull_request_merged_state_changed_event_metadata.repository_name #=> String
    #   resp.pull_request_events[0].pull_request_merged_state_changed_event_metadata.destination_reference #=> String
    #   resp.pull_request_events[0].pull_request_merged_state_changed_event_metadata.merge_metadata.is_merged #=> Boolean
    #   resp.pull_request_events[0].pull_request_merged_state_changed_event_metadata.merge_metadata.merged_by #=> String
    #   resp.pull_request_events[0].pull_request_merged_state_changed_event_metadata.merge_metadata.merge_commit_id #=> String
    #   resp.pull_request_events[0].pull_request_merged_state_changed_event_metadata.merge_metadata.merge_option #=> String, one of "FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"
    #   resp.pull_request_events[0].approval_rule_event_metadata.approval_rule_name #=> String
    #   resp.pull_request_events[0].approval_rule_event_metadata.approval_rule_id #=> String
    #   resp.pull_request_events[0].approval_rule_event_metadata.approval_rule_content #=> String
    #   resp.pull_request_events[0].approval_state_changed_event_metadata.revision_id #=> String
    #   resp.pull_request_events[0].approval_state_changed_event_metadata.approval_status #=> String, one of "APPROVE", "REVOKE"
    #   resp.pull_request_events[0].approval_rule_overridden_event_metadata.revision_id #=> String
    #   resp.pull_request_events[0].approval_rule_overridden_event_metadata.override_status #=> String, one of "OVERRIDE", "REVOKE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DescribePullRequestEvents AWS API Documentation
    #
    # @overload describe_pull_request_events(params = {})
    # @param [Hash] params ({})
    def describe_pull_request_events(params = {}, options = {})
      req = build_request(:describe_pull_request_events, params)
      req.send_request(options)
    end

    # Removes the association between a template and a repository so that
    # approval rules based on the template are not automatically created
    # when pull requests are created in the specified repository. This does
    # not delete any approval rules previously created for pull requests
    # through the template association.
    #
    # @option params [required, String] :approval_rule_template_name
    #   The name of the approval rule template to disassociate from a
    #   specified repository.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository you want to disassociate from the template.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_approval_rule_template_from_repository({
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DisassociateApprovalRuleTemplateFromRepository AWS API Documentation
    #
    # @overload disassociate_approval_rule_template_from_repository(params = {})
    # @param [Hash] params ({})
    def disassociate_approval_rule_template_from_repository(params = {}, options = {})
      req = build_request(:disassociate_approval_rule_template_from_repository, params)
      req.send_request(options)
    end

    # Evaluates whether a pull request has met all the conditions specified
    # in its associated approval rules.
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID of the pull request you want to evaluate.
    #
    # @option params [required, String] :revision_id
    #   The system-generated ID for the pull request revision. To retrieve the
    #   most recent revision ID for a pull request, use GetPullRequest.
    #
    # @return [Types::EvaluatePullRequestApprovalRulesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EvaluatePullRequestApprovalRulesOutput#evaluation #evaluation} => Types::Evaluation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.evaluate_pull_request_approval_rules({
    #     pull_request_id: "PullRequestId", # required
    #     revision_id: "RevisionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation.approved #=> Boolean
    #   resp.evaluation.overridden #=> Boolean
    #   resp.evaluation.approval_rules_satisfied #=> Array
    #   resp.evaluation.approval_rules_satisfied[0] #=> String
    #   resp.evaluation.approval_rules_not_satisfied #=> Array
    #   resp.evaluation.approval_rules_not_satisfied[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/EvaluatePullRequestApprovalRules AWS API Documentation
    #
    # @overload evaluate_pull_request_approval_rules(params = {})
    # @param [Hash] params ({})
    def evaluate_pull_request_approval_rules(params = {}, options = {})
      req = build_request(:evaluate_pull_request_approval_rules, params)
      req.send_request(options)
    end

    # Returns information about a specified approval rule template.
    #
    # @option params [required, String] :approval_rule_template_name
    #   The name of the approval rule template for which you want to get
    #   information.
    #
    # @return [Types::GetApprovalRuleTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApprovalRuleTemplateOutput#approval_rule_template #approval_rule_template} => Types::ApprovalRuleTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_approval_rule_template({
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.approval_rule_template.approval_rule_template_id #=> String
    #   resp.approval_rule_template.approval_rule_template_name #=> String
    #   resp.approval_rule_template.approval_rule_template_description #=> String
    #   resp.approval_rule_template.approval_rule_template_content #=> String
    #   resp.approval_rule_template.rule_content_sha_256 #=> String
    #   resp.approval_rule_template.last_modified_date #=> Time
    #   resp.approval_rule_template.creation_date #=> Time
    #   resp.approval_rule_template.last_modified_user #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetApprovalRuleTemplate AWS API Documentation
    #
    # @overload get_approval_rule_template(params = {})
    # @param [Hash] params ({})
    def get_approval_rule_template(params = {}, options = {})
      req = build_request(:get_approval_rule_template, params)
      req.send_request(options)
    end

    # Returns the base-64 encoded content of an individual blob in a
    # repository.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that contains the blob.
    #
    # @option params [required, String] :blob_id
    #   The ID of the blob, which is its SHA-1 pointer.
    #
    # @return [Types::GetBlobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBlobOutput#content #content} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_blob({
    #     repository_name: "RepositoryName", # required
    #     blob_id: "ObjectId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetBlob AWS API Documentation
    #
    # @overload get_blob(params = {})
    # @param [Hash] params ({})
    def get_blob(params = {}, options = {})
      req = build_request(:get_blob, params)
      req.send_request(options)
    end

    # Returns information about a repository branch, including its name and
    # the last commit ID.
    #
    # @option params [String] :repository_name
    #   The name of the repository that contains the branch for which you want
    #   to retrieve information.
    #
    # @option params [String] :branch_name
    #   The name of the branch for which you want to retrieve information.
    #
    # @return [Types::GetBranchOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBranchOutput#branch #branch} => Types::BranchInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_branch({
    #     repository_name: "RepositoryName",
    #     branch_name: "BranchName",
    #   })
    #
    # @example Response structure
    #
    #   resp.branch.branch_name #=> String
    #   resp.branch.commit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetBranch AWS API Documentation
    #
    # @overload get_branch(params = {})
    # @param [Hash] params ({})
    def get_branch(params = {}, options = {})
      req = build_request(:get_branch, params)
      req.send_request(options)
    end

    # Returns the content of a comment made on a change, file, or commit in
    # a repository.
    #
    # <note markdown="1"> Reaction counts might include numbers from user identities who were
    # deleted after the reaction was made. For a count of reactions from
    # active identities, use GetCommentReactions.
    #
    #  </note>
    #
    # @option params [required, String] :comment_id
    #   The unique, system-generated ID of the comment. To get this ID, use
    #   GetCommentsForComparedCommit or GetCommentsForPullRequest.
    #
    # @return [Types::GetCommentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCommentOutput#comment #comment} => Types::Comment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_comment({
    #     comment_id: "CommentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.comment.comment_id #=> String
    #   resp.comment.content #=> String
    #   resp.comment.in_reply_to #=> String
    #   resp.comment.creation_date #=> Time
    #   resp.comment.last_modified_date #=> Time
    #   resp.comment.author_arn #=> String
    #   resp.comment.deleted #=> Boolean
    #   resp.comment.client_request_token #=> String
    #   resp.comment.caller_reactions #=> Array
    #   resp.comment.caller_reactions[0] #=> String
    #   resp.comment.reaction_counts #=> Hash
    #   resp.comment.reaction_counts["ReactionValue"] #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetComment AWS API Documentation
    #
    # @overload get_comment(params = {})
    # @param [Hash] params ({})
    def get_comment(params = {}, options = {})
      req = build_request(:get_comment, params)
      req.send_request(options)
    end

    # Returns information about reactions to a specified comment ID.
    # Reactions from users who have been deleted will not be included in the
    # count.
    #
    # @option params [required, String] :comment_id
    #   The ID of the comment for which you want to get reactions information.
    #
    # @option params [String] :reaction_user_arn
    #   Optional. The Amazon Resource Name (ARN) of the user or identity for
    #   which you want to get reaction information.
    #
    # @option params [String] :next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #
    # @option params [Integer] :max_results
    #   A non-zero, non-negative integer used to limit the number of returned
    #   results. The default is the same as the allowed maximum, 1,000.
    #
    # @return [Types::GetCommentReactionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCommentReactionsOutput#reactions_for_comment #reactions_for_comment} => Array&lt;Types::ReactionForComment&gt;
    #   * {Types::GetCommentReactionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_comment_reactions({
    #     comment_id: "CommentId", # required
    #     reaction_user_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.reactions_for_comment #=> Array
    #   resp.reactions_for_comment[0].reaction.emoji #=> String
    #   resp.reactions_for_comment[0].reaction.short_code #=> String
    #   resp.reactions_for_comment[0].reaction.unicode #=> String
    #   resp.reactions_for_comment[0].reaction_users #=> Array
    #   resp.reactions_for_comment[0].reaction_users[0] #=> String
    #   resp.reactions_for_comment[0].reactions_from_deleted_users_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommentReactions AWS API Documentation
    #
    # @overload get_comment_reactions(params = {})
    # @param [Hash] params ({})
    def get_comment_reactions(params = {}, options = {})
      req = build_request(:get_comment_reactions, params)
      req.send_request(options)
    end

    # Returns information about comments made on the comparison between two
    # commits.
    #
    # <note markdown="1"> Reaction counts might include numbers from user identities who were
    # deleted after the reaction was made. For a count of reactions from
    # active identities, use GetCommentReactions.
    #
    #  </note>
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where you want to compare commits.
    #
    # @option params [String] :before_commit_id
    #   To establish the directionality of the comparison, the full commit ID
    #   of the before commit.
    #
    # @option params [required, String] :after_commit_id
    #   To establish the directionality of the comparison, the full commit ID
    #   of the after commit.
    #
    # @option params [String] :next_token
    #   An enumeration token that when provided in a request, returns the next
    #   batch of the results.
    #
    # @option params [Integer] :max_results
    #   A non-zero, non-negative integer used to limit the number of returned
    #   results. The default is 100 comments, but you can configure up to 500.
    #
    # @return [Types::GetCommentsForComparedCommitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCommentsForComparedCommitOutput#comments_for_compared_commit_data #comments_for_compared_commit_data} => Array&lt;Types::CommentsForComparedCommit&gt;
    #   * {Types::GetCommentsForComparedCommitOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_comments_for_compared_commit({
    #     repository_name: "RepositoryName", # required
    #     before_commit_id: "CommitId",
    #     after_commit_id: "CommitId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.comments_for_compared_commit_data #=> Array
    #   resp.comments_for_compared_commit_data[0].repository_name #=> String
    #   resp.comments_for_compared_commit_data[0].before_commit_id #=> String
    #   resp.comments_for_compared_commit_data[0].after_commit_id #=> String
    #   resp.comments_for_compared_commit_data[0].before_blob_id #=> String
    #   resp.comments_for_compared_commit_data[0].after_blob_id #=> String
    #   resp.comments_for_compared_commit_data[0].location.file_path #=> String
    #   resp.comments_for_compared_commit_data[0].location.file_position #=> Integer
    #   resp.comments_for_compared_commit_data[0].location.relative_file_version #=> String, one of "BEFORE", "AFTER"
    #   resp.comments_for_compared_commit_data[0].comments #=> Array
    #   resp.comments_for_compared_commit_data[0].comments[0].comment_id #=> String
    #   resp.comments_for_compared_commit_data[0].comments[0].content #=> String
    #   resp.comments_for_compared_commit_data[0].comments[0].in_reply_to #=> String
    #   resp.comments_for_compared_commit_data[0].comments[0].creation_date #=> Time
    #   resp.comments_for_compared_commit_data[0].comments[0].last_modified_date #=> Time
    #   resp.comments_for_compared_commit_data[0].comments[0].author_arn #=> String
    #   resp.comments_for_compared_commit_data[0].comments[0].deleted #=> Boolean
    #   resp.comments_for_compared_commit_data[0].comments[0].client_request_token #=> String
    #   resp.comments_for_compared_commit_data[0].comments[0].caller_reactions #=> Array
    #   resp.comments_for_compared_commit_data[0].comments[0].caller_reactions[0] #=> String
    #   resp.comments_for_compared_commit_data[0].comments[0].reaction_counts #=> Hash
    #   resp.comments_for_compared_commit_data[0].comments[0].reaction_counts["ReactionValue"] #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommentsForComparedCommit AWS API Documentation
    #
    # @overload get_comments_for_compared_commit(params = {})
    # @param [Hash] params ({})
    def get_comments_for_compared_commit(params = {}, options = {})
      req = build_request(:get_comments_for_compared_commit, params)
      req.send_request(options)
    end

    # Returns comments made on a pull request.
    #
    # <note markdown="1"> Reaction counts might include numbers from user identities who were
    # deleted after the reaction was made. For a count of reactions from
    # active identities, use GetCommentReactions.
    #
    #  </note>
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #
    # @option params [String] :repository_name
    #   The name of the repository that contains the pull request.
    #
    # @option params [String] :before_commit_id
    #   The full commit ID of the commit in the destination branch that was
    #   the tip of the branch at the time the pull request was created.
    #
    # @option params [String] :after_commit_id
    #   The full commit ID of the commit in the source branch that was the tip
    #   of the branch at the time the comment was made.
    #
    # @option params [String] :next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #
    # @option params [Integer] :max_results
    #   A non-zero, non-negative integer used to limit the number of returned
    #   results. The default is 100 comments. You can return up to 500
    #   comments with a single request.
    #
    # @return [Types::GetCommentsForPullRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCommentsForPullRequestOutput#comments_for_pull_request_data #comments_for_pull_request_data} => Array&lt;Types::CommentsForPullRequest&gt;
    #   * {Types::GetCommentsForPullRequestOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_comments_for_pull_request({
    #     pull_request_id: "PullRequestId", # required
    #     repository_name: "RepositoryName",
    #     before_commit_id: "CommitId",
    #     after_commit_id: "CommitId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.comments_for_pull_request_data #=> Array
    #   resp.comments_for_pull_request_data[0].pull_request_id #=> String
    #   resp.comments_for_pull_request_data[0].repository_name #=> String
    #   resp.comments_for_pull_request_data[0].before_commit_id #=> String
    #   resp.comments_for_pull_request_data[0].after_commit_id #=> String
    #   resp.comments_for_pull_request_data[0].before_blob_id #=> String
    #   resp.comments_for_pull_request_data[0].after_blob_id #=> String
    #   resp.comments_for_pull_request_data[0].location.file_path #=> String
    #   resp.comments_for_pull_request_data[0].location.file_position #=> Integer
    #   resp.comments_for_pull_request_data[0].location.relative_file_version #=> String, one of "BEFORE", "AFTER"
    #   resp.comments_for_pull_request_data[0].comments #=> Array
    #   resp.comments_for_pull_request_data[0].comments[0].comment_id #=> String
    #   resp.comments_for_pull_request_data[0].comments[0].content #=> String
    #   resp.comments_for_pull_request_data[0].comments[0].in_reply_to #=> String
    #   resp.comments_for_pull_request_data[0].comments[0].creation_date #=> Time
    #   resp.comments_for_pull_request_data[0].comments[0].last_modified_date #=> Time
    #   resp.comments_for_pull_request_data[0].comments[0].author_arn #=> String
    #   resp.comments_for_pull_request_data[0].comments[0].deleted #=> Boolean
    #   resp.comments_for_pull_request_data[0].comments[0].client_request_token #=> String
    #   resp.comments_for_pull_request_data[0].comments[0].caller_reactions #=> Array
    #   resp.comments_for_pull_request_data[0].comments[0].caller_reactions[0] #=> String
    #   resp.comments_for_pull_request_data[0].comments[0].reaction_counts #=> Hash
    #   resp.comments_for_pull_request_data[0].comments[0].reaction_counts["ReactionValue"] #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommentsForPullRequest AWS API Documentation
    #
    # @overload get_comments_for_pull_request(params = {})
    # @param [Hash] params ({})
    def get_comments_for_pull_request(params = {}, options = {})
      req = build_request(:get_comments_for_pull_request, params)
      req.send_request(options)
    end

    # Returns information about a commit, including commit message and
    # committer information.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to which the commit was made.
    #
    # @option params [required, String] :commit_id
    #   The commit ID. Commit IDs are the full SHA ID of the commit.
    #
    # @return [Types::GetCommitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCommitOutput#commit #commit} => Types::Commit
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_commit({
    #     repository_name: "RepositoryName", # required
    #     commit_id: "ObjectId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.commit.commit_id #=> String
    #   resp.commit.tree_id #=> String
    #   resp.commit.parents #=> Array
    #   resp.commit.parents[0] #=> String
    #   resp.commit.message #=> String
    #   resp.commit.author.name #=> String
    #   resp.commit.author.email #=> String
    #   resp.commit.author.date #=> String
    #   resp.commit.committer.name #=> String
    #   resp.commit.committer.email #=> String
    #   resp.commit.committer.date #=> String
    #   resp.commit.additional_data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommit AWS API Documentation
    #
    # @overload get_commit(params = {})
    # @param [Hash] params ({})
    def get_commit(params = {}, options = {})
      req = build_request(:get_commit, params)
      req.send_request(options)
    end

    # Returns information about the differences in a valid commit specifier
    # (such as a branch, tag, HEAD, commit ID, or other fully qualified
    # reference). Results can be limited to a specified path.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where you want to get differences.
    #
    # @option params [String] :before_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, the full commit ID). Optional. If not
    #   specified, all changes before the `afterCommitSpecifier` value are
    #   shown. If you do not use `beforeCommitSpecifier` in your request,
    #   consider limiting the results with `maxResults`.
    #
    # @option params [required, String] :after_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit.
    #
    # @option params [String] :before_path
    #   The file path in which to check for differences. Limits the results to
    #   this path. Can also be used to specify the previous name of a
    #   directory or folder. If `beforePath` and `afterPath` are not
    #   specified, differences are shown for all paths.
    #
    # @option params [String] :after_path
    #   The file path in which to check differences. Limits the results to
    #   this path. Can also be used to specify the changed name of a directory
    #   or folder, if it has changed. If not specified, differences are shown
    #   for all paths.
    #
    # @option params [Integer] :max_results
    #   A non-zero, non-negative integer used to limit the number of returned
    #   results.
    #
    # @option params [String] :next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #
    # @return [Types::GetDifferencesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDifferencesOutput#differences #differences} => Array&lt;Types::Difference&gt;
    #   * {Types::GetDifferencesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_differences({
    #     repository_name: "RepositoryName", # required
    #     before_commit_specifier: "CommitName",
    #     after_commit_specifier: "CommitName", # required
    #     before_path: "Path",
    #     after_path: "Path",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.differences #=> Array
    #   resp.differences[0].before_blob.blob_id #=> String
    #   resp.differences[0].before_blob.path #=> String
    #   resp.differences[0].before_blob.mode #=> String
    #   resp.differences[0].after_blob.blob_id #=> String
    #   resp.differences[0].after_blob.path #=> String
    #   resp.differences[0].after_blob.mode #=> String
    #   resp.differences[0].change_type #=> String, one of "A", "M", "D"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetDifferences AWS API Documentation
    #
    # @overload get_differences(params = {})
    # @param [Hash] params ({})
    def get_differences(params = {}, options = {})
      req = build_request(:get_differences, params)
      req.send_request(options)
    end

    # Returns the base-64 encoded contents of a specified file and its
    # metadata.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that contains the file.
    #
    # @option params [String] :commit_specifier
    #   The fully quaified reference that identifies the commit that contains
    #   the file. For example, you can specify a full commit ID, a tag, a
    #   branch name, or a reference such as refs/heads/master. If none is
    #   provided, the head commit is used.
    #
    # @option params [required, String] :file_path
    #   The fully qualified path to the file, including the full name and
    #   extension of the file. For example, /examples/file.md is the fully
    #   qualified path to a file named file.md in a folder named examples.
    #
    # @return [Types::GetFileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFileOutput#commit_id #commit_id} => String
    #   * {Types::GetFileOutput#blob_id #blob_id} => String
    #   * {Types::GetFileOutput#file_path #file_path} => String
    #   * {Types::GetFileOutput#file_mode #file_mode} => String
    #   * {Types::GetFileOutput#file_size #file_size} => Integer
    #   * {Types::GetFileOutput#file_content #file_content} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_file({
    #     repository_name: "RepositoryName", # required
    #     commit_specifier: "CommitName",
    #     file_path: "Path", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.commit_id #=> String
    #   resp.blob_id #=> String
    #   resp.file_path #=> String
    #   resp.file_mode #=> String, one of "EXECUTABLE", "NORMAL", "SYMLINK"
    #   resp.file_size #=> Integer
    #   resp.file_content #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetFile AWS API Documentation
    #
    # @overload get_file(params = {})
    # @param [Hash] params ({})
    def get_file(params = {}, options = {})
      req = build_request(:get_file, params)
      req.send_request(options)
    end

    # Returns the contents of a specified folder in a repository.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository.
    #
    # @option params [String] :commit_specifier
    #   A fully qualified reference used to identify a commit that contains
    #   the version of the folder's content to return. A fully qualified
    #   reference can be a commit ID, branch name, tag, or reference such as
    #   HEAD. If no specifier is provided, the folder content is returned as
    #   it exists in the HEAD commit.
    #
    # @option params [required, String] :folder_path
    #   The fully qualified path to the folder whose contents are returned,
    #   including the folder name. For example, /examples is a fully-qualified
    #   path to a folder named examples that was created off of the root
    #   directory (/) of a repository.
    #
    # @return [Types::GetFolderOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFolderOutput#commit_id #commit_id} => String
    #   * {Types::GetFolderOutput#folder_path #folder_path} => String
    #   * {Types::GetFolderOutput#tree_id #tree_id} => String
    #   * {Types::GetFolderOutput#sub_folders #sub_folders} => Array&lt;Types::Folder&gt;
    #   * {Types::GetFolderOutput#files #files} => Array&lt;Types::File&gt;
    #   * {Types::GetFolderOutput#symbolic_links #symbolic_links} => Array&lt;Types::SymbolicLink&gt;
    #   * {Types::GetFolderOutput#sub_modules #sub_modules} => Array&lt;Types::SubModule&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_folder({
    #     repository_name: "RepositoryName", # required
    #     commit_specifier: "CommitName",
    #     folder_path: "Path", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.commit_id #=> String
    #   resp.folder_path #=> String
    #   resp.tree_id #=> String
    #   resp.sub_folders #=> Array
    #   resp.sub_folders[0].tree_id #=> String
    #   resp.sub_folders[0].absolute_path #=> String
    #   resp.sub_folders[0].relative_path #=> String
    #   resp.files #=> Array
    #   resp.files[0].blob_id #=> String
    #   resp.files[0].absolute_path #=> String
    #   resp.files[0].relative_path #=> String
    #   resp.files[0].file_mode #=> String, one of "EXECUTABLE", "NORMAL", "SYMLINK"
    #   resp.symbolic_links #=> Array
    #   resp.symbolic_links[0].blob_id #=> String
    #   resp.symbolic_links[0].absolute_path #=> String
    #   resp.symbolic_links[0].relative_path #=> String
    #   resp.symbolic_links[0].file_mode #=> String, one of "EXECUTABLE", "NORMAL", "SYMLINK"
    #   resp.sub_modules #=> Array
    #   resp.sub_modules[0].commit_id #=> String
    #   resp.sub_modules[0].absolute_path #=> String
    #   resp.sub_modules[0].relative_path #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetFolder AWS API Documentation
    #
    # @overload get_folder(params = {})
    # @param [Hash] params ({})
    def get_folder(params = {}, options = {})
      req = build_request(:get_folder, params)
      req.send_request(options)
    end

    # Returns information about a specified merge commit.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that contains the merge commit about which
    #   you want to get information.
    #
    # @option params [required, String] :source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [required, String] :destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [String] :conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the same
    #   file has differences in both branches. If LINE\_LEVEL is specified, a
    #   conflict is considered not mergeable if the same file in both branches
    #   has differences on the same line.
    #
    # @option params [String] :conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether to
    #   attempt automatically merging two versions of a file. The default is
    #   NONE, which requires any conflicts to be resolved manually before the
    #   merge operation is successful.
    #
    # @return [Types::GetMergeCommitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMergeCommitOutput#source_commit_id #source_commit_id} => String
    #   * {Types::GetMergeCommitOutput#destination_commit_id #destination_commit_id} => String
    #   * {Types::GetMergeCommitOutput#base_commit_id #base_commit_id} => String
    #   * {Types::GetMergeCommitOutput#merged_commit_id #merged_commit_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_merge_commit({
    #     repository_name: "RepositoryName", # required
    #     source_commit_specifier: "CommitName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #     conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #   })
    #
    # @example Response structure
    #
    #   resp.source_commit_id #=> String
    #   resp.destination_commit_id #=> String
    #   resp.base_commit_id #=> String
    #   resp.merged_commit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetMergeCommit AWS API Documentation
    #
    # @overload get_merge_commit(params = {})
    # @param [Hash] params ({})
    def get_merge_commit(params = {}, options = {})
      req = build_request(:get_merge_commit, params)
      req.send_request(options)
    end

    # Returns information about merge conflicts between the before and after
    # commit IDs for a pull request in a repository.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where the pull request was created.
    #
    # @option params [required, String] :destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [required, String] :source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [required, String] :merge_option
    #   The merge option or strategy you want to use to merge the code.
    #
    # @option params [String] :conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the same
    #   file has differences in both branches. If LINE\_LEVEL is specified, a
    #   conflict is considered not mergeable if the same file in both branches
    #   has differences on the same line.
    #
    # @option params [Integer] :max_conflict_files
    #   The maximum number of files to include in the output.
    #
    # @option params [String] :conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether to
    #   attempt automatically merging two versions of a file. The default is
    #   NONE, which requires any conflicts to be resolved manually before the
    #   merge operation is successful.
    #
    # @option params [String] :next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #
    # @return [Types::GetMergeConflictsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMergeConflictsOutput#mergeable #mergeable} => Boolean
    #   * {Types::GetMergeConflictsOutput#destination_commit_id #destination_commit_id} => String
    #   * {Types::GetMergeConflictsOutput#source_commit_id #source_commit_id} => String
    #   * {Types::GetMergeConflictsOutput#base_commit_id #base_commit_id} => String
    #   * {Types::GetMergeConflictsOutput#conflict_metadata_list #conflict_metadata_list} => Array&lt;Types::ConflictMetadata&gt;
    #   * {Types::GetMergeConflictsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_merge_conflicts({
    #     repository_name: "RepositoryName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     source_commit_specifier: "CommitName", # required
    #     merge_option: "FAST_FORWARD_MERGE", # required, accepts FAST_FORWARD_MERGE, SQUASH_MERGE, THREE_WAY_MERGE
    #     conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #     max_conflict_files: 1,
    #     conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.mergeable #=> Boolean
    #   resp.destination_commit_id #=> String
    #   resp.source_commit_id #=> String
    #   resp.base_commit_id #=> String
    #   resp.conflict_metadata_list #=> Array
    #   resp.conflict_metadata_list[0].file_path #=> String
    #   resp.conflict_metadata_list[0].file_sizes.source #=> Integer
    #   resp.conflict_metadata_list[0].file_sizes.destination #=> Integer
    #   resp.conflict_metadata_list[0].file_sizes.base #=> Integer
    #   resp.conflict_metadata_list[0].file_modes.source #=> String, one of "EXECUTABLE", "NORMAL", "SYMLINK"
    #   resp.conflict_metadata_list[0].file_modes.destination #=> String, one of "EXECUTABLE", "NORMAL", "SYMLINK"
    #   resp.conflict_metadata_list[0].file_modes.base #=> String, one of "EXECUTABLE", "NORMAL", "SYMLINK"
    #   resp.conflict_metadata_list[0].object_types.source #=> String, one of "FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"
    #   resp.conflict_metadata_list[0].object_types.destination #=> String, one of "FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"
    #   resp.conflict_metadata_list[0].object_types.base #=> String, one of "FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"
    #   resp.conflict_metadata_list[0].number_of_conflicts #=> Integer
    #   resp.conflict_metadata_list[0].is_binary_file.source #=> Boolean
    #   resp.conflict_metadata_list[0].is_binary_file.destination #=> Boolean
    #   resp.conflict_metadata_list[0].is_binary_file.base #=> Boolean
    #   resp.conflict_metadata_list[0].content_conflict #=> Boolean
    #   resp.conflict_metadata_list[0].file_mode_conflict #=> Boolean
    #   resp.conflict_metadata_list[0].object_type_conflict #=> Boolean
    #   resp.conflict_metadata_list[0].merge_operations.source #=> String, one of "A", "M", "D"
    #   resp.conflict_metadata_list[0].merge_operations.destination #=> String, one of "A", "M", "D"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetMergeConflicts AWS API Documentation
    #
    # @overload get_merge_conflicts(params = {})
    # @param [Hash] params ({})
    def get_merge_conflicts(params = {}, options = {})
      req = build_request(:get_merge_conflicts, params)
      req.send_request(options)
    end

    # Returns information about the merge options available for merging two
    # specified branches. For details about why a merge option is not
    # available, use GetMergeConflicts or DescribeMergeConflicts.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that contains the commits about which you
    #   want to get merge options.
    #
    # @option params [required, String] :source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [required, String] :destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [String] :conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the same
    #   file has differences in both branches. If LINE\_LEVEL is specified, a
    #   conflict is considered not mergeable if the same file in both branches
    #   has differences on the same line.
    #
    # @option params [String] :conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether to
    #   attempt automatically merging two versions of a file. The default is
    #   NONE, which requires any conflicts to be resolved manually before the
    #   merge operation is successful.
    #
    # @return [Types::GetMergeOptionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMergeOptionsOutput#merge_options #merge_options} => Array&lt;String&gt;
    #   * {Types::GetMergeOptionsOutput#source_commit_id #source_commit_id} => String
    #   * {Types::GetMergeOptionsOutput#destination_commit_id #destination_commit_id} => String
    #   * {Types::GetMergeOptionsOutput#base_commit_id #base_commit_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_merge_options({
    #     repository_name: "RepositoryName", # required
    #     source_commit_specifier: "CommitName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #     conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #   })
    #
    # @example Response structure
    #
    #   resp.merge_options #=> Array
    #   resp.merge_options[0] #=> String, one of "FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"
    #   resp.source_commit_id #=> String
    #   resp.destination_commit_id #=> String
    #   resp.base_commit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetMergeOptions AWS API Documentation
    #
    # @overload get_merge_options(params = {})
    # @param [Hash] params ({})
    def get_merge_options(params = {}, options = {})
      req = build_request(:get_merge_options, params)
      req.send_request(options)
    end

    # Gets information about a pull request in a specified repository.
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #
    # @return [Types::GetPullRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPullRequestOutput#pull_request #pull_request} => Types::PullRequest
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pull_request({
    #     pull_request_id: "PullRequestId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pull_request.pull_request_id #=> String
    #   resp.pull_request.title #=> String
    #   resp.pull_request.description #=> String
    #   resp.pull_request.last_activity_date #=> Time
    #   resp.pull_request.creation_date #=> Time
    #   resp.pull_request.pull_request_status #=> String, one of "OPEN", "CLOSED"
    #   resp.pull_request.author_arn #=> String
    #   resp.pull_request.pull_request_targets #=> Array
    #   resp.pull_request.pull_request_targets[0].repository_name #=> String
    #   resp.pull_request.pull_request_targets[0].source_reference #=> String
    #   resp.pull_request.pull_request_targets[0].destination_reference #=> String
    #   resp.pull_request.pull_request_targets[0].destination_commit #=> String
    #   resp.pull_request.pull_request_targets[0].source_commit #=> String
    #   resp.pull_request.pull_request_targets[0].merge_base #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.is_merged #=> Boolean
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merged_by #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merge_commit_id #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merge_option #=> String, one of "FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"
    #   resp.pull_request.client_request_token #=> String
    #   resp.pull_request.revision_id #=> String
    #   resp.pull_request.approval_rules #=> Array
    #   resp.pull_request.approval_rules[0].approval_rule_id #=> String
    #   resp.pull_request.approval_rules[0].approval_rule_name #=> String
    #   resp.pull_request.approval_rules[0].approval_rule_content #=> String
    #   resp.pull_request.approval_rules[0].rule_content_sha_256 #=> String
    #   resp.pull_request.approval_rules[0].last_modified_date #=> Time
    #   resp.pull_request.approval_rules[0].creation_date #=> Time
    #   resp.pull_request.approval_rules[0].last_modified_user #=> String
    #   resp.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetPullRequest AWS API Documentation
    #
    # @overload get_pull_request(params = {})
    # @param [Hash] params ({})
    def get_pull_request(params = {}, options = {})
      req = build_request(:get_pull_request, params)
      req.send_request(options)
    end

    # Gets information about the approval states for a specified pull
    # request. Approval states only apply to pull requests that have one or
    # more approval rules applied to them.
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID for the pull request.
    #
    # @option params [required, String] :revision_id
    #   The system-generated ID for the pull request revision.
    #
    # @return [Types::GetPullRequestApprovalStatesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPullRequestApprovalStatesOutput#approvals #approvals} => Array&lt;Types::Approval&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pull_request_approval_states({
    #     pull_request_id: "PullRequestId", # required
    #     revision_id: "RevisionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.approvals #=> Array
    #   resp.approvals[0].user_arn #=> String
    #   resp.approvals[0].approval_state #=> String, one of "APPROVE", "REVOKE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetPullRequestApprovalStates AWS API Documentation
    #
    # @overload get_pull_request_approval_states(params = {})
    # @param [Hash] params ({})
    def get_pull_request_approval_states(params = {}, options = {})
      req = build_request(:get_pull_request_approval_states, params)
      req.send_request(options)
    end

    # Returns information about whether approval rules have been set aside
    # (overridden) for a pull request, and if so, the Amazon Resource Name
    # (ARN) of the user or identity that overrode the rules and their
    # requirements for the pull request.
    #
    # @option params [required, String] :pull_request_id
    #   The ID of the pull request for which you want to get information about
    #   whether approval rules have been set aside (overridden).
    #
    # @option params [required, String] :revision_id
    #   The system-generated ID of the revision for the pull request. To
    #   retrieve the most recent revision ID, use GetPullRequest.
    #
    # @return [Types::GetPullRequestOverrideStateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPullRequestOverrideStateOutput#overridden #overridden} => Boolean
    #   * {Types::GetPullRequestOverrideStateOutput#overrider #overrider} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pull_request_override_state({
    #     pull_request_id: "PullRequestId", # required
    #     revision_id: "RevisionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.overridden #=> Boolean
    #   resp.overrider #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetPullRequestOverrideState AWS API Documentation
    #
    # @overload get_pull_request_override_state(params = {})
    # @param [Hash] params ({})
    def get_pull_request_override_state(params = {}, options = {})
      req = build_request(:get_pull_request_override_state, params)
      req.send_request(options)
    end

    # Returns information about a repository.
    #
    # <note markdown="1"> The description field for a repository accepts all HTML characters and
    # all valid Unicode characters. Applications that do not HTML-encode the
    # description and display it in a webpage can expose users to
    # potentially malicious code. Make sure that you HTML-encode the
    # description field in any application that uses this API to display the
    # repository description on a webpage.
    #
    #  </note>
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to get information about.
    #
    # @return [Types::GetRepositoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRepositoryOutput#repository_metadata #repository_metadata} => Types::RepositoryMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository({
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_metadata.account_id #=> String
    #   resp.repository_metadata.repository_id #=> String
    #   resp.repository_metadata.repository_name #=> String
    #   resp.repository_metadata.repository_description #=> String
    #   resp.repository_metadata.default_branch #=> String
    #   resp.repository_metadata.last_modified_date #=> Time
    #   resp.repository_metadata.creation_date #=> Time
    #   resp.repository_metadata.clone_url_http #=> String
    #   resp.repository_metadata.clone_url_ssh #=> String
    #   resp.repository_metadata.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetRepository AWS API Documentation
    #
    # @overload get_repository(params = {})
    # @param [Hash] params ({})
    def get_repository(params = {}, options = {})
      req = build_request(:get_repository, params)
      req.send_request(options)
    end

    # Gets information about triggers configured for a repository.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository for which the trigger is configured.
    #
    # @return [Types::GetRepositoryTriggersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRepositoryTriggersOutput#configuration_id #configuration_id} => String
    #   * {Types::GetRepositoryTriggersOutput#triggers #triggers} => Array&lt;Types::RepositoryTrigger&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository_triggers({
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_id #=> String
    #   resp.triggers #=> Array
    #   resp.triggers[0].name #=> String
    #   resp.triggers[0].destination_arn #=> String
    #   resp.triggers[0].custom_data #=> String
    #   resp.triggers[0].branches #=> Array
    #   resp.triggers[0].branches[0] #=> String
    #   resp.triggers[0].events #=> Array
    #   resp.triggers[0].events[0] #=> String, one of "all", "updateReference", "createReference", "deleteReference"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetRepositoryTriggers AWS API Documentation
    #
    # @overload get_repository_triggers(params = {})
    # @param [Hash] params ({})
    def get_repository_triggers(params = {}, options = {})
      req = build_request(:get_repository_triggers, params)
      req.send_request(options)
    end

    # Lists all approval rule templates in the specified AWS Region in your
    # AWS account. If an AWS Region is not specified, the AWS Region where
    # you are signed in is used.
    #
    # @option params [String] :next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #
    # @option params [Integer] :max_results
    #   A non-zero, non-negative integer used to limit the number of returned
    #   results.
    #
    # @return [Types::ListApprovalRuleTemplatesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApprovalRuleTemplatesOutput#approval_rule_template_names #approval_rule_template_names} => Array&lt;String&gt;
    #   * {Types::ListApprovalRuleTemplatesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_approval_rule_templates({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.approval_rule_template_names #=> Array
    #   resp.approval_rule_template_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListApprovalRuleTemplates AWS API Documentation
    #
    # @overload list_approval_rule_templates(params = {})
    # @param [Hash] params ({})
    def list_approval_rule_templates(params = {}, options = {})
      req = build_request(:list_approval_rule_templates, params)
      req.send_request(options)
    end

    # Lists all approval rule templates that are associated with a specified
    # repository.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository for which you want to list all associated
    #   approval rule templates.
    #
    # @option params [String] :next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #
    # @option params [Integer] :max_results
    #   A non-zero, non-negative integer used to limit the number of returned
    #   results.
    #
    # @return [Types::ListAssociatedApprovalRuleTemplatesForRepositoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociatedApprovalRuleTemplatesForRepositoryOutput#approval_rule_template_names #approval_rule_template_names} => Array&lt;String&gt;
    #   * {Types::ListAssociatedApprovalRuleTemplatesForRepositoryOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_approval_rule_templates_for_repository({
    #     repository_name: "RepositoryName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.approval_rule_template_names #=> Array
    #   resp.approval_rule_template_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListAssociatedApprovalRuleTemplatesForRepository AWS API Documentation
    #
    # @overload list_associated_approval_rule_templates_for_repository(params = {})
    # @param [Hash] params ({})
    def list_associated_approval_rule_templates_for_repository(params = {}, options = {})
      req = build_request(:list_associated_approval_rule_templates_for_repository, params)
      req.send_request(options)
    end

    # Gets information about one or more branches in a repository.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that contains the branches.
    #
    # @option params [String] :next_token
    #   An enumeration token that allows the operation to batch the results.
    #
    # @return [Types::ListBranchesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBranchesOutput#branches #branches} => Array&lt;String&gt;
    #   * {Types::ListBranchesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_branches({
    #     repository_name: "RepositoryName", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.branches #=> Array
    #   resp.branches[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListBranches AWS API Documentation
    #
    # @overload list_branches(params = {})
    # @param [Hash] params ({})
    def list_branches(params = {}, options = {})
      req = build_request(:list_branches, params)
      req.send_request(options)
    end

    # Returns a list of pull requests for a specified repository. The return
    # list can be refined by pull request status or pull request author ARN.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository for which you want to list pull requests.
    #
    # @option params [String] :author_arn
    #   Optional. The Amazon Resource Name (ARN) of the user who created the
    #   pull request. If used, this filters the results to pull requests
    #   created by that user.
    #
    # @option params [String] :pull_request_status
    #   Optional. The status of the pull request. If used, this refines the
    #   results to the pull requests that match the specified status.
    #
    # @option params [String] :next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #
    # @option params [Integer] :max_results
    #   A non-zero, non-negative integer used to limit the number of returned
    #   results.
    #
    # @return [Types::ListPullRequestsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPullRequestsOutput#pull_request_ids #pull_request_ids} => Array&lt;String&gt;
    #   * {Types::ListPullRequestsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pull_requests({
    #     repository_name: "RepositoryName", # required
    #     author_arn: "Arn",
    #     pull_request_status: "OPEN", # accepts OPEN, CLOSED
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.pull_request_ids #=> Array
    #   resp.pull_request_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListPullRequests AWS API Documentation
    #
    # @overload list_pull_requests(params = {})
    # @param [Hash] params ({})
    def list_pull_requests(params = {}, options = {})
      req = build_request(:list_pull_requests, params)
      req.send_request(options)
    end

    # Gets information about one or more repositories.
    #
    # @option params [String] :next_token
    #   An enumeration token that allows the operation to batch the results of
    #   the operation. Batch sizes are 1,000 for list repository operations.
    #   When the client sends the token back to AWS CodeCommit, another page
    #   of 1,000 records is retrieved.
    #
    # @option params [String] :sort_by
    #   The criteria used to sort the results of a list repositories
    #   operation.
    #
    # @option params [String] :order
    #   The order in which to sort the results of a list repositories
    #   operation.
    #
    # @return [Types::ListRepositoriesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRepositoriesOutput#repositories #repositories} => Array&lt;Types::RepositoryNameIdPair&gt;
    #   * {Types::ListRepositoriesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_repositories({
    #     next_token: "NextToken",
    #     sort_by: "repositoryName", # accepts repositoryName, lastModifiedDate
    #     order: "ascending", # accepts ascending, descending
    #   })
    #
    # @example Response structure
    #
    #   resp.repositories #=> Array
    #   resp.repositories[0].repository_name #=> String
    #   resp.repositories[0].repository_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListRepositories AWS API Documentation
    #
    # @overload list_repositories(params = {})
    # @param [Hash] params ({})
    def list_repositories(params = {}, options = {})
      req = build_request(:list_repositories, params)
      req.send_request(options)
    end

    # Lists all repositories associated with the specified approval rule
    # template.
    #
    # @option params [required, String] :approval_rule_template_name
    #   The name of the approval rule template for which you want to list
    #   repositories that are associated with that template.
    #
    # @option params [String] :next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #
    # @option params [Integer] :max_results
    #   A non-zero, non-negative integer used to limit the number of returned
    #   results.
    #
    # @return [Types::ListRepositoriesForApprovalRuleTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRepositoriesForApprovalRuleTemplateOutput#repository_names #repository_names} => Array&lt;String&gt;
    #   * {Types::ListRepositoriesForApprovalRuleTemplateOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_repositories_for_approval_rule_template({
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_names #=> Array
    #   resp.repository_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListRepositoriesForApprovalRuleTemplate AWS API Documentation
    #
    # @overload list_repositories_for_approval_rule_template(params = {})
    # @param [Hash] params ({})
    def list_repositories_for_approval_rule_template(params = {}, options = {})
      req = build_request(:list_repositories_for_approval_rule_template, params)
      req.send_request(options)
    end

    # Gets information about AWS tags for a specified Amazon Resource Name
    # (ARN) in AWS CodeCommit. For a list of valid resources in AWS
    # CodeCommit, see [CodeCommit Resources and Operations][1] in the<i> AWS
    # CodeCommit User Guide</i>.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   get information about tags, if any.
    #
    # @option params [String] :next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::ListTagsForResourceOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Merges two branches using the fast-forward merge strategy.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where you want to merge two branches.
    #
    # @option params [required, String] :source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [required, String] :destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [String] :target_branch
    #   The branch where the merge is applied.
    #
    # @return [Types::MergeBranchesByFastForwardOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MergeBranchesByFastForwardOutput#commit_id #commit_id} => String
    #   * {Types::MergeBranchesByFastForwardOutput#tree_id #tree_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_branches_by_fast_forward({
    #     repository_name: "RepositoryName", # required
    #     source_commit_specifier: "CommitName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     target_branch: "BranchName",
    #   })
    #
    # @example Response structure
    #
    #   resp.commit_id #=> String
    #   resp.tree_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergeBranchesByFastForward AWS API Documentation
    #
    # @overload merge_branches_by_fast_forward(params = {})
    # @param [Hash] params ({})
    def merge_branches_by_fast_forward(params = {}, options = {})
      req = build_request(:merge_branches_by_fast_forward, params)
      req.send_request(options)
    end

    # Merges two branches using the squash merge strategy.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where you want to merge two branches.
    #
    # @option params [required, String] :source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [required, String] :destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [String] :target_branch
    #   The branch where the merge is applied.
    #
    # @option params [String] :conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the same
    #   file has differences in both branches. If LINE\_LEVEL is specified, a
    #   conflict is considered not mergeable if the same file in both branches
    #   has differences on the same line.
    #
    # @option params [String] :conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether to
    #   attempt automatically merging two versions of a file. The default is
    #   NONE, which requires any conflicts to be resolved manually before the
    #   merge operation is successful.
    #
    # @option params [String] :author_name
    #   The name of the author who created the commit. This information is
    #   used as both the author and committer for the commit.
    #
    # @option params [String] :email
    #   The email address of the person merging the branches. This information
    #   is used in the commit information for the merge.
    #
    # @option params [String] :commit_message
    #   The commit message for the merge.
    #
    # @option params [Boolean] :keep_empty_folders
    #   If the commit contains deletions, whether to keep a folder or folder
    #   structure if the changes leave the folders empty. If this is specified
    #   as true, a .gitkeep file is created for empty folders. The default is
    #   false.
    #
    # @option params [Types::ConflictResolution] :conflict_resolution
    #   If AUTOMERGE is the conflict resolution strategy, a list of inputs to
    #   use when resolving conflicts during a merge.
    #
    # @return [Types::MergeBranchesBySquashOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MergeBranchesBySquashOutput#commit_id #commit_id} => String
    #   * {Types::MergeBranchesBySquashOutput#tree_id #tree_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_branches_by_squash({
    #     repository_name: "RepositoryName", # required
    #     source_commit_specifier: "CommitName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     target_branch: "BranchName",
    #     conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #     conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #     author_name: "Name",
    #     email: "Email",
    #     commit_message: "Message",
    #     keep_empty_folders: false,
    #     conflict_resolution: {
    #       replace_contents: [
    #         {
    #           file_path: "Path", # required
    #           replacement_type: "KEEP_BASE", # required, accepts KEEP_BASE, KEEP_SOURCE, KEEP_DESTINATION, USE_NEW_CONTENT
    #           content: "data",
    #           file_mode: "EXECUTABLE", # accepts EXECUTABLE, NORMAL, SYMLINK
    #         },
    #       ],
    #       delete_files: [
    #         {
    #           file_path: "Path", # required
    #         },
    #       ],
    #       set_file_modes: [
    #         {
    #           file_path: "Path", # required
    #           file_mode: "EXECUTABLE", # required, accepts EXECUTABLE, NORMAL, SYMLINK
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.commit_id #=> String
    #   resp.tree_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergeBranchesBySquash AWS API Documentation
    #
    # @overload merge_branches_by_squash(params = {})
    # @param [Hash] params ({})
    def merge_branches_by_squash(params = {}, options = {})
      req = build_request(:merge_branches_by_squash, params)
      req.send_request(options)
    end

    # Merges two specified branches using the three-way merge strategy.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where you want to merge two branches.
    #
    # @option params [required, String] :source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [required, String] :destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #
    # @option params [String] :target_branch
    #   The branch where the merge is applied.
    #
    # @option params [String] :conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the same
    #   file has differences in both branches. If LINE\_LEVEL is specified, a
    #   conflict is considered not mergeable if the same file in both branches
    #   has differences on the same line.
    #
    # @option params [String] :conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether to
    #   attempt automatically merging two versions of a file. The default is
    #   NONE, which requires any conflicts to be resolved manually before the
    #   merge operation is successful.
    #
    # @option params [String] :author_name
    #   The name of the author who created the commit. This information is
    #   used as both the author and committer for the commit.
    #
    # @option params [String] :email
    #   The email address of the person merging the branches. This information
    #   is used in the commit information for the merge.
    #
    # @option params [String] :commit_message
    #   The commit message to include in the commit information for the merge.
    #
    # @option params [Boolean] :keep_empty_folders
    #   If the commit contains deletions, whether to keep a folder or folder
    #   structure if the changes leave the folders empty. If true, a .gitkeep
    #   file is created for empty folders. The default is false.
    #
    # @option params [Types::ConflictResolution] :conflict_resolution
    #   If AUTOMERGE is the conflict resolution strategy, a list of inputs to
    #   use when resolving conflicts during a merge.
    #
    # @return [Types::MergeBranchesByThreeWayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MergeBranchesByThreeWayOutput#commit_id #commit_id} => String
    #   * {Types::MergeBranchesByThreeWayOutput#tree_id #tree_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_branches_by_three_way({
    #     repository_name: "RepositoryName", # required
    #     source_commit_specifier: "CommitName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     target_branch: "BranchName",
    #     conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #     conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #     author_name: "Name",
    #     email: "Email",
    #     commit_message: "Message",
    #     keep_empty_folders: false,
    #     conflict_resolution: {
    #       replace_contents: [
    #         {
    #           file_path: "Path", # required
    #           replacement_type: "KEEP_BASE", # required, accepts KEEP_BASE, KEEP_SOURCE, KEEP_DESTINATION, USE_NEW_CONTENT
    #           content: "data",
    #           file_mode: "EXECUTABLE", # accepts EXECUTABLE, NORMAL, SYMLINK
    #         },
    #       ],
    #       delete_files: [
    #         {
    #           file_path: "Path", # required
    #         },
    #       ],
    #       set_file_modes: [
    #         {
    #           file_path: "Path", # required
    #           file_mode: "EXECUTABLE", # required, accepts EXECUTABLE, NORMAL, SYMLINK
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.commit_id #=> String
    #   resp.tree_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergeBranchesByThreeWay AWS API Documentation
    #
    # @overload merge_branches_by_three_way(params = {})
    # @param [Hash] params ({})
    def merge_branches_by_three_way(params = {}, options = {})
      req = build_request(:merge_branches_by_three_way, params)
      req.send_request(options)
    end

    # Attempts to merge the source commit of a pull request into the
    # specified destination branch for that pull request at the specified
    # commit using the fast-forward merge strategy. If the merge is
    # successful, it closes the pull request.
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where the pull request was created.
    #
    # @option params [String] :source_commit_id
    #   The full commit ID of the original or updated commit in the pull
    #   request source branch. Pass this value if you want an exception thrown
    #   if the current commit ID of the tip of the source branch does not
    #   match this commit ID.
    #
    # @return [Types::MergePullRequestByFastForwardOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MergePullRequestByFastForwardOutput#pull_request #pull_request} => Types::PullRequest
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_pull_request_by_fast_forward({
    #     pull_request_id: "PullRequestId", # required
    #     repository_name: "RepositoryName", # required
    #     source_commit_id: "ObjectId",
    #   })
    #
    # @example Response structure
    #
    #   resp.pull_request.pull_request_id #=> String
    #   resp.pull_request.title #=> String
    #   resp.pull_request.description #=> String
    #   resp.pull_request.last_activity_date #=> Time
    #   resp.pull_request.creation_date #=> Time
    #   resp.pull_request.pull_request_status #=> String, one of "OPEN", "CLOSED"
    #   resp.pull_request.author_arn #=> String
    #   resp.pull_request.pull_request_targets #=> Array
    #   resp.pull_request.pull_request_targets[0].repository_name #=> String
    #   resp.pull_request.pull_request_targets[0].source_reference #=> String
    #   resp.pull_request.pull_request_targets[0].destination_reference #=> String
    #   resp.pull_request.pull_request_targets[0].destination_commit #=> String
    #   resp.pull_request.pull_request_targets[0].source_commit #=> String
    #   resp.pull_request.pull_request_targets[0].merge_base #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.is_merged #=> Boolean
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merged_by #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merge_commit_id #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merge_option #=> String, one of "FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"
    #   resp.pull_request.client_request_token #=> String
    #   resp.pull_request.revision_id #=> String
    #   resp.pull_request.approval_rules #=> Array
    #   resp.pull_request.approval_rules[0].approval_rule_id #=> String
    #   resp.pull_request.approval_rules[0].approval_rule_name #=> String
    #   resp.pull_request.approval_rules[0].approval_rule_content #=> String
    #   resp.pull_request.approval_rules[0].rule_content_sha_256 #=> String
    #   resp.pull_request.approval_rules[0].last_modified_date #=> Time
    #   resp.pull_request.approval_rules[0].creation_date #=> Time
    #   resp.pull_request.approval_rules[0].last_modified_user #=> String
    #   resp.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergePullRequestByFastForward AWS API Documentation
    #
    # @overload merge_pull_request_by_fast_forward(params = {})
    # @param [Hash] params ({})
    def merge_pull_request_by_fast_forward(params = {}, options = {})
      req = build_request(:merge_pull_request_by_fast_forward, params)
      req.send_request(options)
    end

    # Attempts to merge the source commit of a pull request into the
    # specified destination branch for that pull request at the specified
    # commit using the squash merge strategy. If the merge is successful, it
    # closes the pull request.
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where the pull request was created.
    #
    # @option params [String] :source_commit_id
    #   The full commit ID of the original or updated commit in the pull
    #   request source branch. Pass this value if you want an exception thrown
    #   if the current commit ID of the tip of the source branch does not
    #   match this commit ID.
    #
    # @option params [String] :conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the same
    #   file has differences in both branches. If LINE\_LEVEL is specified, a
    #   conflict is considered not mergeable if the same file in both branches
    #   has differences on the same line.
    #
    # @option params [String] :conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether to
    #   attempt automatically merging two versions of a file. The default is
    #   NONE, which requires any conflicts to be resolved manually before the
    #   merge operation is successful.
    #
    # @option params [String] :commit_message
    #   The commit message to include in the commit information for the merge.
    #
    # @option params [String] :author_name
    #   The name of the author who created the commit. This information is
    #   used as both the author and committer for the commit.
    #
    # @option params [String] :email
    #   The email address of the person merging the branches. This information
    #   is used in the commit information for the merge.
    #
    # @option params [Boolean] :keep_empty_folders
    #   If the commit contains deletions, whether to keep a folder or folder
    #   structure if the changes leave the folders empty. If true, a .gitkeep
    #   file is created for empty folders. The default is false.
    #
    # @option params [Types::ConflictResolution] :conflict_resolution
    #   If AUTOMERGE is the conflict resolution strategy, a list of inputs to
    #   use when resolving conflicts during a merge.
    #
    # @return [Types::MergePullRequestBySquashOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MergePullRequestBySquashOutput#pull_request #pull_request} => Types::PullRequest
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_pull_request_by_squash({
    #     pull_request_id: "PullRequestId", # required
    #     repository_name: "RepositoryName", # required
    #     source_commit_id: "ObjectId",
    #     conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #     conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #     commit_message: "Message",
    #     author_name: "Name",
    #     email: "Email",
    #     keep_empty_folders: false,
    #     conflict_resolution: {
    #       replace_contents: [
    #         {
    #           file_path: "Path", # required
    #           replacement_type: "KEEP_BASE", # required, accepts KEEP_BASE, KEEP_SOURCE, KEEP_DESTINATION, USE_NEW_CONTENT
    #           content: "data",
    #           file_mode: "EXECUTABLE", # accepts EXECUTABLE, NORMAL, SYMLINK
    #         },
    #       ],
    #       delete_files: [
    #         {
    #           file_path: "Path", # required
    #         },
    #       ],
    #       set_file_modes: [
    #         {
    #           file_path: "Path", # required
    #           file_mode: "EXECUTABLE", # required, accepts EXECUTABLE, NORMAL, SYMLINK
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.pull_request.pull_request_id #=> String
    #   resp.pull_request.title #=> String
    #   resp.pull_request.description #=> String
    #   resp.pull_request.last_activity_date #=> Time
    #   resp.pull_request.creation_date #=> Time
    #   resp.pull_request.pull_request_status #=> String, one of "OPEN", "CLOSED"
    #   resp.pull_request.author_arn #=> String
    #   resp.pull_request.pull_request_targets #=> Array
    #   resp.pull_request.pull_request_targets[0].repository_name #=> String
    #   resp.pull_request.pull_request_targets[0].source_reference #=> String
    #   resp.pull_request.pull_request_targets[0].destination_reference #=> String
    #   resp.pull_request.pull_request_targets[0].destination_commit #=> String
    #   resp.pull_request.pull_request_targets[0].source_commit #=> String
    #   resp.pull_request.pull_request_targets[0].merge_base #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.is_merged #=> Boolean
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merged_by #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merge_commit_id #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merge_option #=> String, one of "FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"
    #   resp.pull_request.client_request_token #=> String
    #   resp.pull_request.revision_id #=> String
    #   resp.pull_request.approval_rules #=> Array
    #   resp.pull_request.approval_rules[0].approval_rule_id #=> String
    #   resp.pull_request.approval_rules[0].approval_rule_name #=> String
    #   resp.pull_request.approval_rules[0].approval_rule_content #=> String
    #   resp.pull_request.approval_rules[0].rule_content_sha_256 #=> String
    #   resp.pull_request.approval_rules[0].last_modified_date #=> Time
    #   resp.pull_request.approval_rules[0].creation_date #=> Time
    #   resp.pull_request.approval_rules[0].last_modified_user #=> String
    #   resp.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergePullRequestBySquash AWS API Documentation
    #
    # @overload merge_pull_request_by_squash(params = {})
    # @param [Hash] params ({})
    def merge_pull_request_by_squash(params = {}, options = {})
      req = build_request(:merge_pull_request_by_squash, params)
      req.send_request(options)
    end

    # Attempts to merge the source commit of a pull request into the
    # specified destination branch for that pull request at the specified
    # commit using the three-way merge strategy. If the merge is successful,
    # it closes the pull request.
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where the pull request was created.
    #
    # @option params [String] :source_commit_id
    #   The full commit ID of the original or updated commit in the pull
    #   request source branch. Pass this value if you want an exception thrown
    #   if the current commit ID of the tip of the source branch does not
    #   match this commit ID.
    #
    # @option params [String] :conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the same
    #   file has differences in both branches. If LINE\_LEVEL is specified, a
    #   conflict is considered not mergeable if the same file in both branches
    #   has differences on the same line.
    #
    # @option params [String] :conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether to
    #   attempt automatically merging two versions of a file. The default is
    #   NONE, which requires any conflicts to be resolved manually before the
    #   merge operation is successful.
    #
    # @option params [String] :commit_message
    #   The commit message to include in the commit information for the merge.
    #
    # @option params [String] :author_name
    #   The name of the author who created the commit. This information is
    #   used as both the author and committer for the commit.
    #
    # @option params [String] :email
    #   The email address of the person merging the branches. This information
    #   is used in the commit information for the merge.
    #
    # @option params [Boolean] :keep_empty_folders
    #   If the commit contains deletions, whether to keep a folder or folder
    #   structure if the changes leave the folders empty. If true, a .gitkeep
    #   file is created for empty folders. The default is false.
    #
    # @option params [Types::ConflictResolution] :conflict_resolution
    #   If AUTOMERGE is the conflict resolution strategy, a list of inputs to
    #   use when resolving conflicts during a merge.
    #
    # @return [Types::MergePullRequestByThreeWayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MergePullRequestByThreeWayOutput#pull_request #pull_request} => Types::PullRequest
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_pull_request_by_three_way({
    #     pull_request_id: "PullRequestId", # required
    #     repository_name: "RepositoryName", # required
    #     source_commit_id: "ObjectId",
    #     conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #     conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #     commit_message: "Message",
    #     author_name: "Name",
    #     email: "Email",
    #     keep_empty_folders: false,
    #     conflict_resolution: {
    #       replace_contents: [
    #         {
    #           file_path: "Path", # required
    #           replacement_type: "KEEP_BASE", # required, accepts KEEP_BASE, KEEP_SOURCE, KEEP_DESTINATION, USE_NEW_CONTENT
    #           content: "data",
    #           file_mode: "EXECUTABLE", # accepts EXECUTABLE, NORMAL, SYMLINK
    #         },
    #       ],
    #       delete_files: [
    #         {
    #           file_path: "Path", # required
    #         },
    #       ],
    #       set_file_modes: [
    #         {
    #           file_path: "Path", # required
    #           file_mode: "EXECUTABLE", # required, accepts EXECUTABLE, NORMAL, SYMLINK
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.pull_request.pull_request_id #=> String
    #   resp.pull_request.title #=> String
    #   resp.pull_request.description #=> String
    #   resp.pull_request.last_activity_date #=> Time
    #   resp.pull_request.creation_date #=> Time
    #   resp.pull_request.pull_request_status #=> String, one of "OPEN", "CLOSED"
    #   resp.pull_request.author_arn #=> String
    #   resp.pull_request.pull_request_targets #=> Array
    #   resp.pull_request.pull_request_targets[0].repository_name #=> String
    #   resp.pull_request.pull_request_targets[0].source_reference #=> String
    #   resp.pull_request.pull_request_targets[0].destination_reference #=> String
    #   resp.pull_request.pull_request_targets[0].destination_commit #=> String
    #   resp.pull_request.pull_request_targets[0].source_commit #=> String
    #   resp.pull_request.pull_request_targets[0].merge_base #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.is_merged #=> Boolean
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merged_by #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merge_commit_id #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merge_option #=> String, one of "FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"
    #   resp.pull_request.client_request_token #=> String
    #   resp.pull_request.revision_id #=> String
    #   resp.pull_request.approval_rules #=> Array
    #   resp.pull_request.approval_rules[0].approval_rule_id #=> String
    #   resp.pull_request.approval_rules[0].approval_rule_name #=> String
    #   resp.pull_request.approval_rules[0].approval_rule_content #=> String
    #   resp.pull_request.approval_rules[0].rule_content_sha_256 #=> String
    #   resp.pull_request.approval_rules[0].last_modified_date #=> Time
    #   resp.pull_request.approval_rules[0].creation_date #=> Time
    #   resp.pull_request.approval_rules[0].last_modified_user #=> String
    #   resp.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergePullRequestByThreeWay AWS API Documentation
    #
    # @overload merge_pull_request_by_three_way(params = {})
    # @param [Hash] params ({})
    def merge_pull_request_by_three_way(params = {}, options = {})
      req = build_request(:merge_pull_request_by_three_way, params)
      req.send_request(options)
    end

    # Sets aside (overrides) all approval rule requirements for a specified
    # pull request.
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID of the pull request for which you want to
    #   override all approval rule requirements. To get this information, use
    #   GetPullRequest.
    #
    # @option params [required, String] :revision_id
    #   The system-generated ID of the most recent revision of the pull
    #   request. You cannot override approval rules for anything but the most
    #   recent revision of a pull request. To get the revision ID, use
    #   GetPullRequest.
    #
    # @option params [required, String] :override_status
    #   Whether you want to set aside approval rule requirements for the pull
    #   request (OVERRIDE) or revoke a previous override and apply approval
    #   rule requirements (REVOKE). REVOKE status is not stored.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.override_pull_request_approval_rules({
    #     pull_request_id: "PullRequestId", # required
    #     revision_id: "RevisionId", # required
    #     override_status: "OVERRIDE", # required, accepts OVERRIDE, REVOKE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/OverridePullRequestApprovalRules AWS API Documentation
    #
    # @overload override_pull_request_approval_rules(params = {})
    # @param [Hash] params ({})
    def override_pull_request_approval_rules(params = {}, options = {})
      req = build_request(:override_pull_request_approval_rules, params)
      req.send_request(options)
    end

    # Posts a comment on the comparison between two commits.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where you want to post a comment on the
    #   comparison between commits.
    #
    # @option params [String] :before_commit_id
    #   To establish the directionality of the comparison, the full commit ID
    #   of the before commit. Required for commenting on any commit unless
    #   that commit is the initial commit.
    #
    # @option params [required, String] :after_commit_id
    #   To establish the directionality of the comparison, the full commit ID
    #   of the after commit.
    #
    # @option params [Types::Location] :location
    #   The location of the comparison where you want to comment.
    #
    # @option params [required, String] :content
    #   The content of the comment you want to make.
    #
    # @option params [String] :client_request_token
    #   A unique, client-generated idempotency token that, when provided in a
    #   request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request returns information about the initial
    #   request that used that token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::PostCommentForComparedCommitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PostCommentForComparedCommitOutput#repository_name #repository_name} => String
    #   * {Types::PostCommentForComparedCommitOutput#before_commit_id #before_commit_id} => String
    #   * {Types::PostCommentForComparedCommitOutput#after_commit_id #after_commit_id} => String
    #   * {Types::PostCommentForComparedCommitOutput#before_blob_id #before_blob_id} => String
    #   * {Types::PostCommentForComparedCommitOutput#after_blob_id #after_blob_id} => String
    #   * {Types::PostCommentForComparedCommitOutput#location #location} => Types::Location
    #   * {Types::PostCommentForComparedCommitOutput#comment #comment} => Types::Comment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_comment_for_compared_commit({
    #     repository_name: "RepositoryName", # required
    #     before_commit_id: "CommitId",
    #     after_commit_id: "CommitId", # required
    #     location: {
    #       file_path: "Path",
    #       file_position: 1,
    #       relative_file_version: "BEFORE", # accepts BEFORE, AFTER
    #     },
    #     content: "Content", # required
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_name #=> String
    #   resp.before_commit_id #=> String
    #   resp.after_commit_id #=> String
    #   resp.before_blob_id #=> String
    #   resp.after_blob_id #=> String
    #   resp.location.file_path #=> String
    #   resp.location.file_position #=> Integer
    #   resp.location.relative_file_version #=> String, one of "BEFORE", "AFTER"
    #   resp.comment.comment_id #=> String
    #   resp.comment.content #=> String
    #   resp.comment.in_reply_to #=> String
    #   resp.comment.creation_date #=> Time
    #   resp.comment.last_modified_date #=> Time
    #   resp.comment.author_arn #=> String
    #   resp.comment.deleted #=> Boolean
    #   resp.comment.client_request_token #=> String
    #   resp.comment.caller_reactions #=> Array
    #   resp.comment.caller_reactions[0] #=> String
    #   resp.comment.reaction_counts #=> Hash
    #   resp.comment.reaction_counts["ReactionValue"] #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PostCommentForComparedCommit AWS API Documentation
    #
    # @overload post_comment_for_compared_commit(params = {})
    # @param [Hash] params ({})
    def post_comment_for_compared_commit(params = {}, options = {})
      req = build_request(:post_comment_for_compared_commit, params)
      req.send_request(options)
    end

    # Posts a comment on a pull request.
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where you want to post a comment on a pull
    #   request.
    #
    # @option params [required, String] :before_commit_id
    #   The full commit ID of the commit in the destination branch that was
    #   the tip of the branch at the time the pull request was created.
    #
    # @option params [required, String] :after_commit_id
    #   The full commit ID of the commit in the source branch that is the
    #   current tip of the branch for the pull request when you post the
    #   comment.
    #
    # @option params [Types::Location] :location
    #   The location of the change where you want to post your comment. If no
    #   location is provided, the comment is posted as a general comment on
    #   the pull request difference between the before commit ID and the after
    #   commit ID.
    #
    # @option params [required, String] :content
    #   The content of your comment on the change.
    #
    # @option params [String] :client_request_token
    #   A unique, client-generated idempotency token that, when provided in a
    #   request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request returns information about the initial
    #   request that used that token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::PostCommentForPullRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PostCommentForPullRequestOutput#repository_name #repository_name} => String
    #   * {Types::PostCommentForPullRequestOutput#pull_request_id #pull_request_id} => String
    #   * {Types::PostCommentForPullRequestOutput#before_commit_id #before_commit_id} => String
    #   * {Types::PostCommentForPullRequestOutput#after_commit_id #after_commit_id} => String
    #   * {Types::PostCommentForPullRequestOutput#before_blob_id #before_blob_id} => String
    #   * {Types::PostCommentForPullRequestOutput#after_blob_id #after_blob_id} => String
    #   * {Types::PostCommentForPullRequestOutput#location #location} => Types::Location
    #   * {Types::PostCommentForPullRequestOutput#comment #comment} => Types::Comment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_comment_for_pull_request({
    #     pull_request_id: "PullRequestId", # required
    #     repository_name: "RepositoryName", # required
    #     before_commit_id: "CommitId", # required
    #     after_commit_id: "CommitId", # required
    #     location: {
    #       file_path: "Path",
    #       file_position: 1,
    #       relative_file_version: "BEFORE", # accepts BEFORE, AFTER
    #     },
    #     content: "Content", # required
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_name #=> String
    #   resp.pull_request_id #=> String
    #   resp.before_commit_id #=> String
    #   resp.after_commit_id #=> String
    #   resp.before_blob_id #=> String
    #   resp.after_blob_id #=> String
    #   resp.location.file_path #=> String
    #   resp.location.file_position #=> Integer
    #   resp.location.relative_file_version #=> String, one of "BEFORE", "AFTER"
    #   resp.comment.comment_id #=> String
    #   resp.comment.content #=> String
    #   resp.comment.in_reply_to #=> String
    #   resp.comment.creation_date #=> Time
    #   resp.comment.last_modified_date #=> Time
    #   resp.comment.author_arn #=> String
    #   resp.comment.deleted #=> Boolean
    #   resp.comment.client_request_token #=> String
    #   resp.comment.caller_reactions #=> Array
    #   resp.comment.caller_reactions[0] #=> String
    #   resp.comment.reaction_counts #=> Hash
    #   resp.comment.reaction_counts["ReactionValue"] #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PostCommentForPullRequest AWS API Documentation
    #
    # @overload post_comment_for_pull_request(params = {})
    # @param [Hash] params ({})
    def post_comment_for_pull_request(params = {}, options = {})
      req = build_request(:post_comment_for_pull_request, params)
      req.send_request(options)
    end

    # Posts a comment in reply to an existing comment on a comparison
    # between commits or a pull request.
    #
    # @option params [required, String] :in_reply_to
    #   The system-generated ID of the comment to which you want to reply. To
    #   get this ID, use GetCommentsForComparedCommit or
    #   GetCommentsForPullRequest.
    #
    # @option params [String] :client_request_token
    #   A unique, client-generated idempotency token that, when provided in a
    #   request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request returns information about the initial
    #   request that used that token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :content
    #   The contents of your reply to a comment.
    #
    # @return [Types::PostCommentReplyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PostCommentReplyOutput#comment #comment} => Types::Comment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_comment_reply({
    #     in_reply_to: "CommentId", # required
    #     client_request_token: "ClientRequestToken",
    #     content: "Content", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.comment.comment_id #=> String
    #   resp.comment.content #=> String
    #   resp.comment.in_reply_to #=> String
    #   resp.comment.creation_date #=> Time
    #   resp.comment.last_modified_date #=> Time
    #   resp.comment.author_arn #=> String
    #   resp.comment.deleted #=> Boolean
    #   resp.comment.client_request_token #=> String
    #   resp.comment.caller_reactions #=> Array
    #   resp.comment.caller_reactions[0] #=> String
    #   resp.comment.reaction_counts #=> Hash
    #   resp.comment.reaction_counts["ReactionValue"] #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PostCommentReply AWS API Documentation
    #
    # @overload post_comment_reply(params = {})
    # @param [Hash] params ({})
    def post_comment_reply(params = {}, options = {})
      req = build_request(:post_comment_reply, params)
      req.send_request(options)
    end

    # Adds or updates a reaction to a specified comment for the user whose
    # identity is used to make the request. You can only add or update a
    # reaction for yourself. You cannot add, modify, or delete a reaction
    # for another user.
    #
    # @option params [required, String] :comment_id
    #   The ID of the comment to which you want to add or update a reaction.
    #
    # @option params [required, String] :reaction_value
    #   The emoji reaction you want to add or update. To remove a reaction,
    #   provide a value of blank or null. You can also provide the value of
    #   none. For information about emoji reaction values supported in AWS
    #   CodeCommit, see the [AWS CodeCommit User Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/how-to-commit-comment.html#emoji-reaction-table
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_comment_reaction({
    #     comment_id: "CommentId", # required
    #     reaction_value: "ReactionValue", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PutCommentReaction AWS API Documentation
    #
    # @overload put_comment_reaction(params = {})
    # @param [Hash] params ({})
    def put_comment_reaction(params = {}, options = {})
      req = build_request(:put_comment_reaction, params)
      req.send_request(options)
    end

    # Adds or updates a file in a branch in an AWS CodeCommit repository,
    # and generates a commit for the addition in the specified branch.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where you want to add or update the file.
    #
    # @option params [required, String] :branch_name
    #   The name of the branch where you want to add or update the file. If
    #   this is an empty repository, this branch is created.
    #
    # @option params [required, String, StringIO, File] :file_content
    #   The content of the file, in binary object format.
    #
    # @option params [required, String] :file_path
    #   The name of the file you want to add or update, including the relative
    #   path to the file in the repository.
    #
    #   <note markdown="1"> If the path does not currently exist in the repository, the path is
    #   created as part of adding the file.
    #
    #    </note>
    #
    # @option params [String] :file_mode
    #   The file mode permissions of the blob. Valid file mode permissions are
    #   listed here.
    #
    # @option params [String] :parent_commit_id
    #   The full commit ID of the head commit in the branch where you want to
    #   add or update the file. If this is an empty repository, no commit ID
    #   is required. If this is not an empty repository, a commit ID is
    #   required.
    #
    #   The commit ID must match the ID of the head commit at the time of the
    #   operation. Otherwise, an error occurs, and the file is not added or
    #   updated.
    #
    # @option params [String] :commit_message
    #   A message about why this file was added or updated. Although it is
    #   optional, a message makes the commit history for your repository more
    #   useful.
    #
    # @option params [String] :name
    #   The name of the person adding or updating the file. Although it is
    #   optional, a name makes the commit history for your repository more
    #   useful.
    #
    # @option params [String] :email
    #   An email address for the person adding or updating the file.
    #
    # @return [Types::PutFileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutFileOutput#commit_id #commit_id} => String
    #   * {Types::PutFileOutput#blob_id #blob_id} => String
    #   * {Types::PutFileOutput#tree_id #tree_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_file({
    #     repository_name: "RepositoryName", # required
    #     branch_name: "BranchName", # required
    #     file_content: "data", # required
    #     file_path: "Path", # required
    #     file_mode: "EXECUTABLE", # accepts EXECUTABLE, NORMAL, SYMLINK
    #     parent_commit_id: "CommitId",
    #     commit_message: "Message",
    #     name: "Name",
    #     email: "Email",
    #   })
    #
    # @example Response structure
    #
    #   resp.commit_id #=> String
    #   resp.blob_id #=> String
    #   resp.tree_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PutFile AWS API Documentation
    #
    # @overload put_file(params = {})
    # @param [Hash] params ({})
    def put_file(params = {}, options = {})
      req = build_request(:put_file, params)
      req.send_request(options)
    end

    # Replaces all triggers for a repository. Used to create or delete
    # triggers.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where you want to create or update the
    #   trigger.
    #
    # @option params [required, Array<Types::RepositoryTrigger>] :triggers
    #   The JSON block of configuration information for each trigger.
    #
    # @return [Types::PutRepositoryTriggersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRepositoryTriggersOutput#configuration_id #configuration_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_repository_triggers({
    #     repository_name: "RepositoryName", # required
    #     triggers: [ # required
    #       {
    #         name: "RepositoryTriggerName", # required
    #         destination_arn: "Arn", # required
    #         custom_data: "RepositoryTriggerCustomData",
    #         branches: ["BranchName"],
    #         events: ["all"], # required, accepts all, updateReference, createReference, deleteReference
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PutRepositoryTriggers AWS API Documentation
    #
    # @overload put_repository_triggers(params = {})
    # @param [Hash] params ({})
    def put_repository_triggers(params = {}, options = {})
      req = build_request(:put_repository_triggers, params)
      req.send_request(options)
    end

    # Adds or updates tags for a resource in AWS CodeCommit. For a list of
    # valid resources in AWS CodeCommit, see [CodeCommit Resources and
    # Operations][1] in the *AWS CodeCommit User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which you want to
    #   add or update tags.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The key-value pair to use when tagging this repository.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Tests the functionality of repository triggers by sending information
    # to the trigger target. If real data is available in the repository,
    # the test sends data from the last commit. If no data is available,
    # sample data is generated.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository in which to test the triggers.
    #
    # @option params [required, Array<Types::RepositoryTrigger>] :triggers
    #   The list of triggers to test.
    #
    # @return [Types::TestRepositoryTriggersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestRepositoryTriggersOutput#successful_executions #successful_executions} => Array&lt;String&gt;
    #   * {Types::TestRepositoryTriggersOutput#failed_executions #failed_executions} => Array&lt;Types::RepositoryTriggerExecutionFailure&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_repository_triggers({
    #     repository_name: "RepositoryName", # required
    #     triggers: [ # required
    #       {
    #         name: "RepositoryTriggerName", # required
    #         destination_arn: "Arn", # required
    #         custom_data: "RepositoryTriggerCustomData",
    #         branches: ["BranchName"],
    #         events: ["all"], # required, accepts all, updateReference, createReference, deleteReference
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_executions #=> Array
    #   resp.successful_executions[0] #=> String
    #   resp.failed_executions #=> Array
    #   resp.failed_executions[0].trigger #=> String
    #   resp.failed_executions[0].failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/TestRepositoryTriggers AWS API Documentation
    #
    # @overload test_repository_triggers(params = {})
    # @param [Hash] params ({})
    def test_repository_triggers(params = {}, options = {})
      req = build_request(:test_repository_triggers, params)
      req.send_request(options)
    end

    # Removes tags for a resource in AWS CodeCommit. For a list of valid
    # resources in AWS CodeCommit, see [CodeCommit Resources and
    # Operations][1] in the *AWS CodeCommit User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which you want to
    #   remove tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag key for each tag that you want to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the content of an approval rule template. You can change the
    # number of required approvals, the membership of the approval rule, and
    # whether an approval pool is defined.
    #
    # @option params [required, String] :approval_rule_template_name
    #   The name of the approval rule template where you want to update the
    #   content of the rule.
    #
    # @option params [required, String] :new_rule_content
    #   The content that replaces the existing content of the rule. Content
    #   statements must be complete. You cannot provide only the changes.
    #
    # @option params [String] :existing_rule_content_sha_256
    #   The SHA-256 hash signature for the content of the approval rule. You
    #   can retrieve this information by using GetPullRequest.
    #
    # @return [Types::UpdateApprovalRuleTemplateContentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApprovalRuleTemplateContentOutput#approval_rule_template #approval_rule_template} => Types::ApprovalRuleTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_approval_rule_template_content({
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     new_rule_content: "ApprovalRuleTemplateContent", # required
    #     existing_rule_content_sha_256: "RuleContentSha256",
    #   })
    #
    # @example Response structure
    #
    #   resp.approval_rule_template.approval_rule_template_id #=> String
    #   resp.approval_rule_template.approval_rule_template_name #=> String
    #   resp.approval_rule_template.approval_rule_template_description #=> String
    #   resp.approval_rule_template.approval_rule_template_content #=> String
    #   resp.approval_rule_template.rule_content_sha_256 #=> String
    #   resp.approval_rule_template.last_modified_date #=> Time
    #   resp.approval_rule_template.creation_date #=> Time
    #   resp.approval_rule_template.last_modified_user #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateApprovalRuleTemplateContent AWS API Documentation
    #
    # @overload update_approval_rule_template_content(params = {})
    # @param [Hash] params ({})
    def update_approval_rule_template_content(params = {}, options = {})
      req = build_request(:update_approval_rule_template_content, params)
      req.send_request(options)
    end

    # Updates the description for a specified approval rule template.
    #
    # @option params [required, String] :approval_rule_template_name
    #   The name of the template for which you want to update the description.
    #
    # @option params [required, String] :approval_rule_template_description
    #   The updated description of the approval rule template.
    #
    # @return [Types::UpdateApprovalRuleTemplateDescriptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApprovalRuleTemplateDescriptionOutput#approval_rule_template #approval_rule_template} => Types::ApprovalRuleTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_approval_rule_template_description({
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     approval_rule_template_description: "ApprovalRuleTemplateDescription", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.approval_rule_template.approval_rule_template_id #=> String
    #   resp.approval_rule_template.approval_rule_template_name #=> String
    #   resp.approval_rule_template.approval_rule_template_description #=> String
    #   resp.approval_rule_template.approval_rule_template_content #=> String
    #   resp.approval_rule_template.rule_content_sha_256 #=> String
    #   resp.approval_rule_template.last_modified_date #=> Time
    #   resp.approval_rule_template.creation_date #=> Time
    #   resp.approval_rule_template.last_modified_user #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateApprovalRuleTemplateDescription AWS API Documentation
    #
    # @overload update_approval_rule_template_description(params = {})
    # @param [Hash] params ({})
    def update_approval_rule_template_description(params = {}, options = {})
      req = build_request(:update_approval_rule_template_description, params)
      req.send_request(options)
    end

    # Updates the name of a specified approval rule template.
    #
    # @option params [required, String] :old_approval_rule_template_name
    #   The current name of the approval rule template.
    #
    # @option params [required, String] :new_approval_rule_template_name
    #   The new name you want to apply to the approval rule template.
    #
    # @return [Types::UpdateApprovalRuleTemplateNameOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApprovalRuleTemplateNameOutput#approval_rule_template #approval_rule_template} => Types::ApprovalRuleTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_approval_rule_template_name({
    #     old_approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     new_approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.approval_rule_template.approval_rule_template_id #=> String
    #   resp.approval_rule_template.approval_rule_template_name #=> String
    #   resp.approval_rule_template.approval_rule_template_description #=> String
    #   resp.approval_rule_template.approval_rule_template_content #=> String
    #   resp.approval_rule_template.rule_content_sha_256 #=> String
    #   resp.approval_rule_template.last_modified_date #=> Time
    #   resp.approval_rule_template.creation_date #=> Time
    #   resp.approval_rule_template.last_modified_user #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateApprovalRuleTemplateName AWS API Documentation
    #
    # @overload update_approval_rule_template_name(params = {})
    # @param [Hash] params ({})
    def update_approval_rule_template_name(params = {}, options = {})
      req = build_request(:update_approval_rule_template_name, params)
      req.send_request(options)
    end

    # Replaces the contents of a comment.
    #
    # @option params [required, String] :comment_id
    #   The system-generated ID of the comment you want to update. To get this
    #   ID, use GetCommentsForComparedCommit or GetCommentsForPullRequest.
    #
    # @option params [required, String] :content
    #   The updated content to replace the existing content of the comment.
    #
    # @return [Types::UpdateCommentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCommentOutput#comment #comment} => Types::Comment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_comment({
    #     comment_id: "CommentId", # required
    #     content: "Content", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.comment.comment_id #=> String
    #   resp.comment.content #=> String
    #   resp.comment.in_reply_to #=> String
    #   resp.comment.creation_date #=> Time
    #   resp.comment.last_modified_date #=> Time
    #   resp.comment.author_arn #=> String
    #   resp.comment.deleted #=> Boolean
    #   resp.comment.client_request_token #=> String
    #   resp.comment.caller_reactions #=> Array
    #   resp.comment.caller_reactions[0] #=> String
    #   resp.comment.reaction_counts #=> Hash
    #   resp.comment.reaction_counts["ReactionValue"] #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateComment AWS API Documentation
    #
    # @overload update_comment(params = {})
    # @param [Hash] params ({})
    def update_comment(params = {}, options = {})
      req = build_request(:update_comment, params)
      req.send_request(options)
    end

    # Sets or changes the default branch name for the specified repository.
    #
    # <note markdown="1"> If you use this operation to change the default branch name to the
    # current default branch name, a success message is returned even though
    # the default branch did not change.
    #
    #  </note>
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to set or change the default branch for.
    #
    # @option params [required, String] :default_branch_name
    #   The name of the branch to set as the default.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_default_branch({
    #     repository_name: "RepositoryName", # required
    #     default_branch_name: "BranchName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateDefaultBranch AWS API Documentation
    #
    # @overload update_default_branch(params = {})
    # @param [Hash] params ({})
    def update_default_branch(params = {}, options = {})
      req = build_request(:update_default_branch, params)
      req.send_request(options)
    end

    # Updates the structure of an approval rule created specifically for a
    # pull request. For example, you can change the number of required
    # approvers and the approval pool for approvers.
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID of the pull request.
    #
    # @option params [required, String] :approval_rule_name
    #   The name of the approval rule you want to update.
    #
    # @option params [String] :existing_rule_content_sha_256
    #   The SHA-256 hash signature for the content of the approval rule. You
    #   can retrieve this information by using GetPullRequest.
    #
    # @option params [required, String] :new_rule_content
    #   The updated content for the approval rule.
    #
    #   <note markdown="1"> When you update the content of the approval rule, you can specify
    #   approvers in an approval pool in one of two ways:
    #
    #    * **CodeCommitApprovers**\: This option only requires an AWS account
    #     and a resource. It can be used for both IAM users and federated
    #     access users whose name matches the provided resource name. This is
    #     a very powerful option that offers a great deal of flexibility. For
    #     example, if you specify the AWS account *123456789012* and
    #     *Mary\_Major*, all of the following are counted as approvals coming
    #     from that user:
    #
    #     * An IAM user in the account
    #       (arn:aws:iam::*123456789012*\:user/*Mary\_Major*)
    #
    #     * A federated user identified in IAM as Mary\_Major
    #       (arn:aws:sts::*123456789012*\:federated-user/*Mary\_Major*)
    #
    #     This option does not recognize an active session of someone assuming
    #     the role of CodeCommitReview with a role session name of
    #     *Mary\_Major*
    #     (arn:aws:sts::*123456789012*\:assumed-role/CodeCommitReview/*Mary\_Major*)
    #     unless you include a wildcard (*Mary\_Major).
    #
    #   * **Fully qualified ARN**\: This option allows you to specify the
    #     fully qualified Amazon Resource Name (ARN) of the IAM user or role.
    #
    #    For more information about IAM ARNs, wildcards, and formats, see [IAM
    #   Identifiers][1] in the *IAM User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #
    # @return [Types::UpdatePullRequestApprovalRuleContentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePullRequestApprovalRuleContentOutput#approval_rule #approval_rule} => Types::ApprovalRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pull_request_approval_rule_content({
    #     pull_request_id: "PullRequestId", # required
    #     approval_rule_name: "ApprovalRuleName", # required
    #     existing_rule_content_sha_256: "RuleContentSha256",
    #     new_rule_content: "ApprovalRuleContent", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.approval_rule.approval_rule_id #=> String
    #   resp.approval_rule.approval_rule_name #=> String
    #   resp.approval_rule.approval_rule_content #=> String
    #   resp.approval_rule.rule_content_sha_256 #=> String
    #   resp.approval_rule.last_modified_date #=> Time
    #   resp.approval_rule.creation_date #=> Time
    #   resp.approval_rule.last_modified_user #=> String
    #   resp.approval_rule.origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.approval_rule.origin_approval_rule_template.approval_rule_template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestApprovalRuleContent AWS API Documentation
    #
    # @overload update_pull_request_approval_rule_content(params = {})
    # @param [Hash] params ({})
    def update_pull_request_approval_rule_content(params = {}, options = {})
      req = build_request(:update_pull_request_approval_rule_content, params)
      req.send_request(options)
    end

    # Updates the state of a user's approval on a pull request. The user is
    # derived from the signed-in account when the request is made.
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID of the pull request.
    #
    # @option params [required, String] :revision_id
    #   The system-generated ID of the revision.
    #
    # @option params [required, String] :approval_state
    #   The approval state to associate with the user on the pull request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pull_request_approval_state({
    #     pull_request_id: "PullRequestId", # required
    #     revision_id: "RevisionId", # required
    #     approval_state: "APPROVE", # required, accepts APPROVE, REVOKE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestApprovalState AWS API Documentation
    #
    # @overload update_pull_request_approval_state(params = {})
    # @param [Hash] params ({})
    def update_pull_request_approval_state(params = {}, options = {})
      req = build_request(:update_pull_request_approval_state, params)
      req.send_request(options)
    end

    # Replaces the contents of the description of a pull request.
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #
    # @option params [required, String] :description
    #   The updated content of the description for the pull request. This
    #   content replaces the existing description.
    #
    # @return [Types::UpdatePullRequestDescriptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePullRequestDescriptionOutput#pull_request #pull_request} => Types::PullRequest
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pull_request_description({
    #     pull_request_id: "PullRequestId", # required
    #     description: "Description", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pull_request.pull_request_id #=> String
    #   resp.pull_request.title #=> String
    #   resp.pull_request.description #=> String
    #   resp.pull_request.last_activity_date #=> Time
    #   resp.pull_request.creation_date #=> Time
    #   resp.pull_request.pull_request_status #=> String, one of "OPEN", "CLOSED"
    #   resp.pull_request.author_arn #=> String
    #   resp.pull_request.pull_request_targets #=> Array
    #   resp.pull_request.pull_request_targets[0].repository_name #=> String
    #   resp.pull_request.pull_request_targets[0].source_reference #=> String
    #   resp.pull_request.pull_request_targets[0].destination_reference #=> String
    #   resp.pull_request.pull_request_targets[0].destination_commit #=> String
    #   resp.pull_request.pull_request_targets[0].source_commit #=> String
    #   resp.pull_request.pull_request_targets[0].merge_base #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.is_merged #=> Boolean
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merged_by #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merge_commit_id #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merge_option #=> String, one of "FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"
    #   resp.pull_request.client_request_token #=> String
    #   resp.pull_request.revision_id #=> String
    #   resp.pull_request.approval_rules #=> Array
    #   resp.pull_request.approval_rules[0].approval_rule_id #=> String
    #   resp.pull_request.approval_rules[0].approval_rule_name #=> String
    #   resp.pull_request.approval_rules[0].approval_rule_content #=> String
    #   resp.pull_request.approval_rules[0].rule_content_sha_256 #=> String
    #   resp.pull_request.approval_rules[0].last_modified_date #=> Time
    #   resp.pull_request.approval_rules[0].creation_date #=> Time
    #   resp.pull_request.approval_rules[0].last_modified_user #=> String
    #   resp.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestDescription AWS API Documentation
    #
    # @overload update_pull_request_description(params = {})
    # @param [Hash] params ({})
    def update_pull_request_description(params = {}, options = {})
      req = build_request(:update_pull_request_description, params)
      req.send_request(options)
    end

    # Updates the status of a pull request.
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #
    # @option params [required, String] :pull_request_status
    #   The status of the pull request. The only valid operations are to
    #   update the status from `OPEN` to `OPEN`, `OPEN` to `CLOSED` or from
    #   `CLOSED` to `CLOSED`.
    #
    # @return [Types::UpdatePullRequestStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePullRequestStatusOutput#pull_request #pull_request} => Types::PullRequest
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pull_request_status({
    #     pull_request_id: "PullRequestId", # required
    #     pull_request_status: "OPEN", # required, accepts OPEN, CLOSED
    #   })
    #
    # @example Response structure
    #
    #   resp.pull_request.pull_request_id #=> String
    #   resp.pull_request.title #=> String
    #   resp.pull_request.description #=> String
    #   resp.pull_request.last_activity_date #=> Time
    #   resp.pull_request.creation_date #=> Time
    #   resp.pull_request.pull_request_status #=> String, one of "OPEN", "CLOSED"
    #   resp.pull_request.author_arn #=> String
    #   resp.pull_request.pull_request_targets #=> Array
    #   resp.pull_request.pull_request_targets[0].repository_name #=> String
    #   resp.pull_request.pull_request_targets[0].source_reference #=> String
    #   resp.pull_request.pull_request_targets[0].destination_reference #=> String
    #   resp.pull_request.pull_request_targets[0].destination_commit #=> String
    #   resp.pull_request.pull_request_targets[0].source_commit #=> String
    #   resp.pull_request.pull_request_targets[0].merge_base #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.is_merged #=> Boolean
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merged_by #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merge_commit_id #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merge_option #=> String, one of "FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"
    #   resp.pull_request.client_request_token #=> String
    #   resp.pull_request.revision_id #=> String
    #   resp.pull_request.approval_rules #=> Array
    #   resp.pull_request.approval_rules[0].approval_rule_id #=> String
    #   resp.pull_request.approval_rules[0].approval_rule_name #=> String
    #   resp.pull_request.approval_rules[0].approval_rule_content #=> String
    #   resp.pull_request.approval_rules[0].rule_content_sha_256 #=> String
    #   resp.pull_request.approval_rules[0].last_modified_date #=> Time
    #   resp.pull_request.approval_rules[0].creation_date #=> Time
    #   resp.pull_request.approval_rules[0].last_modified_user #=> String
    #   resp.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestStatus AWS API Documentation
    #
    # @overload update_pull_request_status(params = {})
    # @param [Hash] params ({})
    def update_pull_request_status(params = {}, options = {})
      req = build_request(:update_pull_request_status, params)
      req.send_request(options)
    end

    # Replaces the title of a pull request.
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #
    # @option params [required, String] :title
    #   The updated title of the pull request. This replaces the existing
    #   title.
    #
    # @return [Types::UpdatePullRequestTitleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePullRequestTitleOutput#pull_request #pull_request} => Types::PullRequest
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pull_request_title({
    #     pull_request_id: "PullRequestId", # required
    #     title: "Title", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pull_request.pull_request_id #=> String
    #   resp.pull_request.title #=> String
    #   resp.pull_request.description #=> String
    #   resp.pull_request.last_activity_date #=> Time
    #   resp.pull_request.creation_date #=> Time
    #   resp.pull_request.pull_request_status #=> String, one of "OPEN", "CLOSED"
    #   resp.pull_request.author_arn #=> String
    #   resp.pull_request.pull_request_targets #=> Array
    #   resp.pull_request.pull_request_targets[0].repository_name #=> String
    #   resp.pull_request.pull_request_targets[0].source_reference #=> String
    #   resp.pull_request.pull_request_targets[0].destination_reference #=> String
    #   resp.pull_request.pull_request_targets[0].destination_commit #=> String
    #   resp.pull_request.pull_request_targets[0].source_commit #=> String
    #   resp.pull_request.pull_request_targets[0].merge_base #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.is_merged #=> Boolean
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merged_by #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merge_commit_id #=> String
    #   resp.pull_request.pull_request_targets[0].merge_metadata.merge_option #=> String, one of "FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"
    #   resp.pull_request.client_request_token #=> String
    #   resp.pull_request.revision_id #=> String
    #   resp.pull_request.approval_rules #=> Array
    #   resp.pull_request.approval_rules[0].approval_rule_id #=> String
    #   resp.pull_request.approval_rules[0].approval_rule_name #=> String
    #   resp.pull_request.approval_rules[0].approval_rule_content #=> String
    #   resp.pull_request.approval_rules[0].rule_content_sha_256 #=> String
    #   resp.pull_request.approval_rules[0].last_modified_date #=> Time
    #   resp.pull_request.approval_rules[0].creation_date #=> Time
    #   resp.pull_request.approval_rules[0].last_modified_user #=> String
    #   resp.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestTitle AWS API Documentation
    #
    # @overload update_pull_request_title(params = {})
    # @param [Hash] params ({})
    def update_pull_request_title(params = {}, options = {})
      req = build_request(:update_pull_request_title, params)
      req.send_request(options)
    end

    # Sets or changes the comment or description for a repository.
    #
    # <note markdown="1"> The description field for a repository accepts all HTML characters and
    # all valid Unicode characters. Applications that do not HTML-encode the
    # description and display it in a webpage can expose users to
    # potentially malicious code. Make sure that you HTML-encode the
    # description field in any application that uses this API to display the
    # repository description on a webpage.
    #
    #  </note>
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to set or change the comment or description
    #   for.
    #
    # @option params [String] :repository_description
    #   The new comment or description for the specified repository.
    #   Repository descriptions are limited to 1,000 characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_repository_description({
    #     repository_name: "RepositoryName", # required
    #     repository_description: "RepositoryDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateRepositoryDescription AWS API Documentation
    #
    # @overload update_repository_description(params = {})
    # @param [Hash] params ({})
    def update_repository_description(params = {}, options = {})
      req = build_request(:update_repository_description, params)
      req.send_request(options)
    end

    # Renames a repository. The repository name must be unique across the
    # calling AWS account. Repository names are limited to 100 alphanumeric,
    # dash, and underscore characters, and cannot include certain
    # characters. The suffix .git is prohibited. For more information about
    # the limits on repository names, see [Limits][1] in the AWS CodeCommit
    # User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html
    #
    # @option params [required, String] :old_name
    #   The current name of the repository.
    #
    # @option params [required, String] :new_name
    #   The new name for the repository.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_repository_name({
    #     old_name: "RepositoryName", # required
    #     new_name: "RepositoryName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateRepositoryName AWS API Documentation
    #
    # @overload update_repository_name(params = {})
    # @param [Hash] params ({})
    def update_repository_name(params = {}, options = {})
      req = build_request(:update_repository_name, params)
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
      context[:gem_name] = 'aws-sdk-codecommit'
      context[:gem_version] = '1.40.0'
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
