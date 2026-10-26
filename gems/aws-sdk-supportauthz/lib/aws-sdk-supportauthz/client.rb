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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:supportauthz)

module Aws::SupportAuthZ
  # An API client for Aws::SupportAuthZ.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SupportAuthZ
    @identifier = :supportauthz

    add_plugin(::Aws::SupportAuthZ::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SupportAuthZ::EndpointProvider)
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

    # <p>Creates a support permit that authorizes an AWS support operator to perform specified actions on specified resources. The permit is cryptographically signed using a customer-managed AWS KMS key (ECC_NIST_P384, SIGN_VERIFY) to ensure non-repudiation.</p>
    # @param [Hash, Types::CreateSupportPermitInput] params
    # @option params [Types::Permit] :permit
    #   <p>The permit definition specifying the actions, resources, and time-window conditions that the support operator is authorized to use.</p>
    # @option params [String] :name
    #   <p>A customer-chosen name for the support permit. Must be between 1 and 256 alphanumeric characters.</p>
    # @option params [String] :description
    #   <p>A human-readable description of why this permit is being created. Maximum length of 1024 characters.</p>
    # @option params [Types::SigningKeyInfo] :signing_key_info
    #   <p>The signing key information used to sign the permit. Must reference an AWS KMS key with key usage SIGN_VERIFY and key spec ECC_NIST_P384.</p>
    # @option params [String] :support_case_display_id
    #   <p>The display identifier of the AWS Support case associated with this permit.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, the service returns the existing permit without creating a duplicate.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate with the support permit on creation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     permit: { # required
    #       actions: { # required
    #         # One of:
    #         all_actions: {
    #         },
    #         actions: ["Action"]
    #       },
    #       resources: { # required
    #         # One of:
    #         all_resources_in_region: {
    #         },
    #         resources: ["Resource"]
    #       },
    #       conditions: [{
    #         # One of:
    #         allow_after: Time.now,
    #         allow_before: Time.now
    #       }]
    #     },
    #     name: "Name", # required
    #     description: "Description",
    #     signing_key_info: { # required
    #       # One of:
    #       kms_key: "KmsKeyArn"
    #     },
    #     support_case_display_id: "SupportCaseDisplayId",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_support_permit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "Name", # required
    #     arn: "Arn", # required
    #     description: "Description",
    #     permit: { # required
    #       actions: { # required
    #         # One of:
    #         all_actions: {
    #         },
    #         actions: ["Action"]
    #       },
    #       resources: { # required
    #         # One of:
    #         all_resources_in_region: {
    #         },
    #         resources: ["Resource"]
    #       },
    #       conditions: [{
    #         # One of:
    #         allow_after: Time.now,
    #         allow_before: Time.now
    #       }]
    #     },
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETING"], # required
    #     signing_key_info: { # required
    #       # One of:
    #       kms_key: "KmsKeyArn"
    #     },
    #     created_at: Time.now, # required
    #     support_case_display_id: "SupportCaseDisplayId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateSupportPermitOutput]
    def create_support_permit(params = {}, options = {})
      request = build_request(:create_support_permit, params)
      request.send_request(options)
    end

    # <p>Deletes a support permit, revoking the authorization previously granted to the AWS support operator.</p>
    # @param [Hash, Types::DeleteSupportPermitInput] params
    # @option params [String] :support_permit_identifier
    #   <p>The Amazon Resource Name (ARN) or name of the support permit to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     support_permit_identifier: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_support_permit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "Name", # required
    #     arn: "Arn", # required
    #     description: "Description",
    #     permit: { # required
    #       actions: { # required
    #         # One of:
    #         all_actions: {
    #         },
    #         actions: ["Action"]
    #       },
    #       resources: { # required
    #         # One of:
    #         all_resources_in_region: {
    #         },
    #         resources: ["Resource"]
    #       },
    #       conditions: [{
    #         # One of:
    #         allow_after: Time.now,
    #         allow_before: Time.now
    #       }]
    #     },
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETING"], # required
    #     signing_key_info: { # required
    #       # One of:
    #       kms_key: "KmsKeyArn"
    #     },
    #     created_at: Time.now, # required
    #     support_case_display_id: "SupportCaseDisplayId"
    #   }
    # @return [Types::DeleteSupportPermitOutput]
    def delete_support_permit(params = {}, options = {})
      request = build_request(:delete_support_permit, params)
      request.send_request(options)
    end

    # <p>Retrieves the description of a specific support action.</p>
    # @param [Hash, Types::GetActionInput] params
    # @option params [String] :action
    #   <p>The name of the support action to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action: "Action", # required
    #   }
    #   options = {}
    #   response = client.get_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action: "Action", # required
    #     service: "Service", # required
    #     description: "ActionDescription", # required
    #   }
    # @return [Types::GetActionOutput]
    def get_action(params = {}, options = {})
      request = build_request(:get_action, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a support permit by its ARN or name.</p>
    # @param [Hash, Types::GetSupportPermitInput] params
    # @option params [String] :support_permit_identifier
    #   <p>The ARN or name of the support permit to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     support_permit_identifier: "SupportPermitIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_support_permit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "Name", # required
    #     arn: "Arn", # required
    #     description: "Description",
    #     permit: { # required
    #       actions: { # required
    #         # One of:
    #         all_actions: {
    #         },
    #         actions: ["Action"]
    #       },
    #       resources: { # required
    #         # One of:
    #         all_resources_in_region: {
    #         },
    #         resources: ["Resource"]
    #       },
    #       conditions: [{
    #         # One of:
    #         allow_after: Time.now,
    #         allow_before: Time.now
    #       }]
    #     },
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETING"], # required
    #     signing_key_info: { # required
    #       # One of:
    #       kms_key: "KmsKeyArn"
    #     },
    #     created_at: Time.now, # required
    #     support_case_display_id: "SupportCaseDisplayId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetSupportPermitOutput]
    def get_support_permit(params = {}, options = {})
      request = build_request(:get_support_permit, params)
      request.send_request(options)
    end

    # <p>Lists available support actions for a specified AWS service. Use pagination to ensure that the operation returns quickly and successfully.</p>
    # @param [Hash, Types::ListActionsInput] params
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range is 1 to 100.</p>
    # @option params [String] :service
    #   <p>The name of the AWS service for which to list available support actions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     service: "Service", # required
    #   }
    #   options = {}
    #   response = client.list_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_summaries: [ # required
    #       {
    #         action: "Action", # required
    #         service: "Service", # required
    #         description: "ActionDescription", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListActionsOutput]
    def list_actions(params = {}, options = {})
      request = build_request(:list_actions, params)
      request.send_request(options)
    end

    # <p>Lists permit requests from AWS support operators. Use pagination to ensure that the operation returns quickly and successfully.</p>
    # @param [Hash, Types::ListSupportPermitRequestsInput] params
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range is 1 to 100.</p>
    # @option params [String] :support_case_display_id
    #   <p>Filters the results by support case display identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     support_case_display_id: "SupportCaseDisplayId"
    #   }
    #   options = {}
    #   response = client.list_support_permit_requests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     support_permit_requests: [ # required
    #       {
    #         request_arn: "RequestArn", # required
    #         permit: { # required
    #           actions: { # required
    #             # One of:
    #             all_actions: {
    #             },
    #             actions: ["Action"]
    #           },
    #           resources: { # required
    #             # One of:
    #             all_resources_in_region: {
    #             },
    #             resources: ["Resource"]
    #           },
    #           conditions: [{
    #             # One of:
    #             allow_after: Time.now,
    #             allow_before: Time.now
    #           }]
    #         },
    #         support_case_display_id: "SupportCaseDisplayId", # required
    #         status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED", "CANCELLED"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSupportPermitRequestsOutput]
    def list_support_permit_requests(params = {}, options = {})
      request = build_request(:list_support_permit_requests, params)
      request.send_request(options)
    end

    # <p>Lists all support permits in the caller's account. Use pagination to ensure that the operation returns quickly and successfully.</p>
    # @param [Hash, Types::ListSupportPermitsInput] params
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range is 1 to 100.</p>
    # @option params [Array<String>] :support_permit_statuses
    #   <p>Filters the results by support permit status. Valid values: ACTIVE, INACTIVE, DELETING.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     support_permit_statuses: ["ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETING"]]
    #   }
    #   options = {}
    #   response = client.list_support_permits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     support_permits: [ # required
    #       {
    #         name: "Name", # required
    #         arn: "Arn", # required
    #         permit: { # required
    #           actions: { # required
    #             # One of:
    #             all_actions: {
    #             },
    #             actions: ["Action"]
    #           },
    #           resources: { # required
    #             # One of:
    #             all_resources_in_region: {
    #             },
    #             resources: ["Resource"]
    #           },
    #           conditions: [{
    #             # One of:
    #             allow_after: Time.now,
    #             allow_before: Time.now
    #           }]
    #         },
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETING"], # required
    #         signing_key_info: { # required
    #           # One of:
    #           kms_key: "KmsKeyArn"
    #         },
    #         created_at: Time.now, # required
    #         support_case_display_id: "SupportCaseDisplayId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSupportPermitsOutput]
    def list_support_permits(params = {}, options = {})
      request = build_request(:list_support_permits, params)
      request.send_request(options)
    end

    # <p>Lists the tags associated with a support permit resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to list tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Rejects a permit request from an AWS support operator. The operator cannot proceed with the requested action.</p>
    # @param [Hash, Types::RejectSupportPermitRequestInput] params
    # @option params [String] :request_arn
    #   <p>The ARN of the permit request to reject.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     request_arn: "RequestArn", # required
    #   }
    #   options = {}
    #   response = client.reject_support_permit_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_arn: "RequestArn", # required
    #   }
    # @return [Types::RejectSupportPermitRequestOutput]
    def reject_support_permit_request(params = {}, options = {})
      request = build_request(:reject_support_permit_request, params)
      request.send_request(options)
    end

    # <p>Adds or overwrites one or more tags for a support permit resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource. Maximum of 50 tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Removes one or more tags from a support permit resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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
      context[:gem_name] = 'aws-sdk-supportauthz'
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
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
