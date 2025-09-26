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
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::RolesAnywhere
  # An API client for Aws::RolesAnywhere.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::RolesAnywhere

    add_plugin(::Aws::RolesAnywhere::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

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
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::RolesAnywhere::EndpointProvider] :endpoint_provider
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

    # <p>Creates a <i>profile</i>, a list of the roles that Roles Anywhere service is trusted to assume. You use profiles to intersect permissions with IAM managed policies.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:CreateProfile</code>. 
    #          </p>
    # @param [Hash, Types::CreateProfileInput] params
    # @option params [String] :name
    #   <p>The name of the profile.</p>
    # @option params [Boolean] :require_instance_properties
    #   <p>Specifies whether instance properties are required in temporary credential requests with this profile. </p>
    # @option params [String] :session_policy
    #   <p>A session policy that applies to the trust boundary of the vended session credentials. </p>
    # @option params [Array<String>] :role_arns
    #   <p>A list of IAM roles that this profile can assume in a temporary credential request.</p>
    # @option params [Array<String>] :managed_policy_arns
    #   <p>A list of managed policy ARNs that apply to the vended session credentials. </p>
    # @option params [Integer] :duration_seconds
    #   <p> Used to determine how long sessions vended using this profile are valid for. See the <code>Expiration</code> section of the 
    #   <a href="https://docs.aws.amazon.com/rolesanywhere/latest/userguide/authentication-create-session.html#credentials-object">CreateSession API documentation</a>
    #   page for more details. In requests, if this value is not provided, the default value will be 3600. </p>
    # @option params [Boolean] :enabled
    #   <p>Specifies whether the profile is enabled.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to attach to the profile.</p>
    # @option params [Boolean] :accept_role_session_name
    #   <p>Used to determine if a custom role session name will be accepted in a temporary credential request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     require_instance_properties: false,
    #     session_policy: "String",
    #     role_arns: ["RoleArn"], # required
    #     managed_policy_arns: ["String"],
    #     duration_seconds: 1,
    #     enabled: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     accept_role_session_name: false
    #   }
    #   options = {}
    #   response = client.create_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile: {
    #       profile_id: "Uuid",
    #       profile_arn: "ProfileArn",
    #       name: "ResourceName",
    #       require_instance_properties: false,
    #       enabled: false,
    #       created_by: "String",
    #       session_policy: "String",
    #       role_arns: ["RoleArn"],
    #       managed_policy_arns: ["String"],
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       duration_seconds: 1,
    #       accept_role_session_name: false,
    #       attribute_mappings: [
    #         {
    #           certificate_field: "CertificateField",
    #           mapping_rules: [
    #             {
    #               specifier: "String", # required
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateProfileOutput]
    def create_profile(params = {}, options = {})
      request = build_request(:create_profile, params)
      request.send_request(options)
    end

    # <p>Creates a trust anchor to establish trust between IAM Roles Anywhere and
    #          your certificate authority (CA). You can define a trust anchor as a reference to an Private Certificate Authority (Private CA) or by uploading a CA certificate. Your Amazon Web Services workloads can authenticate with the trust anchor using certificates issued by
    #          the CA in exchange for temporary Amazon Web Services credentials.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:CreateTrustAnchor</code>. 
    #          </p>
    # @param [Hash, Types::CreateTrustAnchorInput] params
    # @option params [String] :name
    #   <p>The name of the trust anchor.</p>
    # @option params [Types::Source] :source
    #   <p>The trust anchor type and its related certificate data.</p>
    # @option params [Boolean] :enabled
    #   <p>Specifies whether the trust anchor is enabled.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to attach to the trust anchor.</p>
    # @option params [Array<Types::NotificationSetting>] :notification_settings
    #   <p>A list of notification settings to be associated to the trust anchor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     source: { # required
    #       source_type: "TrustAnchorType",
    #       source_data: {
    #         # One of:
    #         x509_certificate_data: "String",
    #         acm_pca_arn: "String"
    #       }
    #     },
    #     enabled: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     notification_settings: [
    #       {
    #         enabled: false, # required
    #         event: "NotificationEvent", # required
    #         threshold: 1,
    #         channel: "NotificationChannel"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_trust_anchor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_anchor: { # required
    #       trust_anchor_id: "Uuid",
    #       trust_anchor_arn: "String",
    #       name: "ResourceName",
    #       source: {
    #         source_type: "TrustAnchorType",
    #         source_data: {
    #           # One of:
    #           x509_certificate_data: "String",
    #           acm_pca_arn: "String"
    #         }
    #       },
    #       enabled: false,
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       notification_settings: [
    #         {
    #           enabled: false, # required
    #           event: "NotificationEvent", # required
    #           threshold: 1,
    #           channel: "NotificationChannel",
    #           configured_by: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateTrustAnchorOutput]
    def create_trust_anchor(params = {}, options = {})
      request = build_request(:create_trust_anchor, params)
      request.send_request(options)
    end

    # <p>Delete an entry from the attribute mapping rules enforced by a given profile.</p>
    # @param [Hash, Types::DeleteAttributeMappingRequest] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of the profile.</p>
    # @option params [String] :certificate_field
    #   <p>Fields (x509Subject, x509Issuer and x509SAN) within X.509 certificates.</p>
    # @option params [Array<String>] :specifiers
    #   <p>A list of specifiers of a certificate field; for example, CN, OU, UID from a Subject.</p>
    # @example DeleteAttributeMapping - Deletes a custom attribute mapping rule
    #   # Example operation for delete_attribute_mapping
    #   params = {
    #     profile_id: "00000000-0000-0000-0000-000000000000",
    #     specifiers: [
    #       "OU"
    #     ],
    #     certificate_field: "x509Subject"
    #   }
    #   options = {}
    #   response = client.delete_attribute_mapping(params, options)
    #   response.to_h #=>
    #   {
    #     profile: {
    #       accept_role_session_name: false,
    #       attribute_mappings: [
    #         {
    #           mapping_rules: [
    #             {
    #               specifier: "CN"
    #             }
    #           ],
    #           certificate_field: "x509Subject"
    #         }
    #       ],
    #       created_at: Time.parse("2021-07-19T15:55:25.986591Z"),
    #       created_by: "arn:aws:sts::123456789012:assumed-role/Admin/DummyRole",
    #       duration_seconds: 3600,
    #       enabled: true,
    #       managed_policy_arns: [
    #       ],
    #       name: "Dummy Profile",
    #       profile_arn: "arn:aws:rolesanywhere:us-east-1:123456789012:profile/00000000-0000-0000-0000-000000000000",
    #       profile_id: "00000000-0000-0000-0000-000000000000",
    #       require_instance_properties: false,
    #       role_arns: [
    #         "arn:aws:iam::123456789012:role/DummyRole"
    #       ],
    #       session_policy: "",
    #       updated_at: Time.parse("2021-07-19T15:55:25.986591Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "Uuid", # required
    #     certificate_field: "CertificateField", # required
    #     specifiers: ["String"]
    #   }
    #   options = {}
    #   response = client.delete_attribute_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile: { # required
    #       profile_id: "Uuid",
    #       profile_arn: "ProfileArn",
    #       name: "ResourceName",
    #       require_instance_properties: false,
    #       enabled: false,
    #       created_by: "String",
    #       session_policy: "String",
    #       role_arns: ["RoleArn"],
    #       managed_policy_arns: ["String"],
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       duration_seconds: 1,
    #       accept_role_session_name: false,
    #       attribute_mappings: [
    #         {
    #           certificate_field: "CertificateField",
    #           mapping_rules: [
    #             {
    #               specifier: "String", # required
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteAttributeMappingResponse]
    def delete_attribute_mapping(params = {}, options = {})
      request = build_request(:delete_attribute_mapping, params)
      request.send_request(options)
    end

    # <p>Deletes a certificate revocation list (CRL).</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:DeleteCrl</code>. 
    #          </p>
    # @param [Hash, Types::DeleteCrlInput] params
    # @option params [String] :crl_id
    #   <p>The unique identifier of the certificate revocation list (CRL).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     crl_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.delete_crl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     crl: { # required
    #       crl_id: "Uuid",
    #       crl_arn: "String",
    #       name: "String",
    #       enabled: false,
    #       crl_data: "data",
    #       trust_anchor_arn: "String",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::DeleteCrlOutput]
    def delete_crl(params = {}, options = {})
      request = build_request(:delete_crl, params)
      request.send_request(options)
    end

    # <p>Deletes a profile.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:DeleteProfile</code>. 
    #          </p>
    # @param [Hash, Types::DeleteProfileInput] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of the profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.delete_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile: {
    #       profile_id: "Uuid",
    #       profile_arn: "ProfileArn",
    #       name: "ResourceName",
    #       require_instance_properties: false,
    #       enabled: false,
    #       created_by: "String",
    #       session_policy: "String",
    #       role_arns: ["RoleArn"],
    #       managed_policy_arns: ["String"],
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       duration_seconds: 1,
    #       accept_role_session_name: false,
    #       attribute_mappings: [
    #         {
    #           certificate_field: "CertificateField",
    #           mapping_rules: [
    #             {
    #               specifier: "String", # required
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteProfileOutput]
    def delete_profile(params = {}, options = {})
      request = build_request(:delete_profile, params)
      request.send_request(options)
    end

    # <p>Deletes a trust anchor.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:DeleteTrustAnchor</code>. 
    #          </p>
    # @param [Hash, Types::DeleteTrustAnchorInput] params
    # @option params [String] :trust_anchor_id
    #   <p>The unique identifier of the trust anchor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_anchor_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.delete_trust_anchor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_anchor: { # required
    #       trust_anchor_id: "Uuid",
    #       trust_anchor_arn: "String",
    #       name: "ResourceName",
    #       source: {
    #         source_type: "TrustAnchorType",
    #         source_data: {
    #           # One of:
    #           x509_certificate_data: "String",
    #           acm_pca_arn: "String"
    #         }
    #       },
    #       enabled: false,
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       notification_settings: [
    #         {
    #           enabled: false, # required
    #           event: "NotificationEvent", # required
    #           threshold: 1,
    #           channel: "NotificationChannel",
    #           configured_by: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteTrustAnchorOutput]
    def delete_trust_anchor(params = {}, options = {})
      request = build_request(:delete_trust_anchor, params)
      request.send_request(options)
    end

    # <p>Disables a certificate revocation list (CRL).</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:DisableCrl</code>. 
    #          </p>
    # @param [Hash, Types::DisableCrlInput] params
    # @option params [String] :crl_id
    #   <p>The unique identifier of the certificate revocation list (CRL).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     crl_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.disable_crl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     crl: { # required
    #       crl_id: "Uuid",
    #       crl_arn: "String",
    #       name: "String",
    #       enabled: false,
    #       crl_data: "data",
    #       trust_anchor_arn: "String",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::DisableCrlOutput]
    def disable_crl(params = {}, options = {})
      request = build_request(:disable_crl, params)
      request.send_request(options)
    end

    # <p>Disables a profile. When disabled, temporary credential requests with this profile fail.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:DisableProfile</code>. 
    #          </p>
    # @param [Hash, Types::DisableProfileInput] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of the profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.disable_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile: {
    #       profile_id: "Uuid",
    #       profile_arn: "ProfileArn",
    #       name: "ResourceName",
    #       require_instance_properties: false,
    #       enabled: false,
    #       created_by: "String",
    #       session_policy: "String",
    #       role_arns: ["RoleArn"],
    #       managed_policy_arns: ["String"],
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       duration_seconds: 1,
    #       accept_role_session_name: false,
    #       attribute_mappings: [
    #         {
    #           certificate_field: "CertificateField",
    #           mapping_rules: [
    #             {
    #               specifier: "String", # required
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DisableProfileOutput]
    def disable_profile(params = {}, options = {})
      request = build_request(:disable_profile, params)
      request.send_request(options)
    end

    # <p>Disables a trust anchor. When disabled, temporary credential requests specifying this trust anchor are unauthorized.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:DisableTrustAnchor</code>. 
    #          </p>
    # @param [Hash, Types::DisableTrustAnchorInput] params
    # @option params [String] :trust_anchor_id
    #   <p>The unique identifier of the trust anchor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_anchor_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.disable_trust_anchor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_anchor: { # required
    #       trust_anchor_id: "Uuid",
    #       trust_anchor_arn: "String",
    #       name: "ResourceName",
    #       source: {
    #         source_type: "TrustAnchorType",
    #         source_data: {
    #           # One of:
    #           x509_certificate_data: "String",
    #           acm_pca_arn: "String"
    #         }
    #       },
    #       enabled: false,
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       notification_settings: [
    #         {
    #           enabled: false, # required
    #           event: "NotificationEvent", # required
    #           threshold: 1,
    #           channel: "NotificationChannel",
    #           configured_by: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DisableTrustAnchorOutput]
    def disable_trust_anchor(params = {}, options = {})
      request = build_request(:disable_trust_anchor, params)
      request.send_request(options)
    end

    # <p>Enables a certificate revocation list (CRL). When enabled, certificates stored in the CRL are unauthorized to receive session credentials.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:EnableCrl</code>. 
    #          </p>
    # @param [Hash, Types::EnableCrlInput] params
    # @option params [String] :crl_id
    #   <p>The unique identifier of the certificate revocation list (CRL).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     crl_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.enable_crl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     crl: { # required
    #       crl_id: "Uuid",
    #       crl_arn: "String",
    #       name: "String",
    #       enabled: false,
    #       crl_data: "data",
    #       trust_anchor_arn: "String",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::EnableCrlOutput]
    def enable_crl(params = {}, options = {})
      request = build_request(:enable_crl, params)
      request.send_request(options)
    end

    # <p>Enables temporary credential requests for a profile. </p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:EnableProfile</code>. 
    #          </p>
    # @param [Hash, Types::EnableProfileInput] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of the profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.enable_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile: {
    #       profile_id: "Uuid",
    #       profile_arn: "ProfileArn",
    #       name: "ResourceName",
    #       require_instance_properties: false,
    #       enabled: false,
    #       created_by: "String",
    #       session_policy: "String",
    #       role_arns: ["RoleArn"],
    #       managed_policy_arns: ["String"],
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       duration_seconds: 1,
    #       accept_role_session_name: false,
    #       attribute_mappings: [
    #         {
    #           certificate_field: "CertificateField",
    #           mapping_rules: [
    #             {
    #               specifier: "String", # required
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::EnableProfileOutput]
    def enable_profile(params = {}, options = {})
      request = build_request(:enable_profile, params)
      request.send_request(options)
    end

    # <p>Enables a trust anchor. When enabled, certificates in the trust anchor chain are authorized for trust validation. </p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:EnableTrustAnchor</code>. 
    #          </p>
    # @param [Hash, Types::EnableTrustAnchorInput] params
    # @option params [String] :trust_anchor_id
    #   <p>The unique identifier of the trust anchor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_anchor_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.enable_trust_anchor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_anchor: { # required
    #       trust_anchor_id: "Uuid",
    #       trust_anchor_arn: "String",
    #       name: "ResourceName",
    #       source: {
    #         source_type: "TrustAnchorType",
    #         source_data: {
    #           # One of:
    #           x509_certificate_data: "String",
    #           acm_pca_arn: "String"
    #         }
    #       },
    #       enabled: false,
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       notification_settings: [
    #         {
    #           enabled: false, # required
    #           event: "NotificationEvent", # required
    #           threshold: 1,
    #           channel: "NotificationChannel",
    #           configured_by: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::EnableTrustAnchorOutput]
    def enable_trust_anchor(params = {}, options = {})
      request = build_request(:enable_trust_anchor, params)
      request.send_request(options)
    end

    # <p>Gets a certificate revocation list (CRL).</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:GetCrl</code>. 
    #          </p>
    # @param [Hash, Types::GetCrlInput] params
    # @option params [String] :crl_id
    #   <p>The unique identifier of the certificate revocation list (CRL).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     crl_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.get_crl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     crl: { # required
    #       crl_id: "Uuid",
    #       crl_arn: "String",
    #       name: "String",
    #       enabled: false,
    #       crl_data: "data",
    #       trust_anchor_arn: "String",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetCrlOutput]
    def get_crl(params = {}, options = {})
      request = build_request(:get_crl, params)
      request.send_request(options)
    end

    # <p>Gets a profile.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:GetProfile</code>. 
    #          </p>
    # @param [Hash, Types::GetProfileInput] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of the profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.get_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile: {
    #       profile_id: "Uuid",
    #       profile_arn: "ProfileArn",
    #       name: "ResourceName",
    #       require_instance_properties: false,
    #       enabled: false,
    #       created_by: "String",
    #       session_policy: "String",
    #       role_arns: ["RoleArn"],
    #       managed_policy_arns: ["String"],
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       duration_seconds: 1,
    #       accept_role_session_name: false,
    #       attribute_mappings: [
    #         {
    #           certificate_field: "CertificateField",
    #           mapping_rules: [
    #             {
    #               specifier: "String", # required
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetProfileOutput]
    def get_profile(params = {}, options = {})
      request = build_request(:get_profile, params)
      request.send_request(options)
    end

    # <p>Gets a <i>subject</i>, which associates a certificate identity with
    #          authentication attempts. The subject stores auditing information such as the status
    #          of the last authentication attempt, the certificate data used in the attempt, and the
    #          last time the associated identity attempted authentication. </p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:GetSubject</code>. 
    #          </p>
    # @param [Hash, Types::GetSubjectInput] params
    # @option params [String] :subject_id
    #   <p>The unique identifier of the subject. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subject_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.get_subject(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subject: {
    #       subject_arn: "String",
    #       subject_id: "Uuid",
    #       enabled: false,
    #       x509_subject: "String",
    #       last_seen_at: Time.now,
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       credentials: [
    #         {
    #           seen_at: Time.now,
    #           serial_number: "String",
    #           issuer: "String",
    #           enabled: false,
    #           x509_certificate_data: "String",
    #           failed: false
    #         }
    #       ],
    #       instance_properties: [
    #         {
    #           seen_at: Time.now,
    #           properties: {
    #             "String" => "String"
    #           },
    #           failed: false
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetSubjectOutput]
    def get_subject(params = {}, options = {})
      request = build_request(:get_subject, params)
      request.send_request(options)
    end

    # <p>Gets a trust anchor.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:GetTrustAnchor</code>. 
    #          </p>
    # @param [Hash, Types::GetTrustAnchorInput] params
    # @option params [String] :trust_anchor_id
    #   <p>The unique identifier of the trust anchor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_anchor_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.get_trust_anchor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_anchor: { # required
    #       trust_anchor_id: "Uuid",
    #       trust_anchor_arn: "String",
    #       name: "ResourceName",
    #       source: {
    #         source_type: "TrustAnchorType",
    #         source_data: {
    #           # One of:
    #           x509_certificate_data: "String",
    #           acm_pca_arn: "String"
    #         }
    #       },
    #       enabled: false,
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       notification_settings: [
    #         {
    #           enabled: false, # required
    #           event: "NotificationEvent", # required
    #           threshold: 1,
    #           channel: "NotificationChannel",
    #           configured_by: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetTrustAnchorOutput]
    def get_trust_anchor(params = {}, options = {})
      request = build_request(:get_trust_anchor, params)
      request.send_request(options)
    end

    # <p>Imports the certificate revocation list (CRL). A CRL is a list of certificates that have
    #          been revoked by the issuing certificate Authority (CA).In order to be properly imported, a CRL must be in PEM 
    #          format. IAM Roles Anywhere
    #          validates against the CRL before issuing credentials. </p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:ImportCrl</code>. 
    #          </p>
    # @param [Hash, Types::ImportCrlInput] params
    # @option params [String] :name
    #   <p>The name of the certificate revocation list (CRL).</p>
    # @option params [String] :crl_data
    #   <p>The x509 v3 specified certificate revocation list (CRL).</p>
    # @option params [Boolean] :enabled
    #   <p>Specifies whether the certificate revocation list (CRL) is enabled.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to attach to the certificate revocation list (CRL).</p>
    # @option params [String] :trust_anchor_arn
    #   <p>The ARN of the TrustAnchor the certificate revocation list (CRL) will provide revocation for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     crl_data: "data", # required
    #     enabled: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     trust_anchor_arn: "TrustAnchorArn", # required
    #   }
    #   options = {}
    #   response = client.import_crl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     crl: { # required
    #       crl_id: "Uuid",
    #       crl_arn: "String",
    #       name: "String",
    #       enabled: false,
    #       crl_data: "data",
    #       trust_anchor_arn: "String",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::ImportCrlOutput]
    def import_crl(params = {}, options = {})
      request = build_request(:import_crl, params)
      request.send_request(options)
    end

    # <p>Lists all certificate revocation lists (CRL) in the authenticated account and Amazon Web Services Region.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:ListCrls</code>. 
    #          </p>
    # @param [Hash, Types::ListCrlsInput] params
    # @option params [String] :next_token
    #   <p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>
    # @option params [Integer] :page_size
    #   <p>The number of resources in the paginated list. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_crls(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     crls: [
    #       {
    #         crl_id: "Uuid",
    #         crl_arn: "String",
    #         name: "String",
    #         enabled: false,
    #         crl_data: "data",
    #         trust_anchor_arn: "String",
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListCrlsOutput]
    def list_crls(params = {}, options = {})
      request = build_request(:list_crls, params)
      request.send_request(options)
    end

    # <p>Lists all profiles in the authenticated account and Amazon Web Services Region.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:ListProfiles</code>. 
    #          </p>
    # @param [Hash, Types::ListProfilesInput] params
    # @option params [String] :next_token
    #   <p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>
    # @option params [Integer] :page_size
    #   <p>The number of resources in the paginated list. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     profiles: [
    #       {
    #         profile_id: "Uuid",
    #         profile_arn: "ProfileArn",
    #         name: "ResourceName",
    #         require_instance_properties: false,
    #         enabled: false,
    #         created_by: "String",
    #         session_policy: "String",
    #         role_arns: ["RoleArn"],
    #         managed_policy_arns: ["String"],
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         duration_seconds: 1,
    #         accept_role_session_name: false,
    #         attribute_mappings: [
    #           {
    #             certificate_field: "CertificateField",
    #             mapping_rules: [
    #               {
    #                 specifier: "String", # required
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ListProfilesOutput]
    def list_profiles(params = {}, options = {})
      request = build_request(:list_profiles, params)
      request.send_request(options)
    end

    # <p>Lists the subjects in the authenticated account and Amazon Web Services Region.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:ListSubjects</code>. 
    #          </p>
    # @param [Hash, Types::ListSubjectsInput] params
    # @option params [String] :next_token
    #   <p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>
    # @option params [Integer] :page_size
    #   <p>The number of resources in the paginated list. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_subjects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subjects: [
    #       {
    #         subject_arn: "String",
    #         subject_id: "Uuid",
    #         enabled: false,
    #         x509_subject: "String",
    #         last_seen_at: Time.now,
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSubjectsOutput]
    def list_subjects(params = {}, options = {})
      request = build_request(:list_subjects, params)
      request.send_request(options)
    end

    # <p>Lists the tags attached to the resource.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:ListTagsForResource</code>. 
    #          </p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists the trust anchors in the authenticated account and Amazon Web Services Region.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:ListTrustAnchors</code>. 
    #          </p>
    # @param [Hash, Types::ListTrustAnchorsInput] params
    # @option params [String] :next_token
    #   <p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>
    # @option params [Integer] :page_size
    #   <p>The number of resources in the paginated list. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_trust_anchors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     trust_anchors: [
    #       {
    #         trust_anchor_id: "Uuid",
    #         trust_anchor_arn: "String",
    #         name: "ResourceName",
    #         source: {
    #           source_type: "TrustAnchorType",
    #           source_data: {
    #             # One of:
    #             x509_certificate_data: "String",
    #             acm_pca_arn: "String"
    #           }
    #         },
    #         enabled: false,
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         notification_settings: [
    #           {
    #             enabled: false, # required
    #             event: "NotificationEvent", # required
    #             threshold: 1,
    #             channel: "NotificationChannel",
    #             configured_by: "String"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ListTrustAnchorsOutput]
    def list_trust_anchors(params = {}, options = {})
      request = build_request(:list_trust_anchors, params)
      request.send_request(options)
    end

    # <p>Put an entry in the attribute mapping rules that will be enforced by a given profile. 
    #       A mapping specifies a certificate field and one or more specifiers that have contextual meanings.</p>
    # @param [Hash, Types::PutAttributeMappingRequest] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of the profile.</p>
    # @option params [String] :certificate_field
    #   <p>Fields (x509Subject, x509Issuer and x509SAN) within X.509 certificates.</p>
    # @option params [Array<Types::MappingRule>] :mapping_rules
    #   <p>A list of mapping entries for every supported specifier or sub-field.</p>
    # @example PutAttributeMapping - Adds a custom attribute mapping rule
    #   # Example operation for put_attribute_mapping
    #   params = {
    #     profile_id: "00000000-0000-0000-0000-000000000000",
    #     mapping_rules: [
    #       {
    #         specifier: "CN"
    #       }
    #     ],
    #     certificate_field: "x509Subject"
    #   }
    #   options = {}
    #   response = client.put_attribute_mapping(params, options)
    #   response.to_h #=>
    #   {
    #     profile: {
    #       accept_role_session_name: false,
    #       attribute_mappings: [
    #         {
    #           mapping_rules: [
    #             {
    #               specifier: "CN"
    #             }
    #           ],
    #           certificate_field: "x509Subject"
    #         }
    #       ],
    #       created_at: Time.parse("2021-07-19T15:55:25.986591Z"),
    #       created_by: "arn:aws:sts::123456789012:assumed-role/Admin/DummyRole",
    #       duration_seconds: 3600,
    #       enabled: true,
    #       managed_policy_arns: [
    #       ],
    #       name: "Dummy Profile",
    #       profile_arn: "arn:aws:rolesanywhere:us-east-1:123456789012:profile/00000000-0000-0000-0000-000000000000",
    #       profile_id: "00000000-0000-0000-0000-000000000000",
    #       require_instance_properties: false,
    #       role_arns: [
    #         "arn:aws:iam::123456789012:role/DummyRole"
    #       ],
    #       session_policy: "",
    #       updated_at: Time.parse("2021-07-19T15:55:25.986591Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "Uuid", # required
    #     certificate_field: "CertificateField", # required
    #     mapping_rules: [ # required
    #       {
    #         specifier: "String", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_attribute_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile: { # required
    #       profile_id: "Uuid",
    #       profile_arn: "ProfileArn",
    #       name: "ResourceName",
    #       require_instance_properties: false,
    #       enabled: false,
    #       created_by: "String",
    #       session_policy: "String",
    #       role_arns: ["RoleArn"],
    #       managed_policy_arns: ["String"],
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       duration_seconds: 1,
    #       accept_role_session_name: false,
    #       attribute_mappings: [
    #         {
    #           certificate_field: "CertificateField",
    #           mapping_rules: [
    #             {
    #               specifier: "String", # required
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::PutAttributeMappingResponse]
    def put_attribute_mapping(params = {}, options = {})
      request = build_request(:put_attribute_mapping, params)
      request.send_request(options)
    end

    # <p>Attaches a list of <i>notification settings</i> to a trust anchor.</p>
    #          <p>A notification setting includes information such as event name, threshold, status of
    #          the notification setting, and the channel to notify.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:PutNotificationSettings</code>.
    #          </p>
    # @param [Hash, Types::PutNotificationSettingsRequest] params
    # @option params [String] :trust_anchor_id
    #   <p>The unique identifier of the trust anchor.</p>
    # @option params [Array<Types::NotificationSetting>] :notification_settings
    #   <p>A list of notification settings to be associated to the trust anchor.</p>
    # @example PutNotificationSettings - Adds custom notification settings
    #   # Example operation for put_notification_settings
    #   params = {
    #     trust_anchor_id: "c2505e61-2fc1-4a18-9fcf-94e18a22928b",
    #     notification_settings: [
    #       {
    #         event: "END_ENTITY_CERTIFICATE_EXPIRY",
    #         enabled: true,
    #         threshold: 10
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_notification_settings(params, options)
    #   response.to_h #=>
    #   {
    #     trust_anchor: {
    #       trust_anchor_id: "c2505e61-2fc1-4a18-9fcf-94e18a22928b",
    #       trust_anchor_arn: "arn:aws:rolesanywhere:us-west-2:123456789012:trust-anchor/c2505e61-2fc1-4a18-9fcf-94e18a22928b",
    #       name: "PutNotificationSettings - TA with PCA - example",
    #       enabled: true,
    #       notification_settings: [
    #         {
    #           event: "CA_CERTIFICATE_EXPIRY",
    #           channel: "ALL",
    #           configured_by: "rolesanywhere.amazonaws.com",
    #           enabled: true,
    #           threshold: 45
    #         },
    #         {
    #           event: "END_ENTITY_CERTIFICATE_EXPIRY",
    #           channel: "ALL",
    #           configured_by: "123456789012",
    #           enabled: true,
    #           threshold: 10
    #         }
    #       ],
    #       source: {
    #         source_type: "AWS_ACM_PCA",
    #         source_data: {
    #     "acmPcaArn" => arn:aws:acm-pca:us-west-2:123456789012:certificate-authority/123abc00-1233-12b3-1a33-54cb9c1ce2f3
    #   }
    #       },
    #       updated_at: Time.parse("2021-07-19T15:55:25.986591Z"),
    #       created_at: Time.parse("2021-07-19T15:55:25.986591Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_anchor_id: "Uuid", # required
    #     notification_settings: [ # required
    #       {
    #         enabled: false, # required
    #         event: "NotificationEvent", # required
    #         threshold: 1,
    #         channel: "NotificationChannel"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_notification_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_anchor: { # required
    #       trust_anchor_id: "Uuid",
    #       trust_anchor_arn: "String",
    #       name: "ResourceName",
    #       source: {
    #         source_type: "TrustAnchorType",
    #         source_data: {
    #           # One of:
    #           x509_certificate_data: "String",
    #           acm_pca_arn: "String"
    #         }
    #       },
    #       enabled: false,
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       notification_settings: [
    #         {
    #           enabled: false, # required
    #           event: "NotificationEvent", # required
    #           threshold: 1,
    #           channel: "NotificationChannel",
    #           configured_by: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::PutNotificationSettingsResponse]
    def put_notification_settings(params = {}, options = {})
      request = build_request(:put_notification_settings, params)
      request.send_request(options)
    end

    # <p>Resets the <i>custom notification setting</i> to IAM Roles Anywhere default setting.
    #       </p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:ResetNotificationSettings</code>.
    #          </p>
    # @param [Hash, Types::ResetNotificationSettingsRequest] params
    # @option params [String] :trust_anchor_id
    #   <p>The unique identifier of the trust anchor.</p>
    # @option params [Array<Types::NotificationSettingKey>] :notification_setting_keys
    #   <p>A list of notification setting keys to reset.
    #            A notification setting key includes the event and the channel.
    #         </p>
    # @example ResetNotificationSettings - Resets to IAM Roles Anywhere defined default notification settings
    #   # Example operation for reset_notification_settings
    #   params = {
    #     trust_anchor_id: "c2505e61-2fc1-4a18-9fcf-94e18a22928b",
    #     notification_setting_keys: [
    #       {
    #         event: "END_ENTITY_CERTIFICATE_EXPIRY"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.reset_notification_settings(params, options)
    #   response.to_h #=>
    #   {
    #     trust_anchor: {
    #       trust_anchor_id: "c2505e61-2fc1-4a18-9fcf-94e18a22928b",
    #       trust_anchor_arn: "arn:aws:rolesanywhere:us-west-2:123456789012:trust-anchor/c2505e61-2fc1-4a18-9fcf-94e18a22928b",
    #       name: "ResetNotificationSettings - TA with PCA - example",
    #       enabled: true,
    #       notification_settings: [
    #         {
    #           event: "CA_CERTIFICATE_EXPIRY",
    #           channel: "ALL",
    #           configured_by: "rolesanywhere.amazonaws.com",
    #           enabled: true,
    #           threshold: 45
    #         },
    #         {
    #           event: "END_ENTITY_CERTIFICATE_EXPIRY",
    #           channel: "ALL",
    #           configured_by: "123456789012",
    #           enabled: true,
    #           threshold: 45
    #         }
    #       ],
    #       source: {
    #         source_type: "AWS_ACM_PCA",
    #         source_data: {
    #     "acmPcaArn" => arn:aws:acm-pca:us-west-2:123456789012:certificate-authority/123abc00-1233-12b3-1a33-54cb9c1ce2f3
    #   }
    #       },
    #       updated_at: Time.parse("2021-07-19T15:55:25.986591Z"),
    #       created_at: Time.parse("2021-07-19T15:55:25.986591Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_anchor_id: "Uuid", # required
    #     notification_setting_keys: [ # required
    #       {
    #         event: "NotificationEvent", # required
    #         channel: "NotificationChannel"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.reset_notification_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_anchor: { # required
    #       trust_anchor_id: "Uuid",
    #       trust_anchor_arn: "String",
    #       name: "ResourceName",
    #       source: {
    #         source_type: "TrustAnchorType",
    #         source_data: {
    #           # One of:
    #           x509_certificate_data: "String",
    #           acm_pca_arn: "String"
    #         }
    #       },
    #       enabled: false,
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       notification_settings: [
    #         {
    #           enabled: false, # required
    #           event: "NotificationEvent", # required
    #           threshold: 1,
    #           channel: "NotificationChannel",
    #           configured_by: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ResetNotificationSettingsResponse]
    def reset_notification_settings(params = {}, options = {})
      request = build_request(:reset_notification_settings, params)
      request.send_request(options)
    end

    # <p>Attaches tags to a resource.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:TagResource</code>. 
    #          </p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to attach to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
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

    # <p>Removes tags from the resource.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:UntagResource</code>. 
    #          </p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of keys. Tag keys are the unique identifiers of tags. </p>
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

    # <p>Updates the certificate revocation list (CRL). A CRL is a list of certificates that have
    #          been revoked by the issuing certificate authority (CA). IAM Roles Anywhere
    #          validates against the CRL before issuing credentials.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:UpdateCrl</code>. 
    #          </p>
    # @param [Hash, Types::UpdateCrlInput] params
    # @option params [String] :crl_id
    #   <p>The unique identifier of the certificate revocation list (CRL).</p>
    # @option params [String] :name
    #   <p>The name of the Crl.</p>
    # @option params [String] :crl_data
    #   <p>The x509 v3 specified certificate revocation list (CRL).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     crl_id: "Uuid", # required
    #     name: "ResourceName",
    #     crl_data: "data"
    #   }
    #   options = {}
    #   response = client.update_crl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     crl: { # required
    #       crl_id: "Uuid",
    #       crl_arn: "String",
    #       name: "String",
    #       enabled: false,
    #       crl_data: "data",
    #       trust_anchor_arn: "String",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::UpdateCrlOutput]
    def update_crl(params = {}, options = {})
      request = build_request(:update_crl, params)
      request.send_request(options)
    end

    # <p>Updates a <i>profile</i>, a list of the roles that IAM
    #          Roles Anywhere service is trusted to assume. You use profiles to intersect permissions with
    #             IAM managed policies.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:UpdateProfile</code>. 
    #          </p>
    # @param [Hash, Types::UpdateProfileInput] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of the profile.</p>
    # @option params [String] :name
    #   <p>The name of the profile.</p>
    # @option params [String] :session_policy
    #   <p>A session policy that applies to the trust boundary of the vended session credentials. </p>
    # @option params [Array<String>] :role_arns
    #   <p>A list of IAM roles that this profile can assume in a temporary credential request.</p>
    # @option params [Array<String>] :managed_policy_arns
    #   <p>A list of managed policy ARNs that apply to the vended session credentials. </p>
    # @option params [Integer] :duration_seconds
    #   <p> Used to determine how long sessions vended using this profile are valid for. See the <code>Expiration</code> section of the 
    #   <a href="https://docs.aws.amazon.com/rolesanywhere/latest/userguide/authentication-create-session.html#credentials-object">CreateSession API documentation</a>
    #   page for more details. In requests, if this value is not provided, the default value will be 3600. </p>
    # @option params [Boolean] :accept_role_session_name
    #   <p>Used to determine if a custom role session name will be accepted in a temporary credential request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "Uuid", # required
    #     name: "ResourceName",
    #     session_policy: "String",
    #     role_arns: ["RoleArn"],
    #     managed_policy_arns: ["String"],
    #     duration_seconds: 1,
    #     accept_role_session_name: false
    #   }
    #   options = {}
    #   response = client.update_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile: {
    #       profile_id: "Uuid",
    #       profile_arn: "ProfileArn",
    #       name: "ResourceName",
    #       require_instance_properties: false,
    #       enabled: false,
    #       created_by: "String",
    #       session_policy: "String",
    #       role_arns: ["RoleArn"],
    #       managed_policy_arns: ["String"],
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       duration_seconds: 1,
    #       accept_role_session_name: false,
    #       attribute_mappings: [
    #         {
    #           certificate_field: "CertificateField",
    #           mapping_rules: [
    #             {
    #               specifier: "String", # required
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateProfileOutput]
    def update_profile(params = {}, options = {})
      request = build_request(:update_profile, params)
      request.send_request(options)
    end

    # <p>Updates a trust anchor. You establish trust between IAM Roles Anywhere
    #          and your certificate authority (CA) by configuring a trust anchor. You can define a trust
    #          anchor as a reference to an Private Certificate Authority (Private CA) or by uploading a
    #          CA certificate. Your Amazon Web Services workloads can authenticate with the trust anchor
    #          using certificates issued by the CA in exchange for temporary Amazon Web Services
    #          credentials.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>rolesanywhere:UpdateTrustAnchor</code>. 
    #          </p>
    # @param [Hash, Types::UpdateTrustAnchorInput] params
    # @option params [String] :trust_anchor_id
    #   <p>The unique identifier of the trust anchor.</p>
    # @option params [String] :name
    #   <p>The name of the trust anchor.</p>
    # @option params [Types::Source] :source
    #   <p>The trust anchor type and its related certificate data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trust_anchor_id: "Uuid", # required
    #     name: "ResourceName",
    #     source: {
    #       source_type: "TrustAnchorType",
    #       source_data: {
    #         # One of:
    #         x509_certificate_data: "String",
    #         acm_pca_arn: "String"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_trust_anchor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trust_anchor: { # required
    #       trust_anchor_id: "Uuid",
    #       trust_anchor_arn: "String",
    #       name: "ResourceName",
    #       source: {
    #         source_type: "TrustAnchorType",
    #         source_data: {
    #           # One of:
    #           x509_certificate_data: "String",
    #           acm_pca_arn: "String"
    #         }
    #       },
    #       enabled: false,
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       notification_settings: [
    #         {
    #           enabled: false, # required
    #           event: "NotificationEvent", # required
    #           threshold: 1,
    #           channel: "NotificationChannel",
    #           configured_by: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateTrustAnchorOutput]
    def update_trust_anchor(params = {}, options = {})
      request = build_request(:update_trust_anchor, params)
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
      context[:gem_name] = 'aws-sdk-rolesanywhere'
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
