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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:verifiedpermissions)

module Aws::VerifiedPermissions
  # An API client for Aws::VerifiedPermissions.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::VerifiedPermissions
    @identifier = :verifiedpermissions

    add_plugin(::Aws::VerifiedPermissions::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::VerifiedPermissions::EndpointProvider)
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

    # <p>Retrieves information about a group (batch) of policies.</p> <note> <p>The <code>BatchGetPolicy</code> operation doesn't have its own IAM permission. To authorize this operation for Amazon Web Services principals, include the permission <code>verifiedpermissions:GetPolicy</code> in their IAM policies.</p> </note>
    # @param [Hash, Types::BatchGetPolicyInput] params
    # @option params [Array<Types::BatchGetPolicyInputItem>] :requests
    #   <p>An array of up to 100 policies you want information about.</p>
    # @example To retrieve details about a policy
    #   # The following example retrieves information about the specified policy contained in the specified policy store. In this example, the requested policy is a template-linked policy, so it returns the ID of the policy template, and the specific principal and resource used by this policy.
    #   params = {
    #     requests: [
    #       {
    #         policy_id: "PWv5M6d5HePx3gVVLKY1nK",
    #         policy_store_id: "ERZeDpRc34dkYZeb6FZRVC"
    #       },
    #       {
    #         policy_id: "LzFn6KgLWvv4Mbegus35jn",
    #         policy_store_id: "ERZeDpRc34dkYZeb6FZRVC"
    #       },
    #       {
    #         policy_id: "77gLjer8H5o3mvrnMGrSL5",
    #         policy_store_id: "ERZeDpRc34dkYZeb6FZRVC"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_policy(params, options)
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         policy_store_id: "ERZeDpRc34dkYZeb6FZRVC",
    #         policy_id: "PWv5M6d5HePx3gVVLKY1nK",
    #         policy_type: STATIC,
    #         definition: {
    #     "static" => {
    #       "description" => Users can manage account resources in any account they own,
    #       "statement" => permit (principal, action in PhotoFlash::Action::"ManageAccount",resource) when { resource in principal.Account };
    #     }
    #   },
    #         created_date: Time.parse("2024-10-18T18:53:39.258153Z"),
    #         last_updated_date: Time.parse("2024-10-18T18:53:39.258153Z")
    #       },
    #       {
    #         policy_store_id: "ERZeDpRc34dkYZeb6FZRVC",
    #         policy_id: "LzFn6KgLWvv4Mbegus35jn",
    #         policy_type: STATIC,
    #         definition: {
    #     "static" => {
    #       "description" => User alice can't delete any photos.,
    #       "statement" => forbid (principal == PhotoFlash::User::"alice", action in [PhotoFlash::Action::"DeletePhoto"], resource);
    #     }
    #   },
    #         created_date: Time.parse("2024-10-18T18:57:03.305027Z"),
    #         last_updated_date: Time.parse("2024-10-18T18:57:03.305027Z")
    #       },
    #       {
    #         policy_store_id: "ERZeDpRc34dkYZeb6FZRVC",
    #         policy_id: "77gLjer8H5o3mvrnMGrSL5",
    #         policy_type: STATIC,
    #         definition: {
    #     "static" => {
    #       "description" => User alice can view and delete photos.,
    #       "statement" => permit (principal == PhotoFlash::User::"alice", action in [PhotoFlash::Action::"DeletePhoto", PhotoFlash::Action::"ViewPhoto"], resource);
    #     }
    #   },
    #         created_date: Time.parse("2024-10-18T18:57:48.005343Z"),
    #         last_updated_date: Time.parse("2024-10-18T18:57:48.005343Z")
    #       }
    #     ],
    #     errors: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     requests: [ # required
    #       {
    #         policy_store_id: "PolicyStoreId", # required
    #         policy_id: "PolicyId", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [ # required
    #       {
    #         policy_store_id: "PolicyStoreId", # required
    #         policy_id: "PolicyId", # required
    #         policy_type: "STATIC" # One of: ["STATIC", "TEMPLATE_LINKED"], # required
    #         definition: { # required
    #           # One of:
    #           static: {
    #             description: "StaticPolicyDescription",
    #             statement: "PolicyStatement", # required
    #           },
    #           template_linked: {
    #             policy_template_id: "PolicyTemplateId", # required
    #             principal: {
    #               entity_type: "EntityType", # required
    #               entity_id: "EntityId", # required
    #             },
    #             resource: {
    #               entity_type: "EntityType", # required
    #               entity_id: "EntityId", # required
    #             }
    #           }
    #         },
    #         created_date: Time.now, # required
    #         last_updated_date: Time.now, # required
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         code: "POLICY_STORE_NOT_FOUND" # One of: ["POLICY_STORE_NOT_FOUND", "POLICY_NOT_FOUND"], # required
    #         policy_store_id: "String", # required
    #         policy_id: "String", # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetPolicyOutput]
    def batch_get_policy(params = {}, options = {})
      request = build_request(:batch_get_policy, params)
      request.send_request(options)
    end

    # <p>Makes a series of decisions about multiple authorization requests for one principal or resource. Each request contains the equivalent content of an <code>IsAuthorized</code> request: principal, action, resource, and context. Either the <code>principal</code> or the <code>resource</code> parameter must be identical across all requests. For example, Verified Permissions won't evaluate a pair of requests where <code>bob</code> views <code>photo1</code> and <code>alice</code> views <code>photo2</code>. Authorization of <code>bob</code> to view <code>photo1</code> and <code>photo2</code>, or <code>bob</code> and <code>alice</code> to view <code>photo1</code>, are valid batches. </p> <p>The request is evaluated against all policies in the specified policy store that match the entities that you declare. The result of the decisions is a series of <code>Allow</code> or <code>Deny</code> responses, along with the IDs of the policies that produced each decision.</p> <p>The <code>entities</code> of a <code>BatchIsAuthorized</code> API request can contain up to 100 principals and up to 100 resources. The <code>requests</code> of a <code>BatchIsAuthorized</code> API request can contain up to 30 requests.</p> <note> <p>The <code>BatchIsAuthorized</code> operation doesn't have its own IAM permission. To authorize this operation for Amazon Web Services principals, include the permission <code>verifiedpermissions:IsAuthorized</code> in their IAM policies.</p> </note>
    # @param [Hash, Types::BatchIsAuthorizedInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store. Policies in this policy store will be used to make the authorization decisions for the input.</p>
    # @option params [Types::EntitiesDefinition] :entities
    #   <p>(Optional) Specifies the list of resources and principals and their associated attributes that Verified Permissions can examine when evaluating the policies. These additional entities and their attributes can be referenced and checked by conditional elements in the policies in the specified policy store.</p> <note> <p>You can include only principal and resource entities in this parameter; you can't include actions. You must specify actions in the schema.</p> </note>
    # @option params [Array<Types::BatchIsAuthorizedInputItem>] :requests
    #   <p>An array of up to 30 requests that you want Verified Permissions to evaluate.</p>
    # @example Batch - Example 1
    #   # The following example requests two authorization decisions for two principals                     of type Usernamed Alice and Annalisa.
    #   params = {
    #     requests: [
    #       {
    #         principal: {
    #           entity_type: "PhotoFlash::User",
    #           entity_id: "Alice"
    #         },
    #         action: {
    #           action_type: "PhotoFlash::Action",
    #           action_id: "ViewPhoto"
    #         },
    #         resource: {
    #           entity_type: "PhotoFlash::Photo",
    #           entity_id: "VacationPhoto94.jpg"
    #         }
    #       },
    #       {
    #         principal: {
    #           entity_type: "PhotoFlash::User",
    #           entity_id: "Annalisa"
    #         },
    #         action: {
    #           action_type: "PhotoFlash::Action",
    #           action_id: "DeletePhoto"
    #         },
    #         resource: {
    #           entity_type: "PhotoFlash::Photo",
    #           entity_id: "VacationPhoto94.jpg"
    #         }
    #       }
    #     ],
    #     entities: {
    #     "entityList" => [
    #       {
    #         "identifier" => {
    #           "entityType" => PhotoFlash::User,
    #           "entityId" => Alice
    #         },
    #         "attributes" => {
    #           "Account" => {
    #             "entityIdentifier" => {
    #               "entityType" => PhotoFlash::Account,
    #               "entityId" => 1234
    #             }
    #           },
    #           "Email" => {
    #             "string" => 
    #           }
    #         },
    #         "parents" => []
    #       },
    #       {
    #         "identifier" => {
    #           "entityType" => PhotoFlash::User,
    #           "entityId" => Annalisa
    #         },
    #         "attributes" => {
    #           "Account" => {
    #             "entityIdentifier" => {
    #               "entityType" => PhotoFlash::Account,
    #               "entityId" => 5678
    #             }
    #           },
    #           "Email" => {
    #             "string" => 
    #           }
    #         },
    #         "parents" => []
    #       },
    #       {
    #         "identifier" => {
    #           "entityType" => PhotoFlash::Photo,
    #           "entityId" => VacationPhoto94.jpg
    #         },
    #         "attributes" => {
    #           "IsPrivate" => {
    #             "boolean" => false
    #           },
    #           "Name" => {
    #             "string" => 
    #           }
    #         },
    #         "parents" => [{
    #           "entityType" => PhotoFlash::Account,
    #           "entityId" => 1234
    #         }]
    #       },
    #       {
    #         "identifier" => {
    #           "entityType" => PhotoFlash::Account,
    #           "entityId" => 1234
    #         },
    #         "attributes" => {
    #           "Name" => {
    #             "string" => 
    #           }
    #         },
    #         "parents" => []
    #       }
    #     ]
    #   },
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    #   options = {}
    #   response = client.batch_is_authorized(params, options)
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         request: {
    #           principal: {
    #             entity_type: "PhotoFlash::User",
    #             entity_id: "alice"
    #           },
    #           action: {
    #             action_type: "PhotoFlash::Action",
    #             action_id: "ViewPhoto"
    #           },
    #           resource: {
    #             entity_type: "PhotoFlash::Photo",
    #             entity_id: "VacationPhoto94.jpg"
    #           }
    #         },
    #         decision: ALLOW,
    #         determining_policies: [
    #           {
    #             policy_id: "9wYxMpljbbZQb5fcZHyJhY"
    #           }
    #         ],
    #         errors: [
    #         ]
    #       },
    #       {
    #         request: {
    #           principal: {
    #             entity_type: "PhotoFlash::User",
    #             entity_id: "annalisa"
    #           },
    #           action: {
    #             action_type: "PhotoFlash::Action",
    #             action_id: "DeletePhoto"
    #           },
    #           resource: {
    #             entity_type: "PhotoFlash::Photo",
    #             entity_id: "VacationPhoto94.jpg"
    #           }
    #         },
    #         decision: DENY,
    #         determining_policies: [
    #         ],
    #         errors: [
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     entities: {
    #       # One of:
    #       entity_list: [
    #         {
    #           identifier: { # required
    #             entity_type: "EntityType", # required
    #             entity_id: "EntityId", # required
    #           },
    #           attributes: {
    #             "String" => {
    #               # One of:
    #               boolean: false,
    #               entity_identifier: {
    #                 entity_type: "EntityType", # required
    #                 entity_id: "EntityId", # required
    #               },
    #               long: 1,
    #               string: "StringAttribute",
    #               set: [{
    #                 # recursive AttributeValue
    #               }],
    #               record: {
    #                 "String" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               ipaddr: "IpAddr",
    #               decimal: "Decimal",
    #               datetime: "DatetimeAttribute",
    #               duration: "Duration"
    #             }
    #           },
    #           parents: [
    #             {
    #               entity_type: "EntityType", # required
    #               entity_id: "EntityId", # required
    #             }
    #           ]
    #         }
    #       ],
    #       cedar_json: "CedarJson"
    #     },
    #     requests: [ # required
    #       {
    #         principal: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #         action: {
    #           action_type: "ActionType", # required
    #           action_id: "ActionId", # required
    #         },
    #         resource: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #         context: {
    #           # One of:
    #           context_map: {
    #             "String" => {
    #               # One of:
    #               boolean: false,
    #               entity_identifier: {
    #                 entity_type: "EntityType", # required
    #                 entity_id: "EntityId", # required
    #               },
    #               long: 1,
    #               string: "StringAttribute",
    #               set: [{
    #                 # recursive AttributeValue
    #               }],
    #               record: {
    #                 "String" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               ipaddr: "IpAddr",
    #               decimal: "Decimal",
    #               datetime: "DatetimeAttribute",
    #               duration: "Duration"
    #             }
    #           },
    #           cedar_json: "CedarJson"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_is_authorized(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [ # required
    #       {
    #         request: { # required
    #           principal: {
    #             entity_type: "EntityType", # required
    #             entity_id: "EntityId", # required
    #           },
    #           action: {
    #             action_type: "ActionType", # required
    #             action_id: "ActionId", # required
    #           },
    #           resource: {
    #             entity_type: "EntityType", # required
    #             entity_id: "EntityId", # required
    #           },
    #           context: {
    #             # One of:
    #             context_map: {
    #               "String" => {
    #                 # One of:
    #                 boolean: false,
    #                 entity_identifier: {
    #                   entity_type: "EntityType", # required
    #                   entity_id: "EntityId", # required
    #                 },
    #                 long: 1,
    #                 string: "StringAttribute",
    #                 set: [{
    #                   # recursive AttributeValue
    #                 }],
    #                 record: {
    #                   "String" => {
    #                     # recursive AttributeValue
    #                   }
    #                 },
    #                 ipaddr: "IpAddr",
    #                 decimal: "Decimal",
    #                 datetime: "DatetimeAttribute",
    #                 duration: "Duration"
    #               }
    #             },
    #             cedar_json: "CedarJson"
    #           }
    #         },
    #         decision: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #         determining_policies: [ # required
    #           {
    #             policy_id: "PolicyId", # required
    #           }
    #         ],
    #         errors: [ # required
    #           {
    #             error_description: "String", # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::BatchIsAuthorizedOutput]
    def batch_is_authorized(params = {}, options = {})
      request = build_request(:batch_is_authorized, params)
      request.send_request(options)
    end

    # <p>Makes a series of decisions about multiple authorization requests for one token. The principal in this request comes from an external identity source in the form of an identity or access token, formatted as a <a href="https://wikipedia.org/wiki/JSON_Web_Token">JSON web token (JWT)</a>. The information in the parameters can also define additional context that Verified Permissions can include in the evaluations.</p> <p>The request is evaluated against all policies in the specified policy store that match the entities that you provide in the entities declaration and in the token. The result of the decisions is a series of <code>Allow</code> or <code>Deny</code> responses, along with the IDs of the policies that produced each decision.</p> <p>The <code>entities</code> of a <code>BatchIsAuthorizedWithToken</code> API request can contain up to 100 resources and up to 99 user groups. The <code>requests</code> of a <code>BatchIsAuthorizedWithToken</code> API request can contain up to 30 requests.</p> <note> <p>The <code>BatchIsAuthorizedWithToken</code> operation doesn't have its own IAM permission. To authorize this operation for Amazon Web Services principals, include the permission <code>verifiedpermissions:IsAuthorizedWithToken</code> in their IAM policies.</p> </note>
    # @param [Hash, Types::BatchIsAuthorizedWithTokenInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store. Policies in this policy store will be used to make an authorization decision for the input.</p>
    # @option params [String] :identity_token
    #   <p>Specifies an identity (ID) token for the principal that you want to authorize in each request. This token is provided to you by the identity provider (IdP) associated with the specified identity source. You must specify either an <code>accessToken</code>, an <code>identityToken</code>, or both.</p> <p>Must be an ID token. Verified Permissions returns an error if the <code>token_use</code> claim in the submitted token isn't <code>id</code>.</p>
    # @option params [String] :access_token
    #   <p>Specifies an access token for the principal that you want to authorize in each request. This token is provided to you by the identity provider (IdP) associated with the specified identity source. You must specify either an <code>accessToken</code>, an <code>identityToken</code>, or both.</p> <p>Must be an access token. Verified Permissions returns an error if the <code>token_use</code> claim in the submitted token isn't <code>access</code>.</p>
    # @option params [Types::EntitiesDefinition] :entities
    #   <p>(Optional) Specifies the list of resources and their associated attributes that Verified Permissions can examine when evaluating the policies. These additional entities and their attributes can be referenced and checked by conditional elements in the policies in the specified policy store.</p> <important> <p>You can't include principals in this parameter, only resource and action entities. This parameter can't include any entities of a type that matches the user or group entity types that you defined in your identity source.</p> <ul> <li> <p>The <code>BatchIsAuthorizedWithToken</code> operation takes principal attributes from <b> <i>only</i> </b> the <code>identityToken</code> or <code>accessToken</code> passed to the operation.</p> </li> <li> <p>For action entities, you can include only their <code>Identifier</code> and <code>EntityType</code>. </p> </li> </ul> </important>
    # @option params [Array<Types::BatchIsAuthorizedWithTokenInputItem>] :requests
    #   <p>An array of up to 30 requests that you want Verified Permissions to evaluate.</p>
    # @example Batch - Example 1
    #   # The following example requests three authorization decisions for two resources                     and two actions in different photo albums.
    #   params = {
    #     identity_token: "eyJra12345EXAMPLE",
    #     requests: [
    #       {
    #         action: {
    #           action_type: "PhotoFlash::Action",
    #           action_id: "ViewPhoto"
    #         },
    #         resource: {
    #           entity_type: "PhotoFlash::Photo",
    #           entity_id: "VacationPhoto94.jpg"
    #         }
    #       },
    #       {
    #         action: {
    #           action_type: "PhotoFlash::Action",
    #           action_id: "SharePhoto"
    #         },
    #         resource: {
    #           entity_type: "PhotoFlash::Photo",
    #           entity_id: "VacationPhoto94.jpg"
    #         }
    #       },
    #       {
    #         action: {
    #           action_type: "PhotoFlash::Action",
    #           action_id: "ViewPhoto"
    #         },
    #         resource: {
    #           entity_type: "PhotoFlash::Photo",
    #           entity_id: "OfficePhoto94.jpg"
    #         }
    #       }
    #     ],
    #     entities: {
    #     "entityList" => [
    #       {
    #         "identifier" => {
    #           "entityType" => PhotoFlash::Photo,
    #           "entityId" => VacationPhoto94.jpg
    #         },
    #         "parents" => [{
    #           "entityType" => PhotoFlash::Album,
    #           "entityId" => MyExampleAlbum1
    #         }]
    #       },
    #       {
    #         "identifier" => {
    #           "entityType" => PhotoFlash::Photo,
    #           "entityId" => OfficePhoto94.jpg
    #         },
    #         "parents" => [{
    #           "entityType" => PhotoFlash::Album,
    #           "entityId" => MyExampleAlbum2
    #         }]
    #       }
    #     ]
    #   },
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    #   options = {}
    #   response = client.batch_is_authorized_with_token(params, options)
    #   response.to_h #=>
    #   {
    #     principal: {
    #       entity_type: "PhotoFlash::User",
    #       entity_id: "us-east-1_EXAMPLE|a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #     },
    #     results: [
    #       {
    #         request: {
    #           action: {
    #             action_type: "PhotoFlash::Action",
    #             action_id: "ViewPhoto"
    #           },
    #           resource: {
    #             entity_type: "PhotoFlash::Photo",
    #             entity_id: "VacationPhoto94.jpg"
    #           }
    #         },
    #         decision: ALLOW,
    #         determining_policies: [
    #           {
    #             policy_id: "9wYixMplbbZQb5fcZHyJhY"
    #           }
    #         ],
    #         errors: [
    #         ]
    #       },
    #       {
    #         request: {
    #           action: {
    #             action_type: "PhotoFlash::Action",
    #             action_id: "SharePhoto"
    #           },
    #           resource: {
    #             entity_type: "PhotoFlash::Photo",
    #             entity_id: "VacationPhoto94.jpg"
    #           }
    #         },
    #         decision: ALLOW,
    #         determining_policies: [
    #           {
    #             policy_id: "9wYixMplbbZQb5fcZHyJhY"
    #           }
    #         ],
    #         errors: [
    #         ]
    #       },
    #       {
    #         request: {
    #           action: {
    #             action_type: "PhotoFlash::Action",
    #             action_id: "ViewPhoto"
    #           },
    #           resource: {
    #             entity_type: "PhotoFlash::Photo",
    #             entity_id: "OfficePhoto94.jpg"
    #           }
    #         },
    #         decision: DENY,
    #         determining_policies: [
    #         ],
    #         errors: [
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     identity_token: "Token",
    #     access_token: "Token",
    #     entities: {
    #       # One of:
    #       entity_list: [
    #         {
    #           identifier: { # required
    #             entity_type: "EntityType", # required
    #             entity_id: "EntityId", # required
    #           },
    #           attributes: {
    #             "String" => {
    #               # One of:
    #               boolean: false,
    #               entity_identifier: {
    #                 entity_type: "EntityType", # required
    #                 entity_id: "EntityId", # required
    #               },
    #               long: 1,
    #               string: "StringAttribute",
    #               set: [{
    #                 # recursive AttributeValue
    #               }],
    #               record: {
    #                 "String" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               ipaddr: "IpAddr",
    #               decimal: "Decimal",
    #               datetime: "DatetimeAttribute",
    #               duration: "Duration"
    #             }
    #           },
    #           parents: [
    #             {
    #               entity_type: "EntityType", # required
    #               entity_id: "EntityId", # required
    #             }
    #           ]
    #         }
    #       ],
    #       cedar_json: "CedarJson"
    #     },
    #     requests: [ # required
    #       {
    #         action: {
    #           action_type: "ActionType", # required
    #           action_id: "ActionId", # required
    #         },
    #         resource: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #         context: {
    #           # One of:
    #           context_map: {
    #             "String" => {
    #               # One of:
    #               boolean: false,
    #               entity_identifier: {
    #                 entity_type: "EntityType", # required
    #                 entity_id: "EntityId", # required
    #               },
    #               long: 1,
    #               string: "StringAttribute",
    #               set: [{
    #                 # recursive AttributeValue
    #               }],
    #               record: {
    #                 "String" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               ipaddr: "IpAddr",
    #               decimal: "Decimal",
    #               datetime: "DatetimeAttribute",
    #               duration: "Duration"
    #             }
    #           },
    #           cedar_json: "CedarJson"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_is_authorized_with_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     principal: {
    #       entity_type: "EntityType", # required
    #       entity_id: "EntityId", # required
    #     },
    #     results: [ # required
    #       {
    #         request: { # required
    #           action: {
    #             action_type: "ActionType", # required
    #             action_id: "ActionId", # required
    #           },
    #           resource: {
    #             entity_type: "EntityType", # required
    #             entity_id: "EntityId", # required
    #           },
    #           context: {
    #             # One of:
    #             context_map: {
    #               "String" => {
    #                 # One of:
    #                 boolean: false,
    #                 entity_identifier: {
    #                   entity_type: "EntityType", # required
    #                   entity_id: "EntityId", # required
    #                 },
    #                 long: 1,
    #                 string: "StringAttribute",
    #                 set: [{
    #                   # recursive AttributeValue
    #                 }],
    #                 record: {
    #                   "String" => {
    #                     # recursive AttributeValue
    #                   }
    #                 },
    #                 ipaddr: "IpAddr",
    #                 decimal: "Decimal",
    #                 datetime: "DatetimeAttribute",
    #                 duration: "Duration"
    #               }
    #             },
    #             cedar_json: "CedarJson"
    #           }
    #         },
    #         decision: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #         determining_policies: [ # required
    #           {
    #             policy_id: "PolicyId", # required
    #           }
    #         ],
    #         errors: [ # required
    #           {
    #             error_description: "String", # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::BatchIsAuthorizedWithTokenOutput]
    def batch_is_authorized_with_token(params = {}, options = {})
      request = build_request(:batch_is_authorized_with_token, params)
      request.send_request(options)
    end

    # <p>Adds an identity source to a policy store–an Amazon Cognito user pool or OpenID Connect (OIDC) identity provider (IdP). </p> <p>After you create an identity source, you can use the identities provided by the IdP as proxies for the principal in authorization queries that use the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html">IsAuthorizedWithToken</a> or <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_BatchIsAuthorizedWithToken.html">BatchIsAuthorizedWithToken</a> API operations. These identities take the form of tokens that contain claims about the user, such as IDs, attributes and group memberships. Identity sources provide identity (ID) tokens and access tokens. Verified Permissions derives information about your user and session from token claims. Access tokens provide action <code>context</code> to your policies, and ID tokens provide principal <code>Attributes</code>.</p> <important> <p>Tokens from an identity source user continue to be usable until they expire. Token revocation and resource deletion have no effect on the validity of a token in your policy store</p> </important> <note> <p>To reference a user from this identity source in your Cedar policies, refer to the following syntax examples.</p> <ul> <li> <p>Amazon Cognito user pool: <code>Namespace::[Entity type]::[User pool ID]|[user principal attribute]</code>, for example <code>MyCorp::User::us-east-1_EXAMPLE|a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>.</p> </li> <li> <p>OpenID Connect (OIDC) provider: <code>Namespace::[Entity type]::[entityIdPrefix]|[user principal attribute]</code>, for example <code>MyCorp::User::MyOIDCProvider|a1b2c3d4-5678-90ab-cdef-EXAMPLE22222</code>.</p> </li> </ul> </note> <note> <p>Verified Permissions is <i> <a href="https://wikipedia.org/wiki/Eventual_consistency">eventually consistent</a> </i>. It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.</p> </note>
    # @param [Hash, Types::CreateIdentitySourceInput] params
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive ID that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value.</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>ConflictException</code> error.</p> <p>Verified Permissions recognizes a <code>ClientToken</code> for eight hours. After eight hours, the next request with the same parameters performs the operation again regardless of the value of <code>ClientToken</code>.</p>
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store in which you want to store this identity source. Only policies and requests made using this policy store can reference identities from the identity provider configured in the new identity source.</p>
    # @option params [Types::Configuration] :configuration
    #   <p>Specifies the details required to communicate with the identity provider (IdP) associated with this identity source.</p>
    # @option params [String] :principal_entity_type
    #   <p>Specifies the namespace and data type of the principals generated for identities authenticated by the new identity source.</p>
    # @example To create an identity source
    #   # The following ``create-identity-source`` example creates an identity source that lets you reference identities stored in the specified Amazon Cognito user pool. Those identities are available in Verified Permissions as entities of type ``User``. 
    #   params = {
    #     configuration: {
    #     "cognitoUserPoolConfiguration" => {
    #       "userPoolArn" => arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5,
    #       "clientIds" => [a1b2c3d4e5f6g7h8i9j0kalbmc]
    #     }
    #   },
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     principal_entity_type: "User",
    #     client_token: "a1b2c3d4-e5f6-a1b2-c3d4-TOKEN1111111"
    #   }
    #   options = {}
    #   response = client.create_identity_source(params, options)
    #   response.to_h #=>
    #   {
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #     identity_source_id: "ISEXAMPLEabcdefg111111",
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     policy_store_id: "PolicyStoreId", # required
    #     configuration: { # required
    #       # One of:
    #       cognito_user_pool_configuration: {
    #         user_pool_arn: "UserPoolArn", # required
    #         client_ids: ["ClientId"],
    #         group_configuration: {
    #           group_entity_type: "GroupEntityType", # required
    #         }
    #       },
    #       open_id_connect_configuration: {
    #         issuer: "Issuer", # required
    #         entity_id_prefix: "EntityIdPrefix",
    #         group_configuration: {
    #           group_claim: "Claim", # required
    #           group_entity_type: "GroupEntityType", # required
    #         },
    #         token_selection: { # required
    #           # One of:
    #           access_token_only: {
    #             principal_id_claim: "Claim",
    #             audiences: ["Audience"]
    #           },
    #           identity_token_only: {
    #             principal_id_claim: "Claim",
    #             client_ids: ["ClientId"]
    #           }
    #         }
    #       }
    #     },
    #     principal_entity_type: "PrincipalEntityType"
    #   }
    #   options = {}
    #   response = client.create_identity_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created_date: Time.now, # required
    #     identity_source_id: "IdentitySourceId", # required
    #     last_updated_date: Time.now, # required
    #     policy_store_id: "PolicyStoreId", # required
    #   }
    # @return [Types::CreateIdentitySourceOutput]
    def create_identity_source(params = {}, options = {})
      request = build_request(:create_identity_source, params)
      request.send_request(options)
    end

    # <p>Creates a Cedar policy and saves it in the specified policy store. You can create either a static policy or a policy linked to a policy template.</p> <ul> <li> <p>To create a static policy, provide the Cedar policy text in the <code>StaticPolicy</code> section of the <code>PolicyDefinition</code>.</p> </li> <li> <p>To create a policy that is dynamically linked to a policy template, specify the policy template ID and the principal and resource to associate with this policy in the <code>templateLinked</code> section of the <code>PolicyDefinition</code>. If the policy template is ever updated, any policies linked to the policy template automatically use the updated template.</p> </li> </ul> <note> <p>Creating a policy causes it to be validated against the schema in the policy store. If the policy doesn't pass validation, the operation fails and the policy isn't stored.</p> </note> <note> <p>Verified Permissions is <i> <a href="https://wikipedia.org/wiki/Eventual_consistency">eventually consistent</a> </i>. It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.</p> </note>
    # @param [Hash, Types::CreatePolicyInput] params
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive ID that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value.</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>ConflictException</code> error.</p> <p>Verified Permissions recognizes a <code>ClientToken</code> for eight hours. After eight hours, the next request with the same parameters performs the operation again regardless of the value of <code>ClientToken</code>.</p>
    # @option params [String] :policy_store_id
    #   <p>Specifies the <code>PolicyStoreId</code> of the policy store you want to store the policy in.</p>
    # @option params [Types::PolicyDefinition] :definition
    #   <p>A structure that specifies the policy type and content to use for the new policy. You must include either a static or a templateLinked element. The policy content must be written in the Cedar policy language.</p>
    # @example To create a static policy
    #   # The following example request creates a static policy with a policy scope that specifies both a principal and a resource. The response includes both the Principal and Resource elements because both were specified in the request policy scope.
    #   params = {
    #     definition: {
    #     "static" => {
    #       "description" => Grant members of janeFriends UserGroup access to the vacationFolder Album,
    #       "statement" => permit( principal in UserGroup::"janeFriends", action, resource in Album::"vacationFolder" );
    #     }
    #   },
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     client_token: "a1b2c3d4-e5f6-a1b2-c3d4-TOKEN1111111"
    #   }
    #   options = {}
    #   response = client.create_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     policy_id: "9wYxMpljbbZQb5fcZHyJhY",
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #     policy_type: STATIC,
    #     principal: {
    #       entity_id: "janeFriends",
    #       entity_type: "UserGroup"
    #     },
    #     resource: {
    #       entity_id: "vacationFolder",
    #       entity_type: "Album"
    #     }
    #   }
    # @example To create a static policy
    #   # The following example request creates a static policy with a policy scope that specifies both a principal and a resource. The response includes both the Principal and Resource elements because both were specified in the request policy scope.
    #   params = {
    #     definition: {
    #     "static" => {
    #       "description" => Grant members of janeFriends UserGroup access to the vacationFolder Album,
    #       "statement" => permit( principal in UserGroup::"janeFriends", action, resource in Album::"vacationFolder" );
    #     }
    #   },
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     client_token: "a1b2c3d4-e5f6-a1b2-c3d4-TOKEN1111111"
    #   }
    #   options = {}
    #   response = client.create_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     policy_id: "9wYxMpljbbZQb5fcZHyJhY",
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #     policy_type: STATIC,
    #     principal: {
    #       entity_id: "janeFriends",
    #       entity_type: "UserGroup"
    #     },
    #     resource: {
    #       entity_id: "vacationFolder",
    #       entity_type: "Album"
    #     }
    #   }
    # @example To create a template-linked policy
    #   # The following example creates a template-linked policy using the specified policy template and associates the specified principal to use with the new template-linked policy.
    #   params = {
    #     definition: {
    #     "templateLinked" => {
    #       "policyTemplateId" => PTEXAMPLEabcdefg111111,
    #       "principal" => {
    #         "entityType" => User,
    #         "entityId" => alice
    #       }
    #     }
    #   },
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     client_token: "a1b2c3d4-e5f6-a1b2-c3d4-TOKEN1111111"
    #   }
    #   options = {}
    #   response = client.create_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     policy_id: "Et9KxMplyaDdyurDw8TeFa",
    #     policy_type: TEMPLATE_LINKED,
    #     principal: {
    #       entity_type: "User",
    #       entity_id: "alice"
    #     },
    #     resource: {
    #       entity_type: "Photo",
    #       entity_id: "VacationPhoto94.jpg"
    #     },
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     policy_store_id: "PolicyStoreId", # required
    #     definition: { # required
    #       # One of:
    #       static: {
    #         description: "StaticPolicyDescription",
    #         statement: "PolicyStatement", # required
    #       },
    #       template_linked: {
    #         policy_template_id: "PolicyTemplateId", # required
    #         principal: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #         resource: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_id: "PolicyId", # required
    #     policy_type: "STATIC" # One of: ["STATIC", "TEMPLATE_LINKED"], # required
    #     principal: {
    #       entity_type: "EntityType", # required
    #       entity_id: "EntityId", # required
    #     },
    #     resource: {
    #       entity_type: "EntityType", # required
    #       entity_id: "EntityId", # required
    #     },
    #     actions: [
    #       {
    #         action_type: "ActionType", # required
    #         action_id: "ActionId", # required
    #       }
    #     ],
    #     created_date: Time.now, # required
    #     last_updated_date: Time.now, # required
    #     effect: "Permit" # One of: ["Permit", "Forbid"]
    #   }
    # @return [Types::CreatePolicyOutput]
    def create_policy(params = {}, options = {})
      request = build_request(:create_policy, params)
      request.send_request(options)
    end

    # <p>Creates a policy store. A policy store is a container for policy resources.</p> <note> <p>Although <a href="https://docs.cedarpolicy.com/schema/schema.html#namespace">Cedar supports multiple namespaces</a>, Verified Permissions currently supports only one namespace per policy store.</p> </note> <note> <p>Verified Permissions is <i> <a href="https://wikipedia.org/wiki/Eventual_consistency">eventually consistent</a> </i>. It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.</p> </note>
    # @param [Hash, Types::CreatePolicyStoreInput] params
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive ID that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value.</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>ConflictException</code> error.</p> <p>Verified Permissions recognizes a <code>ClientToken</code> for eight hours. After eight hours, the next request with the same parameters performs the operation again regardless of the value of <code>ClientToken</code>.</p>
    # @option params [Types::ValidationSettings] :validation_settings
    #   <p>Specifies the validation setting for this policy store.</p> <p>Currently, the only valid and required value is <code>Mode</code>.</p> <important> <p>We recommend that you turn on <code>STRICT</code> mode only after you define a schema. If a schema doesn't exist, then <code>STRICT</code> mode causes any policy to fail validation, and Verified Permissions rejects the policy. You can turn off validation by using the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyStore">UpdatePolicyStore</a>. Then, when you have a schema defined, use <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyStore">UpdatePolicyStore</a> again to turn validation back on.</p> </important>
    # @option params [String] :description
    #   <p>Descriptive text that you can provide to help with identification of the current policy store.</p>
    # @option params [String] :deletion_protection
    #   <p>Specifies whether the policy store can be deleted. If enabled, the policy store can't be deleted.</p> <p>The default state is <code>DISABLED</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of key-value pairs to associate with the policy store.</p>
    # @example To create policy store
    #   # The following example creates a new policy store with strict validation turned on.
    #   params = {
    #     validation_settings: {
    #       mode: STRICT
    #     },
    #     client_token: "a1b2c3d4-e5f6-a1b2-c3d4-TOKEN1111111"
    #   }
    #   options = {}
    #   response = client.create_policy_store(params, options)
    #   response.to_h #=>
    #   {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     arn: "arn:aws:verifiedpermissions::123456789012:policy-store/C7v5xMplfFH3i3e4Jrzb1a",
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     validation_settings: { # required
    #       mode: "OFF" # One of: ["OFF", "STRICT"], # required
    #     },
    #     description: "PolicyStoreDescription",
    #     deletion_protection: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_policy_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_store_id: "PolicyStoreId", # required
    #     arn: "ResourceArn", # required
    #     created_date: Time.now, # required
    #     last_updated_date: Time.now, # required
    #   }
    # @return [Types::CreatePolicyStoreOutput]
    def create_policy_store(params = {}, options = {})
      request = build_request(:create_policy_store, params)
      request.send_request(options)
    end

    # <p>Creates a policy template. A template can use placeholders for the principal and resource. A template must be instantiated into a policy by associating it with specific principals and resources to use for the placeholders. That instantiated policy can then be considered in authorization decisions. The instantiated policy works identically to any other policy, except that it is dynamically linked to the template. If the template changes, then any policies that are linked to that template are immediately updated as well.</p> <note> <p>Verified Permissions is <i> <a href="https://wikipedia.org/wiki/Eventual_consistency">eventually consistent</a> </i>. It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.</p> </note>
    # @param [Hash, Types::CreatePolicyTemplateInput] params
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive ID that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value.</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>ConflictException</code> error.</p> <p>Verified Permissions recognizes a <code>ClientToken</code> for eight hours. After eight hours, the next request with the same parameters performs the operation again regardless of the value of <code>ClientToken</code>.</p>
    # @option params [String] :policy_store_id
    #   <p>The ID of the policy store in which to create the policy template.</p>
    # @option params [String] :description
    #   <p>Specifies a description for the policy template.</p>
    # @option params [String] :statement
    #   <p>Specifies the content that you want to use for the new policy template, written in the Cedar policy language.</p>
    # @example To create a policy template
    #   # The following example creates a policy template that has a placeholder for the principal.
    #   params = {
    #     description: "Template for research dept",
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     statement: "\"AccessVacation\"\npermit(\n    principal in ?principal,\n    action == Action::\"view\",\n    resource == Photo::\"VacationPhoto94.jpg\"\n)\nwhen {\n    principal has department && principal.department == \"research\"\n};",
    #     client_token: "a1b2c3d4-e5f6-a1b2-c3d4-TOKEN1111111"
    #   }
    #   options = {}
    #   response = client.create_policy_template(params, options)
    #   response.to_h #=>
    #   {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     policy_template_id: "PTEXAMPLEabcdefg111111",
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyToken",
    #     policy_store_id: "PolicyStoreId", # required
    #     description: "PolicyTemplateDescription",
    #     statement: "PolicyStatement", # required
    #   }
    #   options = {}
    #   response = client.create_policy_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_template_id: "PolicyTemplateId", # required
    #     created_date: Time.now, # required
    #     last_updated_date: Time.now, # required
    #   }
    # @return [Types::CreatePolicyTemplateOutput]
    def create_policy_template(params = {}, options = {})
      request = build_request(:create_policy_template, params)
      request.send_request(options)
    end

    # <p>Deletes an identity source that references an identity provider (IdP) such as Amazon Cognito. After you delete the identity source, you can no longer use tokens for identities from that identity source to represent principals in authorization queries made using <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html">IsAuthorizedWithToken</a>. operations.</p>
    # @param [Hash, Types::DeleteIdentitySourceInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store that contains the identity source that you want to delete.</p>
    # @option params [String] :identity_source_id
    #   <p>Specifies the ID of the identity source that you want to delete.</p>
    # @example To delete an identity source
    #   # The following example request deletes the specified identity source.
    #   params = {
    #     identity_source_id: "ISEXAMPLEabcdefg111111",
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    #   options = {}
    #   response = client.delete_identity_source(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     identity_source_id: "IdentitySourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_identity_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIdentitySourceOutput]
    def delete_identity_source(params = {}, options = {})
      request = build_request(:delete_identity_source, params)
      request.send_request(options)
    end

    # <p>Deletes the specified policy from the policy store.</p> <p>This operation is idempotent; if you specify a policy that doesn't exist, the request response returns a successful <code>HTTP 200</code> status code.</p>
    # @param [Hash, Types::DeletePolicyInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store that contains the policy that you want to delete.</p>
    # @option params [String] :policy_id
    #   <p>Specifies the ID of the policy that you want to delete.</p>
    # @example To delete a policy
    #   # The following example deletes the specified policy from its policy store.
    #   params = {
    #     policy_id: "9wYxMpljbbZQb5fcZHyJhY",
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    #   options = {}
    #   response = client.delete_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_id: "PolicyId", # required
    #   }
    #   options = {}
    #   response = client.delete_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePolicyOutput]
    def delete_policy(params = {}, options = {})
      request = build_request(:delete_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the specified policy store.</p> <p>This operation is idempotent. If you specify a policy store that does not exist, the request response will still return a successful HTTP 200 status code.</p>
    # @param [Hash, Types::DeletePolicyStoreInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store that you want to delete.</p>
    # @example To delete a policy store
    #   # The following example deletes the specified policy store.
    #   params = {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    #   options = {}
    #   response = client.delete_policy_store(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #   }
    #   options = {}
    #   response = client.delete_policy_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePolicyStoreOutput]
    def delete_policy_store(params = {}, options = {})
      request = build_request(:delete_policy_store, params)
      request.send_request(options)
    end

    # <p>Deletes the specified policy template from the policy store.</p> <important> <p>This operation also deletes any policies that were created from the specified policy template. Those policies are immediately removed from all future API responses, and are asynchronously deleted from the policy store.</p> </important>
    # @param [Hash, Types::DeletePolicyTemplateInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store that contains the policy template that you want to delete.</p>
    # @option params [String] :policy_template_id
    #   <p>Specifies the ID of the policy template that you want to delete.</p>
    # @example To delete a policy template
    #   # The following example deletes a policy template. Before you can perform this operation, you must first delete any template-linked policies that were instantiated from this policy template. To delete them, use DeletePolicy.
    #   params = {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     policy_template_id: "PTEXAMPLEabcdefg111111"
    #   }
    #   options = {}
    #   response = client.delete_policy_template(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_template_id: "PolicyTemplateId", # required
    #   }
    #   options = {}
    #   response = client.delete_policy_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePolicyTemplateOutput]
    def delete_policy_template(params = {}, options = {})
      request = build_request(:delete_policy_template, params)
      request.send_request(options)
    end

    # <p>Retrieves the details about the specified identity source.</p>
    # @param [Hash, Types::GetIdentitySourceInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store that contains the identity source you want information about.</p>
    # @option params [String] :identity_source_id
    #   <p>Specifies the ID of the identity source you want information about.</p>
    # @example To retrieve details about an identity source
    #   # The following example retrieves the details for the specified identity source.
    #   params = {
    #     identity_source_id: "ISEXAMPLEabcdefg111111",
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    #   options = {}
    #   response = client.get_identity_source(params, options)
    #   response.to_h #=>
    #   {
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #     details: {
    #       client_ids: [
    #         "a1b2c3d4e5f6g7h8i9j0kalbmc"
    #       ],
    #       user_pool_arn: "arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5",
    #       discovery_url: "https://cognito-idp.us-east-1.amazonaws.com/us-east-1_1a2b3c4d5",
    #       open_id_issuer: COGNITO
    #     },
    #     identity_source_id: "ISEXAMPLEabcdefg111111",
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     principal_entity_type: "AWS::Cognito"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     identity_source_id: "IdentitySourceId", # required
    #   }
    #   options = {}
    #   response = client.get_identity_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created_date: Time.now, # required
    #     details: {
    #       client_ids: ["ClientId"],
    #       user_pool_arn: "UserPoolArn",
    #       discovery_url: "DiscoveryUrl",
    #       open_id_issuer: "COGNITO" # One of: ["COGNITO"]
    #     },
    #     identity_source_id: "IdentitySourceId", # required
    #     last_updated_date: Time.now, # required
    #     policy_store_id: "PolicyStoreId", # required
    #     principal_entity_type: "PrincipalEntityType", # required
    #     configuration: {
    #       # One of:
    #       cognito_user_pool_configuration: {
    #         user_pool_arn: "UserPoolArn", # required
    #         client_ids: ["ClientId"], # required
    #         issuer: "Issuer", # required
    #         group_configuration: {
    #           group_entity_type: "GroupEntityType"
    #         }
    #       },
    #       open_id_connect_configuration: {
    #         issuer: "Issuer", # required
    #         entity_id_prefix: "EntityIdPrefix",
    #         group_configuration: {
    #           group_claim: "Claim", # required
    #           group_entity_type: "GroupEntityType", # required
    #         },
    #         token_selection: { # required
    #           # One of:
    #           access_token_only: {
    #             principal_id_claim: "Claim",
    #             audiences: ["Audience"]
    #           },
    #           identity_token_only: {
    #             principal_id_claim: "Claim",
    #             client_ids: ["ClientId"]
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetIdentitySourceOutput]
    def get_identity_source(params = {}, options = {})
      request = build_request(:get_identity_source, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified policy.</p>
    # @param [Hash, Types::GetPolicyInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store that contains the policy that you want information about.</p>
    # @option params [String] :policy_id
    #   <p>Specifies the ID of the policy you want information about.</p>
    # @example To retrieve details about a policy
    #   # The following example retrieves information about the specified policy contained in the specified policy store. In this example, the requested policy is a template-linked policy, so it returns the ID of the policy template, and the specific principal and resource used by this policy.
    #   params = {
    #     policy_id: "9wYixMplbbZQb5fcZHyJhY",
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    #   options = {}
    #   response = client.get_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     policy_id: "9wYxMpljbbZQb5fcZHyJhY",
    #     policy_type: STATIC,
    #     resource: {
    #       entity_id: "publicFolder",
    #       entity_type: "Album"
    #     },
    #     definition: {
    #     "static" => {
    #       "description" => Grant everyone of janeFriends UserGroup access to the vacationFolder Album,
    #       "statement" => permit(principal, action, resource in Album::"publicFolder");
    #     }
    #   },
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_id: "PolicyId", # required
    #   }
    #   options = {}
    #   response = client.get_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_id: "PolicyId", # required
    #     policy_type: "STATIC" # One of: ["STATIC", "TEMPLATE_LINKED"], # required
    #     principal: {
    #       entity_type: "EntityType", # required
    #       entity_id: "EntityId", # required
    #     },
    #     resource: {
    #       entity_type: "EntityType", # required
    #       entity_id: "EntityId", # required
    #     },
    #     actions: [
    #       {
    #         action_type: "ActionType", # required
    #         action_id: "ActionId", # required
    #       }
    #     ],
    #     definition: { # required
    #       # One of:
    #       static: {
    #         description: "StaticPolicyDescription",
    #         statement: "PolicyStatement", # required
    #       },
    #       template_linked: {
    #         policy_template_id: "PolicyTemplateId", # required
    #         principal: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #         resource: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         }
    #       }
    #     },
    #     created_date: Time.now, # required
    #     last_updated_date: Time.now, # required
    #     effect: "Permit" # One of: ["Permit", "Forbid"]
    #   }
    # @return [Types::GetPolicyOutput]
    def get_policy(params = {}, options = {})
      request = build_request(:get_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves details about a policy store.</p>
    # @param [Hash, Types::GetPolicyStoreInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store that you want information about.</p>
    # @option params [Boolean] :tags
    #   <p>Specifies whether to return the tags that are attached to the policy store. If this parameter is included in the API call, the tags are returned, otherwise they are not returned.</p> <note> <p>If this parameter is included in the API call but there are no tags attached to the policy store, the <code>tags</code> response parameter is omitted from the response.</p> </note>
    # @example GetPolicyStore
    #   # The following example retrieves details about the specified policy store.
    #   params = {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    #   options = {}
    #   response = client.get_policy_store(params, options)
    #   response.to_h #=>
    #   {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     arn: "arn:aws:verifiedpermissions::123456789012:policy-store/C7v5xMplfFH3i3e4Jrzb1a",
    #     validation_settings: {
    #       mode: STRICT
    #     },
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     tags: false
    #   }
    #   options = {}
    #   response = client.get_policy_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_store_id: "PolicyStoreId", # required
    #     arn: "ResourceArn", # required
    #     validation_settings: { # required
    #       mode: "OFF" # One of: ["OFF", "STRICT"], # required
    #     },
    #     created_date: Time.now, # required
    #     last_updated_date: Time.now, # required
    #     description: "PolicyStoreDescription",
    #     deletion_protection: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     cedar_version: "CEDAR_2" # One of: ["CEDAR_2", "CEDAR_4"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetPolicyStoreOutput]
    def get_policy_store(params = {}, options = {})
      request = build_request(:get_policy_store, params)
      request.send_request(options)
    end

    # <p>Retrieve the details for the specified policy template in the specified policy store.</p>
    # @param [Hash, Types::GetPolicyTemplateInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store that contains the policy template that you want information about.</p>
    # @option params [String] :policy_template_id
    #   <p>Specifies the ID of the policy template that you want information about.</p>
    # @example GetPolicyTemplate
    #   # The following example displays the details of the specified policy template.
    #   params = {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     policy_template_id: "PTEXAMPLEabcdefg111111"
    #   }
    #   options = {}
    #   response = client.get_policy_template(params, options)
    #   response.to_h #=>
    #   {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     policy_template_id: "PTEXAMPLEabcdefg111111",
    #     description: "Template for research dept",
    #     statement: "permit(\n  principal ?principal,\n  action == Action::\"view\",\n  resource in ?resource\n) when {\n  principal has department && principal.department == \"research\" \n};",
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_template_id: "PolicyTemplateId", # required
    #   }
    #   options = {}
    #   response = client.get_policy_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_template_id: "PolicyTemplateId", # required
    #     description: "PolicyTemplateDescription",
    #     statement: "PolicyStatement", # required
    #     created_date: Time.now, # required
    #     last_updated_date: Time.now, # required
    #   }
    # @return [Types::GetPolicyTemplateOutput]
    def get_policy_template(params = {}, options = {})
      request = build_request(:get_policy_template, params)
      request.send_request(options)
    end

    # <p>Retrieve the details for the specified schema in the specified policy store.</p>
    # @param [Hash, Types::GetSchemaInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store that contains the schema.</p>
    # @example GetSchema
    #   # The following example retrieves the current schema stored in the specified policy store.
    # # 
    # # Note
    # # The JSON in the parameters of this operation are strings that can contain embedded quotation marks (") within the outermost quotation mark pair. This requires that you stringify the JSON object by preceding all embedded quotation marks with a backslash character ( \" ) and combining all lines into a single text line with no line breaks.
    # # 
    # # Example strings might be displayed wrapped across multiple lines here for readability, but the operation requires the parameters be submitted as single line strings.
    #   params = {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    #   options = {}
    #   response = client.get_schema(params, options)
    #   response.to_h #=>
    #   {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     schema: "{\n\"My::Application\": {\n\"actions\": {\n\"remoteAccess\": {\n\"appliesTo\": {\n\"principalTypes\":   [\"Employee\"]\n}\n}\n},\n\"entityTypes\":   {\n\"Employee\": {\n\"shape\": {\n\"attributes\": {\n\"jobLevel\": { \"type\": \"Long\" },\n\"name\": { \"type\":\"String\" }\n},\n\"type\": \"Record\"\n}\n}\n}\n}\n  }",
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #   }
    #   options = {}
    #   response = client.get_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_store_id: "PolicyStoreId", # required
    #     schema: "SchemaJson", # required
    #     created_date: Time.now, # required
    #     last_updated_date: Time.now, # required
    #     namespaces: ["Namespace"]
    #   }
    # @return [Types::GetSchemaOutput]
    def get_schema(params = {}, options = {})
      request = build_request(:get_schema, params)
      request.send_request(options)
    end

    # <p>Makes an authorization decision about a service request described in the parameters. The information in the parameters can also define additional context that Verified Permissions can include in the evaluation. The request is evaluated against all matching policies in the specified policy store. The result of the decision is either <code>Allow</code> or <code>Deny</code>, along with a list of the policies that resulted in the decision.</p>
    # @param [Hash, Types::IsAuthorizedInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store. Policies in this policy store will be used to make an authorization decision for the input.</p>
    # @option params [Types::EntityIdentifier] :principal
    #   <p>Specifies the principal for which the authorization decision is to be made.</p>
    # @option params [Types::ActionIdentifier] :action
    #   <p>Specifies the requested action to be authorized. For example, is the principal authorized to perform this action on the resource?</p>
    # @option params [Types::EntityIdentifier] :resource
    #   <p>Specifies the resource for which the authorization decision is to be made.</p>
    # @option params [Types::ContextDefinition] :context
    #   <p>Specifies additional context that can be used to make more granular authorization decisions.</p>
    # @option params [Types::EntitiesDefinition] :entities
    #   <p>(Optional) Specifies the list of resources and principals and their associated attributes that Verified Permissions can examine when evaluating the policies. These additional entities and their attributes can be referenced and checked by conditional elements in the policies in the specified policy store.</p> <note> <p>You can include only principal and resource entities in this parameter; you can't include actions. You must specify actions in the schema.</p> </note>
    # @example IsAuthorized - Example 1
    #   # The following example requests an authorization decision for a principal of type User named Alice, who wants to perform the updatePhoto operation, on a resource of type Photo named VacationPhoto94.jpg.
    # # 
    # # The response shows that the request was allowed by one policy.
    #   params = {
    #     principal: {
    #       entity_type: "User",
    #       entity_id: "alice"
    #     },
    #     action: {
    #       action_type: "Action",
    #       action_id: "view"
    #     },
    #     resource: {
    #       entity_type: "Photo",
    #       entity_id: "VacationPhoto94.jpg"
    #     },
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    #   options = {}
    #   response = client.is_authorized(params, options)
    #   response.to_h #=>
    #   {
    #     decision: ALLOW,
    #     determining_policies: [
    #       {
    #         policy_id: "9wYxMpljbbZQb5fcZHyJhY"
    #       }
    #     ],
    #     errors: [
    #     ]
    #   }
    # @example IsAuthorized - Example 2
    #   # The following example is the same as the previous example, except that the principal is User::"bob", and the policy store doesn't contain any policy that allows that user access to Album::"alice_folder". The output infers that the Deny was implicit because the list of DeterminingPolicies is empty.
    #   params = {
    #     principal: {
    #       entity_type: "User",
    #       entity_id: "bob"
    #     },
    #     action: {
    #       action_type: "Action",
    #       action_id: "view"
    #     },
    #     resource: {
    #       entity_type: "Photo",
    #       entity_id: "VacationPhoto94.jpg"
    #     },
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    #   options = {}
    #   response = client.is_authorized(params, options)
    #   response.to_h #=>
    #   {
    #     decision: DENY,
    #     determining_policies: [
    #     ],
    #     errors: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     principal: {
    #       entity_type: "EntityType", # required
    #       entity_id: "EntityId", # required
    #     },
    #     action: {
    #       action_type: "ActionType", # required
    #       action_id: "ActionId", # required
    #     },
    #     resource: {
    #       entity_type: "EntityType", # required
    #       entity_id: "EntityId", # required
    #     },
    #     context: {
    #       # One of:
    #       context_map: {
    #         "String" => {
    #           # One of:
    #           boolean: false,
    #           entity_identifier: {
    #             entity_type: "EntityType", # required
    #             entity_id: "EntityId", # required
    #           },
    #           long: 1,
    #           string: "StringAttribute",
    #           set: [{
    #             # recursive AttributeValue
    #           }],
    #           record: {
    #             "String" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           ipaddr: "IpAddr",
    #           decimal: "Decimal",
    #           datetime: "DatetimeAttribute",
    #           duration: "Duration"
    #         }
    #       },
    #       cedar_json: "CedarJson"
    #     },
    #     entities: {
    #       # One of:
    #       entity_list: [
    #         {
    #           identifier: { # required
    #             entity_type: "EntityType", # required
    #             entity_id: "EntityId", # required
    #           },
    #           attributes: {
    #             "String" => {
    #               # One of:
    #               boolean: false,
    #               entity_identifier: {
    #                 entity_type: "EntityType", # required
    #                 entity_id: "EntityId", # required
    #               },
    #               long: 1,
    #               string: "StringAttribute",
    #               set: [{
    #                 # recursive AttributeValue
    #               }],
    #               record: {
    #                 "String" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               ipaddr: "IpAddr",
    #               decimal: "Decimal",
    #               datetime: "DatetimeAttribute",
    #               duration: "Duration"
    #             }
    #           },
    #           parents: [
    #             {
    #               entity_type: "EntityType", # required
    #               entity_id: "EntityId", # required
    #             }
    #           ]
    #         }
    #       ],
    #       cedar_json: "CedarJson"
    #     }
    #   }
    #   options = {}
    #   response = client.is_authorized(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     decision: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #     determining_policies: [ # required
    #       {
    #         policy_id: "PolicyId", # required
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         error_description: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::IsAuthorizedOutput]
    def is_authorized(params = {}, options = {})
      request = build_request(:is_authorized, params)
      request.send_request(options)
    end

    # <p>Makes an authorization decision about a service request described in the parameters. The principal in this request comes from an external identity source in the form of an identity token formatted as a <a href="https://wikipedia.org/wiki/JSON_Web_Token">JSON web token (JWT)</a>. The information in the parameters can also define additional context that Verified Permissions can include in the evaluation. The request is evaluated against all matching policies in the specified policy store. The result of the decision is either <code>Allow</code> or <code>Deny</code>, along with a list of the policies that resulted in the decision.</p> <p>Verified Permissions validates each token that is specified in a request by checking its expiration date and its signature.</p> <important> <p>Tokens from an identity source user continue to be usable until they expire. Token revocation and resource deletion have no effect on the validity of a token in your policy store</p> </important>
    # @param [Hash, Types::IsAuthorizedWithTokenInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store. Policies in this policy store will be used to make an authorization decision for the input.</p>
    # @option params [String] :identity_token
    #   <p>Specifies an identity token for the principal to be authorized. This token is provided to you by the identity provider (IdP) associated with the specified identity source. You must specify either an <code>accessToken</code>, an <code>identityToken</code>, or both.</p> <p>Must be an ID token. Verified Permissions returns an error if the <code>token_use</code> claim in the submitted token isn't <code>id</code>.</p>
    # @option params [String] :access_token
    #   <p>Specifies an access token for the principal to be authorized. This token is provided to you by the identity provider (IdP) associated with the specified identity source. You must specify either an <code>accessToken</code>, an <code>identityToken</code>, or both.</p> <p>Must be an access token. Verified Permissions returns an error if the <code>token_use</code> claim in the submitted token isn't <code>access</code>.</p>
    # @option params [Types::ActionIdentifier] :action
    #   <p>Specifies the requested action to be authorized. Is the specified principal authorized to perform this action on the specified resource.</p>
    # @option params [Types::EntityIdentifier] :resource
    #   <p>Specifies the resource for which the authorization decision is made. For example, is the principal allowed to perform the action on the resource?</p>
    # @option params [Types::ContextDefinition] :context
    #   <p>Specifies additional context that can be used to make more granular authorization decisions.</p>
    # @option params [Types::EntitiesDefinition] :entities
    #   <p>(Optional) Specifies the list of resources and their associated attributes that Verified Permissions can examine when evaluating the policies. These additional entities and their attributes can be referenced and checked by conditional elements in the policies in the specified policy store.</p> <important> <p>You can't include principals in this parameter, only resource and action entities. This parameter can't include any entities of a type that matches the user or group entity types that you defined in your identity source.</p> <ul> <li> <p>The <code>IsAuthorizedWithToken</code> operation takes principal attributes from <b> <i>only</i> </b> the <code>identityToken</code> or <code>accessToken</code> passed to the operation.</p> </li> <li> <p>For action entities, you can include only their <code>Identifier</code> and <code>EntityType</code>. </p> </li> </ul> </important>
    # @example IsAuthorizedWithToken - Example 1
    #   # The following example requests an authorization decision for a user who was authenticated by Amazon Cognito. The request uses the identity token provided by Amazon Cognito instead of the access token. In this example, the specified information store is configured to return principals as entities of type CognitoUser. The policy store contains a policy with the following statement.
    # # 
    # # permit(
    # #     principal == CognitoUser::"us-east-1_1a2b3c4d5|a1b2c3d4e5f6g7h8i9j0kalbmc",
    # #     action,
    # #     resource == Photo::"VacationPhoto94.jpg"
    # # );
    #   params = {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     action: {
    #       action_id: "View",
    #       action_type: "Action"
    #     },
    #     resource: {
    #       entity_id: "vacationPhoto94.jpg",
    #       entity_type: "Photo"
    #     },
    #     identity_token: "EgZjxMPlbWUyBggAEEUYOdIBCDM3NDlqMGo3qAIAsAIA"
    #   }
    #   options = {}
    #   response = client.is_authorized_with_token(params, options)
    #   response.to_h #=>
    #   {
    #     decision: ALLOW,
    #     determining_policies: [
    #       {
    #         policy_id: "9wYxMpljbbZQb5fcZHyJhY"
    #       }
    #     ],
    #     errors: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     identity_token: "Token",
    #     access_token: "Token",
    #     action: {
    #       action_type: "ActionType", # required
    #       action_id: "ActionId", # required
    #     },
    #     resource: {
    #       entity_type: "EntityType", # required
    #       entity_id: "EntityId", # required
    #     },
    #     context: {
    #       # One of:
    #       context_map: {
    #         "String" => {
    #           # One of:
    #           boolean: false,
    #           entity_identifier: {
    #             entity_type: "EntityType", # required
    #             entity_id: "EntityId", # required
    #           },
    #           long: 1,
    #           string: "StringAttribute",
    #           set: [{
    #             # recursive AttributeValue
    #           }],
    #           record: {
    #             "String" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           ipaddr: "IpAddr",
    #           decimal: "Decimal",
    #           datetime: "DatetimeAttribute",
    #           duration: "Duration"
    #         }
    #       },
    #       cedar_json: "CedarJson"
    #     },
    #     entities: {
    #       # One of:
    #       entity_list: [
    #         {
    #           identifier: { # required
    #             entity_type: "EntityType", # required
    #             entity_id: "EntityId", # required
    #           },
    #           attributes: {
    #             "String" => {
    #               # One of:
    #               boolean: false,
    #               entity_identifier: {
    #                 entity_type: "EntityType", # required
    #                 entity_id: "EntityId", # required
    #               },
    #               long: 1,
    #               string: "StringAttribute",
    #               set: [{
    #                 # recursive AttributeValue
    #               }],
    #               record: {
    #                 "String" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               ipaddr: "IpAddr",
    #               decimal: "Decimal",
    #               datetime: "DatetimeAttribute",
    #               duration: "Duration"
    #             }
    #           },
    #           parents: [
    #             {
    #               entity_type: "EntityType", # required
    #               entity_id: "EntityId", # required
    #             }
    #           ]
    #         }
    #       ],
    #       cedar_json: "CedarJson"
    #     }
    #   }
    #   options = {}
    #   response = client.is_authorized_with_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     decision: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #     determining_policies: [ # required
    #       {
    #         policy_id: "PolicyId", # required
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         error_description: "String", # required
    #       }
    #     ],
    #     principal: {
    #       entity_type: "EntityType", # required
    #       entity_id: "EntityId", # required
    #     }
    #   }
    # @return [Types::IsAuthorizedWithTokenOutput]
    def is_authorized_with_token(params = {}, options = {})
      request = build_request(:is_authorized_with_token, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of all of the identity sources defined in the specified policy store.</p>
    # @param [Hash, Types::ListIdentitySourcesInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store that contains the identity sources that you want to list.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p> <p>If you do not specify this parameter, the operation defaults to 10 identity sources per response. You can specify a maximum of 50 identity sources per response.</p>
    # @option params [Array<Types::IdentitySourceFilter>] :filters
    #   <p>Specifies characteristics of an identity source that you can use to limit the output to matching identity sources.</p>
    # @example ListIdentitySources
    #   # The following example request creates lists the identity sources currently defined in the specified policy store.
    #   params = {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    #   options = {}
    #   response = client.list_identity_sources(params, options)
    #   response.to_h #=>
    #   {
    #     identity_sources: [
    #       {
    #         created_date: Time.parse("2023-05-19T20:29:23.66812Z"),
    #         details: {
    #           client_ids: [
    #             "a1b2c3d4e5f6g7h8i9j0kalbmc"
    #           ],
    #           user_pool_arn: "arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5",
    #           discovery_url: "https://cognito-idp.us-east-1.amazonaws.com/us-east-1_1a2b3c4d5",
    #           open_id_issuer: COGNITO
    #         },
    #         identity_source_id: "ISEXAMPLEabcdefg111111",
    #         last_updated_date: Time.parse("2023-05-19T20:29:23.66812Z"),
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #         principal_entity_type: "User"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         principal_entity_type: "PrincipalEntityType"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_identity_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     identity_sources: [ # required
    #       {
    #         created_date: Time.now, # required
    #         details: {
    #           client_ids: ["ClientId"],
    #           user_pool_arn: "UserPoolArn",
    #           discovery_url: "DiscoveryUrl",
    #           open_id_issuer: "COGNITO" # One of: ["COGNITO"]
    #         },
    #         identity_source_id: "IdentitySourceId", # required
    #         last_updated_date: Time.now, # required
    #         policy_store_id: "PolicyStoreId", # required
    #         principal_entity_type: "PrincipalEntityType", # required
    #         configuration: {
    #           # One of:
    #           cognito_user_pool_configuration: {
    #             user_pool_arn: "UserPoolArn", # required
    #             client_ids: ["ClientId"], # required
    #             issuer: "Issuer", # required
    #             group_configuration: {
    #               group_entity_type: "GroupEntityType"
    #             }
    #           },
    #           open_id_connect_configuration: {
    #             issuer: "Issuer", # required
    #             entity_id_prefix: "EntityIdPrefix",
    #             group_configuration: {
    #               group_claim: "Claim", # required
    #               group_entity_type: "GroupEntityType", # required
    #             },
    #             token_selection: { # required
    #               # One of:
    #               access_token_only: {
    #                 principal_id_claim: "Claim",
    #                 audiences: ["Audience"]
    #               },
    #               identity_token_only: {
    #                 principal_id_claim: "Claim",
    #                 client_ids: ["ClientId"]
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListIdentitySourcesOutput]
    def list_identity_sources(params = {}, options = {})
      request = build_request(:list_identity_sources, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of all policies stored in the specified policy store.</p>
    # @param [Hash, Types::ListPoliciesInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store you want to list policies from.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p> <p>If you do not specify this parameter, the operation defaults to 10 policies per response. You can specify a maximum of 50 policies per response.</p>
    # @option params [Types::PolicyFilter] :filter
    #   <p>Specifies a filter that limits the response to only policies that match the specified criteria. For example, you list only the policies that reference a specified principal.</p>
    # @example ListPolicies - Example 1
    #   # The following example lists all policies in the policy store.
    #   params = {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    #   options = {}
    #   response = client.list_policies(params, options)
    #   response.to_h #=>
    #   {
    #     policies: [
    #       {
    #         created_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #         definition: {
    #     "static" => {
    #       "description" => Grant members of janeFriends UserGroup access to the vacationFolder Album
    #     }
    #   },
    #         last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #         policy_id: "9wYxMpljbbZQb5fcZHyJhY",
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #         policy_type: STATIC,
    #         principal: {
    #           entity_id: "janeFriends",
    #           entity_type: "UserGroup"
    #         },
    #         resource: {
    #           entity_id: "vacationFolder",
    #           entity_type: "Album"
    #         }
    #       },
    #       {
    #         created_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #         definition: {
    #     "static" => {
    #       "description" => Grant everyone access to the publicFolder Album
    #     }
    #   },
    #         last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #         policy_id: "Et9KxMplyaDdyurDw8TeFa",
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #         policy_type: STATIC,
    #         resource: {
    #           entity_id: "publicFolder",
    #           entity_type: "Album"
    #         }
    #       }
    #     ]
    #   }
    # @example ListPolicies - Example 2
    #   # The following example lists all policies for a specified principal.
    #   params = {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     filter: {
    #       principal: {
    #     "identifier" => {
    #       "entityType" => User,
    #       "entityId" => alice
    #     }
    #   }
    #     }
    #   }
    #   options = {}
    #   response = client.list_policies(params, options)
    #   response.to_h #=>
    #   {
    #     policies: [
    #       {
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #         policy_id: "Et9KxMplyaDdyurDw8TeFa",
    #         policy_type: STATIC,
    #         principal: {
    #           entity_type: "User",
    #           entity_id: "alice"
    #         },
    #         resource: {
    #           entity_type: "Album",
    #           entity_id: "bob_folder"
    #         },
    #         definition: {
    #     "static" => {
    #       "description" => An example policy
    #     }
    #   },
    #         created_date: Time.parse("2022-12-09T22:55:16.067533Z"),
    #         last_updated_date: Time.parse("2022-12-09T22:55:16.067533Z")
    #       },
    #       {
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #         policy_id: "9wYxMpljbbZQb5fcZHyJhY",
    #         policy_type: STATIC,
    #         principal: {
    #           entity_type: "User",
    #           entity_id: "alice"
    #         },
    #         resource: {
    #           entity_type: "Album",
    #           entity_id: "alice_folder"
    #         },
    #         definition: {
    #     "static" => {}
    #   },
    #         created_date: Time.parse("2022-12-09T23:00:24.66266Z"),
    #         last_updated_date: Time.parse("2022-12-09T23:00:24.66266Z")
    #       }
    #     ]
    #   }
    # @example ListPolicies - Example 3
    #   # The following example uses the Filter parameter to list only the template-linked policies in the specified policy store.
    #   params = {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     filter: {
    #       policy_type: TEMPLATE_LINKED
    #     }
    #   }
    #   options = {}
    #   response = client.list_policies(params, options)
    #   response.to_h #=>
    #   {
    #     policies: [
    #       {
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #         policy_id: "9wYxMpljbbZQb5fcZHyJhY",
    #         policy_type: TEMPLATE_LINKED,
    #         principal: {
    #           entity_type: "User",
    #           entity_id: "alice"
    #         },
    #         resource: {
    #           entity_type: "Photo",
    #           entity_id: "pic.jpg"
    #         },
    #         definition: {
    #     "templateLinked" => {
    #       "policyTemplateId" => PTEXAMPLEabcdefg111111,
    #       "principal" => {
    #         "entityType" => User,
    #         "entityId" => alice
    #       },
    #       "resource" => {
    #         "entityType" => Photo,
    #         "entityId" => pic.jpg
    #       }
    #     }
    #   },
    #         created_date: Time.parse("2023-06-13T16:03:07.620867Z"),
    #         last_updated_date: Time.parse("2023-06-13T16:03:07.620867Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filter: {
    #       principal: {
    #         # One of:
    #         unspecified: false,
    #         identifier: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         }
    #       },
    #       resource: {
    #         # One of:
    #         unspecified: false,
    #         identifier: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         }
    #       },
    #       policy_type: "STATIC" # One of: ["STATIC", "TEMPLATE_LINKED"],
    #       policy_template_id: "PolicyTemplateId"
    #     }
    #   }
    #   options = {}
    #   response = client.list_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     policies: [ # required
    #       {
    #         policy_store_id: "PolicyStoreId", # required
    #         policy_id: "PolicyId", # required
    #         policy_type: "STATIC" # One of: ["STATIC", "TEMPLATE_LINKED"], # required
    #         principal: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #         resource: {
    #           entity_type: "EntityType", # required
    #           entity_id: "EntityId", # required
    #         },
    #         actions: [
    #           {
    #             action_type: "ActionType", # required
    #             action_id: "ActionId", # required
    #           }
    #         ],
    #         definition: { # required
    #           # One of:
    #           static: {
    #             description: "StaticPolicyDescription"
    #           },
    #           template_linked: {
    #             policy_template_id: "PolicyTemplateId", # required
    #             principal: {
    #               entity_type: "EntityType", # required
    #               entity_id: "EntityId", # required
    #             },
    #             resource: {
    #               entity_type: "EntityType", # required
    #               entity_id: "EntityId", # required
    #             }
    #           }
    #         },
    #         created_date: Time.now, # required
    #         last_updated_date: Time.now, # required
    #         effect: "Permit" # One of: ["Permit", "Forbid"]
    #       }
    #     ]
    #   }
    # @return [Types::ListPoliciesOutput]
    def list_policies(params = {}, options = {})
      request = build_request(:list_policies, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of all policy stores in the calling Amazon Web Services account.</p>
    # @param [Hash, Types::ListPolicyStoresInput] params
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p> <p>If you do not specify this parameter, the operation defaults to 10 policy stores per response. You can specify a maximum of 50 policy stores per response.</p>
    # @example ListPolicyStores
    #   # The following example lists all policy stores in the AWS account in the AWS Region in which you call the operation.
    #   params = {}
    #   options = {}
    #   response = client.list_policy_stores(params, options)
    #   response.to_h #=>
    #   {
    #     policy_stores: [
    #       {
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #         arn: "arn:aws:verifiedpermissions::123456789012:policy-store/C7v5xMplfFH3i3e4Jrzb1a",
    #         created_date: Time.parse("2023-05-16T17:41:29.103459Z")
    #       },
    #       {
    #         policy_store_id: "PSEXAMPLEabcdefg222222",
    #         arn: "arn:aws:verifiedpermissions::123456789012:policy-store/PSEXAMPLEabcdefg222222",
    #         created_date: Time.parse("2023-05-16T18:23:04.985521Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_policy_stores(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     policy_stores: [ # required
    #       {
    #         policy_store_id: "PolicyStoreId", # required
    #         arn: "ResourceArn", # required
    #         created_date: Time.now, # required
    #         last_updated_date: Time.now,
    #         description: "PolicyStoreDescription"
    #       }
    #     ]
    #   }
    # @return [Types::ListPolicyStoresOutput]
    def list_policy_stores(params = {}, options = {})
      request = build_request(:list_policy_stores, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of all policy templates in the specified policy store.</p>
    # @param [Hash, Types::ListPolicyTemplatesInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store that contains the policy templates you want to list.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p> <p>If you do not specify this parameter, the operation defaults to 10 policy templates per response. You can specify a maximum of 50 policy templates per response.</p>
    # @example ListPolicyTemplates
    #   # The following example retrieves a list of all of the policy templates in the specified policy store.
    #   params = {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    #   options = {}
    #   response = client.list_policy_templates(params, options)
    #   response.to_h #=>
    #   {
    #     policy_templates: [
    #       {
    #         created_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #         description: "Generic template",
    #         last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #         policy_template_id: "PTEXAMPLEabcdefg111111"
    #       },
    #       {
    #         created_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #         description: "Template for research dept",
    #         last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #         policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #         policy_template_id: "PTEXAMPLEabcdefg222222"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_policy_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     policy_templates: [ # required
    #       {
    #         policy_store_id: "PolicyStoreId", # required
    #         policy_template_id: "PolicyTemplateId", # required
    #         description: "PolicyTemplateDescription",
    #         created_date: Time.now, # required
    #         last_updated_date: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListPolicyTemplatesOutput]
    def list_policy_templates(params = {}, options = {})
      request = build_request(:list_policy_templates, params)
      request.send_request(options)
    end

    # <p>Returns the tags associated with the specified Amazon Verified Permissions resource. In Verified Permissions, policy stores can be tagged.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource for which you want to view tags.</p>
    # @example ListTagsForResource
    #   # The following example lists all the tags for the resource named in the API call.
    #   params = {
    #     resource_arn: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Creates or updates the policy schema in the specified policy store. The schema is used to validate any Cedar policies and policy templates submitted to the policy store. Any changes to the schema validate only policies and templates submitted after the schema change. Existing policies and templates are not re-evaluated against the changed schema. If you later update a policy, then it is evaluated against the new schema at that time.</p> <note> <p>Verified Permissions is <i> <a href="https://wikipedia.org/wiki/Eventual_consistency">eventually consistent</a> </i>. It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.</p> </note>
    # @param [Hash, Types::PutSchemaInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store in which to place the schema.</p>
    # @option params [Types::SchemaDefinition] :definition
    #   <p>Specifies the definition of the schema to be stored. The schema definition must be written in Cedar schema JSON.</p>
    # @example PutSchema
    #   # The following example creates a new schema, or updates an existing schema, in the specified policy store. Note that the schema text is shown line wrapped for readability. You should submit the entire schema text as a single line of text.
    # # 
    # # Note
    # # The JSON in the parameters of this operation are strings that can contain embedded quotation marks (") within the outermost quotation mark pair. This requires that you stringify the JSON object by preceding all embedded quotation marks with a backslash character ( \" ) and combining all lines into a single text line with no line breaks.
    # # 
    # # Example strings might be displayed wrapped across multiple lines here for readability, but the operation requires the parameters be submitted as single line strings.
    #   params = {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     definition: {
    #     "cedarJson" => {"MySampleNamespace": {"actions": {"remoteAccess": {"appliesTo": {"principalTypes": ["Employee"]}}},"entityTypes": {"Employee": {"shape": {"attributes": {"jobLevel": {"type": "Long"},"name": {"type": "String"}},"type": "Record"}}}}}
    #   }
    #   }
    #   options = {}
    #   response = client.put_schema(params, options)
    #   response.to_h #=>
    #   {
    #     created_date: Time.parse("2023-06-13T19:28:06.003726Z"),
    #     last_updated_date: Time.parse("2023-06-13T19:28:06.003726Z"),
    #     namespaces: [
    #       "My::Sample::Namespace"
    #     ],
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     definition: { # required
    #       # One of:
    #       cedar_json: "SchemaJson"
    #     }
    #   }
    #   options = {}
    #   response = client.put_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_store_id: "PolicyStoreId", # required
    #     namespaces: ["Namespace"], # required
    #     created_date: Time.now, # required
    #     last_updated_date: Time.now, # required
    #   }
    # @return [Types::PutSchemaOutput]
    def put_schema(params = {}, options = {})
      request = build_request(:put_schema, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified Amazon Verified Permissions resource. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. In Verified Permissions, policy stores can be tagged.</p> <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p> <p>You can use the TagResource action with a resource that already has tags. If you specify a new tag key, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag.</p> <p>You can associate as many as 50 tags with a resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource that you're adding tags to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
    # @example TagResource
    #   # The following example tags the resource.
    #   params = {
    #     resource_arn: "C7v5xMplfFH3i3e4Jrzb1a",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Removes one or more tags from the specified Amazon Verified Permissions resource. In Verified Permissions, policy stores can be tagged.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource from which you are removing tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    # @example UntagResource
    #   # The following example removes the listed tags from the resource.
    #   params = {
    #     resource_arn: "C7v5xMplfFH3i3e4Jrzb1a",
    #     tag_keys: [
    #       "key1",
    #       "key2"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Updates the specified identity source to use a new identity provider (IdP), or to change the mapping of identities from the IdP to a different principal entity type.</p> <note> <p>Verified Permissions is <i> <a href="https://wikipedia.org/wiki/Eventual_consistency">eventually consistent</a> </i>. It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.</p> </note>
    # @param [Hash, Types::UpdateIdentitySourceInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store that contains the identity source that you want to update.</p>
    # @option params [String] :identity_source_id
    #   <p>Specifies the ID of the identity source that you want to update.</p>
    # @option params [Types::UpdateConfiguration] :update_configuration
    #   <p>Specifies the details required to communicate with the identity provider (IdP) associated with this identity source.</p>
    # @option params [String] :principal_entity_type
    #   <p>Specifies the data type of principals generated for identities authenticated by the identity source.</p>
    # @example UpdateIdentitySource
    #   # The following example updates the configuration of the specified identity source with a new configuration.
    #   params = {
    #     identity_source_id: "ISEXAMPLEabcdefg111111",
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     update_configuration: {
    #     "cognitoUserPoolConfiguration" => {
    #       "userPoolArn" => arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5,
    #       "clientIds" => [a1b2c3d4e5f6g7h8i9j0kalbmc]
    #     }
    #   }
    #   }
    #   options = {}
    #   response = client.update_identity_source(params, options)
    #   response.to_h #=>
    #   {
    #     created_date: Time.parse("2023-05-19T20:30:28.173926Z"),
    #     identity_source_id: "ISEXAMPLEabcdefg111111",
    #     last_updated_date: Time.parse("2023-05-22T20:45:59.962216Z"),
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     identity_source_id: "IdentitySourceId", # required
    #     update_configuration: { # required
    #       # One of:
    #       cognito_user_pool_configuration: {
    #         user_pool_arn: "UserPoolArn", # required
    #         client_ids: ["ClientId"],
    #         group_configuration: {
    #           group_entity_type: "GroupEntityType", # required
    #         }
    #       },
    #       open_id_connect_configuration: {
    #         issuer: "Issuer", # required
    #         entity_id_prefix: "EntityIdPrefix",
    #         group_configuration: {
    #           group_claim: "Claim", # required
    #           group_entity_type: "GroupEntityType", # required
    #         },
    #         token_selection: { # required
    #           # One of:
    #           access_token_only: {
    #             principal_id_claim: "Claim",
    #             audiences: ["Audience"]
    #           },
    #           identity_token_only: {
    #             principal_id_claim: "Claim",
    #             client_ids: ["ClientId"]
    #           }
    #         }
    #       }
    #     },
    #     principal_entity_type: "PrincipalEntityType"
    #   }
    #   options = {}
    #   response = client.update_identity_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created_date: Time.now, # required
    #     identity_source_id: "IdentitySourceId", # required
    #     last_updated_date: Time.now, # required
    #     policy_store_id: "PolicyStoreId", # required
    #   }
    # @return [Types::UpdateIdentitySourceOutput]
    def update_identity_source(params = {}, options = {})
      request = build_request(:update_identity_source, params)
      request.send_request(options)
    end

    # <p>Modifies a Cedar static policy in the specified policy store. You can change only certain elements of the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyInput.html#amazonverifiedpermissions-UpdatePolicy-request-UpdatePolicyDefinition">UpdatePolicyDefinition</a> parameter. You can directly update only static policies. To change a template-linked policy, you must update the template instead, using <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyTemplate.html">UpdatePolicyTemplate</a>.</p> <note> <ul> <li> <p>If policy validation is enabled in the policy store, then updating a static policy causes Verified Permissions to validate the policy against the schema in the policy store. If the updated static policy doesn't pass validation, the operation fails and the update isn't stored.</p> </li> <li> <p>When you edit a static policy, you can change only certain elements of a static policy:</p> <ul> <li> <p>The action referenced by the policy. </p> </li> <li> <p>A condition clause, such as when and unless. </p> </li> </ul> <p>You can't change these elements of a static policy: </p> <ul> <li> <p>Changing a policy from a static policy to a template-linked policy. </p> </li> <li> <p>Changing the effect of a static policy from permit or forbid. </p> </li> <li> <p>The principal referenced by a static policy. </p> </li> <li> <p>The resource referenced by a static policy. </p> </li> </ul> </li> <li> <p>To update a template-linked policy, you must update the template instead. </p> </li> </ul> </note> <note> <p>Verified Permissions is <i> <a href="https://wikipedia.org/wiki/Eventual_consistency">eventually consistent</a> </i>. It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.</p> </note>
    # @param [Hash, Types::UpdatePolicyInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store that contains the policy that you want to update.</p>
    # @option params [String] :policy_id
    #   <p>Specifies the ID of the policy that you want to update. To find this value, you can use <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicies.html">ListPolicies</a>.</p>
    # @option params [Types::UpdatePolicyDefinition] :definition
    #   <p>Specifies the updated policy content that you want to replace on the specified policy. The content must be valid Cedar policy language text.</p> <p>You can change only the following elements from the policy definition:</p> <ul> <li> <p>The <code>action</code> referenced by the policy.</p> </li> <li> <p>Any conditional clauses, such as <code>when</code> or <code>unless</code> clauses.</p> </li> </ul> <p>You <b>can't</b> change the following elements:</p> <ul> <li> <p>Changing from <code>static</code> to <code>templateLinked</code>.</p> </li> <li> <p>Changing the effect of the policy from <code>permit</code> or <code>forbid</code>.</p> </li> <li> <p>The <code>principal</code> referenced by the policy.</p> </li> <li> <p>The <code>resource</code> referenced by the policy.</p> </li> </ul>
    # @example UpdatePolicy
    #   # The following example replaces the definition of the specified static policy with a new one.
    #   params = {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     policy_id: "9wYxMpljbbZQb5fcZHyJhY",
    #     definition: {
    #     "static" => {
    #       "statement" => permit(principal, action, resource in Album::"public_folder");
    #     }
    #   }
    #   }
    #   options = {}
    #   response = client.update_policy(params, options)
    #   response.to_h #=>
    #   {
    #     created_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #     last_updated_date: Time.parse("2024-08-12T18:20:50.99Z"),
    #     policy_id: "9wYxMpljbbZQb5fcZHyJhY",
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     policy_type: STATIC,
    #     resource: {
    #       entity_type: "Album",
    #       entity_id: "public_folder"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_id: "PolicyId", # required
    #     definition: { # required
    #       # One of:
    #       static: {
    #         description: "StaticPolicyDescription",
    #         statement: "PolicyStatement", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_id: "PolicyId", # required
    #     policy_type: "STATIC" # One of: ["STATIC", "TEMPLATE_LINKED"], # required
    #     principal: {
    #       entity_type: "EntityType", # required
    #       entity_id: "EntityId", # required
    #     },
    #     resource: {
    #       entity_type: "EntityType", # required
    #       entity_id: "EntityId", # required
    #     },
    #     actions: [
    #       {
    #         action_type: "ActionType", # required
    #         action_id: "ActionId", # required
    #       }
    #     ],
    #     created_date: Time.now, # required
    #     last_updated_date: Time.now, # required
    #     effect: "Permit" # One of: ["Permit", "Forbid"]
    #   }
    # @return [Types::UpdatePolicyOutput]
    def update_policy(params = {}, options = {})
      request = build_request(:update_policy, params)
      request.send_request(options)
    end

    # <p>Modifies the validation setting for a policy store.</p> <note> <p>Verified Permissions is <i> <a href="https://wikipedia.org/wiki/Eventual_consistency">eventually consistent</a> </i>. It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.</p> </note>
    # @param [Hash, Types::UpdatePolicyStoreInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store that you want to update</p>
    # @option params [Types::ValidationSettings] :validation_settings
    #   <p>A structure that defines the validation settings that want to enable for the policy store.</p>
    # @option params [String] :deletion_protection
    #   <p>Specifies whether the policy store can be deleted. If enabled, the policy store can't be deleted.</p> <p>When you call <code>UpdatePolicyStore</code>, this parameter is unchanged unless explicitly included in the call.</p>
    # @option params [String] :description
    #   <p>Descriptive text that you can provide to help with identification of the current policy store.</p>
    # @example UpdatePolicyStore
    #   # The following example turns off the validation settings for a policy store.
    #   params = {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     validation_settings: {
    #       mode: OFF
    #     }
    #   }
    #   options = {}
    #   response = client.update_policy_store(params, options)
    #   response.to_h #=>
    #   {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     arn: "arn:aws:verifiedpermissions::123456789012:policy-store/C7v5xMplfFH3i3e4Jrzb1a",
    #     created_date: Time.parse("2023-05-17T18:36:10.134448Z"),
    #     last_updated_date: Time.parse("2023-05-23T18:18:12.443083Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     validation_settings: { # required
    #       mode: "OFF" # One of: ["OFF", "STRICT"], # required
    #     },
    #     deletion_protection: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     description: "PolicyStoreDescription"
    #   }
    #   options = {}
    #   response = client.update_policy_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_store_id: "PolicyStoreId", # required
    #     arn: "ResourceArn", # required
    #     created_date: Time.now, # required
    #     last_updated_date: Time.now, # required
    #   }
    # @return [Types::UpdatePolicyStoreOutput]
    def update_policy_store(params = {}, options = {})
      request = build_request(:update_policy_store, params)
      request.send_request(options)
    end

    # <p>Updates the specified policy template. You can update only the description and the some elements of the <a href="https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyTemplate.html#amazonverifiedpermissions-UpdatePolicyTemplate-request-policyBody">policyBody</a>. </p> <important> <p>Changes you make to the policy template content are immediately (within the constraints of eventual consistency) reflected in authorization decisions that involve all template-linked policies instantiated from this template.</p> </important> <note> <p>Verified Permissions is <i> <a href="https://wikipedia.org/wiki/Eventual_consistency">eventually consistent</a> </i>. It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.</p> </note>
    # @param [Hash, Types::UpdatePolicyTemplateInput] params
    # @option params [String] :policy_store_id
    #   <p>Specifies the ID of the policy store that contains the policy template that you want to update.</p>
    # @option params [String] :policy_template_id
    #   <p>Specifies the ID of the policy template that you want to update.</p>
    # @option params [String] :description
    #   <p>Specifies a new description to apply to the policy template.</p>
    # @option params [String] :statement
    #   <p>Specifies new statement content written in Cedar policy language to replace the current body of the policy template.</p> <p>You can change only the following elements of the policy body:</p> <ul> <li> <p>The <code>action</code> referenced by the policy template.</p> </li> <li> <p>Any conditional clauses, such as <code>when</code> or <code>unless</code> clauses.</p> </li> </ul> <p>You <b>can't</b> change the following elements:</p> <ul> <li> <p>The effect (<code>permit</code> or <code>forbid</code>) of the policy template.</p> </li> <li> <p>The <code>principal</code> referenced by the policy template.</p> </li> <li> <p>The <code>resource</code> referenced by the policy template.</p> </li> </ul>
    # @example UpdatePolicyTemplate
    #   # The following example updates a policy template with both a new description and a new policy body. The effect, principal, and resource are the same as the original policy template. Only the action in the head, and the when and unless clauses can be different.
    # # 
    # # Note
    # # The JSON in the parameters of this operation are strings that can contain embedded quotation marks (") within the outermost quotation mark pair. This requires that you stringify the JSON object by preceding all embedded quotation marks with a backslash character ( \" ) and combining all lines into a single text line with no line breaks.
    # # 
    # # Example strings might be displayed wrapped across multiple lines here for readability, but the operation requires the parameters be submitted as single line strings.
    #   params = {
    #     description: "My updated template description",
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     policy_template_id: "PTEXAMPLEabcdefg111111",
    #     statement: "\"ResearchAccess\"\npermit(\nprincipal in ?principal,\naction == Action::\"view\",\nresource in ?resource\"\n)\nwhen {\nprincipal has department && principal.department == \"research\"\n};"
    #   }
    #   options = {}
    #   response = client.update_policy_template(params, options)
    #   response.to_h #=>
    #   {
    #     policy_store_id: "C7v5xMplfFH3i3e4Jrzb1a",
    #     policy_template_id: "PTEXAMPLEabcdefg111111",
    #     created_date: Time.parse("2023-05-17T18:58:48.795411Z"),
    #     last_updated_date: Time.parse("2023-05-17T19:18:48.870209Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_template_id: "PolicyTemplateId", # required
    #     description: "PolicyTemplateDescription",
    #     statement: "PolicyStatement", # required
    #   }
    #   options = {}
    #   response = client.update_policy_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_store_id: "PolicyStoreId", # required
    #     policy_template_id: "PolicyTemplateId", # required
    #     created_date: Time.now, # required
    #     last_updated_date: Time.now, # required
    #   }
    # @return [Types::UpdatePolicyTemplateOutput]
    def update_policy_template(params = {}, options = {})
      request = build_request(:update_policy_template, params)
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
      context[:gem_name] = 'aws-sdk-verifiedpermissions'
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
