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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:ram)

module Aws::RAM
  # An API client for Aws::RAM.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonResourceSharing
    @identifier = :ram

    add_plugin(::Aws::RAM::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::RAM::EndpointProvider)
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

    # <p>Accepts an invitation to a resource share from another Amazon Web Services account. After you accept the
    #             invitation, the resources included in the resource share are available to interact with in the
    #             relevant Amazon Web Services Management Consoles and tools.</p>
    # @param [Hash, Types::AcceptResourceShareInvitationRequest] params
    # @option params [String] :resource_share_invitation_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the invitation that you want to accept.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other 
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of 
    #                value.</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with 
    #                different parameters, the retry fails with an <code>IdempotentParameterMismatch</code>
    #                error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_share_invitation_arn: "String", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.accept_resource_share_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_share_invitation: {
    #       resource_share_invitation_arn: "String",
    #       resource_share_name: "String",
    #       resource_share_arn: "String",
    #       sender_account_id: "String",
    #       receiver_account_id: "String",
    #       invitation_timestamp: Time.now,
    #       status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED", "EXPIRED"],
    #       resource_share_associations: [
    #         {
    #           resource_share_arn: "String",
    #           resource_share_name: "String",
    #           associated_entity: "String",
    #           association_type: "PRINCIPAL" # One of: ["PRINCIPAL", "RESOURCE"],
    #           status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"],
    #           status_message: "String",
    #           creation_time: Time.now,
    #           last_updated_time: Time.now,
    #           external: false
    #         }
    #       ],
    #       receiver_arn: "String"
    #     },
    #     client_token: "String"
    #   }
    # @return [Types::AcceptResourceShareInvitationResponse]
    def accept_resource_share_invitation(params = {}, options = {})
      request = build_request(:accept_resource_share_invitation, params)
      request.send_request(options)
    end

    # <p>Adds the specified list of principals and list of resources to a resource share. Principals that
    #             already have access to this resource share immediately receive access to the added resources.
    #             Newly added principals immediately receive access to the resources shared in this resource share. </p>
    # @param [Hash, Types::AssociateResourceShareRequest] params
    # @option params [String] :resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the resource share that you want to add principals or resources
    #               to.</p>
    # @option params [Array<String>] :resource_arns
    #   <p>Specifies a list of <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of the resources that you want to share. This can be
    #                   <code>null</code> if you want to add only principals.</p>
    # @option params [Array<String>] :principals
    #   <p>Specifies a list of principals to whom you want to the resource share. This can be
    #                   <code>null</code> if you want to add only resources.</p>
    #            <p>What the principals can do with the resources in the share is determined by the RAM
    #               permissions that you associate with the resource share. See <a>AssociateResourceSharePermission</a>.</p>
    #            <p>You can include the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>An Amazon Web Services account ID, for example: <code>123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>An <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an organization in Organizations, for example:
    #                           <code>organizations::123456789012:organization/o-exampleorgid</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>An ARN of an organizational unit (OU) in Organizations, for example:
    #                           <code>organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>An ARN of an IAM role, for example:
    #                           <code>iam::123456789012:role/rolename</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>An ARN of an IAM user, for example:
    #                           <code>iam::123456789012user/username</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Not all resource types can be shared with IAM roles and users. 
    #                For more information, see <a href="https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types">Sharing with IAM roles and users</a> in the <i>Resource Access Manager User
    #                       Guide</i>.</p>
    #            </note>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other 
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of 
    #                value.</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with 
    #                different parameters, the retry fails with an <code>IdempotentParameterMismatch</code>
    #                error.</p>
    # @option params [Array<String>] :sources
    #   <p>Specifies from which source accounts the service principal
    #               has access to the resources in this resource share.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_share_arn: "String", # required
    #     resource_arns: ["String"],
    #     principals: ["String"],
    #     client_token: "String",
    #     sources: ["String"]
    #   }
    #   options = {}
    #   response = client.associate_resource_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_share_associations: [
    #       {
    #         resource_share_arn: "String",
    #         resource_share_name: "String",
    #         associated_entity: "String",
    #         association_type: "PRINCIPAL" # One of: ["PRINCIPAL", "RESOURCE"],
    #         status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"],
    #         status_message: "String",
    #         creation_time: Time.now,
    #         last_updated_time: Time.now,
    #         external: false
    #       }
    #     ],
    #     client_token: "String"
    #   }
    # @return [Types::AssociateResourceShareResponse]
    def associate_resource_share(params = {}, options = {})
      request = build_request(:associate_resource_share, params)
      request.send_request(options)
    end

    # <p>Adds or replaces the RAM permission for a resource type included in a resource share. You can
    #             have exactly one permission associated with each resource type in the resource share. You can add
    #             a new RAM permission only if there are currently no resources of that resource type
    #             currently in the resource share.</p>
    # @param [Hash, Types::AssociateResourceSharePermissionRequest] params
    # @option params [String] :resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the resource share to which you want to add or replace
    #               permissions.</p>
    # @option params [String] :permission_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the RAM permission to associate with the resource share.
    #               To find the ARN for a permission, use either the <a>ListPermissions</a> operation or go to the <a href="https://console.aws.amazon.com/ram/home#Permissions:">Permissions library</a> page in the RAM console and 
    #                then choose the name of the permission. The ARN is displayed on the detail page.</p>
    # @option params [Boolean] :replace
    #   <p>Specifies whether the specified permission should replace the existing permission
    #               associated with the resource share. Use <code>true</code> to replace the current permissions. Use
    #                   <code>false</code> to add the permission to a resource share that currently doesn't
    #               have a permission. The default value is <code>false</code>.</p>
    #            <note>
    #               <p>A resource share can have only one permission per resource type. If a resource share already has a
    #                   permission for the specified resource type and you don't set <code>replace</code> to
    #                       <code>true</code> then the operation returns an error. This helps prevent
    #                   accidental overwriting of a permission.</p>
    #            </note>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other 
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of 
    #                value.</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with 
    #                different parameters, the retry fails with an <code>IdempotentParameterMismatch</code>
    #                error.</p>
    # @option params [Integer] :permission_version
    #   <p>Specifies the version of the RAM permission to associate with the resource share. You can
    #               specify <i>only</i> the version that is currently set as the default
    #               version for the permission. If you also set the <code>replace</code> pararameter to
    #                   <code>true</code>, then this operation updates an outdated version of the permission
    #               to the current default version.</p>
    #            <note>
    #               <p>You don't need to specify this parameter because the default behavior is to use
    #                   the version that is currently set as the default version for the permission. This
    #                   parameter is supported for backwards compatibility.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_share_arn: "String", # required
    #     permission_arn: "String", # required
    #     replace: false,
    #     client_token: "String",
    #     permission_version: 1
    #   }
    #   options = {}
    #   response = client.associate_resource_share_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     return_value: false,
    #     client_token: "String"
    #   }
    # @return [Types::AssociateResourceSharePermissionResponse]
    def associate_resource_share_permission(params = {}, options = {})
      request = build_request(:associate_resource_share_permission, params)
      request.send_request(options)
    end

    # <p>Creates a customer managed permission for a specified resource type that you can attach to resource shares.
    #             It is created in the Amazon Web Services Region in which you call the operation.</p>
    # @param [Hash, Types::CreatePermissionRequest] params
    # @option params [String] :name
    #   <p>Specifies the name of the customer managed permission. The name must be unique within the
    #               Amazon Web Services Region.</p>
    # @option params [String] :resource_type
    #   <p>Specifies the name of the resource type that this customer managed permission applies to.</p>
    #            <p>The format is
    #                       <code>
    #                  <i><service-code></i>:<i><resource-type></i>
    #               </code>
    #               and is not case sensitive. For example, to specify an Amazon EC2 Subnet, you can use the
    #               string <code>ec2:subnet</code>. To see the list of valid values for this parameter,
    #               query the <a>ListResourceTypes</a> operation.</p>
    # @option params [String] :policy_template
    #   <p>A string in JSON format string that contains the following elements of a
    #               resource-based policy:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Effect</b>: must be set to
    #                       <code>ALLOW</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Action</b>: specifies the actions that are
    #                       allowed by this customer managed permission. The list must contain only actions that are supported by
    #                       the specified resource type. For a list of all actions supported by each
    #                       resource type, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">Actions, resources, and condition keys for Amazon Web Services services</a> in the
    #                           <i>Identity and Access Management User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Condition</b>: (optional) specifies conditional 
    #                       parameters that must evaluate to true when a user attempts an action for that 
    #                       action to be allowed. For more information about the Condition element, see 
    #                       <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition.html">IAM
    #                           policies: Condition element</a> in the <i>Identity and Access Management User
    #                       Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>This template can't include either the <code>Resource</code> or
    #               <code>Principal</code> elements. Those are both filled in by RAM when it instantiates 
    #               the resource-based policy on each resource shared using this managed permission. The 
    #               <code>Resource</code> comes from the ARN of the specific resource that you are sharing. 
    #               The <code>Principal</code> comes from the list of identities added to the resource 
    #               share.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other 
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of 
    #                value.</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with 
    #                different parameters, the retry fails with an <code>IdempotentParameterMismatch</code>
    #                error.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Specifies a list of one or more tag key and value pairs to attach to the
    #               permission.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PermissionName", # required
    #     resource_type: "String", # required
    #     policy_template: "Policy", # required
    #     client_token: "String",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission: {
    #       arn: "String",
    #       version: "String",
    #       default_version: false,
    #       name: "String",
    #       resource_type: "String",
    #       status: "String",
    #       creation_time: Time.now,
    #       last_updated_time: Time.now,
    #       is_resource_type_default: false,
    #       permission_type: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_MANAGED"],
    #       feature_set: "CREATED_FROM_POLICY" # One of: ["CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     },
    #     client_token: "String"
    #   }
    # @return [Types::CreatePermissionResponse]
    def create_permission(params = {}, options = {})
      request = build_request(:create_permission, params)
      request.send_request(options)
    end

    # <p>Creates a new version of the specified customer managed permission. The new version is automatically set as
    #             the default version of the customer managed permission. New resource shares automatically use the default
    #             permission. Existing resource shares continue to use their original permission versions,
    #             but you can use <a>ReplacePermissionAssociations</a> to update them.</p>
    #          <p>If the specified customer managed permission already has the maximum of 5 versions, then
    #             you must delete one of the existing versions before you can create a new one.</p>
    # @param [Hash, Types::CreatePermissionVersionRequest] params
    # @option params [String] :permission_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the customer managed permission you're creating a new version for.</p>
    # @option params [String] :policy_template
    #   <p>A string in JSON format string that contains the following elements of a
    #               resource-based policy:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Effect</b>: must be set to
    #                       <code>ALLOW</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Action</b>: specifies the actions that are
    #                       allowed by this customer managed permission. The list must contain only actions that are supported by
    #                       the specified resource type. For a list of all actions supported by each
    #                       resource type, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">Actions, resources, and condition keys for Amazon Web Services services</a> in the
    #                           <i>Identity and Access Management User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Condition</b>: (optional) specifies conditional 
    #                       parameters that must evaluate to true when a user attempts an action for that 
    #                       action to be allowed. For more information about the Condition element, see 
    #                       <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition.html">IAM
    #                           policies: Condition element</a> in the <i>Identity and Access Management User
    #                       Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>This template can't include either the <code>Resource</code> or
    #               <code>Principal</code> elements. Those are both filled in by RAM when it instantiates 
    #               the resource-based policy on each resource shared using this managed permission. The 
    #               <code>Resource</code> comes from the ARN of the specific resource that you are sharing. 
    #               The <code>Principal</code> comes from the list of identities added to the resource 
    #               share.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other 
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of 
    #                value.</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with 
    #                different parameters, the retry fails with an <code>IdempotentParameterMismatch</code>
    #                error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     permission_arn: "String", # required
    #     policy_template: "Policy", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_permission_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission: {
    #       arn: "String",
    #       version: "String",
    #       default_version: false,
    #       name: "String",
    #       resource_type: "String",
    #       permission: "String",
    #       creation_time: Time.now,
    #       last_updated_time: Time.now,
    #       is_resource_type_default: false,
    #       permission_type: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_MANAGED"],
    #       feature_set: "CREATED_FROM_POLICY" # One of: ["CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"],
    #       status: "ATTACHABLE" # One of: ["ATTACHABLE", "UNATTACHABLE", "DELETING", "DELETED"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     },
    #     client_token: "String"
    #   }
    # @return [Types::CreatePermissionVersionResponse]
    def create_permission_version(params = {}, options = {})
      request = build_request(:create_permission_version, params)
      request.send_request(options)
    end

    # <p>Creates a resource share. You can provide a list of the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> for the resources that you
    #             want to share, a list of principals you want to share the resources with, and the
    #             permissions to grant those principals.</p>
    #          <note>
    #             <p>Sharing a resource makes it available for use by principals outside of the
    #                 Amazon Web Services account that created the resource. Sharing doesn't change any permissions or
    #                 quotas that apply to the resource in the account that created it.</p>
    #          </note>
    # @param [Hash, Types::CreateResourceShareRequest] params
    # @option params [String] :name
    #   <p>Specifies the name of the resource share.</p>
    # @option params [Array<String>] :resource_arns
    #   <p>Specifies a list of one or more ARNs of the resources to associate with the
    #               resource share.</p>
    # @option params [Array<String>] :principals
    #   <p>Specifies a list of one or more principals to associate with the resource share.</p>
    #            <p>You can include the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>An Amazon Web Services account ID, for example: <code>123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>An <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an organization in Organizations, for example:
    #                           <code>organizations::123456789012:organization/o-exampleorgid</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>An ARN of an organizational unit (OU) in Organizations, for example:
    #                           <code>organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>An ARN of an IAM role, for example:
    #                           <code>iam::123456789012:role/rolename</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>An ARN of an IAM user, for example:
    #                           <code>iam::123456789012user/username</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Not all resource types can be shared with IAM roles and users. 
    #                For more information, see <a href="https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types">Sharing with IAM roles and users</a> in the <i>Resource Access Manager User
    #                       Guide</i>.</p>
    #            </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Specifies one or more tags to attach to the resource share itself. It doesn't attach the tags to
    #               the resources associated with the resource share.</p>
    # @option params [Boolean] :allow_external_principals
    #   <p>Specifies whether principals outside your organization in Organizations can be associated
    #               with a resource share. A value of <code>true</code> lets you share with individual Amazon Web Services accounts
    #               that are <i>not</i> in your organization. A value of <code>false</code>
    #               only has meaning if your account is a member of an Amazon Web Services Organization. The default value
    #               is <code>true</code>.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other 
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of 
    #                value.</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with 
    #                different parameters, the retry fails with an <code>IdempotentParameterMismatch</code>
    #                error.</p>
    # @option params [Array<String>] :permission_arns
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of the RAM permission to associate with the resource share. If you do
    #               not specify an ARN for the permission, RAM automatically attaches the default version
    #               of the permission for each resource type. You can associate only one permission with
    #               each resource type included in the resource share.</p>
    # @option params [Array<String>] :sources
    #   <p>Specifies from which source accounts the service principal
    #               has access to the resources in this resource share.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     resource_arns: ["String"],
    #     principals: ["String"],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     allow_external_principals: false,
    #     client_token: "String",
    #     permission_arns: ["String"],
    #     sources: ["String"]
    #   }
    #   options = {}
    #   response = client.create_resource_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_share: {
    #       resource_share_arn: "String",
    #       name: "String",
    #       owning_account_id: "String",
    #       allow_external_principals: false,
    #       status: "PENDING" # One of: ["PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"],
    #       status_message: "String",
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       creation_time: Time.now,
    #       last_updated_time: Time.now,
    #       feature_set: "CREATED_FROM_POLICY" # One of: ["CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"]
    #     },
    #     client_token: "String"
    #   }
    # @return [Types::CreateResourceShareResponse]
    def create_resource_share(params = {}, options = {})
      request = build_request(:create_resource_share, params)
      request.send_request(options)
    end

    # <p>Deletes the specified customer managed permission in the Amazon Web Services Region in which you call this operation. You
    #             can delete a customer managed permission only if it isn't attached to any resource share. The operation deletes all
    #             versions associated with the customer managed permission.</p>
    # @param [Hash, Types::DeletePermissionRequest] params
    # @option params [String] :permission_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the customer managed permission that you want to delete.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other 
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of 
    #                value.</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with 
    #                different parameters, the retry fails with an <code>IdempotentParameterMismatch</code>
    #                error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     permission_arn: "String", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.delete_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     return_value: false,
    #     client_token: "String",
    #     permission_status: "ATTACHABLE" # One of: ["ATTACHABLE", "UNATTACHABLE", "DELETING", "DELETED"]
    #   }
    # @return [Types::DeletePermissionResponse]
    def delete_permission(params = {}, options = {})
      request = build_request(:delete_permission, params)
      request.send_request(options)
    end

    # <p>Deletes one version of a customer managed permission. The version you specify must not be attached to any
    #             resource share and must not be the default version for the permission.</p>
    #          <p>If a customer managed permission has the maximum of 5 versions, then you must delete at
    #             least one version before you can create another.</p>
    # @param [Hash, Types::DeletePermissionVersionRequest] params
    # @option params [String] :permission_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the permission with the version you want to delete.</p>
    # @option params [Integer] :permission_version
    #   <p>Specifies the version number to delete.</p>
    #            <p>You can't delete the default version for a customer managed permission.</p>
    #            <p>You can't delete a version if it's the only version of the permission. You must either
    #               first create another version, or delete the permission completely.</p>
    #            <p>You can't delete a version if it is attached to any resource shares. If the version is
    #               the default, you must first use <a>SetDefaultPermissionVersion</a> to set a
    #               different version as the default for the customer managed permission, and then use <a>AssociateResourceSharePermission</a> to update your resource shares to use
    #               the new default version.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other 
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of 
    #                value.</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with 
    #                different parameters, the retry fails with an <code>IdempotentParameterMismatch</code>
    #                error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     permission_arn: "String", # required
    #     permission_version: 1, # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.delete_permission_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     return_value: false,
    #     client_token: "String",
    #     permission_status: "ATTACHABLE" # One of: ["ATTACHABLE", "UNATTACHABLE", "DELETING", "DELETED"]
    #   }
    # @return [Types::DeletePermissionVersionResponse]
    def delete_permission_version(params = {}, options = {})
      request = build_request(:delete_permission_version, params)
      request.send_request(options)
    end

    # <p>Deletes the specified resource share.</p>
    #          <important>
    #             <p>This doesn't delete any of the resources that were associated with the resource share; it
    #                 only stops the sharing of those resources through this resource share.</p>
    #          </important>
    # @param [Hash, Types::DeleteResourceShareRequest] params
    # @option params [String] :resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the resource share to delete.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other 
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of 
    #                value.</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with 
    #                different parameters, the retry fails with an <code>IdempotentParameterMismatch</code>
    #                error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_share_arn: "String", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.delete_resource_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     return_value: false,
    #     client_token: "String"
    #   }
    # @return [Types::DeleteResourceShareResponse]
    def delete_resource_share(params = {}, options = {})
      request = build_request(:delete_resource_share, params)
      request.send_request(options)
    end

    # <p>Removes the specified principals or resources from participating in the specified
    #             resource share.</p>
    # @param [Hash, Types::DisassociateResourceShareRequest] params
    # @option params [String] :resource_share_arn
    #   <p>Specifies <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the resource share that you want to remove resources or principals
    #               from.</p>
    # @option params [Array<String>] :resource_arns
    #   <p>Specifies a list of <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> for one or more resources that you want to remove from
    #               the resource share. After the operation runs, these resources are no longer shared with principals
    #               associated with the resource share.</p>
    # @option params [Array<String>] :principals
    #   <p>Specifies a list of one or more principals that no longer are to have access to the
    #               resources in this resource share.</p>
    #            <p>You can include the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>An Amazon Web Services account ID, for example: <code>123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>An <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an organization in Organizations, for example:
    #                           <code>organizations::123456789012:organization/o-exampleorgid</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>An ARN of an organizational unit (OU) in Organizations, for example:
    #                           <code>organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>An ARN of an IAM role, for example:
    #                           <code>iam::123456789012:role/rolename</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>An ARN of an IAM user, for example:
    #                           <code>iam::123456789012user/username</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Not all resource types can be shared with IAM roles and users. 
    #                For more information, see <a href="https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types">Sharing with IAM roles and users</a> in the <i>Resource Access Manager User
    #                       Guide</i>.</p>
    #            </note>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other 
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of 
    #                value.</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with 
    #                different parameters, the retry fails with an <code>IdempotentParameterMismatch</code>
    #                error.</p>
    # @option params [Array<String>] :sources
    #   <p>Specifies from which source accounts the
    #               service principal no longer has access to the resources in this resource share.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_share_arn: "String", # required
    #     resource_arns: ["String"],
    #     principals: ["String"],
    #     client_token: "String",
    #     sources: ["String"]
    #   }
    #   options = {}
    #   response = client.disassociate_resource_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_share_associations: [
    #       {
    #         resource_share_arn: "String",
    #         resource_share_name: "String",
    #         associated_entity: "String",
    #         association_type: "PRINCIPAL" # One of: ["PRINCIPAL", "RESOURCE"],
    #         status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"],
    #         status_message: "String",
    #         creation_time: Time.now,
    #         last_updated_time: Time.now,
    #         external: false
    #       }
    #     ],
    #     client_token: "String"
    #   }
    # @return [Types::DisassociateResourceShareResponse]
    def disassociate_resource_share(params = {}, options = {})
      request = build_request(:disassociate_resource_share, params)
      request.send_request(options)
    end

    # <p>Removes a managed permission from a resource share. Permission changes take effect immediately. You can
    #             remove a managed permission from a resource share only if there are currently no resources of the relevant
    #             resource type currently attached to the resource share.</p>
    # @param [Hash, Types::DisassociateResourceSharePermissionRequest] params
    # @option params [String] :resource_share_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the resource share that you want to remove the managed permission from.</p>
    # @option params [String] :permission_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the managed permission to disassociate from the resource share. Changes to permissions take
    #               effect immediately.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other 
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of 
    #                value.</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with 
    #                different parameters, the retry fails with an <code>IdempotentParameterMismatch</code>
    #                error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_share_arn: "String", # required
    #     permission_arn: "String", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.disassociate_resource_share_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     return_value: false,
    #     client_token: "String"
    #   }
    # @return [Types::DisassociateResourceSharePermissionResponse]
    def disassociate_resource_share_permission(params = {}, options = {})
      request = build_request(:disassociate_resource_share_permission, params)
      request.send_request(options)
    end

    # <p>Enables resource sharing within your organization in Organizations. This operation creates
    #             a service-linked role called <code>AWSServiceRoleForResourceAccessManager</code> that has the IAM managed policy
    #             named AWSResourceAccessManagerServiceRolePolicy attached. This role permits RAM to retrieve information about
    #             the organization and its structure. This lets you share resources with all of the
    #             accounts in the calling account's organization by specifying the organization ID, or all
    #             of the accounts in an organizational unit (OU) by specifying the OU ID. Until you enable
    #             sharing within the organization, you can specify only individual Amazon Web Services accounts, or for
    #             supported resource types, IAM roles and users.</p>
    #          <p>You must call this operation from an IAM role or user in the organization's
    #             management account.</p>
    #          <p></p>
    # @param [Hash, Types::EnableSharingWithAwsOrganizationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.enable_sharing_with_aws_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     return_value: false
    #   }
    # @return [Types::EnableSharingWithAwsOrganizationResponse]
    def enable_sharing_with_aws_organization(params = {}, options = {})
      request = build_request(:enable_sharing_with_aws_organization, params)
      request.send_request(options)
    end

    # <p>Retrieves the contents of a managed permission in JSON format.</p>
    # @param [Hash, Types::GetPermissionRequest] params
    # @option params [String] :permission_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the permission whose contents you want to retrieve.
    #               To find the ARN for a permission, use either the <a>ListPermissions</a> operation or go to the <a href="https://console.aws.amazon.com/ram/home#Permissions:">Permissions library</a> page in the RAM console and 
    #                then choose the name of the permission. The ARN is displayed on the detail page.</p>
    # @option params [Integer] :permission_version
    #   <p>Specifies the version number of the RAM permission to retrieve. If you don't specify
    #               this parameter, the operation retrieves the default version.</p>
    #            <p>To see the list of available versions, use <a>ListPermissionVersions</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     permission_arn: "String", # required
    #     permission_version: 1
    #   }
    #   options = {}
    #   response = client.get_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission: {
    #       arn: "String",
    #       version: "String",
    #       default_version: false,
    #       name: "String",
    #       resource_type: "String",
    #       permission: "String",
    #       creation_time: Time.now,
    #       last_updated_time: Time.now,
    #       is_resource_type_default: false,
    #       permission_type: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_MANAGED"],
    #       feature_set: "CREATED_FROM_POLICY" # One of: ["CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"],
    #       status: "ATTACHABLE" # One of: ["ATTACHABLE", "UNATTACHABLE", "DELETING", "DELETED"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetPermissionResponse]
    def get_permission(params = {}, options = {})
      request = build_request(:get_permission, params)
      request.send_request(options)
    end

    # <p>Retrieves the resource policies for the specified resources that you own and have
    #             shared.</p>
    # @param [Hash, Types::GetResourcePoliciesRequest] params
    # @option params [Array<String>] :resource_arns
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of the resources whose policies you want to retrieve.</p>
    # @option params [String] :principal
    #   <p>Specifies the principal.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid 
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value 
    #                provided by the previous call's <code>NextToken</code> response to request the 
    #                next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page 
    #                of the response. If you do not include this parameter, it defaults to a value that is 
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next 
    #                call to the operation to get the next part of the results. Note that the service might 
    #                return fewer results than the maximum even when there are more results available. You 
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arns: ["String"], # required
    #     principal: "String",
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_resource_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policies: ["Policy"],
    #     next_token: "String"
    #   }
    # @return [Types::GetResourcePoliciesResponse]
    def get_resource_policies(params = {}, options = {})
      request = build_request(:get_resource_policies, params)
      request.send_request(options)
    end

    # <p>Retrieves the lists of resources and principals that associated for resource shares that you
    #             own.</p>
    # @param [Hash, Types::GetResourceShareAssociationsRequest] params
    # @option params [String] :association_type
    #   <p>Specifies whether you want to retrieve the associations that involve a specified
    #               resource or principal.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PRINCIPAL</code> – list the principals whose associations you
    #                       want to see.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESOURCE</code> – list the resources whose associations you want
    #                       to see.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :resource_share_arns
    #   <p>Specifies a list of <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of the resource share whose associations you want to
    #               retrieve.</p>
    # @option params [String] :resource_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of a resource whose resource shares you want to retrieve.</p>
    #            <p>You cannot specify this parameter if the association type is
    #               <code>PRINCIPAL</code>.</p>
    # @option params [String] :principal
    #   <p>Specifies the ID of the principal whose resource shares you want to retrieve. This can be an
    #               Amazon Web Services account ID, an organization ID, an organizational unit ID, or the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an
    #               individual IAM role or user.</p>
    #            <p>You cannot specify this parameter if the association type is
    #               <code>RESOURCE</code>.</p>
    # @option params [String] :association_status
    #   <p>Specifies that you want to retrieve only associations that have this status.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid 
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value 
    #                provided by the previous call's <code>NextToken</code> response to request the 
    #                next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page 
    #                of the response. If you do not include this parameter, it defaults to a value that is 
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next 
    #                call to the operation to get the next part of the results. Note that the service might 
    #                return fewer results than the maximum even when there are more results available. You 
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_type: "PRINCIPAL" # One of: ["PRINCIPAL", "RESOURCE"], # required
    #     resource_share_arns: ["String"],
    #     resource_arn: "String",
    #     principal: "String",
    #     association_status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_resource_share_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_share_associations: [
    #       {
    #         resource_share_arn: "String",
    #         resource_share_name: "String",
    #         associated_entity: "String",
    #         association_type: "PRINCIPAL" # One of: ["PRINCIPAL", "RESOURCE"],
    #         status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"],
    #         status_message: "String",
    #         creation_time: Time.now,
    #         last_updated_time: Time.now,
    #         external: false
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetResourceShareAssociationsResponse]
    def get_resource_share_associations(params = {}, options = {})
      request = build_request(:get_resource_share_associations, params)
      request.send_request(options)
    end

    # <p>Retrieves details about invitations that you have received for resource shares.</p>
    # @param [Hash, Types::GetResourceShareInvitationsRequest] params
    # @option params [Array<String>] :resource_share_invitation_arns
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of the resource share invitations you want information about.</p>
    # @option params [Array<String>] :resource_share_arns
    #   <p>Specifies that you want details about invitations only for the resource shares described by this
    #               list of <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>
    #            </p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid 
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value 
    #                provided by the previous call's <code>NextToken</code> response to request the 
    #                next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page 
    #                of the response. If you do not include this parameter, it defaults to a value that is 
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next 
    #                call to the operation to get the next part of the results. Note that the service might 
    #                return fewer results than the maximum even when there are more results available. You 
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_share_invitation_arns: ["String"],
    #     resource_share_arns: ["String"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_resource_share_invitations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_share_invitations: [
    #       {
    #         resource_share_invitation_arn: "String",
    #         resource_share_name: "String",
    #         resource_share_arn: "String",
    #         sender_account_id: "String",
    #         receiver_account_id: "String",
    #         invitation_timestamp: Time.now,
    #         status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED", "EXPIRED"],
    #         resource_share_associations: [
    #           {
    #             resource_share_arn: "String",
    #             resource_share_name: "String",
    #             associated_entity: "String",
    #             association_type: "PRINCIPAL" # One of: ["PRINCIPAL", "RESOURCE"],
    #             status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"],
    #             status_message: "String",
    #             creation_time: Time.now,
    #             last_updated_time: Time.now,
    #             external: false
    #           }
    #         ],
    #         receiver_arn: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetResourceShareInvitationsResponse]
    def get_resource_share_invitations(params = {}, options = {})
      request = build_request(:get_resource_share_invitations, params)
      request.send_request(options)
    end

    # <p>Retrieves details about the resource shares that you own or that are shared with you.</p>
    # @param [Hash, Types::GetResourceSharesRequest] params
    # @option params [Array<String>] :resource_share_arns
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of individual resource shares that you want information about.</p>
    # @option params [String] :resource_share_status
    #   <p>Specifies that you want to retrieve details of only those resource shares that have this
    #               status.</p>
    # @option params [String] :resource_owner
    #   <p>Specifies that you want to retrieve details of only those resource shares that match the
    #               following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>SELF</code>
    #                     </b> – resource shares that your
    #                       account shares with other accounts</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>OTHER-ACCOUNTS</code>
    #                     </b> – resource shares
    #                       that other accounts share with your account</p>
    #               </li>
    #            </ul>
    # @option params [String] :name
    #   <p>Specifies the name of an individual resource share that you want to retrieve details
    #               about.</p>
    # @option params [Array<Types::TagFilter>] :tag_filters
    #   <p>Specifies that you want to retrieve details of only those resource shares that match the
    #               specified tag keys and values.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid 
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value 
    #                provided by the previous call's <code>NextToken</code> response to request the 
    #                next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page 
    #                of the response. If you do not include this parameter, it defaults to a value that is 
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next 
    #                call to the operation to get the next part of the results. Note that the service might 
    #                return fewer results than the maximum even when there are more results available. You 
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    # @option params [String] :permission_arn
    #   <p>Specifies that you want to retrieve details of only those resource shares that use the managed permission with
    #               this <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a>.</p>
    # @option params [Integer] :permission_version
    #   <p>Specifies that you want to retrieve details for only those resource shares that use the
    #               specified version of the managed permission.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_share_arns: ["String"],
    #     resource_share_status: "PENDING" # One of: ["PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"],
    #     resource_owner: "SELF" # One of: ["SELF", "OTHER-ACCOUNTS"], # required
    #     name: "String",
    #     tag_filters: [
    #       {
    #         tag_key: "TagKey",
    #         tag_values: ["TagValue"]
    #       }
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #     permission_arn: "String",
    #     permission_version: 1
    #   }
    #   options = {}
    #   response = client.get_resource_shares(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_shares: [
    #       {
    #         resource_share_arn: "String",
    #         name: "String",
    #         owning_account_id: "String",
    #         allow_external_principals: false,
    #         status: "PENDING" # One of: ["PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"],
    #         status_message: "String",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         creation_time: Time.now,
    #         last_updated_time: Time.now,
    #         feature_set: "CREATED_FROM_POLICY" # One of: ["CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetResourceSharesResponse]
    def get_resource_shares(params = {}, options = {})
      request = build_request(:get_resource_shares, params)
      request.send_request(options)
    end

    # <p>Lists the resources in a resource share that is shared with you but for which the invitation is
    #             still <code>PENDING</code>. That means that you haven't accepted or rejected the
    #             invitation and the invitation hasn't expired.</p>
    # @param [Hash, Types::ListPendingInvitationResourcesRequest] params
    # @option params [String] :resource_share_invitation_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the invitation. You can use <a>GetResourceShareInvitations</a> to find the ARN of the invitation.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid 
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value 
    #                provided by the previous call's <code>NextToken</code> response to request the 
    #                next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page 
    #                of the response. If you do not include this parameter, it defaults to a value that is 
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next 
    #                call to the operation to get the next part of the results. Note that the service might 
    #                return fewer results than the maximum even when there are more results available. You 
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    # @option params [String] :resource_region_scope
    #   <p>Specifies that you want the results to include only 
    #               resources that have the specified scope.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – the results include both global and 
    #                       regional resources or resource types.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GLOBAL</code> – the results include only global 
    #                       resources or resource types.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGIONAL</code> – the results include only regional 
    #                       resources or resource types.</p>
    #               </li>
    #            </ul>
    #            <p>The default value is <code>ALL</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_share_invitation_arn: "String", # required
    #     next_token: "String",
    #     max_results: 1,
    #     resource_region_scope: "ALL" # One of: ["ALL", "REGIONAL", "GLOBAL"]
    #   }
    #   options = {}
    #   response = client.list_pending_invitation_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resources: [
    #       {
    #         arn: "String",
    #         type: "String",
    #         resource_share_arn: "String",
    #         resource_group_arn: "String",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "ZONAL_RESOURCE_INACCESSIBLE", "LIMIT_EXCEEDED", "UNAVAILABLE", "PENDING"],
    #         status_message: "String",
    #         creation_time: Time.now,
    #         last_updated_time: Time.now,
    #         resource_region_scope: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPendingInvitationResourcesResponse]
    def list_pending_invitation_resources(params = {}, options = {})
      request = build_request(:list_pending_invitation_resources, params)
      request.send_request(options)
    end

    # <p>Lists information about the managed permission and its associations to any resource shares that use
    #             this managed permission. This lets you see which resource shares use which versions of the specified
    #             managed permission.</p>
    # @param [Hash, Types::ListPermissionAssociationsRequest] params
    # @option params [String] :permission_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the managed permission.</p>
    # @option params [Integer] :permission_version
    #   <p>Specifies that you want to list only those associations with resource shares that use this
    #               version of the managed permission. If you don't provide a value for this parameter, then the operation
    #               returns information about associations with resource shares that use any version of the
    #               managed permission.</p>
    # @option params [String] :association_status
    #   <p>Specifies that you want to list only those associations with resource shares that match this
    #               status.</p>
    # @option params [String] :resource_type
    #   <p>Specifies that you want to list only those associations with resource shares that include at
    #               least one resource of this resource type.</p>
    # @option params [String] :feature_set
    #   <p>Specifies that you want to list only those associations with resource shares that have a
    #                   <code>featureSet</code> with this value.</p>
    # @option params [Boolean] :default_version
    #   <p>When <code>true</code>, specifies that you want to list only those associations with
    #               resource shares that use the default version of the specified managed permission.</p>
    #            <p>When <code>false</code> (the default value), lists associations with resource shares that use
    #               any version of the specified managed permission.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid 
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value 
    #                provided by the previous call's <code>NextToken</code> response to request the 
    #                next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page 
    #                of the response. If you do not include this parameter, it defaults to a value that is 
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next 
    #                call to the operation to get the next part of the results. Note that the service might 
    #                return fewer results than the maximum even when there are more results available. You 
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     permission_arn: "String",
    #     permission_version: 1,
    #     association_status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"],
    #     resource_type: "String",
    #     feature_set: "CREATED_FROM_POLICY" # One of: ["CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"],
    #     default_version: false,
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_permission_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permissions: [
    #       {
    #         arn: "String",
    #         permission_version: "String",
    #         default_version: false,
    #         resource_type: "String",
    #         status: "String",
    #         feature_set: "CREATED_FROM_POLICY" # One of: ["CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"],
    #         last_updated_time: Time.now,
    #         resource_share_arn: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPermissionAssociationsResponse]
    def list_permission_associations(params = {}, options = {})
      request = build_request(:list_permission_associations, params)
      request.send_request(options)
    end

    # <p>Lists the available versions of the specified RAM permission.</p>
    # @param [Hash, Types::ListPermissionVersionsRequest] params
    # @option params [String] :permission_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the RAM permission whose versions you want to list. You
    #               can use the <code>permissionVersion</code> parameter on the <a>AssociateResourceSharePermission</a> operation to specify a non-default
    #               version to attach.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid 
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value 
    #                provided by the previous call's <code>NextToken</code> response to request the 
    #                next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page 
    #                of the response. If you do not include this parameter, it defaults to a value that is 
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next 
    #                call to the operation to get the next part of the results. Note that the service might 
    #                return fewer results than the maximum even when there are more results available. You 
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     permission_arn: "String", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_permission_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permissions: [
    #       {
    #         arn: "String",
    #         version: "String",
    #         default_version: false,
    #         name: "String",
    #         resource_type: "String",
    #         status: "String",
    #         creation_time: Time.now,
    #         last_updated_time: Time.now,
    #         is_resource_type_default: false,
    #         permission_type: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_MANAGED"],
    #         feature_set: "CREATED_FROM_POLICY" # One of: ["CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPermissionVersionsResponse]
    def list_permission_versions(params = {}, options = {})
      request = build_request(:list_permission_versions, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of available RAM permissions that you can use for the supported
    #             resource types. </p>
    # @param [Hash, Types::ListPermissionsRequest] params
    # @option params [String] :resource_type
    #   <p>Specifies that you want to list only those permissions that apply to the specified
    #               resource type. This parameter is not case sensitive.</p>
    #            <p>For example, to list only permissions that apply to Amazon EC2 subnets, specify
    #                   <code>ec2:subnet</code>. You can use the <a>ListResourceTypes</a>
    #               operation to get the specific string required.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid 
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value 
    #                provided by the previous call's <code>NextToken</code> response to request the 
    #                next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page 
    #                of the response. If you do not include this parameter, it defaults to a value that is 
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next 
    #                call to the operation to get the next part of the results. Note that the service might 
    #                return fewer results than the maximum even when there are more results available. You 
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    # @option params [String] :permission_type
    #   <p>Specifies that you want to list only permissions of this type:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS</code> – returns only Amazon Web Services managed permissions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LOCAL</code> – returns only customer managed permissions</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – returns both Amazon Web Services managed permissions and customer managed permissions.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify this parameter, the default is <code>All</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "String",
    #     next_token: "String",
    #     max_results: 1,
    #     permission_type: "ALL" # One of: ["ALL", "AWS_MANAGED", "CUSTOMER_MANAGED"]
    #   }
    #   options = {}
    #   response = client.list_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permissions: [
    #       {
    #         arn: "String",
    #         version: "String",
    #         default_version: false,
    #         name: "String",
    #         resource_type: "String",
    #         status: "String",
    #         creation_time: Time.now,
    #         last_updated_time: Time.now,
    #         is_resource_type_default: false,
    #         permission_type: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_MANAGED"],
    #         feature_set: "CREATED_FROM_POLICY" # One of: ["CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPermissionsResponse]
    def list_permissions(params = {}, options = {})
      request = build_request(:list_permissions, params)
      request.send_request(options)
    end

    # <p>Lists the principals that you are sharing resources with or that are sharing resources
    #             with you.</p>
    # @param [Hash, Types::ListPrincipalsRequest] params
    # @option params [String] :resource_owner
    #   <p>Specifies that you want to list information for only resource shares that match the
    #               following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>SELF</code>
    #                     </b> – principals that
    #                       your account is sharing resources with</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>OTHER-ACCOUNTS</code>
    #                     </b> –
    #                       principals that are sharing resources with your account</p>
    #               </li>
    #            </ul>
    # @option params [String] :resource_arn
    #   <p>Specifies that you want to list principal information for the resource share with the specified
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a>.</p>
    # @option params [Array<String>] :principals
    #   <p>Specifies that you want to list information for only the listed principals.</p>
    #            <p>You can include the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>An Amazon Web Services account ID, for example: <code>123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>An <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an organization in Organizations, for example:
    #                           <code>organizations::123456789012:organization/o-exampleorgid</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>An ARN of an organizational unit (OU) in Organizations, for example:
    #                           <code>organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>An ARN of an IAM role, for example:
    #                           <code>iam::123456789012:role/rolename</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>An ARN of an IAM user, for example:
    #                           <code>iam::123456789012user/username</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Not all resource types can be shared with IAM roles and users. 
    #                For more information, see <a href="https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types">Sharing with IAM roles and users</a> in the <i>Resource Access Manager User
    #                       Guide</i>.</p>
    #            </note>
    # @option params [String] :resource_type
    #   <p>Specifies that you want to list information for only principals associated with resource shares
    #               that include the specified resource type.</p>
    #            <p>For a list of valid values, query the <a>ListResourceTypes</a>
    #               operation.</p>
    # @option params [Array<String>] :resource_share_arns
    #   <p>Specifies that you want to list information for only principals associated with the
    #               resource shares specified by a list the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid 
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value 
    #                provided by the previous call's <code>NextToken</code> response to request the 
    #                next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page 
    #                of the response. If you do not include this parameter, it defaults to a value that is 
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next 
    #                call to the operation to get the next part of the results. Note that the service might 
    #                return fewer results than the maximum even when there are more results available. You 
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_owner: "SELF" # One of: ["SELF", "OTHER-ACCOUNTS"], # required
    #     resource_arn: "String",
    #     principals: ["String"],
    #     resource_type: "String",
    #     resource_share_arns: ["String"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_principals(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     principals: [
    #       {
    #         id: "String",
    #         resource_share_arn: "String",
    #         creation_time: Time.now,
    #         last_updated_time: Time.now,
    #         external: false
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPrincipalsResponse]
    def list_principals(params = {}, options = {})
      request = build_request(:list_principals, params)
      request.send_request(options)
    end

    # <p>Retrieves the current status of the asynchronous tasks performed by RAM when you
    #             perform the <a>ReplacePermissionAssociationsWork</a> operation.</p>
    # @param [Hash, Types::ListReplacePermissionAssociationsWorkRequest] params
    # @option params [Array<String>] :work_ids
    #   <p>A list of IDs. These values come from the <code>id</code>field of the
    #                   <code>replacePermissionAssociationsWork</code>structure returned by the <a>ReplacePermissionAssociations</a> operation. </p>
    # @option params [String] :status
    #   <p>Specifies that you want to see only the details about requests with a status that
    #               matches this value.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid 
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value 
    #                provided by the previous call's <code>NextToken</code> response to request the 
    #                next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page 
    #                of the response. If you do not include this parameter, it defaults to a value that is 
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next 
    #                call to the operation to get the next part of the results. Note that the service might 
    #                return fewer results than the maximum even when there are more results available. You 
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     work_ids: ["String"],
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_replace_permission_associations_work(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replace_permission_associations_works: [
    #       {
    #         id: "String",
    #         from_permission_arn: "String",
    #         from_permission_version: "String",
    #         to_permission_arn: "String",
    #         to_permission_version: "String",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED"],
    #         status_message: "String",
    #         creation_time: Time.now,
    #         last_updated_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListReplacePermissionAssociationsWorkResponse]
    def list_replace_permission_associations_work(params = {}, options = {})
      request = build_request(:list_replace_permission_associations_work, params)
      request.send_request(options)
    end

    # <p>Lists the RAM permissions that are associated with a resource share.</p>
    # @param [Hash, Types::ListResourceSharePermissionsRequest] params
    # @option params [String] :resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the resource share for which you want to retrieve the associated
    #               permissions.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid 
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value 
    #                provided by the previous call's <code>NextToken</code> response to request the 
    #                next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page 
    #                of the response. If you do not include this parameter, it defaults to a value that is 
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next 
    #                call to the operation to get the next part of the results. Note that the service might 
    #                return fewer results than the maximum even when there are more results available. You 
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_share_arn: "String", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_resource_share_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permissions: [
    #       {
    #         arn: "String",
    #         version: "String",
    #         default_version: false,
    #         name: "String",
    #         resource_type: "String",
    #         status: "String",
    #         creation_time: Time.now,
    #         last_updated_time: Time.now,
    #         is_resource_type_default: false,
    #         permission_type: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_MANAGED"],
    #         feature_set: "CREATED_FROM_POLICY" # One of: ["CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListResourceSharePermissionsResponse]
    def list_resource_share_permissions(params = {}, options = {})
      request = build_request(:list_resource_share_permissions, params)
      request.send_request(options)
    end

    # <p>Lists the resource types that can be shared by RAM.</p>
    # @param [Hash, Types::ListResourceTypesRequest] params
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid 
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value 
    #                provided by the previous call's <code>NextToken</code> response to request the 
    #                next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page 
    #                of the response. If you do not include this parameter, it defaults to a value that is 
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next 
    #                call to the operation to get the next part of the results. Note that the service might 
    #                return fewer results than the maximum even when there are more results available. You 
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    # @option params [String] :resource_region_scope
    #   <p>Specifies that you want the results to include only 
    #               resources that have the specified scope.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – the results include both global and 
    #                       regional resources or resource types.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GLOBAL</code> – the results include only global 
    #                       resources or resource types.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGIONAL</code> – the results include only regional 
    #                       resources or resource types.</p>
    #               </li>
    #            </ul>
    #            <p>The default value is <code>ALL</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     resource_region_scope: "ALL" # One of: ["ALL", "REGIONAL", "GLOBAL"]
    #   }
    #   options = {}
    #   response = client.list_resource_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_types: [
    #       {
    #         resource_type: "String",
    #         service_name: "String",
    #         resource_region_scope: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListResourceTypesResponse]
    def list_resource_types(params = {}, options = {})
      request = build_request(:list_resource_types, params)
      request.send_request(options)
    end

    # <p>Lists the resources that you added to a resource share or the resources that are shared with
    #             you.</p>
    # @param [Hash, Types::ListResourcesRequest] params
    # @option params [String] :resource_owner
    #   <p>Specifies that you want to list only the resource shares that match the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>SELF</code>
    #                     </b> – resources that
    #                       your account shares with other accounts</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>OTHER-ACCOUNTS</code>
    #                     </b> –
    #                       resources that other accounts share with your account</p>
    #               </li>
    #            </ul>
    # @option params [String] :principal
    #   <p>Specifies that you want to list only the resource shares that are associated with the specified
    #               principal.</p>
    # @option params [String] :resource_type
    #   <p>Specifies that you want to list only the resource shares that include resources of the specified
    #               resource type.</p>
    #            <p>For valid values, query the <a>ListResourceTypes</a> operation.</p>
    # @option params [Array<String>] :resource_arns
    #   <p>Specifies that you want to list only the resource shares that include resources with the
    #               specified <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    # @option params [Array<String>] :resource_share_arns
    #   <p>Specifies that you want to list only resources in the resource shares identified by the
    #               specified <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid 
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value 
    #                provided by the previous call's <code>NextToken</code> response to request the 
    #                next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page 
    #                of the response. If you do not include this parameter, it defaults to a value that is 
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next 
    #                call to the operation to get the next part of the results. Note that the service might 
    #                return fewer results than the maximum even when there are more results available. You 
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    # @option params [String] :resource_region_scope
    #   <p>Specifies that you want the results to include only 
    #               resources that have the specified scope.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – the results include both global and 
    #                       regional resources or resource types.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GLOBAL</code> – the results include only global 
    #                       resources or resource types.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGIONAL</code> – the results include only regional 
    #                       resources or resource types.</p>
    #               </li>
    #            </ul>
    #            <p>The default value is <code>ALL</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_owner: "SELF" # One of: ["SELF", "OTHER-ACCOUNTS"], # required
    #     principal: "String",
    #     resource_type: "String",
    #     resource_arns: ["String"],
    #     resource_share_arns: ["String"],
    #     next_token: "String",
    #     max_results: 1,
    #     resource_region_scope: "ALL" # One of: ["ALL", "REGIONAL", "GLOBAL"]
    #   }
    #   options = {}
    #   response = client.list_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resources: [
    #       {
    #         arn: "String",
    #         type: "String",
    #         resource_share_arn: "String",
    #         resource_group_arn: "String",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "ZONAL_RESOURCE_INACCESSIBLE", "LIMIT_EXCEEDED", "UNAVAILABLE", "PENDING"],
    #         status_message: "String",
    #         creation_time: Time.now,
    #         last_updated_time: Time.now,
    #         resource_region_scope: "REGIONAL" # One of: ["REGIONAL", "GLOBAL"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListResourcesResponse]
    def list_resources(params = {}, options = {})
      request = build_request(:list_resources, params)
      request.send_request(options)
    end

    # <p>When you attach a resource-based policy to a resource, RAM automatically creates
    #             a resource share of <code>featureSet</code>=<code>CREATED_FROM_POLICY</code> with a managed permission that
    #             has the same IAM permissions as the original resource-based policy. However, this type
    #             of managed permission is visible to only the resource share owner, and the associated resource share can't be modified by
    #             using RAM.</p>
    #          <p>This operation creates a separate, fully manageable customer managed permission that has the same IAM
    #             permissions as the original resource-based policy. You can associate this customer managed permission to any
    #             resource shares.</p>
    #          <p>Before you use <a>PromoteResourceShareCreatedFromPolicy</a>, you should
    #             first run this operation to ensure that you have an appropriate customer managed permission that can be
    #             associated with the promoted resource share.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>The original <code>CREATED_FROM_POLICY</code> policy isn't deleted, and
    #                         resource shares using that original policy aren't automatically
    #                         updated.</p>
    #                </li>
    #                <li>
    #                   <p>You can't modify a <code>CREATED_FROM_POLICY</code> resource share so you can't
    #                         associate the new customer managed permission by using
    #                         <code>ReplacePermsissionAssociations</code>. However, if you use <a>PromoteResourceShareCreatedFromPolicy</a>, that operation
    #                         automatically associates the fully manageable customer managed permission to the newly promoted
    #                             <code>STANDARD</code> resource share.</p>
    #                </li>
    #                <li>
    #                   <p>After you promote a resource share, if the original <code>CREATED_FROM_POLICY</code>
    #                         managed permission has no other associations to A resource share, then RAM automatically deletes
    #                         it.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::PromotePermissionCreatedFromPolicyRequest] params
    # @option params [String] :permission_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the <code>CREATED_FROM_POLICY</code> permission that you
    #               want to promote. You can get this <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> by calling the <a>ListResourceSharePermissions</a> operation.</p>
    # @option params [String] :name
    #   <p>Specifies a name for the promoted customer managed permission.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other 
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of 
    #                value.</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with 
    #                different parameters, the retry fails with an <code>IdempotentParameterMismatch</code>
    #                error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     permission_arn: "String", # required
    #     name: "String", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.promote_permission_created_from_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission: {
    #       arn: "String",
    #       version: "String",
    #       default_version: false,
    #       name: "String",
    #       resource_type: "String",
    #       status: "String",
    #       creation_time: Time.now,
    #       last_updated_time: Time.now,
    #       is_resource_type_default: false,
    #       permission_type: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_MANAGED"],
    #       feature_set: "CREATED_FROM_POLICY" # One of: ["CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     },
    #     client_token: "String"
    #   }
    # @return [Types::PromotePermissionCreatedFromPolicyResponse]
    def promote_permission_created_from_policy(params = {}, options = {})
      request = build_request(:promote_permission_created_from_policy, params)
      request.send_request(options)
    end

    # <p>When you attach a resource-based policy to a resource, RAM automatically creates
    #             a resource share of <code>featureSet</code>=<code>CREATED_FROM_POLICY</code> with a managed permission that
    #             has the same IAM permissions as the original resource-based policy. However, this type
    #             of managed permission is visible to only the resource share owner, and the associated resource share can't be modified by
    #             using RAM.</p>
    #          <p>This operation promotes the resource share to a <code>STANDARD</code> resource share that is fully
    #             manageable in RAM. When you promote a resource share, you can then manage the resource share in RAM and
    #             it becomes visible to all of the principals you shared it with.</p>
    #          <important>
    #             <p>Before you perform this operation, you should first run <a>PromotePermissionCreatedFromPolicy</a>to ensure that you have an
    #                 appropriate customer managed permission that can be associated with this resource share after its is promoted. If
    #                 this operation can't find a managed permission that exactly matches the existing
    #                     <code>CREATED_FROM_POLICY</code> permission, then this operation fails.</p>
    #          </important>
    # @param [Hash, Types::PromoteResourceShareCreatedFromPolicyRequest] params
    # @option params [String] :resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the resource share to promote.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_share_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.promote_resource_share_created_from_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     return_value: false
    #   }
    # @return [Types::PromoteResourceShareCreatedFromPolicyResponse]
    def promote_resource_share_created_from_policy(params = {}, options = {})
      request = build_request(:promote_resource_share_created_from_policy, params)
      request.send_request(options)
    end

    # <p>Rejects an invitation to a resource share from another Amazon Web Services account.</p>
    # @param [Hash, Types::RejectResourceShareInvitationRequest] params
    # @option params [String] :resource_share_invitation_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the invitation that you want to reject.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other 
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of 
    #                value.</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with 
    #                different parameters, the retry fails with an <code>IdempotentParameterMismatch</code>
    #                error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_share_invitation_arn: "String", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.reject_resource_share_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_share_invitation: {
    #       resource_share_invitation_arn: "String",
    #       resource_share_name: "String",
    #       resource_share_arn: "String",
    #       sender_account_id: "String",
    #       receiver_account_id: "String",
    #       invitation_timestamp: Time.now,
    #       status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED", "EXPIRED"],
    #       resource_share_associations: [
    #         {
    #           resource_share_arn: "String",
    #           resource_share_name: "String",
    #           associated_entity: "String",
    #           association_type: "PRINCIPAL" # One of: ["PRINCIPAL", "RESOURCE"],
    #           status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"],
    #           status_message: "String",
    #           creation_time: Time.now,
    #           last_updated_time: Time.now,
    #           external: false
    #         }
    #       ],
    #       receiver_arn: "String"
    #     },
    #     client_token: "String"
    #   }
    # @return [Types::RejectResourceShareInvitationResponse]
    def reject_resource_share_invitation(params = {}, options = {})
      request = build_request(:reject_resource_share_invitation, params)
      request.send_request(options)
    end

    # <p>Updates all resource shares that use a managed permission to a different managed
    #             permission. This operation always applies the default version of the target managed
    #             permission. You can optionally specify that the update applies to only resource shares that
    #             currently use a specified version. This enables you to update to the latest version,
    #             without changing the which managed permission is used.</p>
    #          <p>You can use this operation to update all of your resource shares to use the current
    #             default version of the permission by specifying the same value for the
    #                 <code>fromPermissionArn</code> and <code>toPermissionArn</code> parameters.</p>
    #          <p>You can use the optional <code>fromPermissionVersion</code> parameter to update only
    #             those resources that use a specified version of the managed permission to the new managed
    #             permission.</p>
    #          <important>
    #             <p>To successfully perform this operation, you must have permission to update the
    #                 resource-based policy on all affected resource types.</p>
    #          </important>
    # @param [Hash, Types::ReplacePermissionAssociationsRequest] params
    # @option params [String] :from_permission_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the managed permission that you want to replace.</p>
    # @option params [Integer] :from_permission_version
    #   <p>Specifies that you want to updated the permissions for only those resource shares that use the
    #               specified version of the managed permission.</p>
    # @option params [String] :to_permission_arn
    #   <p>Specifies the ARN of the managed permission that you want to associate with resource
    #               shares in place of the one specified by <code>fromPerssionArn</code> and
    #                   <code>fromPermissionVersion</code>.</p>
    #            <p>The operation always associates the version that is currently the default for the
    #               specified managed permission.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other 
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of 
    #                value.</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with 
    #                different parameters, the retry fails with an <code>IdempotentParameterMismatch</code>
    #                error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     from_permission_arn: "String", # required
    #     from_permission_version: 1,
    #     to_permission_arn: "String", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.replace_permission_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replace_permission_associations_work: {
    #       id: "String",
    #       from_permission_arn: "String",
    #       from_permission_version: "String",
    #       to_permission_arn: "String",
    #       to_permission_version: "String",
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED"],
    #       status_message: "String",
    #       creation_time: Time.now,
    #       last_updated_time: Time.now
    #     },
    #     client_token: "String"
    #   }
    # @return [Types::ReplacePermissionAssociationsResponse]
    def replace_permission_associations(params = {}, options = {})
      request = build_request(:replace_permission_associations, params)
      request.send_request(options)
    end

    # <p>Designates the specified version number as the default version for the specified
    #             customer managed permission. New resource shares automatically use this new default permission. Existing
    #             resource shares continue to use their original permission version, but you can use <a>ReplacePermissionAssociations</a> to update them.</p>
    # @param [Hash, Types::SetDefaultPermissionVersionRequest] params
    # @option params [String] :permission_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the customer managed permission whose default version you want to change.</p>
    # @option params [Integer] :permission_version
    #   <p>Specifies the version number that you want to designate as the default for customer managed permission. To
    #               see a list of all available version numbers, use <a>ListPermissionVersions</a>.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other 
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of 
    #                value.</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with 
    #                different parameters, the retry fails with an <code>IdempotentParameterMismatch</code>
    #                error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     permission_arn: "String", # required
    #     permission_version: 1, # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.set_default_permission_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     return_value: false,
    #     client_token: "String"
    #   }
    # @return [Types::SetDefaultPermissionVersionResponse]
    def set_default_permission_version(params = {}, options = {})
      request = build_request(:set_default_permission_version, params)
      request.send_request(options)
    end

    # <p>Adds the specified tag keys and values to a resource share or managed permission. If you choose a resource share, the
    #             tags are attached to only the resource share, not to the resources that are in the resource share.</p>
    #          <p>The tags on a managed permission are the same for all versions of the managed permission.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the resource share that you want to add tags to. You must specify
    #                   <i>either</i>
    #               <code>resourceShareArn</code>, or <code>resourceArn</code>, but not both.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of one or more tag key and value pairs. The tag key must be present and not be
    #               an empty string. The tag value must be present but can be an empty string.</p>
    # @option params [String] :resource_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the managed permission that you want to add tags to. You must specify
    #                   <i>either</i>
    #               <code>resourceArn</code>, or <code>resourceShareArn</code>, but not both.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_share_arn: "String",
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     resource_arn: "String"
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

    # <p>Removes the specified tag key and value pairs from the specified resource share or managed permission.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the resource share that you want to remove tags from. The tags are
    #               removed from the resource share, not the resources in the resource share. You must specify either
    #                   <code>resourceShareArn</code>, or <code>resourceArn</code>, but not both.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Specifies a list of one or more tag keys that you want to remove.</p>
    # @option params [String] :resource_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the managed permission that you want to remove tags from. You must
    #               specify either <code>resourceArn</code>, or <code>resourceShareArn</code>, but not
    #               both.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_share_arn: "String",
    #     tag_keys: ["TagKey"], # required
    #     resource_arn: "String"
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

    # <p>Modifies some of the properties of the specified resource share.</p>
    # @param [Hash, Types::UpdateResourceShareRequest] params
    # @option params [String] :resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the resource share that you want to modify.</p>
    # @option params [String] :name
    #   <p>If specified, the new name that you want to attach to the resource share.</p>
    # @option params [Boolean] :allow_external_principals
    #   <p>Specifies whether principals outside your organization in Organizations can be associated
    #               with a resource share.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other 
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of 
    #                value.</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with 
    #                different parameters, the retry fails with an <code>IdempotentParameterMismatch</code>
    #                error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_share_arn: "String", # required
    #     name: "String",
    #     allow_external_principals: false,
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.update_resource_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_share: {
    #       resource_share_arn: "String",
    #       name: "String",
    #       owning_account_id: "String",
    #       allow_external_principals: false,
    #       status: "PENDING" # One of: ["PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"],
    #       status_message: "String",
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       creation_time: Time.now,
    #       last_updated_time: Time.now,
    #       feature_set: "CREATED_FROM_POLICY" # One of: ["CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"]
    #     },
    #     client_token: "String"
    #   }
    # @return [Types::UpdateResourceShareResponse]
    def update_resource_share(params = {}, options = {})
      request = build_request(:update_resource_share, params)
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
      context[:gem_name] = 'aws-sdk-ram'
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
