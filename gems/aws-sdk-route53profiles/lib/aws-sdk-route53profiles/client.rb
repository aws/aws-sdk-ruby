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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:route53profiles)

module Aws::Route53Profiles
  # An API client for Aws::Route53Profiles.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Route53Profiles
    @identifier = :route53profiles

    add_plugin(::Aws::Route53Profiles::Plugins::Endpoint)
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
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Route53Profiles::EndpointProvider)
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
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p>
    #   Associates a Route 53 Profiles profile with a VPC. A VPC can have only one Profile associated with it, but a Profile can be associated with 1000 of VPCs (and you can request a higher quota). 
    #   For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities">https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities</a>.
    # </p>
    # @param [Hash, Types::AssociateProfileRequest] params
    # @option params [String] :profile_id
    #   <p>
    #     ID of the Profile.
    #   </p>
    # @option params [String] :resource_id
    #   <p>
    #     The ID of the VPC.
    #   </p>
    # @option params [String] :name
    #   <p>
    #     A name for the association.
    #   </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>
    #     A list of the tag keys and values that you want to identify the Profile association.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ResourceId", # required
    #     resource_id: "ResourceId", # required
    #     name: "Name", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.associate_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_association: {
    #       id: "ResourceId",
    #       name: "Name",
    #       owner_id: "AccountId",
    #       profile_id: "ResourceId",
    #       resource_id: "ResourceId",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"],
    #       status_message: "String",
    #       creation_time: Time.now,
    #       modification_time: Time.now
    #     }
    #   }
    # @return [Types::AssociateProfileResponse]
    def associate_profile(params = {}, options = {})
      request = build_request(:associate_profile, params)
      request.send_request(options)
    end

    # <p>
    #   Associates a DNS reource configuration to a Route 53 Profile.
    # </p>
    # @param [Hash, Types::AssociateResourceToProfileRequest] params
    # @option params [String] :profile_id
    #   <p>
    #     ID of the Profile.
    #   </p>
    # @option params [String] :resource_arn
    #   <p>
    #     Amazon resource number, ARN, of the DNS resource.
    #   </p>
    # @option params [String] :name
    #   <p>
    #     Name for the resource association.
    #   </p>
    # @option params [String] :resource_properties
    #   <p>
    #     If you are adding a DNS Firewall rule group, include also a priority. The priority indicates the processing order for the rule groups, starting with the priority assinged the lowest value.
    #   </p>
    #            <p>The allowed values for priority are between 100 and 9900.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ResourceId", # required
    #     resource_arn: "Arn", # required
    #     name: "Name", # required
    #     resource_properties: "ResourceProperties"
    #   }
    #   options = {}
    #   response = client.associate_resource_to_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_resource_association: {
    #       id: "ResourceId",
    #       name: "Name",
    #       owner_id: "AccountId",
    #       profile_id: "ResourceId",
    #       resource_arn: "Arn",
    #       resource_type: "String",
    #       resource_properties: "ResourceProperties",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"],
    #       status_message: "String",
    #       creation_time: Time.now,
    #       modification_time: Time.now
    #     }
    #   }
    # @return [Types::AssociateResourceToProfileResponse]
    def associate_resource_to_profile(params = {}, options = {})
      request = build_request(:associate_resource_to_profile, params)
      request.send_request(options)
    end

    # <p>
    #   Creates an empty Route 53 Profile.
    # </p>
    # @param [Hash, Types::CreateProfileRequest] params
    # @option params [String] :name
    #   <p>
    #     A name for the Profile.
    #   </p>
    # @option params [String] :client_token
    #   <p>
    #               <code>ClientToken</code> is an idempotency token that ensures a call to <code>CreateProfile</code> completes only once. You choose the value to pass. 
    #     For example, an issue might prevent you from getting a response from <code>CreateProfile</code>. 
    #     In this case, safely retry your call to <code>CreateProfile</code> by using the same <code>CreateProfile</code> parameter value.
    #   </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>
    #     A list of the tag keys and values that you want to associate with the Route 53 Profile.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     client_token: "CreatorRequestId", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile: {
    #       id: "ResourceId",
    #       arn: "Arn",
    #       name: "Name",
    #       owner_id: "AccountId",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"],
    #       status_message: "String",
    #       share_status: "NOT_SHARED" # One of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"],
    #       creation_time: Time.now,
    #       modification_time: Time.now,
    #       client_token: "CreatorRequestId"
    #     }
    #   }
    # @return [Types::CreateProfileResponse]
    def create_profile(params = {}, options = {})
      request = build_request(:create_profile, params)
      request.send_request(options)
    end

    # <p>
    #   Deletes the specified Route 53 Profile. Before you can delete a profile, you must first disassociate it from all VPCs.
    # </p>
    # @param [Hash, Types::DeleteProfileRequest] params
    # @option params [String] :profile_id
    #   <p>
    #     The ID of the Profile that you want to delete.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile: {
    #       id: "ResourceId",
    #       arn: "Arn",
    #       name: "Name",
    #       owner_id: "AccountId",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"],
    #       status_message: "String",
    #       share_status: "NOT_SHARED" # One of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"],
    #       creation_time: Time.now,
    #       modification_time: Time.now,
    #       client_token: "CreatorRequestId"
    #     }
    #   }
    # @return [Types::DeleteProfileResponse]
    def delete_profile(params = {}, options = {})
      request = build_request(:delete_profile, params)
      request.send_request(options)
    end

    # <p>
    #   Dissociates a specified Route 53 Profile from the specified VPC.
    # </p>
    # @param [Hash, Types::DisassociateProfileRequest] params
    # @option params [String] :profile_id
    #   <p>
    #     ID of the Profile.
    #   </p>
    # @option params [String] :resource_id
    #   <p>
    #     The ID of the VPC.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ResourceId", # required
    #     resource_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_association: {
    #       id: "ResourceId",
    #       name: "Name",
    #       owner_id: "AccountId",
    #       profile_id: "ResourceId",
    #       resource_id: "ResourceId",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"],
    #       status_message: "String",
    #       creation_time: Time.now,
    #       modification_time: Time.now
    #     }
    #   }
    # @return [Types::DisassociateProfileResponse]
    def disassociate_profile(params = {}, options = {})
      request = build_request(:disassociate_profile, params)
      request.send_request(options)
    end

    # <p>
    #   Dissoaciated a specified resource, from the Route 53 Profile.
    # </p>
    # @param [Hash, Types::DisassociateResourceFromProfileRequest] params
    # @option params [String] :profile_id
    #   <p>
    #     The ID of the Profile.
    #   </p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ResourceId", # required
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_resource_from_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_resource_association: {
    #       id: "ResourceId",
    #       name: "Name",
    #       owner_id: "AccountId",
    #       profile_id: "ResourceId",
    #       resource_arn: "Arn",
    #       resource_type: "String",
    #       resource_properties: "ResourceProperties",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"],
    #       status_message: "String",
    #       creation_time: Time.now,
    #       modification_time: Time.now
    #     }
    #   }
    # @return [Types::DisassociateResourceFromProfileResponse]
    def disassociate_resource_from_profile(params = {}, options = {})
      request = build_request(:disassociate_resource_from_profile, params)
      request.send_request(options)
    end

    # <p>
    #   Returns information about a specified Route 53 Profile, such as whether whether the Profile is shared, and the current status of the Profile.
    # </p>
    # @param [Hash, Types::GetProfileRequest] params
    # @option params [String] :profile_id
    #   <p>
    #     ID of the Profile.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile: {
    #       id: "ResourceId",
    #       arn: "Arn",
    #       name: "Name",
    #       owner_id: "AccountId",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"],
    #       status_message: "String",
    #       share_status: "NOT_SHARED" # One of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"],
    #       creation_time: Time.now,
    #       modification_time: Time.now,
    #       client_token: "CreatorRequestId"
    #     }
    #   }
    # @return [Types::GetProfileResponse]
    def get_profile(params = {}, options = {})
      request = build_request(:get_profile, params)
      request.send_request(options)
    end

    # <p>
    #   Retrieves a Route 53 Profile association for a VPC. A VPC can have only one Profile association, but a Profile can be associated with up to 5000 VPCs. 
    # </p>
    # @param [Hash, Types::GetProfileAssociationRequest] params
    # @option params [String] :profile_association_id
    #   <p>
    #     The identifier of the association you want to get information about.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_association_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_profile_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_association: {
    #       id: "ResourceId",
    #       name: "Name",
    #       owner_id: "AccountId",
    #       profile_id: "ResourceId",
    #       resource_id: "ResourceId",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"],
    #       status_message: "String",
    #       creation_time: Time.now,
    #       modification_time: Time.now
    #     }
    #   }
    # @return [Types::GetProfileAssociationResponse]
    def get_profile_association(params = {}, options = {})
      request = build_request(:get_profile_association, params)
      request.send_request(options)
    end

    # <p>
    #   Returns information about a specified Route 53 Profile resource association.
    # </p>
    # @param [Hash, Types::GetProfileResourceAssociationRequest] params
    # @option params [String] :profile_resource_association_id
    #   <p>
    #     
    #     The ID of the profile resource association that you want to get information about.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_resource_association_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_profile_resource_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_resource_association: {
    #       id: "ResourceId",
    #       name: "Name",
    #       owner_id: "AccountId",
    #       profile_id: "ResourceId",
    #       resource_arn: "Arn",
    #       resource_type: "String",
    #       resource_properties: "ResourceProperties",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"],
    #       status_message: "String",
    #       creation_time: Time.now,
    #       modification_time: Time.now
    #     }
    #   }
    # @return [Types::GetProfileResourceAssociationResponse]
    def get_profile_resource_association(params = {}, options = {})
      request = build_request(:get_profile_resource_association, params)
      request.send_request(options)
    end

    # <p>
    #   Lists all the VPCs that the specified Route 53 Profile is associated with.
    # </p>
    # @param [Hash, Types::ListProfileAssociationsRequest] params
    # @option params [String] :resource_id
    #   <p>
    #     ID of the VPC.
    #   </p>
    # @option params [String] :profile_id
    #   <p>
    #   ID of the Profile.
    #   </p>
    # @option params [Integer] :max_results
    #   <p>
    #     The maximum number of objects that you want to return for this request. If more objects are available, in the response, 
    #     a <code>NextToken</code> value, which you can use in a subsequent call to get the next batch of objects, is provided.</p>
    #            <p>
    #       If you don't specify a value for <code>MaxResults</code>, up to 100 objects are returned.
    #   </p>
    # @option params [String] :next_token
    #   <p>
    #     For the first call to this list request, omit this value.
    #   </p>
    #            <p>When you request a list of objects, at most the number of objects specified by <code>MaxResults</code> is returned. 
    #       If more objects are available for retrieval, a <code>NextToken</code> value is returned in the response. 
    #       To retrieve the next batch of objects, use the token that was returned for the prior request in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId",
    #     profile_id: "ResourceId",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_profile_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_associations: [
    #       {
    #         id: "ResourceId",
    #         name: "Name",
    #         owner_id: "AccountId",
    #         profile_id: "ResourceId",
    #         resource_id: "ResourceId",
    #         status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"],
    #         status_message: "String",
    #         creation_time: Time.now,
    #         modification_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListProfileAssociationsResponse]
    def list_profile_associations(params = {}, options = {})
      request = build_request(:list_profile_associations, params)
      request.send_request(options)
    end

    # <p>
    #   Lists all the resource associations for the specified Route 53 Profile.
    # </p>
    # @param [Hash, Types::ListProfileResourceAssociationsRequest] params
    # @option params [String] :profile_id
    #   <p>
    #   The ID of the Profile.
    #   </p>
    # @option params [String] :resource_type
    #   <p>
    #     ID of a resource if you want information on only one type.
    #   </p>
    # @option params [Integer] :max_results
    #   <p>
    #       The maximum number of objects that you want to return for this request. If more objects are available, in the response, 
    #       a <code>NextToken</code> value, which you can use in a subsequent call to get the next batch of objects, is provided.</p>
    #            <p>
    #       If you don't specify a value for <code>MaxResults</code>, up to 100 objects are returned.
    #     </p>
    # @option params [String] :next_token
    #   <p>
    #       For the first call to this list request, omit this value.
    #     </p>
    #            <p>When you request a list of objects, at most the number of objects specified by <code>MaxResults</code> is returned. 
    #       If more objects are available for retrieval, a <code>NextToken</code> value is returned in the response. 
    #       To retrieve the next batch of objects, use the token that was returned for the prior request in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ResourceId", # required
    #     resource_type: "String",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_profile_resource_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_resource_associations: [
    #       {
    #         id: "ResourceId",
    #         name: "Name",
    #         owner_id: "AccountId",
    #         profile_id: "ResourceId",
    #         resource_arn: "Arn",
    #         resource_type: "String",
    #         resource_properties: "ResourceProperties",
    #         status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"],
    #         status_message: "String",
    #         creation_time: Time.now,
    #         modification_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListProfileResourceAssociationsResponse]
    def list_profile_resource_associations(params = {}, options = {})
      request = build_request(:list_profile_resource_associations, params)
      request.send_request(options)
    end

    # <p>
    #   Lists all the Route 53 Profiles associated with your Amazon Web Services account.
    # </p>
    # @param [Hash, Types::ListProfilesRequest] params
    # @option params [Integer] :max_results
    #   <p>
    #       The maximum number of objects that you want to return for this request. If more objects are available, in the response, 
    #       a <code>NextToken</code> value, which you can use in a subsequent call to get the next batch of objects, is provided.</p>
    #            <p>
    #       If you don't specify a value for <code>MaxResults</code>, up to 100 objects are returned.
    #     </p>
    # @option params [String] :next_token
    #   <p>
    #       For the first call to this list request, omit this value.
    #     </p>
    #            <p>When you request a list of objects, at most the number of objects specified by <code>MaxResults</code> is returned. 
    #       If more objects are available for retrieval, a <code>NextToken</code> value is returned in the response. 
    #       To retrieve the next batch of objects, use the token that was returned for the prior request in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_summaries: [
    #       {
    #         id: "ResourceId",
    #         arn: "Arn",
    #         name: "Name",
    #         share_status: "NOT_SHARED" # One of: ["NOT_SHARED", "SHARED_WITH_ME", "SHARED_BY_ME"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListProfilesResponse]
    def list_profiles(params = {}, options = {})
      request = build_request(:list_profiles, params)
      request.send_request(options)
    end

    # <p>
    #   Lists the tags that you associated with the specified resource.
    # </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>
    #     The Amazon Resource Name (ARN) for the resource that you want to list the tags for.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>
    #   Adds one or more tags to a specified resource.
    # </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>
    #     The Amazon Resource Name (ARN) for the resource that you want to add tags to. 
    #   </p>
    # @option params [Hash<String, String>] :tags
    #   <p>
    #     The tags that you want to add to the specified resource.
    #   </p>
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
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>
    #   Removes one or more tags from a specified resource.
    # </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>
    #     The Amazon Resource Name (ARN) for the resource that you want to remove tags from.
    #   </p>
    # @option params [Array<String>] :tag_keys
    #   <p>
    #     The tags that you want to remove to the specified resource.
    #   </p>
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
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>
    # Updates the specified Route 53 Profile resourse association.
    # </p>
    # @param [Hash, Types::UpdateProfileResourceAssociationRequest] params
    # @option params [String] :profile_resource_association_id
    #   <p>
    #   ID of the resource association.
    #   </p>
    # @option params [String] :name
    #   <p>
    #   Name of the resource association.
    #   </p>
    # @option params [String] :resource_properties
    #   <p>
    #     If you are adding a DNS Firewall rule group, include also a priority. The priority indicates the processing order for the rule groups, starting with the priority assinged the lowest value.
    #     </p>
    #            <p>The allowed values for priority are between 100 and 9900.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_resource_association_id: "ResourceId", # required
    #     name: "Name",
    #     resource_properties: "ResourceProperties"
    #   }
    #   options = {}
    #   response = client.update_profile_resource_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_resource_association: {
    #       id: "ResourceId",
    #       name: "Name",
    #       owner_id: "AccountId",
    #       profile_id: "ResourceId",
    #       resource_arn: "Arn",
    #       resource_type: "String",
    #       resource_properties: "ResourceProperties",
    #       status: "COMPLETE" # One of: ["COMPLETE", "DELETING", "UPDATING", "CREATING", "DELETED", "FAILED"],
    #       status_message: "String",
    #       creation_time: Time.now,
    #       modification_time: Time.now
    #     }
    #   }
    # @return [Types::UpdateProfileResourceAssociationResponse]
    def update_profile_resource_association(params = {}, options = {})
      request = build_request(:update_profile_resource_association, params)
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
      context[:gem_name] = 'aws-sdk-route53profiles'
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
