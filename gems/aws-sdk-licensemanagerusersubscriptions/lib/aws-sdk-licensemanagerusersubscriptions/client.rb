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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:licensemanagerusersubscriptions)

module Aws::LicenseManagerUserSubscriptions
  # An API client for Aws::LicenseManagerUserSubscriptions.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::LicenseManagerUserSubscriptions
    @identifier = :licensemanagerusersubscriptions

    add_plugin(::Aws::LicenseManagerUserSubscriptions::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::LicenseManagerUserSubscriptions::EndpointProvider)
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

    # <p>Associates the user to an EC2 instance to utilize user-based subscriptions.</p> <note> <p>Your estimated bill for charges on the number of users and related costs will take 48 hours to appear for billing periods that haven't closed (marked as <b>Pending</b> billing status) in Amazon Web Services Billing. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/invoice.html">Viewing your monthly charges</a> in the <i>Amazon Web Services Billing User Guide</i>.</p> </note>
    # @param [Hash, Types::AssociateUserRequest] params
    # @option params [String] :username
    #   <p>The user name from the identity provider.</p>
    # @option params [String] :instance_id
    #   <p>The ID of the EC2 instance that provides the user-based subscription.</p>
    # @option params [Types::IdentityProvider] :identity_provider
    #   <p>The identity provider for the user.</p>
    # @option params [String] :domain
    #   <p>The domain name of the Active Directory that contains information for the user to associate.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that apply for the user association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     username: "String", # required
    #     instance_id: "String", # required
    #     identity_provider: { # required
    #       # One of:
    #       active_directory_identity_provider: {
    #         directory_id: "Directory",
    #         active_directory_settings: {
    #           domain_name: "String",
    #           domain_ipv4_list: ["IpV4"],
    #           domain_credentials_provider: {
    #             # One of:
    #             secrets_manager_credentials_provider: {
    #               secret_id: "String"
    #             }
    #           },
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           }
    #         },
    #         active_directory_type: "ActiveDirectoryType",
    #         is_shared_active_directory: false
    #       }
    #     },
    #     domain: "String",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.associate_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_user_summary: { # required
    #       username: "String", # required
    #       instance_id: "String", # required
    #       identity_provider: { # required
    #         # One of:
    #         active_directory_identity_provider: {
    #           directory_id: "Directory",
    #           active_directory_settings: {
    #             domain_name: "String",
    #             domain_ipv4_list: ["IpV4"],
    #             domain_credentials_provider: {
    #               # One of:
    #               secrets_manager_credentials_provider: {
    #                 secret_id: "String"
    #               }
    #             },
    #             domain_network_settings: {
    #               subnets: ["Subnet"], # required
    #             }
    #           },
    #           active_directory_type: "ActiveDirectoryType",
    #           is_shared_active_directory: false
    #         }
    #       },
    #       status: "String", # required
    #       instance_user_arn: "Arn",
    #       status_message: "String",
    #       domain: "String",
    #       association_date: "String",
    #       disassociation_date: "String"
    #     }
    #   }
    # @return [Types::AssociateUserResponse]
    def associate_user(params = {}, options = {})
      request = build_request(:associate_user, params)
      request.send_request(options)
    end

    # <p>Creates a network endpoint for the Remote Desktop Services (RDS) license server.</p>
    # @param [Hash, Types::CreateLicenseServerEndpointRequest] params
    # @option params [String] :identity_provider_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the <code>IdentityProvider</code> resource that contains details about a registered identity provider. In the case of Active Directory, that can be a self-managed Active Directory or an Amazon Web Services Managed Active Directory that contains user identity details.</p>
    # @option params [Types::LicenseServerSettings] :license_server_settings
    #   <p>The <code>LicenseServerSettings</code> resource to create for the endpoint. The settings include the type of license server and the Secrets Manager secret that enables administrators to add or remove users associated with the license server.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that apply for the license server endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_provider_arn: "Arn", # required
    #     license_server_settings: { # required
    #       server_type: "ServerType", # required
    #       server_settings: { # required
    #         # One of:
    #         rds_sal_settings: {
    #           rds_sal_credentials_provider: { # required
    #             # One of:
    #             secrets_manager_credentials_provider: {
    #               secret_id: "String"
    #             }
    #           }
    #         }
    #       }
    #     },
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_license_server_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_provider_arn: "Arn",
    #     license_server_endpoint_arn: "Arn"
    #   }
    # @return [Types::CreateLicenseServerEndpointResponse]
    def create_license_server_endpoint(params = {}, options = {})
      request = build_request(:create_license_server_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes a <code>LicenseServerEndpoint</code> resource.</p>
    # @param [Hash, Types::DeleteLicenseServerEndpointRequest] params
    # @option params [String] :license_server_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the <code>LicenseServerEndpoint</code> resource to delete.</p>
    # @option params [String] :server_type
    #   <p>The type of License Server that the delete request refers to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_server_endpoint_arn: "Arn", # required
    #     server_type: "ServerType", # required
    #   }
    #   options = {}
    #   response = client.delete_license_server_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_server_endpoint: {
    #       identity_provider_arn: "String",
    #       server_type: "ServerType",
    #       server_endpoint: {
    #         endpoint: "String"
    #       },
    #       status_message: "String",
    #       license_server_endpoint_id: "LicenseServerEndpointId",
    #       license_server_endpoint_arn: "Arn",
    #       license_server_endpoint_provisioning_status: "LicenseServerEndpointProvisioningStatus",
    #       license_servers: [
    #         {
    #           provisioning_status: "LicenseServerEndpointProvisioningStatus",
    #           health_status: "LicenseServerHealthStatus",
    #           ipv4_address: "String"
    #         }
    #       ],
    #       creation_time: Time.now
    #     }
    #   }
    # @return [Types::DeleteLicenseServerEndpointResponse]
    def delete_license_server_endpoint(params = {}, options = {})
      request = build_request(:delete_license_server_endpoint, params)
      request.send_request(options)
    end

    # <p>Deregisters the Active Directory identity provider from License Manager user-based subscriptions.</p>
    # @param [Hash, Types::DeregisterIdentityProviderRequest] params
    # @option params [Types::IdentityProvider] :identity_provider
    #   <p>An object that specifies details for the Active Directory identity provider.</p>
    # @option params [String] :product
    #   <p>The name of the user-based subscription product.</p> <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | <code>REMOTE_DESKTOP_SERVICES</code> </p>
    # @option params [String] :identity_provider_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the identity provider to deregister.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_provider: {
    #       # One of:
    #       active_directory_identity_provider: {
    #         directory_id: "Directory",
    #         active_directory_settings: {
    #           domain_name: "String",
    #           domain_ipv4_list: ["IpV4"],
    #           domain_credentials_provider: {
    #             # One of:
    #             secrets_manager_credentials_provider: {
    #               secret_id: "String"
    #             }
    #           },
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           }
    #         },
    #         active_directory_type: "ActiveDirectoryType",
    #         is_shared_active_directory: false
    #       }
    #     },
    #     product: "String",
    #     identity_provider_arn: "Arn"
    #   }
    #   options = {}
    #   response = client.deregister_identity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_provider_summary: { # required
    #       identity_provider: { # required
    #         # One of:
    #         active_directory_identity_provider: {
    #           directory_id: "Directory",
    #           active_directory_settings: {
    #             domain_name: "String",
    #             domain_ipv4_list: ["IpV4"],
    #             domain_credentials_provider: {
    #               # One of:
    #               secrets_manager_credentials_provider: {
    #                 secret_id: "String"
    #               }
    #             },
    #             domain_network_settings: {
    #               subnets: ["Subnet"], # required
    #             }
    #           },
    #           active_directory_type: "ActiveDirectoryType",
    #           is_shared_active_directory: false
    #         }
    #       },
    #       settings: { # required
    #         subnets: ["Subnet"], # required
    #         security_group_id: "SecurityGroup", # required
    #       },
    #       product: "String", # required
    #       status: "String", # required
    #       identity_provider_arn: "Arn",
    #       failure_message: "String",
    #       owner_account_id: "String"
    #     }
    #   }
    # @return [Types::DeregisterIdentityProviderResponse]
    def deregister_identity_provider(params = {}, options = {})
      request = build_request(:deregister_identity_provider, params)
      request.send_request(options)
    end

    # <p>Disassociates the user from an EC2 instance providing user-based subscriptions.</p>
    # @param [Hash, Types::DisassociateUserRequest] params
    # @option params [String] :username
    #   <p>The user name from the Active Directory identity provider for the user.</p>
    # @option params [String] :instance_id
    #   <p>The ID of the EC2 instance which provides user-based subscriptions.</p>
    # @option params [Types::IdentityProvider] :identity_provider
    #   <p>An object that specifies details for the Active Directory identity provider.</p>
    # @option params [String] :instance_user_arn
    #   <p>The Amazon Resource Name (ARN) of the user to disassociate from the EC2 instance.</p>
    # @option params [String] :domain
    #   <p>The domain name of the Active Directory that contains information for the user to disassociate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     username: "String",
    #     instance_id: "String",
    #     identity_provider: {
    #       # One of:
    #       active_directory_identity_provider: {
    #         directory_id: "Directory",
    #         active_directory_settings: {
    #           domain_name: "String",
    #           domain_ipv4_list: ["IpV4"],
    #           domain_credentials_provider: {
    #             # One of:
    #             secrets_manager_credentials_provider: {
    #               secret_id: "String"
    #             }
    #           },
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           }
    #         },
    #         active_directory_type: "ActiveDirectoryType",
    #         is_shared_active_directory: false
    #       }
    #     },
    #     instance_user_arn: "Arn",
    #     domain: "String"
    #   }
    #   options = {}
    #   response = client.disassociate_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_user_summary: { # required
    #       username: "String", # required
    #       instance_id: "String", # required
    #       identity_provider: { # required
    #         # One of:
    #         active_directory_identity_provider: {
    #           directory_id: "Directory",
    #           active_directory_settings: {
    #             domain_name: "String",
    #             domain_ipv4_list: ["IpV4"],
    #             domain_credentials_provider: {
    #               # One of:
    #               secrets_manager_credentials_provider: {
    #                 secret_id: "String"
    #               }
    #             },
    #             domain_network_settings: {
    #               subnets: ["Subnet"], # required
    #             }
    #           },
    #           active_directory_type: "ActiveDirectoryType",
    #           is_shared_active_directory: false
    #         }
    #       },
    #       status: "String", # required
    #       instance_user_arn: "Arn",
    #       status_message: "String",
    #       domain: "String",
    #       association_date: "String",
    #       disassociation_date: "String"
    #     }
    #   }
    # @return [Types::DisassociateUserResponse]
    def disassociate_user(params = {}, options = {})
      request = build_request(:disassociate_user, params)
      request.send_request(options)
    end

    # <p>Lists the Active Directory identity providers for user-based subscriptions.</p>
    # @param [Hash, Types::ListIdentityProvidersRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return from a single request.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>You can use the following filters to streamline results:</p> <ul> <li> <p>Product</p> </li> <li> <p>DirectoryId</p> </li> </ul>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken from a previously truncated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     filters: [
    #       {
    #         attribute: "String",
    #         operation: "String",
    #         value: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_identity_providers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_provider_summaries: [ # required
    #       {
    #         identity_provider: { # required
    #           # One of:
    #           active_directory_identity_provider: {
    #             directory_id: "Directory",
    #             active_directory_settings: {
    #               domain_name: "String",
    #               domain_ipv4_list: ["IpV4"],
    #               domain_credentials_provider: {
    #                 # One of:
    #                 secrets_manager_credentials_provider: {
    #                   secret_id: "String"
    #                 }
    #               },
    #               domain_network_settings: {
    #                 subnets: ["Subnet"], # required
    #               }
    #             },
    #             active_directory_type: "ActiveDirectoryType",
    #             is_shared_active_directory: false
    #           }
    #         },
    #         settings: { # required
    #           subnets: ["Subnet"], # required
    #           security_group_id: "SecurityGroup", # required
    #         },
    #         product: "String", # required
    #         status: "String", # required
    #         identity_provider_arn: "Arn",
    #         failure_message: "String",
    #         owner_account_id: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListIdentityProvidersResponse]
    def list_identity_providers(params = {}, options = {})
      request = build_request(:list_identity_providers, params)
      request.send_request(options)
    end

    # <p>Lists the EC2 instances providing user-based subscriptions.</p>
    # @param [Hash, Types::ListInstancesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return from a single request.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken from a previously truncated response.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>You can use the following filters to streamline results:</p> <ul> <li> <p>Status</p> </li> <li> <p>InstanceId</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     filters: [
    #       {
    #         attribute: "String",
    #         operation: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_summaries: [
    #       {
    #         instance_id: "String", # required
    #         status: "String", # required
    #         products: ["String"], # required
    #         last_status_check_date: "String",
    #         status_message: "String",
    #         owner_account_id: "String",
    #         identity_provider: {
    #           # One of:
    #           active_directory_identity_provider: {
    #             directory_id: "Directory",
    #             active_directory_settings: {
    #               domain_name: "String",
    #               domain_ipv4_list: ["IpV4"],
    #               domain_credentials_provider: {
    #                 # One of:
    #                 secrets_manager_credentials_provider: {
    #                   secret_id: "String"
    #                 }
    #               },
    #               domain_network_settings: {
    #                 subnets: ["Subnet"], # required
    #               }
    #             },
    #             active_directory_type: "ActiveDirectoryType",
    #             is_shared_active_directory: false
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListInstancesResponse]
    def list_instances(params = {}, options = {})
      request = build_request(:list_instances, params)
      request.send_request(options)
    end

    # <p>List the Remote Desktop Services (RDS) License Server endpoints </p>
    # @param [Hash, Types::ListLicenseServerEndpointsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return from a single request.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>You can use the following filters to streamline results:</p> <ul> <li> <p>IdentityProviderArn</p> </li> </ul>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken from a previously truncated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     filters: [
    #       {
    #         attribute: "String",
    #         operation: "String",
    #         value: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_license_server_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_server_endpoints: [
    #       {
    #         identity_provider_arn: "String",
    #         server_type: "ServerType",
    #         server_endpoint: {
    #           endpoint: "String"
    #         },
    #         status_message: "String",
    #         license_server_endpoint_id: "LicenseServerEndpointId",
    #         license_server_endpoint_arn: "Arn",
    #         license_server_endpoint_provisioning_status: "LicenseServerEndpointProvisioningStatus",
    #         license_servers: [
    #           {
    #             provisioning_status: "LicenseServerEndpointProvisioningStatus",
    #             health_status: "LicenseServerHealthStatus",
    #             ipv4_address: "String"
    #           }
    #         ],
    #         creation_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLicenseServerEndpointsResponse]
    def list_license_server_endpoints(params = {}, options = {})
      request = build_request(:list_license_server_endpoints, params)
      request.send_request(options)
    end

    # <p>Lists the user-based subscription products available from an identity provider.</p>
    # @param [Hash, Types::ListProductSubscriptionsRequest] params
    # @option params [String] :product
    #   <p>The name of the user-based subscription product.</p> <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | <code>REMOTE_DESKTOP_SERVICES</code> </p>
    # @option params [Types::IdentityProvider] :identity_provider
    #   <p>An object that specifies details for the identity provider.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return from a single request.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>You can use the following filters to streamline results:</p> <ul> <li> <p>Status</p> </li> <li> <p>Username</p> </li> <li> <p>Domain</p> </li> </ul>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken from a previously truncated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     product: "String",
    #     identity_provider: { # required
    #       # One of:
    #       active_directory_identity_provider: {
    #         directory_id: "Directory",
    #         active_directory_settings: {
    #           domain_name: "String",
    #           domain_ipv4_list: ["IpV4"],
    #           domain_credentials_provider: {
    #             # One of:
    #             secrets_manager_credentials_provider: {
    #               secret_id: "String"
    #             }
    #           },
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           }
    #         },
    #         active_directory_type: "ActiveDirectoryType",
    #         is_shared_active_directory: false
    #       }
    #     },
    #     max_results: 1,
    #     filters: [
    #       {
    #         attribute: "String",
    #         operation: "String",
    #         value: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_product_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     product_user_summaries: [
    #       {
    #         username: "String", # required
    #         product: "String", # required
    #         identity_provider: { # required
    #           # One of:
    #           active_directory_identity_provider: {
    #             directory_id: "Directory",
    #             active_directory_settings: {
    #               domain_name: "String",
    #               domain_ipv4_list: ["IpV4"],
    #               domain_credentials_provider: {
    #                 # One of:
    #                 secrets_manager_credentials_provider: {
    #                   secret_id: "String"
    #                 }
    #               },
    #               domain_network_settings: {
    #                 subnets: ["Subnet"], # required
    #               }
    #             },
    #             active_directory_type: "ActiveDirectoryType",
    #             is_shared_active_directory: false
    #           }
    #         },
    #         status: "String", # required
    #         product_user_arn: "Arn",
    #         status_message: "String",
    #         domain: "String",
    #         subscription_start_date: "String",
    #         subscription_end_date: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListProductSubscriptionsResponse]
    def list_product_subscriptions(params = {}, options = {})
      request = build_request(:list_product_subscriptions, params)
      request.send_request(options)
    end

    # <p>Returns the list of tags for the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Lists user associations for an identity provider.</p>
    # @param [Hash, Types::ListUserAssociationsRequest] params
    # @option params [String] :instance_id
    #   <p>The ID of the EC2 instance, which provides user-based subscriptions.</p>
    # @option params [Types::IdentityProvider] :identity_provider
    #   <p>An object that specifies details for the identity provider.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return from a single request.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>You can use the following filters to streamline results:</p> <ul> <li> <p>Status</p> </li> <li> <p>Username</p> </li> <li> <p>Domain</p> </li> </ul>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the nextToken from a previously truncated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "String", # required
    #     identity_provider: { # required
    #       # One of:
    #       active_directory_identity_provider: {
    #         directory_id: "Directory",
    #         active_directory_settings: {
    #           domain_name: "String",
    #           domain_ipv4_list: ["IpV4"],
    #           domain_credentials_provider: {
    #             # One of:
    #             secrets_manager_credentials_provider: {
    #               secret_id: "String"
    #             }
    #           },
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           }
    #         },
    #         active_directory_type: "ActiveDirectoryType",
    #         is_shared_active_directory: false
    #       }
    #     },
    #     max_results: 1,
    #     filters: [
    #       {
    #         attribute: "String",
    #         operation: "String",
    #         value: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_user_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_user_summaries: [
    #       {
    #         username: "String", # required
    #         instance_id: "String", # required
    #         identity_provider: { # required
    #           # One of:
    #           active_directory_identity_provider: {
    #             directory_id: "Directory",
    #             active_directory_settings: {
    #               domain_name: "String",
    #               domain_ipv4_list: ["IpV4"],
    #               domain_credentials_provider: {
    #                 # One of:
    #                 secrets_manager_credentials_provider: {
    #                   secret_id: "String"
    #                 }
    #               },
    #               domain_network_settings: {
    #                 subnets: ["Subnet"], # required
    #               }
    #             },
    #             active_directory_type: "ActiveDirectoryType",
    #             is_shared_active_directory: false
    #           }
    #         },
    #         status: "String", # required
    #         instance_user_arn: "Arn",
    #         status_message: "String",
    #         domain: "String",
    #         association_date: "String",
    #         disassociation_date: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListUserAssociationsResponse]
    def list_user_associations(params = {}, options = {})
      request = build_request(:list_user_associations, params)
      request.send_request(options)
    end

    # <p>Registers an identity provider for user-based subscriptions.</p>
    # @param [Hash, Types::RegisterIdentityProviderRequest] params
    # @option params [Types::IdentityProvider] :identity_provider
    #   <p>An object that specifies details for the identity provider to register.</p>
    # @option params [String] :product
    #   <p>The name of the user-based subscription product.</p> <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | <code>REMOTE_DESKTOP_SERVICES</code> </p>
    # @option params [Types::Settings] :settings
    #   <p>The registered identity provider’s product related configuration settings such as the subnets to provision VPC endpoints.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that apply to the identity provider's registration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_provider: { # required
    #       # One of:
    #       active_directory_identity_provider: {
    #         directory_id: "Directory",
    #         active_directory_settings: {
    #           domain_name: "String",
    #           domain_ipv4_list: ["IpV4"],
    #           domain_credentials_provider: {
    #             # One of:
    #             secrets_manager_credentials_provider: {
    #               secret_id: "String"
    #             }
    #           },
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           }
    #         },
    #         active_directory_type: "ActiveDirectoryType",
    #         is_shared_active_directory: false
    #       }
    #     },
    #     product: "String", # required
    #     settings: {
    #       subnets: ["Subnet"], # required
    #       security_group_id: "SecurityGroup", # required
    #     },
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.register_identity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_provider_summary: { # required
    #       identity_provider: { # required
    #         # One of:
    #         active_directory_identity_provider: {
    #           directory_id: "Directory",
    #           active_directory_settings: {
    #             domain_name: "String",
    #             domain_ipv4_list: ["IpV4"],
    #             domain_credentials_provider: {
    #               # One of:
    #               secrets_manager_credentials_provider: {
    #                 secret_id: "String"
    #               }
    #             },
    #             domain_network_settings: {
    #               subnets: ["Subnet"], # required
    #             }
    #           },
    #           active_directory_type: "ActiveDirectoryType",
    #           is_shared_active_directory: false
    #         }
    #       },
    #       settings: { # required
    #         subnets: ["Subnet"], # required
    #         security_group_id: "SecurityGroup", # required
    #       },
    #       product: "String", # required
    #       status: "String", # required
    #       identity_provider_arn: "Arn",
    #       failure_message: "String",
    #       owner_account_id: "String"
    #     }
    #   }
    # @return [Types::RegisterIdentityProviderResponse]
    def register_identity_provider(params = {}, options = {})
      request = build_request(:register_identity_provider, params)
      request.send_request(options)
    end

    # <p>Starts a product subscription for a user with the specified identity provider.</p> <note> <p>Your estimated bill for charges on the number of users and related costs will take 48 hours to appear for billing periods that haven't closed (marked as <b>Pending</b> billing status) in Amazon Web Services Billing. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/invoice.html">Viewing your monthly charges</a> in the <i>Amazon Web Services Billing User Guide</i>.</p> </note>
    # @param [Hash, Types::StartProductSubscriptionRequest] params
    # @option params [String] :username
    #   <p>The user name from the identity provider of the user.</p>
    # @option params [Types::IdentityProvider] :identity_provider
    #   <p>An object that specifies details for the identity provider.</p>
    # @option params [String] :product
    #   <p>The name of the user-based subscription product.</p> <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | <code>REMOTE_DESKTOP_SERVICES</code> </p>
    # @option params [String] :domain
    #   <p>The domain name of the Active Directory that contains the user for whom to start the product subscription.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that apply to the product subscription.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     username: "String", # required
    #     identity_provider: { # required
    #       # One of:
    #       active_directory_identity_provider: {
    #         directory_id: "Directory",
    #         active_directory_settings: {
    #           domain_name: "String",
    #           domain_ipv4_list: ["IpV4"],
    #           domain_credentials_provider: {
    #             # One of:
    #             secrets_manager_credentials_provider: {
    #               secret_id: "String"
    #             }
    #           },
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           }
    #         },
    #         active_directory_type: "ActiveDirectoryType",
    #         is_shared_active_directory: false
    #       }
    #     },
    #     product: "String", # required
    #     domain: "String",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.start_product_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     product_user_summary: { # required
    #       username: "String", # required
    #       product: "String", # required
    #       identity_provider: { # required
    #         # One of:
    #         active_directory_identity_provider: {
    #           directory_id: "Directory",
    #           active_directory_settings: {
    #             domain_name: "String",
    #             domain_ipv4_list: ["IpV4"],
    #             domain_credentials_provider: {
    #               # One of:
    #               secrets_manager_credentials_provider: {
    #                 secret_id: "String"
    #               }
    #             },
    #             domain_network_settings: {
    #               subnets: ["Subnet"], # required
    #             }
    #           },
    #           active_directory_type: "ActiveDirectoryType",
    #           is_shared_active_directory: false
    #         }
    #       },
    #       status: "String", # required
    #       product_user_arn: "Arn",
    #       status_message: "String",
    #       domain: "String",
    #       subscription_start_date: "String",
    #       subscription_end_date: "String"
    #     }
    #   }
    # @return [Types::StartProductSubscriptionResponse]
    def start_product_subscription(params = {}, options = {})
      request = build_request(:start_product_subscription, params)
      request.send_request(options)
    end

    # <p>Stops a product subscription for a user with the specified identity provider.</p>
    # @param [Hash, Types::StopProductSubscriptionRequest] params
    # @option params [String] :username
    #   <p>The user name from the identity provider for the user.</p>
    # @option params [Types::IdentityProvider] :identity_provider
    #   <p>An object that specifies details for the identity provider.</p>
    # @option params [String] :product
    #   <p>The name of the user-based subscription product.</p> <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | <code>REMOTE_DESKTOP_SERVICES</code> </p>
    # @option params [String] :product_user_arn
    #   <p>The Amazon Resource Name (ARN) of the product user.</p>
    # @option params [String] :domain
    #   <p>The domain name of the Active Directory that contains the user for whom to stop the product subscription.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     username: "String",
    #     identity_provider: {
    #       # One of:
    #       active_directory_identity_provider: {
    #         directory_id: "Directory",
    #         active_directory_settings: {
    #           domain_name: "String",
    #           domain_ipv4_list: ["IpV4"],
    #           domain_credentials_provider: {
    #             # One of:
    #             secrets_manager_credentials_provider: {
    #               secret_id: "String"
    #             }
    #           },
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           }
    #         },
    #         active_directory_type: "ActiveDirectoryType",
    #         is_shared_active_directory: false
    #       }
    #     },
    #     product: "String",
    #     product_user_arn: "Arn",
    #     domain: "String"
    #   }
    #   options = {}
    #   response = client.stop_product_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     product_user_summary: { # required
    #       username: "String", # required
    #       product: "String", # required
    #       identity_provider: { # required
    #         # One of:
    #         active_directory_identity_provider: {
    #           directory_id: "Directory",
    #           active_directory_settings: {
    #             domain_name: "String",
    #             domain_ipv4_list: ["IpV4"],
    #             domain_credentials_provider: {
    #               # One of:
    #               secrets_manager_credentials_provider: {
    #                 secret_id: "String"
    #               }
    #             },
    #             domain_network_settings: {
    #               subnets: ["Subnet"], # required
    #             }
    #           },
    #           active_directory_type: "ActiveDirectoryType",
    #           is_shared_active_directory: false
    #         }
    #       },
    #       status: "String", # required
    #       product_user_arn: "Arn",
    #       status_message: "String",
    #       domain: "String",
    #       subscription_start_date: "String",
    #       subscription_end_date: "String"
    #     }
    #   }
    # @return [Types::StopProductSubscriptionResponse]
    def stop_product_subscription(params = {}, options = {})
      request = build_request(:stop_product_subscription, params)
      request.send_request(options)
    end

    # <p>Adds tags to a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to apply to the specified resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Removes tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Updates additional product configuration settings for the registered identity provider.</p>
    # @param [Hash, Types::UpdateIdentityProviderSettingsRequest] params
    # @option params [Types::IdentityProvider] :identity_provider
    #   <p>Refers to an identity provider.</p>
    # @option params [String] :product
    #   <p>The name of the user-based subscription product.</p> <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | <code>REMOTE_DESKTOP_SERVICES</code> </p>
    # @option params [String] :identity_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the identity provider to update.</p>
    # @option params [Types::UpdateSettings] :update_settings
    #   <p>Updates the registered identity provider’s product related configuration settings. You can update any combination of settings in a single operation such as the:</p> <ul> <li> <p>Subnets which you want to add to provision VPC endpoints.</p> </li> <li> <p>Subnets which you want to remove the VPC endpoints from.</p> </li> <li> <p>Security group ID which permits traffic to the VPC endpoints.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_provider: {
    #       # One of:
    #       active_directory_identity_provider: {
    #         directory_id: "Directory",
    #         active_directory_settings: {
    #           domain_name: "String",
    #           domain_ipv4_list: ["IpV4"],
    #           domain_credentials_provider: {
    #             # One of:
    #             secrets_manager_credentials_provider: {
    #               secret_id: "String"
    #             }
    #           },
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           }
    #         },
    #         active_directory_type: "ActiveDirectoryType",
    #         is_shared_active_directory: false
    #       }
    #     },
    #     product: "String",
    #     identity_provider_arn: "Arn",
    #     update_settings: { # required
    #       add_subnets: ["Subnet"], # required
    #       remove_subnets: ["Subnet"], # required
    #       security_group_id: "SecurityGroup"
    #     }
    #   }
    #   options = {}
    #   response = client.update_identity_provider_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_provider_summary: { # required
    #       identity_provider: { # required
    #         # One of:
    #         active_directory_identity_provider: {
    #           directory_id: "Directory",
    #           active_directory_settings: {
    #             domain_name: "String",
    #             domain_ipv4_list: ["IpV4"],
    #             domain_credentials_provider: {
    #               # One of:
    #               secrets_manager_credentials_provider: {
    #                 secret_id: "String"
    #               }
    #             },
    #             domain_network_settings: {
    #               subnets: ["Subnet"], # required
    #             }
    #           },
    #           active_directory_type: "ActiveDirectoryType",
    #           is_shared_active_directory: false
    #         }
    #       },
    #       settings: { # required
    #         subnets: ["Subnet"], # required
    #         security_group_id: "SecurityGroup", # required
    #       },
    #       product: "String", # required
    #       status: "String", # required
    #       identity_provider_arn: "Arn",
    #       failure_message: "String",
    #       owner_account_id: "String"
    #     }
    #   }
    # @return [Types::UpdateIdentityProviderSettingsResponse]
    def update_identity_provider_settings(params = {}, options = {})
      request = build_request(:update_identity_provider_settings, params)
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
      context[:gem_name] = 'aws-sdk-licensemanagerusersubscriptions'
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
