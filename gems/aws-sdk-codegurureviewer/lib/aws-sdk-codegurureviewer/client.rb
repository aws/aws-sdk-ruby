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
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:codegurureviewer)

module Aws::CodeGuruReviewer
  # An API client for Aws::CodeGuruReviewer.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSGuruFrontendService
    @identifier = :codegurureviewer

    add_plugin(::Aws::CodeGuruReviewer::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CodeGuruReviewer::EndpointProvider)
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
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
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
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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

    # <p>Use to associate an Amazon Web Services CodeCommit repository or a repository managed by Amazon Web Services
    #          CodeStar Connections with Amazon CodeGuru Reviewer. When you associate a repository, CodeGuru Reviewer reviews
    #          source code changes in the repository's pull requests and provides automatic
    #          recommendations. You can view recommendations using the CodeGuru Reviewer console. For more
    #          information, see <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/recommendations.html">Recommendations in
    #             Amazon CodeGuru Reviewer</a> in the <i>Amazon CodeGuru Reviewer User Guide.</i>
    #          </p>
    #          <p>If you associate a CodeCommit or S3 repository, it must be in the same Amazon Web Services Region and
    #          Amazon Web Services account where its CodeGuru Reviewer code reviews are configured.</p>
    #          <p>Bitbucket and GitHub Enterprise Server repositories are managed by Amazon Web Services CodeStar
    #          Connections to connect to CodeGuru Reviewer. For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-associate-repository.html">Associate a
    #             repository</a> in the <i>Amazon CodeGuru Reviewer User Guide.</i>
    #          </p>
    #          <note>
    #             <p>You cannot use the CodeGuru Reviewer SDK or the Amazon Web Services CLI to associate a GitHub repository with
    #             Amazon CodeGuru Reviewer. To associate a GitHub repository, use the console. For more information, see
    #                <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-with-guru.html">Getting started with
    #                CodeGuru Reviewer</a> in the <i>CodeGuru Reviewer User Guide.</i>
    #             </p>
    #          </note>
    # @param [Hash, Types::AssociateRepositoryRequest] params
    # @option params [Types::Repository] :repository
    #   <p>The repository to associate.</p>
    # @option params [String] :client_request_token
    #   <p>Amazon CodeGuru Reviewer uses this value to prevent the accidental creation of duplicate repository
    #            associations if there are failures and retries.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An array of key-value pairs used to tag an associated repository. A tag is a custom attribute label with two parts:</p>
    #            <ul>
    #               <li>
    #                  <p>A <i>tag key</i> (for example, <code>CostCenter</code>,
    #   					<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #   					keys are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>An optional field known as a <i>tag value</i> (for example,
    #   					<code>111122223333</code>, <code>Production</code>, or a team name).
    #   					Omitting the tag value is the same as using an empty string. Like tag keys, tag
    #   					values are case sensitive.</p>
    #               </li>
    #            </ul>
    # @option params [Types::KMSKeyDetails] :kms_key_details
    #   <p>A <code>KMSKeyDetails</code> object that contains:</p>
    #            <ul>
    #               <li>
    #                  <p>The encryption option for this repository association. It is either owned by Amazon Web Services
    #                  Key Management Service (KMS) (<code>AWS_OWNED_CMK</code>) or customer managed
    #                     (<code>CUSTOMER_MANAGED_CMK</code>).</p>
    #               </li>
    #               <li>
    #                  <p>The ID of the Amazon Web Services KMS key that is associated with this repository
    #                  association.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository: { # required
    #       code_commit: {
    #         name: "Name", # required
    #       },
    #       bitbucket: {
    #         name: "Name", # required
    #         connection_arn: "ConnectionArn", # required
    #         owner: "Owner", # required
    #       },
    #       git_hub_enterprise_server: {
    #         name: "Name", # required
    #         connection_arn: "ConnectionArn", # required
    #         owner: "Owner", # required
    #       },
    #       s3_bucket: {
    #         name: "Name", # required
    #         bucket_name: "S3BucketName", # required
    #       }
    #     },
    #     client_request_token: "ClientRequestToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     kms_key_details: {
    #       kms_key_id: "KMSKeyId",
    #       encryption_option: "AWS_OWNED_CMK" # One of: ["AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"]
    #     }
    #   }
    #   options = {}
    #   response = client.associate_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_association: {
    #       association_id: "AssociationId",
    #       association_arn: "Arn",
    #       connection_arn: "ConnectionArn",
    #       name: "Name",
    #       owner: "Owner",
    #       provider_type: "CodeCommit" # One of: ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"],
    #       state: "Associated" # One of: ["Associated", "Associating", "Failed", "Disassociating", "Disassociated"],
    #       state_reason: "StateReason",
    #       last_updated_time_stamp: Time.now,
    #       created_time_stamp: Time.now,
    #       kms_key_details: {
    #         kms_key_id: "KMSKeyId",
    #         encryption_option: "AWS_OWNED_CMK" # One of: ["AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"]
    #       },
    #       s3_repository_details: {
    #         bucket_name: "S3BucketName",
    #         code_artifacts: {
    #           source_code_artifacts_object_key: "SourceCodeArtifactsObjectKey", # required
    #           build_artifacts_object_key: "BuildArtifactsObjectKey"
    #         }
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::AssociateRepositoryResponse]
    def associate_repository(params = {}, options = {})
      request = build_request(:associate_repository, params)
      request.send_request(options)
    end

    # <p>Use to create a code review with a <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html">CodeReviewType</a> of
    #             <code>RepositoryAnalysis</code>. This type of code review analyzes all code under a
    #          specified branch in an associated repository. <code>PullRequest</code> code reviews are
    #          automatically triggered by a pull request.</p>
    # @param [Hash, Types::CreateCodeReviewRequest] params
    # @option params [String] :name
    #   <p>The name of the code review. The name of each code review in your Amazon Web Services account must be
    #            unique.</p>
    # @option params [String] :repository_association_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.</p>
    #            <p>A code review can only be created on an associated repository. This is the ARN of the
    #            associated repository.</p>
    # @option params [Types::CodeReviewType] :type
    #   <p>The type of code review to create. This is specified using a <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html">CodeReviewType</a>
    #            object. You can create a code review only of type <code>RepositoryAnalysis</code>.</p>
    # @option params [String] :client_request_token
    #   <p>Amazon CodeGuru Reviewer uses this value to prevent the accidental creation of duplicate code reviews
    #            if there are failures and retries.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CodeReviewName", # required
    #     repository_association_arn: "AssociationArn", # required
    #     type: { # required
    #       repository_analysis: { # required
    #         repository_head: {
    #           branch_name: "BranchName", # required
    #         },
    #         source_code_type: {
    #           commit_diff: {
    #             source_commit: "CommitId",
    #             destination_commit: "CommitId",
    #             merge_base_commit: "CommitId"
    #           },
    #           repository_head: {
    #             branch_name: "BranchName", # required
    #           },
    #           branch_diff: {
    #             source_branch_name: "BranchName", # required
    #             destination_branch_name: "BranchName", # required
    #           },
    #           s3_bucket_repository: {
    #             name: "Name", # required
    #             details: {
    #               bucket_name: "S3BucketName",
    #               code_artifacts: {
    #                 source_code_artifacts_object_key: "SourceCodeArtifactsObjectKey", # required
    #                 build_artifacts_object_key: "BuildArtifactsObjectKey"
    #               }
    #             }
    #           },
    #           request_metadata: {
    #             request_id: "RequestId",
    #             requester: "Requester",
    #             event_info: {
    #               name: "EventName",
    #               state: "EventState"
    #             },
    #             vendor_name: "GitHub" # One of: ["GitHub", "GitLab", "NativeS3"]
    #           }
    #         }
    #       },
    #       analysis_types: ["Security" # One of: ["Security", "CodeQuality"]]
    #     },
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.create_code_review(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_review: {
    #       name: "Name",
    #       code_review_arn: "Arn",
    #       repository_name: "Name",
    #       owner: "Owner",
    #       provider_type: "CodeCommit" # One of: ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"],
    #       state: "Completed" # One of: ["Completed", "Pending", "Failed", "Deleting"],
    #       state_reason: "StateReason",
    #       created_time_stamp: Time.now,
    #       last_updated_time_stamp: Time.now,
    #       type: "PullRequest" # One of: ["PullRequest", "RepositoryAnalysis"],
    #       pull_request_id: "PullRequestId",
    #       source_code_type: {
    #         commit_diff: {
    #           source_commit: "CommitId",
    #           destination_commit: "CommitId",
    #           merge_base_commit: "CommitId"
    #         },
    #         repository_head: {
    #           branch_name: "BranchName", # required
    #         },
    #         branch_diff: {
    #           source_branch_name: "BranchName", # required
    #           destination_branch_name: "BranchName", # required
    #         },
    #         s3_bucket_repository: {
    #           name: "Name", # required
    #           details: {
    #             bucket_name: "S3BucketName",
    #             code_artifacts: {
    #               source_code_artifacts_object_key: "SourceCodeArtifactsObjectKey", # required
    #               build_artifacts_object_key: "BuildArtifactsObjectKey"
    #             }
    #           }
    #         },
    #         request_metadata: {
    #           request_id: "RequestId",
    #           requester: "Requester",
    #           event_info: {
    #             name: "EventName",
    #             state: "EventState"
    #           },
    #           vendor_name: "GitHub" # One of: ["GitHub", "GitLab", "NativeS3"]
    #         }
    #       },
    #       association_arn: "AssociationArn",
    #       metrics: {
    #         metered_lines_of_code_count: 1,
    #         suppressed_lines_of_code_count: 1,
    #         findings_count: 1
    #       },
    #       analysis_types: ["Security" # One of: ["Security", "CodeQuality"]],
    #       config_file_state: "Present" # One of: ["Present", "Absent", "PresentWithErrors"]
    #     }
    #   }
    # @return [Types::CreateCodeReviewResponse]
    def create_code_review(params = {}, options = {})
      request = build_request(:create_code_review, params)
      request.send_request(options)
    end

    # <p>Returns the metadata associated with the code review along with its status.</p>
    # @param [Hash, Types::DescribeCodeReviewRequest] params
    # @option params [String] :code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a> object.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_review_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_code_review(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_review: {
    #       name: "Name",
    #       code_review_arn: "Arn",
    #       repository_name: "Name",
    #       owner: "Owner",
    #       provider_type: "CodeCommit" # One of: ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"],
    #       state: "Completed" # One of: ["Completed", "Pending", "Failed", "Deleting"],
    #       state_reason: "StateReason",
    #       created_time_stamp: Time.now,
    #       last_updated_time_stamp: Time.now,
    #       type: "PullRequest" # One of: ["PullRequest", "RepositoryAnalysis"],
    #       pull_request_id: "PullRequestId",
    #       source_code_type: {
    #         commit_diff: {
    #           source_commit: "CommitId",
    #           destination_commit: "CommitId",
    #           merge_base_commit: "CommitId"
    #         },
    #         repository_head: {
    #           branch_name: "BranchName", # required
    #         },
    #         branch_diff: {
    #           source_branch_name: "BranchName", # required
    #           destination_branch_name: "BranchName", # required
    #         },
    #         s3_bucket_repository: {
    #           name: "Name", # required
    #           details: {
    #             bucket_name: "S3BucketName",
    #             code_artifacts: {
    #               source_code_artifacts_object_key: "SourceCodeArtifactsObjectKey", # required
    #               build_artifacts_object_key: "BuildArtifactsObjectKey"
    #             }
    #           }
    #         },
    #         request_metadata: {
    #           request_id: "RequestId",
    #           requester: "Requester",
    #           event_info: {
    #             name: "EventName",
    #             state: "EventState"
    #           },
    #           vendor_name: "GitHub" # One of: ["GitHub", "GitLab", "NativeS3"]
    #         }
    #       },
    #       association_arn: "AssociationArn",
    #       metrics: {
    #         metered_lines_of_code_count: 1,
    #         suppressed_lines_of_code_count: 1,
    #         findings_count: 1
    #       },
    #       analysis_types: ["Security" # One of: ["Security", "CodeQuality"]],
    #       config_file_state: "Present" # One of: ["Present", "Absent", "PresentWithErrors"]
    #     }
    #   }
    # @return [Types::DescribeCodeReviewResponse]
    def describe_code_review(params = {}, options = {})
      request = build_request(:describe_code_review, params)
      request.send_request(options)
    end

    # <p>Describes the customer feedback for a CodeGuru Reviewer recommendation.</p>
    # @param [Hash, Types::DescribeRecommendationFeedbackRequest] params
    # @option params [String] :code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a> object.
    #         </p>
    # @option params [String] :recommendation_id
    #   <p>The recommendation ID that can be used to track the provided recommendations and then to
    #            collect the feedback.</p>
    # @option params [String] :user_id
    #   <p>Optional parameter to describe the feedback for a given user. If this is not supplied,
    #            it defaults to the user making the request.</p>
    #            <p>
    #            The <code>UserId</code> is an IAM principal that can be specified as an Amazon Web Services account ID or an Amazon Resource Name (ARN). For 
    #            more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying">
    #               Specifying a Principal</a> in the <i>Amazon Web Services Identity and Access Management User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_review_arn: "Arn", # required
    #     recommendation_id: "RecommendationId", # required
    #     user_id: "UserId"
    #   }
    #   options = {}
    #   response = client.describe_recommendation_feedback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendation_feedback: {
    #       code_review_arn: "Arn",
    #       recommendation_id: "RecommendationId",
    #       reactions: ["ThumbsUp" # One of: ["ThumbsUp", "ThumbsDown"]],
    #       user_id: "UserId",
    #       created_time_stamp: Time.now,
    #       last_updated_time_stamp: Time.now
    #     }
    #   }
    # @return [Types::DescribeRecommendationFeedbackResponse]
    def describe_recommendation_feedback(params = {}, options = {})
      request = build_request(:describe_recommendation_feedback, params)
      request.send_request(options)
    end

    # <p>Returns a <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object that contains information about the requested
    #          repository association.</p>
    # @param [Hash, Types::DescribeRepositoryAssociationRequest] params
    # @option params [String] :association_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_arn: "AssociationArn", # required
    #   }
    #   options = {}
    #   response = client.describe_repository_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_association: {
    #       association_id: "AssociationId",
    #       association_arn: "Arn",
    #       connection_arn: "ConnectionArn",
    #       name: "Name",
    #       owner: "Owner",
    #       provider_type: "CodeCommit" # One of: ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"],
    #       state: "Associated" # One of: ["Associated", "Associating", "Failed", "Disassociating", "Disassociated"],
    #       state_reason: "StateReason",
    #       last_updated_time_stamp: Time.now,
    #       created_time_stamp: Time.now,
    #       kms_key_details: {
    #         kms_key_id: "KMSKeyId",
    #         encryption_option: "AWS_OWNED_CMK" # One of: ["AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"]
    #       },
    #       s3_repository_details: {
    #         bucket_name: "S3BucketName",
    #         code_artifacts: {
    #           source_code_artifacts_object_key: "SourceCodeArtifactsObjectKey", # required
    #           build_artifacts_object_key: "BuildArtifactsObjectKey"
    #         }
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DescribeRepositoryAssociationResponse]
    def describe_repository_association(params = {}, options = {})
      request = build_request(:describe_repository_association, params)
      request.send_request(options)
    end

    # <p>Removes the association between Amazon CodeGuru Reviewer and a repository.</p>
    # @param [Hash, Types::DisassociateRepositoryRequest] params
    # @option params [String] :association_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_arn: "AssociationArn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_association: {
    #       association_id: "AssociationId",
    #       association_arn: "Arn",
    #       connection_arn: "ConnectionArn",
    #       name: "Name",
    #       owner: "Owner",
    #       provider_type: "CodeCommit" # One of: ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"],
    #       state: "Associated" # One of: ["Associated", "Associating", "Failed", "Disassociating", "Disassociated"],
    #       state_reason: "StateReason",
    #       last_updated_time_stamp: Time.now,
    #       created_time_stamp: Time.now,
    #       kms_key_details: {
    #         kms_key_id: "KMSKeyId",
    #         encryption_option: "AWS_OWNED_CMK" # One of: ["AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"]
    #       },
    #       s3_repository_details: {
    #         bucket_name: "S3BucketName",
    #         code_artifacts: {
    #           source_code_artifacts_object_key: "SourceCodeArtifactsObjectKey", # required
    #           build_artifacts_object_key: "BuildArtifactsObjectKey"
    #         }
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DisassociateRepositoryResponse]
    def disassociate_repository(params = {}, options = {})
      request = build_request(:disassociate_repository, params)
      request.send_request(options)
    end

    # <p>Lists all the code reviews that the customer has created in the past 90 days.</p>
    # @param [Hash, Types::ListCodeReviewsRequest] params
    # @option params [Array<String>] :provider_types
    #   <p>List of provider types for filtering that needs to be applied before displaying the
    #            result. For example, <code>providerTypes=[GitHub]</code> lists code reviews from
    #            GitHub.</p>
    # @option params [Array<String>] :states
    #   <p>List of states for filtering that needs to be applied before displaying the result. For
    #            example, <code>states=[Pending]</code> lists code reviews in the Pending state.</p>
    #            <p>The valid code review states are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Completed</code>: The code review is complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Pending</code>: The code review started and has not completed or failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code>: The code review failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Deleting</code>: The code review is being deleted.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :repository_names
    #   <p>List of repository names for filtering that needs to be applied before displaying the
    #            result.</p>
    # @option params [String] :type
    #   <p>The type of code reviews to list in the response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. The default is 100.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of
    #               <code>nextToken</code> is a unique pagination token for each page. Make the call again
    #            using the returned token to retrieve the next page. Keep all other arguments
    #            unchanged.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     provider_types: ["CodeCommit" # One of: ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"]],
    #     states: ["Completed" # One of: ["Completed", "Pending", "Failed", "Deleting"]],
    #     repository_names: ["Name"],
    #     type: "PullRequest" # One of: ["PullRequest", "RepositoryAnalysis"], # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_code_reviews(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_review_summaries: [
    #       {
    #         name: "Name",
    #         code_review_arn: "Arn",
    #         repository_name: "Name",
    #         owner: "Owner",
    #         provider_type: "CodeCommit" # One of: ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"],
    #         state: "Completed" # One of: ["Completed", "Pending", "Failed", "Deleting"],
    #         created_time_stamp: Time.now,
    #         last_updated_time_stamp: Time.now,
    #         type: "PullRequest" # One of: ["PullRequest", "RepositoryAnalysis"],
    #         pull_request_id: "PullRequestId",
    #         metrics_summary: {
    #           metered_lines_of_code_count: 1,
    #           suppressed_lines_of_code_count: 1,
    #           findings_count: 1
    #         },
    #         source_code_type: {
    #           commit_diff: {
    #             source_commit: "CommitId",
    #             destination_commit: "CommitId",
    #             merge_base_commit: "CommitId"
    #           },
    #           repository_head: {
    #             branch_name: "BranchName", # required
    #           },
    #           branch_diff: {
    #             source_branch_name: "BranchName", # required
    #             destination_branch_name: "BranchName", # required
    #           },
    #           s3_bucket_repository: {
    #             name: "Name", # required
    #             details: {
    #               bucket_name: "S3BucketName",
    #               code_artifacts: {
    #                 source_code_artifacts_object_key: "SourceCodeArtifactsObjectKey", # required
    #                 build_artifacts_object_key: "BuildArtifactsObjectKey"
    #               }
    #             }
    #           },
    #           request_metadata: {
    #             request_id: "RequestId",
    #             requester: "Requester",
    #             event_info: {
    #               name: "EventName",
    #               state: "EventState"
    #             },
    #             vendor_name: "GitHub" # One of: ["GitHub", "GitLab", "NativeS3"]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCodeReviewsResponse]
    def list_code_reviews(params = {}, options = {})
      request = build_request(:list_code_reviews, params)
      request.send_request(options)
    end

    # <p>Returns a list of <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RecommendationFeedbackSummary.html">RecommendationFeedbackSummary</a> objects that contain customer recommendation
    #          feedback for all CodeGuru Reviewer users.</p>
    # @param [Hash, Types::ListRecommendationFeedbackRequest] params
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of
    #               <code>nextToken</code> is a unique pagination token for each page. Make the call again
    #            using the returned token to retrieve the next page. Keep all other arguments
    #            unchanged.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. The default is 100.</p>
    # @option params [String] :code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a> object.
    #         </p>
    # @option params [Array<String>] :user_ids
    #   <p>An Amazon Web Services user's account ID or Amazon Resource Name (ARN). Use this ID to query the
    #            recommendation feedback for a code review from that user.</p>
    #            <p>
    #            The <code>UserId</code> is an IAM principal that can be specified as an Amazon Web Services account ID or an Amazon Resource Name (ARN). For 
    #            more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying">
    #               Specifying a Principal</a> in the <i>Amazon Web Services Identity and Access Management User Guide</i>.</p>
    # @option params [Array<String>] :recommendation_ids
    #   <p>Used to query the recommendation feedback for a given recommendation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     code_review_arn: "Arn", # required
    #     user_ids: ["UserId"],
    #     recommendation_ids: ["RecommendationId"]
    #   }
    #   options = {}
    #   response = client.list_recommendation_feedback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendation_feedback_summaries: [
    #       {
    #         recommendation_id: "RecommendationId",
    #         reactions: ["ThumbsUp" # One of: ["ThumbsUp", "ThumbsDown"]],
    #         user_id: "UserId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRecommendationFeedbackResponse]
    def list_recommendation_feedback(params = {}, options = {})
      request = build_request(:list_recommendation_feedback, params)
      request.send_request(options)
    end

    # <p>Returns the list of all recommendations for a completed code review.</p>
    # @param [Hash, Types::ListRecommendationsRequest] params
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. The default is 100.</p>
    # @option params [String] :code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a> object.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     code_review_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendation_summaries: [
    #       {
    #         file_path: "FilePath",
    #         recommendation_id: "RecommendationId",
    #         start_line: 1,
    #         end_line: 1,
    #         description: "Text",
    #         recommendation_category: "AWSBestPractices" # One of: ["AWSBestPractices", "AWSCloudFormationIssues", "DuplicateCode", "CodeMaintenanceIssues", "ConcurrencyIssues", "InputValidations", "PythonBestPractices", "JavaBestPractices", "ResourceLeaks", "SecurityIssues", "CodeInconsistencies"],
    #         rule_metadata: {
    #           rule_id: "RuleId",
    #           rule_name: "RuleName",
    #           short_description: "ShortDescription",
    #           long_description: "LongDescription",
    #           rule_tags: ["RuleTag"]
    #         },
    #         severity: "Info" # One of: ["Info", "Low", "Medium", "High", "Critical"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRecommendationsResponse]
    def list_recommendations(params = {}, options = {})
      request = build_request(:list_recommendations, params)
      request.send_request(options)
    end

    # <p>Returns a list of <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html">RepositoryAssociationSummary</a> objects that contain summary information about a
    #          repository association. You can filter the returned list by <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-ProviderType">ProviderType</a>, <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Name">Name</a>, <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-State">State</a>, and <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Owner">Owner</a>.</p>
    # @param [Hash, Types::ListRepositoryAssociationsRequest] params
    # @option params [Array<String>] :provider_types
    #   <p>List of provider types to use as a filter.</p>
    # @option params [Array<String>] :states
    #   <p>List of repository association states to use as a filter.</p>
    #            <p>The valid repository association states are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Associated</b>: The repository association is complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Associating</b>: CodeGuru Reviewer is:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Setting up pull request notifications. This is required 
    #                        for pull requests to trigger a CodeGuru Reviewer review.</p>
    #                        <note>
    #                           <p>If your repository <code>ProviderType</code> is <code>GitHub</code>, <code>GitHub Enterprise Server</code>, or <code>Bitbucket</code>, CodeGuru Reviewer creates webhooks in your repository to trigger CodeGuru Reviewer reviews. If you delete these webhooks, reviews of code in your repository cannot be triggered.</p>
    #                        </note>
    #                     </li>
    #                     <li>
    #                        <p>Setting up source code access. This is required for CodeGuru Reviewer to securely clone code in your repository.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Failed</b>: The repository failed to associate or disassociate.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Disassociating</b>: CodeGuru Reviewer is removing the repository's pull request notifications and source code access.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Disassociated</b>: CodeGuru Reviewer successfully disassociated the repository. You can create a new association with this repository if you want to review source code in it later. You can control access to code reviews created in anassociated repository with tags after it has been disassociated. For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/auth-and-access-control-using-tags.html">Using tags to control access to associated repositories</a> in the <i>Amazon CodeGuru Reviewer User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :names
    #   <p>List of repository names to use as a filter.</p>
    # @option params [Array<String>] :owners
    #   <p>List of owners to use as a filter. For Amazon Web Services CodeCommit, it is the name of the
    #            CodeCommit account that was used to associate the repository. For other repository source
    #            providers, such as Bitbucket and GitHub Enterprise Server, this is name of the account that
    #            was used to associate the repository. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of repository association results returned by
    #               <code>ListRepositoryAssociations</code> in paginated output. When this parameter is
    #            used, <code>ListRepositoryAssociations</code> only returns <code>maxResults</code> results
    #            in a single page with a <code>nextToken</code> response element. The remaining results of
    #            the initial request can be seen by sending another <code>ListRepositoryAssociations</code>
    #            request with the returned <code>nextToken</code> value. This value can be between 1 and
    #            100. If this parameter is not used, <code>ListRepositoryAssociations</code> returns up to
    #            100 results and a <code>nextToken</code> value if applicable. </p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListRepositoryAssociations</code> request where <code>maxResults</code> was used
    #            and the results exceeded the value of that parameter. Pagination continues from the end of
    #            the previous results that returned the <code>nextToken</code> value. </p>
    #            <note>
    #               <p>Treat this token as an opaque identifier that is only used to retrieve the next items
    #               in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     provider_types: ["CodeCommit" # One of: ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"]],
    #     states: ["Associated" # One of: ["Associated", "Associating", "Failed", "Disassociating", "Disassociated"]],
    #     names: ["Name"],
    #     owners: ["Owner"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_repository_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_association_summaries: [
    #       {
    #         association_arn: "Arn",
    #         connection_arn: "ConnectionArn",
    #         last_updated_time_stamp: Time.now,
    #         association_id: "AssociationId",
    #         name: "Name",
    #         owner: "Owner",
    #         provider_type: "CodeCommit" # One of: ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"],
    #         state: "Associated" # One of: ["Associated", "Associating", "Failed", "Disassociating", "Disassociated"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRepositoryAssociationsResponse]
    def list_repository_associations(params = {}, options = {})
      request = build_request(:list_repository_associations, params)
      request.send_request(options)
    end

    # <p>Returns the list of tags associated with an associated repository resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AssociationArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Stores customer feedback for a CodeGuru Reviewer recommendation. When this API is called again with
    #          different reactions the previous feedback is overwritten.</p>
    # @param [Hash, Types::PutRecommendationFeedbackRequest] params
    # @option params [String] :code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a> object.
    #         </p>
    # @option params [String] :recommendation_id
    #   <p>The recommendation ID that can be used to track the provided recommendations and then to
    #            collect the feedback.</p>
    # @option params [Array<String>] :reactions
    #   <p>List for storing reactions. Reactions are utf-8 text code for emojis. If you send an
    #            empty list it clears all your feedback.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_review_arn: "Arn", # required
    #     recommendation_id: "RecommendationId", # required
    #     reactions: ["ThumbsUp" # One of: ["ThumbsUp", "ThumbsDown"]], # required
    #   }
    #   options = {}
    #   response = client.put_recommendation_feedback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutRecommendationFeedbackResponse]
    def put_recommendation_feedback(params = {}, options = {})
      request = build_request(:put_recommendation_feedback, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to an associated repository.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An array of key-value pairs used to tag an associated repository. A tag is a custom attribute label with two parts:</p>
    #            <ul>
    #               <li>
    #                  <p>A <i>tag key</i> (for example, <code>CostCenter</code>,
    #   					<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #   					keys are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>An optional field known as a <i>tag value</i> (for example,
    #   					<code>111122223333</code>, <code>Production</code>, or a team name).
    #   					Omitting the tag value is the same as using an empty string. Like tag keys, tag
    #   					values are case sensitive.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AssociationArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes a tag from an associated repository.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of the keys for each tag you want to remove from an associated repository.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AssociationArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
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
      context[:gem_name] = 'aws-sdk-codegurureviewer'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        code_review_completed: Waiters::CodeReviewCompleted,
        repository_association_succeeded: Waiters::RepositoryAssociationSucceeded
      }
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
