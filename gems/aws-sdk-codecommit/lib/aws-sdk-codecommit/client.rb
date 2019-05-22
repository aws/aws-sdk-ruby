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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:codecommit)

module Aws::CodeCommit
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

    # Returns information about one or more repositories.
    #
    # <note markdown="1"> The description field for a repository accepts all HTML characters and
    # all valid Unicode characters. Applications that do not HTML-encode the
    # description and display it in a web page could expose users to
    # potentially malicious code. Make sure that you HTML-encode the
    # description field in any application that uses this API to display the
    # repository description on a web page.
    #
    #  </note>
    #
    # @option params [required, Array<String>] :repository_names
    #   The names of the repositories to get information about.
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

    # Creates a new branch in a repository and points the branch to a
    # commit.
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
    #   The name of the repository where you will create the commit.
    #
    # @option params [required, String] :branch_name
    #   The name of the branch where you will create the commit.
    #
    # @option params [String] :parent_commit_id
    #   The ID of the commit that is the parent of the commit you will create.
    #   If this is an empty repository, this is not required.
    #
    # @option params [String] :author_name
    #   The name of the author who created the commit. This information will
    #   be used as both the author and committer for the commit.
    #
    # @option params [String] :email
    #   The email address of the person who created the commit.
    #
    # @option params [String] :commit_message
    #   The commit message you want to include as part of creating the commit.
    #   Commit messages are limited to 256 KB. If no message is specified, a
    #   default message will be used.
    #
    # @option params [Boolean] :keep_empty_folders
    #   If the commit contains deletions, whether to keep a folder or folder
    #   structure if the changes leave the folders empty. If this is specified
    #   as true, a .gitkeep file will be created for empty folders.
    #
    # @option params [Array<Types::PutFileEntry>] :put_files
    #   The files to add or update in this commit.
    #
    # @option params [Array<Types::DeleteFileEntry>] :delete_files
    #   The files to delete in this commit. These files will still exist in
    #   prior commits.
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
    #   The title of the pull request. This title will be used to identify the
    #   pull request to other users in the repository.
    #
    # @option params [String] :description
    #   A description of the pull request.
    #
    # @option params [required, Array<Types::Target>] :targets
    #   The targets for the pull request, including the source of the code to
    #   be reviewed (the source branch), and the destination where the creator
    #   of the pull request intends the code to be merged after the pull
    #   request is closed (the destination branch).
    #
    # @option params [String] :client_request_token
    #   A unique, client-generated idempotency token that when provided in a
    #   request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request will return information about the
    #   initial request that used that token.
    #
    #   <note markdown="1"> The AWS SDKs prepopulate client request tokens. If using an AWS SDK,
    #   you do not have to generate an idempotency token, as this will be done
    #   for you.
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
    #   resp.pull_request.client_request_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreatePullRequest AWS API Documentation
    #
    # @overload create_pull_request(params = {})
    # @param [Hash] params ({})
    def create_pull_request(params = {}, options = {})
      req = build_request(:create_pull_request, params)
      req.send_request(options)
    end

    # Creates a new, empty repository.
    #
    # @option params [required, String] :repository_name
    #   The name of the new repository to be created.
    #
    #   <note markdown="1"> The repository name must be unique across the calling AWS account. In
    #   addition, repository names are limited to 100 alphanumeric, dash, and
    #   underscore characters, and cannot include certain characters. For a
    #   full description of the limits on repository names, see [Limits][1] in
    #   the AWS CodeCommit User Guide. The suffix ".git" is prohibited.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html
    #
    # @option params [String] :repository_description
    #   A comment or description about the new repository.
    #
    #   <note markdown="1"> The description field for a repository accepts all HTML characters and
    #   all valid Unicode characters. Applications that do not HTML-encode the
    #   description and display it in a web page could expose users to
    #   potentially malicious code. Make sure that you HTML-encode the
    #   description field in any application that uses this API to display the
    #   repository description on a web page.
    #
    #    </note>
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
    # on the branch that contains the revision. The file will still exist in
    # the commits prior to the commit that contains the deletion.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that contains the file to delete.
    #
    # @option params [required, String] :branch_name
    #   The name of the branch where the commit will be made deleting the
    #   file.
    #
    # @option params [required, String] :file_path
    #   The fully-qualified path to the file that will be deleted, including
    #   the full name and extension of that file. For example,
    #   /examples/file.md is a fully qualified path to a file named file.md in
    #   a folder named examples.
    #
    # @option params [required, String] :parent_commit_id
    #   The ID of the commit that is the tip of the branch where you want to
    #   create the commit that will delete the file. This must be the HEAD
    #   commit for the branch. The commit that deletes the file will be
    #   created from this commit ID.
    #
    # @option params [Boolean] :keep_empty_folders
    #   Specifies whether to delete the folder or directory that contains the
    #   file you want to delete if that file is the only object in the folder
    #   or directory. By default, empty folders will be deleted. This includes
    #   empty folders that are part of the directory structure. For example,
    #   if the path to a file is dir1/dir2/dir3/dir4, and dir2 and dir3 are
    #   empty, deleting the last file in dir4 will also delete the empty
    #   folders dir4, dir3, and dir2.
    #
    # @option params [String] :commit_message
    #   The commit message you want to include as part of deleting the file.
    #   Commit messages are limited to 256 KB. If no message is specified, a
    #   default message will be used.
    #
    # @option params [String] :name
    #   The name of the author of the commit that deletes the file. If no name
    #   is specified, the user's ARN will be used as the author name and
    #   committer name.
    #
    # @option params [String] :email
    #   The email address for the commit that deletes the file. If no email
    #   address is specified, the email address will be left blank.
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

    # Deletes a repository. If a specified repository was already deleted, a
    # null repository ID will be returned.
    #
    # Deleting a repository also deletes all associated objects and
    # metadata. After a repository is deleted, all future push calls to the
    # deleted repository will fail.
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
    #   the event. Examples include updating the pull request with additional
    #   commits or changing the status of a pull request.
    #
    # @option params [String] :next_token
    #   An enumeration token that when provided in a request, returns the next
    #   batch of the results.
    #
    # @option params [Integer] :max_results
    #   A non-negative integer used to limit the number of returned results.
    #   The default is 100 events, which is also the maximum number of events
    #   that can be returned in a result.
    #
    # @return [Types::DescribePullRequestEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePullRequestEventsOutput#pull_request_events #pull_request_events} => Array&lt;Types::PullRequestEvent&gt;
    #   * {Types::DescribePullRequestEventsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pull_request_events({
    #     pull_request_id: "PullRequestId", # required
    #     pull_request_event_type: "PULL_REQUEST_CREATED", # accepts PULL_REQUEST_CREATED, PULL_REQUEST_STATUS_CHANGED, PULL_REQUEST_SOURCE_REFERENCE_UPDATED, PULL_REQUEST_MERGE_STATE_CHANGED
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
    #   resp.pull_request_events[0].pull_request_event_type #=> String, one of "PULL_REQUEST_CREATED", "PULL_REQUEST_STATUS_CHANGED", "PULL_REQUEST_SOURCE_REFERENCE_UPDATED", "PULL_REQUEST_MERGE_STATE_CHANGED"
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

    # Returns the base-64 encoded content of an individual blob within a
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetComment AWS API Documentation
    #
    # @overload get_comment(params = {})
    # @param [Hash] params ({})
    def get_comment(params = {}, options = {})
      req = build_request(:get_comment, params)
      req.send_request(options)
    end

    # Returns information about comments made on the comparison between two
    # commits.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where you want to compare commits.
    #
    # @option params [String] :before_commit_id
    #   To establish the directionality of the comparison, the full commit ID
    #   of the 'before' commit.
    #
    # @option params [required, String] :after_commit_id
    #   To establish the directionality of the comparison, the full commit ID
    #   of the 'after' commit.
    #
    # @option params [String] :next_token
    #   An enumeration token that when provided in a request, returns the next
    #   batch of the results.
    #
    # @option params [Integer] :max_results
    #   A non-negative integer used to limit the number of returned results.
    #   The default is 100 comments, and is configurable up to 500.
    #
    # @return [Types::GetCommentsForComparedCommitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCommentsForComparedCommitOutput#comments_for_compared_commit_data #comments_for_compared_commit_data} => Array&lt;Types::CommentsForComparedCommit&gt;
    #   * {Types::GetCommentsForComparedCommitOutput#next_token #next_token} => String
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
    #   An enumeration token that when provided in a request, returns the next
    #   batch of the results.
    #
    # @option params [Integer] :max_results
    #   A non-negative integer used to limit the number of returned results.
    #   The default is 100 comments. You can return up to 500 comments with a
    #   single request.
    #
    # @return [Types::GetCommentsForPullRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCommentsForPullRequestOutput#comments_for_pull_request_data #comments_for_pull_request_data} => Array&lt;Types::CommentsForPullRequest&gt;
    #   * {Types::GetCommentsForPullRequestOutput#next_token #next_token} => String
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
    #   The commit ID. Commit IDs are the full SHA of the commit.
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
    # (such as a branch, tag, HEAD, commit ID or other fully qualified
    # reference). Results can be limited to a specified path.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where you want to get differences.
    #
    # @option params [String] :before_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit. For example, the full commit ID. Optional. If not
    #   specified, all changes prior to the `afterCommitSpecifier` value will
    #   be shown. If you do not use `beforeCommitSpecifier` in your request,
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
    #   specified, differences will be shown for all paths.
    #
    # @option params [String] :after_path
    #   The file path in which to check differences. Limits the results to
    #   this path. Can also be used to specify the changed name of a directory
    #   or folder, if it has changed. If not specified, differences will be
    #   shown for all paths.
    #
    # @option params [Integer] :max_results
    #   A non-negative integer used to limit the number of returned results.
    #
    # @option params [String] :next_token
    #   An enumeration token that when provided in a request, returns the next
    #   batch of the results.
    #
    # @return [Types::GetDifferencesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDifferencesOutput#differences #differences} => Array&lt;Types::Difference&gt;
    #   * {Types::GetDifferencesOutput#next_token #next_token} => String
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
    #   The fully-quaified reference that identifies the commit that contains
    #   the file. For example, you could specify a full commit ID, a tag, a
    #   branch name, or a reference such as refs/heads/master. If none is
    #   provided, then the head commit will be used.
    #
    # @option params [required, String] :file_path
    #   The fully-qualified path to the file, including the full name and
    #   extension of the file. For example, /examples/file.md is the
    #   fully-qualified path to a file named file.md in a folder named
    #   examples.
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
    #   A fully-qualified reference used to identify a commit that contains
    #   the version of the folder's content to return. A fully-qualified
    #   reference can be a commit ID, branch name, tag, or reference such as
    #   HEAD. If no specifier is provided, the folder content will be returned
    #   as it exists in the HEAD commit.
    #
    # @option params [required, String] :folder_path
    #   The fully-qualified path to the folder whose contents will be
    #   returned, including the folder name. For example, /examples is a
    #   fully-qualified path to a folder named examples that was created off
    #   of the root directory (/) of a repository.
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

    # Returns information about merge conflicts between the before and after
    # commit IDs for a pull request in a repository.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository where the pull request was created.
    #
    # @option params [required, String] :destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit. For example, a branch name or a full commit ID.
    #
    # @option params [required, String] :source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit. For example, a branch name or a full commit ID.
    #
    # @option params [required, String] :merge_option
    #   The merge option or strategy you want to use to merge the code. The
    #   only valid value is FAST\_FORWARD\_MERGE.
    #
    # @return [Types::GetMergeConflictsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMergeConflictsOutput#mergeable #mergeable} => Boolean
    #   * {Types::GetMergeConflictsOutput#destination_commit_id #destination_commit_id} => String
    #   * {Types::GetMergeConflictsOutput#source_commit_id #source_commit_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_merge_conflicts({
    #     repository_name: "RepositoryName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     source_commit_specifier: "CommitName", # required
    #     merge_option: "FAST_FORWARD_MERGE", # required, accepts FAST_FORWARD_MERGE
    #   })
    #
    # @example Response structure
    #
    #   resp.mergeable #=> Boolean
    #   resp.destination_commit_id #=> String
    #   resp.source_commit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetMergeConflicts AWS API Documentation
    #
    # @overload get_merge_conflicts(params = {})
    # @param [Hash] params ({})
    def get_merge_conflicts(params = {}, options = {})
      req = build_request(:get_merge_conflicts, params)
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
    #   resp.pull_request.client_request_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetPullRequest AWS API Documentation
    #
    # @overload get_pull_request(params = {})
    # @param [Hash] params ({})
    def get_pull_request(params = {}, options = {})
      req = build_request(:get_pull_request, params)
      req.send_request(options)
    end

    # Returns information about a repository.
    #
    # <note markdown="1"> The description field for a repository accepts all HTML characters and
    # all valid Unicode characters. Applications that do not HTML-encode the
    # description and display it in a web page could expose users to
    # potentially malicious code. Make sure that you HTML-encode the
    # description field in any application that uses this API to display the
    # repository description on a web page.
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
    #   An enumeration token that when provided in a request, returns the next
    #   batch of the results.
    #
    # @option params [Integer] :max_results
    #   A non-negative integer used to limit the number of returned results.
    #
    # @return [Types::ListPullRequestsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPullRequestsOutput#pull_request_ids #pull_request_ids} => Array&lt;String&gt;
    #   * {Types::ListPullRequestsOutput#next_token #next_token} => String
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

    # Closes a pull request and attempts to merge the source commit of a
    # pull request into the specified destination branch for that pull
    # request at the specified commit using the fast-forward merge option.
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
    #     source_commit_id: "CommitId",
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
    #   resp.pull_request.client_request_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergePullRequestByFastForward AWS API Documentation
    #
    # @overload merge_pull_request_by_fast_forward(params = {})
    # @param [Hash] params ({})
    def merge_pull_request_by_fast_forward(params = {}, options = {})
      req = build_request(:merge_pull_request_by_fast_forward, params)
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
    #   of the 'before' commit.
    #
    # @option params [required, String] :after_commit_id
    #   To establish the directionality of the comparison, the full commit ID
    #   of the 'after' commit.
    #
    # @option params [Types::Location] :location
    #   The location of the comparison where you want to comment.
    #
    # @option params [required, String] :content
    #   The content of the comment you want to make.
    #
    # @option params [String] :client_request_token
    #   A unique, client-generated idempotency token that when provided in a
    #   request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request will return information about the
    #   initial request that used that token.
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
    #   location is provided, the comment will be posted as a general comment
    #   on the pull request difference between the before commit ID and the
    #   after commit ID.
    #
    # @option params [required, String] :content
    #   The content of your comment on the change.
    #
    # @option params [String] :client_request_token
    #   A unique, client-generated idempotency token that when provided in a
    #   request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request will return information about the
    #   initial request that used that token.
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
    #   A unique, client-generated idempotency token that when provided in a
    #   request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request will return information about the
    #   initial request that used that token.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PostCommentReply AWS API Documentation
    #
    # @overload post_comment_reply(params = {})
    # @param [Hash] params ({})
    def post_comment_reply(params = {}, options = {})
      req = build_request(:post_comment_reply, params)
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
    #   this is an empty repository, this branch will be created.
    #
    # @option params [required, String, IO] :file_content
    #   The content of the file, in binary object format.
    #
    # @option params [required, String] :file_path
    #   The name of the file you want to add or update, including the relative
    #   path to the file in the repository.
    #
    #   <note markdown="1"> If the path does not currently exist in the repository, the path will
    #   be created as part of adding the file.
    #
    #    </note>
    #
    # @option params [String] :file_mode
    #   The file mode permissions of the blob. Valid file mode permissions are
    #   listed below.
    #
    # @option params [String] :parent_commit_id
    #   The full commit ID of the head commit in the branch where you want to
    #   add or update the file. If this is an empty repository, no commit ID
    #   is required. If this is not an empty repository, a commit ID is
    #   required.
    #
    #   The commit ID must match the ID of the head commit at the time of the
    #   operation, or an error will occur, and the file will not be added or
    #   updated.
    #
    # @option params [String] :commit_message
    #   A message about why this file was added or updated. While optional,
    #   adding a message is strongly encouraged in order to provide a more
    #   useful commit history for your repository.
    #
    # @option params [String] :name
    #   The name of the person adding or updating the file. While optional,
    #   adding a name is strongly encouraged in order to provide a more useful
    #   commit history for your repository.
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

    # Replaces all triggers for a repository. This can be used to create or
    # delete triggers.
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

    # Tests the functionality of repository triggers by sending information
    # to the trigger target. If real data is available in the repository,
    # the test will send data from the last commit. If no data is available,
    # sample data will be generated.
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

    # Replaces the contents of a comment.
    #
    # @option params [required, String] :comment_id
    #   The system-generated ID of the comment you want to update. To get this
    #   ID, use GetCommentsForComparedCommit or GetCommentsForPullRequest.
    #
    # @option params [required, String] :content
    #   The updated content with which you want to replace the existing
    #   content of the comment.
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

    # Replaces the contents of the description of a pull request.
    #
    # @option params [required, String] :pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #
    # @option params [required, String] :description
    #   The updated content of the description for the pull request. This
    #   content will replace the existing description.
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
    #   resp.pull_request.client_request_token #=> String
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
    #   from `CLOSED` to `CLOSED`.
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
    #   resp.pull_request.client_request_token #=> String
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
    #   The updated title of the pull request. This will replace the existing
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
    #   resp.pull_request.client_request_token #=> String
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
    # description and display it in a web page could expose users to
    # potentially malicious code. Make sure that you HTML-encode the
    # description field in any application that uses this API to display the
    # repository description on a web page.
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
    # calling AWS account. In addition, repository names are limited to 100
    # alphanumeric, dash, and underscore characters, and cannot include
    # certain characters. The suffix ".git" is prohibited. For a full
    # description of the limits on repository names, see [Limits][1] in the
    # AWS CodeCommit User Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html
    #
    # @option params [required, String] :old_name
    #   The existing name of the repository.
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
      context[:gem_version] = '1.20.0'
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
