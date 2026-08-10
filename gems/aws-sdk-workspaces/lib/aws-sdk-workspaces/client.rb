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
require 'smithy-client/plugins/protocol'
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
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:workspaces)

module Aws::WorkSpaces
  # An API client for Aws::WorkSpaces.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::WorkspacesService
    @identifier = :workspaces

    add_plugin(::Aws::WorkSpaces::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::Protocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::WorkSpaces::EndpointProvider)
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
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
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

    # <p>Accepts the account link invitation.</p>
    #          <important>
    #             <p>There's currently no unlinking capability after you accept the account linking invitation.</p>
    #          </important>
    # @param [Hash, Types::AcceptAccountLinkInvitationRequest] params
    # @option params [String] :link_id
    #   <p>The identifier of the account link.</p>
    # @option params [String] :client_token
    #   <p>A string of up to 64 ASCII characters that Amazon WorkSpaces uses to ensure idempotent creation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     link_id: "LinkId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.accept_account_link_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_link: {
    #       account_link_id: "LinkId",
    #       account_link_status: "LINKED" # One of: ["LINKED", "LINKING_FAILED", "LINK_NOT_FOUND", "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT", "REJECTED"],
    #       source_account_id: "AwsAccount",
    #       target_account_id: "AwsAccount"
    #     }
    #   }
    # @return [Types::AcceptAccountLinkInvitationResult]
    def accept_account_link_invitation(params = {}, options = {})
      request = build_request(:accept_account_link_invitation, params)
      request.send_request(options)
    end

    # <p>Associates the specified connection alias with the specified directory to enable
    #          cross-Region redirection. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    #          <note>
    #             <p>Before performing this operation, call <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html">
    #                DescribeConnectionAliases</a> to make sure that the current state of the
    #             connection alias is <code>CREATED</code>.</p>
    #          </note>
    # @param [Hash, Types::AssociateConnectionAliasRequest] params
    # @option params [String] :alias_id
    #   <p>The identifier of the connection alias.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the directory to associate the connection alias with.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias_id: "ConnectionAliasId", # required
    #     resource_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.associate_connection_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_identifier: "ConnectionIdentifier"
    #   }
    # @return [Types::AssociateConnectionAliasResult]
    def associate_connection_alias(params = {}, options = {})
      request = build_request(:associate_connection_alias, params)
      request.send_request(options)
    end

    # <p>Associates the specified IP access control group with the specified directory.</p>
    # @param [Hash, Types::AssociateIpGroupsRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    # @option params [Array<String>] :group_ids
    #   <p>The identifiers of one or more IP access control groups.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     group_ids: ["IpGroupId"], # required
    #   }
    #   options = {}
    #   response = client.associate_ip_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateIpGroupsResult]
    def associate_ip_groups(params = {}, options = {})
      request = build_request(:associate_ip_groups, params)
      request.send_request(options)
    end

    # <p>Associates the specified application to the specified WorkSpace.</p>
    # @param [Hash, Types::AssociateWorkspaceApplicationRequest] params
    # @option params [String] :workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    # @option params [String] :application_id
    #   <p>The identifier of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     application_id: "WorkSpaceApplicationId", # required
    #   }
    #   options = {}
    #   response = client.associate_workspace_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association: {
    #       associated_resource_id: "NonEmptyString",
    #       associated_resource_type: "APPLICATION" # One of: ["APPLICATION"],
    #       created: Time.now,
    #       last_updated_time: Time.now,
    #       state: "PENDING_INSTALL" # One of: ["PENDING_INSTALL", "PENDING_INSTALL_DEPLOYMENT", "PENDING_UNINSTALL", "PENDING_UNINSTALL_DEPLOYMENT", "INSTALLING", "UNINSTALLING", "ERROR", "COMPLETED", "REMOVED"],
    #       state_reason: {
    #         error_code: "ValidationError.InsufficientDiskSpace" # One of: ["ValidationError.InsufficientDiskSpace", "ValidationError.InsufficientMemory", "ValidationError.UnsupportedOperatingSystem", "DeploymentError.InternalServerError", "DeploymentError.WorkspaceUnreachable"],
    #         error_message: "String2048"
    #       },
    #       workspace_id: "WorkspaceId"
    #     }
    #   }
    # @return [Types::AssociateWorkspaceApplicationResult]
    def associate_workspace_application(params = {}, options = {})
      request = build_request(:associate_workspace_application, params)
      request.send_request(options)
    end

    # <p>Adds one or more rules to the specified IP access control group.</p>
    #          <p>This action gives users permission to access their WorkSpaces from the CIDR address
    #          ranges specified in the rules.</p>
    # @param [Hash, Types::AuthorizeIpRulesRequest] params
    # @option params [String] :group_id
    #   <p>The identifier of the group.</p>
    # @option params [Array<Types::IpRuleItem>] :user_rules
    #   <p>The rules to add to the group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_id: "IpGroupId", # required
    #     user_rules: [ # required
    #       {
    #         ip_rule: "IpRule",
    #         rule_desc: "IpRuleDesc"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.authorize_ip_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AuthorizeIpRulesResult]
    def authorize_ip_rules(params = {}, options = {})
      request = build_request(:authorize_ip_rules, params)
      request.send_request(options)
    end

    # <p>Copies the specified image from the specified Region to the current Region. For more
    #          information about copying images, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/copy-custom-image.html"> Copy a Custom WorkSpaces
    #             Image</a>.</p>
    #          <p>In the China (Ningxia) Region, you can copy images only within the same Region.</p>
    #          <p>In Amazon Web Services GovCloud (US), to copy images to and from other Regions, contact Amazon Web ServicesSupport.</p>
    #          <important>
    #             <p>Before copying a shared image, be sure to verify that it has been shared from the
    #             correct Amazon Web Services account. To determine if an image has been shared and to see
    #             the ID of the Amazon Web Services account that owns an image, use the <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html">DescribeWorkSpaceImages</a> and <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImagePermissions.html">DescribeWorkspaceImagePermissions</a> API operations. </p>
    #          </important>
    # @param [Hash, Types::CopyWorkspaceImageRequest] params
    # @option params [String] :name
    #   <p>The name of the image.</p>
    # @option params [String] :description
    #   <p>A description of the image.</p>
    # @option params [String] :source_image_id
    #   <p>The identifier of the source image.</p>
    # @option params [String] :source_region
    #   <p>The identifier of the source Region.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags for the image.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "WorkspaceImageName", # required
    #     description: "WorkspaceImageDescription",
    #     source_image_id: "WorkspaceImageId", # required
    #     source_region: "Region", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.copy_workspace_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_id: "WorkspaceImageId"
    #   }
    # @return [Types::CopyWorkspaceImageResult]
    def copy_workspace_image(params = {}, options = {})
      request = build_request(:copy_workspace_image, params)
      request.send_request(options)
    end

    # <p>Creates the account link invitation.</p>
    # @param [Hash, Types::CreateAccountLinkInvitationRequest] params
    # @option params [String] :target_account_id
    #   <p>The identifier of the target account.</p>
    # @option params [String] :client_token
    #   <p>A string of up to 64 ASCII characters that Amazon WorkSpaces uses to ensure idempotent creation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_account_id: "AwsAccount", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_account_link_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_link: {
    #       account_link_id: "LinkId",
    #       account_link_status: "LINKED" # One of: ["LINKED", "LINKING_FAILED", "LINK_NOT_FOUND", "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT", "REJECTED"],
    #       source_account_id: "AwsAccount",
    #       target_account_id: "AwsAccount"
    #     }
    #   }
    # @return [Types::CreateAccountLinkInvitationResult]
    def create_account_link_invitation(params = {}, options = {})
      request = build_request(:create_account_link_invitation, params)
      request.send_request(options)
    end

    # <p>Creates a client-add-in for Amazon Connect within a directory. You can create only
    #          one Amazon Connect client add-in within a directory.</p>
    #          <p>This client add-in allows WorkSpaces users to seamlessly connect to Amazon Connect.</p>
    # @param [Hash, Types::CreateConnectClientAddInRequest] params
    # @option params [String] :resource_id
    #   <p>The directory identifier for which to configure the client add-in.</p>
    # @option params [String] :name
    #   <p>The name of the client add-in.</p>
    # @option params [String] :url
    #   <p>The endpoint URL of the Amazon Connect client add-in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "DirectoryId", # required
    #     name: "AddInName", # required
    #     url: "AddInUrl", # required
    #   }
    #   options = {}
    #   response = client.create_connect_client_add_in(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     add_in_id: "AmazonUuid"
    #   }
    # @return [Types::CreateConnectClientAddInResult]
    def create_connect_client_add_in(params = {}, options = {})
      request = build_request(:create_connect_client_add_in, params)
      request.send_request(options)
    end

    # <p>Creates the specified connection alias for use with cross-Region redirection. For more
    #          information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    # @param [Hash, Types::CreateConnectionAliasRequest] params
    # @option params [String] :connection_string
    #   <p>A connection string in the form of a fully qualified domain name (FQDN), such as
    #               <code>www.example.com</code>.</p>
    #            <important>
    #               <p>After you create a connection string, it is always associated to your Amazon Web Services account. You cannot recreate the same connection string with a different
    #               account, even if you delete all instances of it from the original account. The
    #               connection string is globally reserved for your account.</p>
    #            </important>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to associate with the connection alias.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_string: "ConnectionString", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_connection_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alias_id: "ConnectionAliasId"
    #   }
    # @return [Types::CreateConnectionAliasResult]
    def create_connection_alias(params = {}, options = {})
      request = build_request(:create_connection_alias, params)
      request.send_request(options)
    end

    # <p>Creates an IP access control group.</p>
    #          <p>An IP access control group provides you with the ability to control the IP addresses
    #          from which users are allowed to access their WorkSpaces. To specify the CIDR address
    #          ranges, add rules to your IP access control group and then associate the group with your
    #          directory. You can add rules when you create the group or at any time using <a>AuthorizeIpRules</a>.</p>
    #          <p>There is a default IP access control group associated with your directory. If you don't
    #          associate an IP access control group with your directory, the default group is used. The
    #          default group includes a default rule that allows users to access their WorkSpaces from
    #          anywhere. You cannot modify the default IP access control group for your directory.</p>
    # @param [Hash, Types::CreateIpGroupRequest] params
    # @option params [String] :group_name
    #   <p>The name of the group.</p>
    # @option params [String] :group_desc
    #   <p>The description of the group.</p>
    # @option params [Array<Types::IpRuleItem>] :user_rules
    #   <p>The rules to add to the group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "IpGroupName", # required
    #     group_desc: "IpGroupDesc",
    #     user_rules: [
    #       {
    #         ip_rule: "IpRule",
    #         rule_desc: "IpRuleDesc"
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_ip_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_id: "IpGroupId"
    #   }
    # @return [Types::CreateIpGroupResult]
    def create_ip_group(params = {}, options = {})
      request = build_request(:create_ip_group, params)
      request.send_request(options)
    end

    # <p>Creates a standby WorkSpace in a secondary Region.</p>
    # @param [Hash, Types::CreateStandbyWorkspacesRequest] params
    # @option params [String] :primary_region
    #   <p>The Region of the primary WorkSpace.</p>
    # @option params [Array<Types::StandbyWorkspace>] :standby_workspaces
    #   <p>Information about the standby WorkSpace to be created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     primary_region: "Region", # required
    #     standby_workspaces: [ # required
    #       {
    #         primary_workspace_id: "WorkspaceId", # required
    #         volume_encryption_key: "VolumeEncryptionKey",
    #         directory_id: "DirectoryId", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ],
    #         data_replication: "NO_REPLICATION" # One of: ["NO_REPLICATION", "PRIMARY_AS_SOURCE"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_standby_workspaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_standby_requests: [
    #       {
    #         standby_workspace_request: {
    #           primary_workspace_id: "WorkspaceId", # required
    #           volume_encryption_key: "VolumeEncryptionKey",
    #           directory_id: "DirectoryId", # required
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue"
    #             }
    #           ],
    #           data_replication: "NO_REPLICATION" # One of: ["NO_REPLICATION", "PRIMARY_AS_SOURCE"]
    #         },
    #         error_code: "WorkspaceErrorCode",
    #         error_message: "Description"
    #       }
    #     ],
    #     pending_standby_requests: [
    #       {
    #         user_name: "UserName",
    #         directory_id: "DirectoryId",
    #         state: "PENDING" # One of: ["PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "RESTORING", "MAINTENANCE", "ADMIN_MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "UPDATING", "STOPPING", "STOPPED", "ERROR"],
    #         workspace_id: "WorkspaceId"
    #       }
    #     ]
    #   }
    # @return [Types::CreateStandbyWorkspacesResult]
    def create_standby_workspaces(params = {}, options = {})
      request = build_request(:create_standby_workspaces, params)
      request.send_request(options)
    end

    # <p>Creates the specified tags for the specified WorkSpaces resource.</p>
    # @param [Hash, Types::CreateTagsRequest] params
    # @option params [String] :resource_id
    #   <p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,
    #            registered directories, images, custom bundles, IP access control groups, and connection
    #            aliases.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "NonEmptyString", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateTagsResult]
    def create_tags(params = {}, options = {})
      request = build_request(:create_tags, params)
      request.send_request(options)
    end

    # <p>Creates a new updated WorkSpace image based on the specified source image. The new
    #          updated WorkSpace image has the latest drivers and other updates required by the 
    #          Amazon WorkSpaces components.</p>
    #          <p>To determine which WorkSpace images need to be updated with the latest Amazon WorkSpaces
    #          requirements, use <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html">
    #             DescribeWorkspaceImages</a>.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>Only Windows 10, Windows Server 2016, and Windows Server 2019 WorkSpace images
    #                   can be programmatically updated at this time.</p>
    #                </li>
    #                <li>
    #                   <p>Microsoft Windows updates and other application updates are not included in the
    #                   update process.</p>
    #                </li>
    #                <li>
    #                   <p>The source WorkSpace image is not deleted. You can delete the source image
    #                   after you've verified your new updated image and created a new bundle. </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CreateUpdatedWorkspaceImageRequest] params
    # @option params [String] :name
    #   <p>The name of the new updated WorkSpace image.</p>
    # @option params [String] :description
    #   <p>A description of whether updates for the WorkSpace image are available.</p>
    # @option params [String] :source_image_id
    #   <p>The identifier of the source WorkSpace image.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags that you want to add to the new updated WorkSpace image.</p>
    #            <note>
    #               <p>To add tags at the same time when you're creating the updated image, you must create
    #               an IAM policy that grants your IAM user permissions to use
    #                  <code>workspaces:CreateTags</code>. </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "WorkspaceImageName", # required
    #     description: "WorkspaceImageDescription", # required
    #     source_image_id: "WorkspaceImageId", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_updated_workspace_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_id: "WorkspaceImageId"
    #   }
    # @return [Types::CreateUpdatedWorkspaceImageResult]
    def create_updated_workspace_image(params = {}, options = {})
      request = build_request(:create_updated_workspace_image, params)
      request.send_request(options)
    end

    # <p>Creates the specified WorkSpace bundle. For more information about creating WorkSpace bundles, see 
    #          <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/create-custom-bundle.html">
    #             Create a Custom WorkSpaces Image and Bundle</a>.</p>
    # @param [Hash, Types::CreateWorkspaceBundleRequest] params
    # @option params [String] :bundle_name
    #   <p>The name of the bundle.</p>
    # @option params [String] :bundle_description
    #   <p>The description of the bundle.</p>
    # @option params [String] :image_id
    #   <p>The identifier of the image that is used to create the bundle.</p>
    # @option params [Types::ComputeType] :compute_type
    #   <p>Describes the compute type of the bundle.</p>
    # @option params [Types::UserStorage] :user_storage
    #   <p>Describes the user volume for a WorkSpace bundle.</p>
    # @option params [Types::RootStorage] :root_storage
    #   <p>Describes the root volume for a WorkSpace bundle.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags associated with the bundle.</p>
    #            <note>
    #               <p>To add tags at the same time when you're creating the bundle, you must create an IAM policy that 
    #               grants your IAM user permissions to use <code>workspaces:CreateTags</code>. </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     bundle_name: "WorkspaceBundleName", # required
    #     bundle_description: "WorkspaceBundleDescription", # required
    #     image_id: "WorkspaceImageId", # required
    #     compute_type: { # required
    #       name: "VALUE" # One of: ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GENERALPURPOSE_4XLARGE", "GENERALPURPOSE_8XLARGE", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"]
    #     },
    #     user_storage: { # required
    #       capacity: "NonEmptyString", # required
    #     },
    #     root_storage: {
    #       capacity: "NonEmptyString", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_workspace_bundle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace_bundle: {
    #       bundle_id: "BundleId",
    #       name: "NonEmptyString",
    #       owner: "BundleOwner",
    #       description: "Description",
    #       image_id: "WorkspaceImageId",
    #       root_storage: {
    #         capacity: "NonEmptyString", # required
    #       },
    #       user_storage: {
    #         capacity: "NonEmptyString", # required
    #       },
    #       compute_type: {
    #         name: "VALUE" # One of: ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GENERALPURPOSE_4XLARGE", "GENERALPURPOSE_8XLARGE", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"]
    #       },
    #       last_updated_time: Time.now,
    #       creation_time: Time.now,
    #       state: "AVAILABLE" # One of: ["AVAILABLE", "PENDING", "ERROR"],
    #       bundle_type: "REGULAR" # One of: ["REGULAR", "STANDBY"]
    #     }
    #   }
    # @return [Types::CreateWorkspaceBundleResult]
    def create_workspace_bundle(params = {}, options = {})
      request = build_request(:create_workspace_bundle, params)
      request.send_request(options)
    end

    # <p>Creates a new WorkSpace image from an existing WorkSpace.</p>
    # @param [Hash, Types::CreateWorkspaceImageRequest] params
    # @option params [String] :name
    #   <p>The name of the new WorkSpace image.</p>
    # @option params [String] :description
    #   <p>The description of the new WorkSpace image.</p>
    # @option params [String] :workspace_id
    #   <p>The identifier of the source WorkSpace</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags that you want to add to the new WorkSpace image. 
    #            To add tags when you're creating the image, you must create an IAM policy that grants 
    #            your IAM user permission to use <code>workspaces:CreateTags</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "WorkspaceImageName", # required
    #     description: "WorkspaceImageDescription", # required
    #     workspace_id: "WorkspaceId", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_workspace_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_id: "WorkspaceImageId",
    #     name: "WorkspaceImageName",
    #     description: "WorkspaceImageDescription",
    #     operating_system: {
    #       type: "WINDOWS" # One of: ["WINDOWS", "LINUX"]
    #     },
    #     state: "AVAILABLE" # One of: ["AVAILABLE", "PENDING", "ERROR"],
    #     required_tenancy: "DEFAULT" # One of: ["DEFAULT", "DEDICATED"],
    #     created: Time.now,
    #     owner_account_id: "AwsAccount"
    #   }
    # @return [Types::CreateWorkspaceImageResult]
    def create_workspace_image(params = {}, options = {})
      request = build_request(:create_workspace_image, params)
      request.send_request(options)
    end

    # <p>Creates one or more WorkSpaces.</p>
    #          <p>This operation is asynchronous and returns before the WorkSpaces are created.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>The <code>MANUAL</code> running mode value is only supported by Amazon WorkSpaces
    #                Core. Contact your account team to be allow-listed to use this value. For more
    #                information, see <a href="http://aws.amazon.com/workspaces/core/">Amazon WorkSpaces
    #                   Core</a>.</p>
    #                </li>
    #                <li>
    #                   <p>You don't need to specify the <code>PCOIP</code> protocol for Linux bundles
    #                   because <code>DCV</code> (formerly WSP) is the default protocol for those bundles.</p>
    #                </li>
    #                <li>
    #                   <p>User-decoupled WorkSpaces are only supported by Amazon WorkSpaces
    #                Core.</p>
    #                </li>
    #                <li>
    #                   <p>Review your running mode to ensure you are using one that is optimal for your needs and budget.
    #                   For more information on switching running modes, see 
    #                   <a href="http://aws.amazon.com/workspaces-family/workspaces/faqs/#:~:text=Can%20I%20switch%20between%20hourly%20and%20monthly%20billing%20on%20WorkSpaces%20Personal%3F">
    #                      Can I switch between hourly and monthly billing?</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CreateWorkspacesRequest] params
    # @option params [Array<Types::WorkspaceRequest>] :workspaces
    #   <p>The WorkSpaces to create. You can specify up to 25 WorkSpaces.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspaces: [ # required
    #       {
    #         directory_id: "DirectoryId", # required
    #         user_name: "UserName", # required
    #         bundle_id: "BundleId", # required
    #         volume_encryption_key: "VolumeEncryptionKey",
    #         user_volume_encryption_enabled: false,
    #         root_volume_encryption_enabled: false,
    #         workspace_properties: {
    #           running_mode: "AUTO_STOP" # One of: ["AUTO_STOP", "ALWAYS_ON", "MANUAL"],
    #           running_mode_auto_stop_timeout_in_minutes: 1,
    #           root_volume_size_gib: 1,
    #           user_volume_size_gib: 1,
    #           compute_type_name: "VALUE" # One of: ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GENERALPURPOSE_4XLARGE", "GENERALPURPOSE_8XLARGE", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"],
    #           protocols: ["PCOIP" # One of: ["PCOIP", "WSP"]],
    #           operating_system_name: "AMAZON_LINUX_2" # One of: ["AMAZON_LINUX_2", "UBUNTU_18_04", "UBUNTU_20_04", "UBUNTU_22_04", "UNKNOWN", "WINDOWS_10", "WINDOWS_11", "WINDOWS_7", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "RHEL_8", "ROCKY_8"],
    #           global_accelerator: {
    #             mode: "ENABLED_AUTO" # One of: ["ENABLED_AUTO", "DISABLED", "INHERITED"], # required
    #             preferred_protocol: "TCP" # One of: ["TCP", "NONE", "INHERITED"]
    #           }
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ],
    #         workspace_name: "WorkspaceName"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_workspaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_requests: [
    #       {
    #         workspace_request: {
    #           directory_id: "DirectoryId", # required
    #           user_name: "UserName", # required
    #           bundle_id: "BundleId", # required
    #           volume_encryption_key: "VolumeEncryptionKey",
    #           user_volume_encryption_enabled: false,
    #           root_volume_encryption_enabled: false,
    #           workspace_properties: {
    #             running_mode: "AUTO_STOP" # One of: ["AUTO_STOP", "ALWAYS_ON", "MANUAL"],
    #             running_mode_auto_stop_timeout_in_minutes: 1,
    #             root_volume_size_gib: 1,
    #             user_volume_size_gib: 1,
    #             compute_type_name: "VALUE" # One of: ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GENERALPURPOSE_4XLARGE", "GENERALPURPOSE_8XLARGE", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"],
    #             protocols: ["PCOIP" # One of: ["PCOIP", "WSP"]],
    #             operating_system_name: "AMAZON_LINUX_2" # One of: ["AMAZON_LINUX_2", "UBUNTU_18_04", "UBUNTU_20_04", "UBUNTU_22_04", "UNKNOWN", "WINDOWS_10", "WINDOWS_11", "WINDOWS_7", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "RHEL_8", "ROCKY_8"],
    #             global_accelerator: {
    #               mode: "ENABLED_AUTO" # One of: ["ENABLED_AUTO", "DISABLED", "INHERITED"], # required
    #               preferred_protocol: "TCP" # One of: ["TCP", "NONE", "INHERITED"]
    #             }
    #           },
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue"
    #             }
    #           ],
    #           workspace_name: "WorkspaceName"
    #         },
    #         error_code: "ErrorType",
    #         error_message: "Description"
    #       }
    #     ],
    #     pending_requests: [
    #       {
    #         workspace_id: "WorkspaceId",
    #         directory_id: "DirectoryId",
    #         user_name: "UserName",
    #         ip_address: "IpAddress",
    #         state: "PENDING" # One of: ["PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "RESTORING", "MAINTENANCE", "ADMIN_MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "UPDATING", "STOPPING", "STOPPED", "ERROR"],
    #         bundle_id: "BundleId",
    #         subnet_id: "SubnetId",
    #         error_message: "Description",
    #         error_code: "WorkspaceErrorCode",
    #         computer_name: "ComputerName",
    #         volume_encryption_key: "VolumeEncryptionKey",
    #         user_volume_encryption_enabled: false,
    #         root_volume_encryption_enabled: false,
    #         workspace_name: "WorkspaceName",
    #         workspace_properties: {
    #           running_mode: "AUTO_STOP" # One of: ["AUTO_STOP", "ALWAYS_ON", "MANUAL"],
    #           running_mode_auto_stop_timeout_in_minutes: 1,
    #           root_volume_size_gib: 1,
    #           user_volume_size_gib: 1,
    #           compute_type_name: "VALUE" # One of: ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GENERALPURPOSE_4XLARGE", "GENERALPURPOSE_8XLARGE", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"],
    #           protocols: ["PCOIP" # One of: ["PCOIP", "WSP"]],
    #           operating_system_name: "AMAZON_LINUX_2" # One of: ["AMAZON_LINUX_2", "UBUNTU_18_04", "UBUNTU_20_04", "UBUNTU_22_04", "UNKNOWN", "WINDOWS_10", "WINDOWS_11", "WINDOWS_7", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "RHEL_8", "ROCKY_8"],
    #           global_accelerator: {
    #             mode: "ENABLED_AUTO" # One of: ["ENABLED_AUTO", "DISABLED", "INHERITED"], # required
    #             preferred_protocol: "TCP" # One of: ["TCP", "NONE", "INHERITED"]
    #           }
    #         },
    #         modification_states: [
    #           {
    #             resource: "ROOT_VOLUME" # One of: ["ROOT_VOLUME", "USER_VOLUME", "COMPUTE_TYPE"],
    #             state: "UPDATE_INITIATED" # One of: ["UPDATE_INITIATED", "UPDATE_IN_PROGRESS"]
    #           }
    #         ],
    #         related_workspaces: [
    #           {
    #             workspace_id: "WorkspaceId",
    #             region: "Region",
    #             state: "PENDING" # One of: ["PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "RESTORING", "MAINTENANCE", "ADMIN_MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "UPDATING", "STOPPING", "STOPPED", "ERROR"],
    #             type: "PRIMARY" # One of: ["PRIMARY", "STANDBY"]
    #           }
    #         ],
    #         data_replication_settings: {
    #           data_replication: "NO_REPLICATION" # One of: ["NO_REPLICATION", "PRIMARY_AS_SOURCE"],
    #           recovery_snapshot_time: Time.now
    #         },
    #         standby_workspaces_properties: [
    #           {
    #             standby_workspace_id: "WorkspaceId",
    #             data_replication: "NO_REPLICATION" # One of: ["NO_REPLICATION", "PRIMARY_AS_SOURCE"],
    #             recovery_snapshot_time: Time.now
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::CreateWorkspacesResult]
    def create_workspaces(params = {}, options = {})
      request = build_request(:create_workspaces, params)
      request.send_request(options)
    end

    # <p>Creates a pool of WorkSpaces.</p>
    # @param [Hash, Types::CreateWorkspacesPoolRequest] params
    # @option params [String] :pool_name
    #   <p>The name of the pool.</p>
    # @option params [String] :description
    #   <p>The pool description.</p>
    # @option params [String] :bundle_id
    #   <p>The identifier of the bundle for the pool.</p>
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for the pool.</p>
    # @option params [Types::Capacity] :capacity
    #   <p>The user capacity of the pool.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags for the pool.</p>
    # @option params [Types::ApplicationSettingsRequest] :application_settings
    #   <p>Indicates the application settings of the pool.</p>
    # @option params [Types::TimeoutSettings] :timeout_settings
    #   <p>Indicates the timeout settings of the pool.</p>
    # @option params [String] :running_mode
    #   <p>The running mode for the pool.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_name: "WorkspacesPoolName", # required
    #     description: "UpdateDescription", # required
    #     bundle_id: "BundleId", # required
    #     directory_id: "DirectoryId", # required
    #     capacity: { # required
    #       desired_user_sessions: 1, # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     application_settings: {
    #       status: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #       settings_group: "SettingsGroup"
    #     },
    #     timeout_settings: {
    #       disconnect_timeout_in_seconds: 1,
    #       idle_disconnect_timeout_in_seconds: 1,
    #       max_user_duration_in_seconds: 1
    #     },
    #     running_mode: "AUTO_STOP" # One of: ["AUTO_STOP", "ALWAYS_ON"]
    #   }
    #   options = {}
    #   response = client.create_workspaces_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspaces_pool: {
    #       pool_id: "WorkspacesPoolId", # required
    #       pool_arn: "ARN", # required
    #       capacity_status: { # required
    #         available_user_sessions: 1, # required
    #         desired_user_sessions: 1, # required
    #         actual_user_sessions: 1, # required
    #         active_user_sessions: 1, # required
    #       },
    #       pool_name: "WorkspacesPoolName", # required
    #       description: "UpdateDescription",
    #       state: "CREATING" # One of: ["CREATING", "DELETING", "RUNNING", "STARTING", "STOPPED", "STOPPING", "UPDATING"], # required
    #       created_at: Time.now, # required
    #       bundle_id: "BundleId", # required
    #       directory_id: "DirectoryId", # required
    #       errors: [
    #         {
    #           error_code: "IAM_SERVICE_ROLE_IS_MISSING" # One of: ["IAM_SERVICE_ROLE_IS_MISSING", "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "WORKSPACES_POOL_STOPPED", "WORKSPACES_POOL_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR", "DOMAIN_JOIN_ERROR_SECRET_ACTION_PERMISSION_IS_MISSING", "DOMAIN_JOIN_ERROR_SECRET_DECRYPTION_FAILURE", "DOMAIN_JOIN_ERROR_SECRET_STATE_INVALID", "DOMAIN_JOIN_ERROR_SECRET_NOT_FOUND", "DOMAIN_JOIN_ERROR_SECRET_VALUE_KEY_NOT_FOUND", "DOMAIN_JOIN_ERROR_SECRET_INVALID", "BUNDLE_NOT_FOUND", "DIRECTORY_NOT_FOUND", "INSUFFICIENT_PERMISSIONS_ERROR", "DEFAULT_OU_IS_MISSING"],
    #           error_message: "ErrorMessage"
    #         }
    #       ],
    #       application_settings: {
    #         status: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #         settings_group: "SettingsGroup",
    #         s3_bucket_name: "S3BucketName"
    #       },
    #       timeout_settings: {
    #         disconnect_timeout_in_seconds: 1,
    #         idle_disconnect_timeout_in_seconds: 1,
    #         max_user_duration_in_seconds: 1
    #       },
    #       running_mode: "AUTO_STOP" # One of: ["AUTO_STOP", "ALWAYS_ON"], # required
    #     }
    #   }
    # @return [Types::CreateWorkspacesPoolResult]
    def create_workspaces_pool(params = {}, options = {})
      request = build_request(:create_workspaces_pool, params)
      request.send_request(options)
    end

    # <p>Deletes the account link invitation.</p>
    # @param [Hash, Types::DeleteAccountLinkInvitationRequest] params
    # @option params [String] :link_id
    #   <p>The identifier of the account link.</p>
    # @option params [String] :client_token
    #   <p>A string of up to 64 ASCII characters that Amazon WorkSpaces uses to ensure idempotent creation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     link_id: "LinkId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_account_link_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_link: {
    #       account_link_id: "LinkId",
    #       account_link_status: "LINKED" # One of: ["LINKED", "LINKING_FAILED", "LINK_NOT_FOUND", "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT", "REJECTED"],
    #       source_account_id: "AwsAccount",
    #       target_account_id: "AwsAccount"
    #     }
    #   }
    # @return [Types::DeleteAccountLinkInvitationResult]
    def delete_account_link_invitation(params = {}, options = {})
      request = build_request(:delete_account_link_invitation, params)
      request.send_request(options)
    end

    # <p>Deletes customized client branding. Client branding allows you to customize your
    #          WorkSpace's client login portal. You can tailor your login portal company logo, the support
    #          email address, support link, link to reset password, and a custom message for users trying
    #          to sign in.</p>
    #          <p>After you delete your customized client branding, your login portal reverts to the
    #          default client branding.</p>
    # @param [Hash, Types::DeleteClientBrandingRequest] params
    # @option params [String] :resource_id
    #   <p>The directory identifier of the WorkSpace for which you want to delete client
    #            branding.</p>
    # @option params [Array<String>] :platforms
    #   <p>The device type for which you want to delete client branding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "DirectoryId", # required
    #     platforms: ["DeviceTypeWindows" # One of: ["DeviceTypeWindows", "DeviceTypeOsx", "DeviceTypeAndroid", "DeviceTypeIos", "DeviceTypeLinux", "DeviceTypeWeb"]], # required
    #   }
    #   options = {}
    #   response = client.delete_client_branding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteClientBrandingResult]
    def delete_client_branding(params = {}, options = {})
      request = build_request(:delete_client_branding, params)
      request.send_request(options)
    end

    # <p>Deletes a client-add-in for Amazon Connect that is configured within a
    #          directory.</p>
    # @param [Hash, Types::DeleteConnectClientAddInRequest] params
    # @option params [String] :add_in_id
    #   <p>The identifier of the client add-in to delete.</p>
    # @option params [String] :resource_id
    #   <p>The directory identifier for which the client add-in is configured.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     add_in_id: "AmazonUuid", # required
    #     resource_id: "DirectoryId", # required
    #   }
    #   options = {}
    #   response = client.delete_connect_client_add_in(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConnectClientAddInResult]
    def delete_connect_client_add_in(params = {}, options = {})
      request = build_request(:delete_connect_client_add_in, params)
      request.send_request(options)
    end

    # <p>Deletes the specified connection alias. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html">
    #             Cross-Region Redirection for Amazon WorkSpaces</a>.</p>
    #          <important>
    #             <p>
    #                <b>If you will no longer be using a fully qualified domain name
    #                (FQDN) as the registration code for your WorkSpaces users, you must take certain
    #                precautions to prevent potential security issues.</b> For more information,
    #             see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html#cross-region-redirection-security-considerations"> Security Considerations if You Stop Using Cross-Region Redirection</a>.</p>
    #          </important>
    #          <note>
    #             <p>To delete a connection alias that has been shared, the shared account must first
    #             disassociate the connection alias from any directories it has been associated with. Then
    #             you must unshare the connection alias from the account it has been shared with. You can
    #             delete a connection alias only after it is no longer shared with any accounts or
    #             associated with any directories.</p>
    #          </note>
    # @param [Hash, Types::DeleteConnectionAliasRequest] params
    # @option params [String] :alias_id
    #   <p>The identifier of the connection alias to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias_id: "ConnectionAliasId", # required
    #   }
    #   options = {}
    #   response = client.delete_connection_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConnectionAliasResult]
    def delete_connection_alias(params = {}, options = {})
      request = build_request(:delete_connection_alias, params)
      request.send_request(options)
    end

    # <p>Deletes the specified IP access control group.</p>
    #          <p>You cannot delete an IP access control group that is associated with a directory.</p>
    # @param [Hash, Types::DeleteIpGroupRequest] params
    # @option params [String] :group_id
    #   <p>The identifier of the IP access control group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_id: "IpGroupId", # required
    #   }
    #   options = {}
    #   response = client.delete_ip_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIpGroupResult]
    def delete_ip_group(params = {}, options = {})
      request = build_request(:delete_ip_group, params)
      request.send_request(options)
    end

    # <p>Deletes the specified tags from the specified WorkSpaces resource.</p>
    # @param [Hash, Types::DeleteTagsRequest] params
    # @option params [String] :resource_id
    #   <p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,
    #            registered directories, images, custom bundles, IP access control groups, and connection
    #            aliases.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "NonEmptyString", # required
    #     tag_keys: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.delete_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTagsResult]
    def delete_tags(params = {}, options = {})
      request = build_request(:delete_tags, params)
      request.send_request(options)
    end

    # <p>Deletes the specified WorkSpace bundle. For more information about deleting WorkSpace bundles, see 
    #          <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/delete_bundle.html">
    #             Delete a Custom WorkSpaces Bundle or Image</a>.</p>
    # @param [Hash, Types::DeleteWorkspaceBundleRequest] params
    # @option params [String] :bundle_id
    #   <p>The identifier of the bundle.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bundle_id: "BundleId"
    #   }
    #   options = {}
    #   response = client.delete_workspace_bundle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWorkspaceBundleResult]
    def delete_workspace_bundle(params = {}, options = {})
      request = build_request(:delete_workspace_bundle, params)
      request.send_request(options)
    end

    # <p>Deletes the specified image from your account. To delete an image, you must first delete
    #          any bundles that are associated with the image and unshare the image if it is shared with
    #          other accounts. </p>
    # @param [Hash, Types::DeleteWorkspaceImageRequest] params
    # @option params [String] :image_id
    #   <p>The identifier of the image.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     image_id: "WorkspaceImageId", # required
    #   }
    #   options = {}
    #   response = client.delete_workspace_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWorkspaceImageResult]
    def delete_workspace_image(params = {}, options = {})
      request = build_request(:delete_workspace_image, params)
      request.send_request(options)
    end

    # <p>Deploys associated applications to the specified WorkSpace</p>
    # @param [Hash, Types::DeployWorkspaceApplicationsRequest] params
    # @option params [String] :workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    # @option params [Boolean] :force
    #   <p>Indicates whether the force flag is applied for the specified WorkSpace. When the force flag is enabled, 
    #            it allows previously failed deployments to be retried.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.deploy_workspace_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment: {
    #       associations: [
    #         {
    #           associated_resource_id: "NonEmptyString",
    #           associated_resource_type: "APPLICATION" # One of: ["APPLICATION"],
    #           created: Time.now,
    #           last_updated_time: Time.now,
    #           state: "PENDING_INSTALL" # One of: ["PENDING_INSTALL", "PENDING_INSTALL_DEPLOYMENT", "PENDING_UNINSTALL", "PENDING_UNINSTALL_DEPLOYMENT", "INSTALLING", "UNINSTALLING", "ERROR", "COMPLETED", "REMOVED"],
    #           state_reason: {
    #             error_code: "ValidationError.InsufficientDiskSpace" # One of: ["ValidationError.InsufficientDiskSpace", "ValidationError.InsufficientMemory", "ValidationError.UnsupportedOperatingSystem", "DeploymentError.InternalServerError", "DeploymentError.WorkspaceUnreachable"],
    #             error_message: "String2048"
    #           },
    #           workspace_id: "WorkspaceId"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeployWorkspaceApplicationsResult]
    def deploy_workspace_applications(params = {}, options = {})
      request = build_request(:deploy_workspace_applications, params)
      request.send_request(options)
    end

    # <p>Deregisters the specified directory. This operation is asynchronous and returns before
    #          the WorkSpace directory is deregistered. If any WorkSpaces are registered to this
    #          directory, you must remove them before you can deregister the directory.</p>
    #          <note>
    #             <p>Simple AD and AD Connector are made available to you free of charge to use with
    #             WorkSpaces. If there are no WorkSpaces being used with your Simple AD or AD Connector
    #             directory for 30 consecutive days, this directory will be automatically deregistered for
    #             use with Amazon WorkSpaces, and you will be charged for this directory as per the <a href="http://aws.amazon.com/directoryservice/pricing/">Directory Service pricing
    #                terms</a>.</p>
    #             <p>To delete empty directories, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/delete-workspaces-directory.html"> Delete the
    #                Directory for Your WorkSpaces</a>. If you delete your Simple AD or AD Connector
    #             directory, you can always create a new one when you want to start using WorkSpaces
    #             again.</p>
    #          </note>
    # @param [Hash, Types::DeregisterWorkspaceDirectoryRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory. If any WorkSpaces are registered to this directory, you
    #            must remove them before you deregister the directory, or you will receive an
    #            OperationNotSupportedException error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #   }
    #   options = {}
    #   response = client.deregister_workspace_directory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterWorkspaceDirectoryResult]
    def deregister_workspace_directory(params = {}, options = {})
      request = build_request(:deregister_workspace_directory, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes the configuration of Bring Your Own License (BYOL) for
    #          the specified account.</p>
    # @param [Hash, Types::DescribeAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dedicated_tenancy_support: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     dedicated_tenancy_management_cidr_range: "DedicatedTenancyManagementCidrRange",
    #     dedicated_tenancy_account_type: "SOURCE_ACCOUNT" # One of: ["SOURCE_ACCOUNT", "TARGET_ACCOUNT"],
    #     message: "Message"
    #   }
    # @return [Types::DescribeAccountResult]
    def describe_account(params = {}, options = {})
      request = build_request(:describe_account, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes modifications to the configuration of Bring Your Own
    #          License (BYOL) for the specified account.</p>
    # @param [Hash, Types::DescribeAccountModificationsRequest] params
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_account_modifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_modifications: [
    #       {
    #         modification_state: "PENDING" # One of: ["PENDING", "COMPLETED", "FAILED"],
    #         dedicated_tenancy_support: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         dedicated_tenancy_management_cidr_range: "DedicatedTenancyManagementCidrRange",
    #         start_time: Time.now,
    #         error_code: "WorkspaceErrorCode",
    #         error_message: "Description"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeAccountModificationsResult]
    def describe_account_modifications(params = {}, options = {})
      request = build_request(:describe_account_modifications, params)
      request.send_request(options)
    end

    # <p>Describes the associations between the application and the specified associated resources.</p>
    # @param [Hash, Types::DescribeApplicationAssociationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of associations to return.</p>
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>
    # @option params [String] :application_id
    #   <p>The identifier of the specified application.</p>
    # @option params [Array<String>] :associated_resource_types
    #   <p>The resource type of the associated resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     application_id: "WorkSpaceApplicationId", # required
    #     associated_resource_types: ["WORKSPACE" # One of: ["WORKSPACE", "BUNDLE", "IMAGE"]], # required
    #   }
    #   options = {}
    #   response = client.describe_application_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associations: [
    #       {
    #         application_id: "WorkSpaceApplicationId",
    #         associated_resource_id: "NonEmptyString",
    #         associated_resource_type: "WORKSPACE" # One of: ["WORKSPACE", "BUNDLE", "IMAGE"],
    #         created: Time.now,
    #         last_updated_time: Time.now,
    #         state: "PENDING_INSTALL" # One of: ["PENDING_INSTALL", "PENDING_INSTALL_DEPLOYMENT", "PENDING_UNINSTALL", "PENDING_UNINSTALL_DEPLOYMENT", "INSTALLING", "UNINSTALLING", "ERROR", "COMPLETED", "REMOVED"],
    #         state_reason: {
    #           error_code: "ValidationError.InsufficientDiskSpace" # One of: ["ValidationError.InsufficientDiskSpace", "ValidationError.InsufficientMemory", "ValidationError.UnsupportedOperatingSystem", "DeploymentError.InternalServerError", "DeploymentError.WorkspaceUnreachable"],
    #           error_message: "String2048"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeApplicationAssociationsResult]
    def describe_application_associations(params = {}, options = {})
      request = build_request(:describe_application_associations, params)
      request.send_request(options)
    end

    # <p>Describes the specified applications by filtering based on their compute types, license availability, operating systems, and owners.</p>
    # @param [Hash, Types::DescribeApplicationsRequest] params
    # @option params [Array<String>] :application_ids
    #   <p>The identifiers of one or more applications.</p>
    # @option params [Array<String>] :compute_type_names
    #   <p>The compute types supported by the applications.</p>
    # @option params [String] :license_type
    #   <p>The license availability for the applications.</p>
    # @option params [Array<String>] :operating_system_names
    #   <p>The operating systems supported by the applications.</p>
    # @option params [String] :owner
    #   <p>The owner of the applications.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of applications to return.</p>
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_ids: ["WorkSpaceApplicationId"],
    #     compute_type_names: ["VALUE" # One of: ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GENERALPURPOSE_4XLARGE", "GENERALPURPOSE_8XLARGE", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"]],
    #     license_type: "LICENSED" # One of: ["LICENSED", "UNLICENSED"],
    #     operating_system_names: ["AMAZON_LINUX_2" # One of: ["AMAZON_LINUX_2", "UBUNTU_18_04", "UBUNTU_20_04", "UBUNTU_22_04", "UNKNOWN", "WINDOWS_10", "WINDOWS_11", "WINDOWS_7", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "RHEL_8", "ROCKY_8"]],
    #     owner: "WorkSpaceApplicationOwner",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     applications: [
    #       {
    #         application_id: "WorkSpaceApplicationId",
    #         created: Time.now,
    #         description: "String2048",
    #         license_type: "LICENSED" # One of: ["LICENSED", "UNLICENSED"],
    #         name: "NonEmptyString",
    #         owner: "WorkSpaceApplicationOwner",
    #         state: "PENDING" # One of: ["PENDING", "ERROR", "AVAILABLE", "UNINSTALL_ONLY"],
    #         supported_compute_type_names: ["VALUE" # One of: ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GENERALPURPOSE_4XLARGE", "GENERALPURPOSE_8XLARGE", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"]],
    #         supported_operating_system_names: ["AMAZON_LINUX_2" # One of: ["AMAZON_LINUX_2", "UBUNTU_18_04", "UBUNTU_20_04", "UBUNTU_22_04", "UNKNOWN", "WINDOWS_10", "WINDOWS_11", "WINDOWS_7", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "RHEL_8", "ROCKY_8"]]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeApplicationsResult]
    def describe_applications(params = {}, options = {})
      request = build_request(:describe_applications, params)
      request.send_request(options)
    end

    # <p>Describes the associations between the applications and the specified bundle.</p>
    # @param [Hash, Types::DescribeBundleAssociationsRequest] params
    # @option params [String] :bundle_id
    #   <p>The identifier of the bundle.</p>
    # @option params [Array<String>] :associated_resource_types
    #   <p>The resource types of the associated resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bundle_id: "BundleId", # required
    #     associated_resource_types: ["APPLICATION" # One of: ["APPLICATION"]], # required
    #   }
    #   options = {}
    #   response = client.describe_bundle_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associations: [
    #       {
    #         associated_resource_id: "NonEmptyString",
    #         associated_resource_type: "APPLICATION" # One of: ["APPLICATION"],
    #         bundle_id: "BundleId",
    #         created: Time.now,
    #         last_updated_time: Time.now,
    #         state: "PENDING_INSTALL" # One of: ["PENDING_INSTALL", "PENDING_INSTALL_DEPLOYMENT", "PENDING_UNINSTALL", "PENDING_UNINSTALL_DEPLOYMENT", "INSTALLING", "UNINSTALLING", "ERROR", "COMPLETED", "REMOVED"],
    #         state_reason: {
    #           error_code: "ValidationError.InsufficientDiskSpace" # One of: ["ValidationError.InsufficientDiskSpace", "ValidationError.InsufficientMemory", "ValidationError.UnsupportedOperatingSystem", "DeploymentError.InternalServerError", "DeploymentError.WorkspaceUnreachable"],
    #           error_message: "String2048"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeBundleAssociationsResult]
    def describe_bundle_associations(params = {}, options = {})
      request = build_request(:describe_bundle_associations, params)
      request.send_request(options)
    end

    # <p>Describes the specified client branding. Client branding allows you to customize the log
    #          in page of various device types for your users. You can add your company logo, the support
    #          email address, support link, link to reset password, and a custom message for users trying
    #          to sign in.</p>
    #          <note>
    #             <p>Only device types that have branding information configured will be shown in the
    #             response.</p>
    #          </note>
    # @param [Hash, Types::DescribeClientBrandingRequest] params
    # @option params [String] :resource_id
    #   <p>The directory identifier of the WorkSpace for which you want to view client branding
    #            information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "DirectoryId", # required
    #   }
    #   options = {}
    #   response = client.describe_client_branding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_type_windows: {
    #       logo_url: "ClientUrl",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     },
    #     device_type_osx: {
    #       logo_url: "ClientUrl",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     },
    #     device_type_android: {
    #       logo_url: "ClientUrl",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     },
    #     device_type_ios: {
    #       logo_url: "ClientUrl",
    #       logo2x_url: "ClientUrl",
    #       logo3x_url: "ClientUrl",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     },
    #     device_type_linux: {
    #       logo_url: "ClientUrl",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     },
    #     device_type_web: {
    #       logo_url: "ClientUrl",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     }
    #   }
    # @return [Types::DescribeClientBrandingResult]
    def describe_client_branding(params = {}, options = {})
      request = build_request(:describe_client_branding, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes one or more specified Amazon WorkSpaces clients.</p>
    # @param [Hash, Types::DescribeClientPropertiesRequest] params
    # @option params [Array<String>] :resource_ids
    #   <p>The resource identifier, in the form of directory IDs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_ids: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.describe_client_properties(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_properties_list: [
    #       {
    #         resource_id: "NonEmptyString",
    #         client_properties: {
    #           reconnect_enabled: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           log_upload_enabled: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeClientPropertiesResult]
    def describe_client_properties(params = {}, options = {})
      request = build_request(:describe_client_properties, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of Amazon Connect client add-ins that have been created.</p>
    # @param [Hash, Types::DescribeConnectClientAddInsRequest] params
    # @option params [String] :resource_id
    #   <p>The directory identifier for which the client add-in is configured.</p>
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "DirectoryId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_connect_client_add_ins(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     add_ins: [
    #       {
    #         add_in_id: "AmazonUuid",
    #         resource_id: "DirectoryId",
    #         name: "AddInName",
    #         url: "AddInUrl"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeConnectClientAddInsResult]
    def describe_connect_client_add_ins(params = {}, options = {})
      request = build_request(:describe_connect_client_add_ins, params)
      request.send_request(options)
    end

    # <p>Describes the permissions that the owner of a connection alias has granted to another
    #             Amazon Web Services account for the specified connection alias. For more information, see
    #             <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    # @param [Hash, Types::DescribeConnectionAliasPermissionsRequest] params
    # @option params [String] :alias_id
    #   <p>The identifier of the connection alias.</p>
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias_id: "ConnectionAliasId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_connection_alias_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alias_id: "ConnectionAliasId",
    #     connection_alias_permissions: [
    #       {
    #         shared_account_id: "AwsAccount", # required
    #         allow_association: false, # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeConnectionAliasPermissionsResult]
    def describe_connection_alias_permissions(params = {}, options = {})
      request = build_request(:describe_connection_alias_permissions, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes the connection aliases used for cross-Region
    #          redirection. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    # @param [Hash, Types::DescribeConnectionAliasesRequest] params
    # @option params [Array<String>] :alias_ids
    #   <p>The identifiers of the connection aliases to describe.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the directory associated with the connection alias.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of connection aliases to return.</p>
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias_ids: ["ConnectionAliasId"],
    #     resource_id: "NonEmptyString",
    #     limit: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_connection_aliases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_aliases: [
    #       {
    #         connection_string: "ConnectionString",
    #         alias_id: "ConnectionAliasId",
    #         state: "CREATING" # One of: ["CREATING", "CREATED", "DELETING"],
    #         owner_account_id: "AwsAccount",
    #         associations: [
    #           {
    #             association_status: "NOT_ASSOCIATED" # One of: ["NOT_ASSOCIATED", "ASSOCIATED_WITH_OWNER_ACCOUNT", "ASSOCIATED_WITH_SHARED_ACCOUNT", "PENDING_ASSOCIATION", "PENDING_DISASSOCIATION"],
    #             associated_account_id: "AwsAccount",
    #             resource_id: "NonEmptyString",
    #             connection_identifier: "ConnectionIdentifier"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeConnectionAliasesResult]
    def describe_connection_aliases(params = {}, options = {})
      request = build_request(:describe_connection_aliases, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a WorkSpace BYOL image being imported via ImportCustomWorkspaceImage.</p>
    # @param [Hash, Types::DescribeCustomWorkspaceImageImportRequest] params
    # @option params [String] :image_id
    #   <p>The identifier of the WorkSpace image.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     image_id: "WorkspaceImageId", # required
    #   }
    #   options = {}
    #   response = client.describe_custom_workspace_image_import(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_id: "WorkspaceImageId",
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn",
    #     state: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "ERROR"],
    #     created: Time.now,
    #     last_updated_time: Time.now,
    #     image_source: {
    #       # One of:
    #       ec2_import_task_id: "Ec2ImportTaskId",
    #       image_build_version_arn: "ImageBuildVersionArn",
    #       ec2_image_id: "Ec2ImageId"
    #     },
    #     image_builder_instance_id: "NonEmptyString",
    #     error_details: [
    #       {
    #         error_code: "ErrorCode",
    #         error_message: "ImageErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeCustomWorkspaceImageImportResult]
    def describe_custom_workspace_image_import(params = {}, options = {})
      request = build_request(:describe_custom_workspace_image_import, params)
      request.send_request(options)
    end

    # <p>Describes the associations between the applications and the specified image.</p>
    # @param [Hash, Types::DescribeImageAssociationsRequest] params
    # @option params [String] :image_id
    #   <p>The identifier of the image.</p>
    # @option params [Array<String>] :associated_resource_types
    #   <p>The resource types of the associated resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     image_id: "WorkspaceImageId", # required
    #     associated_resource_types: ["APPLICATION" # One of: ["APPLICATION"]], # required
    #   }
    #   options = {}
    #   response = client.describe_image_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associations: [
    #       {
    #         associated_resource_id: "NonEmptyString",
    #         associated_resource_type: "APPLICATION" # One of: ["APPLICATION"],
    #         created: Time.now,
    #         last_updated_time: Time.now,
    #         image_id: "WorkspaceImageId",
    #         state: "PENDING_INSTALL" # One of: ["PENDING_INSTALL", "PENDING_INSTALL_DEPLOYMENT", "PENDING_UNINSTALL", "PENDING_UNINSTALL_DEPLOYMENT", "INSTALLING", "UNINSTALLING", "ERROR", "COMPLETED", "REMOVED"],
    #         state_reason: {
    #           error_code: "ValidationError.InsufficientDiskSpace" # One of: ["ValidationError.InsufficientDiskSpace", "ValidationError.InsufficientMemory", "ValidationError.UnsupportedOperatingSystem", "DeploymentError.InternalServerError", "DeploymentError.WorkspaceUnreachable"],
    #           error_message: "String2048"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeImageAssociationsResult]
    def describe_image_associations(params = {}, options = {})
      request = build_request(:describe_image_associations, params)
      request.send_request(options)
    end

    # <p>Describes one or more of your IP access control groups.</p>
    # @param [Hash, Types::DescribeIpGroupsRequest] params
    # @option params [Array<String>] :group_ids
    #   <p>The identifiers of one or more IP access control groups.</p>
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_ids: ["IpGroupId"],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_ip_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result: [
    #       {
    #         group_id: "IpGroupId",
    #         group_name: "IpGroupName",
    #         group_desc: "IpGroupDesc",
    #         user_rules: [
    #           {
    #             ip_rule: "IpRule",
    #             rule_desc: "IpRuleDesc"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeIpGroupsResult]
    def describe_ip_groups(params = {}, options = {})
      request = build_request(:describe_ip_groups, params)
      request.send_request(options)
    end

    # <p>Describes the specified tags for the specified WorkSpaces resource.</p>
    # @param [Hash, Types::DescribeTagsRequest] params
    # @option params [String] :resource_id
    #   <p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,
    #            registered directories, images, custom bundles, IP access control groups, and connection
    #            aliases.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.describe_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeTagsResult]
    def describe_tags(params = {}, options = {})
      request = build_request(:describe_tags, params)
      request.send_request(options)
    end

    # <p>Describes the associations betweens applications and the specified WorkSpace.</p>
    # @param [Hash, Types::DescribeWorkspaceAssociationsRequest] params
    # @option params [String] :workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    # @option params [Array<String>] :associated_resource_types
    #   <p>The resource types of the associated resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     associated_resource_types: ["APPLICATION" # One of: ["APPLICATION"]], # required
    #   }
    #   options = {}
    #   response = client.describe_workspace_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associations: [
    #       {
    #         associated_resource_id: "NonEmptyString",
    #         associated_resource_type: "APPLICATION" # One of: ["APPLICATION"],
    #         created: Time.now,
    #         last_updated_time: Time.now,
    #         state: "PENDING_INSTALL" # One of: ["PENDING_INSTALL", "PENDING_INSTALL_DEPLOYMENT", "PENDING_UNINSTALL", "PENDING_UNINSTALL_DEPLOYMENT", "INSTALLING", "UNINSTALLING", "ERROR", "COMPLETED", "REMOVED"],
    #         state_reason: {
    #           error_code: "ValidationError.InsufficientDiskSpace" # One of: ["ValidationError.InsufficientDiskSpace", "ValidationError.InsufficientMemory", "ValidationError.UnsupportedOperatingSystem", "DeploymentError.InternalServerError", "DeploymentError.WorkspaceUnreachable"],
    #           error_message: "String2048"
    #         },
    #         workspace_id: "WorkspaceId"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeWorkspaceAssociationsResult]
    def describe_workspace_associations(params = {}, options = {})
      request = build_request(:describe_workspace_associations, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes the available WorkSpace bundles.</p>
    #          <p>You can filter the results using either bundle ID or owner, but not both.</p>
    # @param [Hash, Types::DescribeWorkspaceBundlesRequest] params
    # @option params [Array<String>] :bundle_ids
    #   <p>The identifiers of the bundles. You cannot combine this parameter with any other filter.</p>
    # @option params [String] :owner
    #   <p>The owner of the bundles. You cannot combine this parameter with any other filter.</p>
    #            <p>To describe the bundles provided by Amazon Web Services, specify <code>AMAZON</code>. 
    #            To describe the bundles that belong to your account, don't specify a value.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. (You received this token from a previous call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bundle_ids: ["BundleId"],
    #     owner: "BundleOwner",
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_workspace_bundles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bundles: [
    #       {
    #         bundle_id: "BundleId",
    #         name: "NonEmptyString",
    #         owner: "BundleOwner",
    #         description: "Description",
    #         image_id: "WorkspaceImageId",
    #         root_storage: {
    #           capacity: "NonEmptyString", # required
    #         },
    #         user_storage: {
    #           capacity: "NonEmptyString", # required
    #         },
    #         compute_type: {
    #           name: "VALUE" # One of: ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GENERALPURPOSE_4XLARGE", "GENERALPURPOSE_8XLARGE", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"]
    #         },
    #         last_updated_time: Time.now,
    #         creation_time: Time.now,
    #         state: "AVAILABLE" # One of: ["AVAILABLE", "PENDING", "ERROR"],
    #         bundle_type: "REGULAR" # One of: ["REGULAR", "STANDBY"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeWorkspaceBundlesResult]
    def describe_workspace_bundles(params = {}, options = {})
      request = build_request(:describe_workspace_bundles, params)
      request.send_request(options)
    end

    # <p>Describes the available directories that are registered with Amazon WorkSpaces.</p>
    # @param [Hash, Types::DescribeWorkspaceDirectoriesRequest] params
    # @option params [Array<String>] :directory_ids
    #   <p>The identifiers of the directories. If the value is null, all directories are
    #            retrieved.</p>
    # @option params [Array<String>] :workspace_directory_names
    #   <p>The names of the WorkSpace directories.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of directories to return.</p>
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    # @option params [Array<Types::DescribeWorkspaceDirectoriesFilter>] :filters
    #   <p>The filter condition for the WorkSpaces.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_ids: ["DirectoryId"],
    #     workspace_directory_names: ["WorkspaceDirectoryName"],
    #     limit: 1,
    #     next_token: "PaginationToken",
    #     filters: [
    #       {
    #         name: "USER_IDENTITY_TYPE" # One of: ["USER_IDENTITY_TYPE", "WORKSPACE_TYPE"], # required
    #         values: ["DescribeWorkspaceDirectoriesFilterValue"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_workspace_directories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directories: [
    #       {
    #         directory_id: "DirectoryId",
    #         alias: "Alias",
    #         directory_name: "DirectoryName",
    #         registration_code: "RegistrationCode",
    #         subnet_ids: ["SubnetId"],
    #         dns_ip_addresses: ["IpAddress"],
    #         customer_user_name: "UserName",
    #         iam_role_id: "ARN",
    #         directory_type: "SIMPLE_AD" # One of: ["SIMPLE_AD", "AD_CONNECTOR", "CUSTOMER_MANAGED", "AWS_IAM_IDENTITY_CENTER"],
    #         workspace_security_group_id: "SecurityGroupId",
    #         state: "REGISTERING" # One of: ["REGISTERING", "REGISTERED", "DEREGISTERING", "DEREGISTERED", "ERROR"],
    #         workspace_creation_properties: {
    #           enable_internet_access: false,
    #           default_ou: "DefaultOu",
    #           custom_security_group_id: "SecurityGroupId",
    #           user_enabled_as_local_administrator: false,
    #           enable_maintenance_mode: false,
    #           instance_iam_role_arn: "ARN"
    #         },
    #         ip_group_ids: ["IpGroupId"],
    #         workspace_access_properties: {
    #           device_type_windows: "ALLOW" # One of: ["ALLOW", "DENY"],
    #           device_type_osx: "ALLOW" # One of: ["ALLOW", "DENY"],
    #           device_type_web: "ALLOW" # One of: ["ALLOW", "DENY"],
    #           device_type_ios: "ALLOW" # One of: ["ALLOW", "DENY"],
    #           device_type_android: "ALLOW" # One of: ["ALLOW", "DENY"],
    #           device_type_chrome_os: "ALLOW" # One of: ["ALLOW", "DENY"],
    #           device_type_zero_client: "ALLOW" # One of: ["ALLOW", "DENY"],
    #           device_type_linux: "ALLOW" # One of: ["ALLOW", "DENY"],
    #           device_type_work_spaces_thin_client: "ALLOW" # One of: ["ALLOW", "DENY"],
    #           access_endpoint_config: {
    #             access_endpoints: [ # required
    #               {
    #                 access_endpoint_type: "STREAMING_WSP" # One of: ["STREAMING_WSP"],
    #                 vpc_endpoint_id: "AlphanumericDashUnderscoreNonEmptyString"
    #               }
    #             ],
    #             internet_fallback_protocols: ["PCOIP" # One of: ["PCOIP"]]
    #           }
    #         },
    #         tenancy: "DEDICATED" # One of: ["DEDICATED", "SHARED"],
    #         selfservice_permissions: {
    #           restart_workspace: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           increase_volume_size: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           change_compute_type: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           switch_running_mode: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           rebuild_workspace: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         saml_properties: {
    #           status: "DISABLED" # One of: ["DISABLED", "ENABLED", "ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK"],
    #           user_access_url: "SamlUserAccessUrl",
    #           relay_state_parameter_name: "NonEmptyString"
    #         },
    #         certificate_based_auth_properties: {
    #           status: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #           certificate_authority_arn: "CertificateAuthorityArn"
    #         },
    #         endpoint_encryption_mode: "STANDARD_TLS" # One of: ["STANDARD_TLS", "FIPS_VALIDATED"],
    #         microsoft_entra_config: {
    #           tenant_id: "MicrosoftEntraConfigTenantId",
    #           application_config_secret_arn: "SecretsManagerArn"
    #         },
    #         workspace_directory_name: "WorkspaceDirectoryName",
    #         workspace_directory_description: "WorkspaceDirectoryDescription",
    #         user_identity_type: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_DIRECTORY_SERVICE", "AWS_IAM_IDENTITY_CENTER"],
    #         workspace_type: "PERSONAL" # One of: ["PERSONAL", "POOLS"],
    #         idc_config: {
    #           instance_arn: "ARN",
    #           application_arn: "ARN"
    #         },
    #         active_directory_config: {
    #           domain_name: "DomainName", # required
    #           service_account_secret_arn: "SecretsManagerArn", # required
    #         },
    #         streaming_properties: {
    #           streaming_experience_preferred_protocol: "TCP" # One of: ["TCP", "UDP"],
    #           user_settings: [
    #             {
    #               action: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE" # One of: ["CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "PRINTING_TO_LOCAL_DEVICE", "SMART_CARD"], # required
    #               permission: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #               maximum_length: 1
    #             }
    #           ],
    #           storage_connectors: [
    #             {
    #               connector_type: "HOME_FOLDER" # One of: ["HOME_FOLDER"], # required
    #               status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             }
    #           ],
    #           global_accelerator: {
    #             mode: "ENABLED_AUTO" # One of: ["ENABLED_AUTO", "DISABLED"], # required
    #             preferred_protocol: "TCP" # One of: ["TCP", "NONE"]
    #           }
    #         },
    #         error_message: "Description"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeWorkspaceDirectoriesResult]
    def describe_workspace_directories(params = {}, options = {})
      request = build_request(:describe_workspace_directories, params)
      request.send_request(options)
    end

    # <p>Describes the permissions that the owner of an image has granted to other Amazon Web Services accounts for an image.</p>
    # @param [Hash, Types::DescribeWorkspaceImagePermissionsRequest] params
    # @option params [String] :image_id
    #   <p>The identifier of the image.</p>
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     image_id: "WorkspaceImageId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_workspace_image_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_id: "WorkspaceImageId",
    #     image_permissions: [
    #       {
    #         shared_account_id: "AwsAccount"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeWorkspaceImagePermissionsResult]
    def describe_workspace_image_permissions(params = {}, options = {})
      request = build_request(:describe_workspace_image_permissions, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes one or more specified images, if the image identifiers
    #          are provided. Otherwise, all images in the account are described. </p>
    # @param [Hash, Types::DescribeWorkspaceImagesRequest] params
    # @option params [Array<String>] :image_ids
    #   <p>The identifier of the image.</p>
    # @option params [String] :image_type
    #   <p>The type (owned or shared) of the image.</p>
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     image_ids: ["WorkspaceImageId"],
    #     image_type: "OWNED" # One of: ["OWNED", "SHARED"],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_workspace_images(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     images: [
    #       {
    #         image_id: "WorkspaceImageId",
    #         name: "WorkspaceImageName",
    #         description: "WorkspaceImageDescription",
    #         operating_system: {
    #           type: "WINDOWS" # One of: ["WINDOWS", "LINUX"]
    #         },
    #         state: "AVAILABLE" # One of: ["AVAILABLE", "PENDING", "ERROR"],
    #         required_tenancy: "DEFAULT" # One of: ["DEFAULT", "DEDICATED"],
    #         error_code: "WorkspaceImageErrorCode",
    #         error_message: "Description",
    #         created: Time.now,
    #         owner_account_id: "AwsAccount",
    #         updates: {
    #           update_available: false,
    #           description: "UpdateDescription"
    #         },
    #         error_details: [
    #           {
    #             error_code: "OutdatedPowershellVersion" # One of: ["OutdatedPowershellVersion", "OfficeInstalled", "PCoIPAgentInstalled", "WindowsUpdatesEnabled", "AutoMountDisabled", "WorkspacesBYOLAccountNotFound", "WorkspacesBYOLAccountDisabled", "DHCPDisabled", "DiskFreeSpace", "AdditionalDrivesAttached", "OSNotSupported", "DomainJoined", "AzureDomainJoined", "FirewallEnabled", "VMWareToolsInstalled", "DiskSizeExceeded", "IncompatiblePartitioning", "PendingReboot", "AutoLogonEnabled", "RealTimeUniversalDisabled", "MultipleBootPartition", "Requires64BitOS", "ZeroRearmCount", "InPlaceUpgrade", "AntiVirusInstalled", "UEFINotSupported", "UnknownError", "AppXPackagesInstalled", "ReservedStorageInUse", "AdditionalDrivesPresent", "WindowsUpdatesRequired", "SysPrepFileMissing", "UserProfileMissing", "InsufficientDiskSpace", "EnvironmentVariablesPathMissingEntries", "DomainAccountServicesFound", "InvalidIp", "RemoteDesktopServicesDisabled", "WindowsModulesInstallerDisabled", "AmazonSsmAgentEnabled", "UnsupportedSecurityProtocol", "MultipleUserProfiles", "StagedAppxPackage", "UnsupportedOsUpgrade", "InsufficientRearmCount", "ProtocolOSIncompatibility", "MemoryIntegrityIncompatibility", "RestrictedDriveLetterInUse"],
    #             error_message: "Description"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeWorkspaceImagesResult]
    def describe_workspace_images(params = {}, options = {})
      request = build_request(:describe_workspace_images, params)
      request.send_request(options)
    end

    # <p>Describes the snapshots for the specified WorkSpace.</p>
    # @param [Hash, Types::DescribeWorkspaceSnapshotsRequest] params
    # @option params [String] :workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.describe_workspace_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rebuild_snapshots: [
    #       {
    #         snapshot_time: Time.now
    #       }
    #     ],
    #     restore_snapshots: [
    #       {
    #         snapshot_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::DescribeWorkspaceSnapshotsResult]
    def describe_workspace_snapshots(params = {}, options = {})
      request = build_request(:describe_workspace_snapshots, params)
      request.send_request(options)
    end

    # <p>Describes the specified WorkSpaces.</p>
    #          <p>You can filter the results by using the bundle identifier, directory identifier, or
    #          owner, but you can specify only one filter at a time.</p>
    # @param [Hash, Types::DescribeWorkspacesRequest] params
    # @option params [Array<String>] :workspace_ids
    #   <p>The identifiers of the WorkSpaces. You cannot combine this parameter with any other
    #            filter.</p>
    #            <p>Because the <a>CreateWorkspaces</a> operation is asynchronous, the identifier
    #            it returns is not immediately available. If you immediately call <a>DescribeWorkspaces</a> with this identifier, no information is returned.</p>
    # @option params [String] :directory_id
    #   <p>The identifier of the directory. In addition, you can optionally specify a specific
    #            directory user (see <code>UserName</code>). You cannot combine this parameter with any
    #            other filter.</p>
    # @option params [String] :user_name
    #   <p>The name of the directory user. You must specify this parameter with
    #               <code>DirectoryId</code>.</p>
    # @option params [String] :bundle_id
    #   <p>The identifier of the bundle. All WorkSpaces that are created from this bundle are
    #            retrieved. You cannot combine this parameter with any other filter.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return.</p>
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    # @option params [String] :workspace_name
    #   <p>The name of the user-decoupled WorkSpace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_ids: ["WorkspaceId"],
    #     directory_id: "DirectoryId",
    #     user_name: "UserName",
    #     bundle_id: "BundleId",
    #     limit: 1,
    #     next_token: "PaginationToken",
    #     workspace_name: "WorkspaceName"
    #   }
    #   options = {}
    #   response = client.describe_workspaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspaces: [
    #       {
    #         workspace_id: "WorkspaceId",
    #         directory_id: "DirectoryId",
    #         user_name: "UserName",
    #         ip_address: "IpAddress",
    #         state: "PENDING" # One of: ["PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "RESTORING", "MAINTENANCE", "ADMIN_MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "UPDATING", "STOPPING", "STOPPED", "ERROR"],
    #         bundle_id: "BundleId",
    #         subnet_id: "SubnetId",
    #         error_message: "Description",
    #         error_code: "WorkspaceErrorCode",
    #         computer_name: "ComputerName",
    #         volume_encryption_key: "VolumeEncryptionKey",
    #         user_volume_encryption_enabled: false,
    #         root_volume_encryption_enabled: false,
    #         workspace_name: "WorkspaceName",
    #         workspace_properties: {
    #           running_mode: "AUTO_STOP" # One of: ["AUTO_STOP", "ALWAYS_ON", "MANUAL"],
    #           running_mode_auto_stop_timeout_in_minutes: 1,
    #           root_volume_size_gib: 1,
    #           user_volume_size_gib: 1,
    #           compute_type_name: "VALUE" # One of: ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GENERALPURPOSE_4XLARGE", "GENERALPURPOSE_8XLARGE", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"],
    #           protocols: ["PCOIP" # One of: ["PCOIP", "WSP"]],
    #           operating_system_name: "AMAZON_LINUX_2" # One of: ["AMAZON_LINUX_2", "UBUNTU_18_04", "UBUNTU_20_04", "UBUNTU_22_04", "UNKNOWN", "WINDOWS_10", "WINDOWS_11", "WINDOWS_7", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "RHEL_8", "ROCKY_8"],
    #           global_accelerator: {
    #             mode: "ENABLED_AUTO" # One of: ["ENABLED_AUTO", "DISABLED", "INHERITED"], # required
    #             preferred_protocol: "TCP" # One of: ["TCP", "NONE", "INHERITED"]
    #           }
    #         },
    #         modification_states: [
    #           {
    #             resource: "ROOT_VOLUME" # One of: ["ROOT_VOLUME", "USER_VOLUME", "COMPUTE_TYPE"],
    #             state: "UPDATE_INITIATED" # One of: ["UPDATE_INITIATED", "UPDATE_IN_PROGRESS"]
    #           }
    #         ],
    #         related_workspaces: [
    #           {
    #             workspace_id: "WorkspaceId",
    #             region: "Region",
    #             state: "PENDING" # One of: ["PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "RESTORING", "MAINTENANCE", "ADMIN_MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "UPDATING", "STOPPING", "STOPPED", "ERROR"],
    #             type: "PRIMARY" # One of: ["PRIMARY", "STANDBY"]
    #           }
    #         ],
    #         data_replication_settings: {
    #           data_replication: "NO_REPLICATION" # One of: ["NO_REPLICATION", "PRIMARY_AS_SOURCE"],
    #           recovery_snapshot_time: Time.now
    #         },
    #         standby_workspaces_properties: [
    #           {
    #             standby_workspace_id: "WorkspaceId",
    #             data_replication: "NO_REPLICATION" # One of: ["NO_REPLICATION", "PRIMARY_AS_SOURCE"],
    #             recovery_snapshot_time: Time.now
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeWorkspacesResult]
    def describe_workspaces(params = {}, options = {})
      request = build_request(:describe_workspaces, params)
      request.send_request(options)
    end

    # <p>Describes the connection status of the specified WorkSpaces.</p>
    # @param [Hash, Types::DescribeWorkspacesConnectionStatusRequest] params
    # @option params [Array<String>] :workspace_ids
    #   <p>The identifiers of the WorkSpaces. You can specify up to 25 WorkSpaces.</p>
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_ids: ["WorkspaceId"],
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_workspaces_connection_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspaces_connection_status: [
    #       {
    #         workspace_id: "WorkspaceId",
    #         connection_state: "CONNECTED" # One of: ["CONNECTED", "DISCONNECTED", "UNKNOWN"],
    #         connection_state_check_timestamp: Time.now,
    #         last_known_user_connection_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeWorkspacesConnectionStatusResult]
    def describe_workspaces_connection_status(params = {}, options = {})
      request = build_request(:describe_workspaces_connection_status, params)
      request.send_request(options)
    end

    # <p>Retrieves a list that describes the streaming sessions for a specified pool.</p>
    # @param [Hash, Types::DescribeWorkspacesPoolSessionsRequest] params
    # @option params [String] :pool_id
    #   <p>The identifier of the pool.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user.</p>
    # @option params [Integer] :limit
    #   <p>The maximum size of each page of results. The default value is 20 and the maximum value
    #            is 50.</p>
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated, 
    #            provide this token to receive the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_id: "WorkspacesPoolId", # required
    #     user_id: "WorkspacesPoolUserId",
    #     limit: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_workspaces_pool_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sessions: [
    #       {
    #         authentication_type: "SAML" # One of: ["SAML"],
    #         connection_state: "CONNECTED" # One of: ["CONNECTED", "NOT_CONNECTED"],
    #         session_id: "AmazonUuid", # required
    #         instance_id: "SessionInstanceId",
    #         pool_id: "WorkspacesPoolId", # required
    #         expiration_time: Time.now,
    #         network_access_configuration: {
    #           eni_private_ip_address: "NonEmptyString",
    #           eni_id: "NonEmptyString"
    #         },
    #         start_time: Time.now,
    #         user_id: "WorkspacesPoolUserId", # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeWorkspacesPoolSessionsResult]
    def describe_workspaces_pool_sessions(params = {}, options = {})
      request = build_request(:describe_workspaces_pool_sessions, params)
      request.send_request(options)
    end

    # <p>Describes the specified WorkSpaces Pools.</p>
    # @param [Hash, Types::DescribeWorkspacesPoolsRequest] params
    # @option params [Array<String>] :pool_ids
    #   <p>The identifier of the WorkSpaces Pools.</p>
    # @option params [Array<Types::DescribeWorkspacesPoolsFilter>] :filters
    #   <p>The filter conditions for the WorkSpaces Pool to return.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return.</p>
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated, 
    #            provide this token to receive the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_ids: ["WorkspacesPoolId"],
    #     filters: [
    #       {
    #         name: "PoolName" # One of: ["PoolName"], # required
    #         values: ["DescribeWorkspacesPoolsFilterValue"], # required
    #         operator: "EQUALS" # One of: ["EQUALS", "NOTEQUALS", "CONTAINS", "NOTCONTAINS"], # required
    #       }
    #     ],
    #     limit: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_workspaces_pools(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspaces_pools: [
    #       {
    #         pool_id: "WorkspacesPoolId", # required
    #         pool_arn: "ARN", # required
    #         capacity_status: { # required
    #           available_user_sessions: 1, # required
    #           desired_user_sessions: 1, # required
    #           actual_user_sessions: 1, # required
    #           active_user_sessions: 1, # required
    #         },
    #         pool_name: "WorkspacesPoolName", # required
    #         description: "UpdateDescription",
    #         state: "CREATING" # One of: ["CREATING", "DELETING", "RUNNING", "STARTING", "STOPPED", "STOPPING", "UPDATING"], # required
    #         created_at: Time.now, # required
    #         bundle_id: "BundleId", # required
    #         directory_id: "DirectoryId", # required
    #         errors: [
    #           {
    #             error_code: "IAM_SERVICE_ROLE_IS_MISSING" # One of: ["IAM_SERVICE_ROLE_IS_MISSING", "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "WORKSPACES_POOL_STOPPED", "WORKSPACES_POOL_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR", "DOMAIN_JOIN_ERROR_SECRET_ACTION_PERMISSION_IS_MISSING", "DOMAIN_JOIN_ERROR_SECRET_DECRYPTION_FAILURE", "DOMAIN_JOIN_ERROR_SECRET_STATE_INVALID", "DOMAIN_JOIN_ERROR_SECRET_NOT_FOUND", "DOMAIN_JOIN_ERROR_SECRET_VALUE_KEY_NOT_FOUND", "DOMAIN_JOIN_ERROR_SECRET_INVALID", "BUNDLE_NOT_FOUND", "DIRECTORY_NOT_FOUND", "INSUFFICIENT_PERMISSIONS_ERROR", "DEFAULT_OU_IS_MISSING"],
    #             error_message: "ErrorMessage"
    #           }
    #         ],
    #         application_settings: {
    #           status: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #           settings_group: "SettingsGroup",
    #           s3_bucket_name: "S3BucketName"
    #         },
    #         timeout_settings: {
    #           disconnect_timeout_in_seconds: 1,
    #           idle_disconnect_timeout_in_seconds: 1,
    #           max_user_duration_in_seconds: 1
    #         },
    #         running_mode: "AUTO_STOP" # One of: ["AUTO_STOP", "ALWAYS_ON"], # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeWorkspacesPoolsResult]
    def describe_workspaces_pools(params = {}, options = {})
      request = build_request(:describe_workspaces_pools, params)
      request.send_request(options)
    end

    # <p>Disassociates a connection alias from a directory. Disassociating a connection alias
    #          disables cross-Region redirection between two directories in different Regions. For more
    #          information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    #          <note>
    #             <p>Before performing this operation, call <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html">
    #                DescribeConnectionAliases</a> to make sure that the current state of the
    #             connection alias is <code>CREATED</code>.</p>
    #          </note>
    # @param [Hash, Types::DisassociateConnectionAliasRequest] params
    # @option params [String] :alias_id
    #   <p>The identifier of the connection alias to disassociate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias_id: "ConnectionAliasId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_connection_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateConnectionAliasResult]
    def disassociate_connection_alias(params = {}, options = {})
      request = build_request(:disassociate_connection_alias, params)
      request.send_request(options)
    end

    # <p>Disassociates the specified IP access control group from the specified directory.</p>
    # @param [Hash, Types::DisassociateIpGroupsRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    # @option params [Array<String>] :group_ids
    #   <p>The identifiers of one or more IP access control groups.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     group_ids: ["IpGroupId"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_ip_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateIpGroupsResult]
    def disassociate_ip_groups(params = {}, options = {})
      request = build_request(:disassociate_ip_groups, params)
      request.send_request(options)
    end

    # <p>Disassociates the specified application from a WorkSpace.</p>
    # @param [Hash, Types::DisassociateWorkspaceApplicationRequest] params
    # @option params [String] :workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    # @option params [String] :application_id
    #   <p>The identifier of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     application_id: "WorkSpaceApplicationId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_workspace_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association: {
    #       associated_resource_id: "NonEmptyString",
    #       associated_resource_type: "APPLICATION" # One of: ["APPLICATION"],
    #       created: Time.now,
    #       last_updated_time: Time.now,
    #       state: "PENDING_INSTALL" # One of: ["PENDING_INSTALL", "PENDING_INSTALL_DEPLOYMENT", "PENDING_UNINSTALL", "PENDING_UNINSTALL_DEPLOYMENT", "INSTALLING", "UNINSTALLING", "ERROR", "COMPLETED", "REMOVED"],
    #       state_reason: {
    #         error_code: "ValidationError.InsufficientDiskSpace" # One of: ["ValidationError.InsufficientDiskSpace", "ValidationError.InsufficientMemory", "ValidationError.UnsupportedOperatingSystem", "DeploymentError.InternalServerError", "DeploymentError.WorkspaceUnreachable"],
    #         error_message: "String2048"
    #       },
    #       workspace_id: "WorkspaceId"
    #     }
    #   }
    # @return [Types::DisassociateWorkspaceApplicationResult]
    def disassociate_workspace_application(params = {}, options = {})
      request = build_request(:disassociate_workspace_application, params)
      request.send_request(options)
    end

    # <p>Retrieves account link information.</p>
    # @param [Hash, Types::GetAccountLinkRequest] params
    # @option params [String] :link_id
    #   <p>The identifier of the account to link.</p>
    # @option params [String] :linked_account_id
    #   <p>The identifier of the account link</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     link_id: "LinkId",
    #     linked_account_id: "AwsAccount"
    #   }
    #   options = {}
    #   response = client.get_account_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_link: {
    #       account_link_id: "LinkId",
    #       account_link_status: "LINKED" # One of: ["LINKED", "LINKING_FAILED", "LINK_NOT_FOUND", "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT", "REJECTED"],
    #       source_account_id: "AwsAccount",
    #       target_account_id: "AwsAccount"
    #     }
    #   }
    # @return [Types::GetAccountLinkResult]
    def get_account_link(params = {}, options = {})
      request = build_request(:get_account_link, params)
      request.send_request(options)
    end

    # <p>Imports client branding. Client branding allows you to customize your WorkSpace's client
    #          login portal. You can tailor your login portal company logo, the support email address,
    #          support link, link to reset password, and a custom message for users trying to sign
    #          in.</p>
    #          <p>After you import client branding, the default branding experience for the specified
    #          platform type is replaced with the imported experience</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must specify at least one platform type when importing client
    #                   branding.</p>
    #                </li>
    #                <li>
    #                   <p>You can import up to 6 MB of data with each request. If your request exceeds
    #                   this limit, you can import client branding for different platform types using
    #                   separate requests.</p>
    #                </li>
    #                <li>
    #                   <p>In each platform type, the <code>SupportEmail</code> and
    #                      <code>SupportLink</code> parameters are mutually exclusive. You can specify
    #                   only one parameter for each platform type, but not both.</p>
    #                </li>
    #                <li>
    #                   <p>Imported data can take up to a minute to appear in the WorkSpaces
    #                   client.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::ImportClientBrandingRequest] params
    # @option params [String] :resource_id
    #   <p>The directory identifier of the WorkSpace for which you want to import client
    #            branding.</p>
    # @option params [Types::DefaultImportClientBrandingAttributes] :device_type_windows
    #   <p>The branding information to import for Windows devices.</p>
    # @option params [Types::DefaultImportClientBrandingAttributes] :device_type_osx
    #   <p>The branding information to import for macOS devices.</p>
    # @option params [Types::DefaultImportClientBrandingAttributes] :device_type_android
    #   <p>The branding information to import for Android devices.</p>
    # @option params [Types::IosImportClientBrandingAttributes] :device_type_ios
    #   <p>The branding information to import for iOS devices.</p>
    # @option params [Types::DefaultImportClientBrandingAttributes] :device_type_linux
    #   <p>The branding information to import for Linux devices.</p>
    # @option params [Types::DefaultImportClientBrandingAttributes] :device_type_web
    #   <p>The branding information to import for web access.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "DirectoryId", # required
    #     device_type_windows: {
    #       logo: "data",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     },
    #     device_type_osx: {
    #       logo: "data",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     },
    #     device_type_android: {
    #       logo: "data",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     },
    #     device_type_ios: {
    #       logo: "data",
    #       logo2x: "data",
    #       logo3x: "data",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     },
    #     device_type_linux: {
    #       logo: "data",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     },
    #     device_type_web: {
    #       logo: "data",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.import_client_branding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_type_windows: {
    #       logo_url: "ClientUrl",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     },
    #     device_type_osx: {
    #       logo_url: "ClientUrl",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     },
    #     device_type_android: {
    #       logo_url: "ClientUrl",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     },
    #     device_type_ios: {
    #       logo_url: "ClientUrl",
    #       logo2x_url: "ClientUrl",
    #       logo3x_url: "ClientUrl",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     },
    #     device_type_linux: {
    #       logo_url: "ClientUrl",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     },
    #     device_type_web: {
    #       logo_url: "ClientUrl",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage"
    #       }
    #     }
    #   }
    # @return [Types::ImportClientBrandingResult]
    def import_client_branding(params = {}, options = {})
      request = build_request(:import_client_branding, params)
      request.send_request(options)
    end

    # <p>Imports the specified Windows 10 or 11 Bring Your Own License (BYOL)
    #          image into Amazon WorkSpaces using EC2 Image Builder. The image must be an already licensed image that is
    #          in your Amazon Web Services account, and you must own the image. For more information about
    #          creating BYOL images, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html"> Bring Your Own Windows
    #             Desktop Licenses</a>.
    #       </p>
    # @param [Hash, Types::ImportCustomWorkspaceImageRequest] params
    # @option params [String] :image_name
    #   <p>The name of the WorkSpace image.</p>
    # @option params [String] :image_description
    #   <p>The description of the WorkSpace image.</p>
    # @option params [String] :compute_type
    #   <p>The supported compute type for the WorkSpace image.</p>
    # @option params [String] :protocol
    #   <p>The supported protocol for the WorkSpace image. Windows 11 does not support PCOIP protocol.</p>
    # @option params [Types::ImageSourceIdentifier] :image_source
    #   <p>The options for image import source.</p>
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The infrastructure configuration ARN that specifies how the WorkSpace image is built.</p>
    # @option params [String] :platform
    #   <p>The platform for the WorkSpace image source.</p>
    # @option params [String] :os_version
    #   <p>The OS version for the WorkSpace image source.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The resource tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     image_name: "WorkspaceImageName", # required
    #     image_description: "WorkspaceImageDescription", # required
    #     compute_type: "BASE" # One of: ["BASE", "GRAPHICS_G4DN"], # required
    #     protocol: "PCOIP" # One of: ["PCOIP", "DCV", "BYOP"], # required
    #     image_source: { # required
    #       # One of:
    #       ec2_import_task_id: "Ec2ImportTaskId",
    #       image_build_version_arn: "ImageBuildVersionArn",
    #       ec2_image_id: "Ec2ImageId"
    #     },
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #     platform: "WINDOWS" # One of: ["WINDOWS"], # required
    #     os_version: "Windows_10" # One of: ["Windows_10", "Windows_11"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.import_custom_workspace_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_id: "WorkspaceImageId",
    #     state: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "ERROR"]
    #   }
    # @return [Types::ImportCustomWorkspaceImageResult]
    def import_custom_workspace_image(params = {}, options = {})
      request = build_request(:import_custom_workspace_image, params)
      request.send_request(options)
    end

    # <p>Imports the specified Windows 10 or 11 Bring Your Own License (BYOL) 
    #          image into Amazon WorkSpaces. The image must be an already licensed Amazon EC2 image that is 
    #          in your Amazon Web Services account, and you must own the image. For more information about 
    #          creating BYOL images, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html"> Bring Your Own Windows
    #             Desktop Licenses</a>.</p>
    # @param [Hash, Types::ImportWorkspaceImageRequest] params
    # @option params [String] :ec2_image_id
    #   <p>The identifier of the EC2 image.</p>
    # @option params [String] :ingestion_process
    #   <p>The ingestion process to be used when importing the image, depending on which protocol
    #            you want to use for your BYOL Workspace image, either PCoIP, WSP, or 
    #            bring your own protocol (BYOP). To use DCV, specify a value that ends in 
    #            <code>_WSP</code>. To use PCoIP, specify a value that does not end in <code>_WSP</code>. 
    #            To use BYOP, specify a value that ends in <code>_BYOP</code>.</p>
    #            <p>For non-GPU-enabled bundles (bundles other than Graphics or GraphicsPro), specify 
    #            <code>BYOL_REGULAR</code>, <code>BYOL_REGULAR_WSP</code>, or <code>BYOL_REGULAR_BYOP</code>, 
    #            depending on the protocol.</p>
    #            <note>
    #               <p>The <code>BYOL_REGULAR_BYOP</code> and <code>BYOL_GRAPHICS_G4DN_BYOP</code> values
    #               are only supported by Amazon WorkSpaces Core. Contact your account team to be
    #               allow-listed to use these values. For more information, see <a href="http://aws.amazon.com/workspaces/core/">Amazon WorkSpaces Core</a>.</p>
    #            </note>
    # @option params [String] :image_name
    #   <p>The name of the WorkSpace image.</p>
    # @option params [String] :image_description
    #   <p>The description of the WorkSpace image.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>
    # @option params [Array<String>] :applications
    #   <p>If specified, the version of Microsoft Office to subscribe to. Valid only for Windows 10 and 11
    #            BYOL images. For more information about subscribing to Office for BYOL images, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html"> Bring
    #               Your Own Windows Desktop Licenses</a>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Although this parameter is an array, only one item is allowed at this
    #                     time.</p>
    #                  </li>
    #                  <li>
    #                     <p>During the image import process, non-GPU DCV (formerly WSP) WorkSpaces with Windows 11 support
    #                     only <code>Microsoft_Office_2019</code>. GPU DCV (formerly WSP) WorkSpaces with Windows 11 do not
    #                     support Office installation.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     ec2_image_id: "Ec2ImageId", # required
    #     ingestion_process: "BYOL_REGULAR" # One of: ["BYOL_REGULAR", "BYOL_GRAPHICS", "BYOL_GRAPHICSPRO", "BYOL_GRAPHICS_G4DN", "BYOL_REGULAR_WSP", "BYOL_GRAPHICS_G4DN_WSP", "BYOL_REGULAR_BYOP", "BYOL_GRAPHICS_G4DN_BYOP"], # required
    #     image_name: "WorkspaceImageName", # required
    #     image_description: "WorkspaceImageDescription", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     applications: ["Microsoft_Office_2016" # One of: ["Microsoft_Office_2016", "Microsoft_Office_2019"]]
    #   }
    #   options = {}
    #   response = client.import_workspace_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_id: "WorkspaceImageId"
    #   }
    # @return [Types::ImportWorkspaceImageResult]
    def import_workspace_image(params = {}, options = {})
      request = build_request(:import_workspace_image, params)
      request.send_request(options)
    end

    # <p>Lists all account links.</p>
    # @param [Hash, Types::ListAccountLinksRequest] params
    # @option params [Array<String>] :link_status_filter
    #   <p>Filters the account based on their link status.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of accounts to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     link_status_filter: ["LINKED" # One of: ["LINKED", "LINKING_FAILED", "LINK_NOT_FOUND", "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT", "REJECTED"]],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_account_links(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_links: [
    #       {
    #         account_link_id: "LinkId",
    #         account_link_status: "LINKED" # One of: ["LINKED", "LINKING_FAILED", "LINK_NOT_FOUND", "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT", "REJECTED"],
    #         source_account_id: "AwsAccount",
    #         target_account_id: "AwsAccount"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAccountLinksResult]
    def list_account_links(params = {}, options = {})
      request = build_request(:list_account_links, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks, that you can use
    #          for the network management interface when you enable Bring Your Own License (BYOL). </p>
    #          <p>This operation can be run only by Amazon Web Services accounts that are enabled for BYOL.
    #          If your account isn't enabled for BYOL, you'll receive an
    #             <code>AccessDeniedException</code> error.</p>
    #          <p>The management network interface is connected to a secure Amazon WorkSpaces management
    #          network. It is used for interactive streaming of the WorkSpace desktop to Amazon WorkSpaces
    #          clients, and to allow Amazon WorkSpaces to manage the WorkSpace.</p>
    # @param [Hash, Types::ListAvailableManagementCidrRangesRequest] params
    # @option params [String] :management_cidr_range_constraint
    #   <p>The IP address range to search. Specify an IP address range that is compatible with your
    #            network and in CIDR notation (that is, specify the range as an IPv4 CIDR block).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     management_cidr_range_constraint: "ManagementCidrRangeConstraint", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_available_management_cidr_ranges(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     management_cidr_ranges: ["DedicatedTenancyManagementCidrRange"],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAvailableManagementCidrRangesResult]
    def list_available_management_cidr_ranges(params = {}, options = {})
      request = build_request(:list_available_management_cidr_ranges, params)
      request.send_request(options)
    end

    # <p>Migrates a WorkSpace from one operating system or bundle type to another, while
    #          retaining the data on the user volume.</p>
    #          <p>The migration process recreates the WorkSpace by using a new root volume from the target
    #          bundle image and the user volume from the last available snapshot of the original
    #          WorkSpace. During migration, the original <code>D:\Users\%USERNAME%</code> user profile
    #          folder is renamed to <code>D:\Users\%USERNAME%MMddyyTHHmmss%.NotMigrated</code>. A new
    #             <code>D:\Users\%USERNAME%\</code> folder is generated by the new OS. Certain files in
    #          the old user profile are moved to the new user profile.</p>
    #          <p>For available migration scenarios, details about what happens during migration, and best
    #          practices, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/migrate-workspaces.html">Migrate a
    #          WorkSpace</a>.</p>
    # @param [Hash, Types::MigrateWorkspaceRequest] params
    # @option params [String] :source_workspace_id
    #   <p>The identifier of the WorkSpace to migrate from.</p>
    # @option params [String] :bundle_id
    #   <p>The identifier of the target bundle type to migrate the WorkSpace to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_workspace_id: "WorkspaceId", # required
    #     bundle_id: "BundleId", # required
    #   }
    #   options = {}
    #   response = client.migrate_workspace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_workspace_id: "WorkspaceId",
    #     target_workspace_id: "WorkspaceId"
    #   }
    # @return [Types::MigrateWorkspaceResult]
    def migrate_workspace(params = {}, options = {})
      request = build_request(:migrate_workspace, params)
      request.send_request(options)
    end

    # <p>Modifies the configuration of Bring Your Own License (BYOL) for the specified
    #          account.</p>
    # @param [Hash, Types::ModifyAccountRequest] params
    # @option params [String] :dedicated_tenancy_support
    #   <p>The status of BYOL.</p>
    # @option params [String] :dedicated_tenancy_management_cidr_range
    #   <p>The IP address range, specified as an IPv4 CIDR block, for the management network
    #            interface. Specify an IP address range that is compatible with your network and in CIDR
    #            notation (that is, specify the range as an IPv4 CIDR block). The CIDR block size must be
    #            /16 (for example, 203.0.113.25/16). It must also be specified as available by the
    #               <code>ListAvailableManagementCidrRanges</code> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dedicated_tenancy_support: "ENABLED" # One of: ["ENABLED"],
    #     dedicated_tenancy_management_cidr_range: "DedicatedTenancyManagementCidrRange"
    #   }
    #   options = {}
    #   response = client.modify_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "Message"
    #   }
    # @return [Types::ModifyAccountResult]
    def modify_account(params = {}, options = {})
      request = build_request(:modify_account, params)
      request.send_request(options)
    end

    # <p>Modifies the properties of the certificate-based authentication you want
    #          to use with your WorkSpaces.</p>
    # @param [Hash, Types::ModifyCertificateBasedAuthPropertiesRequest] params
    # @option params [String] :resource_id
    #   <p>The resource identifiers, in the form of directory IDs.</p>
    # @option params [Types::CertificateBasedAuthProperties] :certificate_based_auth_properties
    #   <p>The properties of the certificate-based authentication.</p>
    # @option params [Array<String>] :properties_to_delete
    #   <p>The properties of the certificate-based authentication you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "DirectoryId", # required
    #     certificate_based_auth_properties: {
    #       status: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #       certificate_authority_arn: "CertificateAuthorityArn"
    #     },
    #     properties_to_delete: ["CERTIFICATE_BASED_AUTH_PROPERTIES_CERTIFICATE_AUTHORITY_ARN" # One of: ["CERTIFICATE_BASED_AUTH_PROPERTIES_CERTIFICATE_AUTHORITY_ARN"]]
    #   }
    #   options = {}
    #   response = client.modify_certificate_based_auth_properties(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ModifyCertificateBasedAuthPropertiesResult]
    def modify_certificate_based_auth_properties(params = {}, options = {})
      request = build_request(:modify_certificate_based_auth_properties, params)
      request.send_request(options)
    end

    # <p>Modifies the properties of the specified Amazon WorkSpaces clients.</p>
    # @param [Hash, Types::ModifyClientPropertiesRequest] params
    # @option params [String] :resource_id
    #   <p>The resource identifiers, in the form of directory IDs.</p>
    # @option params [Types::ClientProperties] :client_properties
    #   <p>Information about the Amazon WorkSpaces client.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "NonEmptyString", # required
    #     client_properties: { # required
    #       reconnect_enabled: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       log_upload_enabled: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    #   options = {}
    #   response = client.modify_client_properties(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ModifyClientPropertiesResult]
    def modify_client_properties(params = {}, options = {})
      request = build_request(:modify_client_properties, params)
      request.send_request(options)
    end

    # <p>Modifies the endpoint encryption mode that allows you to configure the specified
    #          directory between Standard TLS and FIPS 140-2 validated mode. </p>
    # @param [Hash, Types::ModifyEndpointEncryptionModeRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier of the directory.</p>
    # @option params [String] :endpoint_encryption_mode
    #   <p>The encryption mode used for endpoint connections when streaming to WorkSpaces Personal
    #            or WorkSpace Pools.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     endpoint_encryption_mode: "STANDARD_TLS" # One of: ["STANDARD_TLS", "FIPS_VALIDATED"], # required
    #   }
    #   options = {}
    #   response = client.modify_endpoint_encryption_mode(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ModifyEndpointEncryptionModeResponse]
    def modify_endpoint_encryption_mode(params = {}, options = {})
      request = build_request(:modify_endpoint_encryption_mode, params)
      request.send_request(options)
    end

    # <p>Modifies multiple properties related to SAML 2.0 authentication, including the enablement status, 
    #          user access URL, and relay state parameter name that are used for configuring federation with an 
    #          SAML 2.0 identity provider.</p>
    # @param [Hash, Types::ModifySamlPropertiesRequest] params
    # @option params [String] :resource_id
    #   <p>The directory identifier for which you want to configure SAML properties.</p>
    # @option params [Types::SamlProperties] :saml_properties
    #   <p>The properties for configuring SAML 2.0 authentication.</p>
    # @option params [Array<String>] :properties_to_delete
    #   <p>The SAML properties to delete as part of your request.</p>
    #            <p>Specify one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SAML_PROPERTIES_USER_ACCESS_URL</code> to delete the user access URL.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME</code> to delete the
    #                  relay state parameter name.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "DirectoryId", # required
    #     saml_properties: {
    #       status: "DISABLED" # One of: ["DISABLED", "ENABLED", "ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK"],
    #       user_access_url: "SamlUserAccessUrl",
    #       relay_state_parameter_name: "NonEmptyString"
    #     },
    #     properties_to_delete: ["SAML_PROPERTIES_USER_ACCESS_URL" # One of: ["SAML_PROPERTIES_USER_ACCESS_URL", "SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME"]]
    #   }
    #   options = {}
    #   response = client.modify_saml_properties(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ModifySamlPropertiesResult]
    def modify_saml_properties(params = {}, options = {})
      request = build_request(:modify_saml_properties, params)
      request.send_request(options)
    end

    # <p>Modifies the self-service WorkSpace management capabilities for your users. For more
    #          information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html">Enable Self-Service WorkSpace Management Capabilities for Your Users</a>.</p>
    # @param [Hash, Types::ModifySelfservicePermissionsRequest] params
    # @option params [String] :resource_id
    #   <p>The identifier of the directory.</p>
    # @option params [Types::SelfservicePermissions] :selfservice_permissions
    #   <p>The permissions to enable or disable self-service capabilities.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "DirectoryId", # required
    #     selfservice_permissions: { # required
    #       restart_workspace: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       increase_volume_size: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       change_compute_type: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       switch_running_mode: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       rebuild_workspace: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    #   options = {}
    #   response = client.modify_selfservice_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ModifySelfservicePermissionsResult]
    def modify_selfservice_permissions(params = {}, options = {})
      request = build_request(:modify_selfservice_permissions, params)
      request.send_request(options)
    end

    # <p>Modifies the specified streaming properties.</p>
    # @param [Hash, Types::ModifyStreamingPropertiesRequest] params
    # @option params [String] :resource_id
    #   <p>The identifier of the resource.</p>
    # @option params [Types::StreamingProperties] :streaming_properties
    #   <p>The streaming properties to configure.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "DirectoryId", # required
    #     streaming_properties: {
    #       streaming_experience_preferred_protocol: "TCP" # One of: ["TCP", "UDP"],
    #       user_settings: [
    #         {
    #           action: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE" # One of: ["CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "PRINTING_TO_LOCAL_DEVICE", "SMART_CARD"], # required
    #           permission: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           maximum_length: 1
    #         }
    #       ],
    #       storage_connectors: [
    #         {
    #           connector_type: "HOME_FOLDER" # One of: ["HOME_FOLDER"], # required
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         }
    #       ],
    #       global_accelerator: {
    #         mode: "ENABLED_AUTO" # One of: ["ENABLED_AUTO", "DISABLED"], # required
    #         preferred_protocol: "TCP" # One of: ["TCP", "NONE"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.modify_streaming_properties(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ModifyStreamingPropertiesResult]
    def modify_streaming_properties(params = {}, options = {})
      request = build_request(:modify_streaming_properties, params)
      request.send_request(options)
    end

    # <p>Specifies which devices and operating systems users can use to access their WorkSpaces.
    #          For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html#control-device-access">
    #             Control Device Access</a>.</p>
    # @param [Hash, Types::ModifyWorkspaceAccessPropertiesRequest] params
    # @option params [String] :resource_id
    #   <p>The identifier of the directory.</p>
    # @option params [Types::WorkspaceAccessProperties] :workspace_access_properties
    #   <p>The device types and operating systems to enable or disable for access.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "DirectoryId", # required
    #     workspace_access_properties: { # required
    #       device_type_windows: "ALLOW" # One of: ["ALLOW", "DENY"],
    #       device_type_osx: "ALLOW" # One of: ["ALLOW", "DENY"],
    #       device_type_web: "ALLOW" # One of: ["ALLOW", "DENY"],
    #       device_type_ios: "ALLOW" # One of: ["ALLOW", "DENY"],
    #       device_type_android: "ALLOW" # One of: ["ALLOW", "DENY"],
    #       device_type_chrome_os: "ALLOW" # One of: ["ALLOW", "DENY"],
    #       device_type_zero_client: "ALLOW" # One of: ["ALLOW", "DENY"],
    #       device_type_linux: "ALLOW" # One of: ["ALLOW", "DENY"],
    #       device_type_work_spaces_thin_client: "ALLOW" # One of: ["ALLOW", "DENY"],
    #       access_endpoint_config: {
    #         access_endpoints: [ # required
    #           {
    #             access_endpoint_type: "STREAMING_WSP" # One of: ["STREAMING_WSP"],
    #             vpc_endpoint_id: "AlphanumericDashUnderscoreNonEmptyString"
    #           }
    #         ],
    #         internet_fallback_protocols: ["PCOIP" # One of: ["PCOIP"]]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.modify_workspace_access_properties(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ModifyWorkspaceAccessPropertiesResult]
    def modify_workspace_access_properties(params = {}, options = {})
      request = build_request(:modify_workspace_access_properties, params)
      request.send_request(options)
    end

    # <p>Modify the default properties used to create WorkSpaces.</p>
    # @param [Hash, Types::ModifyWorkspaceCreationPropertiesRequest] params
    # @option params [String] :resource_id
    #   <p>The identifier of the directory.</p>
    # @option params [Types::WorkspaceCreationProperties] :workspace_creation_properties
    #   <p>The default properties for creating WorkSpaces.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "DirectoryId", # required
    #     workspace_creation_properties: { # required
    #       enable_internet_access: false,
    #       default_ou: "DefaultOu",
    #       custom_security_group_id: "SecurityGroupId",
    #       user_enabled_as_local_administrator: false,
    #       enable_maintenance_mode: false,
    #       instance_iam_role_arn: "ARN"
    #     }
    #   }
    #   options = {}
    #   response = client.modify_workspace_creation_properties(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ModifyWorkspaceCreationPropertiesResult]
    def modify_workspace_creation_properties(params = {}, options = {})
      request = build_request(:modify_workspace_creation_properties, params)
      request.send_request(options)
    end

    # <p>Modifies the specified WorkSpace properties. For important information about how to
    #          modify the size of the root and user volumes, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html"> Modify a WorkSpace</a>.
    #       </p>
    #          <note>
    #             <p>The <code>MANUAL</code> running mode value is only supported by Amazon WorkSpaces
    #             Core. Contact your account team to be allow-listed to use this value. For more
    #             information, see <a href="http://aws.amazon.com/workspaces/core/">Amazon WorkSpaces
    #                Core</a>.</p>
    #          </note>
    # @param [Hash, Types::ModifyWorkspacePropertiesRequest] params
    # @option params [String] :workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    # @option params [Types::WorkspaceProperties] :workspace_properties
    #   <p>The properties of the WorkSpace.</p>
    # @option params [String] :data_replication
    #   <p>Indicates the data replication status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     workspace_properties: {
    #       running_mode: "AUTO_STOP" # One of: ["AUTO_STOP", "ALWAYS_ON", "MANUAL"],
    #       running_mode_auto_stop_timeout_in_minutes: 1,
    #       root_volume_size_gib: 1,
    #       user_volume_size_gib: 1,
    #       compute_type_name: "VALUE" # One of: ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GENERALPURPOSE_4XLARGE", "GENERALPURPOSE_8XLARGE", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"],
    #       protocols: ["PCOIP" # One of: ["PCOIP", "WSP"]],
    #       operating_system_name: "AMAZON_LINUX_2" # One of: ["AMAZON_LINUX_2", "UBUNTU_18_04", "UBUNTU_20_04", "UBUNTU_22_04", "UNKNOWN", "WINDOWS_10", "WINDOWS_11", "WINDOWS_7", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "RHEL_8", "ROCKY_8"],
    #       global_accelerator: {
    #         mode: "ENABLED_AUTO" # One of: ["ENABLED_AUTO", "DISABLED", "INHERITED"], # required
    #         preferred_protocol: "TCP" # One of: ["TCP", "NONE", "INHERITED"]
    #       }
    #     },
    #     data_replication: "NO_REPLICATION" # One of: ["NO_REPLICATION", "PRIMARY_AS_SOURCE"]
    #   }
    #   options = {}
    #   response = client.modify_workspace_properties(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ModifyWorkspacePropertiesResult]
    def modify_workspace_properties(params = {}, options = {})
      request = build_request(:modify_workspace_properties, params)
      request.send_request(options)
    end

    # <p>Sets the state of the specified WorkSpace.</p>
    #          <p>To maintain a WorkSpace without being interrupted, set the WorkSpace state to
    #             <code>ADMIN_MAINTENANCE</code>. WorkSpaces in this state do not respond to requests to
    #          reboot, stop, start, rebuild, or restore. An AutoStop WorkSpace in this state is not
    #          stopped. Users cannot log into a WorkSpace in the <code>ADMIN_MAINTENANCE</code>
    #          state.</p>
    # @param [Hash, Types::ModifyWorkspaceStateRequest] params
    # @option params [String] :workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    # @option params [String] :workspace_state
    #   <p>The WorkSpace state.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     workspace_state: "AVAILABLE" # One of: ["AVAILABLE", "ADMIN_MAINTENANCE"], # required
    #   }
    #   options = {}
    #   response = client.modify_workspace_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ModifyWorkspaceStateResult]
    def modify_workspace_state(params = {}, options = {})
      request = build_request(:modify_workspace_state, params)
      request.send_request(options)
    end

    # <p>Reboots the specified WorkSpaces.</p>
    #          <p>You cannot reboot a WorkSpace unless its state is <code>AVAILABLE</code>,
    #          <code>UNHEALTHY</code>, or <code>REBOOTING</code>. Reboot a WorkSpace in the <code>REBOOTING</code> 
    #          state only if your WorkSpace has been stuck in the <code>REBOOTING</code> state for over 20 minutes.</p>
    #          <p>This operation is asynchronous and returns before the WorkSpaces have rebooted.</p>
    # @param [Hash, Types::RebootWorkspacesRequest] params
    # @option params [Array<Types::RebootRequest>] :reboot_workspace_requests
    #   <p>The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reboot_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.reboot_workspaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_requests: [
    #       {
    #         workspace_id: "WorkspaceId",
    #         error_code: "ErrorType",
    #         error_message: "Description"
    #       }
    #     ]
    #   }
    # @return [Types::RebootWorkspacesResult]
    def reboot_workspaces(params = {}, options = {})
      request = build_request(:reboot_workspaces, params)
      request.send_request(options)
    end

    # <p>Rebuilds the specified WorkSpace.</p>
    #          <p>You cannot rebuild a WorkSpace unless its state is <code>AVAILABLE</code>,
    #             <code>ERROR</code>, <code>UNHEALTHY</code>, <code>STOPPED</code>, or
    #             <code>REBOOTING</code>.</p>
    #          <p>Rebuilding a WorkSpace is a potentially destructive action that can result in the loss
    #          of data. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/reset-workspace.html">Rebuild a
    #          WorkSpace</a>.</p>
    #          <p>This operation is asynchronous and returns before the WorkSpaces have been completely
    #          rebuilt.</p>
    # @param [Hash, Types::RebuildWorkspacesRequest] params
    # @option params [Array<Types::RebuildRequest>] :rebuild_workspace_requests
    #   <p>The WorkSpace to rebuild. You can specify a single WorkSpace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rebuild_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.rebuild_workspaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_requests: [
    #       {
    #         workspace_id: "WorkspaceId",
    #         error_code: "ErrorType",
    #         error_message: "Description"
    #       }
    #     ]
    #   }
    # @return [Types::RebuildWorkspacesResult]
    def rebuild_workspaces(params = {}, options = {})
      request = build_request(:rebuild_workspaces, params)
      request.send_request(options)
    end

    # <p>Registers the specified directory. This operation is asynchronous and returns before the
    #          WorkSpace directory is registered. If this is the first time you are registering a
    #          directory, you will need to create the workspaces_DefaultRole role before you can register
    #          a directory. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role">
    #             Creating the workspaces_DefaultRole Role</a>.</p>
    # @param [Hash, Types::RegisterWorkspaceDirectoryRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the directory. You cannot register a directory if it does not have a
    #            status of Active. If the directory does not have a status of Active, you will receive an
    #            InvalidResourceStateException error. If you have already registered the maximum number of
    #            directories that you can register with Amazon WorkSpaces, you will receive a
    #            ResourceLimitExceededException error. Deregister directories that you are not using for
    #            WorkSpaces, and try again.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The identifiers of the subnets for your virtual private cloud (VPC). Make sure that the
    #            subnets are in supported Availability Zones. The subnets must also be in separate
    #            Availability Zones. If these conditions are not met, you will receive an
    #            OperationNotSupportedException error.</p>
    # @option params [Boolean] :enable_self_service
    #   <p>Indicates whether self-service capabilities are enabled or disabled.</p>
    # @option params [String] :tenancy
    #   <p>Indicates whether your WorkSpace directory is dedicated or shared. To use Bring Your Own
    #            License (BYOL) images, this value must be set to <code>DEDICATED</code> and your Amazon Web Services account must be enabled for BYOL. If your account has not been enabled for
    #            BYOL, you will receive an InvalidParameterValuesException error. For more information about
    #            BYOL images, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html">Bring Your Own Windows
    #               Desktop Images</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags associated with the directory.</p>
    # @option params [String] :workspace_directory_name
    #   <p>The name of the directory to register.</p>
    # @option params [String] :workspace_directory_description
    #   <p>Description of the directory to register.</p>
    # @option params [String] :user_identity_type
    #   <p>The type of identity management the user is using.</p>
    # @option params [String] :idc_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the identity center instance.</p>
    # @option params [Types::MicrosoftEntraConfig] :microsoft_entra_config
    #   <p>The details about Microsoft Entra config.</p>
    # @option params [String] :workspace_type
    #   <p>Indicates whether the directory's WorkSpace type is personal or pools.</p>
    # @option params [Types::ActiveDirectoryConfig] :active_directory_config
    #   <p>The active directory config of the directory.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId",
    #     subnet_ids: ["SubnetId"],
    #     enable_self_service: false,
    #     tenancy: "DEDICATED" # One of: ["DEDICATED", "SHARED"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     workspace_directory_name: "WorkspaceDirectoryName",
    #     workspace_directory_description: "WorkspaceDirectoryDescription",
    #     user_identity_type: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_DIRECTORY_SERVICE", "AWS_IAM_IDENTITY_CENTER"],
    #     idc_instance_arn: "ARN",
    #     microsoft_entra_config: {
    #       tenant_id: "MicrosoftEntraConfigTenantId",
    #       application_config_secret_arn: "SecretsManagerArn"
    #     },
    #     workspace_type: "PERSONAL" # One of: ["PERSONAL", "POOLS"],
    #     active_directory_config: {
    #       domain_name: "DomainName", # required
    #       service_account_secret_arn: "SecretsManagerArn", # required
    #     }
    #   }
    #   options = {}
    #   response = client.register_workspace_directory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_id: "DirectoryId",
    #     state: "REGISTERING" # One of: ["REGISTERING", "REGISTERED", "DEREGISTERING", "DEREGISTERED", "ERROR"]
    #   }
    # @return [Types::RegisterWorkspaceDirectoryResult]
    def register_workspace_directory(params = {}, options = {})
      request = build_request(:register_workspace_directory, params)
      request.send_request(options)
    end

    # <p>Rejects the account link invitation.</p>
    # @param [Hash, Types::RejectAccountLinkInvitationRequest] params
    # @option params [String] :link_id
    #   <p>The identifier of the account link</p>
    # @option params [String] :client_token
    #   <p>The client token of the account link invitation to reject.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     link_id: "LinkId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.reject_account_link_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_link: {
    #       account_link_id: "LinkId",
    #       account_link_status: "LINKED" # One of: ["LINKED", "LINKING_FAILED", "LINK_NOT_FOUND", "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT", "REJECTED"],
    #       source_account_id: "AwsAccount",
    #       target_account_id: "AwsAccount"
    #     }
    #   }
    # @return [Types::RejectAccountLinkInvitationResult]
    def reject_account_link_invitation(params = {}, options = {})
      request = build_request(:reject_account_link_invitation, params)
      request.send_request(options)
    end

    # <p>Restores the specified WorkSpace to its last known healthy state.</p>
    #          <p>You cannot restore a WorkSpace unless its state is <code> AVAILABLE</code>,
    #             <code>ERROR</code>, <code>UNHEALTHY</code>, or <code>STOPPED</code>.</p>
    #          <p>Restoring a WorkSpace is a potentially destructive action that can result in the loss of
    #          data. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/restore-workspace.html">Restore a
    #          WorkSpace</a>.</p>
    #          <p>This operation is asynchronous and returns before the WorkSpace is completely
    #          restored.</p>
    # @param [Hash, Types::RestoreWorkspaceRequest] params
    # @option params [String] :workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.restore_workspace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RestoreWorkspaceResult]
    def restore_workspace(params = {}, options = {})
      request = build_request(:restore_workspace, params)
      request.send_request(options)
    end

    # <p>Removes one or more rules from the specified IP access control group.</p>
    # @param [Hash, Types::RevokeIpRulesRequest] params
    # @option params [String] :group_id
    #   <p>The identifier of the group.</p>
    # @option params [Array<String>] :user_rules
    #   <p>The rules to remove from the group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_id: "IpGroupId", # required
    #     user_rules: ["IpRule"], # required
    #   }
    #   options = {}
    #   response = client.revoke_ip_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RevokeIpRulesResult]
    def revoke_ip_rules(params = {}, options = {})
      request = build_request(:revoke_ip_rules, params)
      request.send_request(options)
    end

    # <p>Starts the specified WorkSpaces.</p>
    #          <p>You cannot start a WorkSpace unless it has a running mode of <code>AutoStop</code> or
    #          <code>Manual</code> and a state of <code>STOPPED</code>.</p>
    # @param [Hash, Types::StartWorkspacesRequest] params
    # @option params [Array<Types::StartRequest>] :start_workspace_requests
    #   <p>The WorkSpaces to start. You can specify up to 25 WorkSpaces.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_workspaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_requests: [
    #       {
    #         workspace_id: "WorkspaceId",
    #         error_code: "ErrorType",
    #         error_message: "Description"
    #       }
    #     ]
    #   }
    # @return [Types::StartWorkspacesResult]
    def start_workspaces(params = {}, options = {})
      request = build_request(:start_workspaces, params)
      request.send_request(options)
    end

    # <p>Starts the specified pool.</p>
    #          <p>You cannot start a pool unless it has a running mode of 
    #          <code>AutoStop</code> and a state of <code>STOPPED</code>.</p>
    # @param [Hash, Types::StartWorkspacesPoolRequest] params
    # @option params [String] :pool_id
    #   <p>The identifier of the pool.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_id: "WorkspacesPoolId", # required
    #   }
    #   options = {}
    #   response = client.start_workspaces_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartWorkspacesPoolResult]
    def start_workspaces_pool(params = {}, options = {})
      request = build_request(:start_workspaces_pool, params)
      request.send_request(options)
    end

    # <p>Stops the specified WorkSpaces.</p>
    #          <p>You cannot stop a WorkSpace unless it has a running mode of <code>AutoStop</code> or
    #          <code>Manual</code> and a state of <code>AVAILABLE</code>, <code>IMPAIRED</code>,
    #          <code>UNHEALTHY</code>, or <code>ERROR</code>.</p>
    # @param [Hash, Types::StopWorkspacesRequest] params
    # @option params [Array<Types::StopRequest>] :stop_workspace_requests
    #   <p>The WorkSpaces to stop. You can specify up to 25 WorkSpaces.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stop_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.stop_workspaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_requests: [
    #       {
    #         workspace_id: "WorkspaceId",
    #         error_code: "ErrorType",
    #         error_message: "Description"
    #       }
    #     ]
    #   }
    # @return [Types::StopWorkspacesResult]
    def stop_workspaces(params = {}, options = {})
      request = build_request(:stop_workspaces, params)
      request.send_request(options)
    end

    # <p>Stops the specified pool.</p>
    #          <p>You cannot stop a WorkSpace pool unless it has a running mode of <code>AutoStop</code> 
    #          and a state of <code>AVAILABLE</code>, <code>IMPAIRED</code>, <code>UNHEALTHY</code>, or <code>ERROR</code>.</p>
    # @param [Hash, Types::StopWorkspacesPoolRequest] params
    # @option params [String] :pool_id
    #   <p>The identifier of the pool.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_id: "WorkspacesPoolId", # required
    #   }
    #   options = {}
    #   response = client.stop_workspaces_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopWorkspacesPoolResult]
    def stop_workspaces_pool(params = {}, options = {})
      request = build_request(:stop_workspaces_pool, params)
      request.send_request(options)
    end

    # <p>Terminates the specified WorkSpaces.</p>
    #          <important>
    #             <p>Terminating a WorkSpace is a permanent action and cannot be undone. The user's data
    #             is destroyed. If you need to archive any user data, contact Amazon Web ServicesSupport before
    #             terminating the WorkSpace.</p>
    #          </important>
    #          <p>You can terminate a WorkSpace that is in any state except <code>SUSPENDED</code>.</p>
    #          <p>This operation is asynchronous and returns before the WorkSpaces have been completely
    #          terminated. After a WorkSpace is terminated, the <code>TERMINATED</code> state is returned
    #          only briefly before the WorkSpace directory metadata is cleaned up, so this state is rarely
    #          returned. To confirm that a WorkSpace is terminated, check for the WorkSpace ID by using
    #             <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaces.html">
    #             DescribeWorkSpaces</a>. If the WorkSpace ID isn't returned, then the WorkSpace has
    #          been successfully terminated.</p>
    #          <note>
    #             <p>Simple AD and AD Connector are made available to you free of charge to use with
    #             WorkSpaces. If there are no WorkSpaces being used with your Simple AD or AD Connector
    #             directory for 30 consecutive days, this directory will be automatically deregistered for
    #             use with Amazon WorkSpaces, and you will be charged for this directory as per the <a href="http://aws.amazon.com/directoryservice/pricing/">Directory Service pricing
    #                terms</a>.</p>
    #             <p>To delete empty directories, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/delete-workspaces-directory.html"> Delete the
    #                Directory for Your WorkSpaces</a>. If you delete your Simple AD or AD Connector
    #             directory, you can always create a new one when you want to start using WorkSpaces
    #             again.</p>
    #          </note>
    # @param [Hash, Types::TerminateWorkspacesRequest] params
    # @option params [Array<Types::TerminateRequest>] :terminate_workspace_requests
    #   <p>The WorkSpaces to terminate. You can specify up to 25 WorkSpaces.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     terminate_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.terminate_workspaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_requests: [
    #       {
    #         workspace_id: "WorkspaceId",
    #         error_code: "ErrorType",
    #         error_message: "Description"
    #       }
    #     ]
    #   }
    # @return [Types::TerminateWorkspacesResult]
    def terminate_workspaces(params = {}, options = {})
      request = build_request(:terminate_workspaces, params)
      request.send_request(options)
    end

    # <p>Terminates the specified pool.</p>
    # @param [Hash, Types::TerminateWorkspacesPoolRequest] params
    # @option params [String] :pool_id
    #   <p>The identifier of the pool.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_id: "WorkspacesPoolId", # required
    #   }
    #   options = {}
    #   response = client.terminate_workspaces_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TerminateWorkspacesPoolResult]
    def terminate_workspaces_pool(params = {}, options = {})
      request = build_request(:terminate_workspaces_pool, params)
      request.send_request(options)
    end

    # <p>Terminates the pool session.</p>
    # @param [Hash, Types::TerminateWorkspacesPoolSessionRequest] params
    # @option params [String] :session_id
    #   <p>The identifier of the pool session.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "AmazonUuid", # required
    #   }
    #   options = {}
    #   response = client.terminate_workspaces_pool_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TerminateWorkspacesPoolSessionResult]
    def terminate_workspaces_pool_session(params = {}, options = {})
      request = build_request(:terminate_workspaces_pool_session, params)
      request.send_request(options)
    end

    # <p>Updates a Amazon Connect client add-in. Use this action to update the name and
    #          endpoint URL of a Amazon Connect client add-in.</p>
    # @param [Hash, Types::UpdateConnectClientAddInRequest] params
    # @option params [String] :add_in_id
    #   <p>The identifier of the client add-in to update.</p>
    # @option params [String] :resource_id
    #   <p>The directory identifier for which the client add-in is configured.</p>
    # @option params [String] :name
    #   <p>The name of the client add-in.</p>
    # @option params [String] :url
    #   <p>The endpoint URL of the Amazon Connect client add-in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     add_in_id: "AmazonUuid", # required
    #     resource_id: "DirectoryId", # required
    #     name: "AddInName",
    #     url: "AddInUrl"
    #   }
    #   options = {}
    #   response = client.update_connect_client_add_in(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateConnectClientAddInResult]
    def update_connect_client_add_in(params = {}, options = {})
      request = build_request(:update_connect_client_add_in, params)
      request.send_request(options)
    end

    # <p>Shares or unshares a connection alias with one account by specifying whether that
    #          account has permission to associate the connection alias with a directory. If the
    #          association permission is granted, the connection alias is shared with that account. If the
    #          association permission is revoked, the connection alias is unshared with the account. For
    #          more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>Before performing this operation, call <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html">
    #                      DescribeConnectionAliases</a> to make sure that the current state of the
    #                   connection alias is <code>CREATED</code>.</p>
    #                </li>
    #                <li>
    #                   <p>To delete a connection alias that has been shared, the shared account must
    #                   first disassociate the connection alias from any directories it has been
    #                   associated with. Then you must unshare the connection alias from the account it
    #                   has been shared with. You can delete a connection alias only after it is no longer
    #                   shared with any accounts or associated with any directories.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::UpdateConnectionAliasPermissionRequest] params
    # @option params [String] :alias_id
    #   <p>The identifier of the connection alias that you want to update permissions for.</p>
    # @option params [Types::ConnectionAliasPermission] :connection_alias_permission
    #   <p>Indicates whether to share or unshare the connection alias with the specified Amazon Web Services account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias_id: "ConnectionAliasId", # required
    #     connection_alias_permission: { # required
    #       shared_account_id: "AwsAccount", # required
    #       allow_association: false, # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_connection_alias_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateConnectionAliasPermissionResult]
    def update_connection_alias_permission(params = {}, options = {})
      request = build_request(:update_connection_alias_permission, params)
      request.send_request(options)
    end

    # <p>Replaces the current rules of the specified IP access control group with the specified
    #          rules.</p>
    # @param [Hash, Types::UpdateRulesOfIpGroupRequest] params
    # @option params [String] :group_id
    #   <p>The identifier of the group.</p>
    # @option params [Array<Types::IpRuleItem>] :user_rules
    #   <p>One or more rules.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_id: "IpGroupId", # required
    #     user_rules: [ # required
    #       {
    #         ip_rule: "IpRule",
    #         rule_desc: "IpRuleDesc"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_rules_of_ip_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateRulesOfIpGroupResult]
    def update_rules_of_ip_group(params = {}, options = {})
      request = build_request(:update_rules_of_ip_group, params)
      request.send_request(options)
    end

    # <p>Updates a WorkSpace bundle with a new image. For more information about updating WorkSpace bundles, see 
    #          <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/update-custom-bundle.html">
    #             Update a Custom WorkSpaces Bundle</a>.</p>
    #          <important>
    #             <p>Existing WorkSpaces aren't automatically updated when you update the bundle that they're 
    #             based on. To update existing WorkSpaces that are based on a bundle that you've updated, you 
    #             must either rebuild the WorkSpaces or delete and recreate them.</p>
    #          </important>
    # @param [Hash, Types::UpdateWorkspaceBundleRequest] params
    # @option params [String] :bundle_id
    #   <p>The identifier of the bundle.</p>
    # @option params [String] :image_id
    #   <p>The identifier of the image.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bundle_id: "BundleId",
    #     image_id: "WorkspaceImageId"
    #   }
    #   options = {}
    #   response = client.update_workspace_bundle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateWorkspaceBundleResult]
    def update_workspace_bundle(params = {}, options = {})
      request = build_request(:update_workspace_bundle, params)
      request.send_request(options)
    end

    # <p>Shares or unshares an image with one account in the same Amazon Web Services Region by
    #          specifying whether that account has permission to copy the image. If the copy image
    #          permission is granted, the image is shared with that account. If the copy image permission
    #          is revoked, the image is unshared with the account.</p>
    #          <p>After an image has been shared, the recipient account can copy the image to other
    #          Regions as needed.</p>
    #          <p>In the China (Ningxia) Region, you can copy images only within the same Region.</p>
    #          <p>In Amazon Web Services GovCloud (US), to copy images to and from other Regions, contact Amazon Web ServicesSupport.</p>
    #          <p>For more information about sharing images, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/share-custom-image.html"> Share or Unshare a Custom
    #             WorkSpaces Image</a>.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>To delete an image that has been shared, you must unshare the image before you
    #                   delete it.</p>
    #                </li>
    #                <li>
    #                   <p>Sharing Bring Your Own License (BYOL) images across Amazon Web Services accounts
    #                   isn't supported at this time in Amazon Web Services GovCloud (US). To share BYOL images
    #                   across accounts in Amazon Web Services GovCloud (US), contact Amazon Web ServicesSupport.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::UpdateWorkspaceImagePermissionRequest] params
    # @option params [String] :image_id
    #   <p>The identifier of the image.</p>
    # @option params [Boolean] :allow_copy_image
    #   <p>The permission to copy the image. This permission can be revoked only after an image has
    #            been shared.</p>
    # @option params [String] :shared_account_id
    #   <p>The identifier of the Amazon Web Services account to share or unshare the image
    #            with.</p>
    #            <important>
    #               <p>Before sharing the image, confirm that you are sharing to the correct Amazon Web Services account ID.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     image_id: "WorkspaceImageId", # required
    #     allow_copy_image: false, # required
    #     shared_account_id: "AwsAccount", # required
    #   }
    #   options = {}
    #   response = client.update_workspace_image_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateWorkspaceImagePermissionResult]
    def update_workspace_image_permission(params = {}, options = {})
      request = build_request(:update_workspace_image_permission, params)
      request.send_request(options)
    end

    # <p>Updates the specified pool.</p>
    # @param [Hash, Types::UpdateWorkspacesPoolRequest] params
    # @option params [String] :pool_id
    #   <p>The identifier of the specified pool to update.</p>
    # @option params [String] :description
    #   <p>Describes the specified pool to update.</p>
    # @option params [String] :bundle_id
    #   <p>The identifier of the bundle.</p>
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    # @option params [Types::Capacity] :capacity
    #   <p>The desired capacity for the pool.</p>
    # @option params [Types::ApplicationSettingsRequest] :application_settings
    #   <p>The persistent application settings for users in the pool.</p>
    # @option params [Types::TimeoutSettings] :timeout_settings
    #   <p>Indicates the timeout settings of the specified pool.</p>
    # @option params [String] :running_mode
    #   <p>The desired running mode for the pool. The running mode can only be updated when the pool is in a stopped state.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_id: "WorkspacesPoolId", # required
    #     description: "UpdateDescription",
    #     bundle_id: "BundleId",
    #     directory_id: "DirectoryId",
    #     capacity: {
    #       desired_user_sessions: 1, # required
    #     },
    #     application_settings: {
    #       status: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #       settings_group: "SettingsGroup"
    #     },
    #     timeout_settings: {
    #       disconnect_timeout_in_seconds: 1,
    #       idle_disconnect_timeout_in_seconds: 1,
    #       max_user_duration_in_seconds: 1
    #     },
    #     running_mode: "AUTO_STOP" # One of: ["AUTO_STOP", "ALWAYS_ON"]
    #   }
    #   options = {}
    #   response = client.update_workspaces_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspaces_pool: {
    #       pool_id: "WorkspacesPoolId", # required
    #       pool_arn: "ARN", # required
    #       capacity_status: { # required
    #         available_user_sessions: 1, # required
    #         desired_user_sessions: 1, # required
    #         actual_user_sessions: 1, # required
    #         active_user_sessions: 1, # required
    #       },
    #       pool_name: "WorkspacesPoolName", # required
    #       description: "UpdateDescription",
    #       state: "CREATING" # One of: ["CREATING", "DELETING", "RUNNING", "STARTING", "STOPPED", "STOPPING", "UPDATING"], # required
    #       created_at: Time.now, # required
    #       bundle_id: "BundleId", # required
    #       directory_id: "DirectoryId", # required
    #       errors: [
    #         {
    #           error_code: "IAM_SERVICE_ROLE_IS_MISSING" # One of: ["IAM_SERVICE_ROLE_IS_MISSING", "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "WORKSPACES_POOL_STOPPED", "WORKSPACES_POOL_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR", "DOMAIN_JOIN_ERROR_SECRET_ACTION_PERMISSION_IS_MISSING", "DOMAIN_JOIN_ERROR_SECRET_DECRYPTION_FAILURE", "DOMAIN_JOIN_ERROR_SECRET_STATE_INVALID", "DOMAIN_JOIN_ERROR_SECRET_NOT_FOUND", "DOMAIN_JOIN_ERROR_SECRET_VALUE_KEY_NOT_FOUND", "DOMAIN_JOIN_ERROR_SECRET_INVALID", "BUNDLE_NOT_FOUND", "DIRECTORY_NOT_FOUND", "INSUFFICIENT_PERMISSIONS_ERROR", "DEFAULT_OU_IS_MISSING"],
    #           error_message: "ErrorMessage"
    #         }
    #       ],
    #       application_settings: {
    #         status: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #         settings_group: "SettingsGroup",
    #         s3_bucket_name: "S3BucketName"
    #       },
    #       timeout_settings: {
    #         disconnect_timeout_in_seconds: 1,
    #         idle_disconnect_timeout_in_seconds: 1,
    #         max_user_duration_in_seconds: 1
    #       },
    #       running_mode: "AUTO_STOP" # One of: ["AUTO_STOP", "ALWAYS_ON"], # required
    #     }
    #   }
    # @return [Types::UpdateWorkspacesPoolResult]
    def update_workspaces_pool(params = {}, options = {})
      request = build_request(:update_workspaces_pool, params)
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
      context[:gem_name] = 'aws-sdk-workspaces'
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

      # @api private
      def protocols
        {
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
