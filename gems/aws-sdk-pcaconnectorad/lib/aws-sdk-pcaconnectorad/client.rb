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
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:pcaconnectorad)

module Aws::PcaConnectorAd
  # An API client for Aws::PcaConnectorAd.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::PcaConnectorAd
    @identifier = :pcaconnectorad

    add_plugin(::Aws::PcaConnectorAd::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::PcaConnectorAd::EndpointProvider)
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
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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

    # <p>Creates a connector between Amazon Web Services Private CA and an Active Directory. You must specify the private CA,
    #          directory ID, and security groups.</p>
    # @param [Hash, Types::CreateConnectorRequest] params
    # @option params [String] :directory_id
    #   <p>The identifier of the Active Directory.</p>
    # @option params [String] :certificate_authority_arn
    #   <p> The Amazon Resource Name (ARN) of the certificate authority being used.</p>
    # @option params [Types::VpcInformation] :vpc_information
    #   <p>Information about your VPC and security groups used with the connector.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata assigned to a connector consisting of a key-value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     certificate_authority_arn: "CertificateAuthorityArn", # required
    #     vpc_information: { # required
    #       ip_address_type: "IPV4" # One of: ["IPV4", "DUALSTACK"],
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_arn: "ConnectorArn"
    #   }
    # @return [Types::CreateConnectorResponse]
    def create_connector(params = {}, options = {})
      request = build_request(:create_connector, params)
      request.send_request(options)
    end

    # <p>Creates a directory registration that authorizes communication between Amazon Web Services Private CA and an
    #          Active Directory</p>
    # @param [Hash, Types::CreateDirectoryRegistrationRequest] params
    # @option params [String] :directory_id
    #   <p> The identifier of the Active Directory.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata assigned to a directory registration consisting of a key-value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_directory_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_registration_arn: "DirectoryRegistrationArn"
    #   }
    # @return [Types::CreateDirectoryRegistrationResponse]
    def create_directory_registration(params = {}, options = {})
      request = build_request(:create_directory_registration, params)
      request.send_request(options)
    end

    # <p>Creates a service principal name (SPN) for the service account in Active Directory. Kerberos
    #          authentication uses SPNs to associate a service instance with a service sign-in
    #          account.</p>
    # @param [Hash, Types::CreateServicePrincipalNameRequest] params
    # @option params [String] :directory_registration_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html">CreateDirectoryRegistration</a>.</p>
    # @option params [String] :connector_arn
    #   <p> The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_registration_arn: "DirectoryRegistrationArn", # required
    #     connector_arn: "ConnectorArn", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_service_principal_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_service_principal_name(params = {}, options = {})
      request = build_request(:create_service_principal_name, params)
      request.send_request(options)
    end

    # <p>Creates an Active Directory compatible certificate template. The connectors issues certificates
    #          using these templates based on the requester’s Active Directory group membership.</p>
    # @param [Hash, Types::CreateTemplateRequest] params
    # @option params [String] :connector_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    # @option params [String] :name
    #   <p>Name of the template. The template name must be unique.</p>
    # @option params [Types::TemplateDefinition] :definition
    #   <p>Template configuration to define the information included in certificates. Define
    #            certificate validity and renewal periods, certificate request handling and enrollment
    #            options, key usage extensions, application policies, and cryptography settings.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata assigned to a template consisting of a key-value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_arn: "ConnectorArn", # required
    #     name: "TemplateName", # required
    #     definition: { # required
    #       # One of:
    #       template_v2: {
    #         certificate_validity: { # required
    #           validity_period: { # required
    #             period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #             period: 1, # required
    #           },
    #           renewal_period: { # required
    #             period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #             period: 1, # required
    #           }
    #         },
    #         superseded_templates: ["TemplateName"],
    #         private_key_attributes: { # required
    #           minimal_key_length: 1, # required
    #           key_spec: "KEY_EXCHANGE" # One of: ["KEY_EXCHANGE", "SIGNATURE"], # required
    #           crypto_providers: ["String"]
    #         },
    #         private_key_flags: { # required
    #           exportable_key: false,
    #           strong_key_protection_required: false,
    #           client_version: "WINDOWS_SERVER_2003" # One of: ["WINDOWS_SERVER_2003", "WINDOWS_SERVER_2008", "WINDOWS_SERVER_2008_R2", "WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"], # required
    #         },
    #         enrollment_flags: { # required
    #           include_symmetric_algorithms: false,
    #           user_interaction_required: false,
    #           remove_invalid_certificate_from_personal_store: false,
    #           no_security_extension: false,
    #           enable_key_reuse_on_nt_token_keyset_storage_full: false
    #         },
    #         subject_name_flags: { # required
    #           san_require_domain_dns: false,
    #           san_require_spn: false,
    #           san_require_directory_guid: false,
    #           san_require_upn: false,
    #           san_require_email: false,
    #           san_require_dns: false,
    #           require_dns_as_cn: false,
    #           require_email: false,
    #           require_common_name: false,
    #           require_directory_path: false
    #         },
    #         general_flags: { # required
    #           auto_enrollment: false,
    #           machine_type: false
    #         },
    #         extensions: { # required
    #           key_usage: { # required
    #             critical: false,
    #             usage_flags: { # required
    #               digital_signature: false,
    #               non_repudiation: false,
    #               key_encipherment: false,
    #               data_encipherment: false,
    #               key_agreement: false
    #             }
    #           },
    #           application_policies: {
    #             critical: false,
    #             policies: [{ # required
    #               # One of:
    #               policy_type: "ALL_APPLICATION_POLICIES" # One of: ["ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"],
    #               policy_object_identifier: "CustomObjectIdentifier"
    #             }]
    #           }
    #         }
    #       },
    #       template_v3: {
    #         certificate_validity: { # required
    #           validity_period: { # required
    #             period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #             period: 1, # required
    #           },
    #           renewal_period: { # required
    #             period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #             period: 1, # required
    #           }
    #         },
    #         superseded_templates: ["TemplateName"],
    #         private_key_attributes: { # required
    #           minimal_key_length: 1, # required
    #           key_spec: "KEY_EXCHANGE" # One of: ["KEY_EXCHANGE", "SIGNATURE"], # required
    #           crypto_providers: ["String"],
    #           key_usage_property: { # required
    #             # One of:
    #             property_type: "ALL" # One of: ["ALL"],
    #             property_flags: {
    #               decrypt: false,
    #               key_agreement: false,
    #               sign: false
    #             }
    #           },
    #           algorithm: "RSA" # One of: ["RSA", "ECDH_P256", "ECDH_P384", "ECDH_P521"], # required
    #         },
    #         private_key_flags: { # required
    #           exportable_key: false,
    #           strong_key_protection_required: false,
    #           require_alternate_signature_algorithm: false,
    #           client_version: "WINDOWS_SERVER_2008" # One of: ["WINDOWS_SERVER_2008", "WINDOWS_SERVER_2008_R2", "WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"], # required
    #         },
    #         enrollment_flags: { # required
    #           include_symmetric_algorithms: false,
    #           user_interaction_required: false,
    #           remove_invalid_certificate_from_personal_store: false,
    #           no_security_extension: false,
    #           enable_key_reuse_on_nt_token_keyset_storage_full: false
    #         },
    #         subject_name_flags: { # required
    #           san_require_domain_dns: false,
    #           san_require_spn: false,
    #           san_require_directory_guid: false,
    #           san_require_upn: false,
    #           san_require_email: false,
    #           san_require_dns: false,
    #           require_dns_as_cn: false,
    #           require_email: false,
    #           require_common_name: false,
    #           require_directory_path: false
    #         },
    #         general_flags: { # required
    #           auto_enrollment: false,
    #           machine_type: false
    #         },
    #         hash_algorithm: "SHA256" # One of: ["SHA256", "SHA384", "SHA512"], # required
    #         extensions: { # required
    #           key_usage: { # required
    #             critical: false,
    #             usage_flags: { # required
    #               digital_signature: false,
    #               non_repudiation: false,
    #               key_encipherment: false,
    #               data_encipherment: false,
    #               key_agreement: false
    #             }
    #           },
    #           application_policies: {
    #             critical: false,
    #             policies: [{ # required
    #               # One of:
    #               policy_type: "ALL_APPLICATION_POLICIES" # One of: ["ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"],
    #               policy_object_identifier: "CustomObjectIdentifier"
    #             }]
    #           }
    #         }
    #       },
    #       template_v4: {
    #         certificate_validity: { # required
    #           validity_period: { # required
    #             period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #             period: 1, # required
    #           },
    #           renewal_period: { # required
    #             period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #             period: 1, # required
    #           }
    #         },
    #         superseded_templates: ["TemplateName"],
    #         private_key_attributes: { # required
    #           minimal_key_length: 1, # required
    #           key_spec: "KEY_EXCHANGE" # One of: ["KEY_EXCHANGE", "SIGNATURE"], # required
    #           crypto_providers: ["String"],
    #           key_usage_property: {
    #             # One of:
    #             property_type: "ALL" # One of: ["ALL"],
    #             property_flags: {
    #               decrypt: false,
    #               key_agreement: false,
    #               sign: false
    #             }
    #           },
    #           algorithm: "RSA" # One of: ["RSA", "ECDH_P256", "ECDH_P384", "ECDH_P521"]
    #         },
    #         private_key_flags: { # required
    #           exportable_key: false,
    #           strong_key_protection_required: false,
    #           require_alternate_signature_algorithm: false,
    #           require_same_key_renewal: false,
    #           use_legacy_provider: false,
    #           client_version: "WINDOWS_SERVER_2012" # One of: ["WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"], # required
    #         },
    #         enrollment_flags: { # required
    #           include_symmetric_algorithms: false,
    #           user_interaction_required: false,
    #           remove_invalid_certificate_from_personal_store: false,
    #           no_security_extension: false,
    #           enable_key_reuse_on_nt_token_keyset_storage_full: false
    #         },
    #         subject_name_flags: { # required
    #           san_require_domain_dns: false,
    #           san_require_spn: false,
    #           san_require_directory_guid: false,
    #           san_require_upn: false,
    #           san_require_email: false,
    #           san_require_dns: false,
    #           require_dns_as_cn: false,
    #           require_email: false,
    #           require_common_name: false,
    #           require_directory_path: false
    #         },
    #         general_flags: { # required
    #           auto_enrollment: false,
    #           machine_type: false
    #         },
    #         hash_algorithm: "SHA256" # One of: ["SHA256", "SHA384", "SHA512"],
    #         extensions: { # required
    #           key_usage: { # required
    #             critical: false,
    #             usage_flags: { # required
    #               digital_signature: false,
    #               non_repudiation: false,
    #               key_encipherment: false,
    #               data_encipherment: false,
    #               key_agreement: false
    #             }
    #           },
    #           application_policies: {
    #             critical: false,
    #             policies: [{ # required
    #               # One of:
    #               policy_type: "ALL_APPLICATION_POLICIES" # One of: ["ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"],
    #               policy_object_identifier: "CustomObjectIdentifier"
    #             }]
    #           }
    #         }
    #       }
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_arn: "TemplateArn"
    #   }
    # @return [Types::CreateTemplateResponse]
    def create_template(params = {}, options = {})
      request = build_request(:create_template, params)
      request.send_request(options)
    end

    # <p>Create a group access control entry. Allow or deny Active Directory groups from enrolling and/or
    #          autoenrolling with the template based on the group security identifiers (SIDs).</p>
    # @param [Hash, Types::CreateTemplateGroupAccessControlEntryRequest] params
    # @option params [String] :template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    # @option params [String] :group_security_identifier
    #   <p>Security identifier (SID) of the group object from Active Directory. The SID starts with
    #            "S-".</p>
    # @option params [String] :group_display_name
    #   <p>Name of the Active Directory group. This name does not need to match the group name in Active Directory.</p>
    # @option params [Types::AccessRights] :access_rights
    #   <p> Allow or deny permissions for an Active Directory group to enroll or autoenroll certificates for a
    #            template.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #     group_security_identifier: "GroupSecurityIdentifier", # required
    #     group_display_name: "DisplayName", # required
    #     access_rights: { # required
    #       enroll: "ALLOW" # One of: ["ALLOW", "DENY"],
    #       auto_enroll: "ALLOW" # One of: ["ALLOW", "DENY"]
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_template_group_access_control_entry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_template_group_access_control_entry(params = {}, options = {})
      request = build_request(:create_template_group_access_control_entry, params)
      request.send_request(options)
    end

    # <p>Deletes a connector for Active Directory. You must provide the Amazon Resource Name (ARN) of the
    #          connector that you want to delete. You can find the ARN by calling the <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_ListConnectors">https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_ListConnectors</a>
    #          action. Deleting a connector does not deregister your directory with Amazon Web Services Private CA. You can
    #          deregister your directory by calling the <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_DeleteDirectoryRegistration">https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_DeleteDirectoryRegistration</a>
    #          action.</p>
    # @param [Hash, Types::DeleteConnectorRequest] params
    # @option params [String] :connector_arn
    #   <p> The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_arn: "ConnectorArn", # required
    #   }
    #   options = {}
    #   response = client.delete_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_connector(params = {}, options = {})
      request = build_request(:delete_connector, params)
      request.send_request(options)
    end

    # <p>Deletes a directory registration. Deleting a directory registration deauthorizes
    #          Amazon Web Services Private CA with the directory. </p>
    # @param [Hash, Types::DeleteDirectoryRegistrationRequest] params
    # @option params [String] :directory_registration_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html">CreateDirectoryRegistration</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_registration_arn: "DirectoryRegistrationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_directory_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_directory_registration(params = {}, options = {})
      request = build_request(:delete_directory_registration, params)
      request.send_request(options)
    end

    # <p>Deletes the service principal name (SPN) used by a connector to authenticate with your
    #          Active Directory.</p>
    # @param [Hash, Types::DeleteServicePrincipalNameRequest] params
    # @option params [String] :directory_registration_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html">CreateDirectoryRegistration</a>.</p>
    # @option params [String] :connector_arn
    #   <p> The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_registration_arn: "DirectoryRegistrationArn", # required
    #     connector_arn: "ConnectorArn", # required
    #   }
    #   options = {}
    #   response = client.delete_service_principal_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_service_principal_name(params = {}, options = {})
      request = build_request(:delete_service_principal_name, params)
      request.send_request(options)
    end

    # <p>Deletes a template. Certificates issued using the template are still valid until they
    #          are revoked or expired.</p>
    # @param [Hash, Types::DeleteTemplateRequest] params
    # @option params [String] :template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #   }
    #   options = {}
    #   response = client.delete_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_template(params = {}, options = {})
      request = build_request(:delete_template, params)
      request.send_request(options)
    end

    # <p>Deletes a group access control entry.</p>
    # @param [Hash, Types::DeleteTemplateGroupAccessControlEntryRequest] params
    # @option params [String] :template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    # @option params [String] :group_security_identifier
    #   <p>Security identifier (SID) of the group object from Active Directory. The SID starts with
    #            "S-".</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #     group_security_identifier: "GroupSecurityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_template_group_access_control_entry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_template_group_access_control_entry(params = {}, options = {})
      request = build_request(:delete_template_group_access_control_entry, params)
      request.send_request(options)
    end

    # <p>Lists information about your connector. You specify the connector on input by its ARN
    #          (Amazon Resource Name). </p>
    # @param [Hash, Types::GetConnectorRequest] params
    # @option params [String] :connector_arn
    #   <p> The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_arn: "ConnectorArn", # required
    #   }
    #   options = {}
    #   response = client.get_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector: {
    #       arn: "ConnectorArn",
    #       certificate_authority_arn: "CertificateAuthorityArn",
    #       certificate_enrollment_policy_server_endpoint: "String",
    #       directory_id: "DirectoryId",
    #       vpc_information: {
    #         ip_address_type: "IPV4" # One of: ["IPV4", "DUALSTACK"],
    #         security_group_ids: ["SecurityGroupId"], # required
    #       },
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED"],
    #       status_reason: "CA_CERTIFICATE_REGISTRATION_FAILED" # One of: ["CA_CERTIFICATE_REGISTRATION_FAILED", "DIRECTORY_ACCESS_DENIED", "INTERNAL_FAILURE", "INSUFFICIENT_FREE_ADDRESSES", "INVALID_SUBNET_IP_PROTOCOL", "PRIVATECA_ACCESS_DENIED", "PRIVATECA_RESOURCE_NOT_FOUND", "SECURITY_GROUP_NOT_IN_VPC", "VPC_ACCESS_DENIED", "VPC_ENDPOINT_LIMIT_EXCEEDED", "VPC_RESOURCE_NOT_FOUND"],
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetConnectorResponse]
    def get_connector(params = {}, options = {})
      request = build_request(:get_connector, params)
      request.send_request(options)
    end

    # <p>A structure that contains information about your directory registration.</p>
    # @param [Hash, Types::GetDirectoryRegistrationRequest] params
    # @option params [String] :directory_registration_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html">CreateDirectoryRegistration</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_registration_arn: "DirectoryRegistrationArn", # required
    #   }
    #   options = {}
    #   response = client.get_directory_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_registration: {
    #       arn: "DirectoryRegistrationArn",
    #       directory_id: "DirectoryId",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED"],
    #       status_reason: "DIRECTORY_ACCESS_DENIED" # One of: ["DIRECTORY_ACCESS_DENIED", "DIRECTORY_RESOURCE_NOT_FOUND", "DIRECTORY_NOT_ACTIVE", "DIRECTORY_NOT_REACHABLE", "DIRECTORY_TYPE_NOT_SUPPORTED", "INTERNAL_FAILURE"],
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetDirectoryRegistrationResponse]
    def get_directory_registration(params = {}, options = {})
      request = build_request(:get_directory_registration, params)
      request.send_request(options)
    end

    # <p>Lists the service principal name that the connector uses to authenticate with
    #          Active Directory.</p>
    # @param [Hash, Types::GetServicePrincipalNameRequest] params
    # @option params [String] :directory_registration_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html">CreateDirectoryRegistration</a>.</p>
    # @option params [String] :connector_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_registration_arn: "DirectoryRegistrationArn", # required
    #     connector_arn: "ConnectorArn", # required
    #   }
    #   options = {}
    #   response = client.get_service_principal_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_principal_name: {
    #       directory_registration_arn: "DirectoryRegistrationArn",
    #       connector_arn: "ConnectorArn",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED"],
    #       status_reason: "DIRECTORY_ACCESS_DENIED" # One of: ["DIRECTORY_ACCESS_DENIED", "DIRECTORY_NOT_REACHABLE", "DIRECTORY_RESOURCE_NOT_FOUND", "SPN_EXISTS_ON_DIFFERENT_AD_OBJECT", "SPN_LIMIT_EXCEEDED", "INTERNAL_FAILURE"],
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetServicePrincipalNameResponse]
    def get_service_principal_name(params = {}, options = {})
      request = build_request(:get_service_principal_name, params)
      request.send_request(options)
    end

    # <p>Retrieves a certificate template that the connector uses to issue certificates from a
    #          private CA.</p>
    # @param [Hash, Types::GetTemplateRequest] params
    # @option params [String] :template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #   }
    #   options = {}
    #   response = client.get_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template: {
    #       arn: "TemplateArn",
    #       connector_arn: "ConnectorArn",
    #       definition: {
    #         # One of:
    #         template_v2: {
    #           certificate_validity: { # required
    #             validity_period: { # required
    #               period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #               period: 1, # required
    #             },
    #             renewal_period: { # required
    #               period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #               period: 1, # required
    #             }
    #           },
    #           superseded_templates: ["TemplateName"],
    #           private_key_attributes: { # required
    #             minimal_key_length: 1, # required
    #             key_spec: "KEY_EXCHANGE" # One of: ["KEY_EXCHANGE", "SIGNATURE"], # required
    #             crypto_providers: ["String"]
    #           },
    #           private_key_flags: { # required
    #             exportable_key: false,
    #             strong_key_protection_required: false,
    #             client_version: "WINDOWS_SERVER_2003" # One of: ["WINDOWS_SERVER_2003", "WINDOWS_SERVER_2008", "WINDOWS_SERVER_2008_R2", "WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"], # required
    #           },
    #           enrollment_flags: { # required
    #             include_symmetric_algorithms: false,
    #             user_interaction_required: false,
    #             remove_invalid_certificate_from_personal_store: false,
    #             no_security_extension: false,
    #             enable_key_reuse_on_nt_token_keyset_storage_full: false
    #           },
    #           subject_name_flags: { # required
    #             san_require_domain_dns: false,
    #             san_require_spn: false,
    #             san_require_directory_guid: false,
    #             san_require_upn: false,
    #             san_require_email: false,
    #             san_require_dns: false,
    #             require_dns_as_cn: false,
    #             require_email: false,
    #             require_common_name: false,
    #             require_directory_path: false
    #           },
    #           general_flags: { # required
    #             auto_enrollment: false,
    #             machine_type: false
    #           },
    #           extensions: { # required
    #             key_usage: { # required
    #               critical: false,
    #               usage_flags: { # required
    #                 digital_signature: false,
    #                 non_repudiation: false,
    #                 key_encipherment: false,
    #                 data_encipherment: false,
    #                 key_agreement: false
    #               }
    #             },
    #             application_policies: {
    #               critical: false,
    #               policies: [{ # required
    #                 # One of:
    #                 policy_type: "ALL_APPLICATION_POLICIES" # One of: ["ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"],
    #                 policy_object_identifier: "CustomObjectIdentifier"
    #               }]
    #             }
    #           }
    #         },
    #         template_v3: {
    #           certificate_validity: { # required
    #             validity_period: { # required
    #               period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #               period: 1, # required
    #             },
    #             renewal_period: { # required
    #               period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #               period: 1, # required
    #             }
    #           },
    #           superseded_templates: ["TemplateName"],
    #           private_key_attributes: { # required
    #             minimal_key_length: 1, # required
    #             key_spec: "KEY_EXCHANGE" # One of: ["KEY_EXCHANGE", "SIGNATURE"], # required
    #             crypto_providers: ["String"],
    #             key_usage_property: { # required
    #               # One of:
    #               property_type: "ALL" # One of: ["ALL"],
    #               property_flags: {
    #                 decrypt: false,
    #                 key_agreement: false,
    #                 sign: false
    #               }
    #             },
    #             algorithm: "RSA" # One of: ["RSA", "ECDH_P256", "ECDH_P384", "ECDH_P521"], # required
    #           },
    #           private_key_flags: { # required
    #             exportable_key: false,
    #             strong_key_protection_required: false,
    #             require_alternate_signature_algorithm: false,
    #             client_version: "WINDOWS_SERVER_2008" # One of: ["WINDOWS_SERVER_2008", "WINDOWS_SERVER_2008_R2", "WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"], # required
    #           },
    #           enrollment_flags: { # required
    #             include_symmetric_algorithms: false,
    #             user_interaction_required: false,
    #             remove_invalid_certificate_from_personal_store: false,
    #             no_security_extension: false,
    #             enable_key_reuse_on_nt_token_keyset_storage_full: false
    #           },
    #           subject_name_flags: { # required
    #             san_require_domain_dns: false,
    #             san_require_spn: false,
    #             san_require_directory_guid: false,
    #             san_require_upn: false,
    #             san_require_email: false,
    #             san_require_dns: false,
    #             require_dns_as_cn: false,
    #             require_email: false,
    #             require_common_name: false,
    #             require_directory_path: false
    #           },
    #           general_flags: { # required
    #             auto_enrollment: false,
    #             machine_type: false
    #           },
    #           hash_algorithm: "SHA256" # One of: ["SHA256", "SHA384", "SHA512"], # required
    #           extensions: { # required
    #             key_usage: { # required
    #               critical: false,
    #               usage_flags: { # required
    #                 digital_signature: false,
    #                 non_repudiation: false,
    #                 key_encipherment: false,
    #                 data_encipherment: false,
    #                 key_agreement: false
    #               }
    #             },
    #             application_policies: {
    #               critical: false,
    #               policies: [{ # required
    #                 # One of:
    #                 policy_type: "ALL_APPLICATION_POLICIES" # One of: ["ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"],
    #                 policy_object_identifier: "CustomObjectIdentifier"
    #               }]
    #             }
    #           }
    #         },
    #         template_v4: {
    #           certificate_validity: { # required
    #             validity_period: { # required
    #               period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #               period: 1, # required
    #             },
    #             renewal_period: { # required
    #               period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #               period: 1, # required
    #             }
    #           },
    #           superseded_templates: ["TemplateName"],
    #           private_key_attributes: { # required
    #             minimal_key_length: 1, # required
    #             key_spec: "KEY_EXCHANGE" # One of: ["KEY_EXCHANGE", "SIGNATURE"], # required
    #             crypto_providers: ["String"],
    #             key_usage_property: {
    #               # One of:
    #               property_type: "ALL" # One of: ["ALL"],
    #               property_flags: {
    #                 decrypt: false,
    #                 key_agreement: false,
    #                 sign: false
    #               }
    #             },
    #             algorithm: "RSA" # One of: ["RSA", "ECDH_P256", "ECDH_P384", "ECDH_P521"]
    #           },
    #           private_key_flags: { # required
    #             exportable_key: false,
    #             strong_key_protection_required: false,
    #             require_alternate_signature_algorithm: false,
    #             require_same_key_renewal: false,
    #             use_legacy_provider: false,
    #             client_version: "WINDOWS_SERVER_2012" # One of: ["WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"], # required
    #           },
    #           enrollment_flags: { # required
    #             include_symmetric_algorithms: false,
    #             user_interaction_required: false,
    #             remove_invalid_certificate_from_personal_store: false,
    #             no_security_extension: false,
    #             enable_key_reuse_on_nt_token_keyset_storage_full: false
    #           },
    #           subject_name_flags: { # required
    #             san_require_domain_dns: false,
    #             san_require_spn: false,
    #             san_require_directory_guid: false,
    #             san_require_upn: false,
    #             san_require_email: false,
    #             san_require_dns: false,
    #             require_dns_as_cn: false,
    #             require_email: false,
    #             require_common_name: false,
    #             require_directory_path: false
    #           },
    #           general_flags: { # required
    #             auto_enrollment: false,
    #             machine_type: false
    #           },
    #           hash_algorithm: "SHA256" # One of: ["SHA256", "SHA384", "SHA512"],
    #           extensions: { # required
    #             key_usage: { # required
    #               critical: false,
    #               usage_flags: { # required
    #                 digital_signature: false,
    #                 non_repudiation: false,
    #                 key_encipherment: false,
    #                 data_encipherment: false,
    #                 key_agreement: false
    #               }
    #             },
    #             application_policies: {
    #               critical: false,
    #               policies: [{ # required
    #                 # One of:
    #                 policy_type: "ALL_APPLICATION_POLICIES" # One of: ["ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"],
    #                 policy_object_identifier: "CustomObjectIdentifier"
    #               }]
    #             }
    #           }
    #         }
    #       },
    #       name: "TemplateName",
    #       object_identifier: "CustomObjectIdentifier",
    #       policy_schema: 1,
    #       status: "ACTIVE" # One of: ["ACTIVE", "DELETING"],
    #       revision: {
    #         major_revision: 1, # required
    #         minor_revision: 1, # required
    #       },
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetTemplateResponse]
    def get_template(params = {}, options = {})
      request = build_request(:get_template, params)
      request.send_request(options)
    end

    # <p>Retrieves the group access control entries for a template.</p>
    # @param [Hash, Types::GetTemplateGroupAccessControlEntryRequest] params
    # @option params [String] :template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    # @option params [String] :group_security_identifier
    #   <p>Security identifier (SID) of the group object from Active Directory. The SID starts with
    #            "S-".</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #     group_security_identifier: "GroupSecurityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_template_group_access_control_entry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_control_entry: {
    #       group_display_name: "DisplayName",
    #       group_security_identifier: "GroupSecurityIdentifier",
    #       access_rights: {
    #         enroll: "ALLOW" # One of: ["ALLOW", "DENY"],
    #         auto_enroll: "ALLOW" # One of: ["ALLOW", "DENY"]
    #       },
    #       template_arn: "TemplateArn",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetTemplateGroupAccessControlEntryResponse]
    def get_template_group_access_control_entry(params = {}, options = {})
      request = build_request(:get_template_group_access_control_entry, params)
      request.send_request(options)
    end

    # <p>Lists the connectors that you created by using the <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector">https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector</a> action.</p>
    # @param [Hash, Types::ListConnectorsRequest] params
    # @option params [Integer] :max_results
    #   <p>Use this parameter when paginating results to specify the maximum number of items to
    #            return in the response on each page. If additional items exist beyond the number you
    #            specify, the <code>NextToken</code> element is sent in the response. Use this
    #               <code>NextToken</code> value in a subsequent request to retrieve additional
    #            items.</p>
    # @option params [String] :next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #            response with truncated results. Set it to the value of the <code>NextToken</code>
    #            parameter from the response you just received.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_connectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connectors: [
    #       {
    #         arn: "ConnectorArn",
    #         certificate_authority_arn: "CertificateAuthorityArn",
    #         certificate_enrollment_policy_server_endpoint: "String",
    #         directory_id: "DirectoryId",
    #         vpc_information: {
    #           ip_address_type: "IPV4" # One of: ["IPV4", "DUALSTACK"],
    #           security_group_ids: ["SecurityGroupId"], # required
    #         },
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED"],
    #         status_reason: "CA_CERTIFICATE_REGISTRATION_FAILED" # One of: ["CA_CERTIFICATE_REGISTRATION_FAILED", "DIRECTORY_ACCESS_DENIED", "INTERNAL_FAILURE", "INSUFFICIENT_FREE_ADDRESSES", "INVALID_SUBNET_IP_PROTOCOL", "PRIVATECA_ACCESS_DENIED", "PRIVATECA_RESOURCE_NOT_FOUND", "SECURITY_GROUP_NOT_IN_VPC", "VPC_ACCESS_DENIED", "VPC_ENDPOINT_LIMIT_EXCEEDED", "VPC_RESOURCE_NOT_FOUND"],
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConnectorsResponse]
    def list_connectors(params = {}, options = {})
      request = build_request(:list_connectors, params)
      request.send_request(options)
    end

    # <p>Lists the directory registrations that you created by using the <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration">https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration</a>
    #          action.</p>
    # @param [Hash, Types::ListDirectoryRegistrationsRequest] params
    # @option params [Integer] :max_results
    #   <p>Use this parameter when paginating results to specify the maximum number of items to
    #            return in the response on each page. If additional items exist beyond the number you
    #            specify, the <code>NextToken</code> element is sent in the response. Use this
    #               <code>NextToken</code> value in a subsequent request to retrieve additional
    #            items.</p>
    # @option params [String] :next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #            response with truncated results. Set it to the value of the <code>NextToken</code>
    #            parameter from the response you just received.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_directory_registrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     directory_registrations: [
    #       {
    #         arn: "DirectoryRegistrationArn",
    #         directory_id: "DirectoryId",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED"],
    #         status_reason: "DIRECTORY_ACCESS_DENIED" # One of: ["DIRECTORY_ACCESS_DENIED", "DIRECTORY_RESOURCE_NOT_FOUND", "DIRECTORY_NOT_ACTIVE", "DIRECTORY_NOT_REACHABLE", "DIRECTORY_TYPE_NOT_SUPPORTED", "INTERNAL_FAILURE"],
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDirectoryRegistrationsResponse]
    def list_directory_registrations(params = {}, options = {})
      request = build_request(:list_directory_registrations, params)
      request.send_request(options)
    end

    # <p>Lists the service principal names that the connector uses to authenticate with
    #          Active Directory.</p>
    # @param [Hash, Types::ListServicePrincipalNamesRequest] params
    # @option params [Integer] :max_results
    #   <p>Use this parameter when paginating results to specify the maximum number of items to
    #            return in the response on each page. If additional items exist beyond the number you
    #            specify, the <code>NextToken</code> element is sent in the response. Use this
    #               <code>NextToken</code> value in a subsequent request to retrieve additional
    #            items.</p>
    # @option params [String] :next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #            response with truncated results. Set it to the value of the <code>NextToken</code>
    #            parameter from the response you just received.</p>
    # @option params [String] :directory_registration_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html">CreateDirectoryRegistration</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     directory_registration_arn: "DirectoryRegistrationArn", # required
    #   }
    #   options = {}
    #   response = client.list_service_principal_names(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_principal_names: [
    #       {
    #         directory_registration_arn: "DirectoryRegistrationArn",
    #         connector_arn: "ConnectorArn",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED"],
    #         status_reason: "DIRECTORY_ACCESS_DENIED" # One of: ["DIRECTORY_ACCESS_DENIED", "DIRECTORY_NOT_REACHABLE", "DIRECTORY_RESOURCE_NOT_FOUND", "SPN_EXISTS_ON_DIFFERENT_AD_OBJECT", "SPN_LIMIT_EXCEEDED", "INTERNAL_FAILURE"],
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServicePrincipalNamesResponse]
    def list_service_principal_names(params = {}, options = {})
      request = build_request(:list_service_principal_names, params)
      request.send_request(options)
    end

    # <p>Lists the tags, if any, that are associated with your resource. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you created the resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
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

    # <p>Lists group access control entries you created. </p>
    # @param [Hash, Types::ListTemplateGroupAccessControlEntriesRequest] params
    # @option params [Integer] :max_results
    #   <p>Use this parameter when paginating results to specify the maximum number of items to
    #            return in the response on each page. If additional items exist beyond the number you
    #            specify, the <code>NextToken</code> element is sent in the response. Use this
    #               <code>NextToken</code> value in a subsequent request to retrieve additional
    #            items.</p>
    # @option params [String] :next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #            response with truncated results. Set it to the value of the <code>NextToken</code>
    #            parameter from the response you just received.</p>
    # @option params [String] :template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     template_arn: "TemplateArn", # required
    #   }
    #   options = {}
    #   response = client.list_template_group_access_control_entries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_control_entries: [
    #       {
    #         group_display_name: "DisplayName",
    #         group_security_identifier: "GroupSecurityIdentifier",
    #         access_rights: {
    #           enroll: "ALLOW" # One of: ["ALLOW", "DENY"],
    #           auto_enroll: "ALLOW" # One of: ["ALLOW", "DENY"]
    #         },
    #         template_arn: "TemplateArn",
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTemplateGroupAccessControlEntriesResponse]
    def list_template_group_access_control_entries(params = {}, options = {})
      request = build_request(:list_template_group_access_control_entries, params)
      request.send_request(options)
    end

    # <p>Lists the templates, if any, that are associated with a connector.</p>
    # @param [Hash, Types::ListTemplatesRequest] params
    # @option params [Integer] :max_results
    #   <p>Use this parameter when paginating results to specify the maximum number of items to
    #            return in the response on each page. If additional items exist beyond the number you
    #            specify, the <code>NextToken</code> element is sent in the response. Use this
    #               <code>NextToken</code> value in a subsequent request to retrieve additional
    #            items.</p>
    # @option params [String] :next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #            response with truncated results. Set it to the value of the <code>NextToken</code>
    #            parameter from the response you just received.</p>
    # @option params [String] :connector_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     connector_arn: "ConnectorArn", # required
    #   }
    #   options = {}
    #   response = client.list_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     templates: [
    #       {
    #         arn: "TemplateArn",
    #         connector_arn: "ConnectorArn",
    #         definition: {
    #           # One of:
    #           template_v2: {
    #             certificate_validity: { # required
    #               validity_period: { # required
    #                 period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #                 period: 1, # required
    #               },
    #               renewal_period: { # required
    #                 period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #                 period: 1, # required
    #               }
    #             },
    #             superseded_templates: ["TemplateName"],
    #             private_key_attributes: { # required
    #               minimal_key_length: 1, # required
    #               key_spec: "KEY_EXCHANGE" # One of: ["KEY_EXCHANGE", "SIGNATURE"], # required
    #               crypto_providers: ["String"]
    #             },
    #             private_key_flags: { # required
    #               exportable_key: false,
    #               strong_key_protection_required: false,
    #               client_version: "WINDOWS_SERVER_2003" # One of: ["WINDOWS_SERVER_2003", "WINDOWS_SERVER_2008", "WINDOWS_SERVER_2008_R2", "WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"], # required
    #             },
    #             enrollment_flags: { # required
    #               include_symmetric_algorithms: false,
    #               user_interaction_required: false,
    #               remove_invalid_certificate_from_personal_store: false,
    #               no_security_extension: false,
    #               enable_key_reuse_on_nt_token_keyset_storage_full: false
    #             },
    #             subject_name_flags: { # required
    #               san_require_domain_dns: false,
    #               san_require_spn: false,
    #               san_require_directory_guid: false,
    #               san_require_upn: false,
    #               san_require_email: false,
    #               san_require_dns: false,
    #               require_dns_as_cn: false,
    #               require_email: false,
    #               require_common_name: false,
    #               require_directory_path: false
    #             },
    #             general_flags: { # required
    #               auto_enrollment: false,
    #               machine_type: false
    #             },
    #             extensions: { # required
    #               key_usage: { # required
    #                 critical: false,
    #                 usage_flags: { # required
    #                   digital_signature: false,
    #                   non_repudiation: false,
    #                   key_encipherment: false,
    #                   data_encipherment: false,
    #                   key_agreement: false
    #                 }
    #               },
    #               application_policies: {
    #                 critical: false,
    #                 policies: [{ # required
    #                   # One of:
    #                   policy_type: "ALL_APPLICATION_POLICIES" # One of: ["ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"],
    #                   policy_object_identifier: "CustomObjectIdentifier"
    #                 }]
    #               }
    #             }
    #           },
    #           template_v3: {
    #             certificate_validity: { # required
    #               validity_period: { # required
    #                 period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #                 period: 1, # required
    #               },
    #               renewal_period: { # required
    #                 period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #                 period: 1, # required
    #               }
    #             },
    #             superseded_templates: ["TemplateName"],
    #             private_key_attributes: { # required
    #               minimal_key_length: 1, # required
    #               key_spec: "KEY_EXCHANGE" # One of: ["KEY_EXCHANGE", "SIGNATURE"], # required
    #               crypto_providers: ["String"],
    #               key_usage_property: { # required
    #                 # One of:
    #                 property_type: "ALL" # One of: ["ALL"],
    #                 property_flags: {
    #                   decrypt: false,
    #                   key_agreement: false,
    #                   sign: false
    #                 }
    #               },
    #               algorithm: "RSA" # One of: ["RSA", "ECDH_P256", "ECDH_P384", "ECDH_P521"], # required
    #             },
    #             private_key_flags: { # required
    #               exportable_key: false,
    #               strong_key_protection_required: false,
    #               require_alternate_signature_algorithm: false,
    #               client_version: "WINDOWS_SERVER_2008" # One of: ["WINDOWS_SERVER_2008", "WINDOWS_SERVER_2008_R2", "WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"], # required
    #             },
    #             enrollment_flags: { # required
    #               include_symmetric_algorithms: false,
    #               user_interaction_required: false,
    #               remove_invalid_certificate_from_personal_store: false,
    #               no_security_extension: false,
    #               enable_key_reuse_on_nt_token_keyset_storage_full: false
    #             },
    #             subject_name_flags: { # required
    #               san_require_domain_dns: false,
    #               san_require_spn: false,
    #               san_require_directory_guid: false,
    #               san_require_upn: false,
    #               san_require_email: false,
    #               san_require_dns: false,
    #               require_dns_as_cn: false,
    #               require_email: false,
    #               require_common_name: false,
    #               require_directory_path: false
    #             },
    #             general_flags: { # required
    #               auto_enrollment: false,
    #               machine_type: false
    #             },
    #             hash_algorithm: "SHA256" # One of: ["SHA256", "SHA384", "SHA512"], # required
    #             extensions: { # required
    #               key_usage: { # required
    #                 critical: false,
    #                 usage_flags: { # required
    #                   digital_signature: false,
    #                   non_repudiation: false,
    #                   key_encipherment: false,
    #                   data_encipherment: false,
    #                   key_agreement: false
    #                 }
    #               },
    #               application_policies: {
    #                 critical: false,
    #                 policies: [{ # required
    #                   # One of:
    #                   policy_type: "ALL_APPLICATION_POLICIES" # One of: ["ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"],
    #                   policy_object_identifier: "CustomObjectIdentifier"
    #                 }]
    #               }
    #             }
    #           },
    #           template_v4: {
    #             certificate_validity: { # required
    #               validity_period: { # required
    #                 period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #                 period: 1, # required
    #               },
    #               renewal_period: { # required
    #                 period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #                 period: 1, # required
    #               }
    #             },
    #             superseded_templates: ["TemplateName"],
    #             private_key_attributes: { # required
    #               minimal_key_length: 1, # required
    #               key_spec: "KEY_EXCHANGE" # One of: ["KEY_EXCHANGE", "SIGNATURE"], # required
    #               crypto_providers: ["String"],
    #               key_usage_property: {
    #                 # One of:
    #                 property_type: "ALL" # One of: ["ALL"],
    #                 property_flags: {
    #                   decrypt: false,
    #                   key_agreement: false,
    #                   sign: false
    #                 }
    #               },
    #               algorithm: "RSA" # One of: ["RSA", "ECDH_P256", "ECDH_P384", "ECDH_P521"]
    #             },
    #             private_key_flags: { # required
    #               exportable_key: false,
    #               strong_key_protection_required: false,
    #               require_alternate_signature_algorithm: false,
    #               require_same_key_renewal: false,
    #               use_legacy_provider: false,
    #               client_version: "WINDOWS_SERVER_2012" # One of: ["WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"], # required
    #             },
    #             enrollment_flags: { # required
    #               include_symmetric_algorithms: false,
    #               user_interaction_required: false,
    #               remove_invalid_certificate_from_personal_store: false,
    #               no_security_extension: false,
    #               enable_key_reuse_on_nt_token_keyset_storage_full: false
    #             },
    #             subject_name_flags: { # required
    #               san_require_domain_dns: false,
    #               san_require_spn: false,
    #               san_require_directory_guid: false,
    #               san_require_upn: false,
    #               san_require_email: false,
    #               san_require_dns: false,
    #               require_dns_as_cn: false,
    #               require_email: false,
    #               require_common_name: false,
    #               require_directory_path: false
    #             },
    #             general_flags: { # required
    #               auto_enrollment: false,
    #               machine_type: false
    #             },
    #             hash_algorithm: "SHA256" # One of: ["SHA256", "SHA384", "SHA512"],
    #             extensions: { # required
    #               key_usage: { # required
    #                 critical: false,
    #                 usage_flags: { # required
    #                   digital_signature: false,
    #                   non_repudiation: false,
    #                   key_encipherment: false,
    #                   data_encipherment: false,
    #                   key_agreement: false
    #                 }
    #               },
    #               application_policies: {
    #                 critical: false,
    #                 policies: [{ # required
    #                   # One of:
    #                   policy_type: "ALL_APPLICATION_POLICIES" # One of: ["ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"],
    #                   policy_object_identifier: "CustomObjectIdentifier"
    #                 }]
    #               }
    #             }
    #           }
    #         },
    #         name: "TemplateName",
    #         object_identifier: "CustomObjectIdentifier",
    #         policy_schema: 1,
    #         status: "ACTIVE" # One of: ["ACTIVE", "DELETING"],
    #         revision: {
    #           major_revision: 1, # required
    #           minor_revision: 1, # required
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTemplatesResponse]
    def list_templates(params = {}, options = {})
      request = build_request(:list_templates, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to your resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you created the resource. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata assigned to a directory registration consisting of a key-value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from your resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you created the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Specifies a list of tag keys that you want to remove from the specified
    #            resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Update template configuration to define the information included in certificates.</p>
    # @param [Hash, Types::UpdateTemplateRequest] params
    # @option params [String] :template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    # @option params [Types::TemplateDefinition] :definition
    #   <p>Template configuration to define the information included in certificates. Define
    #            certificate validity and renewal periods, certificate request handling and enrollment
    #            options, key usage extensions, application policies, and cryptography settings.</p>
    # @option params [Boolean] :reenroll_all_certificate_holders
    #   <p>This setting allows the major version of a template to be increased automatically. All
    #            members of Active Directory groups that are allowed to enroll with a template will receive a new
    #            certificate issued using that template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #     definition: {
    #       # One of:
    #       template_v2: {
    #         certificate_validity: { # required
    #           validity_period: { # required
    #             period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #             period: 1, # required
    #           },
    #           renewal_period: { # required
    #             period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #             period: 1, # required
    #           }
    #         },
    #         superseded_templates: ["TemplateName"],
    #         private_key_attributes: { # required
    #           minimal_key_length: 1, # required
    #           key_spec: "KEY_EXCHANGE" # One of: ["KEY_EXCHANGE", "SIGNATURE"], # required
    #           crypto_providers: ["String"]
    #         },
    #         private_key_flags: { # required
    #           exportable_key: false,
    #           strong_key_protection_required: false,
    #           client_version: "WINDOWS_SERVER_2003" # One of: ["WINDOWS_SERVER_2003", "WINDOWS_SERVER_2008", "WINDOWS_SERVER_2008_R2", "WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"], # required
    #         },
    #         enrollment_flags: { # required
    #           include_symmetric_algorithms: false,
    #           user_interaction_required: false,
    #           remove_invalid_certificate_from_personal_store: false,
    #           no_security_extension: false,
    #           enable_key_reuse_on_nt_token_keyset_storage_full: false
    #         },
    #         subject_name_flags: { # required
    #           san_require_domain_dns: false,
    #           san_require_spn: false,
    #           san_require_directory_guid: false,
    #           san_require_upn: false,
    #           san_require_email: false,
    #           san_require_dns: false,
    #           require_dns_as_cn: false,
    #           require_email: false,
    #           require_common_name: false,
    #           require_directory_path: false
    #         },
    #         general_flags: { # required
    #           auto_enrollment: false,
    #           machine_type: false
    #         },
    #         extensions: { # required
    #           key_usage: { # required
    #             critical: false,
    #             usage_flags: { # required
    #               digital_signature: false,
    #               non_repudiation: false,
    #               key_encipherment: false,
    #               data_encipherment: false,
    #               key_agreement: false
    #             }
    #           },
    #           application_policies: {
    #             critical: false,
    #             policies: [{ # required
    #               # One of:
    #               policy_type: "ALL_APPLICATION_POLICIES" # One of: ["ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"],
    #               policy_object_identifier: "CustomObjectIdentifier"
    #             }]
    #           }
    #         }
    #       },
    #       template_v3: {
    #         certificate_validity: { # required
    #           validity_period: { # required
    #             period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #             period: 1, # required
    #           },
    #           renewal_period: { # required
    #             period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #             period: 1, # required
    #           }
    #         },
    #         superseded_templates: ["TemplateName"],
    #         private_key_attributes: { # required
    #           minimal_key_length: 1, # required
    #           key_spec: "KEY_EXCHANGE" # One of: ["KEY_EXCHANGE", "SIGNATURE"], # required
    #           crypto_providers: ["String"],
    #           key_usage_property: { # required
    #             # One of:
    #             property_type: "ALL" # One of: ["ALL"],
    #             property_flags: {
    #               decrypt: false,
    #               key_agreement: false,
    #               sign: false
    #             }
    #           },
    #           algorithm: "RSA" # One of: ["RSA", "ECDH_P256", "ECDH_P384", "ECDH_P521"], # required
    #         },
    #         private_key_flags: { # required
    #           exportable_key: false,
    #           strong_key_protection_required: false,
    #           require_alternate_signature_algorithm: false,
    #           client_version: "WINDOWS_SERVER_2008" # One of: ["WINDOWS_SERVER_2008", "WINDOWS_SERVER_2008_R2", "WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"], # required
    #         },
    #         enrollment_flags: { # required
    #           include_symmetric_algorithms: false,
    #           user_interaction_required: false,
    #           remove_invalid_certificate_from_personal_store: false,
    #           no_security_extension: false,
    #           enable_key_reuse_on_nt_token_keyset_storage_full: false
    #         },
    #         subject_name_flags: { # required
    #           san_require_domain_dns: false,
    #           san_require_spn: false,
    #           san_require_directory_guid: false,
    #           san_require_upn: false,
    #           san_require_email: false,
    #           san_require_dns: false,
    #           require_dns_as_cn: false,
    #           require_email: false,
    #           require_common_name: false,
    #           require_directory_path: false
    #         },
    #         general_flags: { # required
    #           auto_enrollment: false,
    #           machine_type: false
    #         },
    #         hash_algorithm: "SHA256" # One of: ["SHA256", "SHA384", "SHA512"], # required
    #         extensions: { # required
    #           key_usage: { # required
    #             critical: false,
    #             usage_flags: { # required
    #               digital_signature: false,
    #               non_repudiation: false,
    #               key_encipherment: false,
    #               data_encipherment: false,
    #               key_agreement: false
    #             }
    #           },
    #           application_policies: {
    #             critical: false,
    #             policies: [{ # required
    #               # One of:
    #               policy_type: "ALL_APPLICATION_POLICIES" # One of: ["ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"],
    #               policy_object_identifier: "CustomObjectIdentifier"
    #             }]
    #           }
    #         }
    #       },
    #       template_v4: {
    #         certificate_validity: { # required
    #           validity_period: { # required
    #             period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #             period: 1, # required
    #           },
    #           renewal_period: { # required
    #             period_type: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS", "YEARS"], # required
    #             period: 1, # required
    #           }
    #         },
    #         superseded_templates: ["TemplateName"],
    #         private_key_attributes: { # required
    #           minimal_key_length: 1, # required
    #           key_spec: "KEY_EXCHANGE" # One of: ["KEY_EXCHANGE", "SIGNATURE"], # required
    #           crypto_providers: ["String"],
    #           key_usage_property: {
    #             # One of:
    #             property_type: "ALL" # One of: ["ALL"],
    #             property_flags: {
    #               decrypt: false,
    #               key_agreement: false,
    #               sign: false
    #             }
    #           },
    #           algorithm: "RSA" # One of: ["RSA", "ECDH_P256", "ECDH_P384", "ECDH_P521"]
    #         },
    #         private_key_flags: { # required
    #           exportable_key: false,
    #           strong_key_protection_required: false,
    #           require_alternate_signature_algorithm: false,
    #           require_same_key_renewal: false,
    #           use_legacy_provider: false,
    #           client_version: "WINDOWS_SERVER_2012" # One of: ["WINDOWS_SERVER_2012", "WINDOWS_SERVER_2012_R2", "WINDOWS_SERVER_2016"], # required
    #         },
    #         enrollment_flags: { # required
    #           include_symmetric_algorithms: false,
    #           user_interaction_required: false,
    #           remove_invalid_certificate_from_personal_store: false,
    #           no_security_extension: false,
    #           enable_key_reuse_on_nt_token_keyset_storage_full: false
    #         },
    #         subject_name_flags: { # required
    #           san_require_domain_dns: false,
    #           san_require_spn: false,
    #           san_require_directory_guid: false,
    #           san_require_upn: false,
    #           san_require_email: false,
    #           san_require_dns: false,
    #           require_dns_as_cn: false,
    #           require_email: false,
    #           require_common_name: false,
    #           require_directory_path: false
    #         },
    #         general_flags: { # required
    #           auto_enrollment: false,
    #           machine_type: false
    #         },
    #         hash_algorithm: "SHA256" # One of: ["SHA256", "SHA384", "SHA512"],
    #         extensions: { # required
    #           key_usage: { # required
    #             critical: false,
    #             usage_flags: { # required
    #               digital_signature: false,
    #               non_repudiation: false,
    #               key_encipherment: false,
    #               data_encipherment: false,
    #               key_agreement: false
    #             }
    #           },
    #           application_policies: {
    #             critical: false,
    #             policies: [{ # required
    #               # One of:
    #               policy_type: "ALL_APPLICATION_POLICIES" # One of: ["ALL_APPLICATION_POLICIES", "ANY_PURPOSE", "ATTESTATION_IDENTITY_KEY_CERTIFICATE", "CERTIFICATE_REQUEST_AGENT", "CLIENT_AUTHENTICATION", "CODE_SIGNING", "CTL_USAGE", "DIGITAL_RIGHTS", "DIRECTORY_SERVICE_EMAIL_REPLICATION", "DISALLOWED_LIST", "DNS_SERVER_TRUST", "DOCUMENT_ENCRYPTION", "DOCUMENT_SIGNING", "DYNAMIC_CODE_GENERATOR", "EARLY_LAUNCH_ANTIMALWARE_DRIVER", "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "ENCLAVE", "ENCRYPTING_FILE_SYSTEM", "ENDORSEMENT_KEY_CERTIFICATE", "FILE_RECOVERY", "HAL_EXTENSION", "IP_SECURITY_END_SYSTEM", "IP_SECURITY_IKE_INTERMEDIATE", "IP_SECURITY_TUNNEL_TERMINATION", "IP_SECURITY_USER", "ISOLATED_USER_MODE", "KDC_AUTHENTICATION", "KERNEL_MODE_CODE_SIGNING", "KEY_PACK_LICENSES", "KEY_RECOVERY", "KEY_RECOVERY_AGENT", "LICENSE_SERVER_VERIFICATION", "LIFETIME_SIGNING", "MICROSOFT_PUBLISHER", "MICROSOFT_TIME_STAMPING", "MICROSOFT_TRUST_LIST_SIGNING", "OCSP_SIGNING", "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "PLATFORM_CERTIFICATE", "PREVIEW_BUILD_SIGNING", "PRIVATE_KEY_ARCHIVAL", "PROTECTED_PROCESS_LIGHT_VERIFICATION", "PROTECTED_PROCESS_VERIFICATION", "QUALIFIED_SUBORDINATION", "REVOKED_LIST_SIGNER", "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION", "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION", "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL", "ROOT_LIST_SIGNER", "SECURE_EMAIL", "SERVER_AUTHENTICATION", "SMART_CARD_LOGIN", "SPC_ENCRYPTED_DIGEST_RETRY_COUNT", "SPC_RELAXED_PE_MARKER_CHECK", "TIME_STAMPING", "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION", "WINDOWS_HARDWARE_DRIVER_VERIFICATION", "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION", "WINDOWS_KITS_COMPONENT", "WINDOWS_RT_VERIFICATION", "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION", "WINDOWS_STORE", "WINDOWS_SYSTEM_COMPONENT_VERIFICATION", "WINDOWS_TCB_COMPONENT", "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT", "WINDOWS_UPDATE"],
    #               policy_object_identifier: "CustomObjectIdentifier"
    #             }]
    #           }
    #         }
    #       }
    #     },
    #     reenroll_all_certificate_holders: false
    #   }
    #   options = {}
    #   response = client.update_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_template(params = {}, options = {})
      request = build_request(:update_template, params)
      request.send_request(options)
    end

    # <p>Update a group access control entry you created using <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplateGroupAccessControlEntry.html">CreateTemplateGroupAccessControlEntry</a>. </p>
    # @param [Hash, Types::UpdateTemplateGroupAccessControlEntryRequest] params
    # @option params [String] :template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    # @option params [String] :group_security_identifier
    #   <p>Security identifier (SID) of the group object from Active Directory. The SID starts with
    #            "S-".</p>
    # @option params [String] :group_display_name
    #   <p>Name of the Active Directory group. This name does not need to match the group name in Active Directory.</p>
    # @option params [Types::AccessRights] :access_rights
    #   <p>Allow or deny permissions for an Active Directory group to enroll or autoenroll certificates for a
    #            template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_arn: "TemplateArn", # required
    #     group_security_identifier: "GroupSecurityIdentifier", # required
    #     group_display_name: "DisplayName",
    #     access_rights: {
    #       enroll: "ALLOW" # One of: ["ALLOW", "DENY"],
    #       auto_enroll: "ALLOW" # One of: ["ALLOW", "DENY"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_template_group_access_control_entry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_template_group_access_control_entry(params = {}, options = {})
      request = build_request(:update_template_group_access_control_entry, params)
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
      context[:gem_name] = 'aws-sdk-pcaconnectorad'
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
