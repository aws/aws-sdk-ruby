# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:codecommit)

module Aws::CodeCommit
  # An API client for Aws::CodeCommit.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CodeCommit20150413
    @identifier = :codecommit

    add_plugin(::Aws::CodeCommit::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CodeCommit::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Creates an association between an approval rule template and a specified repository.
    #             Then, the next time a pull request is created in the repository where the destination
    #             reference (if specified) matches the destination reference (branch) for the pull
    #             request, an approval rule that matches the template conditions is automatically created
    #             for that pull request. If no destination references are specified in the template, an
    #             approval rule that matches the template contents is created for all pull requests in
    #             that repository.</p>
    # @param [Hash, Types::AssociateApprovalRuleTemplateWithRepositoryInput] params
    # @option params [String] :approval_rule_template_name
    #   <p>The name for the approval rule template. </p>
    # @option params [String] :repository_name
    #   <p>The name of the repository that you want to associate with the template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     repository_name: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.associate_approval_rule_template_with_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_approval_rule_template_with_repository(params = {}, options = {})
      request = build_request(:associate_approval_rule_template_with_repository, params)
      request.send_request(options)
    end

    # <p>Creates an association between an approval rule template and one or more specified repositories. </p>
    # @param [Hash, Types::BatchAssociateApprovalRuleTemplateWithRepositoriesInput] params
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the template you want to associate with one or more repositories.</p>
    # @option params [Array<String>] :repository_names
    #   <p>The names of the repositories you want to associate with the template.</p>
    #            <note>
    #               <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     repository_names: ["RepositoryName"], # required
    #   }
    #   options = {}
    #   response = client.batch_associate_approval_rule_template_with_repositories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associated_repository_names: ["RepositoryName"], # required
    #     errors: [ # required
    #       {
    #         repository_name: "RepositoryName",
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput]
    def batch_associate_approval_rule_template_with_repositories(params = {}, options = {})
      request = build_request(:batch_associate_approval_rule_template_with_repositories, params)
      request.send_request(options)
    end

    # <p>Returns information about one or more merge conflicts in the attempted merge of two commit specifiers using the squash or three-way merge strategy.</p>
    # @param [Hash, Types::BatchDescribeMergeConflictsInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the merge conflicts you want to review.</p>
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :merge_option
    #   <p>The merge option or strategy you want to use to merge the code.</p>
    # @option params [Integer] :max_merge_hunks
    #   <p>The maximum number of merge hunks to include in the output.</p>
    # @option params [Integer] :max_conflict_files
    #   <p>The maximum number of files to include in the output.</p>
    # @option params [Array<String>] :file_paths
    #   <p>The path of the target files used to describe the conflicts. If not specified, the default is all conflict files.</p>
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     source_commit_specifier: "CommitName", # required
    #     merge_option: "FAST_FORWARD_MERGE" # One of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"], # required
    #     max_merge_hunks: 1,
    #     max_conflict_files: 1,
    #     file_paths: ["Path"],
    #     conflict_detail_level: "FILE_LEVEL" # One of: ["FILE_LEVEL", "LINE_LEVEL"],
    #     conflict_resolution_strategy: "NONE" # One of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"],
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.batch_describe_merge_conflicts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     conflicts: [ # required
    #       {
    #         conflict_metadata: {
    #           file_path: "Path",
    #           file_sizes: {
    #             source: 1,
    #             destination: 1,
    #             base: 1
    #           },
    #           file_modes: {
    #             source: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"],
    #             destination: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"],
    #             base: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #           },
    #           object_types: {
    #             source: "FILE" # One of: ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"],
    #             destination: "FILE" # One of: ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"],
    #             base: "FILE" # One of: ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"]
    #           },
    #           number_of_conflicts: 1,
    #           is_binary_file: {
    #             source: false,
    #             destination: false,
    #             base: false
    #           },
    #           content_conflict: false,
    #           file_mode_conflict: false,
    #           object_type_conflict: false,
    #           merge_operations: {
    #             source: "A" # One of: ["A", "M", "D"],
    #             destination: "A" # One of: ["A", "M", "D"]
    #           }
    #         },
    #         merge_hunks: [
    #           {
    #             is_conflict: false,
    #             source: {
    #               start_line: 1,
    #               end_line: 1,
    #               hunk_content: "HunkContent"
    #             },
    #             destination: {
    #               start_line: 1,
    #               end_line: 1,
    #               hunk_content: "HunkContent"
    #             },
    #             base: {
    #               start_line: 1,
    #               end_line: 1,
    #               hunk_content: "HunkContent"
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     errors: [
    #       {
    #         file_path: "Path", # required
    #         exception_name: "ExceptionName", # required
    #         message: "Message", # required
    #       }
    #     ],
    #     destination_commit_id: "ObjectId", # required
    #     source_commit_id: "ObjectId", # required
    #     base_commit_id: "ObjectId"
    #   }
    # @return [Types::BatchDescribeMergeConflictsOutput]
    def batch_describe_merge_conflicts(params = {}, options = {})
      request = build_request(:batch_describe_merge_conflicts, params)
      request.send_request(options)
    end

    # <p>Removes the association between an approval rule template and one or more specified repositories. </p>
    # @param [Hash, Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesInput] params
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the template that you want to disassociate from one or more repositories.</p>
    # @option params [Array<String>] :repository_names
    #   <p>The repository names that you want to disassociate from the approval rule
    #               template.</p>
    #            <note>
    #               <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     repository_names: ["RepositoryName"], # required
    #   }
    #   options = {}
    #   response = client.batch_disassociate_approval_rule_template_from_repositories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     disassociated_repository_names: ["RepositoryName"], # required
    #     errors: [ # required
    #       {
    #         repository_name: "RepositoryName",
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput]
    def batch_disassociate_approval_rule_template_from_repositories(params = {}, options = {})
      request = build_request(:batch_disassociate_approval_rule_template_from_repositories, params)
      request.send_request(options)
    end

    # <p>Returns information about the contents of one or more commits in a repository.</p>
    # @param [Hash, Types::BatchGetCommitsInput] params
    # @option params [Array<String>] :commit_ids
    #   <p>The full commit IDs of the commits to get information about.</p>
    #            <note>
    #               <p>You must supply the full SHA IDs of each commit. You cannot use shortened SHA
    #                   IDs.</p>
    #            </note>
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the commits.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     commit_ids: ["ObjectId"], # required
    #     repository_name: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.batch_get_commits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     commits: [
    #       {
    #         commit_id: "ObjectId",
    #         tree_id: "ObjectId",
    #         parents: ["ObjectId"],
    #         message: "Message",
    #         author: {
    #           name: "Name",
    #           email: "Email",
    #           date: "Date"
    #         },
    #         committer: {
    #           name: "Name",
    #           email: "Email",
    #           date: "Date"
    #         },
    #         additional_data: "AdditionalData"
    #       }
    #     ],
    #     errors: [
    #       {
    #         commit_id: "ObjectId",
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetCommitsOutput]
    def batch_get_commits(params = {}, options = {})
      request = build_request(:batch_get_commits, params)
      request.send_request(options)
    end

    # <p>Returns information about one or more repositories.</p>
    #          <note>
    #             <p>The description field for a repository accepts all HTML characters and all valid
    #                 Unicode characters. Applications that do not HTML-encode the description and display
    #                 it in a webpage can expose users to potentially malicious code. Make sure that you
    #                 HTML-encode the description field in any application that uses this API to display
    #                 the repository description on a webpage.</p>
    #          </note>
    # @param [Hash, Types::BatchGetRepositoriesInput] params
    # @option params [Array<String>] :repository_names
    #   <p>The names of the repositories to get information about.</p>
    #            <note>
    #               <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_names: ["RepositoryName"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_repositories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repositories: [
    #       {
    #         account_id: "AccountId",
    #         repository_id: "RepositoryId",
    #         repository_name: "RepositoryName",
    #         repository_description: "RepositoryDescription",
    #         default_branch: "BranchName",
    #         last_modified_date: Time.now,
    #         creation_date: Time.now,
    #         clone_url_http: "CloneUrlHttp",
    #         clone_url_ssh: "CloneUrlSsh",
    #         arn: "Arn",
    #         kms_key_id: "KmsKeyId"
    #       }
    #     ],
    #     repositories_not_found: ["RepositoryName"],
    #     errors: [
    #       {
    #         repository_id: "RepositoryId",
    #         repository_name: "RepositoryName",
    #         error_code: "EncryptionIntegrityChecksFailedException" # One of: ["EncryptionIntegrityChecksFailedException", "EncryptionKeyAccessDeniedException", "EncryptionKeyDisabledException", "EncryptionKeyNotFoundException", "EncryptionKeyUnavailableException", "RepositoryDoesNotExistException"],
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetRepositoriesOutput]
    def batch_get_repositories(params = {}, options = {})
      request = build_request(:batch_get_repositories, params)
      request.send_request(options)
    end

    # <p>Creates a template for approval rules that can then be associated with one or more
    #             repositories in your Amazon Web Services account. When you associate a template with a repository, 
    #             CodeCommit creates an approval rule that matches the conditions of the template for all
    #             pull requests that meet the conditions of the template. For more information, see
    #             <a>AssociateApprovalRuleTemplateWithRepository</a>.</p>
    # @param [Hash, Types::CreateApprovalRuleTemplateInput] params
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the approval rule template. Provide descriptive names, because this name
    #               is applied to the approval rules created automatically in associated
    #               repositories.</p>
    # @option params [String] :approval_rule_template_content
    #   <p>The content of the approval rule that is created on pull requests in associated
    #               repositories. If you specify one or more destination references (branches), approval
    #               rules are created in an associated repository only if their destination references
    #               (branches) match those specified in the template.</p>
    #            <note>
    #               <p>When you create the content of the approval rule template, you can specify
    #                   approvers in an approval pool in one of two ways:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>CodeCommitApprovers</b>: This option only
    #                           requires an Amazon Web Services account and a resource. It can be used for both IAM users
    #                           and federated access users whose name matches the provided resource name.
    #                           This is a very powerful option that offers a great deal of flexibility. For
    #                           example, if you specify the Amazon Web Services account <i>123456789012</i>
    #                           and <i>Mary_Major</i>, all of the following are counted as
    #                           approvals coming from that user:</p>
    #                     <ul>
    #                        <li>
    #                           <p>An IAM user in the account
    #                                   (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p>
    #                        </li>
    #                        <li>
    #                           <p>A federated user identified in IAM as Mary_Major
    #                                   (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p>
    #                        </li>
    #                     </ul>
    #                     <p>This option does not recognize an active session of someone assuming the
    #                           role of CodeCommitReview with a role session name of
    #                               <i>Mary_Major</i>
    #                               (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>)
    #                           unless you include a wildcard (*Mary_Major).</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Fully qualified ARN</b>: This option allows
    #                           you to specify the fully qualified Amazon Resource Name (ARN) of the IAM
    #                           user or role. </p>
    #                  </li>
    #               </ul>
    #               <p>For more information about IAM ARNs, wildcards, and formats, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
    #                       Identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            </note>
    # @option params [String] :approval_rule_template_description
    #   <p>The description of the approval rule template. Consider providing a description that
    #               explains what this template does and when it might be appropriate to associate it with
    #               repositories.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     approval_rule_template_content: "ApprovalRuleTemplateContent", # required
    #     approval_rule_template_description: "ApprovalRuleTemplateDescription"
    #   }
    #   options = {}
    #   response = client.create_approval_rule_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     approval_rule_template: { # required
    #       approval_rule_template_id: "ApprovalRuleTemplateId",
    #       approval_rule_template_name: "ApprovalRuleTemplateName",
    #       approval_rule_template_description: "ApprovalRuleTemplateDescription",
    #       approval_rule_template_content: "ApprovalRuleTemplateContent",
    #       rule_content_sha256: "RuleContentSha256",
    #       last_modified_date: Time.now,
    #       creation_date: Time.now,
    #       last_modified_user: "Arn"
    #     }
    #   }
    # @return [Types::CreateApprovalRuleTemplateOutput]
    def create_approval_rule_template(params = {}, options = {})
      request = build_request(:create_approval_rule_template, params)
      request.send_request(options)
    end

    # <p>Creates a branch in a repository and points the branch to a commit.</p>
    #          <note>
    #             <p>Calling the create branch operation does not set a repository's default branch. To do this, call the update default branch operation.</p>
    #          </note>
    # @param [Hash, Types::CreateBranchInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository in which you want to create the new branch.</p>
    # @option params [String] :branch_name
    #   <p>The name of the new branch to create.</p>
    # @option params [String] :commit_id
    #   <p>The ID of the commit to point the new branch to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     branch_name: "BranchName", # required
    #     commit_id: "CommitId", # required
    #   }
    #   options = {}
    #   response = client.create_branch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_branch(params = {}, options = {})
      request = build_request(:create_branch, params)
      request.send_request(options)
    end

    # <p>Creates a commit for a repository on the tip of a specified branch.</p>
    # @param [Hash, Types::CreateCommitInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository where you create the commit.</p>
    # @option params [String] :branch_name
    #   <p>The name of the branch where you create the commit.</p>
    # @option params [String] :parent_commit_id
    #   <p>The ID of the commit that is the parent of the commit you create. Not required if this
    #               is an empty repository.</p>
    # @option params [String] :author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    # @option params [String] :email
    #   <p>The email address of the person who created the commit.</p>
    # @option params [String] :commit_message
    #   <p>The commit message you want to include in the commit. Commit messages are limited to
    #               256 KB. If no message is specified, a default message is used.</p>
    # @option params [Boolean] :keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If true, a ..gitkeep file is created for empty folders.
    #               The default is false.</p>
    # @option params [Array<Types::PutFileEntry>] :put_files
    #   <p>The files to add or update in this commit.</p>
    # @option params [Array<Types::DeleteFileEntry>] :delete_files
    #   <p>The files to delete in this commit. These files still exist in earlier commits.</p>
    # @option params [Array<Types::SetFileModeEntry>] :set_file_modes
    #   <p>The file modes to update for files in this commit.</p>
    # @example Request syntax with placeholder values
    #   params = {
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
    #         file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"],
    #         file_content: "data",
    #         source_file: {
    #           file_path: "Path", # required
    #           is_move: false
    #         }
    #       }
    #     ],
    #     delete_files: [
    #       {
    #         file_path: "Path", # required
    #       }
    #     ],
    #     set_file_modes: [
    #       {
    #         file_path: "Path", # required
    #         file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_commit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     commit_id: "ObjectId",
    #     tree_id: "ObjectId",
    #     files_added: [
    #       {
    #         absolute_path: "Path",
    #         blob_id: "ObjectId",
    #         file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #       }
    #     ],
    #     files_updated: [
    #       {
    #         absolute_path: "Path",
    #         blob_id: "ObjectId",
    #         file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #       }
    #     ],
    #     files_deleted: [
    #       {
    #         absolute_path: "Path",
    #         blob_id: "ObjectId",
    #         file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #       }
    #     ]
    #   }
    # @return [Types::CreateCommitOutput]
    def create_commit(params = {}, options = {})
      request = build_request(:create_commit, params)
      request.send_request(options)
    end

    # <p>Creates a pull request in the specified repository.</p>
    # @param [Hash, Types::CreatePullRequestInput] params
    # @option params [String] :title
    #   <p>The title of the pull request. This title is used to identify the pull request to
    #               other users in the repository.</p>
    # @option params [String] :description
    #   <p>A description of the pull request.</p>
    # @option params [Array<Types::Target>] :targets
    #   <p>The targets for the pull request, including the source of the code to be reviewed (the
    #               source branch) and the destination where the creator of the pull request intends the
    #               code to be merged after the pull request is closed (the destination branch).</p>
    # @option params [String] :client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    #            <note>
    #               <p>The Amazon Web ServicesSDKs prepopulate client request tokens. If you are using an Amazon Web ServicesSDK, an
    #                   idempotency token is created for you.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     title: "Title", # required
    #     description: "Description",
    #     targets: [ # required
    #       {
    #         repository_name: "RepositoryName", # required
    #         source_reference: "ReferenceName", # required
    #         destination_reference: "ReferenceName"
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.create_pull_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pull_request: { # required
    #       pull_request_id: "PullRequestId",
    #       title: "Title",
    #       description: "Description",
    #       last_activity_date: Time.now,
    #       creation_date: Time.now,
    #       pull_request_status: "OPEN" # One of: ["OPEN", "CLOSED"],
    #       author_arn: "Arn",
    #       pull_request_targets: [
    #         {
    #           repository_name: "RepositoryName",
    #           source_reference: "ReferenceName",
    #           destination_reference: "ReferenceName",
    #           destination_commit: "CommitId",
    #           source_commit: "CommitId",
    #           merge_base: "CommitId",
    #           merge_metadata: {
    #             is_merged: false,
    #             merged_by: "Arn",
    #             merge_commit_id: "CommitId",
    #             merge_option: "FAST_FORWARD_MERGE" # One of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #           }
    #         }
    #       ],
    #       client_request_token: "ClientRequestToken",
    #       revision_id: "RevisionId",
    #       approval_rules: [
    #         {
    #           approval_rule_id: "ApprovalRuleId",
    #           approval_rule_name: "ApprovalRuleName",
    #           approval_rule_content: "ApprovalRuleContent",
    #           rule_content_sha256: "RuleContentSha256",
    #           last_modified_date: Time.now,
    #           creation_date: Time.now,
    #           last_modified_user: "Arn",
    #           origin_approval_rule_template: {
    #             approval_rule_template_id: "ApprovalRuleTemplateId",
    #             approval_rule_template_name: "ApprovalRuleTemplateName"
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreatePullRequestOutput]
    def create_pull_request(params = {}, options = {})
      request = build_request(:create_pull_request, params)
      request.send_request(options)
    end

    # <p>Creates an approval rule for a pull request.</p>
    # @param [Hash, Types::CreatePullRequestApprovalRuleInput] params
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request for which you want to create the approval rule.</p>
    # @option params [String] :approval_rule_name
    #   <p>The name for the approval rule.</p>
    # @option params [String] :approval_rule_content
    #   <p>The content of the approval rule, including the number of approvals needed and the structure of an approval pool defined for approvals, if any. For more information
    #           about approval pools, see the CodeCommit User Guide.</p>
    #            <note>
    #               <p>When you create the content of the approval rule, you can specify approvers in an
    #                   approval pool in one of two ways:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>CodeCommitApprovers</b>: This option only
    #                           requires an Amazon Web Services account and a resource. It can be used for both IAM users
    #                           and federated access users whose name matches the provided resource name.
    #                           This is a very powerful option that offers a great deal of flexibility. For
    #                           example, if you specify the Amazon Web Services account <i>123456789012</i>
    #                           and <i>Mary_Major</i>, all of the following would be counted
    #                           as approvals coming from that user:</p>
    #                     <ul>
    #                        <li>
    #                           <p>An IAM user in the account
    #                                       (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p>
    #                        </li>
    #                        <li>
    #                           <p>A federated user identified in IAM as Mary_Major
    #                                       (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p>
    #                        </li>
    #                     </ul>
    #                     <p>This option does not recognize an active session of someone assuming the
    #                           role of CodeCommitReview with a role session name of
    #                               <i>Mary_Major</i>
    #                               (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>)
    #                           unless you include a wildcard (*Mary_Major).</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Fully qualified ARN</b>: This option allows
    #                           you to specify the fully qualified Amazon Resource Name (ARN) of the IAM
    #                           user or role. </p>
    #                  </li>
    #               </ul>
    #               <p>For more information about IAM ARNs, wildcards, and formats, see
    #                  <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
    #                   Identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #     approval_rule_name: "ApprovalRuleName", # required
    #     approval_rule_content: "ApprovalRuleContent", # required
    #   }
    #   options = {}
    #   response = client.create_pull_request_approval_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     approval_rule: { # required
    #       approval_rule_id: "ApprovalRuleId",
    #       approval_rule_name: "ApprovalRuleName",
    #       approval_rule_content: "ApprovalRuleContent",
    #       rule_content_sha256: "RuleContentSha256",
    #       last_modified_date: Time.now,
    #       creation_date: Time.now,
    #       last_modified_user: "Arn",
    #       origin_approval_rule_template: {
    #         approval_rule_template_id: "ApprovalRuleTemplateId",
    #         approval_rule_template_name: "ApprovalRuleTemplateName"
    #       }
    #     }
    #   }
    # @return [Types::CreatePullRequestApprovalRuleOutput]
    def create_pull_request_approval_rule(params = {}, options = {})
      request = build_request(:create_pull_request_approval_rule, params)
      request.send_request(options)
    end

    # <p>Creates a new, empty repository.</p>
    # @param [Hash, Types::CreateRepositoryInput] params
    # @option params [String] :repository_name
    #   <p>The name of the new repository to be created.</p>
    #            <note>
    #               <p>The repository name must be unique across the calling Amazon Web Services account. Repository names
    #                   are limited to 100 alphanumeric, dash, and underscore characters, and cannot include
    #                   certain characters. For more information about the limits on repository names, see
    #                       <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Quotas</a> in the <i>CodeCommit User Guide</i>. The
    #                   suffix .git is prohibited.</p>
    #            </note>
    # @option params [String] :repository_description
    #   <p>A comment or description about the new repository.</p>
    #            <note>
    #               <p>The description field for a repository accepts all HTML characters and all valid
    #                   Unicode characters. Applications that do not HTML-encode the description and display
    #                   it in a webpage can expose users to potentially malicious code. Make sure that you
    #                   HTML-encode the description field in any application that uses this API to display
    #                   the repository description on a webpage.</p>
    #            </note>
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tag key-value pairs to use when tagging this repository.</p>
    # @option params [String] :kms_key_id
    #   <p>The ID of the encryption key. You can view the ID of an encryption key in the KMS console, or use the KMS APIs to
    #               programmatically retrieve a key ID. For more information about acceptable values for kmsKeyID, see 
    #               <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Decrypt.html#KMS-Decrypt-request-KeyId">KeyId</a> in the Decrypt API description in 
    #               the <i>Key Management Service API Reference</i>.</p>
    #            <p>If no key is specified, the default <code>aws/codecommit</code> Amazon Web Services managed key is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     repository_description: "RepositoryDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     kms_key_id: "KmsKeyId"
    #   }
    #   options = {}
    #   response = client.create_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_metadata: {
    #       account_id: "AccountId",
    #       repository_id: "RepositoryId",
    #       repository_name: "RepositoryName",
    #       repository_description: "RepositoryDescription",
    #       default_branch: "BranchName",
    #       last_modified_date: Time.now,
    #       creation_date: Time.now,
    #       clone_url_http: "CloneUrlHttp",
    #       clone_url_ssh: "CloneUrlSsh",
    #       arn: "Arn",
    #       kms_key_id: "KmsKeyId"
    #     }
    #   }
    # @return [Types::CreateRepositoryOutput]
    def create_repository(params = {}, options = {})
      request = build_request(:create_repository, params)
      request.send_request(options)
    end

    # <p>Creates an unreferenced commit that represents the result of merging two branches
    #             using a specified merge strategy. This can help you determine the outcome of a potential
    #             merge. This API cannot be used with the fast-forward merge strategy because that
    #             strategy does not create a merge commit.</p>
    #          <note>
    #             <p>This unreferenced merge commit 
    #         can only be accessed using the GetCommit API or through git commands such as git fetch. To retrieve this commit, you must specify its commit ID or otherwise reference it.</p>
    #          </note>
    # @param [Hash, Types::CreateUnreferencedMergeCommitInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to create the unreferenced merge commit.</p>
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :merge_option
    #   <p>The merge option or strategy you want to use to merge the code.</p>
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    # @option params [String] :author_name
    #   <p>The name of the author who created the unreferenced commit. This information is used
    #               as both the author and committer for the commit.</p>
    # @option params [String] :email
    #   <p>The email address for the person who created the unreferenced commit.</p>
    # @option params [String] :commit_message
    #   <p>The commit message for the unreferenced commit.</p>
    # @option params [Boolean] :keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If this is specified as true, a .gitkeep file is
    #               created for empty folders. The default is false.</p>
    # @option params [Types::ConflictResolution] :conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     source_commit_specifier: "CommitName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     merge_option: "FAST_FORWARD_MERGE" # One of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"], # required
    #     conflict_detail_level: "FILE_LEVEL" # One of: ["FILE_LEVEL", "LINE_LEVEL"],
    #     conflict_resolution_strategy: "NONE" # One of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"],
    #     author_name: "Name",
    #     email: "Email",
    #     commit_message: "Message",
    #     keep_empty_folders: false,
    #     conflict_resolution: {
    #       replace_contents: [
    #         {
    #           file_path: "Path", # required
    #           replacement_type: "KEEP_BASE" # One of: ["KEEP_BASE", "KEEP_SOURCE", "KEEP_DESTINATION", "USE_NEW_CONTENT"], # required
    #           content: "data",
    #           file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #         }
    #       ],
    #       delete_files: [
    #         {
    #           file_path: "Path", # required
    #         }
    #       ],
    #       set_file_modes: [
    #         {
    #           file_path: "Path", # required
    #           file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"], # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_unreferenced_merge_commit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     commit_id: "ObjectId",
    #     tree_id: "ObjectId"
    #   }
    # @return [Types::CreateUnreferencedMergeCommitOutput]
    def create_unreferenced_merge_commit(params = {}, options = {})
      request = build_request(:create_unreferenced_merge_commit, params)
      request.send_request(options)
    end

    # <p>Deletes a specified approval rule template. Deleting a template does not remove approval rules on pull requests already created with the template.</p>
    # @param [Hash, Types::DeleteApprovalRuleTemplateInput] params
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the approval rule template to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #   }
    #   options = {}
    #   response = client.delete_approval_rule_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     approval_rule_template_id: "ApprovalRuleTemplateId", # required
    #   }
    # @return [Types::DeleteApprovalRuleTemplateOutput]
    def delete_approval_rule_template(params = {}, options = {})
      request = build_request(:delete_approval_rule_template, params)
      request.send_request(options)
    end

    # <p>Deletes a branch from a repository, unless that branch is the default branch for the repository. </p>
    # @param [Hash, Types::DeleteBranchInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the branch to be deleted.</p>
    # @option params [String] :branch_name
    #   <p>The name of the branch to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     branch_name: "BranchName", # required
    #   }
    #   options = {}
    #   response = client.delete_branch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deleted_branch: {
    #       branch_name: "BranchName",
    #       commit_id: "CommitId"
    #     }
    #   }
    # @return [Types::DeleteBranchOutput]
    def delete_branch(params = {}, options = {})
      request = build_request(:delete_branch, params)
      request.send_request(options)
    end

    # <p>Deletes the content of a comment made on a change, file, or commit in a repository.</p>
    # @param [Hash, Types::DeleteCommentContentInput] params
    # @option params [String] :comment_id
    #   <p>The unique, system-generated ID of the comment. To get this ID, use  <a>GetCommentsForComparedCommit</a>
    #            or <a>GetCommentsForPullRequest</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     comment_id: "CommentId", # required
    #   }
    #   options = {}
    #   response = client.delete_comment_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comment: {
    #       comment_id: "CommentId",
    #       content: "Content",
    #       in_reply_to: "CommentId",
    #       creation_date: Time.now,
    #       last_modified_date: Time.now,
    #       author_arn: "Arn",
    #       deleted: false,
    #       client_request_token: "ClientRequestToken",
    #       caller_reactions: ["ReactionValue"],
    #       reaction_counts: {
    #         "ReactionValue" => 1
    #       }
    #     }
    #   }
    # @return [Types::DeleteCommentContentOutput]
    def delete_comment_content(params = {}, options = {})
      request = build_request(:delete_comment_content, params)
      request.send_request(options)
    end

    # <p>Deletes a specified file from a specified branch. A commit is created on the branch
    #             that contains the revision. The file still exists in the commits earlier to the commit
    #             that contains the deletion.</p>
    # @param [Hash, Types::DeleteFileInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the file to delete.</p>
    # @option params [String] :branch_name
    #   <p>The name of the branch where the commit that deletes the file is made.</p>
    # @option params [String] :file_path
    #   <p>The fully qualified path to the file that to be deleted, including the full name and
    #               extension of that file. For example, /examples/file.md is a fully qualified path to a
    #               file named file.md in a folder named examples.</p>
    # @option params [String] :parent_commit_id
    #   <p>The ID of the commit that is the tip of the branch where you want to create the commit
    #               that deletes the file. This must be the HEAD commit for the branch. The commit that
    #               deletes the file is created from this commit ID.</p>
    # @option params [Boolean] :keep_empty_folders
    #   <p>If a file is the only object in the folder or directory, specifies whether to delete
    #               the folder or directory that contains the file. By default, empty folders are deleted.
    #               This includes empty folders that are part of the directory structure. For example, if
    #               the path to a file is dir1/dir2/dir3/dir4, and dir2 and dir3 are empty, deleting the
    #               last file in dir4 also deletes the empty folders dir4, dir3, and dir2.</p>
    # @option params [String] :commit_message
    #   <p>The commit message you want to include as part of deleting the file. Commit messages
    #               are limited to 256 KB. If no message is specified, a default message is used.</p>
    # @option params [String] :name
    #   <p>The name of the author of the commit that deletes the file. If no name is specified,
    #               the user's ARN is used as the author name and committer name.</p>
    # @option params [String] :email
    #   <p>The email address for the commit that deletes the file. If no email address is
    #               specified, the email address is left blank.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     branch_name: "BranchName", # required
    #     file_path: "Path", # required
    #     parent_commit_id: "CommitId", # required
    #     keep_empty_folders: false,
    #     commit_message: "Message",
    #     name: "Name",
    #     email: "Email"
    #   }
    #   options = {}
    #   response = client.delete_file(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     commit_id: "ObjectId", # required
    #     blob_id: "ObjectId", # required
    #     tree_id: "ObjectId", # required
    #     file_path: "Path", # required
    #   }
    # @return [Types::DeleteFileOutput]
    def delete_file(params = {}, options = {})
      request = build_request(:delete_file, params)
      request.send_request(options)
    end

    # <p>Deletes an approval rule from a specified pull request. Approval rules can be deleted from a pull request only if the pull request is open, and if the 
    #             approval rule was created specifically for a pull request and not generated from an approval rule template associated with the repository where the 
    #             pull request was created. You cannot delete an approval rule from a merged or closed pull request.</p>
    # @param [Hash, Types::DeletePullRequestApprovalRuleInput] params
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request that contains the approval rule you want to delete.</p>
    # @option params [String] :approval_rule_name
    #   <p>The name of the approval rule you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #     approval_rule_name: "ApprovalRuleName", # required
    #   }
    #   options = {}
    #   response = client.delete_pull_request_approval_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     approval_rule_id: "ApprovalRuleId", # required
    #   }
    # @return [Types::DeletePullRequestApprovalRuleOutput]
    def delete_pull_request_approval_rule(params = {}, options = {})
      request = build_request(:delete_pull_request_approval_rule, params)
      request.send_request(options)
    end

    # <p>Deletes a repository. If a specified repository was already deleted, a null repository
    #             ID is returned.</p>
    #          <important>
    #             <p>Deleting a repository also deletes all associated objects and metadata. After a repository is
    #                 deleted, all future push calls to the deleted repository fail.</p>
    #          </important>
    # @param [Hash, Types::DeleteRepositoryInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.delete_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_id: "RepositoryId"
    #   }
    # @return [Types::DeleteRepositoryOutput]
    def delete_repository(params = {}, options = {})
      request = build_request(:delete_repository, params)
      request.send_request(options)
    end

    # <p>Returns information about one or more merge conflicts in the attempted merge of two
    #             commit specifiers using the squash or three-way merge strategy. If the merge option for
    #             the attempted merge is specified as FAST_FORWARD_MERGE, an exception is thrown.</p>
    # @param [Hash, Types::DescribeMergeConflictsInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to get information about a merge conflict.</p>
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :merge_option
    #   <p>The merge option or strategy you want to use to merge the code.</p>
    # @option params [Integer] :max_merge_hunks
    #   <p>The maximum number of merge hunks to include in the output.</p>
    # @option params [String] :file_path
    #   <p>The path of the target files used to describe the conflicts. </p>
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     source_commit_specifier: "CommitName", # required
    #     merge_option: "FAST_FORWARD_MERGE" # One of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"], # required
    #     max_merge_hunks: 1,
    #     file_path: "Path", # required
    #     conflict_detail_level: "FILE_LEVEL" # One of: ["FILE_LEVEL", "LINE_LEVEL"],
    #     conflict_resolution_strategy: "NONE" # One of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"],
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_merge_conflicts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     conflict_metadata: { # required
    #       file_path: "Path",
    #       file_sizes: {
    #         source: 1,
    #         destination: 1,
    #         base: 1
    #       },
    #       file_modes: {
    #         source: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"],
    #         destination: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"],
    #         base: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #       },
    #       object_types: {
    #         source: "FILE" # One of: ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"],
    #         destination: "FILE" # One of: ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"],
    #         base: "FILE" # One of: ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"]
    #       },
    #       number_of_conflicts: 1,
    #       is_binary_file: {
    #         source: false,
    #         destination: false,
    #         base: false
    #       },
    #       content_conflict: false,
    #       file_mode_conflict: false,
    #       object_type_conflict: false,
    #       merge_operations: {
    #         source: "A" # One of: ["A", "M", "D"],
    #         destination: "A" # One of: ["A", "M", "D"]
    #       }
    #     },
    #     merge_hunks: [ # required
    #       {
    #         is_conflict: false,
    #         source: {
    #           start_line: 1,
    #           end_line: 1,
    #           hunk_content: "HunkContent"
    #         },
    #         destination: {
    #           start_line: 1,
    #           end_line: 1,
    #           hunk_content: "HunkContent"
    #         },
    #         base: {
    #           start_line: 1,
    #           end_line: 1,
    #           hunk_content: "HunkContent"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken",
    #     destination_commit_id: "ObjectId", # required
    #     source_commit_id: "ObjectId", # required
    #     base_commit_id: "ObjectId"
    #   }
    # @return [Types::DescribeMergeConflictsOutput]
    def describe_merge_conflicts(params = {}, options = {})
      request = build_request(:describe_merge_conflicts, params)
      request.send_request(options)
    end

    # <p>Returns information about one or more pull request events.</p>
    # @param [Hash, Types::DescribePullRequestEventsInput] params
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    # @option params [String] :pull_request_event_type
    #   <p>Optional. The pull request event type about which you want to return information.</p>
    # @option params [String] :actor_arn
    #   <p>The Amazon Resource Name (ARN) of the user whose actions resulted in the event.
    #               Examples include updating the pull request with more commits or changing the status of a
    #               pull request.</p>
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results. 
    #               The default is 100 events, which is also the maximum number of events that can be returned in a result.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #     pull_request_event_type: "PULL_REQUEST_CREATED" # One of: ["PULL_REQUEST_CREATED", "PULL_REQUEST_STATUS_CHANGED", "PULL_REQUEST_SOURCE_REFERENCE_UPDATED", "PULL_REQUEST_MERGE_STATE_CHANGED", "PULL_REQUEST_APPROVAL_RULE_CREATED", "PULL_REQUEST_APPROVAL_RULE_UPDATED", "PULL_REQUEST_APPROVAL_RULE_DELETED", "PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN", "PULL_REQUEST_APPROVAL_STATE_CHANGED"],
    #     actor_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_pull_request_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pull_request_events: [ # required
    #       {
    #         pull_request_id: "PullRequestId",
    #         event_date: Time.now,
    #         pull_request_event_type: "PULL_REQUEST_CREATED" # One of: ["PULL_REQUEST_CREATED", "PULL_REQUEST_STATUS_CHANGED", "PULL_REQUEST_SOURCE_REFERENCE_UPDATED", "PULL_REQUEST_MERGE_STATE_CHANGED", "PULL_REQUEST_APPROVAL_RULE_CREATED", "PULL_REQUEST_APPROVAL_RULE_UPDATED", "PULL_REQUEST_APPROVAL_RULE_DELETED", "PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN", "PULL_REQUEST_APPROVAL_STATE_CHANGED"],
    #         actor_arn: "Arn",
    #         pull_request_created_event_metadata: {
    #           repository_name: "RepositoryName",
    #           source_commit_id: "CommitId",
    #           destination_commit_id: "CommitId",
    #           merge_base: "CommitId"
    #         },
    #         pull_request_status_changed_event_metadata: {
    #           pull_request_status: "OPEN" # One of: ["OPEN", "CLOSED"]
    #         },
    #         pull_request_source_reference_updated_event_metadata: {
    #           repository_name: "RepositoryName",
    #           before_commit_id: "CommitId",
    #           after_commit_id: "CommitId",
    #           merge_base: "CommitId"
    #         },
    #         pull_request_merged_state_changed_event_metadata: {
    #           repository_name: "RepositoryName",
    #           destination_reference: "ReferenceName",
    #           merge_metadata: {
    #             is_merged: false,
    #             merged_by: "Arn",
    #             merge_commit_id: "CommitId",
    #             merge_option: "FAST_FORWARD_MERGE" # One of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #           }
    #         },
    #         approval_rule_event_metadata: {
    #           approval_rule_name: "ApprovalRuleName",
    #           approval_rule_id: "ApprovalRuleId",
    #           approval_rule_content: "ApprovalRuleContent"
    #         },
    #         approval_state_changed_event_metadata: {
    #           revision_id: "RevisionId",
    #           approval_status: "APPROVE" # One of: ["APPROVE", "REVOKE"]
    #         },
    #         approval_rule_overridden_event_metadata: {
    #           revision_id: "RevisionId",
    #           override_status: "OVERRIDE" # One of: ["OVERRIDE", "REVOKE"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribePullRequestEventsOutput]
    def describe_pull_request_events(params = {}, options = {})
      request = build_request(:describe_pull_request_events, params)
      request.send_request(options)
    end

    # <p>Removes the association between a template and a repository so that approval rules
    #             based on the template are not automatically created when pull requests are created in
    #             the specified repository. This does not delete any approval rules previously created for
    #             pull requests through the template association.</p>
    # @param [Hash, Types::DisassociateApprovalRuleTemplateFromRepositoryInput] params
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the approval rule template to disassociate from a specified repository.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository you want to disassociate from the template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     repository_name: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.disassociate_approval_rule_template_from_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_approval_rule_template_from_repository(params = {}, options = {})
      request = build_request(:disassociate_approval_rule_template_from_repository, params)
      request.send_request(options)
    end

    # <p>Evaluates whether a pull request has met all the conditions specified in its associated approval rules.</p>
    # @param [Hash, Types::EvaluatePullRequestApprovalRulesInput] params
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request you want to evaluate.</p>
    # @option params [String] :revision_id
    #   <p>The system-generated ID for the pull request revision. To retrieve the most recent
    #               revision ID for a pull request, use
    #               <a>GetPullRequest</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #     revision_id: "RevisionId", # required
    #   }
    #   options = {}
    #   response = client.evaluate_pull_request_approval_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation: { # required
    #       approved: false,
    #       overridden: false,
    #       approval_rules_satisfied: ["ApprovalRuleName"],
    #       approval_rules_not_satisfied: ["ApprovalRuleName"]
    #     }
    #   }
    # @return [Types::EvaluatePullRequestApprovalRulesOutput]
    def evaluate_pull_request_approval_rules(params = {}, options = {})
      request = build_request(:evaluate_pull_request_approval_rules, params)
      request.send_request(options)
    end

    # <p>Returns information about a specified approval rule template.</p>
    # @param [Hash, Types::GetApprovalRuleTemplateInput] params
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the approval rule template for which you want to get information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #   }
    #   options = {}
    #   response = client.get_approval_rule_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     approval_rule_template: { # required
    #       approval_rule_template_id: "ApprovalRuleTemplateId",
    #       approval_rule_template_name: "ApprovalRuleTemplateName",
    #       approval_rule_template_description: "ApprovalRuleTemplateDescription",
    #       approval_rule_template_content: "ApprovalRuleTemplateContent",
    #       rule_content_sha256: "RuleContentSha256",
    #       last_modified_date: Time.now,
    #       creation_date: Time.now,
    #       last_modified_user: "Arn"
    #     }
    #   }
    # @return [Types::GetApprovalRuleTemplateOutput]
    def get_approval_rule_template(params = {}, options = {})
      request = build_request(:get_approval_rule_template, params)
      request.send_request(options)
    end

    # <p>Returns the base-64 encoded content of an individual blob in a repository.</p>
    # @param [Hash, Types::GetBlobInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the blob.</p>
    # @option params [String] :blob_id
    #   <p>The ID of the blob, which is its SHA-1 pointer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     blob_id: "ObjectId", # required
    #   }
    #   options = {}
    #   response = client.get_blob(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content: "data", # required
    #   }
    # @return [Types::GetBlobOutput]
    def get_blob(params = {}, options = {})
      request = build_request(:get_blob, params)
      request.send_request(options)
    end

    # <p>Returns information about a repository branch, including its name and the last commit ID.</p>
    # @param [Hash, Types::GetBranchInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the branch for which you want to retrieve information.</p>
    # @option params [String] :branch_name
    #   <p>The name of the branch for which you want to retrieve information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName",
    #     branch_name: "BranchName"
    #   }
    #   options = {}
    #   response = client.get_branch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     branch: {
    #       branch_name: "BranchName",
    #       commit_id: "CommitId"
    #     }
    #   }
    # @return [Types::GetBranchOutput]
    def get_branch(params = {}, options = {})
      request = build_request(:get_branch, params)
      request.send_request(options)
    end

    # <p>Returns the content of a comment made on a change, file, or commit in a repository. </p>
    #          <note>
    #             <p>Reaction counts might include numbers from user identities who were deleted after the reaction was made. For a count of 
    #         reactions from active identities, use GetCommentReactions.</p>
    #          </note>
    # @param [Hash, Types::GetCommentInput] params
    # @option params [String] :comment_id
    #   <p>The unique, system-generated ID of the comment. To get this ID, use  <a>GetCommentsForComparedCommit</a>
    #               or <a>GetCommentsForPullRequest</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     comment_id: "CommentId", # required
    #   }
    #   options = {}
    #   response = client.get_comment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comment: {
    #       comment_id: "CommentId",
    #       content: "Content",
    #       in_reply_to: "CommentId",
    #       creation_date: Time.now,
    #       last_modified_date: Time.now,
    #       author_arn: "Arn",
    #       deleted: false,
    #       client_request_token: "ClientRequestToken",
    #       caller_reactions: ["ReactionValue"],
    #       reaction_counts: {
    #         "ReactionValue" => 1
    #       }
    #     }
    #   }
    # @return [Types::GetCommentOutput]
    def get_comment(params = {}, options = {})
      request = build_request(:get_comment, params)
      request.send_request(options)
    end

    # <p>Returns information about reactions to a specified comment ID. Reactions from users who have been deleted will not be included in the count.</p>
    # @param [Hash, Types::GetCommentReactionsInput] params
    # @option params [String] :comment_id
    #   <p>The ID of the comment for which you want to get reactions information.</p>
    # @option params [String] :reaction_user_arn
    #   <p>Optional. The Amazon Resource Name (ARN) of the user or identity for which you want to get reaction information.</p>
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the results. </p>
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.  The default is the same as the allowed maximum, 1,000.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     comment_id: "CommentId", # required
    #     reaction_user_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_comment_reactions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reactions_for_comment: [ # required
    #       {
    #         reaction: {
    #           emoji: "ReactionEmoji",
    #           short_code: "ReactionShortCode",
    #           unicode: "ReactionUnicode"
    #         },
    #         reaction_users: ["Arn"],
    #         reactions_from_deleted_users_count: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetCommentReactionsOutput]
    def get_comment_reactions(params = {}, options = {})
      request = build_request(:get_comment_reactions, params)
      request.send_request(options)
    end

    # <p>Returns information about comments made on the comparison between two commits.</p>
    #          <note>
    #             <p>Reaction counts might include numbers from user identities who were deleted after the reaction was made. For a count of 
    #             reactions from active identities, use GetCommentReactions.</p>
    #          </note>
    # @param [Hash, Types::GetCommentsForComparedCommitInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to compare commits.</p>
    # @option params [String] :before_commit_id
    #   <p>To establish the directionality of the comparison, the full commit ID of the before
    #               commit.</p>
    # @option params [String] :after_commit_id
    #   <p>To establish the directionality of the comparison, the full commit ID of the after
    #               commit.</p>
    # @option params [String] :next_token
    #   <p>An enumeration token that when provided in a request, returns the next batch of the results. </p>
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results. The
    #               default is 100 comments, but you can configure up to 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     before_commit_id: "CommitId",
    #     after_commit_id: "CommitId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_comments_for_compared_commit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comments_for_compared_commit_data: [
    #       {
    #         repository_name: "RepositoryName",
    #         before_commit_id: "CommitId",
    #         after_commit_id: "CommitId",
    #         before_blob_id: "ObjectId",
    #         after_blob_id: "ObjectId",
    #         location: {
    #           file_path: "Path",
    #           file_position: 1,
    #           relative_file_version: "BEFORE" # One of: ["BEFORE", "AFTER"]
    #         },
    #         comments: [
    #           {
    #             comment_id: "CommentId",
    #             content: "Content",
    #             in_reply_to: "CommentId",
    #             creation_date: Time.now,
    #             last_modified_date: Time.now,
    #             author_arn: "Arn",
    #             deleted: false,
    #             client_request_token: "ClientRequestToken",
    #             caller_reactions: ["ReactionValue"],
    #             reaction_counts: {
    #               "ReactionValue" => 1
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetCommentsForComparedCommitOutput]
    def get_comments_for_compared_commit(params = {}, options = {})
      request = build_request(:get_comments_for_compared_commit, params)
      request.send_request(options)
    end

    # <p>Returns comments made on a pull request.</p>
    #          <note>
    #             <p>Reaction counts might include numbers from user identities who were deleted after the reaction was made. For a count of 
    #             reactions from active identities, use GetCommentReactions.</p>
    #          </note>
    # @param [Hash, Types::GetCommentsForPullRequestInput] params
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the pull request. Requirement is conditional: <code>repositoryName</code> must be specified when 
    #               <code>beforeCommitId</code> and <code>afterCommitId</code> are included.</p>
    # @option params [String] :before_commit_id
    #   <p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created. Requirement is conditional: 
    #               <code>beforeCommitId</code> must be specified when <code>repositoryName</code> is included.</p>
    # @option params [String] :after_commit_id
    #   <p>The full commit ID of the commit in the source branch that was the tip of the branch at the time the comment was made. Requirement is conditional: 
    #               <code>afterCommitId</code> must be specified when <code>repositoryName</code> is included.</p>
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results. The default is 100 comments.
    #               You can return up to 500 comments with a single request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #     repository_name: "RepositoryName",
    #     before_commit_id: "CommitId",
    #     after_commit_id: "CommitId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_comments_for_pull_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comments_for_pull_request_data: [
    #       {
    #         pull_request_id: "PullRequestId",
    #         repository_name: "RepositoryName",
    #         before_commit_id: "CommitId",
    #         after_commit_id: "CommitId",
    #         before_blob_id: "ObjectId",
    #         after_blob_id: "ObjectId",
    #         location: {
    #           file_path: "Path",
    #           file_position: 1,
    #           relative_file_version: "BEFORE" # One of: ["BEFORE", "AFTER"]
    #         },
    #         comments: [
    #           {
    #             comment_id: "CommentId",
    #             content: "Content",
    #             in_reply_to: "CommentId",
    #             creation_date: Time.now,
    #             last_modified_date: Time.now,
    #             author_arn: "Arn",
    #             deleted: false,
    #             client_request_token: "ClientRequestToken",
    #             caller_reactions: ["ReactionValue"],
    #             reaction_counts: {
    #               "ReactionValue" => 1
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetCommentsForPullRequestOutput]
    def get_comments_for_pull_request(params = {}, options = {})
      request = build_request(:get_comments_for_pull_request, params)
      request.send_request(options)
    end

    # <p>Returns information about a commit, including commit message and committer information.</p>
    # @param [Hash, Types::GetCommitInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository to which the commit was made.</p>
    # @option params [String] :commit_id
    #   <p>The commit ID. Commit IDs are the full SHA ID of the commit.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     commit_id: "ObjectId", # required
    #   }
    #   options = {}
    #   response = client.get_commit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     commit: { # required
    #       commit_id: "ObjectId",
    #       tree_id: "ObjectId",
    #       parents: ["ObjectId"],
    #       message: "Message",
    #       author: {
    #         name: "Name",
    #         email: "Email",
    #         date: "Date"
    #       },
    #       committer: {
    #         name: "Name",
    #         email: "Email",
    #         date: "Date"
    #       },
    #       additional_data: "AdditionalData"
    #     }
    #   }
    # @return [Types::GetCommitOutput]
    def get_commit(params = {}, options = {})
      request = build_request(:get_commit, params)
      request.send_request(options)
    end

    # <p>Returns information about the differences in a valid commit specifier (such as a
    #             branch, tag, HEAD, commit ID, or other fully qualified reference). Results can be
    #             limited to a specified path.</p>
    # @param [Hash, Types::GetDifferencesInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to get differences.</p>
    # @option params [String] :before_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, the full commit ID). Optional. If not specified, all changes before the
    #                   <code>afterCommitSpecifier</code> value are shown. If you do not use
    #                   <code>beforeCommitSpecifier</code> in your request, consider limiting the results
    #               with <code>maxResults</code>.</p>
    # @option params [String] :after_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit.</p>
    # @option params [String] :before_path
    #   <p>The file path in which to check for differences. Limits the results to this path. Can
    #               also be used to specify the previous name of a directory or folder. If
    #                   <code>beforePath</code> and <code>afterPath</code> are not specified, differences
    #               are shown for all paths.</p>
    # @option params [String] :after_path
    #   <p>The file path in which to check differences. Limits the results to this path. Can also
    #               be used to specify the changed name of a directory or folder, if it has changed. If not
    #               specified, differences are shown for all paths.</p>
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     before_commit_specifier: "CommitName",
    #     after_commit_specifier: "CommitName", # required
    #     before_path: "Path",
    #     after_path: "Path",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_differences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     differences: [
    #       {
    #         before_blob: {
    #           blob_id: "ObjectId",
    #           path: "Path",
    #           mode: "Mode"
    #         },
    #         after_blob: {
    #           blob_id: "ObjectId",
    #           path: "Path",
    #           mode: "Mode"
    #         },
    #         change_type: "A" # One of: ["A", "M", "D"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetDifferencesOutput]
    def get_differences(params = {}, options = {})
      request = build_request(:get_differences, params)
      request.send_request(options)
    end

    # <p>Returns the base-64 encoded contents of a specified file and its metadata.</p>
    # @param [Hash, Types::GetFileInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the file.</p>
    # @option params [String] :commit_specifier
    #   <p>The fully quaified reference that identifies the commit that contains the file. For
    #               example, you can specify a full commit ID, a tag, a branch name, or a reference such as
    #               refs/heads/main. If none is provided, the head commit is used.</p>
    # @option params [String] :file_path
    #   <p>The fully qualified path to the file, including the full name and extension of the
    #               file. For example, /examples/file.md is the fully qualified path to a file named file.md
    #               in a folder named examples.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     commit_specifier: "CommitName",
    #     file_path: "Path", # required
    #   }
    #   options = {}
    #   response = client.get_file(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     commit_id: "ObjectId", # required
    #     blob_id: "ObjectId", # required
    #     file_path: "Path", # required
    #     file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"], # required
    #     file_size: 1, # required
    #     file_content: "data", # required
    #   }
    # @return [Types::GetFileOutput]
    def get_file(params = {}, options = {})
      request = build_request(:get_file, params)
      request.send_request(options)
    end

    # <p>Returns the contents of a specified folder in a repository.</p>
    # @param [Hash, Types::GetFolderInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository.</p>
    # @option params [String] :commit_specifier
    #   <p>A fully qualified reference used to identify a commit that contains the version of the
    #               folder's content to return. A fully qualified reference can be a commit ID, branch name,
    #               tag, or reference such as HEAD. If no specifier is provided, the folder content is
    #               returned as it exists in the HEAD commit.</p>
    # @option params [String] :folder_path
    #   <p>The fully qualified path to the folder whose contents are returned, including the
    #               folder name. For example, /examples is a fully-qualified path to a folder named examples
    #               that was created off of the root directory (/) of a repository. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     commit_specifier: "CommitName",
    #     folder_path: "Path", # required
    #   }
    #   options = {}
    #   response = client.get_folder(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     commit_id: "ObjectId", # required
    #     folder_path: "Path", # required
    #     tree_id: "ObjectId",
    #     sub_folders: [
    #       {
    #         tree_id: "ObjectId",
    #         absolute_path: "Path",
    #         relative_path: "Path"
    #       }
    #     ],
    #     files: [
    #       {
    #         blob_id: "ObjectId",
    #         absolute_path: "Path",
    #         relative_path: "Path",
    #         file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #       }
    #     ],
    #     symbolic_links: [
    #       {
    #         blob_id: "ObjectId",
    #         absolute_path: "Path",
    #         relative_path: "Path",
    #         file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #       }
    #     ],
    #     sub_modules: [
    #       {
    #         commit_id: "ObjectId",
    #         absolute_path: "Path",
    #         relative_path: "Path"
    #       }
    #     ]
    #   }
    # @return [Types::GetFolderOutput]
    def get_folder(params = {}, options = {})
      request = build_request(:get_folder, params)
      request.send_request(options)
    end

    # <p>Returns information about a specified merge commit.</p>
    # @param [Hash, Types::GetMergeCommitInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the merge commit about which you want to get information.</p>
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     source_commit_specifier: "CommitName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     conflict_detail_level: "FILE_LEVEL" # One of: ["FILE_LEVEL", "LINE_LEVEL"],
    #     conflict_resolution_strategy: "NONE" # One of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #   }
    #   options = {}
    #   response = client.get_merge_commit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_commit_id: "ObjectId",
    #     destination_commit_id: "ObjectId",
    #     base_commit_id: "ObjectId",
    #     merged_commit_id: "ObjectId"
    #   }
    # @return [Types::GetMergeCommitOutput]
    def get_merge_commit(params = {}, options = {})
      request = build_request(:get_merge_commit, params)
      request.send_request(options)
    end

    # <p>Returns information about merge conflicts between the before and after commit IDs for a pull request in a repository.</p>
    # @param [Hash, Types::GetMergeConflictsInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :merge_option
    #   <p>The merge option or strategy you want to use to merge the code.  </p>
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    # @option params [Integer] :max_conflict_files
    #   <p>The maximum number of files to include in the output.</p>
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     source_commit_specifier: "CommitName", # required
    #     merge_option: "FAST_FORWARD_MERGE" # One of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"], # required
    #     conflict_detail_level: "FILE_LEVEL" # One of: ["FILE_LEVEL", "LINE_LEVEL"],
    #     max_conflict_files: 1,
    #     conflict_resolution_strategy: "NONE" # One of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"],
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_merge_conflicts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mergeable: false, # required
    #     destination_commit_id: "ObjectId", # required
    #     source_commit_id: "ObjectId", # required
    #     base_commit_id: "ObjectId",
    #     conflict_metadata_list: [ # required
    #       {
    #         file_path: "Path",
    #         file_sizes: {
    #           source: 1,
    #           destination: 1,
    #           base: 1
    #         },
    #         file_modes: {
    #           source: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"],
    #           destination: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"],
    #           base: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #         },
    #         object_types: {
    #           source: "FILE" # One of: ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"],
    #           destination: "FILE" # One of: ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"],
    #           base: "FILE" # One of: ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"]
    #         },
    #         number_of_conflicts: 1,
    #         is_binary_file: {
    #           source: false,
    #           destination: false,
    #           base: false
    #         },
    #         content_conflict: false,
    #         file_mode_conflict: false,
    #         object_type_conflict: false,
    #         merge_operations: {
    #           source: "A" # One of: ["A", "M", "D"],
    #           destination: "A" # One of: ["A", "M", "D"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetMergeConflictsOutput]
    def get_merge_conflicts(params = {}, options = {})
      request = build_request(:get_merge_conflicts, params)
      request.send_request(options)
    end

    # <p>Returns information about the merge options available for merging two specified
    #             branches. For details about why a merge option is not available, use GetMergeConflicts
    #             or DescribeMergeConflicts.</p>
    # @param [Hash, Types::GetMergeOptionsInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the commits about which you want to get merge options.</p>
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     source_commit_specifier: "CommitName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     conflict_detail_level: "FILE_LEVEL" # One of: ["FILE_LEVEL", "LINE_LEVEL"],
    #     conflict_resolution_strategy: "NONE" # One of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #   }
    #   options = {}
    #   response = client.get_merge_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     merge_options: ["FAST_FORWARD_MERGE" # One of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]], # required
    #     source_commit_id: "ObjectId", # required
    #     destination_commit_id: "ObjectId", # required
    #     base_commit_id: "ObjectId", # required
    #   }
    # @return [Types::GetMergeOptionsOutput]
    def get_merge_options(params = {}, options = {})
      request = build_request(:get_merge_options, params)
      request.send_request(options)
    end

    # <p>Gets information about a pull request in a specified repository.</p>
    # @param [Hash, Types::GetPullRequestInput] params
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #   }
    #   options = {}
    #   response = client.get_pull_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pull_request: { # required
    #       pull_request_id: "PullRequestId",
    #       title: "Title",
    #       description: "Description",
    #       last_activity_date: Time.now,
    #       creation_date: Time.now,
    #       pull_request_status: "OPEN" # One of: ["OPEN", "CLOSED"],
    #       author_arn: "Arn",
    #       pull_request_targets: [
    #         {
    #           repository_name: "RepositoryName",
    #           source_reference: "ReferenceName",
    #           destination_reference: "ReferenceName",
    #           destination_commit: "CommitId",
    #           source_commit: "CommitId",
    #           merge_base: "CommitId",
    #           merge_metadata: {
    #             is_merged: false,
    #             merged_by: "Arn",
    #             merge_commit_id: "CommitId",
    #             merge_option: "FAST_FORWARD_MERGE" # One of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #           }
    #         }
    #       ],
    #       client_request_token: "ClientRequestToken",
    #       revision_id: "RevisionId",
    #       approval_rules: [
    #         {
    #           approval_rule_id: "ApprovalRuleId",
    #           approval_rule_name: "ApprovalRuleName",
    #           approval_rule_content: "ApprovalRuleContent",
    #           rule_content_sha256: "RuleContentSha256",
    #           last_modified_date: Time.now,
    #           creation_date: Time.now,
    #           last_modified_user: "Arn",
    #           origin_approval_rule_template: {
    #             approval_rule_template_id: "ApprovalRuleTemplateId",
    #             approval_rule_template_name: "ApprovalRuleTemplateName"
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetPullRequestOutput]
    def get_pull_request(params = {}, options = {})
      request = build_request(:get_pull_request, params)
      request.send_request(options)
    end

    # <p>Gets information about the approval states for a specified pull request. Approval states only apply to pull requests that have one or more
    #         approval rules applied to them.</p>
    # @param [Hash, Types::GetPullRequestApprovalStatesInput] params
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID for the pull request.</p>
    # @option params [String] :revision_id
    #   <p>The system-generated ID for the pull request revision.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #     revision_id: "RevisionId", # required
    #   }
    #   options = {}
    #   response = client.get_pull_request_approval_states(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     approvals: [
    #       {
    #         user_arn: "Arn",
    #         approval_state: "APPROVE" # One of: ["APPROVE", "REVOKE"]
    #       }
    #     ]
    #   }
    # @return [Types::GetPullRequestApprovalStatesOutput]
    def get_pull_request_approval_states(params = {}, options = {})
      request = build_request(:get_pull_request_approval_states, params)
      request.send_request(options)
    end

    # <p>Returns information about whether approval rules have been set aside (overridden) for a 
    #             pull request, and if so, the Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request.</p>
    # @param [Hash, Types::GetPullRequestOverrideStateInput] params
    # @option params [String] :pull_request_id
    #   <p>The ID of the pull request for which you want to get information about whether approval rules have been set aside (overridden).</p>
    # @option params [String] :revision_id
    #   <p>The system-generated ID of the revision for the pull request. To retrieve the most
    #               recent revision ID, use
    #               <a>GetPullRequest</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #     revision_id: "RevisionId", # required
    #   }
    #   options = {}
    #   response = client.get_pull_request_override_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     overridden: false,
    #     overrider: "Arn"
    #   }
    # @return [Types::GetPullRequestOverrideStateOutput]
    def get_pull_request_override_state(params = {}, options = {})
      request = build_request(:get_pull_request_override_state, params)
      request.send_request(options)
    end

    # <p>Returns information about a repository.</p>
    #          <note>
    #             <p>The description field for a repository accepts all HTML characters and all valid
    #                 Unicode characters. Applications that do not HTML-encode the description and display
    #                 it in a webpage can expose users to potentially malicious code. Make sure that you
    #                 HTML-encode the description field in any application that uses this API to display
    #                 the repository description on a webpage.</p>
    #          </note>
    # @param [Hash, Types::GetRepositoryInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository to get information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.get_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_metadata: {
    #       account_id: "AccountId",
    #       repository_id: "RepositoryId",
    #       repository_name: "RepositoryName",
    #       repository_description: "RepositoryDescription",
    #       default_branch: "BranchName",
    #       last_modified_date: Time.now,
    #       creation_date: Time.now,
    #       clone_url_http: "CloneUrlHttp",
    #       clone_url_ssh: "CloneUrlSsh",
    #       arn: "Arn",
    #       kms_key_id: "KmsKeyId"
    #     }
    #   }
    # @return [Types::GetRepositoryOutput]
    def get_repository(params = {}, options = {})
      request = build_request(:get_repository, params)
      request.send_request(options)
    end

    # <p>Gets information about triggers configured for a repository.</p>
    # @param [Hash, Types::GetRepositoryTriggersInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository for which the trigger is configured.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.get_repository_triggers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_id: "RepositoryTriggersConfigurationId",
    #     triggers: [
    #       {
    #         name: "RepositoryTriggerName", # required
    #         destination_arn: "Arn", # required
    #         custom_data: "RepositoryTriggerCustomData",
    #         branches: ["BranchName"],
    #         events: ["all" # One of: ["all", "updateReference", "createReference", "deleteReference"]], # required
    #       }
    #     ]
    #   }
    # @return [Types::GetRepositoryTriggersOutput]
    def get_repository_triggers(params = {}, options = {})
      request = build_request(:get_repository_triggers, params)
      request.send_request(options)
    end

    # <p>Lists all approval rule templates in the specified Amazon Web Services Region in your Amazon Web Services account. If
    #             an Amazon Web Services Region is not specified, the Amazon Web Services Region where you are signed in is used.</p>
    # @param [Hash, Types::ListApprovalRuleTemplatesInput] params
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_approval_rule_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     approval_rule_template_names: ["ApprovalRuleTemplateName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApprovalRuleTemplatesOutput]
    def list_approval_rule_templates(params = {}, options = {})
      request = build_request(:list_approval_rule_templates, params)
      request.send_request(options)
    end

    # <p>Lists all approval rule templates that are associated with a specified repository.</p>
    # @param [Hash, Types::ListAssociatedApprovalRuleTemplatesForRepositoryInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository for which you want to list all associated approval rule templates.</p>
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_associated_approval_rule_templates_for_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     approval_rule_template_names: ["ApprovalRuleTemplateName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssociatedApprovalRuleTemplatesForRepositoryOutput]
    def list_associated_approval_rule_templates_for_repository(params = {}, options = {})
      request = build_request(:list_associated_approval_rule_templates_for_repository, params)
      request.send_request(options)
    end

    # <p>Gets information about one or more branches in a repository.</p>
    # @param [Hash, Types::ListBranchesInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the branches.</p>
    # @option params [String] :next_token
    #   <p>An enumeration token that allows the operation to batch the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_branches(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     branches: ["BranchName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListBranchesOutput]
    def list_branches(params = {}, options = {})
      request = build_request(:list_branches, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of commits and changes to a specified file.</p>
    # @param [Hash, Types::ListFileCommitHistoryRequest] params
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the file.</p>
    # @option params [String] :commit_specifier
    #   <p>The fully quaified reference that identifies the commit that contains the file. For
    #               example, you can specify a full commit ID, a tag, a branch name, or a reference such as
    #               <code>refs/heads/main</code>. If none is provided, the head commit is used.</p>
    # @option params [String] :file_path
    #   <p>The full path of the file whose history you want to retrieve, including the name of the file.</p>
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    # @option params [String] :next_token
    #   <p>An enumeration token that allows the operation to batch the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     commit_specifier: "CommitName",
    #     file_path: "Path", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_file_commit_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     revision_dag: [ # required
    #       {
    #         commit: {
    #           commit_id: "ObjectId",
    #           tree_id: "ObjectId",
    #           parents: ["ObjectId"],
    #           message: "Message",
    #           author: {
    #             name: "Name",
    #             email: "Email",
    #             date: "Date"
    #           },
    #           committer: {
    #             name: "Name",
    #             email: "Email",
    #             date: "Date"
    #           },
    #           additional_data: "AdditionalData"
    #         },
    #         blob_id: "ObjectId",
    #         path: "Path",
    #         revision_children: ["RevisionId"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFileCommitHistoryResponse]
    def list_file_commit_history(params = {}, options = {})
      request = build_request(:list_file_commit_history, params)
      request.send_request(options)
    end

    # <p>Returns a list of pull requests for a specified repository. The return list can be refined by pull request 
    #         status or pull request author ARN.</p>
    # @param [Hash, Types::ListPullRequestsInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository for which you want to list pull requests.</p>
    # @option params [String] :author_arn
    #   <p>Optional. The Amazon Resource Name (ARN) of the user who created the pull request. If used, this filters the results 
    #           to pull requests created by that user.</p>
    # @option params [String] :pull_request_status
    #   <p>Optional. The status of the pull request. If used, this refines the results to the pull requests that match the specified status.</p>
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     author_arn: "Arn",
    #     pull_request_status: "OPEN" # One of: ["OPEN", "CLOSED"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_pull_requests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pull_request_ids: ["PullRequestId"], # required
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPullRequestsOutput]
    def list_pull_requests(params = {}, options = {})
      request = build_request(:list_pull_requests, params)
      request.send_request(options)
    end

    # <p>Gets information about one or more repositories.</p>
    # @param [Hash, Types::ListRepositoriesInput] params
    # @option params [String] :next_token
    #   <p>An enumeration token that allows the operation to batch the results of the operation. 
    #               Batch sizes are 1,000 for list repository operations. When the client sends the token back to CodeCommit,
    #               another page of 1,000 records is retrieved.</p>
    # @option params [String] :sort_by
    #   <p>The criteria used to sort the results of a list repositories operation.</p>
    # @option params [String] :order
    #   <p>The order in which to sort the results of a list repositories operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     sort_by: "repositoryName" # One of: ["repositoryName", "lastModifiedDate"],
    #     order: "ascending" # One of: ["ascending", "descending"]
    #   }
    #   options = {}
    #   response = client.list_repositories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repositories: [
    #       {
    #         repository_name: "RepositoryName",
    #         repository_id: "RepositoryId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRepositoriesOutput]
    def list_repositories(params = {}, options = {})
      request = build_request(:list_repositories, params)
      request.send_request(options)
    end

    # <p>Lists all repositories associated with the specified approval rule template.</p>
    # @param [Hash, Types::ListRepositoriesForApprovalRuleTemplateInput] params
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the approval rule template for which you want to list repositories that are associated with that template.</p>
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_repositories_for_approval_rule_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_names: ["RepositoryName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRepositoriesForApprovalRuleTemplateOutput]
    def list_repositories_for_approval_rule_template(params = {}, options = {})
      request = build_request(:list_repositories_for_approval_rule_template, params)
      request.send_request(options)
    end

    # <p>Gets information about Amazon Web Servicestags for a specified Amazon Resource Name (ARN) in CodeCommit. For a list of valid resources in CodeCommit, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats">CodeCommit Resources and Operations</a> in the<i> CodeCommit User
    #                 Guide</i>.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to get information
    #               about tags, if any.</p>
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Merges two branches using the fast-forward merge strategy.</p>
    # @param [Hash, Types::MergeBranchesByFastForwardInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to merge two branches.</p>
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :target_branch
    #   <p>The branch where the merge is applied.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     source_commit_specifier: "CommitName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     target_branch: "BranchName"
    #   }
    #   options = {}
    #   response = client.merge_branches_by_fast_forward(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     commit_id: "ObjectId",
    #     tree_id: "ObjectId"
    #   }
    # @return [Types::MergeBranchesByFastForwardOutput]
    def merge_branches_by_fast_forward(params = {}, options = {})
      request = build_request(:merge_branches_by_fast_forward, params)
      request.send_request(options)
    end

    # <p>Merges two branches using the squash merge strategy.</p>
    # @param [Hash, Types::MergeBranchesBySquashInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to merge two branches.</p>
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :target_branch
    #   <p>The branch where the merge is applied. </p>
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    # @option params [String] :author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    # @option params [String] :email
    #   <p>The email address of the person merging the branches. This information is used in the
    #               commit information for the merge.</p>
    # @option params [String] :commit_message
    #   <p>The commit message for the merge.</p>
    # @option params [Boolean] :keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If this is specified as true, a .gitkeep file is
    #               created for empty folders. The default is false.</p>
    # @option params [Types::ConflictResolution] :conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     source_commit_specifier: "CommitName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     target_branch: "BranchName",
    #     conflict_detail_level: "FILE_LEVEL" # One of: ["FILE_LEVEL", "LINE_LEVEL"],
    #     conflict_resolution_strategy: "NONE" # One of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"],
    #     author_name: "Name",
    #     email: "Email",
    #     commit_message: "Message",
    #     keep_empty_folders: false,
    #     conflict_resolution: {
    #       replace_contents: [
    #         {
    #           file_path: "Path", # required
    #           replacement_type: "KEEP_BASE" # One of: ["KEEP_BASE", "KEEP_SOURCE", "KEEP_DESTINATION", "USE_NEW_CONTENT"], # required
    #           content: "data",
    #           file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #         }
    #       ],
    #       delete_files: [
    #         {
    #           file_path: "Path", # required
    #         }
    #       ],
    #       set_file_modes: [
    #         {
    #           file_path: "Path", # required
    #           file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"], # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.merge_branches_by_squash(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     commit_id: "ObjectId",
    #     tree_id: "ObjectId"
    #   }
    # @return [Types::MergeBranchesBySquashOutput]
    def merge_branches_by_squash(params = {}, options = {})
      request = build_request(:merge_branches_by_squash, params)
      request.send_request(options)
    end

    # <p>Merges two specified branches using the three-way merge strategy.</p>
    # @param [Hash, Types::MergeBranchesByThreeWayInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to merge two branches.</p>
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    # @option params [String] :target_branch
    #   <p>The branch where the merge is applied. </p>
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    # @option params [String] :author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    # @option params [String] :email
    #   <p>The email address of the person merging the branches. This information is used in the
    #               commit information for the merge.</p>
    # @option params [String] :commit_message
    #   <p>The commit message to include in the commit information for the merge.</p>
    # @option params [Boolean] :keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If true, a .gitkeep file is created for empty folders.
    #               The default is false.</p>
    # @option params [Types::ConflictResolution] :conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     source_commit_specifier: "CommitName", # required
    #     destination_commit_specifier: "CommitName", # required
    #     target_branch: "BranchName",
    #     conflict_detail_level: "FILE_LEVEL" # One of: ["FILE_LEVEL", "LINE_LEVEL"],
    #     conflict_resolution_strategy: "NONE" # One of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"],
    #     author_name: "Name",
    #     email: "Email",
    #     commit_message: "Message",
    #     keep_empty_folders: false,
    #     conflict_resolution: {
    #       replace_contents: [
    #         {
    #           file_path: "Path", # required
    #           replacement_type: "KEEP_BASE" # One of: ["KEEP_BASE", "KEEP_SOURCE", "KEEP_DESTINATION", "USE_NEW_CONTENT"], # required
    #           content: "data",
    #           file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #         }
    #       ],
    #       delete_files: [
    #         {
    #           file_path: "Path", # required
    #         }
    #       ],
    #       set_file_modes: [
    #         {
    #           file_path: "Path", # required
    #           file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"], # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.merge_branches_by_three_way(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     commit_id: "ObjectId",
    #     tree_id: "ObjectId"
    #   }
    # @return [Types::MergeBranchesByThreeWayOutput]
    def merge_branches_by_three_way(params = {}, options = {})
      request = build_request(:merge_branches_by_three_way, params)
      request.send_request(options)
    end

    # <p>Attempts to merge the source commit of a pull request into the specified destination
    #             branch for that pull request at the specified commit using the fast-forward merge strategy. If the merge is successful, it closes the pull request.</p>
    # @param [Hash, Types::MergePullRequestByFastForwardInput] params
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    # @option params [String] :source_commit_id
    #   <p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an 
    #           exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #     repository_name: "RepositoryName", # required
    #     source_commit_id: "ObjectId"
    #   }
    #   options = {}
    #   response = client.merge_pull_request_by_fast_forward(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pull_request: {
    #       pull_request_id: "PullRequestId",
    #       title: "Title",
    #       description: "Description",
    #       last_activity_date: Time.now,
    #       creation_date: Time.now,
    #       pull_request_status: "OPEN" # One of: ["OPEN", "CLOSED"],
    #       author_arn: "Arn",
    #       pull_request_targets: [
    #         {
    #           repository_name: "RepositoryName",
    #           source_reference: "ReferenceName",
    #           destination_reference: "ReferenceName",
    #           destination_commit: "CommitId",
    #           source_commit: "CommitId",
    #           merge_base: "CommitId",
    #           merge_metadata: {
    #             is_merged: false,
    #             merged_by: "Arn",
    #             merge_commit_id: "CommitId",
    #             merge_option: "FAST_FORWARD_MERGE" # One of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #           }
    #         }
    #       ],
    #       client_request_token: "ClientRequestToken",
    #       revision_id: "RevisionId",
    #       approval_rules: [
    #         {
    #           approval_rule_id: "ApprovalRuleId",
    #           approval_rule_name: "ApprovalRuleName",
    #           approval_rule_content: "ApprovalRuleContent",
    #           rule_content_sha256: "RuleContentSha256",
    #           last_modified_date: Time.now,
    #           creation_date: Time.now,
    #           last_modified_user: "Arn",
    #           origin_approval_rule_template: {
    #             approval_rule_template_id: "ApprovalRuleTemplateId",
    #             approval_rule_template_name: "ApprovalRuleTemplateName"
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::MergePullRequestByFastForwardOutput]
    def merge_pull_request_by_fast_forward(params = {}, options = {})
      request = build_request(:merge_pull_request_by_fast_forward, params)
      request.send_request(options)
    end

    # <p>Attempts to merge the source commit of a pull request into the specified destination
    #             branch for that pull request at the specified commit using the squash merge strategy. If the merge is successful, it closes the pull request.</p>
    # @param [Hash, Types::MergePullRequestBySquashInput] params
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    # @option params [String] :source_commit_id
    #   <p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an 
    #               exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    # @option params [String] :commit_message
    #   <p>The commit message to include in the commit information for the merge.</p>
    # @option params [String] :author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    # @option params [String] :email
    #   <p>The email address of the person merging the branches. This information is used in the
    #               commit information for the merge.</p>
    # @option params [Boolean] :keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If true, a .gitkeep file is created for empty folders.
    #               The default is false.</p>
    # @option params [Types::ConflictResolution] :conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #     repository_name: "RepositoryName", # required
    #     source_commit_id: "ObjectId",
    #     conflict_detail_level: "FILE_LEVEL" # One of: ["FILE_LEVEL", "LINE_LEVEL"],
    #     conflict_resolution_strategy: "NONE" # One of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"],
    #     commit_message: "Message",
    #     author_name: "Name",
    #     email: "Email",
    #     keep_empty_folders: false,
    #     conflict_resolution: {
    #       replace_contents: [
    #         {
    #           file_path: "Path", # required
    #           replacement_type: "KEEP_BASE" # One of: ["KEEP_BASE", "KEEP_SOURCE", "KEEP_DESTINATION", "USE_NEW_CONTENT"], # required
    #           content: "data",
    #           file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #         }
    #       ],
    #       delete_files: [
    #         {
    #           file_path: "Path", # required
    #         }
    #       ],
    #       set_file_modes: [
    #         {
    #           file_path: "Path", # required
    #           file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"], # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.merge_pull_request_by_squash(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pull_request: {
    #       pull_request_id: "PullRequestId",
    #       title: "Title",
    #       description: "Description",
    #       last_activity_date: Time.now,
    #       creation_date: Time.now,
    #       pull_request_status: "OPEN" # One of: ["OPEN", "CLOSED"],
    #       author_arn: "Arn",
    #       pull_request_targets: [
    #         {
    #           repository_name: "RepositoryName",
    #           source_reference: "ReferenceName",
    #           destination_reference: "ReferenceName",
    #           destination_commit: "CommitId",
    #           source_commit: "CommitId",
    #           merge_base: "CommitId",
    #           merge_metadata: {
    #             is_merged: false,
    #             merged_by: "Arn",
    #             merge_commit_id: "CommitId",
    #             merge_option: "FAST_FORWARD_MERGE" # One of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #           }
    #         }
    #       ],
    #       client_request_token: "ClientRequestToken",
    #       revision_id: "RevisionId",
    #       approval_rules: [
    #         {
    #           approval_rule_id: "ApprovalRuleId",
    #           approval_rule_name: "ApprovalRuleName",
    #           approval_rule_content: "ApprovalRuleContent",
    #           rule_content_sha256: "RuleContentSha256",
    #           last_modified_date: Time.now,
    #           creation_date: Time.now,
    #           last_modified_user: "Arn",
    #           origin_approval_rule_template: {
    #             approval_rule_template_id: "ApprovalRuleTemplateId",
    #             approval_rule_template_name: "ApprovalRuleTemplateName"
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::MergePullRequestBySquashOutput]
    def merge_pull_request_by_squash(params = {}, options = {})
      request = build_request(:merge_pull_request_by_squash, params)
      request.send_request(options)
    end

    # <p>Attempts to merge the source commit of a pull request into the specified destination
    #             branch for that pull request at the specified commit using the three-way merge strategy. If the merge is successful, it closes the pull request.</p>
    # @param [Hash, Types::MergePullRequestByThreeWayInput] params
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    # @option params [String] :source_commit_id
    #   <p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an 
    #               exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    # @option params [String] :commit_message
    #   <p>The commit message to include in the commit information for the merge.</p>
    # @option params [String] :author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    # @option params [String] :email
    #   <p>The email address of the person merging the branches. This information is used in the
    #               commit information for the merge.</p>
    # @option params [Boolean] :keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If true, a .gitkeep file is created for empty folders.
    #               The default is false.</p>
    # @option params [Types::ConflictResolution] :conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #     repository_name: "RepositoryName", # required
    #     source_commit_id: "ObjectId",
    #     conflict_detail_level: "FILE_LEVEL" # One of: ["FILE_LEVEL", "LINE_LEVEL"],
    #     conflict_resolution_strategy: "NONE" # One of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"],
    #     commit_message: "Message",
    #     author_name: "Name",
    #     email: "Email",
    #     keep_empty_folders: false,
    #     conflict_resolution: {
    #       replace_contents: [
    #         {
    #           file_path: "Path", # required
    #           replacement_type: "KEEP_BASE" # One of: ["KEEP_BASE", "KEEP_SOURCE", "KEEP_DESTINATION", "USE_NEW_CONTENT"], # required
    #           content: "data",
    #           file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #         }
    #       ],
    #       delete_files: [
    #         {
    #           file_path: "Path", # required
    #         }
    #       ],
    #       set_file_modes: [
    #         {
    #           file_path: "Path", # required
    #           file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"], # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.merge_pull_request_by_three_way(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pull_request: {
    #       pull_request_id: "PullRequestId",
    #       title: "Title",
    #       description: "Description",
    #       last_activity_date: Time.now,
    #       creation_date: Time.now,
    #       pull_request_status: "OPEN" # One of: ["OPEN", "CLOSED"],
    #       author_arn: "Arn",
    #       pull_request_targets: [
    #         {
    #           repository_name: "RepositoryName",
    #           source_reference: "ReferenceName",
    #           destination_reference: "ReferenceName",
    #           destination_commit: "CommitId",
    #           source_commit: "CommitId",
    #           merge_base: "CommitId",
    #           merge_metadata: {
    #             is_merged: false,
    #             merged_by: "Arn",
    #             merge_commit_id: "CommitId",
    #             merge_option: "FAST_FORWARD_MERGE" # One of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #           }
    #         }
    #       ],
    #       client_request_token: "ClientRequestToken",
    #       revision_id: "RevisionId",
    #       approval_rules: [
    #         {
    #           approval_rule_id: "ApprovalRuleId",
    #           approval_rule_name: "ApprovalRuleName",
    #           approval_rule_content: "ApprovalRuleContent",
    #           rule_content_sha256: "RuleContentSha256",
    #           last_modified_date: Time.now,
    #           creation_date: Time.now,
    #           last_modified_user: "Arn",
    #           origin_approval_rule_template: {
    #             approval_rule_template_id: "ApprovalRuleTemplateId",
    #             approval_rule_template_name: "ApprovalRuleTemplateName"
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::MergePullRequestByThreeWayOutput]
    def merge_pull_request_by_three_way(params = {}, options = {})
      request = build_request(:merge_pull_request_by_three_way, params)
      request.send_request(options)
    end

    # <p>Sets aside (overrides) all approval rule requirements for a specified pull request.</p>
    # @param [Hash, Types::OverridePullRequestApprovalRulesInput] params
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request for which you want to override all
    #               approval rule requirements. To get this information, use
    #               <a>GetPullRequest</a>.</p>
    # @option params [String] :revision_id
    #   <p>The system-generated ID of the most recent revision of the pull request. You cannot override approval rules for anything but the most recent revision of a pull request.
    #               To get the revision ID, use GetPullRequest.</p>
    # @option params [String] :override_status
    #   <p>Whether you want to set aside approval rule requirements for the pull request (OVERRIDE) or revoke a previous override and apply 
    #           approval rule requirements (REVOKE). REVOKE status is not stored.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #     revision_id: "RevisionId", # required
    #     override_status: "OVERRIDE" # One of: ["OVERRIDE", "REVOKE"], # required
    #   }
    #   options = {}
    #   response = client.override_pull_request_approval_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def override_pull_request_approval_rules(params = {}, options = {})
      request = build_request(:override_pull_request_approval_rules, params)
      request.send_request(options)
    end

    # <p>Posts a comment on the comparison between two commits.</p>
    # @param [Hash, Types::PostCommentForComparedCommitInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to post a comment on the comparison between commits.</p>
    # @option params [String] :before_commit_id
    #   <p>To establish the directionality of the comparison, the full commit ID of the before
    #               commit. Required for commenting on any commit unless that commit is the initial
    #               commit.</p>
    # @option params [String] :after_commit_id
    #   <p>To establish the directionality of the comparison, the full commit ID of the after
    #               commit.</p>
    # @option params [Types::Location] :location
    #   <p>The location of the comparison where you want to comment.</p>
    # @option params [String] :content
    #   <p>The content of the comment you want to make.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     before_commit_id: "CommitId",
    #     after_commit_id: "CommitId", # required
    #     location: {
    #       file_path: "Path",
    #       file_position: 1,
    #       relative_file_version: "BEFORE" # One of: ["BEFORE", "AFTER"]
    #     },
    #     content: "Content", # required
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.post_comment_for_compared_commit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_name: "RepositoryName",
    #     before_commit_id: "CommitId",
    #     after_commit_id: "CommitId",
    #     before_blob_id: "ObjectId",
    #     after_blob_id: "ObjectId",
    #     location: {
    #       file_path: "Path",
    #       file_position: 1,
    #       relative_file_version: "BEFORE" # One of: ["BEFORE", "AFTER"]
    #     },
    #     comment: {
    #       comment_id: "CommentId",
    #       content: "Content",
    #       in_reply_to: "CommentId",
    #       creation_date: Time.now,
    #       last_modified_date: Time.now,
    #       author_arn: "Arn",
    #       deleted: false,
    #       client_request_token: "ClientRequestToken",
    #       caller_reactions: ["ReactionValue"],
    #       reaction_counts: {
    #         "ReactionValue" => 1
    #       }
    #     }
    #   }
    # @return [Types::PostCommentForComparedCommitOutput]
    def post_comment_for_compared_commit(params = {}, options = {})
      request = build_request(:post_comment_for_compared_commit, params)
      request.send_request(options)
    end

    # <p>Posts a comment on a pull request.</p>
    # @param [Hash, Types::PostCommentForPullRequestInput] params
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to post a comment on a pull request.</p>
    # @option params [String] :before_commit_id
    #   <p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.</p>
    # @option params [String] :after_commit_id
    #   <p>The full commit ID of the commit in the source branch that is the current tip of the branch for the pull request when you post the comment.</p>
    # @option params [Types::Location] :location
    #   <p>The location of the change where you want to post your comment. If no location is
    #               provided, the comment is posted as a general comment on the pull request difference
    #               between the before commit ID and the after commit ID.</p>
    # @option params [String] :content
    #   <p>The content of your comment on the change.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #     repository_name: "RepositoryName", # required
    #     before_commit_id: "CommitId", # required
    #     after_commit_id: "CommitId", # required
    #     location: {
    #       file_path: "Path",
    #       file_position: 1,
    #       relative_file_version: "BEFORE" # One of: ["BEFORE", "AFTER"]
    #     },
    #     content: "Content", # required
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.post_comment_for_pull_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_name: "RepositoryName",
    #     pull_request_id: "PullRequestId",
    #     before_commit_id: "CommitId",
    #     after_commit_id: "CommitId",
    #     before_blob_id: "ObjectId",
    #     after_blob_id: "ObjectId",
    #     location: {
    #       file_path: "Path",
    #       file_position: 1,
    #       relative_file_version: "BEFORE" # One of: ["BEFORE", "AFTER"]
    #     },
    #     comment: {
    #       comment_id: "CommentId",
    #       content: "Content",
    #       in_reply_to: "CommentId",
    #       creation_date: Time.now,
    #       last_modified_date: Time.now,
    #       author_arn: "Arn",
    #       deleted: false,
    #       client_request_token: "ClientRequestToken",
    #       caller_reactions: ["ReactionValue"],
    #       reaction_counts: {
    #         "ReactionValue" => 1
    #       }
    #     }
    #   }
    # @return [Types::PostCommentForPullRequestOutput]
    def post_comment_for_pull_request(params = {}, options = {})
      request = build_request(:post_comment_for_pull_request, params)
      request.send_request(options)
    end

    # <p>Posts a comment in reply to an existing comment on a comparison between commits or a pull request.</p>
    # @param [Hash, Types::PostCommentReplyInput] params
    # @option params [String] :in_reply_to
    #   <p>The system-generated ID of the comment to which you want to reply. To get this ID, use <a>GetCommentsForComparedCommit</a> 
    #           or <a>GetCommentsForPullRequest</a>.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    # @option params [String] :content
    #   <p>The contents of your reply to a comment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     in_reply_to: "CommentId", # required
    #     client_request_token: "ClientRequestToken",
    #     content: "Content", # required
    #   }
    #   options = {}
    #   response = client.post_comment_reply(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comment: {
    #       comment_id: "CommentId",
    #       content: "Content",
    #       in_reply_to: "CommentId",
    #       creation_date: Time.now,
    #       last_modified_date: Time.now,
    #       author_arn: "Arn",
    #       deleted: false,
    #       client_request_token: "ClientRequestToken",
    #       caller_reactions: ["ReactionValue"],
    #       reaction_counts: {
    #         "ReactionValue" => 1
    #       }
    #     }
    #   }
    # @return [Types::PostCommentReplyOutput]
    def post_comment_reply(params = {}, options = {})
      request = build_request(:post_comment_reply, params)
      request.send_request(options)
    end

    # <p>Adds or updates a reaction to a specified comment for the user whose identity is used to make the request. You can only add or
    #         update a reaction for yourself. You cannot add, modify, or delete a reaction for another user.</p>
    # @param [Hash, Types::PutCommentReactionInput] params
    # @option params [String] :comment_id
    #   <p>The ID of the comment to which you want to add or update a reaction.</p>
    # @option params [String] :reaction_value
    #   <p>The emoji reaction you want to add or update. To remove a reaction, provide a value of blank or null. You can also provide the value of none.
    #               For information about emoji reaction values supported in CodeCommit, see the <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/how-to-commit-comment.html#emoji-reaction-table">CodeCommit User Guide</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     comment_id: "CommentId", # required
    #     reaction_value: "ReactionValue", # required
    #   }
    #   options = {}
    #   response = client.put_comment_reaction(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_comment_reaction(params = {}, options = {})
      request = build_request(:put_comment_reaction, params)
      request.send_request(options)
    end

    # <p>Adds or updates a file in a branch in an CodeCommit repository, and generates a commit for the addition in the specified branch.</p>
    # @param [Hash, Types::PutFileInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to add or update the file.</p>
    # @option params [String] :branch_name
    #   <p>The name of the branch where you want to add or update the file. If this is an empty
    #               repository, this branch is created.</p>
    # @option params [String] :file_content
    #   <p>The content of the file, in binary object format. </p>
    # @option params [String] :file_path
    #   <p>The name of the file you want to add or update, including the relative path to the file in the repository.</p>
    #            <note>
    #               <p>If the path does not currently exist in the repository, the path is created as part of adding
    #                   the file.</p>
    #            </note>
    # @option params [String] :file_mode
    #   <p>The file mode permissions of the blob. Valid file mode permissions are listed
    #               here.</p>
    # @option params [String] :parent_commit_id
    #   <p>The full commit ID of the head commit in the branch where you want to add or update the file. If this is an empty repository, 
    #               no commit ID is required. If this is not an empty repository, a commit ID is required. </p>
    #            <p>The commit ID must match the ID of the head commit at the time of the operation.
    #               Otherwise, an error occurs, and the file is not added or updated.</p>
    # @option params [String] :commit_message
    #   <p>A message about why this file was added or updated. Although it is optional, a message
    #               makes the commit history for your repository more useful.</p>
    # @option params [String] :name
    #   <p>The name of the person adding or updating the file. Although it is optional, a name
    #               makes the commit history for your repository more useful.</p>
    # @option params [String] :email
    #   <p>An email address for the person adding or updating the file.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     branch_name: "BranchName", # required
    #     file_content: "data", # required
    #     file_path: "Path", # required
    #     file_mode: "EXECUTABLE" # One of: ["EXECUTABLE", "NORMAL", "SYMLINK"],
    #     parent_commit_id: "CommitId",
    #     commit_message: "Message",
    #     name: "Name",
    #     email: "Email"
    #   }
    #   options = {}
    #   response = client.put_file(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     commit_id: "ObjectId", # required
    #     blob_id: "ObjectId", # required
    #     tree_id: "ObjectId", # required
    #   }
    # @return [Types::PutFileOutput]
    def put_file(params = {}, options = {})
      request = build_request(:put_file, params)
      request.send_request(options)
    end

    # <p>Replaces all triggers for a repository. Used to create or delete triggers.</p>
    # @param [Hash, Types::PutRepositoryTriggersInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to create or update the trigger.</p>
    # @option params [Array<Types::RepositoryTrigger>] :triggers
    #   <p>The JSON block of configuration information for each trigger.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     triggers: [ # required
    #       {
    #         name: "RepositoryTriggerName", # required
    #         destination_arn: "Arn", # required
    #         custom_data: "RepositoryTriggerCustomData",
    #         branches: ["BranchName"],
    #         events: ["all" # One of: ["all", "updateReference", "createReference", "deleteReference"]], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_repository_triggers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_id: "RepositoryTriggersConfigurationId"
    #   }
    # @return [Types::PutRepositoryTriggersOutput]
    def put_repository_triggers(params = {}, options = {})
      request = build_request(:put_repository_triggers, params)
      request.send_request(options)
    end

    # <p>Adds or updates tags for a resource in CodeCommit. For a list of valid resources
    #             in CodeCommit, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats">CodeCommit Resources and Operations</a> in the <i>CodeCommit User
    #                 Guide</i>.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pair to use when tagging this repository.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Tests the functionality of repository triggers by sending information to the trigger
    #             target. If real data is available in the repository, the test sends data from the last
    #             commit. If no data is available, sample data is generated.</p>
    # @param [Hash, Types::TestRepositoryTriggersInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository in which to test the triggers.</p>
    # @option params [Array<Types::RepositoryTrigger>] :triggers
    #   <p>The list of triggers to test.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     triggers: [ # required
    #       {
    #         name: "RepositoryTriggerName", # required
    #         destination_arn: "Arn", # required
    #         custom_data: "RepositoryTriggerCustomData",
    #         branches: ["BranchName"],
    #         events: ["all" # One of: ["all", "updateReference", "createReference", "deleteReference"]], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.test_repository_triggers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful_executions: ["RepositoryTriggerName"],
    #     failed_executions: [
    #       {
    #         trigger: "RepositoryTriggerName",
    #         failure_message: "RepositoryTriggerExecutionFailureMessage"
    #       }
    #     ]
    #   }
    # @return [Types::TestRepositoryTriggersOutput]
    def test_repository_triggers(params = {}, options = {})
      request = build_request(:test_repository_triggers, params)
      request.send_request(options)
    end

    # <p>Removes tags for a resource in CodeCommit. For a list of valid resources in CodeCommit, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats">CodeCommit Resources and Operations</a> in the <i>CodeCommit User
    #                 Guide</i>.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to remove tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag key for each tag that you want to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the content of an approval rule template. You can change the number of
    #             required approvals, the membership of the approval rule, and whether an approval pool is
    #             defined.</p>
    # @param [Hash, Types::UpdateApprovalRuleTemplateContentInput] params
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the approval rule template where you want to update the content of the rule. </p>
    # @option params [String] :new_rule_content
    #   <p>The content that replaces the existing content of the rule. Content statements must be
    #               complete. You cannot provide only the changes.</p>
    # @option params [String] :existing_rule_content_sha256
    #   <p>The SHA-256 hash signature for the content of the approval rule. You can retrieve this
    #               information by using
    #               <a>GetPullRequest</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     new_rule_content: "ApprovalRuleTemplateContent", # required
    #     existing_rule_content_sha256: "RuleContentSha256"
    #   }
    #   options = {}
    #   response = client.update_approval_rule_template_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     approval_rule_template: { # required
    #       approval_rule_template_id: "ApprovalRuleTemplateId",
    #       approval_rule_template_name: "ApprovalRuleTemplateName",
    #       approval_rule_template_description: "ApprovalRuleTemplateDescription",
    #       approval_rule_template_content: "ApprovalRuleTemplateContent",
    #       rule_content_sha256: "RuleContentSha256",
    #       last_modified_date: Time.now,
    #       creation_date: Time.now,
    #       last_modified_user: "Arn"
    #     }
    #   }
    # @return [Types::UpdateApprovalRuleTemplateContentOutput]
    def update_approval_rule_template_content(params = {}, options = {})
      request = build_request(:update_approval_rule_template_content, params)
      request.send_request(options)
    end

    # <p>Updates the description for a specified approval rule template.</p>
    # @param [Hash, Types::UpdateApprovalRuleTemplateDescriptionInput] params
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the template for which you want to update the description.</p>
    # @option params [String] :approval_rule_template_description
    #   <p>The updated description of the approval rule template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     approval_rule_template_description: "ApprovalRuleTemplateDescription", # required
    #   }
    #   options = {}
    #   response = client.update_approval_rule_template_description(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     approval_rule_template: { # required
    #       approval_rule_template_id: "ApprovalRuleTemplateId",
    #       approval_rule_template_name: "ApprovalRuleTemplateName",
    #       approval_rule_template_description: "ApprovalRuleTemplateDescription",
    #       approval_rule_template_content: "ApprovalRuleTemplateContent",
    #       rule_content_sha256: "RuleContentSha256",
    #       last_modified_date: Time.now,
    #       creation_date: Time.now,
    #       last_modified_user: "Arn"
    #     }
    #   }
    # @return [Types::UpdateApprovalRuleTemplateDescriptionOutput]
    def update_approval_rule_template_description(params = {}, options = {})
      request = build_request(:update_approval_rule_template_description, params)
      request.send_request(options)
    end

    # <p>Updates the name of a specified approval rule template.</p>
    # @param [Hash, Types::UpdateApprovalRuleTemplateNameInput] params
    # @option params [String] :old_approval_rule_template_name
    #   <p>The current name of the approval rule template.</p>
    # @option params [String] :new_approval_rule_template_name
    #   <p>The new name you want to apply to the approval rule template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     old_approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #     new_approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #   }
    #   options = {}
    #   response = client.update_approval_rule_template_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     approval_rule_template: { # required
    #       approval_rule_template_id: "ApprovalRuleTemplateId",
    #       approval_rule_template_name: "ApprovalRuleTemplateName",
    #       approval_rule_template_description: "ApprovalRuleTemplateDescription",
    #       approval_rule_template_content: "ApprovalRuleTemplateContent",
    #       rule_content_sha256: "RuleContentSha256",
    #       last_modified_date: Time.now,
    #       creation_date: Time.now,
    #       last_modified_user: "Arn"
    #     }
    #   }
    # @return [Types::UpdateApprovalRuleTemplateNameOutput]
    def update_approval_rule_template_name(params = {}, options = {})
      request = build_request(:update_approval_rule_template_name, params)
      request.send_request(options)
    end

    # <p>Replaces the contents of a comment.</p>
    # @param [Hash, Types::UpdateCommentInput] params
    # @option params [String] :comment_id
    #   <p>The system-generated ID of the comment you want to update. To get this ID, use <a>GetCommentsForComparedCommit</a> 
    #               or <a>GetCommentsForPullRequest</a>.</p>
    # @option params [String] :content
    #   <p>The updated content to replace the existing content of the comment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     comment_id: "CommentId", # required
    #     content: "Content", # required
    #   }
    #   options = {}
    #   response = client.update_comment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comment: {
    #       comment_id: "CommentId",
    #       content: "Content",
    #       in_reply_to: "CommentId",
    #       creation_date: Time.now,
    #       last_modified_date: Time.now,
    #       author_arn: "Arn",
    #       deleted: false,
    #       client_request_token: "ClientRequestToken",
    #       caller_reactions: ["ReactionValue"],
    #       reaction_counts: {
    #         "ReactionValue" => 1
    #       }
    #     }
    #   }
    # @return [Types::UpdateCommentOutput]
    def update_comment(params = {}, options = {})
      request = build_request(:update_comment, params)
      request.send_request(options)
    end

    # <p>Sets or changes the default branch name for the specified repository.</p>
    #          <note>
    #             <p>If you use this operation to change the default branch name to the current default branch name, a success message is returned even though the default branch did not change.</p>
    #          </note>
    # @param [Hash, Types::UpdateDefaultBranchInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository for which you want to set or change the default branch.</p>
    # @option params [String] :default_branch_name
    #   <p>The name of the branch to set as the default branch.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     default_branch_name: "BranchName", # required
    #   }
    #   options = {}
    #   response = client.update_default_branch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_default_branch(params = {}, options = {})
      request = build_request(:update_default_branch, params)
      request.send_request(options)
    end

    # <p>Updates the structure of an approval rule created specifically for a pull request. For example, you can change the number of required approvers and 
    #             the approval pool for approvers. </p>
    # @param [Hash, Types::UpdatePullRequestApprovalRuleContentInput] params
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request.</p>
    # @option params [String] :approval_rule_name
    #   <p>The name of the approval rule you want to update.</p>
    # @option params [String] :existing_rule_content_sha256
    #   <p>The SHA-256 hash signature for the content of the approval rule. You can retrieve this
    #               information by using
    #               <a>GetPullRequest</a>.</p>
    # @option params [String] :new_rule_content
    #   <p>The updated content for the approval rule.</p>
    #            <note>
    #               <p>When you update the content of the approval rule, you can specify approvers in an
    #                   approval pool in one of two ways:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>CodeCommitApprovers</b>: This option only
    #                           requires an Amazon Web Services account and a resource. It can be used for both IAM users
    #                           and federated access users whose name matches the provided resource name.
    #                           This is a very powerful option that offers a great deal of flexibility. For
    #                           example, if you specify the Amazon Web Services account <i>123456789012</i>
    #                           and <i>Mary_Major</i>, all of the following are counted as
    #                           approvals coming from that user:</p>
    #                     <ul>
    #                        <li>
    #                           <p>An IAM user in the account
    #                                   (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p>
    #                        </li>
    #                        <li>
    #                           <p>A federated user identified in IAM as Mary_Major
    #                                   (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p>
    #                        </li>
    #                     </ul>
    #                     <p>This option does not recognize an active session of someone assuming the
    #                           role of CodeCommitReview with a role session name of
    #                               <i>Mary_Major</i>
    #                               (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>)
    #                           unless you include a wildcard (*Mary_Major).</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Fully qualified ARN</b>: This option allows
    #                           you to specify the fully qualified Amazon Resource Name (ARN) of the IAM
    #                           user or role. </p>
    #                  </li>
    #               </ul>
    #               <p>For more information about IAM ARNs, wildcards, and formats, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
    #                       Identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #     approval_rule_name: "ApprovalRuleName", # required
    #     existing_rule_content_sha256: "RuleContentSha256",
    #     new_rule_content: "ApprovalRuleContent", # required
    #   }
    #   options = {}
    #   response = client.update_pull_request_approval_rule_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     approval_rule: { # required
    #       approval_rule_id: "ApprovalRuleId",
    #       approval_rule_name: "ApprovalRuleName",
    #       approval_rule_content: "ApprovalRuleContent",
    #       rule_content_sha256: "RuleContentSha256",
    #       last_modified_date: Time.now,
    #       creation_date: Time.now,
    #       last_modified_user: "Arn",
    #       origin_approval_rule_template: {
    #         approval_rule_template_id: "ApprovalRuleTemplateId",
    #         approval_rule_template_name: "ApprovalRuleTemplateName"
    #       }
    #     }
    #   }
    # @return [Types::UpdatePullRequestApprovalRuleContentOutput]
    def update_pull_request_approval_rule_content(params = {}, options = {})
      request = build_request(:update_pull_request_approval_rule_content, params)
      request.send_request(options)
    end

    # <p>Updates the state of a user's approval on a pull request. The user is derived from the signed-in account when the request is made.</p>
    # @param [Hash, Types::UpdatePullRequestApprovalStateInput] params
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request.</p>
    # @option params [String] :revision_id
    #   <p>The system-generated ID of the revision.</p>
    # @option params [String] :approval_state
    #   <p>The approval state to associate with the user on the pull request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #     revision_id: "RevisionId", # required
    #     approval_state: "APPROVE" # One of: ["APPROVE", "REVOKE"], # required
    #   }
    #   options = {}
    #   response = client.update_pull_request_approval_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_pull_request_approval_state(params = {}, options = {})
      request = build_request(:update_pull_request_approval_state, params)
      request.send_request(options)
    end

    # <p>Replaces the contents of the description of a pull request.</p>
    # @param [Hash, Types::UpdatePullRequestDescriptionInput] params
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    # @option params [String] :description
    #   <p>The updated content of the description for the pull request. This content replaces the
    #               existing description.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #     description: "Description", # required
    #   }
    #   options = {}
    #   response = client.update_pull_request_description(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pull_request: { # required
    #       pull_request_id: "PullRequestId",
    #       title: "Title",
    #       description: "Description",
    #       last_activity_date: Time.now,
    #       creation_date: Time.now,
    #       pull_request_status: "OPEN" # One of: ["OPEN", "CLOSED"],
    #       author_arn: "Arn",
    #       pull_request_targets: [
    #         {
    #           repository_name: "RepositoryName",
    #           source_reference: "ReferenceName",
    #           destination_reference: "ReferenceName",
    #           destination_commit: "CommitId",
    #           source_commit: "CommitId",
    #           merge_base: "CommitId",
    #           merge_metadata: {
    #             is_merged: false,
    #             merged_by: "Arn",
    #             merge_commit_id: "CommitId",
    #             merge_option: "FAST_FORWARD_MERGE" # One of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #           }
    #         }
    #       ],
    #       client_request_token: "ClientRequestToken",
    #       revision_id: "RevisionId",
    #       approval_rules: [
    #         {
    #           approval_rule_id: "ApprovalRuleId",
    #           approval_rule_name: "ApprovalRuleName",
    #           approval_rule_content: "ApprovalRuleContent",
    #           rule_content_sha256: "RuleContentSha256",
    #           last_modified_date: Time.now,
    #           creation_date: Time.now,
    #           last_modified_user: "Arn",
    #           origin_approval_rule_template: {
    #             approval_rule_template_id: "ApprovalRuleTemplateId",
    #             approval_rule_template_name: "ApprovalRuleTemplateName"
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdatePullRequestDescriptionOutput]
    def update_pull_request_description(params = {}, options = {})
      request = build_request(:update_pull_request_description, params)
      request.send_request(options)
    end

    # <p>Updates the status of a pull request. </p>
    # @param [Hash, Types::UpdatePullRequestStatusInput] params
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    # @option params [String] :pull_request_status
    #   <p>The status of the pull request. The only valid operations are to update the status
    #               from <code>OPEN</code> to <code>OPEN</code>, <code>OPEN</code> to <code>CLOSED</code> or
    #               from <code>CLOSED</code> to <code>CLOSED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #     pull_request_status: "OPEN" # One of: ["OPEN", "CLOSED"], # required
    #   }
    #   options = {}
    #   response = client.update_pull_request_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pull_request: { # required
    #       pull_request_id: "PullRequestId",
    #       title: "Title",
    #       description: "Description",
    #       last_activity_date: Time.now,
    #       creation_date: Time.now,
    #       pull_request_status: "OPEN" # One of: ["OPEN", "CLOSED"],
    #       author_arn: "Arn",
    #       pull_request_targets: [
    #         {
    #           repository_name: "RepositoryName",
    #           source_reference: "ReferenceName",
    #           destination_reference: "ReferenceName",
    #           destination_commit: "CommitId",
    #           source_commit: "CommitId",
    #           merge_base: "CommitId",
    #           merge_metadata: {
    #             is_merged: false,
    #             merged_by: "Arn",
    #             merge_commit_id: "CommitId",
    #             merge_option: "FAST_FORWARD_MERGE" # One of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #           }
    #         }
    #       ],
    #       client_request_token: "ClientRequestToken",
    #       revision_id: "RevisionId",
    #       approval_rules: [
    #         {
    #           approval_rule_id: "ApprovalRuleId",
    #           approval_rule_name: "ApprovalRuleName",
    #           approval_rule_content: "ApprovalRuleContent",
    #           rule_content_sha256: "RuleContentSha256",
    #           last_modified_date: Time.now,
    #           creation_date: Time.now,
    #           last_modified_user: "Arn",
    #           origin_approval_rule_template: {
    #             approval_rule_template_id: "ApprovalRuleTemplateId",
    #             approval_rule_template_name: "ApprovalRuleTemplateName"
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdatePullRequestStatusOutput]
    def update_pull_request_status(params = {}, options = {})
      request = build_request(:update_pull_request_status, params)
      request.send_request(options)
    end

    # <p>Replaces the title of a pull request.</p>
    # @param [Hash, Types::UpdatePullRequestTitleInput] params
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    # @option params [String] :title
    #   <p>The updated title of the pull request. This replaces the existing title.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pull_request_id: "PullRequestId", # required
    #     title: "Title", # required
    #   }
    #   options = {}
    #   response = client.update_pull_request_title(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pull_request: { # required
    #       pull_request_id: "PullRequestId",
    #       title: "Title",
    #       description: "Description",
    #       last_activity_date: Time.now,
    #       creation_date: Time.now,
    #       pull_request_status: "OPEN" # One of: ["OPEN", "CLOSED"],
    #       author_arn: "Arn",
    #       pull_request_targets: [
    #         {
    #           repository_name: "RepositoryName",
    #           source_reference: "ReferenceName",
    #           destination_reference: "ReferenceName",
    #           destination_commit: "CommitId",
    #           source_commit: "CommitId",
    #           merge_base: "CommitId",
    #           merge_metadata: {
    #             is_merged: false,
    #             merged_by: "Arn",
    #             merge_commit_id: "CommitId",
    #             merge_option: "FAST_FORWARD_MERGE" # One of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #           }
    #         }
    #       ],
    #       client_request_token: "ClientRequestToken",
    #       revision_id: "RevisionId",
    #       approval_rules: [
    #         {
    #           approval_rule_id: "ApprovalRuleId",
    #           approval_rule_name: "ApprovalRuleName",
    #           approval_rule_content: "ApprovalRuleContent",
    #           rule_content_sha256: "RuleContentSha256",
    #           last_modified_date: Time.now,
    #           creation_date: Time.now,
    #           last_modified_user: "Arn",
    #           origin_approval_rule_template: {
    #             approval_rule_template_id: "ApprovalRuleTemplateId",
    #             approval_rule_template_name: "ApprovalRuleTemplateName"
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdatePullRequestTitleOutput]
    def update_pull_request_title(params = {}, options = {})
      request = build_request(:update_pull_request_title, params)
      request.send_request(options)
    end

    # <p>Sets or changes the comment or description for a repository.</p>
    #          <note>
    #             <p>The description field for a repository accepts all HTML characters and all valid
    #                 Unicode characters. Applications that do not HTML-encode the description and display
    #                 it in a webpage can expose users to potentially malicious code. Make sure that you
    #                 HTML-encode the description field in any application that uses this API to display
    #                 the repository description on a webpage.</p>
    #          </note>
    # @param [Hash, Types::UpdateRepositoryDescriptionInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository to set or change the comment or description for.</p>
    # @option params [String] :repository_description
    #   <p>The new comment or description for the specified repository. Repository descriptions are limited to 1,000 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     repository_description: "RepositoryDescription"
    #   }
    #   options = {}
    #   response = client.update_repository_description(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_repository_description(params = {}, options = {})
      request = build_request(:update_repository_description, params)
      request.send_request(options)
    end

    # <p>Updates the Key Management Service encryption key used to encrypt and decrypt a CodeCommit repository.</p>
    # @param [Hash, Types::UpdateRepositoryEncryptionKeyInput] params
    # @option params [String] :repository_name
    #   <p>The name of the repository for which you want to update the KMS encryption key used to encrypt and decrypt the repository.</p>
    # @option params [String] :kms_key_id
    #   <p>The ID of the encryption key. You can view the ID of an encryption key in the KMS console, or use the KMS APIs to
    #               programmatically retrieve a key ID. For more information about acceptable values for keyID, see 
    #               <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Decrypt.html#KMS-Decrypt-request-KeyId">KeyId</a> in the Decrypt API description in 
    #           the <i>Key Management Service API Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     kms_key_id: "KmsKeyId", # required
    #   }
    #   options = {}
    #   response = client.update_repository_encryption_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_id: "RepositoryId",
    #     kms_key_id: "KmsKeyId",
    #     original_kms_key_id: "KmsKeyId"
    #   }
    # @return [Types::UpdateRepositoryEncryptionKeyOutput]
    def update_repository_encryption_key(params = {}, options = {})
      request = build_request(:update_repository_encryption_key, params)
      request.send_request(options)
    end

    # <p>Renames a repository. The repository name must be unique across the calling Amazon Web Services account. 
    #             Repository names are limited to 100 alphanumeric, dash, and underscore
    #             characters, and cannot include certain characters. The suffix .git is prohibited. For
    #             more information about the limits on repository names, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Quotas</a> in the CodeCommit
    #             User Guide.</p>
    # @param [Hash, Types::UpdateRepositoryNameInput] params
    # @option params [String] :old_name
    #   <p>The current name of the repository.</p>
    # @option params [String] :new_name
    #   <p>The new name for the repository.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     old_name: "RepositoryName", # required
    #     new_name: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.update_repository_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_repository_name(params = {}, options = {})
      request = build_request(:update_repository_name, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-codecommit'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
