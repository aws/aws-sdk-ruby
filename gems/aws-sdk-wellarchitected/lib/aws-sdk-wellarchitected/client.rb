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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json'

module Aws::WellArchitected
  # An API client for Aws::WellArchitected.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::WellArchitectedApiServiceLambda

    add_plugin(::Aws::WellArchitected::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJson)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::WellArchitected::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    #  TODO
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Associate a lens to a workload.</p>
    #          <p>Up to 10 lenses can be associated with a workload in a single API operation. A 
    #         maximum of 20 lenses can be associated with a workload.</p>
    #          <note>
    #             <p>
    #                <b>Disclaimer</b>
    #             </p>
    #             <p>By accessing and/or applying custom lenses created by another Amazon Web Services user or account, 
    #             you acknowledge that custom lenses created by other users and shared with you are 
    #             Third Party Content as defined in the Amazon Web Services Customer Agreement.    </p>
    #          </note>
    # @param [Hash, Types::AssociateLensesInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [Array<String>] :lens_aliases
    #   <p>List of lens aliases to associate or disassociate with a workload. Up to 10 lenses can be specified.</p>
    #            <p>Identify a lens using its <a>LensSummary$LensAlias</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     lens_aliases: ["LensAlias"], # required
    #   }
    #   options = {}
    #   response = client.associate_lenses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_lenses(params = {}, options = {})
      request = build_request(:associate_lenses, params)
      request.send_request(options)
    end

    # <p>Associate a profile with a workload.</p>
    # @param [Hash, Types::AssociateProfilesInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [Array<String>] :profile_arns
    #   <p>The list of profile ARNs to associate with the workload.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     profile_arns: ["ProfileArn"], # required
    #   }
    #   options = {}
    #   response = client.associate_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_profiles(params = {}, options = {})
      request = build_request(:associate_profiles, params)
      request.send_request(options)
    end

    # <p>Create a lens share.</p>
    #          <p>The owner of a lens can share it with other Amazon Web Services accounts, users, an organization,
    #             and organizational units (OUs) in the same Amazon Web Services Region.
    #             Lenses provided by Amazon Web Services (Amazon Web Services Official Content) cannot be shared.</p>
    #          <p>
    #             Shared access to a lens is not removed until the lens invitation is deleted.</p>
    #          <p>If you share a lens with an organization or OU, all accounts in the organization or OU
    #         are granted access to the lens.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-sharing.html">Sharing a custom lens</a> in the
    #             <i>Well-Architected Tool User Guide</i>.</p>
    #          <note>
    #             <p>
    #                <b>Disclaimer</b>
    #             </p>
    #             <p>By sharing your custom lenses with other Amazon Web Services accounts, 
    #                 you acknowledge that Amazon Web Services will make your custom lenses available to those 
    #                 other accounts. Those other accounts may continue to access and use your 
    #                 shared custom lenses even if you delete the custom lenses 
    #                 from your own Amazon Web Services account or terminate 
    #                 your Amazon Web Services account.</p>
    #          </note>
    # @param [Hash, Types::CreateLensShareInput] params
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :shared_with
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which 
    #               the workload, lens, profile, or review template is shared.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     lens_alias: "LensAlias", # required
    #     shared_with: "SharedWith", # required
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.create_lens_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     share_id: "ShareId"
    #   }
    # @return [Types::CreateLensShareOutput]
    def create_lens_share(params = {}, options = {})
      request = build_request(:create_lens_share, params)
      request.send_request(options)
    end

    # <p>Create a new lens version.</p>
    #          <p>A lens can have up to 100 versions.</p>
    #          <p>Use this operation to publish a new lens version after you have imported a lens. The <code>LensAlias</code> 
    #             is used to identify the lens to be published. 
    #             The owner of a lens can share the lens with other 
    #             Amazon Web Services accounts and users in the same Amazon Web Services Region. Only the owner of a lens can delete it.
    #         </p>
    # @param [Hash, Types::CreateLensVersionInput] params
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :lens_version
    #   <p>The version of the lens being created.</p>
    # @option params [Boolean] :is_major_version
    #   <p>Set to true if this new major lens version.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     lens_alias: "LensAlias", # required
    #     lens_version: "LensVersion", # required
    #     is_major_version: false,
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.create_lens_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lens_arn: "LensArn",
    #     lens_version: "LensVersion"
    #   }
    # @return [Types::CreateLensVersionOutput]
    def create_lens_version(params = {}, options = {})
      request = build_request(:create_lens_version, params)
      request.send_request(options)
    end

    # <p>Create a milestone for an existing workload.</p>
    # @param [Hash, Types::CreateMilestoneInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :milestone_name
    #   <p>The name of the milestone in a workload.</p>
    #            <p>Milestone names must be unique within a workload.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     milestone_name: "MilestoneName", # required
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.create_milestone(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     milestone_number: 1
    #   }
    # @return [Types::CreateMilestoneOutput]
    def create_milestone(params = {}, options = {})
      request = build_request(:create_milestone, params)
      request.send_request(options)
    end

    # <p>Create a profile.</p>
    # @param [Hash, Types::CreateProfileInput] params
    # @option params [String] :profile_name
    #   <p>Name of the profile.</p>
    # @option params [String] :profile_description
    #   <p>The profile description.</p>
    # @option params [Array<Types::ProfileQuestionUpdate>] :profile_questions
    #   <p>The profile questions.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to the profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_name: "ProfileName", # required
    #     profile_description: "ProfileDescription", # required
    #     profile_questions: [ # required
    #       {
    #         question_id: "QuestionId",
    #         selected_choice_ids: ["ChoiceId"]
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_arn: "ProfileArn",
    #     profile_version: "ProfileVersion"
    #   }
    # @return [Types::CreateProfileOutput]
    def create_profile(params = {}, options = {})
      request = build_request(:create_profile, params)
      request.send_request(options)
    end

    # <p>Create a profile share.</p>
    # @param [Hash, Types::CreateProfileShareInput] params
    # @option params [String] :profile_arn
    #   <p>The profile ARN.</p>
    # @option params [String] :shared_with
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which 
    #               the workload, lens, profile, or review template is shared.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_arn: "ProfileArn", # required
    #     shared_with: "SharedWith", # required
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.create_profile_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     share_id: "ShareId",
    #     profile_arn: "ProfileArn"
    #   }
    # @return [Types::CreateProfileShareOutput]
    def create_profile_share(params = {}, options = {})
      request = build_request(:create_profile_share, params)
      request.send_request(options)
    end

    # <p>Create a review template.</p>
    #          <note>
    #             <p>
    #                <b>Disclaimer</b>
    #             </p>
    #             <p>Do not include or gather personal identifiable information (PII) of end users or
    #                 other identifiable individuals in or via your review templates. If your review
    #                 template or those shared with you and used in your account do include or collect PII
    #                 you are responsible for: ensuring that the included PII is processed in accordance
    #                 with applicable law, providing adequate privacy notices, and obtaining necessary
    #                 consents for processing such data.</p>
    #          </note>
    # @param [Hash, Types::CreateReviewTemplateInput] params
    # @option params [String] :template_name
    #   <p>Name of the review template.</p>
    # @option params [String] :description
    #   <p>The review template description.</p>
    # @option params [Array<String>] :lenses
    #   <p>Lenses applied to the review template.</p>
    # @option params [String] :notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to the review template.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "TemplateName", # required
    #     description: "TemplateDescription", # required
    #     lenses: ["LensAlias"], # required
    #     notes: "Notes",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.create_review_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_arn: "TemplateArn"
    #   }
    # @return [Types::CreateReviewTemplateOutput]
    def create_review_template(params = {}, options = {})
      request = build_request(:create_review_template, params)
      request.send_request(options)
    end

    # <p>Create a review template share.</p>
    #          <p>The owner of a review template can share it with other Amazon Web Services accounts,
    #             users, an organization, and organizational units (OUs) in the same Amazon Web Services Region. </p>
    #          <p> Shared access to a review template is not removed until the review template share
    #             invitation is deleted.</p>
    #          <p>If you share a review template with an organization or OU, all accounts in the
    #             organization or OU are granted access to the review template.</p>
    #          <note>
    #             <p>
    #                <b>Disclaimer</b>
    #             </p>
    #             <p>By sharing your review template with other Amazon Web Services accounts, you
    #                 acknowledge that Amazon Web Services will make your review template available to
    #                 those other accounts.</p>
    #          </note>
    # @param [Hash, Types::CreateTemplateShareInput] params
    # @option params [String] :template_arn
    #   <p>The review template ARN.</p>
    # @option params [String] :shared_with
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which 
    #               the workload, lens, profile, or review template is shared.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #     shared_with: "SharedWith", # required
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.create_template_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_arn: "TemplateArn",
    #     share_id: "ShareId"
    #   }
    # @return [Types::CreateTemplateShareOutput]
    def create_template_share(params = {}, options = {})
      request = build_request(:create_template_share, params)
      request.send_request(options)
    end

    # <p>Create a new workload.</p>
    #          <p>The owner of a workload can share the workload with other Amazon Web Services accounts, users,
    #             an organization, and organizational units (OUs) 
    #             in the same Amazon Web Services Region. Only the owner of a workload can delete it.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/define-workload.html">Defining a Workload</a> in the
    #                 <i>Well-Architected Tool User Guide</i>.</p>
    #          <important>
    #             <p>Either <code>AwsRegions</code>, <code>NonAwsRegions</code>, or both must be specified when
    #                 creating a workload.</p>
    #             <p>You also must specify <code>ReviewOwner</code>, even though the
    #                 parameter is listed as not being required in the following section.
    #             </p>
    #          </important>
    #          <p>When creating a workload using a review template, you must have the following IAM permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>wellarchitected:GetReviewTemplate</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>wellarchitected:GetReviewTemplateAnswer</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>wellarchitected:ListReviewTemplateAnswers</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>wellarchitected:GetReviewTemplateLensReview</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateWorkloadInput] params
    # @option params [String] :workload_name
    #   <p>The name of the workload.</p>
    #            <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    # @option params [String] :description
    #   <p>The description for the workload.</p>
    # @option params [String] :environment
    #   <p>The environment for the workload.</p>
    # @option params [Array<String>] :account_ids
    #   <p>The list of Amazon Web Services account IDs associated with the workload.</p>
    # @option params [Array<String>] :aws_regions
    #   <p>The list of Amazon Web Services Regions associated with the workload, for example,
    #                   <code>us-east-2</code>, or <code>ca-central-1</code>.</p>
    # @option params [Array<String>] :non_aws_regions
    #   <p> The list of non-Amazon Web Services Regions associated with the workload.</p>
    # @option params [Array<String>] :pillar_priorities
    #   <p>The priorities of the pillars, which are used to order items in the improvement plan.
    #               Each pillar is represented by its <a>PillarReviewSummary$PillarId</a>.</p>
    # @option params [String] :architectural_design
    #   <p>The URL of the architectural design for the workload.</p>
    # @option params [String] :review_owner
    #   <p>The review owner of the workload. The name, email address, or identifier for the
    #               primary group or individual that owns the workload review process.</p>
    # @option params [String] :industry_type
    #   <p>The industry type for the workload.</p>
    #            <p>If specified, must be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Agriculture</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Automobile</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Defense</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Design and Engineering</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Digital Advertising</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Education</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environmental Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Financial Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Gaming</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>General Public Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Healthcare</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Hospitality</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InfoTech</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Justice and Public Safety</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Life Sciences</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Manufacturing</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Media & Entertainment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Mining & Resources</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Oil & Gas</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Power & Utilities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Professional Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Real Estate & Construction</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Retail & Wholesale</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Social Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Telecommunications</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Travel, Transportation & Logistics</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Other</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :industry
    #   <p>The industry for the workload.</p>
    # @option params [Array<String>] :lenses
    #   <p>The list of lenses associated with the workload. Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #            <p>If a review template that specifies lenses is applied to the workload, those lenses are applied
    #           to the workload in addition to these lenses.</p>
    # @option params [String] :notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be associated with the workload.</p>
    # @option params [Types::WorkloadDiscoveryConfig] :discovery_config
    #   <p>Well-Architected discovery configuration settings associated to the workload.</p>
    # @option params [Array<String>] :applications
    #   <p>List of AppRegistry application ARNs associated to the workload.</p>
    # @option params [Array<String>] :profile_arns
    #   <p>The list of profile ARNs associated with the workload.</p>
    # @option params [Array<String>] :review_template_arns
    #   <p>The list of review template ARNs to associate with the workload.</p>
    # @option params [Types::WorkloadJiraConfigurationInput] :jira_configuration
    #   <p>Jira configuration settings when creating a workload.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_name: "WorkloadName", # required
    #     description: "WorkloadDescription", # required
    #     environment: "PRODUCTION" # One of: ["PRODUCTION", "PREPRODUCTION"], # required
    #     account_ids: ["AwsAccountId"],
    #     aws_regions: ["AwsRegion"],
    #     non_aws_regions: ["WorkloadNonAwsRegion"],
    #     pillar_priorities: ["PillarId"],
    #     architectural_design: "WorkloadArchitecturalDesign",
    #     review_owner: "WorkloadReviewOwner",
    #     industry_type: "WorkloadIndustryType",
    #     industry: "WorkloadIndustry",
    #     lenses: ["LensAlias"], # required
    #     notes: "Notes",
    #     client_request_token: "ClientRequestToken", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     discovery_config: {
    #       trusted_advisor_integration_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       workload_resource_definition: ["WORKLOAD_METADATA" # One of: ["WORKLOAD_METADATA", "APP_REGISTRY"]]
    #     },
    #     applications: ["ApplicationArn"],
    #     profile_arns: ["ProfileArn"],
    #     review_template_arns: ["TemplateArn"],
    #     jira_configuration: {
    #       issue_management_status: "ENABLED" # One of: ["ENABLED", "DISABLED", "INHERIT"],
    #       issue_management_type: "AUTO" # One of: ["AUTO", "MANUAL"],
    #       jira_project_key: "JiraProjectKey"
    #     }
    #   }
    #   options = {}
    #   response = client.create_workload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     workload_arn: "WorkloadArn"
    #   }
    # @return [Types::CreateWorkloadOutput]
    def create_workload(params = {}, options = {})
      request = build_request(:create_workload, params)
      request.send_request(options)
    end

    # <p>Create a workload share.</p>
    #          <p>The owner of a workload can share it with other Amazon Web Services accounts and users in the same
    #             Amazon Web Services Region. Shared access to a workload is not removed until the workload invitation is
    #             deleted.</p>
    #          <p>If you share a workload with an organization or OU, all accounts in the organization or OU
    #             are granted access to the workload.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/workloads-sharing.html">Sharing a workload</a> in the
    #                 <i>Well-Architected Tool User Guide</i>.</p>
    # @param [Hash, Types::CreateWorkloadShareInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :shared_with
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which 
    #               the workload, lens, profile, or review template is shared.</p>
    # @option params [String] :permission_type
    #   <p>Permission granted on a share request.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     shared_with: "SharedWith", # required
    #     permission_type: "READONLY" # One of: ["READONLY", "CONTRIBUTOR"], # required
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.create_workload_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     share_id: "ShareId"
    #   }
    # @return [Types::CreateWorkloadShareOutput]
    def create_workload_share(params = {}, options = {})
      request = build_request(:create_workload_share, params)
      request.send_request(options)
    end

    # <p>Delete an existing lens.</p>
    #          <p>Only the owner of a lens can delete it.  After the lens is deleted,  Amazon Web Services accounts and users 
    #               that you shared the lens with can continue to use it, but they will no longer be able to apply it to new workloads.
    #         </p>
    #          <note>
    #             <p>
    #                <b>Disclaimer</b>
    #             </p>
    #             <p>By sharing your custom lenses with other Amazon Web Services accounts, 
    #                 you acknowledge that Amazon Web Services will make your custom lenses available to those 
    #                 other accounts. Those other accounts may continue to access and use your 
    #                 shared custom lenses even if you delete the custom lenses 
    #                 from your own Amazon Web Services account or terminate 
    #                 your Amazon Web Services account.</p>
    #          </note>
    # @param [Hash, Types::DeleteLensInput] params
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @option params [String] :lens_status
    #   <p>The status of the lens to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     lens_alias: "LensAlias", # required
    #     client_request_token: "ClientRequestToken", # required
    #     lens_status: "ALL" # One of: ["ALL", "DRAFT", "PUBLISHED"], # required
    #   }
    #   options = {}
    #   response = client.delete_lens(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_lens(params = {}, options = {})
      request = build_request(:delete_lens, params)
      request.send_request(options)
    end

    # <p>Delete a lens share.</p>
    #          <p>After the lens share is deleted,  Amazon Web Services accounts, users, organizations,
    #             and organizational units (OUs) 
    #             that you shared the lens with can continue to use it, but they will no longer be able to apply it to new workloads.</p>
    #          <note>
    #             <p>
    #                <b>Disclaimer</b>
    #             </p>
    #             <p>By sharing your custom lenses with other Amazon Web Services accounts, 
    #                 you acknowledge that Amazon Web Services will make your custom lenses available to those 
    #                 other accounts. Those other accounts may continue to access and use your 
    #                 shared custom lenses even if you delete the custom lenses 
    #                 from your own Amazon Web Services account or terminate 
    #                 your Amazon Web Services account.</p>
    #          </note>
    # @param [Hash, Types::DeleteLensShareInput] params
    # @option params [String] :share_id
    #   <p>The ID associated with the share.</p>
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     share_id: "ShareId", # required
    #     lens_alias: "LensAlias", # required
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.delete_lens_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_lens_share(params = {}, options = {})
      request = build_request(:delete_lens_share, params)
      request.send_request(options)
    end

    # <p>Delete a profile.</p>
    #          <note>
    #             <p>
    #                <b>Disclaimer</b>
    #             </p>
    #             <p>By sharing your profile with other Amazon Web Services accounts, 
    #                you acknowledge that Amazon Web Services will make your profile available to those 
    #                other accounts. Those other accounts may continue to access and use your 
    #                shared profile even if you delete the profile 
    #                from your own Amazon Web Services account or terminate 
    #                your Amazon Web Services account.</p>
    #          </note>
    # @param [Hash, Types::DeleteProfileInput] params
    # @option params [String] :profile_arn
    #   <p>The profile ARN.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_arn: "ProfileArn", # required
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.delete_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_profile(params = {}, options = {})
      request = build_request(:delete_profile, params)
      request.send_request(options)
    end

    # <p>Delete a profile share.</p>
    # @param [Hash, Types::DeleteProfileShareInput] params
    # @option params [String] :share_id
    #   <p>The ID associated with the share.</p>
    # @option params [String] :profile_arn
    #   <p>The profile ARN.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     share_id: "ShareId", # required
    #     profile_arn: "ProfileArn", # required
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.delete_profile_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_profile_share(params = {}, options = {})
      request = build_request(:delete_profile_share, params)
      request.send_request(options)
    end

    # <p>Delete a review template.</p>
    #          <p>Only the owner of a review template can delete it.</p>
    #          <p>After the review template is deleted, Amazon Web Services accounts, users,
    #             organizations, and organizational units (OUs) that you shared the review template with
    #             will no longer be able to apply it to new workloads.</p>
    # @param [Hash, Types::DeleteReviewTemplateInput] params
    # @option params [String] :template_arn
    #   <p>The review template ARN.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.delete_review_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_review_template(params = {}, options = {})
      request = build_request(:delete_review_template, params)
      request.send_request(options)
    end

    # <p>Delete a review template share.</p>
    #          <p>After the review template share is deleted, Amazon Web Services accounts, users,
    #             organizations, and organizational units (OUs) that you shared the review template with
    #             will no longer be able to apply it to new workloads.</p>
    # @param [Hash, Types::DeleteTemplateShareInput] params
    # @option params [String] :share_id
    #   <p>The ID associated with the share.</p>
    # @option params [String] :template_arn
    #   <p>The review template ARN.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     share_id: "ShareId", # required
    #     template_arn: "TemplateArn", # required
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.delete_template_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_template_share(params = {}, options = {})
      request = build_request(:delete_template_share, params)
      request.send_request(options)
    end

    # <p>Delete an existing workload.</p>
    # @param [Hash, Types::DeleteWorkloadInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.delete_workload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_workload(params = {}, options = {})
      request = build_request(:delete_workload, params)
      request.send_request(options)
    end

    # <p>Delete a workload share.</p>
    # @param [Hash, Types::DeleteWorkloadShareInput] params
    # @option params [String] :share_id
    #   <p>The ID associated with the share.</p>
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     share_id: "ShareId", # required
    #     workload_id: "WorkloadId", # required
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.delete_workload_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_workload_share(params = {}, options = {})
      request = build_request(:delete_workload_share, params)
      request.send_request(options)
    end

    # <p>Disassociate a lens from a workload.</p>
    #          <p>Up to 10 lenses can be disassociated from a workload in a single API operation.</p>
    #          <note>
    #             <p>The Amazon Web Services Well-Architected Framework lens (<code>wellarchitected</code>) cannot be
    #                 removed from a workload.</p>
    #          </note>
    # @param [Hash, Types::DisassociateLensesInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [Array<String>] :lens_aliases
    #   <p>List of lens aliases to associate or disassociate with a workload. Up to 10 lenses can be specified.</p>
    #            <p>Identify a lens using its <a>LensSummary$LensAlias</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     lens_aliases: ["LensAlias"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_lenses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_lenses(params = {}, options = {})
      request = build_request(:disassociate_lenses, params)
      request.send_request(options)
    end

    # <p>Disassociate a profile from a workload.</p>
    # @param [Hash, Types::DisassociateProfilesInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [Array<String>] :profile_arns
    #   <p>The list of profile ARNs to disassociate from the workload.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     profile_arns: ["ProfileArn"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_profiles(params = {}, options = {})
      request = build_request(:disassociate_profiles, params)
      request.send_request(options)
    end

    # <p>Export an existing lens.</p>
    #          <p>Only the owner of a lens can export it. Lenses provided by Amazon Web Services (Amazon Web Services Official Content) 
    #             cannot be exported.</p>
    #          <p>Lenses are defined in JSON. For more information, see <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html">JSON format specification</a> 
    #             in the <i>Well-Architected Tool User Guide</i>.</p>
    #          <note>
    #             <p>
    #                <b>Disclaimer</b>
    #             </p>
    #             <p>Do not include or gather personal identifiable information (PII) of end users or 
    #                 other identifiable individuals in or via your custom lenses. If your custom 
    #                 lens or those shared with you and used in your account do include or collect 
    #                 PII you are responsible for: ensuring that the included PII is processed in accordance 
    #                 with applicable law, providing adequate privacy notices, and obtaining necessary 
    #                 consents for processing such data.</p>
    #          </note>
    # @param [Hash, Types::ExportLensInput] params
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :lens_version
    #   <p>The lens version to be exported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     lens_alias: "LensAlias", # required
    #     lens_version: "LensVersion"
    #   }
    #   options = {}
    #   response = client.export_lens(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lens_json: "LensJSON"
    #   }
    # @return [Types::ExportLensOutput]
    def export_lens(params = {}, options = {})
      request = build_request(:export_lens, params)
      request.send_request(options)
    end

    # <p>Get the answer to a specific question in a workload review.</p>
    # @param [Hash, Types::GetAnswerInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :question_id
    #   <p>The ID of the question.</p>
    # @option params [Integer] :milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     lens_alias: "LensAlias", # required
    #     question_id: "QuestionId", # required
    #     milestone_number: 1
    #   }
    #   options = {}
    #   response = client.get_answer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     milestone_number: 1,
    #     lens_alias: "LensAlias",
    #     lens_arn: "LensArn",
    #     answer: {
    #       question_id: "QuestionId",
    #       pillar_id: "PillarId",
    #       question_title: "QuestionTitle",
    #       question_description: "QuestionDescription",
    #       improvement_plan_url: "ImprovementPlanUrl",
    #       helpful_resource_url: "HelpfulResourceUrl",
    #       helpful_resource_display_text: "DisplayText",
    #       choices: [
    #         {
    #           choice_id: "ChoiceId",
    #           title: "ChoiceTitle",
    #           description: "ChoiceDescription",
    #           helpful_resource: {
    #             display_text: "ChoiceContentDisplayText",
    #             url: "ChoiceContentUrl"
    #           },
    #           improvement_plan: {
    #             display_text: "ChoiceContentDisplayText",
    #             url: "ChoiceContentUrl"
    #           },
    #           additional_resources: [
    #             {
    #               type: "HELPFUL_RESOURCE" # One of: ["HELPFUL_RESOURCE", "IMPROVEMENT_PLAN"],
    #               content: [
    #                 {
    #                   display_text: "ChoiceContentDisplayText",
    #                   url: "ChoiceContentUrl"
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       ],
    #       selected_choices: ["ChoiceId"],
    #       choice_answers: [
    #         {
    #           choice_id: "ChoiceId",
    #           status: "SELECTED" # One of: ["SELECTED", "NOT_APPLICABLE", "UNSELECTED"],
    #           reason: "OUT_OF_SCOPE" # One of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"],
    #           notes: "ChoiceNotes"
    #         }
    #       ],
    #       is_applicable: false,
    #       risk: "UNANSWERED" # One of: ["UNANSWERED", "HIGH", "MEDIUM", "NONE", "NOT_APPLICABLE"],
    #       notes: "Notes",
    #       reason: "OUT_OF_SCOPE" # One of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"],
    #       jira_configuration: {
    #         jira_issue_url: "JiraIssueUrl",
    #         last_synced_time: Time.now
    #       }
    #     }
    #   }
    # @return [Types::GetAnswerOutput]
    def get_answer(params = {}, options = {})
      request = build_request(:get_answer, params)
      request.send_request(options)
    end

    # <p>Get a consolidated report of your workloads.</p>
    #          <p>You can optionally choose to include workloads that have been shared with you.</p>
    # @param [Hash, Types::GetConsolidatedReportInput] params
    # @option params [String] :format
    #   <p>The format of the consolidated report.</p>
    #            <p>For <code>PDF</code>, <code>Base64String</code> is returned. For <code>JSON</code>, 
    #               <code>Metrics</code> is returned.</p>
    # @option params [Boolean] :include_shared_resources
    #   <p>Set to <code>true</code> to have shared resources included in the report.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     format: "PDF" # One of: ["PDF", "JSON"], # required
    #     include_shared_resources: false,
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_consolidated_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metrics: [
    #       {
    #         metric_type: "WORKLOAD" # One of: ["WORKLOAD"],
    #         risk_counts: {
    #           "Risk" => 1
    #         },
    #         workload_id: "WorkloadId",
    #         workload_name: "WorkloadName",
    #         workload_arn: "WorkloadArn",
    #         updated_at: Time.now,
    #         lenses: [
    #           {
    #             lens_arn: "LensArn",
    #             pillars: [
    #               {
    #                 pillar_id: "PillarId",
    #                 risk_counts: {
    #                   "Risk" => 1
    #                 },
    #                 questions: [
    #                   {
    #                     question_id: "QuestionId",
    #                     risk: "UNANSWERED" # One of: ["UNANSWERED", "HIGH", "MEDIUM", "NONE", "NOT_APPLICABLE"],
    #                     best_practices: [
    #                       {
    #                         choice_id: "ChoiceId",
    #                         choice_title: "ChoiceTitle"
    #                       }
    #                     ]
    #                   }
    #                 ]
    #               }
    #             ],
    #             risk_counts: {
    #               "Risk" => 1
    #             }
    #           }
    #         ],
    #         lenses_applied_count: 1
    #       }
    #     ],
    #     next_token: "NextToken",
    #     base64_string: "Base64String"
    #   }
    # @return [Types::GetConsolidatedReportOutput]
    def get_consolidated_report(params = {}, options = {})
      request = build_request(:get_consolidated_report, params)
      request.send_request(options)
    end

    # <p>Global settings for all workloads.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_global_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_sharing_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     discovery_integration_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     jira_configuration: {
    #       integration_status: "CONFIGURED" # One of: ["CONFIGURED", "NOT_CONFIGURED"],
    #       issue_management_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       issue_management_type: "AUTO" # One of: ["AUTO", "MANUAL"],
    #       subdomain: "Subdomain",
    #       jira_project_key: "JiraProjectKey",
    #       status_message: "StatusMessage"
    #     }
    #   }
    # @return [Types::GetGlobalSettingsOutput]
    def get_global_settings(params = {}, options = {})
      request = build_request(:get_global_settings, params)
      request.send_request(options)
    end

    # <p>Get an existing lens.</p>
    # @param [Hash, Types::GetLensInput] params
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :lens_version
    #   <p>The lens version to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     lens_alias: "LensAlias", # required
    #     lens_version: "LensVersion"
    #   }
    #   options = {}
    #   response = client.get_lens(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lens: {
    #       lens_arn: "LensArn",
    #       lens_version: "LensVersion",
    #       name: "LensName",
    #       description: "LensDescription",
    #       owner: "LensOwner",
    #       share_invitation_id: "ShareInvitationId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetLensOutput]
    def get_lens(params = {}, options = {})
      request = build_request(:get_lens, params)
      request.send_request(options)
    end

    # <p>Get lens review.</p>
    # @param [Hash, Types::GetLensReviewInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [Integer] :milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     lens_alias: "LensAlias", # required
    #     milestone_number: 1
    #   }
    #   options = {}
    #   response = client.get_lens_review(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     milestone_number: 1,
    #     lens_review: {
    #       lens_alias: "LensAlias",
    #       lens_arn: "LensArn",
    #       lens_version: "LensVersion",
    #       lens_name: "LensName",
    #       lens_status: "CURRENT" # One of: ["CURRENT", "NOT_CURRENT", "DEPRECATED", "DELETED", "UNSHARED"],
    #       pillar_review_summaries: [
    #         {
    #           pillar_id: "PillarId",
    #           pillar_name: "PillarName",
    #           notes: "Notes",
    #           risk_counts: {
    #             "Risk" => 1
    #           },
    #           prioritized_risk_counts: {
    #             "Risk" => 1
    #           }
    #         }
    #       ],
    #       jira_configuration: {
    #         selected_pillars: [
    #           {
    #             pillar_id: "PillarId",
    #             selected_question_ids: ["SelectedQuestionId"]
    #           }
    #         ]
    #       },
    #       updated_at: Time.now,
    #       notes: "Notes",
    #       risk_counts: {
    #         "Risk" => 1
    #       },
    #       next_token: "NextToken",
    #       profiles: [
    #         {
    #           profile_arn: "ProfileArn",
    #           profile_version: "ProfileVersion"
    #         }
    #       ],
    #       prioritized_risk_counts: {
    #         "Risk" => 1
    #       }
    #     }
    #   }
    # @return [Types::GetLensReviewOutput]
    def get_lens_review(params = {}, options = {})
      request = build_request(:get_lens_review, params)
      request.send_request(options)
    end

    # <p>Get lens review report.</p>
    # @param [Hash, Types::GetLensReviewReportInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [Integer] :milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     lens_alias: "LensAlias", # required
    #     milestone_number: 1
    #   }
    #   options = {}
    #   response = client.get_lens_review_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     milestone_number: 1,
    #     lens_review_report: {
    #       lens_alias: "LensAlias",
    #       lens_arn: "LensArn",
    #       base64_string: "Base64String"
    #     }
    #   }
    # @return [Types::GetLensReviewReportOutput]
    def get_lens_review_report(params = {}, options = {})
      request = build_request(:get_lens_review_report, params)
      request.send_request(options)
    end

    # <p>Get lens version differences.</p>
    # @param [Hash, Types::GetLensVersionDifferenceInput] params
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :base_lens_version
    #   <p>The base version of the lens.</p>
    # @option params [String] :target_lens_version
    #   <p>The lens version to target a difference for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     lens_alias: "LensAlias", # required
    #     base_lens_version: "LensVersion",
    #     target_lens_version: "LensVersion"
    #   }
    #   options = {}
    #   response = client.get_lens_version_difference(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lens_alias: "LensAlias",
    #     lens_arn: "LensArn",
    #     base_lens_version: "LensVersion",
    #     target_lens_version: "LensVersion",
    #     latest_lens_version: "LensVersion",
    #     version_differences: {
    #       pillar_differences: [
    #         {
    #           pillar_id: "PillarId",
    #           pillar_name: "PillarName",
    #           difference_status: "UPDATED" # One of: ["UPDATED", "NEW", "DELETED"],
    #           question_differences: [
    #             {
    #               question_id: "QuestionId",
    #               question_title: "QuestionTitle",
    #               difference_status: "UPDATED" # One of: ["UPDATED", "NEW", "DELETED"]
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetLensVersionDifferenceOutput]
    def get_lens_version_difference(params = {}, options = {})
      request = build_request(:get_lens_version_difference, params)
      request.send_request(options)
    end

    # <p>Get a milestone for an existing workload.</p>
    # @param [Hash, Types::GetMilestoneInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [Integer] :milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     milestone_number: 1, # required
    #   }
    #   options = {}
    #   response = client.get_milestone(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     milestone: {
    #       milestone_number: 1,
    #       milestone_name: "MilestoneName",
    #       recorded_at: Time.now,
    #       workload: {
    #         workload_id: "WorkloadId",
    #         workload_arn: "WorkloadArn",
    #         workload_name: "WorkloadName",
    #         description: "WorkloadDescription",
    #         environment: "PRODUCTION" # One of: ["PRODUCTION", "PREPRODUCTION"],
    #         updated_at: Time.now,
    #         account_ids: ["AwsAccountId"],
    #         aws_regions: ["AwsRegion"],
    #         non_aws_regions: ["WorkloadNonAwsRegion"],
    #         architectural_design: "WorkloadArchitecturalDesign",
    #         review_owner: "WorkloadReviewOwner",
    #         review_restriction_date: Time.now,
    #         is_review_owner_update_acknowledged: false,
    #         industry_type: "WorkloadIndustryType",
    #         industry: "WorkloadIndustry",
    #         notes: "Notes",
    #         improvement_status: "NOT_APPLICABLE" # One of: ["NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"],
    #         risk_counts: {
    #           "Risk" => 1
    #         },
    #         pillar_priorities: ["PillarId"],
    #         lenses: ["LensAlias"],
    #         owner: "AwsAccountId",
    #         share_invitation_id: "ShareInvitationId",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         discovery_config: {
    #           trusted_advisor_integration_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           workload_resource_definition: ["WORKLOAD_METADATA" # One of: ["WORKLOAD_METADATA", "APP_REGISTRY"]]
    #         },
    #         applications: ["ApplicationArn"],
    #         profiles: [
    #           {
    #             profile_arn: "ProfileArn",
    #             profile_version: "ProfileVersion"
    #           }
    #         ],
    #         prioritized_risk_counts: {
    #           "Risk" => 1
    #         },
    #         jira_configuration: {
    #           issue_management_status: "ENABLED" # One of: ["ENABLED", "DISABLED", "INHERIT"],
    #           issue_management_type: "AUTO" # One of: ["AUTO", "MANUAL"],
    #           jira_project_key: "JiraProjectKey",
    #           status_message: "StatusMessage"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetMilestoneOutput]
    def get_milestone(params = {}, options = {})
      request = build_request(:get_milestone, params)
      request.send_request(options)
    end

    # <p>Get profile information.</p>
    # @param [Hash, Types::GetProfileInput] params
    # @option params [String] :profile_arn
    #   <p>The profile ARN.</p>
    # @option params [String] :profile_version
    #   <p>The profile version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_arn: "ProfileArn", # required
    #     profile_version: "ProfileVersion"
    #   }
    #   options = {}
    #   response = client.get_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile: {
    #       profile_arn: "ProfileArn",
    #       profile_version: "ProfileVersion",
    #       profile_name: "ProfileName",
    #       profile_description: "ProfileDescription",
    #       profile_questions: [
    #         {
    #           question_id: "QuestionId",
    #           question_title: "QuestionTitle",
    #           question_description: "QuestionDescription",
    #           question_choices: [
    #             {
    #               choice_id: "ChoiceId",
    #               choice_title: "ChoiceTitle",
    #               choice_description: "ChoiceDescription"
    #             }
    #           ],
    #           selected_choice_ids: ["ChoiceId"],
    #           min_selected_choices: 1,
    #           max_selected_choices: 1
    #         }
    #       ],
    #       owner: "AwsAccountId",
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       share_invitation_id: "ShareInvitationId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetProfileOutput]
    def get_profile(params = {}, options = {})
      request = build_request(:get_profile, params)
      request.send_request(options)
    end

    # <p>Get profile template.</p>
    # @param [Hash, Types::GetProfileTemplateInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_profile_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_template: {
    #       template_name: "ProfileName",
    #       template_questions: [
    #         {
    #           question_id: "QuestionId",
    #           question_title: "QuestionTitle",
    #           question_description: "QuestionDescription",
    #           question_choices: [
    #             {
    #               choice_id: "ChoiceId",
    #               choice_title: "ChoiceTitle",
    #               choice_description: "ChoiceDescription"
    #             }
    #           ],
    #           min_selected_choices: 1,
    #           max_selected_choices: 1
    #         }
    #       ],
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetProfileTemplateOutput]
    def get_profile_template(params = {}, options = {})
      request = build_request(:get_profile_template, params)
      request.send_request(options)
    end

    # <p>Get review template.</p>
    # @param [Hash, Types::GetReviewTemplateInput] params
    # @option params [String] :template_arn
    #   <p>The review template ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #   }
    #   options = {}
    #   response = client.get_review_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     review_template: {
    #       description: "TemplateDescription",
    #       lenses: ["LensAlias"],
    #       notes: "Notes",
    #       question_counts: {
    #         "Question" => 1
    #       },
    #       owner: "AwsAccountId",
    #       updated_at: Time.now,
    #       template_arn: "TemplateArn",
    #       template_name: "TemplateName",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       update_status: "CURRENT" # One of: ["CURRENT", "LENS_NOT_CURRENT"],
    #       share_invitation_id: "ShareInvitationId"
    #     }
    #   }
    # @return [Types::GetReviewTemplateOutput]
    def get_review_template(params = {}, options = {})
      request = build_request(:get_review_template, params)
      request.send_request(options)
    end

    # <p>Get review template answer.</p>
    # @param [Hash, Types::GetReviewTemplateAnswerInput] params
    # @option params [String] :template_arn
    #   <p>The review template ARN.</p>
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :question_id
    #   <p>The ID of the question.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #     lens_alias: "LensAlias", # required
    #     question_id: "QuestionId", # required
    #   }
    #   options = {}
    #   response = client.get_review_template_answer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_arn: "TemplateArn",
    #     lens_alias: "LensAlias",
    #     answer: {
    #       question_id: "QuestionId",
    #       pillar_id: "PillarId",
    #       question_title: "QuestionTitle",
    #       question_description: "QuestionDescription",
    #       improvement_plan_url: "ImprovementPlanUrl",
    #       helpful_resource_url: "HelpfulResourceUrl",
    #       helpful_resource_display_text: "DisplayText",
    #       choices: [
    #         {
    #           choice_id: "ChoiceId",
    #           title: "ChoiceTitle",
    #           description: "ChoiceDescription",
    #           helpful_resource: {
    #             display_text: "ChoiceContentDisplayText",
    #             url: "ChoiceContentUrl"
    #           },
    #           improvement_plan: {
    #             display_text: "ChoiceContentDisplayText",
    #             url: "ChoiceContentUrl"
    #           },
    #           additional_resources: [
    #             {
    #               type: "HELPFUL_RESOURCE" # One of: ["HELPFUL_RESOURCE", "IMPROVEMENT_PLAN"],
    #               content: [
    #                 {
    #                   display_text: "ChoiceContentDisplayText",
    #                   url: "ChoiceContentUrl"
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       ],
    #       selected_choices: ["ChoiceId"],
    #       choice_answers: [
    #         {
    #           choice_id: "ChoiceId",
    #           status: "SELECTED" # One of: ["SELECTED", "NOT_APPLICABLE", "UNSELECTED"],
    #           reason: "OUT_OF_SCOPE" # One of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"],
    #           notes: "ChoiceNotes"
    #         }
    #       ],
    #       is_applicable: false,
    #       answer_status: "UNANSWERED" # One of: ["UNANSWERED", "ANSWERED"],
    #       notes: "Notes",
    #       reason: "OUT_OF_SCOPE" # One of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #     }
    #   }
    # @return [Types::GetReviewTemplateAnswerOutput]
    def get_review_template_answer(params = {}, options = {})
      request = build_request(:get_review_template_answer, params)
      request.send_request(options)
    end

    # <p>Get a lens review associated with a review template.</p>
    # @param [Hash, Types::GetReviewTemplateLensReviewInput] params
    # @option params [String] :template_arn
    #   <p>The review template ARN.</p>
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #     lens_alias: "LensAlias", # required
    #   }
    #   options = {}
    #   response = client.get_review_template_lens_review(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_arn: "TemplateArn",
    #     lens_review: {
    #       lens_alias: "LensAlias",
    #       lens_arn: "LensArn",
    #       lens_version: "LensVersion",
    #       lens_name: "LensName",
    #       lens_status: "CURRENT" # One of: ["CURRENT", "NOT_CURRENT", "DEPRECATED", "DELETED", "UNSHARED"],
    #       pillar_review_summaries: [
    #         {
    #           pillar_id: "PillarId",
    #           pillar_name: "PillarName",
    #           notes: "Notes",
    #           question_counts: {
    #             "Question" => 1
    #           }
    #         }
    #       ],
    #       updated_at: Time.now,
    #       notes: "Notes",
    #       question_counts: {
    #         "Question" => 1
    #       },
    #       next_token: "NextToken"
    #     }
    #   }
    # @return [Types::GetReviewTemplateLensReviewOutput]
    def get_review_template_lens_review(params = {}, options = {})
      request = build_request(:get_review_template_lens_review, params)
      request.send_request(options)
    end

    # <p>Get an existing workload.</p>
    # @param [Hash, Types::GetWorkloadInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #   }
    #   options = {}
    #   response = client.get_workload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload: {
    #       workload_id: "WorkloadId",
    #       workload_arn: "WorkloadArn",
    #       workload_name: "WorkloadName",
    #       description: "WorkloadDescription",
    #       environment: "PRODUCTION" # One of: ["PRODUCTION", "PREPRODUCTION"],
    #       updated_at: Time.now,
    #       account_ids: ["AwsAccountId"],
    #       aws_regions: ["AwsRegion"],
    #       non_aws_regions: ["WorkloadNonAwsRegion"],
    #       architectural_design: "WorkloadArchitecturalDesign",
    #       review_owner: "WorkloadReviewOwner",
    #       review_restriction_date: Time.now,
    #       is_review_owner_update_acknowledged: false,
    #       industry_type: "WorkloadIndustryType",
    #       industry: "WorkloadIndustry",
    #       notes: "Notes",
    #       improvement_status: "NOT_APPLICABLE" # One of: ["NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"],
    #       risk_counts: {
    #         "Risk" => 1
    #       },
    #       pillar_priorities: ["PillarId"],
    #       lenses: ["LensAlias"],
    #       owner: "AwsAccountId",
    #       share_invitation_id: "ShareInvitationId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       discovery_config: {
    #         trusted_advisor_integration_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         workload_resource_definition: ["WORKLOAD_METADATA" # One of: ["WORKLOAD_METADATA", "APP_REGISTRY"]]
    #       },
    #       applications: ["ApplicationArn"],
    #       profiles: [
    #         {
    #           profile_arn: "ProfileArn",
    #           profile_version: "ProfileVersion"
    #         }
    #       ],
    #       prioritized_risk_counts: {
    #         "Risk" => 1
    #       },
    #       jira_configuration: {
    #         issue_management_status: "ENABLED" # One of: ["ENABLED", "DISABLED", "INHERIT"],
    #         issue_management_type: "AUTO" # One of: ["AUTO", "MANUAL"],
    #         jira_project_key: "JiraProjectKey",
    #         status_message: "StatusMessage"
    #       }
    #     }
    #   }
    # @return [Types::GetWorkloadOutput]
    def get_workload(params = {}, options = {})
      request = build_request(:get_workload, params)
      request.send_request(options)
    end

    # <p>Import a new custom lens or update an existing custom lens.</p>
    #          <p>To update an existing custom lens, specify its ARN as the  <code>LensAlias</code>. If
    #             no ARN is specified, a new custom lens is created.</p>
    #          <p>The new or updated lens will have a status of <code>DRAFT</code>. The lens cannot be
    #             applied to workloads or shared with other Amazon Web Services accounts until it's
    #             published with <a>CreateLensVersion</a>.</p>
    #          <p>Lenses are defined in JSON. For more information, see <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html">JSON format specification</a> 
    #             in the <i>Well-Architected Tool User Guide</i>.</p>
    #          <p>A custom lens cannot exceed 500 KB in size.</p>
    #          <note>
    #             <p>
    #                <b>Disclaimer</b>
    #             </p>
    #             <p>Do not include or gather personal identifiable information (PII) of end users or 
    #                 other identifiable individuals in or via your custom lenses. If your custom 
    #                 lens or those shared with you and used in your account do include or collect 
    #                 PII you are responsible for: ensuring that the included PII is processed in accordance 
    #                 with applicable law, providing adequate privacy notices, and obtaining necessary 
    #                 consents for processing such data.</p>
    #          </note>
    # @param [Hash, Types::ImportLensInput] params
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :json_string
    #   <p>The JSON representation of a lens.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to associate to a lens.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     lens_alias: "LensAlias",
    #     json_string: "LensJSON", # required
    #     client_request_token: "ClientRequestToken", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.import_lens(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lens_arn: "LensArn",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "ERROR"]
    #   }
    # @return [Types::ImportLensOutput]
    def import_lens(params = {}, options = {})
      request = build_request(:import_lens, params)
      request.send_request(options)
    end

    # <p>List of answers for a particular workload and lens.</p>
    # @param [Hash, Types::ListAnswersInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    # @option params [Integer] :milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @option params [String] :question_priority
    #   <p>The priority of the question.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     lens_alias: "LensAlias", # required
    #     pillar_id: "PillarId",
    #     milestone_number: 1,
    #     next_token: "NextToken",
    #     max_results: 1,
    #     question_priority: "PRIORITIZED" # One of: ["PRIORITIZED", "NONE"]
    #   }
    #   options = {}
    #   response = client.list_answers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     milestone_number: 1,
    #     lens_alias: "LensAlias",
    #     lens_arn: "LensArn",
    #     answer_summaries: [
    #       {
    #         question_id: "QuestionId",
    #         pillar_id: "PillarId",
    #         question_title: "QuestionTitle",
    #         choices: [
    #           {
    #             choice_id: "ChoiceId",
    #             title: "ChoiceTitle",
    #             description: "ChoiceDescription",
    #             helpful_resource: {
    #               display_text: "ChoiceContentDisplayText",
    #               url: "ChoiceContentUrl"
    #             },
    #             improvement_plan: {
    #               display_text: "ChoiceContentDisplayText",
    #               url: "ChoiceContentUrl"
    #             },
    #             additional_resources: [
    #               {
    #                 type: "HELPFUL_RESOURCE" # One of: ["HELPFUL_RESOURCE", "IMPROVEMENT_PLAN"],
    #                 content: [
    #                   {
    #                     display_text: "ChoiceContentDisplayText",
    #                     url: "ChoiceContentUrl"
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         ],
    #         selected_choices: ["ChoiceId"],
    #         choice_answer_summaries: [
    #           {
    #             choice_id: "ChoiceId",
    #             status: "SELECTED" # One of: ["SELECTED", "NOT_APPLICABLE", "UNSELECTED"],
    #             reason: "OUT_OF_SCOPE" # One of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #           }
    #         ],
    #         is_applicable: false,
    #         risk: "UNANSWERED" # One of: ["UNANSWERED", "HIGH", "MEDIUM", "NONE", "NOT_APPLICABLE"],
    #         reason: "OUT_OF_SCOPE" # One of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"],
    #         question_type: "PRIORITIZED" # One of: ["PRIORITIZED", "NON_PRIORITIZED"],
    #         jira_configuration: {
    #           jira_issue_url: "JiraIssueUrl",
    #           last_synced_time: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAnswersOutput]
    def list_answers(params = {}, options = {})
      request = build_request(:list_answers, params)
      request.send_request(options)
    end

    # <p>List of Trusted Advisor check details by account related to the workload.</p>
    # @param [Hash, Types::ListCheckDetailsInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @option params [String] :lens_arn
    #   <p>Well-Architected Lens ARN.</p>
    # @option params [String] :pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    # @option params [String] :question_id
    #   <p>The ID of the question.</p>
    # @option params [String] :choice_id
    #   <p>The ID of a choice.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     lens_arn: "LensArn", # required
    #     pillar_id: "PillarId", # required
    #     question_id: "QuestionId", # required
    #     choice_id: "ChoiceId", # required
    #   }
    #   options = {}
    #   response = client.list_check_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     check_details: [
    #       {
    #         id: "CheckId",
    #         name: "CheckName",
    #         description: "CheckDescription",
    #         provider: "TRUSTED_ADVISOR" # One of: ["TRUSTED_ADVISOR"],
    #         lens_arn: "LensArn",
    #         pillar_id: "PillarId",
    #         question_id: "QuestionId",
    #         choice_id: "ChoiceId",
    #         status: "OKAY" # One of: ["OKAY", "WARNING", "ERROR", "NOT_AVAILABLE", "FETCH_FAILED"],
    #         account_id: "AwsAccountId",
    #         flagged_resources: 1,
    #         reason: "ASSUME_ROLE_ERROR" # One of: ["ASSUME_ROLE_ERROR", "ACCESS_DENIED", "UNKNOWN_ERROR", "PREMIUM_SUPPORT_REQUIRED"],
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCheckDetailsOutput]
    def list_check_details(params = {}, options = {})
      request = build_request(:list_check_details, params)
      request.send_request(options)
    end

    # <p>List of Trusted Advisor checks summarized for all accounts related to the workload.</p>
    # @param [Hash, Types::ListCheckSummariesInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @option params [String] :lens_arn
    #   <p>Well-Architected Lens ARN.</p>
    # @option params [String] :pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    # @option params [String] :question_id
    #   <p>The ID of the question.</p>
    # @option params [String] :choice_id
    #   <p>The ID of a choice.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     lens_arn: "LensArn", # required
    #     pillar_id: "PillarId", # required
    #     question_id: "QuestionId", # required
    #     choice_id: "ChoiceId", # required
    #   }
    #   options = {}
    #   response = client.list_check_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     check_summaries: [
    #       {
    #         id: "CheckId",
    #         name: "CheckName",
    #         provider: "TRUSTED_ADVISOR" # One of: ["TRUSTED_ADVISOR"],
    #         description: "CheckDescription",
    #         updated_at: Time.now,
    #         lens_arn: "LensArn",
    #         pillar_id: "PillarId",
    #         question_id: "QuestionId",
    #         choice_id: "ChoiceId",
    #         status: "OKAY" # One of: ["OKAY", "WARNING", "ERROR", "NOT_AVAILABLE", "FETCH_FAILED"],
    #         account_summary: {
    #           "CheckStatus" => 1
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCheckSummariesOutput]
    def list_check_summaries(params = {}, options = {})
      request = build_request(:list_check_summaries, params)
      request.send_request(options)
    end

    # <p>List the improvements of a particular lens review.</p>
    # @param [Hash, Types::ListLensReviewImprovementsInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    # @option params [Integer] :milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @option params [String] :question_priority
    #   <p>The priority of the question.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     lens_alias: "LensAlias", # required
    #     pillar_id: "PillarId",
    #     milestone_number: 1,
    #     next_token: "NextToken",
    #     max_results: 1,
    #     question_priority: "PRIORITIZED" # One of: ["PRIORITIZED", "NONE"]
    #   }
    #   options = {}
    #   response = client.list_lens_review_improvements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     milestone_number: 1,
    #     lens_alias: "LensAlias",
    #     lens_arn: "LensArn",
    #     improvement_summaries: [
    #       {
    #         question_id: "QuestionId",
    #         pillar_id: "PillarId",
    #         question_title: "QuestionTitle",
    #         risk: "UNANSWERED" # One of: ["UNANSWERED", "HIGH", "MEDIUM", "NONE", "NOT_APPLICABLE"],
    #         improvement_plan_url: "ImprovementPlanUrl",
    #         improvement_plans: [
    #           {
    #             choice_id: "ChoiceId",
    #             display_text: "DisplayText",
    #             improvement_plan_url: "ImprovementPlanUrl"
    #           }
    #         ],
    #         jira_configuration: {
    #           jira_issue_url: "JiraIssueUrl",
    #           last_synced_time: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLensReviewImprovementsOutput]
    def list_lens_review_improvements(params = {}, options = {})
      request = build_request(:list_lens_review_improvements, params)
      request.send_request(options)
    end

    # <p>List lens reviews for a particular workload.</p>
    # @param [Hash, Types::ListLensReviewsInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [Integer] :milestone_number
    #   <p>The milestone number.</p>
    #            <p>A workload can have a maximum of 100 milestones.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     milestone_number: 1,
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_lens_reviews(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     milestone_number: 1,
    #     lens_review_summaries: [
    #       {
    #         lens_alias: "LensAlias",
    #         lens_arn: "LensArn",
    #         lens_version: "LensVersion",
    #         lens_name: "LensName",
    #         lens_status: "CURRENT" # One of: ["CURRENT", "NOT_CURRENT", "DEPRECATED", "DELETED", "UNSHARED"],
    #         updated_at: Time.now,
    #         risk_counts: {
    #           "Risk" => 1
    #         },
    #         profiles: [
    #           {
    #             profile_arn: "ProfileArn",
    #             profile_version: "ProfileVersion"
    #           }
    #         ],
    #         prioritized_risk_counts: {
    #           "Risk" => 1
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLensReviewsOutput]
    def list_lens_reviews(params = {}, options = {})
      request = build_request(:list_lens_reviews, params)
      request.send_request(options)
    end

    # <p>List the lens shares associated with the lens.</p>
    # @param [Hash, Types::ListLensSharesInput] params
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :shared_with_prefix
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which the lens is shared.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @option params [String] :status
    #   <p>The status of the share request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     lens_alias: "LensAlias", # required
    #     shared_with_prefix: "SharedWithPrefix",
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "ACCEPTED" # One of: ["ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED", "ASSOCIATING", "ASSOCIATED", "FAILED"]
    #   }
    #   options = {}
    #   response = client.list_lens_shares(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lens_share_summaries: [
    #       {
    #         share_id: "ShareId",
    #         shared_with: "SharedWith",
    #         status: "ACCEPTED" # One of: ["ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED", "ASSOCIATING", "ASSOCIATED", "FAILED"],
    #         status_message: "StatusMessage"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLensSharesOutput]
    def list_lens_shares(params = {}, options = {})
      request = build_request(:list_lens_shares, params)
      request.send_request(options)
    end

    # <p>List the available lenses.</p>
    # @param [Hash, Types::ListLensesInput] params
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @option params [String] :lens_type
    #   <p>The type of lenses to be returned.</p>
    # @option params [String] :lens_status
    #   <p>The status of lenses to be returned.</p>
    # @option params [String] :lens_name
    #   <p>The full name of the lens.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     lens_type: "AWS_OFFICIAL" # One of: ["AWS_OFFICIAL", "CUSTOM_SHARED", "CUSTOM_SELF"],
    #     lens_status: "ALL" # One of: ["ALL", "DRAFT", "PUBLISHED"],
    #     lens_name: "LensName"
    #   }
    #   options = {}
    #   response = client.list_lenses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lens_summaries: [
    #       {
    #         lens_arn: "LensArn",
    #         lens_alias: "LensAlias",
    #         lens_name: "LensName",
    #         lens_type: "AWS_OFFICIAL" # One of: ["AWS_OFFICIAL", "CUSTOM_SHARED", "CUSTOM_SELF"],
    #         description: "LensDescription",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         lens_version: "LensVersion",
    #         owner: "AwsAccountId",
    #         lens_status: "CURRENT" # One of: ["CURRENT", "NOT_CURRENT", "DEPRECATED", "DELETED", "UNSHARED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLensesOutput]
    def list_lenses(params = {}, options = {})
      request = build_request(:list_lenses, params)
      request.send_request(options)
    end

    # <p>List all milestones for an existing workload.</p>
    # @param [Hash, Types::ListMilestonesInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_milestones(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     milestone_summaries: [
    #       {
    #         milestone_number: 1,
    #         milestone_name: "MilestoneName",
    #         recorded_at: Time.now,
    #         workload_summary: {
    #           workload_id: "WorkloadId",
    #           workload_arn: "WorkloadArn",
    #           workload_name: "WorkloadName",
    #           owner: "AwsAccountId",
    #           updated_at: Time.now,
    #           lenses: ["LensAlias"],
    #           risk_counts: {
    #             "Risk" => 1
    #           },
    #           improvement_status: "NOT_APPLICABLE" # One of: ["NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"],
    #           profiles: [
    #             {
    #               profile_arn: "ProfileArn",
    #               profile_version: "ProfileVersion"
    #             }
    #           ],
    #           prioritized_risk_counts: {
    #             "Risk" => 1
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMilestonesOutput]
    def list_milestones(params = {}, options = {})
      request = build_request(:list_milestones, params)
      request.send_request(options)
    end

    # <p>List lens notifications.</p>
    # @param [Hash, Types::ListNotificationsInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN for the related resource for the notification.</p>
    #            <note>
    #               <p>Only one of <code>WorkloadID</code> or <code>ResourceARN</code> should be specified.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #     resource_arn: "ResourceArn"
    #   }
    #   options = {}
    #   response = client.list_notifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notification_summaries: [
    #       {
    #         type: "LENS_VERSION_UPGRADED" # One of: ["LENS_VERSION_UPGRADED", "LENS_VERSION_DEPRECATED"],
    #         lens_upgrade_summary: {
    #           workload_id: "WorkloadId",
    #           workload_name: "WorkloadName",
    #           lens_alias: "LensAlias",
    #           lens_arn: "LensArn",
    #           current_lens_version: "LensVersion",
    #           latest_lens_version: "LensVersion",
    #           resource_arn: "ResourceArn",
    #           resource_name: "WorkloadName"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListNotificationsOutput]
    def list_notifications(params = {}, options = {})
      request = build_request(:list_notifications, params)
      request.send_request(options)
    end

    # <p>List profile notifications.</p>
    # @param [Hash, Types::ListProfileNotificationsInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_profile_notifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notification_summaries: [
    #       {
    #         current_profile_version: "ProfileVersion",
    #         latest_profile_version: "ProfileVersion",
    #         type: "PROFILE_ANSWERS_UPDATED" # One of: ["PROFILE_ANSWERS_UPDATED", "PROFILE_DELETED"],
    #         profile_arn: "ProfileArn",
    #         profile_name: "ProfileName",
    #         workload_id: "WorkloadId",
    #         workload_name: "WorkloadName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListProfileNotificationsOutput]
    def list_profile_notifications(params = {}, options = {})
      request = build_request(:list_profile_notifications, params)
      request.send_request(options)
    end

    # <p>List profile shares.</p>
    # @param [Hash, Types::ListProfileSharesInput] params
    # @option params [String] :profile_arn
    #   <p>The profile ARN.</p>
    # @option params [String] :shared_with_prefix
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which the profile is shared.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @option params [String] :status
    #   <p>The status of the share request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_arn: "ProfileArn", # required
    #     shared_with_prefix: "SharedWithPrefix",
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "ACCEPTED" # One of: ["ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED", "ASSOCIATING", "ASSOCIATED", "FAILED"]
    #   }
    #   options = {}
    #   response = client.list_profile_shares(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_share_summaries: [
    #       {
    #         share_id: "ShareId",
    #         shared_with: "SharedWith",
    #         status: "ACCEPTED" # One of: ["ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED", "ASSOCIATING", "ASSOCIATED", "FAILED"],
    #         status_message: "StatusMessage"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListProfileSharesOutput]
    def list_profile_shares(params = {}, options = {})
      request = build_request(:list_profile_shares, params)
      request.send_request(options)
    end

    # <p>List profiles.</p>
    # @param [Hash, Types::ListProfilesInput] params
    # @option params [String] :profile_name_prefix
    #   <p>An optional string added to the beginning of each profile name returned in the
    #               results.</p>
    # @option params [String] :profile_owner_type
    #   <p>Profile owner type.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_name_prefix: "ProfileNamePrefix",
    #     profile_owner_type: "SELF" # One of: ["SELF", "SHARED"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_summaries: [
    #       {
    #         profile_arn: "ProfileArn",
    #         profile_version: "ProfileVersion",
    #         profile_name: "ProfileName",
    #         profile_description: "ProfileDescription",
    #         owner: "AwsAccountId",
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListProfilesOutput]
    def list_profiles(params = {}, options = {})
      request = build_request(:list_profiles, params)
      request.send_request(options)
    end

    # <p>List the answers of a review template.</p>
    # @param [Hash, Types::ListReviewTemplateAnswersInput] params
    # @option params [String] :template_arn
    #   <p>The ARN of the review template.</p>
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #            <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #     lens_alias: "LensAlias", # required
    #     pillar_id: "PillarId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_review_template_answers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_arn: "TemplateArn",
    #     lens_alias: "LensAlias",
    #     answer_summaries: [
    #       {
    #         question_id: "QuestionId",
    #         pillar_id: "PillarId",
    #         question_title: "QuestionTitle",
    #         choices: [
    #           {
    #             choice_id: "ChoiceId",
    #             title: "ChoiceTitle",
    #             description: "ChoiceDescription",
    #             helpful_resource: {
    #               display_text: "ChoiceContentDisplayText",
    #               url: "ChoiceContentUrl"
    #             },
    #             improvement_plan: {
    #               display_text: "ChoiceContentDisplayText",
    #               url: "ChoiceContentUrl"
    #             },
    #             additional_resources: [
    #               {
    #                 type: "HELPFUL_RESOURCE" # One of: ["HELPFUL_RESOURCE", "IMPROVEMENT_PLAN"],
    #                 content: [
    #                   {
    #                     display_text: "ChoiceContentDisplayText",
    #                     url: "ChoiceContentUrl"
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         ],
    #         selected_choices: ["ChoiceId"],
    #         choice_answer_summaries: [
    #           {
    #             choice_id: "ChoiceId",
    #             status: "SELECTED" # One of: ["SELECTED", "NOT_APPLICABLE", "UNSELECTED"],
    #             reason: "OUT_OF_SCOPE" # One of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #           }
    #         ],
    #         is_applicable: false,
    #         answer_status: "UNANSWERED" # One of: ["UNANSWERED", "ANSWERED"],
    #         reason: "OUT_OF_SCOPE" # One of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"],
    #         question_type: "PRIORITIZED" # One of: ["PRIORITIZED", "NON_PRIORITIZED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListReviewTemplateAnswersOutput]
    def list_review_template_answers(params = {}, options = {})
      request = build_request(:list_review_template_answers, params)
      request.send_request(options)
    end

    # <p>List review templates.</p>
    # @param [Hash, Types::ListReviewTemplatesInput] params
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_review_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     review_templates: [
    #       {
    #         description: "TemplateDescription",
    #         lenses: ["LensAlias"],
    #         owner: "AwsAccountId",
    #         updated_at: Time.now,
    #         template_arn: "TemplateArn",
    #         template_name: "TemplateName",
    #         update_status: "CURRENT" # One of: ["CURRENT", "LENS_NOT_CURRENT"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListReviewTemplatesOutput]
    def list_review_templates(params = {}, options = {})
      request = build_request(:list_review_templates, params)
      request.send_request(options)
    end

    # <p>List the share invitations.</p>
    #          <p>
    #             <code>WorkloadNamePrefix</code>, <code>LensNamePrefix</code>,
    #                 <code>ProfileNamePrefix</code>, and <code>TemplateNamePrefix</code> are mutually
    #             exclusive. Use the parameter that matches your <code>ShareResourceType</code>.</p>
    # @param [Hash, Types::ListShareInvitationsInput] params
    # @option params [String] :workload_name_prefix
    #   <p>An optional string added to the beginning of each workload name returned in the
    #               results.</p>
    # @option params [String] :lens_name_prefix
    #   <p>An optional string added to the beginning of each lens name returned in the results.</p>
    # @option params [String] :share_resource_type
    #   <p>The type of share invitations to be returned.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @option params [String] :profile_name_prefix
    #   <p>An optional string added to the beginning of each profile name returned in the
    #               results.</p>
    # @option params [String] :template_name_prefix
    #   <p>An optional string added to the beginning of each review template name returned in the
    #               results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_name_prefix: "WorkloadNamePrefix",
    #     lens_name_prefix: "LensNamePrefix",
    #     share_resource_type: "WORKLOAD" # One of: ["WORKLOAD", "LENS", "PROFILE", "TEMPLATE"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     profile_name_prefix: "ProfileNamePrefix",
    #     template_name_prefix: "TemplateNamePrefix"
    #   }
    #   options = {}
    #   response = client.list_share_invitations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     share_invitation_summaries: [
    #       {
    #         share_invitation_id: "ShareInvitationId",
    #         shared_by: "AwsAccountId",
    #         shared_with: "SharedWith",
    #         permission_type: "READONLY" # One of: ["READONLY", "CONTRIBUTOR"],
    #         share_resource_type: "WORKLOAD" # One of: ["WORKLOAD", "LENS", "PROFILE", "TEMPLATE"],
    #         workload_name: "WorkloadName",
    #         workload_id: "WorkloadId",
    #         lens_name: "LensName",
    #         lens_arn: "LensArn",
    #         profile_name: "ProfileName",
    #         profile_arn: "ProfileArn",
    #         template_name: "TemplateName",
    #         template_arn: "TemplateArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListShareInvitationsOutput]
    def list_share_invitations(params = {}, options = {})
      request = build_request(:list_share_invitations, params)
      request.send_request(options)
    end

    # <p>List the tags for a resource.</p>
    #          <note>
    #             <p>The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a profile ARN, or review template ARN.</p>
    #          </note>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :workload_arn
    #   <p>The ARN for the workload.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_arn: "WorkloadArn", # required
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>List review template shares.</p>
    # @param [Hash, Types::ListTemplateSharesInput] params
    # @option params [String] :template_arn
    #   <p>The review template ARN.</p>
    # @option params [String] :shared_with_prefix
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit
    #               (OU) ID with which the profile is shared.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @option params [String] :status
    #   <p>The status of the share request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #     shared_with_prefix: "SharedWithPrefix",
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "ACCEPTED" # One of: ["ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED", "ASSOCIATING", "ASSOCIATED", "FAILED"]
    #   }
    #   options = {}
    #   response = client.list_template_shares(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_arn: "TemplateArn",
    #     template_share_summaries: [
    #       {
    #         share_id: "ShareId",
    #         shared_with: "SharedWith",
    #         status: "ACCEPTED" # One of: ["ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED", "ASSOCIATING", "ASSOCIATED", "FAILED"],
    #         status_message: "StatusMessage"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTemplateSharesOutput]
    def list_template_shares(params = {}, options = {})
      request = build_request(:list_template_shares, params)
      request.send_request(options)
    end

    # <p>List the workload shares associated with the workload.</p>
    # @param [Hash, Types::ListWorkloadSharesInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :shared_with_prefix
    #   <p>The Amazon Web Services account ID, organization ID, or organizational unit (OU) ID with which the workload is shared.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @option params [String] :status
    #   <p>The status of the share request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     shared_with_prefix: "SharedWithPrefix",
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "ACCEPTED" # One of: ["ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED", "ASSOCIATING", "ASSOCIATED", "FAILED"]
    #   }
    #   options = {}
    #   response = client.list_workload_shares(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     workload_share_summaries: [
    #       {
    #         share_id: "ShareId",
    #         shared_with: "SharedWith",
    #         permission_type: "READONLY" # One of: ["READONLY", "CONTRIBUTOR"],
    #         status: "ACCEPTED" # One of: ["ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED", "ASSOCIATING", "ASSOCIATED", "FAILED"],
    #         status_message: "StatusMessage"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWorkloadSharesOutput]
    def list_workload_shares(params = {}, options = {})
      request = build_request(:list_workload_shares, params)
      request.send_request(options)
    end

    # <p>Paginated list of workloads.</p>
    # @param [Hash, Types::ListWorkloadsInput] params
    # @option params [String] :workload_name_prefix
    #   <p>An optional string added to the beginning of each workload name returned in the
    #               results.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_name_prefix: "WorkloadNamePrefix",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_workloads(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_summaries: [
    #       {
    #         workload_id: "WorkloadId",
    #         workload_arn: "WorkloadArn",
    #         workload_name: "WorkloadName",
    #         owner: "AwsAccountId",
    #         updated_at: Time.now,
    #         lenses: ["LensAlias"],
    #         risk_counts: {
    #           "Risk" => 1
    #         },
    #         improvement_status: "NOT_APPLICABLE" # One of: ["NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"],
    #         profiles: [
    #           {
    #             profile_arn: "ProfileArn",
    #             profile_version: "ProfileVersion"
    #           }
    #         ],
    #         prioritized_risk_counts: {
    #           "Risk" => 1
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWorkloadsOutput]
    def list_workloads(params = {}, options = {})
      request = build_request(:list_workloads, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to the specified resource.</p>
    #          <note>
    #             <p>The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a profile ARN, or review template ARN.</p>
    #          </note>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :workload_arn
    #   <p>The ARN for the workload.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_arn: "WorkloadArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Deletes specified tags from a resource.</p>
    #          <note>
    #             <p>The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a profile ARN, or review template ARN.</p>
    #          </note>
    #          <p>To specify multiple tags, use separate <b>tagKeys</b> parameters, for example:</p>
    #          <p>
    #             <code>DELETE /tags/WorkloadArn?tagKeys=key1&tagKeys=key2</code>
    #          </p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :workload_arn
    #   <p>The ARN for the workload.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys. Existing tags of the resource 
    #               whose keys are members of this list are removed from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_arn: "WorkloadArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Update the answer to a specific question in a workload review.</p>
    # @param [Hash, Types::UpdateAnswerInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :question_id
    #   <p>The ID of the question.</p>
    # @option params [Array<String>] :selected_choices
    #   <p>List of selected choice IDs in a question answer.</p>
    #            <p>The values entered replace the previously selected choices.</p>
    # @option params [Hash<String, Types::ChoiceUpdate>] :choice_updates
    #   <p>A list of choices to update on a question in your workload.  The String key 
    #               corresponds to the choice ID to be updated.</p>
    # @option params [String] :notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    # @option params [Boolean] :is_applicable
    #   <p>Defines whether this question is applicable to a lens review.</p>
    # @option params [String] :reason
    #   <p>The reason why a question is not applicable to your workload.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     lens_alias: "LensAlias", # required
    #     question_id: "QuestionId", # required
    #     selected_choices: ["ChoiceId"],
    #     choice_updates: {
    #       "ChoiceId" => {
    #         status: "SELECTED" # One of: ["SELECTED", "NOT_APPLICABLE", "UNSELECTED"], # required
    #         reason: "OUT_OF_SCOPE" # One of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"],
    #         notes: "ChoiceNotes"
    #       }
    #     },
    #     notes: "Notes",
    #     is_applicable: false,
    #     reason: "OUT_OF_SCOPE" # One of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #   }
    #   options = {}
    #   response = client.update_answer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     lens_alias: "LensAlias",
    #     lens_arn: "LensArn",
    #     answer: {
    #       question_id: "QuestionId",
    #       pillar_id: "PillarId",
    #       question_title: "QuestionTitle",
    #       question_description: "QuestionDescription",
    #       improvement_plan_url: "ImprovementPlanUrl",
    #       helpful_resource_url: "HelpfulResourceUrl",
    #       helpful_resource_display_text: "DisplayText",
    #       choices: [
    #         {
    #           choice_id: "ChoiceId",
    #           title: "ChoiceTitle",
    #           description: "ChoiceDescription",
    #           helpful_resource: {
    #             display_text: "ChoiceContentDisplayText",
    #             url: "ChoiceContentUrl"
    #           },
    #           improvement_plan: {
    #             display_text: "ChoiceContentDisplayText",
    #             url: "ChoiceContentUrl"
    #           },
    #           additional_resources: [
    #             {
    #               type: "HELPFUL_RESOURCE" # One of: ["HELPFUL_RESOURCE", "IMPROVEMENT_PLAN"],
    #               content: [
    #                 {
    #                   display_text: "ChoiceContentDisplayText",
    #                   url: "ChoiceContentUrl"
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       ],
    #       selected_choices: ["ChoiceId"],
    #       choice_answers: [
    #         {
    #           choice_id: "ChoiceId",
    #           status: "SELECTED" # One of: ["SELECTED", "NOT_APPLICABLE", "UNSELECTED"],
    #           reason: "OUT_OF_SCOPE" # One of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"],
    #           notes: "ChoiceNotes"
    #         }
    #       ],
    #       is_applicable: false,
    #       risk: "UNANSWERED" # One of: ["UNANSWERED", "HIGH", "MEDIUM", "NONE", "NOT_APPLICABLE"],
    #       notes: "Notes",
    #       reason: "OUT_OF_SCOPE" # One of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"],
    #       jira_configuration: {
    #         jira_issue_url: "JiraIssueUrl",
    #         last_synced_time: Time.now
    #       }
    #     }
    #   }
    # @return [Types::UpdateAnswerOutput]
    def update_answer(params = {}, options = {})
      request = build_request(:update_answer, params)
      request.send_request(options)
    end

    # <p>Update whether the Amazon Web Services account is opted into organization sharing and discovery integration features.</p>
    # @param [Hash, Types::UpdateGlobalSettingsInput] params
    # @option params [String] :organization_sharing_status
    #   <p>The status of organization sharing settings.</p>
    # @option params [String] :discovery_integration_status
    #   <p>The status of discovery support settings.</p>
    # @option params [Types::AccountJiraConfigurationInput] :jira_configuration
    #   <p>The status of Jira integration settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_sharing_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     discovery_integration_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     jira_configuration: {
    #       issue_management_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       issue_management_type: "AUTO" # One of: ["AUTO", "MANUAL"],
    #       jira_project_key: "JiraProjectKey",
    #       integration_status: "NOT_CONFIGURED" # One of: ["NOT_CONFIGURED"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_global_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_global_settings(params = {}, options = {})
      request = build_request(:update_global_settings, params)
      request.send_request(options)
    end

    # <p>Update integration features.</p>
    # @param [Hash, Types::UpdateIntegrationInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @option params [String] :integrating_service
    #   <p>Which integrated service to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     client_request_token: "ClientRequestToken", # required
    #     integrating_service: "JIRA" # One of: ["JIRA"], # required
    #   }
    #   options = {}
    #   response = client.update_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_integration(params = {}, options = {})
      request = build_request(:update_integration, params)
      request.send_request(options)
    end

    # <p>Update lens review for a particular workload.</p>
    # @param [Hash, Types::UpdateLensReviewInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :lens_notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    # @option params [Hash<String, String>] :pillar_notes
    #   <p>List of pillar notes of a lens review in a workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    # @option params [Types::JiraSelectedQuestionConfiguration] :jira_configuration
    #   <p>Configuration of the Jira integration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     lens_alias: "LensAlias", # required
    #     lens_notes: "Notes",
    #     pillar_notes: {
    #       "PillarId" => "Notes"
    #     },
    #     jira_configuration: {
    #       selected_pillars: [
    #         {
    #           pillar_id: "PillarId",
    #           selected_question_ids: ["SelectedQuestionId"]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_lens_review(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     lens_review: {
    #       lens_alias: "LensAlias",
    #       lens_arn: "LensArn",
    #       lens_version: "LensVersion",
    #       lens_name: "LensName",
    #       lens_status: "CURRENT" # One of: ["CURRENT", "NOT_CURRENT", "DEPRECATED", "DELETED", "UNSHARED"],
    #       pillar_review_summaries: [
    #         {
    #           pillar_id: "PillarId",
    #           pillar_name: "PillarName",
    #           notes: "Notes",
    #           risk_counts: {
    #             "Risk" => 1
    #           },
    #           prioritized_risk_counts: {
    #             "Risk" => 1
    #           }
    #         }
    #       ],
    #       jira_configuration: {
    #         selected_pillars: [
    #           {
    #             pillar_id: "PillarId",
    #             selected_question_ids: ["SelectedQuestionId"]
    #           }
    #         ]
    #       },
    #       updated_at: Time.now,
    #       notes: "Notes",
    #       risk_counts: {
    #         "Risk" => 1
    #       },
    #       next_token: "NextToken",
    #       profiles: [
    #         {
    #           profile_arn: "ProfileArn",
    #           profile_version: "ProfileVersion"
    #         }
    #       ],
    #       prioritized_risk_counts: {
    #         "Risk" => 1
    #       }
    #     }
    #   }
    # @return [Types::UpdateLensReviewOutput]
    def update_lens_review(params = {}, options = {})
      request = build_request(:update_lens_review, params)
      request.send_request(options)
    end

    # <p>Update a profile.</p>
    # @param [Hash, Types::UpdateProfileInput] params
    # @option params [String] :profile_arn
    #   <p>The profile ARN.</p>
    # @option params [String] :profile_description
    #   <p>The profile description.</p>
    # @option params [Array<Types::ProfileQuestionUpdate>] :profile_questions
    #   <p>Profile questions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_arn: "ProfileArn", # required
    #     profile_description: "ProfileDescription",
    #     profile_questions: [
    #       {
    #         question_id: "QuestionId",
    #         selected_choice_ids: ["ChoiceId"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile: {
    #       profile_arn: "ProfileArn",
    #       profile_version: "ProfileVersion",
    #       profile_name: "ProfileName",
    #       profile_description: "ProfileDescription",
    #       profile_questions: [
    #         {
    #           question_id: "QuestionId",
    #           question_title: "QuestionTitle",
    #           question_description: "QuestionDescription",
    #           question_choices: [
    #             {
    #               choice_id: "ChoiceId",
    #               choice_title: "ChoiceTitle",
    #               choice_description: "ChoiceDescription"
    #             }
    #           ],
    #           selected_choice_ids: ["ChoiceId"],
    #           min_selected_choices: 1,
    #           max_selected_choices: 1
    #         }
    #       ],
    #       owner: "AwsAccountId",
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       share_invitation_id: "ShareInvitationId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateProfileOutput]
    def update_profile(params = {}, options = {})
      request = build_request(:update_profile, params)
      request.send_request(options)
    end

    # <p>Update a review template.</p>
    # @param [Hash, Types::UpdateReviewTemplateInput] params
    # @option params [String] :template_arn
    #   <p>The review template ARN.</p>
    # @option params [String] :template_name
    #   <p>The review template name.</p>
    # @option params [String] :description
    #   <p>The review template description.</p>
    # @option params [String] :notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    # @option params [Array<String>] :lenses_to_associate
    #   <p>A list of lens aliases or ARNs to apply to the review template.</p>
    # @option params [Array<String>] :lenses_to_disassociate
    #   <p>A list of lens aliases or ARNs to unapply to the review template. The <code>wellarchitected</code> lens cannot be unapplied.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #     template_name: "TemplateName",
    #     description: "TemplateDescription",
    #     notes: "Notes",
    #     lenses_to_associate: ["LensAlias"],
    #     lenses_to_disassociate: ["LensAlias"]
    #   }
    #   options = {}
    #   response = client.update_review_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     review_template: {
    #       description: "TemplateDescription",
    #       lenses: ["LensAlias"],
    #       notes: "Notes",
    #       question_counts: {
    #         "Question" => 1
    #       },
    #       owner: "AwsAccountId",
    #       updated_at: Time.now,
    #       template_arn: "TemplateArn",
    #       template_name: "TemplateName",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       update_status: "CURRENT" # One of: ["CURRENT", "LENS_NOT_CURRENT"],
    #       share_invitation_id: "ShareInvitationId"
    #     }
    #   }
    # @return [Types::UpdateReviewTemplateOutput]
    def update_review_template(params = {}, options = {})
      request = build_request(:update_review_template, params)
      request.send_request(options)
    end

    # <p>Update a review template answer.</p>
    # @param [Hash, Types::UpdateReviewTemplateAnswerInput] params
    # @option params [String] :template_arn
    #   <p>The review template ARN.</p>
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :question_id
    #   <p>The ID of the question.</p>
    # @option params [Array<String>] :selected_choices
    #   <p>List of selected choice IDs in a question answer.</p>
    #            <p>The values entered replace the previously selected choices.</p>
    # @option params [Hash<String, Types::ChoiceUpdate>] :choice_updates
    #   <p>A list of choices to be updated.</p>
    # @option params [String] :notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    # @option params [Boolean] :is_applicable
    #   <p>Defines whether this question is applicable to a lens review.</p>
    # @option params [String] :reason
    #   <p>The update reason.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #     lens_alias: "LensAlias", # required
    #     question_id: "QuestionId", # required
    #     selected_choices: ["ChoiceId"],
    #     choice_updates: {
    #       "ChoiceId" => {
    #         status: "SELECTED" # One of: ["SELECTED", "NOT_APPLICABLE", "UNSELECTED"], # required
    #         reason: "OUT_OF_SCOPE" # One of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"],
    #         notes: "ChoiceNotes"
    #       }
    #     },
    #     notes: "Notes",
    #     is_applicable: false,
    #     reason: "OUT_OF_SCOPE" # One of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #   }
    #   options = {}
    #   response = client.update_review_template_answer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_arn: "TemplateArn",
    #     lens_alias: "LensAlias",
    #     answer: {
    #       question_id: "QuestionId",
    #       pillar_id: "PillarId",
    #       question_title: "QuestionTitle",
    #       question_description: "QuestionDescription",
    #       improvement_plan_url: "ImprovementPlanUrl",
    #       helpful_resource_url: "HelpfulResourceUrl",
    #       helpful_resource_display_text: "DisplayText",
    #       choices: [
    #         {
    #           choice_id: "ChoiceId",
    #           title: "ChoiceTitle",
    #           description: "ChoiceDescription",
    #           helpful_resource: {
    #             display_text: "ChoiceContentDisplayText",
    #             url: "ChoiceContentUrl"
    #           },
    #           improvement_plan: {
    #             display_text: "ChoiceContentDisplayText",
    #             url: "ChoiceContentUrl"
    #           },
    #           additional_resources: [
    #             {
    #               type: "HELPFUL_RESOURCE" # One of: ["HELPFUL_RESOURCE", "IMPROVEMENT_PLAN"],
    #               content: [
    #                 {
    #                   display_text: "ChoiceContentDisplayText",
    #                   url: "ChoiceContentUrl"
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       ],
    #       selected_choices: ["ChoiceId"],
    #       choice_answers: [
    #         {
    #           choice_id: "ChoiceId",
    #           status: "SELECTED" # One of: ["SELECTED", "NOT_APPLICABLE", "UNSELECTED"],
    #           reason: "OUT_OF_SCOPE" # One of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"],
    #           notes: "ChoiceNotes"
    #         }
    #       ],
    #       is_applicable: false,
    #       answer_status: "UNANSWERED" # One of: ["UNANSWERED", "ANSWERED"],
    #       notes: "Notes",
    #       reason: "OUT_OF_SCOPE" # One of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #     }
    #   }
    # @return [Types::UpdateReviewTemplateAnswerOutput]
    def update_review_template_answer(params = {}, options = {})
      request = build_request(:update_review_template_answer, params)
      request.send_request(options)
    end

    # <p>Update a lens review associated with a review template.</p>
    # @param [Hash, Types::UpdateReviewTemplateLensReviewInput] params
    # @option params [String] :template_arn
    #   <p>The review template ARN.</p>
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :lens_notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    # @option params [Hash<String, String>] :pillar_notes
    #   <p>List of pillar notes of a lens review in a workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #     lens_alias: "LensAlias", # required
    #     lens_notes: "Notes",
    #     pillar_notes: {
    #       "PillarId" => "Notes"
    #     }
    #   }
    #   options = {}
    #   response = client.update_review_template_lens_review(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_arn: "TemplateArn",
    #     lens_review: {
    #       lens_alias: "LensAlias",
    #       lens_arn: "LensArn",
    #       lens_version: "LensVersion",
    #       lens_name: "LensName",
    #       lens_status: "CURRENT" # One of: ["CURRENT", "NOT_CURRENT", "DEPRECATED", "DELETED", "UNSHARED"],
    #       pillar_review_summaries: [
    #         {
    #           pillar_id: "PillarId",
    #           pillar_name: "PillarName",
    #           notes: "Notes",
    #           question_counts: {
    #             "Question" => 1
    #           }
    #         }
    #       ],
    #       updated_at: Time.now,
    #       notes: "Notes",
    #       question_counts: {
    #         "Question" => 1
    #       },
    #       next_token: "NextToken"
    #     }
    #   }
    # @return [Types::UpdateReviewTemplateLensReviewOutput]
    def update_review_template_lens_review(params = {}, options = {})
      request = build_request(:update_review_template_lens_review, params)
      request.send_request(options)
    end

    # <p>Update a workload or custom lens share invitation.</p>
    #          <note>
    #             <p>This API operation can be called independently of any resource. Previous documentation implied that a workload ARN must be specified.</p>
    #          </note>
    # @param [Hash, Types::UpdateShareInvitationInput] params
    # @option params [String] :share_invitation_id
    #   <p>The ID assigned to the share invitation.</p>
    # @option params [String] :share_invitation_action
    #   <p>Share invitation action taken by contributor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     share_invitation_id: "ShareInvitationId", # required
    #     share_invitation_action: "ACCEPT" # One of: ["ACCEPT", "REJECT"], # required
    #   }
    #   options = {}
    #   response = client.update_share_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     share_invitation: {
    #       share_invitation_id: "ShareInvitationId",
    #       share_resource_type: "WORKLOAD" # One of: ["WORKLOAD", "LENS", "PROFILE", "TEMPLATE"],
    #       workload_id: "WorkloadId",
    #       lens_alias: "LensAlias",
    #       lens_arn: "LensArn",
    #       profile_arn: "ProfileArn",
    #       template_arn: "TemplateArn"
    #     }
    #   }
    # @return [Types::UpdateShareInvitationOutput]
    def update_share_invitation(params = {}, options = {})
      request = build_request(:update_share_invitation, params)
      request.send_request(options)
    end

    # <p>Update an existing workload.</p>
    # @param [Hash, Types::UpdateWorkloadInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :workload_name
    #   <p>The name of the workload.</p>
    #            <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    # @option params [String] :description
    #   <p>The description for the workload.</p>
    # @option params [String] :environment
    #   <p>The environment for the workload.</p>
    # @option params [Array<String>] :account_ids
    #   <p>The list of Amazon Web Services account IDs associated with the workload.</p>
    # @option params [Array<String>] :aws_regions
    #   <p>The list of Amazon Web Services Regions associated with the workload, for example,
    #                   <code>us-east-2</code>, or <code>ca-central-1</code>.</p>
    # @option params [Array<String>] :non_aws_regions
    #   <p> The list of non-Amazon Web Services Regions associated with the workload.</p>
    # @option params [Array<String>] :pillar_priorities
    #   <p>The priorities of the pillars, which are used to order items in the improvement plan.
    #               Each pillar is represented by its <a>PillarReviewSummary$PillarId</a>.</p>
    # @option params [String] :architectural_design
    #   <p>The URL of the architectural design for the workload.</p>
    # @option params [String] :review_owner
    #   <p>The review owner of the workload. The name, email address, or identifier for the
    #               primary group or individual that owns the workload review process.</p>
    # @option params [Boolean] :is_review_owner_update_acknowledged
    #   <p>Flag indicating whether the workload owner has acknowledged that the <i>Review
    #                   owner</i> field is required.</p>
    #            <p>If a <b>Review owner</b> is not added to the workload within
    #               60 days of acknowledgement, access to the workload is restricted until an owner is
    #               added.</p>
    # @option params [String] :industry_type
    #   <p>The industry type for the workload.</p>
    #            <p>If specified, must be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Agriculture</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Automobile</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Defense</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Design and Engineering</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Digital Advertising</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Education</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environmental Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Financial Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Gaming</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>General Public Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Healthcare</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Hospitality</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InfoTech</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Justice and Public Safety</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Life Sciences</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Manufacturing</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Media & Entertainment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Mining & Resources</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Oil & Gas</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Power & Utilities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Professional Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Real Estate & Construction</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Retail & Wholesale</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Social Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Telecommunications</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Travel, Transportation & Logistics</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Other</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :industry
    #   <p>The industry for the workload.</p>
    # @option params [String] :notes
    #   <p>The notes associated with the workload.</p>
    #            <p>For a review template, these are the notes that will be associated with the workload when the template is applied.</p>
    # @option params [String] :improvement_status
    #   <p>The improvement status for a workload.</p>
    # @option params [Types::WorkloadDiscoveryConfig] :discovery_config
    #   <p>Well-Architected discovery configuration settings to associate to the workload.</p>
    # @option params [Array<String>] :applications
    #   <p>List of AppRegistry application ARNs to associate to the workload.</p>
    # @option params [Types::WorkloadJiraConfigurationInput] :jira_configuration
    #   <p>Configuration of the Jira integration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     workload_name: "WorkloadName",
    #     description: "WorkloadDescription",
    #     environment: "PRODUCTION" # One of: ["PRODUCTION", "PREPRODUCTION"],
    #     account_ids: ["AwsAccountId"],
    #     aws_regions: ["AwsRegion"],
    #     non_aws_regions: ["WorkloadNonAwsRegion"],
    #     pillar_priorities: ["PillarId"],
    #     architectural_design: "WorkloadArchitecturalDesign",
    #     review_owner: "WorkloadReviewOwner",
    #     is_review_owner_update_acknowledged: false,
    #     industry_type: "WorkloadIndustryType",
    #     industry: "WorkloadIndustry",
    #     notes: "Notes",
    #     improvement_status: "NOT_APPLICABLE" # One of: ["NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"],
    #     discovery_config: {
    #       trusted_advisor_integration_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       workload_resource_definition: ["WORKLOAD_METADATA" # One of: ["WORKLOAD_METADATA", "APP_REGISTRY"]]
    #     },
    #     applications: ["ApplicationArn"],
    #     jira_configuration: {
    #       issue_management_status: "ENABLED" # One of: ["ENABLED", "DISABLED", "INHERIT"],
    #       issue_management_type: "AUTO" # One of: ["AUTO", "MANUAL"],
    #       jira_project_key: "JiraProjectKey"
    #     }
    #   }
    #   options = {}
    #   response = client.update_workload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload: {
    #       workload_id: "WorkloadId",
    #       workload_arn: "WorkloadArn",
    #       workload_name: "WorkloadName",
    #       description: "WorkloadDescription",
    #       environment: "PRODUCTION" # One of: ["PRODUCTION", "PREPRODUCTION"],
    #       updated_at: Time.now,
    #       account_ids: ["AwsAccountId"],
    #       aws_regions: ["AwsRegion"],
    #       non_aws_regions: ["WorkloadNonAwsRegion"],
    #       architectural_design: "WorkloadArchitecturalDesign",
    #       review_owner: "WorkloadReviewOwner",
    #       review_restriction_date: Time.now,
    #       is_review_owner_update_acknowledged: false,
    #       industry_type: "WorkloadIndustryType",
    #       industry: "WorkloadIndustry",
    #       notes: "Notes",
    #       improvement_status: "NOT_APPLICABLE" # One of: ["NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"],
    #       risk_counts: {
    #         "Risk" => 1
    #       },
    #       pillar_priorities: ["PillarId"],
    #       lenses: ["LensAlias"],
    #       owner: "AwsAccountId",
    #       share_invitation_id: "ShareInvitationId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       discovery_config: {
    #         trusted_advisor_integration_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         workload_resource_definition: ["WORKLOAD_METADATA" # One of: ["WORKLOAD_METADATA", "APP_REGISTRY"]]
    #       },
    #       applications: ["ApplicationArn"],
    #       profiles: [
    #         {
    #           profile_arn: "ProfileArn",
    #           profile_version: "ProfileVersion"
    #         }
    #       ],
    #       prioritized_risk_counts: {
    #         "Risk" => 1
    #       },
    #       jira_configuration: {
    #         issue_management_status: "ENABLED" # One of: ["ENABLED", "DISABLED", "INHERIT"],
    #         issue_management_type: "AUTO" # One of: ["AUTO", "MANUAL"],
    #         jira_project_key: "JiraProjectKey",
    #         status_message: "StatusMessage"
    #       }
    #     }
    #   }
    # @return [Types::UpdateWorkloadOutput]
    def update_workload(params = {}, options = {})
      request = build_request(:update_workload, params)
      request.send_request(options)
    end

    # <p>Update a workload share.</p>
    # @param [Hash, Types::UpdateWorkloadShareInput] params
    # @option params [String] :share_id
    #   <p>The ID associated with the share.</p>
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :permission_type
    #   <p>Permission granted on a share request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     share_id: "ShareId", # required
    #     workload_id: "WorkloadId", # required
    #     permission_type: "READONLY" # One of: ["READONLY", "CONTRIBUTOR"], # required
    #   }
    #   options = {}
    #   response = client.update_workload_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     workload_share: {
    #       share_id: "ShareId",
    #       shared_by: "AwsAccountId",
    #       shared_with: "SharedWith",
    #       permission_type: "READONLY" # One of: ["READONLY", "CONTRIBUTOR"],
    #       status: "ACCEPTED" # One of: ["ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED", "ASSOCIATING", "ASSOCIATED", "FAILED"],
    #       workload_name: "WorkloadName",
    #       workload_id: "WorkloadId"
    #     }
    #   }
    # @return [Types::UpdateWorkloadShareOutput]
    def update_workload_share(params = {}, options = {})
      request = build_request(:update_workload_share, params)
      request.send_request(options)
    end

    # <p>Upgrade lens review for a particular workload.</p>
    # @param [Hash, Types::UpgradeLensReviewInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :milestone_name
    #   <p>The name of the milestone in a workload.</p>
    #            <p>Milestone names must be unique within a workload.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     lens_alias: "LensAlias", # required
    #     milestone_name: "MilestoneName", # required
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.upgrade_lens_review(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def upgrade_lens_review(params = {}, options = {})
      request = build_request(:upgrade_lens_review, params)
      request.send_request(options)
    end

    # <p>Upgrade a profile.</p>
    # @param [Hash, Types::UpgradeProfileVersionInput] params
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    # @option params [String] :profile_arn
    #   <p>The profile ARN.</p>
    # @option params [String] :milestone_name
    #   <p>The name of the milestone in a workload.</p>
    #            <p>Milestone names must be unique within a workload.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_id: "WorkloadId", # required
    #     profile_arn: "ProfileArn", # required
    #     milestone_name: "MilestoneName",
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.upgrade_profile_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def upgrade_profile_version(params = {}, options = {})
      request = build_request(:upgrade_profile_version, params)
      request.send_request(options)
    end

    # <p>Upgrade the lens review of a review template.</p>
    # @param [Hash, Types::UpgradeReviewTemplateLensReviewInput] params
    # @option params [String] :template_arn
    #   <p>The ARN of the review template.</p>
    # @option params [String] :lens_alias
    #   <p>The alias of the lens.</p>
    #            <p>For Amazon Web Services official lenses, this is either the lens alias, such as
    #                   <code>serverless</code>, or the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-east-1::lens/serverless</code>. Note that some
    #               operations (such as ExportLens and CreateLensShare) are not permitted on Amazon Web Services official lenses.</p>
    #            <p>For custom lenses, this is the lens ARN, such as
    #                   <code>arn:aws:wellarchitected:us-west-2:123456789012:lens/0123456789abcdef01234567890abcdef</code>. </p>
    #            <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #            <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after the original request has completed
    #               successfully, the result of the original request is returned.</p>
    #            <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #     lens_alias: "LensAlias", # required
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.upgrade_review_template_lens_review(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def upgrade_review_template_lens_review(params = {}, options = {})
      request = build_request(:upgrade_review_template_lens_review, params)
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
      context[:gem_name] = 'aws-sdk-wellarchitected'
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
