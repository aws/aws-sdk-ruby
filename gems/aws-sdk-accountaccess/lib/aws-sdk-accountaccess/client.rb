# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
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
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:accountaccess)

module Aws::AccountAccess
  # An API client for Aws::AccountAccess.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSAccountAccess
    @identifier = :accountaccess

    add_plugin(::Aws::AccountAccess::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
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
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::AccountAccess::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
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
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
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

    # <p>Creates an account access manager instance and its Amazon Web Services account access application in the associated IAM Identity Center instance. This operation is idempotent; calling it multiple times with the same parameters returns the existing application.</p>
    # @param [Hash, Types::CreateApplicationRequest] params
    # @option params [Types::IdentitySource] :identity_source
    #   <p>Specifies the identity source for the application. The identity source defines the IAM Identity Center instance that provides principals for entitlements.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Specifies the tags to assign to the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_source: { # required
    #       # One of:
    #       identity_center: {
    #         instance_arn: "IdentityCenterInstanceArn", # required
    #       }
    #     },
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ApplicationArn", # required
    #   }
    # @return [Types::CreateApplicationResponse]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Creates an entitlement (assignment) in account access manager. An entitlement (assignment) grants a principal (IAM Identity Center user or group) permission to assume a specified IAM role in an Amazon Web Services account. This operation is idempotent.</p>
    # @param [Hash, Types::CreateEntitlementRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application to create the entitlement for.</p>
    # @option params [Types::Entitlement] :entitlement
    #   <p>Specifies the entitlement configuration, including the principal and the IAM role to grant access to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     entitlement: { # required
    #       # One of:
    #       principal_role: {
    #         principal: { # required
    #           # One of:
    #           identity_center: {
    #             # One of:
    #             user_id: "UserId",
    #             group_id: "GroupId"
    #           }
    #         },
    #         role_arn: "RoleArn", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_entitlement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entitlement_id: "String", # required
    #   }
    # @return [Types::CreateEntitlementResponse]
    def create_entitlement(params = {}, options = {})
      request = build_request(:create_entitlement, params)
      request.send_request(options)
    end

    # <p>Deletes an account access manager application. This operation is idempotent; deleting an application that has already been deleted does not return an error.</p>
    # @param [Hash, Types::DeleteApplicationRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApplicationResponse]
    def delete_application(params = {}, options = {})
      request = build_request(:delete_application, params)
      request.send_request(options)
    end

    # <p>Deletes an entitlement from an account access manager application. This operation is idempotent; deleting an entitlement that has already been deleted does not return an error.</p>
    # @param [Hash, Types::DeleteEntitlementRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application that the entitlement belongs to.</p>
    # @option params [String] :entitlement_id
    #   <p>Specifies the unique identifier of the entitlement to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     entitlement_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_entitlement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEntitlementResponse]
    def delete_entitlement(params = {}, options = {})
      request = build_request(:delete_entitlement, params)
      request.send_request(options)
    end

    # <p>Retrieves details about an account access manager application, including its status, identity source, and tags.</p>
    # @param [Hash, Types::GetApplicationRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #   }
    #   options = {}
    #   response = client.get_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_source: { # required
    #       # One of:
    #       identity_center: {
    #         instance_arn: "IdentityCenterInstanceArn", # required
    #         application_arn: "IdentityCenterApplicationArn"
    #       }
    #     },
    #     status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "ACTIVE", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED"], # required
    #     tenant_id: "String",
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     tags: {
    #       "String" => "String"
    #     },
    #     error: {
    #       code: "AUTHORIZATION_ERROR" # One of: ["AUTHORIZATION_ERROR", "RESOURCE_NOT_FOUND_ERROR", "SERVICE_QUOTA_EXCEEDED_ERROR", "INTERNAL_SERVICE_ERROR"], # required
    #       message: "String", # required
    #     }
    #   }
    # @return [Types::GetApplicationResponse]
    def get_application(params = {}, options = {})
      request = build_request(:get_application, params)
      request.send_request(options)
    end

    # <p>Retrieves details about a specific entitlement for an account access manager application, including the principal, IAM role, and target account.</p>
    # @param [Hash, Types::GetEntitlementRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application that the entitlement belongs to.</p>
    # @option params [String] :entitlement_id
    #   <p>Specifies the unique identifier of the entitlement to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     entitlement_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_entitlement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ApplicationArn", # required
    #     entitlement_id: "String", # required
    #     entitlement: { # required
    #       # One of:
    #       principal_role: {
    #         principal: { # required
    #           # One of:
    #           identity_center: {
    #             # One of:
    #             user_id: "UserId",
    #             group_id: "GroupId"
    #           }
    #         },
    #         role_arn: "RoleArn", # required
    #         account: "Account", # required
    #         account_name: "String"
    #       }
    #     },
    #     created_at: Time.now, # required
    #   }
    # @return [Types::GetEntitlementResponse]
    def get_entitlement(params = {}, options = {})
      request = build_request(:get_entitlement, params)
      request.send_request(options)
    end

    # <p>Lists the account access manager applications in your account. Use pagination to ensure that the operation returns quickly and successfully.</p>
    # @param [Hash, Types::ListApplicationsRequest] params
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>Specifies the pagination token from a previous call to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     applications: [ # required
    #       {
    #         application_arn: "ApplicationArn", # required
    #         tenant_id: "String",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListApplicationsResponse]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Lists the entitlements for a specified account access manager application. You can filter results by principal, IAM role, or account. Use pagination to ensure that the operation returns quickly and successfully.</p>
    # @param [Hash, Types::ListEntitlementsRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application to list entitlements for.</p>
    # @option params [Types::EntitlementFilter] :filter
    #   <p>Specifies filter criteria to narrow the entitlements returned. You can filter by principal, IAM role, or account.</p>
    # @option params [String] :next_token
    #   <p>Specifies the pagination token from a previous call to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     filter: { # required
    #       principal_role: {
    #         principal: {
    #           # One of:
    #           identity_center: {
    #             # One of:
    #             user_id: "UserId",
    #             group_id: "GroupId"
    #           }
    #         },
    #         role_arn: "RoleArn",
    #         account: "Account"
    #       }
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_entitlements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entitlements: [ # required
    #       {
    #         entitlement_id: "String", # required
    #         entitlement: { # required
    #           # One of:
    #           principal_role: {
    #             principal: { # required
    #               # One of:
    #               identity_center: {
    #                 # One of:
    #                 user_id: "UserId",
    #                 group_id: "GroupId"
    #               }
    #             },
    #             role_arn: "RoleArn", # required
    #             account: "Account", # required
    #             account_name: "String"
    #           }
    #         },
    #         created_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEntitlementsResponse]
    def list_entitlements(params = {}, options = {})
      request = build_request(:list_entitlements, params)
      request.send_request(options)
    end

    # <p>Lists the tags associated with an account access manager resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Specifies the ARN of the resource to list tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ApplicationArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Adds tags to an account access manager resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Specifies the ARN of the resource to add tags to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Specifies the tags to add to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ApplicationArn", # required
    #     tags: { # required
    #       "String" => "String"
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

    # <p>Removes tags from an account access manager resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Specifies the ARN of the resource to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Specifies the tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ApplicationArn", # required
    #     tag_keys: ["String"], # required
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
      context[:gem_name] = 'aws-sdk-accountaccess'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        application_active: Waiters::ApplicationActive
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
