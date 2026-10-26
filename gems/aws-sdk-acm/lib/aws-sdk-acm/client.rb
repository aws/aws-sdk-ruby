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
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:acm)

module Aws::ACM
  # An API client for Aws::ACM.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CertificateManager
    @identifier = :acm

    add_plugin(::Aws::ACM::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ACM::EndpointProvider)
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
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
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
    # @option options [String] :service_type
    #  The service type: ACM or ACM-ACME. Injected via @staticContextParams.
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

    # <p>Adds one or more tags to an ACM certificate. Tags are labels that you can use to identify and organize your Amazon Web Services resources. Each tag consists of a <code>key</code> and an optional <code>value</code>. You specify the certificate on input by its Amazon Resource Name (ARN). You specify the tag by using a key-value pair. </p> <note> <p>This action applies only to the <code>certificate</code> resource type. For all other ACM resource types, use <a>TagResource</a> instead.</p> </note> <p>You can apply a tag to just one certificate if you want to identify a specific characteristic of that certificate, or you can apply the same tag to multiple certificates if you want to filter for a common relationship among those certificates. Similarly, you can apply the same tag to multiple resources if you want to specify a relationship among those resources. For example, you can add the same tag to an ACM certificate and an Elastic Load Balancing load balancer to indicate that they are both used by the same website. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/tags.html">Tagging ACM certificates</a>. </p> <p>To remove one or more tags, use the <a>RemoveTagsFromCertificate</a> action. To view all of the tags that have been applied to the certificate, use the <a>ListTagsForCertificate</a> action. </p>
    # @param [Hash, Types::AddTagsToCertificateRequest] params
    # @option params [String] :certificate_arn
    #   <p>String that contains the ARN of the ACM certificate to which the tag is to be applied. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key-value pair that defines the tag. The tag value is optional.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_tags_to_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def add_tags_to_certificate(params = {}, options = {})
      request = build_request(:add_tags_to_certificate, params)
      request.send_request(options)
    end

    # <p>Creates a domain validation for an ACME endpoint. Domain validations authorize the endpoint to issue certificates for specified domain names. You configure prevalidation to prove domain ownership.</p>
    # @param [Hash, Types::CreateAcmeDomainValidationRequest] params
    # @option params [String] :idempotency_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @option params [String] :acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    # @option params [String] :domain_name
    #   <p>The domain name to validate.</p>
    # @option params [Types::PrevalidationOptions] :prevalidation_options
    #   <p>The prevalidation options for the domain.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags to associate with the domain validation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     idempotency_token: "String",
    #     acme_endpoint_arn: "AcmeEndpointArn", # required
    #     domain_name: "DomainName", # required
    #     prevalidation_options: { # required
    #       # One of:
    #       dns_prevalidation: {
    #         domain_scope: {
    #           exact_domain: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           subdomains: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           wildcards: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         hosted_zone_id: "HostedZoneId"
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_acme_domain_validation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     acme_domain_validation_arn: "AcmeDomainValidationArn", # required
    #   }
    # @return [Types::CreateAcmeDomainValidationResponse]
    def create_acme_domain_validation(params = {}, options = {})
      request = build_request(:create_acme_domain_validation, params)
      request.send_request(options)
    end

    # <p>Creates an ACME endpoint, which is a managed ACME server with a unique endpoint URL. After creation, ACME clients can use the endpoint URL to automate certificate issuance using the ACME protocol.</p>
    # @param [Hash, Types::CreateAcmeEndpointRequest] params
    # @option params [String] :idempotency_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @option params [String] :authorization_behavior
    #   <p>The authorization behavior for the ACME endpoint.</p>
    # @option params [String] :contact
    #   <p>Specifies whether ACME clients must provide contact information during account registration.</p>
    # @option params [Types::CertificateAuthority] :certificate_authority
    #   <p>The type of certificate authority to use for issuing certificates through this ACME endpoint.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags to associate with the ACME endpoint.</p>
    # @option params [Array<Types::Tag>] :certificate_tags
    #   <p>Tags to apply to certificates issued through this ACME endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     idempotency_token: "String",
    #     authorization_behavior: "PRE_APPROVED" # One of: ["PRE_APPROVED"], # required
    #     contact: "REQUIRED" # One of: ["REQUIRED", "NOT_REQUIRED"],
    #     certificate_authority: { # required
    #       # One of:
    #       public_certificate_authority: {
    #         allowed_key_algorithms: ["RSA_2048" # One of: ["RSA_2048", "EC_prime256v1", "EC_secp384r1"]]
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     certificate_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_acme_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     acme_endpoint_arn: "AcmeEndpointArn"
    #   }
    # @return [Types::CreateAcmeEndpointResponse]
    def create_acme_endpoint(params = {}, options = {})
      request = build_request(:create_acme_endpoint, params)
      request.send_request(options)
    end

    # <p>Creates an external account binding (EAB) for an ACME endpoint. An EAB provides credentials that authorize an ACME client to register an account with the endpoint. Each EAB is associated with an IAM role that controls what certificate operations the ACME client can perform.</p>
    # @param [Hash, Types::CreateAcmeExternalAccountBindingRequest] params
    # @option params [String] :idempotency_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @option params [String] :acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to associate with the external account binding.</p>
    # @option params [Types::Expiration] :expiration
    #   <p>The expiration configuration for the external account binding.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags to associate with the external account binding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     idempotency_token: "String",
    #     acme_endpoint_arn: "AcmeEndpointArn", # required
    #     role_arn: "RoleArn", # required
    #     expiration: {
    #       value: 1, # required
    #       type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_acme_external_account_binding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     external_account_binding: {
    #       acme_external_account_binding_arn: "AcmeExternalAccountBindingArn",
    #       acme_endpoint_arn: "AcmeEndpointArn",
    #       role_arn: "RoleArn",
    #       expires_at: Time.now,
    #       revoked_at: Time.now,
    #       last_used_at: Time.now,
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::CreateAcmeExternalAccountBindingResponse]
    def create_acme_external_account_binding(params = {}, options = {})
      request = build_request(:create_acme_external_account_binding, params)
      request.send_request(options)
    end

    # <p>Deletes a domain validation. After deletion, the ACME endpoint can no longer issue certificates for the associated domain.</p>
    # @param [Hash, Types::DeleteAcmeDomainValidationRequest] params
    # @option params [String] :acme_domain_validation_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME domain validation to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     acme_domain_validation_arn: "AcmeDomainValidationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_acme_domain_validation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_acme_domain_validation(params = {}, options = {})
      request = build_request(:delete_acme_domain_validation, params)
      request.send_request(options)
    end

    # <p>Deletes an ACME endpoint. After deletion, the endpoint URL is no longer accessible and ACME clients cannot issue certificates through it. Any existing external account bindings and domain validations associated with the endpoint are also deleted.</p>
    # @param [Hash, Types::DeleteAcmeEndpointRequest] params
    # @option params [String] :acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     acme_endpoint_arn: "AcmeEndpointArn", # required
    #   }
    #   options = {}
    #   response = client.delete_acme_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_acme_endpoint(params = {}, options = {})
      request = build_request(:delete_acme_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes an external account binding. Previously fetched credentials for this binding will no longer be usable for account registration. A deleted binding cannot be recovered.</p>
    # @param [Hash, Types::DeleteAcmeExternalAccountBindingRequest] params
    # @option params [String] :acme_external_account_binding_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME external account binding to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     acme_external_account_binding_arn: "AcmeExternalAccountBindingArn", # required
    #   }
    #   options = {}
    #   response = client.delete_acme_external_account_binding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_acme_external_account_binding(params = {}, options = {})
      request = build_request(:delete_acme_external_account_binding, params)
      request.send_request(options)
    end

    # <p>Deletes a certificate and its associated private key. If this action succeeds, the certificate is not available for use by Amazon Web Services services integrated with ACM. Deleting a certificate is eventually consistent. The may be a short delay before the certificate no longer appears in the list that can be displayed by calling the <a>ListCertificates</a> action or be retrieved by calling the <a>GetCertificate</a> action.</p> <note> <p>You cannot delete an ACM certificate that is being used by another Amazon Web Services service. To delete a certificate that is in use, you must first remove the certificate association using the console or the CLI for the associated service.</p> <p>Deleting a certificate issued by a private certificate authority (CA) has no effect on the CA. You will continue to be charged for the CA until it is deleted. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/PCADeleteCA.html"> Deleting Your Private CA</a> in the <i>Private Certificate Authority User Guide</i>.</p> <p>You cannot delete a certificate with a <code>CertificateKeyPairOrigin</code> of <code>ACME</code>. ACM automatically deletes these certificates 1 year after they expire.</p> </note> <p>Deleting a certificate issued by a private certificate authority (CA) has no effect on the CA. You will continue to be charged for the CA until it is deleted. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/PCADeleteCA.html">Deleting your private CA</a> in the <i>Amazon Web Services Private Certificate Authority User Guide</i>.</p>
    # @param [Hash, Types::DeleteCertificateRequest] params
    # @option params [String] :certificate_arn
    #   <p>String that contains the ARN of the ACM certificate to be deleted. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_certificate(params = {}, options = {})
      request = build_request(:delete_certificate, params)
      request.send_request(options)
    end

    # <p>Returns detailed metadata about the specified ACME account, including its status, public key thumbprint, and associated external account binding.</p>
    # @param [Hash, Types::DescribeAcmeAccountRequest] params
    # @option params [String] :acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    # @option params [String] :account_url
    #   <p>The URL of the ACME account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     acme_endpoint_arn: "AcmeEndpointArn", # required
    #     account_url: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_acme_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     acme_account: {
    #       account_url: "String",
    #       public_key_thumbprint: "String",
    #       status: "VALID" # One of: ["VALID", "DEACTIVATED", "REVOKED"],
    #       created_at: Time.now,
    #       acme_external_account_binding_arn: "AcmeExternalAccountBindingArn",
    #       contacts: ["String"]
    #     }
    #   }
    # @return [Types::DescribeAcmeAccountResponse]
    def describe_acme_account(params = {}, options = {})
      request = build_request(:describe_acme_account, params)
      request.send_request(options)
    end

    # <p>Returns detailed metadata about the specified domain validation, including its status, domain scope, and DNS resource records required for validation.</p>
    # @param [Hash, Types::DescribeAcmeDomainValidationRequest] params
    # @option params [String] :acme_domain_validation_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME domain validation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     acme_domain_validation_arn: "AcmeDomainValidationArn", # required
    #   }
    #   options = {}
    #   response = client.describe_acme_domain_validation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     acme_domain_validation: {
    #       acme_domain_validation_arn: "AcmeDomainValidationArn",
    #       acme_endpoint_arn: "AcmeEndpointArn",
    #       domain_name: "DomainName",
    #       prevalidation_type: "DNS_PREVALIDATION" # One of: ["DNS_PREVALIDATION"],
    #       prevalidation_details: {
    #         # One of:
    #         dns_prevalidation: {
    #           domain_scope: {
    #             exact_domain: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             subdomains: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             wildcards: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           },
    #           hosted_zone_id: "HostedZoneId",
    #           resource_record: {
    #             name: "String", # required
    #             type: "CNAME" # One of: ["CNAME"], # required
    #             value: "String", # required
    #           }
    #         }
    #       },
    #       status: "VALIDATING" # One of: ["VALIDATING", "VALID", "INVALID", "DELETING"],
    #       failure_details: {
    #         reason: "ACCESS_DENIED" # One of: ["ACCESS_DENIED", "DOMAIN_MISMATCH", "DOMAIN_NOT_ALLOWED", "ENDPOINT_NOT_ACTIVE", "HOSTED_ZONE_NOT_FOUND", "INTERNAL_FAILURE", "INVALID_CHANGE_BATCH", "INVALID_PUBLIC_DOMAIN", "TIMED_OUT"],
    #         message: "String"
    #       },
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::DescribeAcmeDomainValidationResponse]
    def describe_acme_domain_validation(params = {}, options = {})
      request = build_request(:describe_acme_domain_validation, params)
      request.send_request(options)
    end

    # <p>Returns detailed metadata about the specified ACME endpoint, including its status, URL, authorization behavior, and certificate authority configuration.</p>
    # @param [Hash, Types::DescribeAcmeEndpointRequest] params
    # @option params [String] :acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     acme_endpoint_arn: "AcmeEndpointArn", # required
    #   }
    #   options = {}
    #   response = client.describe_acme_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     acme_endpoint: {
    #       acme_endpoint_arn: "AcmeEndpointArn",
    #       endpoint_url: "String",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED"],
    #       failure_reason: "String",
    #       authorization_behavior: "PRE_APPROVED" # One of: ["PRE_APPROVED"],
    #       contact: "REQUIRED" # One of: ["REQUIRED", "NOT_REQUIRED"],
    #       certificate_authority: {
    #         # One of:
    #         public_certificate_authority: {
    #           allowed_key_algorithms: ["RSA_2048" # One of: ["RSA_2048", "EC_prime256v1", "EC_secp384r1"]]
    #         }
    #       },
    #       certificate_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ],
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::DescribeAcmeEndpointResponse]
    def describe_acme_endpoint(params = {}, options = {})
      request = build_request(:describe_acme_endpoint, params)
      request.send_request(options)
    end

    # <p>Returns detailed metadata about the specified external account binding, including the associated IAM role, expiration time, and usage history.</p>
    # @param [Hash, Types::DescribeAcmeExternalAccountBindingRequest] params
    # @option params [String] :acme_external_account_binding_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME external account binding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     acme_external_account_binding_arn: "AcmeExternalAccountBindingArn", # required
    #   }
    #   options = {}
    #   response = client.describe_acme_external_account_binding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     external_account_binding: {
    #       acme_external_account_binding_arn: "AcmeExternalAccountBindingArn",
    #       acme_endpoint_arn: "AcmeEndpointArn",
    #       role_arn: "RoleArn",
    #       expires_at: Time.now,
    #       revoked_at: Time.now,
    #       last_used_at: Time.now,
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::DescribeAcmeExternalAccountBindingResponse]
    def describe_acme_external_account_binding(params = {}, options = {})
      request = build_request(:describe_acme_external_account_binding, params)
      request.send_request(options)
    end

    # <p>Returns detailed metadata about the specified ACM certificate.</p> <p>If you have just created a certificate using the <code>RequestCertificate</code> action, there is a delay of several seconds before you can retrieve information about it.</p>
    # @param [Hash, Types::DescribeCertificateRequest] params
    # @option params [String] :certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the ACM certificate. The ARN must have the following form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate: {
    #       certificate_arn: "Arn",
    #       domain_name: "DomainNameString",
    #       subject_alternative_names: ["DomainNameString"],
    #       managed_by: "CLOUDFRONT" # One of: ["CLOUDFRONT"],
    #       domain_validation_options: [
    #         {
    #           domain_name: "DomainNameString", # required
    #           validation_emails: ["String"],
    #           validation_domain: "DomainNameString",
    #           validation_status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "SUCCESS", "FAILED"],
    #           resource_record: {
    #             name: "String", # required
    #             type: "CNAME" # One of: ["CNAME"], # required
    #             value: "String", # required
    #           },
    #           http_redirect: {
    #             redirect_from: "String",
    #             redirect_to: "String"
    #           },
    #           validation_method: "EMAIL" # One of: ["EMAIL", "DNS", "HTTP"]
    #         }
    #       ],
    #       serial: "String",
    #       subject: "String",
    #       issuer: "String",
    #       created_at: Time.now,
    #       issued_at: Time.now,
    #       imported_at: Time.now,
    #       status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED", "FAILED"],
    #       revoked_at: Time.now,
    #       revocation_reason: "UNSPECIFIED" # One of: ["UNSPECIFIED", "KEY_COMPROMISE", "CA_COMPROMISE", "AFFILIATION_CHANGED", "SUPERCEDED", "SUPERSEDED", "CESSATION_OF_OPERATION", "CERTIFICATE_HOLD", "REMOVE_FROM_CRL", "PRIVILEGE_WITHDRAWN", "A_A_COMPROMISE"],
    #       not_before: Time.now,
    #       not_after: Time.now,
    #       key_algorithm: "RSA_1024" # One of: ["RSA_1024", "RSA_2048", "RSA_3072", "RSA_4096", "EC_prime256v1", "EC_secp384r1", "EC_secp521r1"],
    #       signature_algorithm: "String",
    #       in_use_by: ["String"],
    #       failure_reason: "NO_AVAILABLE_CONTACTS" # One of: ["NO_AVAILABLE_CONTACTS", "ADDITIONAL_VERIFICATION_REQUIRED", "DOMAIN_NOT_ALLOWED", "INVALID_PUBLIC_DOMAIN", "DOMAIN_VALIDATION_DENIED", "CAA_ERROR", "PCA_LIMIT_EXCEEDED", "PCA_INVALID_ARN", "PCA_INVALID_STATE", "PCA_REQUEST_FAILED", "PCA_NAME_CONSTRAINTS_VALIDATION", "PCA_RESOURCE_NOT_FOUND", "PCA_INVALID_ARGS", "PCA_INVALID_DURATION", "PCA_ACCESS_DENIED", "SLR_NOT_FOUND", "OTHER"],
    #       type: "IMPORTED" # One of: ["IMPORTED", "AMAZON_ISSUED", "PRIVATE"],
    #       renewal_summary: {
    #         renewal_status: "PENDING_AUTO_RENEWAL" # One of: ["PENDING_AUTO_RENEWAL", "PENDING_VALIDATION", "SUCCESS", "FAILED"], # required
    #         domain_validation_options: [ # required
    #           {
    #             domain_name: "DomainNameString", # required
    #             validation_emails: ["String"],
    #             validation_domain: "DomainNameString",
    #             validation_status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "SUCCESS", "FAILED"],
    #             resource_record: {
    #               name: "String", # required
    #               type: "CNAME" # One of: ["CNAME"], # required
    #               value: "String", # required
    #             },
    #             http_redirect: {
    #               redirect_from: "String",
    #               redirect_to: "String"
    #             },
    #             validation_method: "EMAIL" # One of: ["EMAIL", "DNS", "HTTP"]
    #           }
    #         ],
    #         renewal_status_reason: "NO_AVAILABLE_CONTACTS" # One of: ["NO_AVAILABLE_CONTACTS", "ADDITIONAL_VERIFICATION_REQUIRED", "DOMAIN_NOT_ALLOWED", "INVALID_PUBLIC_DOMAIN", "DOMAIN_VALIDATION_DENIED", "CAA_ERROR", "PCA_LIMIT_EXCEEDED", "PCA_INVALID_ARN", "PCA_INVALID_STATE", "PCA_REQUEST_FAILED", "PCA_NAME_CONSTRAINTS_VALIDATION", "PCA_RESOURCE_NOT_FOUND", "PCA_INVALID_ARGS", "PCA_INVALID_DURATION", "PCA_ACCESS_DENIED", "SLR_NOT_FOUND", "OTHER"],
    #         updated_at: Time.now, # required
    #       },
    #       key_usages: [
    #         {
    #           name: "DIGITAL_SIGNATURE" # One of: ["DIGITAL_SIGNATURE", "NON_REPUDIATION", "KEY_ENCIPHERMENT", "DATA_ENCIPHERMENT", "KEY_AGREEMENT", "CERTIFICATE_SIGNING", "CRL_SIGNING", "ENCIPHER_ONLY", "DECIPHER_ONLY", "ANY", "CUSTOM"]
    #         }
    #       ],
    #       extended_key_usages: [
    #         {
    #           name: "TLS_WEB_SERVER_AUTHENTICATION" # One of: ["TLS_WEB_SERVER_AUTHENTICATION", "TLS_WEB_CLIENT_AUTHENTICATION", "CODE_SIGNING", "EMAIL_PROTECTION", "TIME_STAMPING", "OCSP_SIGNING", "IPSEC_END_SYSTEM", "IPSEC_TUNNEL", "IPSEC_USER", "ANY", "NONE", "CUSTOM"],
    #           oid: "String"
    #         }
    #       ],
    #       certificate_authority_arn: "Arn",
    #       renewal_eligibility: "ELIGIBLE" # One of: ["ELIGIBLE", "INELIGIBLE"],
    #       options: {
    #         certificate_transparency_logging_preference: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         export: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         validation_method: "EMAIL" # One of: ["EMAIL", "DNS", "HTTP"]
    #       },
    #       update_summary: {
    #         status: "PENDING_DOMAIN_VALIDATION" # One of: ["PENDING_DOMAIN_VALIDATION", "SUCCESS", "FAILED"],
    #         type: "DOMAIN_VALIDATION_METHOD" # One of: ["DOMAIN_VALIDATION_METHOD"],
    #         domain_validation_method_update_summary: {
    #           from: "EMAIL" # One of: ["EMAIL", "DNS", "HTTP"],
    #           to: "EMAIL" # One of: ["EMAIL", "DNS", "HTTP"]
    #         },
    #         requested_at: Time.now,
    #         updated_at: Time.now
    #       },
    #       certificate_key_pair_origin: "AWS_MANAGED" # One of: ["AWS_MANAGED", "ACME", "CUSTOMER_PROVIDED"],
    #       acme_endpoint_arn: "Arn",
    #       acme_account_id: "AcmeAccountId"
    #     }
    #   }
    # @return [Types::DescribeCertificateResponse]
    def describe_certificate(params = {}, options = {})
      request = build_request(:describe_certificate, params)
      request.send_request(options)
    end

    # <p>Exports a private certificate issued by a private certificate authority (CA) or a public certificate for use anywhere. The exported file contains the certificate, the certificate chain, and the encrypted private key associated with the public key that is embedded in the certificate. For security, you must assign a passphrase for the private key when exporting it. </p> <p>For information about exporting and formatting a certificate using the ACM console or CLI, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/export-private.html">Export a private certificate</a> and <a href="https://docs.aws.amazon.com/acm/latest/userguide/export-public-certificate">Export a public certificate</a>.</p> <note> <p>ACM public certificates created prior to June 17, 2025 cannot be exported.</p> </note>
    # @param [Hash, Types::ExportCertificateRequest] params
    # @option params [String] :certificate_arn
    #   <p>An Amazon Resource Name (ARN) of the issued certificate. This must be of the form:</p> <p> <code>arn:aws:acm:region:account:certificate/12345678-1234-1234-1234-123456789012</code> </p>
    # @option params [String] :passphrase
    #   <p>Passphrase to associate with the encrypted exported private key. </p> <note> <p>When creating your passphrase, you can use any ASCII character except #, $, or %.</p> </note> <p>If you want to later decrypt the private key, you must have the passphrase. You can use the following OpenSSL command to decrypt a private key. After entering the command, you are prompted for the passphrase.</p> <p> <code>openssl rsa -in encrypted_key.pem -out decrypted_key.pem</code> </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_arn: "Arn", # required
    #     passphrase: "data", # required
    #   }
    #   options = {}
    #   response = client.export_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate: "CertificateBody",
    #     certificate_chain: "CertificateChain",
    #     private_key: "PrivateKey"
    #   }
    # @return [Types::ExportCertificateResponse]
    def export_certificate(params = {}, options = {})
      request = build_request(:export_certificate, params)
      request.send_request(options)
    end

    # <p>Returns the account configuration options associated with an Amazon Web Services account.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     expiry_events: {
    #       days_before_expiry: 1
    #     }
    #   }
    # @return [Types::GetAccountConfigurationResponse]
    def get_account_configuration(params = {}, options = {})
      request = build_request(:get_account_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the key ID and MAC key credentials for an external account binding. These credentials are used by ACME clients during account registration to bind to the endpoint.</p>
    # @param [Hash, Types::GetAcmeExternalAccountBindingCredentialsRequest] params
    # @option params [String] :acme_external_account_binding_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME external account binding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     acme_external_account_binding_arn: "AcmeExternalAccountBindingArn", # required
    #   }
    #   options = {}
    #   response = client.get_acme_external_account_binding_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_id: "String",
    #     mac_key: "MacKey"
    #   }
    # @return [Types::GetAcmeExternalAccountBindingCredentialsResponse]
    def get_acme_external_account_binding_credentials(params = {}, options = {})
      request = build_request(:get_acme_external_account_binding_credentials, params)
      request.send_request(options)
    end

    # <p>Retrieves a certificate and its certificate chain. The certificate may be either a public or private certificate issued using the ACM <code>RequestCertificate</code> action, or a certificate imported into ACM using the <code>ImportCertificate</code> action. The chain consists of the certificate of the issuing CA and the intermediate certificates of any other subordinate CAs. All of the certificates are base64 encoded. You can use <a href="https://wiki.openssl.org/index.php/Command_Line_Utilities">OpenSSL</a> to decode the certificates and inspect individual fields.</p>
    # @param [Hash, Types::GetCertificateRequest] params
    # @option params [String] :certificate_arn
    #   <p>String that contains a certificate ARN in the following format:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate: "CertificateBody",
    #     certificate_chain: "CertificateChain"
    #   }
    # @return [Types::GetCertificateResponse]
    def get_certificate(params = {}, options = {})
      request = build_request(:get_certificate, params)
      request.send_request(options)
    end

    # <p>Imports a certificate into Certificate Manager (ACM) to use with services that are integrated with ACM. Note that <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-services.html">integrated services</a> allow only certificate types and keys they support to be associated with their resources. Further, their support differs depending on whether the certificate is imported into IAM or into ACM. For more information, see the documentation for each service. For more information about importing certificates into ACM, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing Certificates</a> in the <i>Certificate Manager User Guide</i>. </p> <note> <p>ACM does not provide <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for certificates that you import.</p> </note> <p>Note the following guidelines when importing third party certificates:</p> <ul> <li> <p>You must enter the private key that matches the certificate you are importing.</p> </li> <li> <p>The private key must be unencrypted. You cannot import a private key that is protected by a password or a passphrase.</p> </li> <li> <p>The private key must be no larger than 5 KB (5,120 bytes).</p> </li> <li> <p>The certificate, private key, and certificate chain must be PEM-encoded.</p> </li> <li> <p>The current time must be between the <code>Not Before</code> and <code>Not After</code> certificate fields.</p> </li> <li> <p>The <code>Issuer</code> field must not be empty.</p> </li> <li> <p>The OCSP authority URL, if present, must not exceed 1000 characters.</p> </li> <li> <p>To import a new certificate, omit the <code>CertificateArn</code> argument. Include this argument only when you want to replace a previously imported certificate.</p> </li> <li> <p>When you import a certificate by using the CLI, you must specify the certificate, the certificate chain, and the private key by their file names preceded by <code>fileb://</code>. For example, you can specify a certificate saved in the <code>C:\temp</code> folder as <code>fileb://C:\temp\certificate_to_import.pem</code>. If you are making an HTTP or HTTPS Query request, include these arguments as BLOBs. </p> </li> <li> <p>When you import a certificate by using an SDK, you must specify the certificate, the certificate chain, and the private key files in the manner required by the programming language you're using. </p> </li> <li> <p>The cryptographic algorithm of an imported certificate must match the algorithm of the signing CA. For example, if the signing CA key type is RSA, then the certificate key type must also be RSA.</p> </li> </ul> <p>This operation returns the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the imported certificate.</p>
    # @param [Hash, Types::ImportCertificateRequest] params
    # @option params [String] :certificate_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an imported certificate to replace. To import a new certificate, omit this field. </p>
    # @option params [String] :certificate
    #   <p>The certificate to import.</p>
    # @option params [String] :private_key
    #   <p>The private key that matches the public key in the certificate.</p>
    # @option params [String] :certificate_chain
    #   <p>The PEM encoded certificate chain.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more resource tags to associate with the imported certificate. </p> <p>Note: You cannot apply tags when reimporting a certificate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_arn: "Arn",
    #     certificate: "data", # required
    #     private_key: "data", # required
    #     certificate_chain: "data",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.import_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_arn: "Arn"
    #   }
    # @return [Types::ImportCertificateResponse]
    def import_certificate(params = {}, options = {})
      request = build_request(:import_certificate, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of ACME accounts registered with the specified ACME endpoint. ACME accounts are created when clients use external account binding credentials to register.</p>
    # @param [Hash, Types::ListAcmeAccountsRequest] params
    # @option params [String] :next_token
    #   <p>A token for pagination.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     acme_endpoint_arn: "AcmeEndpointArn", # required
    #   }
    #   options = {}
    #   response = client.list_acme_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     acme_accounts: [
    #       {
    #         account_url: "String",
    #         public_key_thumbprint: "String",
    #         status: "VALID" # One of: ["VALID", "DEACTIVATED", "REVOKED"],
    #         created_at: Time.now,
    #         acme_external_account_binding_arn: "AcmeExternalAccountBindingArn",
    #         contacts: ["String"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAcmeAccountsResponse]
    def list_acme_accounts(params = {}, options = {})
      request = build_request(:list_acme_accounts, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of domain validations for the specified ACME endpoint.</p>
    # @param [Hash, Types::ListAcmeDomainValidationsRequest] params
    # @option params [String] :next_token
    #   <p>A token for pagination.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     acme_endpoint_arn: "AcmeEndpointArn", # required
    #   }
    #   options = {}
    #   response = client.list_acme_domain_validations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     acme_domain_validations: [
    #       {
    #         acme_domain_validation_arn: "AcmeDomainValidationArn",
    #         acme_endpoint_arn: "AcmeEndpointArn",
    #         domain_name: "DomainName",
    #         prevalidation_type: "DNS_PREVALIDATION" # One of: ["DNS_PREVALIDATION"],
    #         prevalidation_details: {
    #           # One of:
    #           dns_prevalidation: {
    #             domain_scope: {
    #               exact_domain: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #               subdomains: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #               wildcards: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             },
    #             hosted_zone_id: "HostedZoneId",
    #             resource_record: {
    #               name: "String", # required
    #               type: "CNAME" # One of: ["CNAME"], # required
    #               value: "String", # required
    #             }
    #           }
    #         },
    #         status: "VALIDATING" # One of: ["VALIDATING", "VALID", "INVALID", "DELETING"],
    #         failure_details: {
    #           reason: "ACCESS_DENIED" # One of: ["ACCESS_DENIED", "DOMAIN_MISMATCH", "DOMAIN_NOT_ALLOWED", "ENDPOINT_NOT_ACTIVE", "HOSTED_ZONE_NOT_FOUND", "INTERNAL_FAILURE", "INVALID_CHANGE_BATCH", "INVALID_PUBLIC_DOMAIN", "TIMED_OUT"],
    #           message: "String"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAcmeDomainValidationsResponse]
    def list_acme_domain_validations(params = {}, options = {})
      request = build_request(:list_acme_domain_validations, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of ACME endpoints in your account. Use this operation to view all configured ACME endpoints and their current status.</p>
    # @param [Hash, Types::ListAcmeEndpointsRequest] params
    # @option params [String] :next_token
    #   <p>A token for pagination.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_acme_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     acme_endpoints: [
    #       {
    #         acme_endpoint_arn: "AcmeEndpointArn",
    #         endpoint_url: "String",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED"],
    #         failure_reason: "String",
    #         authorization_behavior: "PRE_APPROVED" # One of: ["PRE_APPROVED"],
    #         contact: "REQUIRED" # One of: ["REQUIRED", "NOT_REQUIRED"],
    #         certificate_authority: {
    #           # One of:
    #           public_certificate_authority: {
    #             allowed_key_algorithms: ["RSA_2048" # One of: ["RSA_2048", "EC_prime256v1", "EC_secp384r1"]]
    #           }
    #         },
    #         certificate_tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ],
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAcmeEndpointsResponse]
    def list_acme_endpoints(params = {}, options = {})
      request = build_request(:list_acme_endpoints, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of external account bindings for the specified ACME endpoint.</p>
    # @param [Hash, Types::ListAcmeExternalAccountBindingsRequest] params
    # @option params [String] :next_token
    #   <p>A token for pagination.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     acme_endpoint_arn: "AcmeEndpointArn", # required
    #   }
    #   options = {}
    #   response = client.list_acme_external_account_bindings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     external_account_bindings: [
    #       {
    #         acme_external_account_binding_arn: "AcmeExternalAccountBindingArn",
    #         acme_endpoint_arn: "AcmeEndpointArn",
    #         role_arn: "RoleArn",
    #         expires_at: Time.now,
    #         revoked_at: Time.now,
    #         last_used_at: Time.now,
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAcmeExternalAccountBindingsResponse]
    def list_acme_external_account_bindings(params = {}, options = {})
      request = build_request(:list_acme_external_account_bindings, params)
      request.send_request(options)
    end

    # <p>Returns per-domain validation summaries for an ACM certificate. Each summary includes the domain name, the active validation configuration, and the requested validation configuration when a validation method migration is in progress. You can use the results to monitor the progress of an email-to-DNS validation migration and to retrieve the CNAME records required for DNS validation.</p>
    # @param [Hash, Types::ListCertificateDomainValidationsRequest] params
    # @option params [String] :certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate for which to list domain validation summaries.</p>
    # @option params [String] :next_token
    #   <p>A token returned by a previous call to <code>ListCertificateDomainValidations</code>. If the number of results exceeds <code>MaxItems</code>, use this token to retrieve the next page of results.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of domain validation summaries to return. If you don't specify a value, the default is 1000.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_arn: "CertificateArn", # required
    #     next_token: "NextToken",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_certificate_domain_validations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_validation_summary_list: [
    #       {
    #         domain_name: "DomainNameString", # required
    #         active_validation_configuration: {
    #           validation_method: "EMAIL" # One of: ["EMAIL", "DNS", "HTTP"],
    #           validation_challenge: {
    #             # One of:
    #             email_validation_challenge: {
    #               validation_emails: ["String"],
    #               validation_domain: "DomainNameString"
    #             },
    #             dns_validation_challenge: {
    #               resource_record: {
    #                 name: "String", # required
    #                 type: "CNAME" # One of: ["CNAME"], # required
    #                 value: "String", # required
    #               }
    #             }
    #           },
    #           validation_status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "SUCCESS", "FAILED"]
    #         },
    #         requested_validation_configuration: {
    #           validation_method: "EMAIL" # One of: ["EMAIL", "DNS", "HTTP"],
    #           validation_challenge: {
    #             # One of:
    #             email_validation_challenge: {
    #               validation_emails: ["String"],
    #               validation_domain: "DomainNameString"
    #             },
    #             dns_validation_challenge: {
    #               resource_record: {
    #                 name: "String", # required
    #                 type: "CNAME" # One of: ["CNAME"], # required
    #                 value: "String", # required
    #               }
    #             }
    #           },
    #           validation_status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "SUCCESS", "FAILED"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCertificateDomainValidationsResponse]
    def list_certificate_domain_validations(params = {}, options = {})
      request = build_request(:list_certificate_domain_validations, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of certificate ARNs and domain names. You can request that only certificates that match a specific status be listed. You can also filter by specific attributes of the certificate. Default filtering returns only <code>RSA_2048</code> certificates. For more information, see <a>Filters</a>.</p> <note> <p>By default, this action does not return certificates with a <code>CertificateKeyPairOrigin</code> of <code>ACME</code>. To include ACME certificates, specify <code>ACME</code> in the <code>CertificateKeyPairOrigins</code> filter.</p> </note>
    # @param [Hash, Types::ListCertificatesRequest] params
    # @option params [Array<String>] :certificate_statuses
    #   <p>Filter the certificate list by status value.</p>
    # @option params [Array<String>] :certificate_key_pair_origins
    #   <p>Filter the certificate list by certificate key pair origin. Specify one or more <code>CertificateKeyPairOrigin</code> values. Default filtering returns only certificates with key pair origin of <code>AWS_MANAGED</code> and <code>CUSTOMER_PROVIDED</code>.</p>
    # @option params [Types::Filters] :includes
    #   <p>Filter the certificate list. For more information, see the <a>Filters</a> structure.</p>
    # @option params [String] :next_token
    #   <p>Use this parameter only when paginating results and only in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextToken</code> from the response you just received.</p>
    # @option params [Integer] :max_items
    #   <p>Use this parameter when paginating results to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the <code>NextToken</code> element is sent in the response. Use this <code>NextToken</code> value in a subsequent request to retrieve additional items.</p>
    # @option params [String] :sort_by
    #   <p>Specifies the field to sort results by. If you specify <code>SortBy</code>, you must also specify <code>SortOrder</code>.</p>
    # @option params [String] :sort_order
    #   <p>Specifies the order of sorted results. If you specify <code>SortOrder</code>, you must also specify <code>SortBy</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_statuses: ["PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED", "FAILED"]],
    #     certificate_key_pair_origins: ["AWS_MANAGED" # One of: ["AWS_MANAGED", "ACME", "CUSTOMER_PROVIDED"]],
    #     includes: {
    #       extended_key_usage: ["TLS_WEB_SERVER_AUTHENTICATION" # One of: ["TLS_WEB_SERVER_AUTHENTICATION", "TLS_WEB_CLIENT_AUTHENTICATION", "CODE_SIGNING", "EMAIL_PROTECTION", "TIME_STAMPING", "OCSP_SIGNING", "IPSEC_END_SYSTEM", "IPSEC_TUNNEL", "IPSEC_USER", "ANY", "NONE", "CUSTOM"]],
    #       key_usage: ["DIGITAL_SIGNATURE" # One of: ["DIGITAL_SIGNATURE", "NON_REPUDIATION", "KEY_ENCIPHERMENT", "DATA_ENCIPHERMENT", "KEY_AGREEMENT", "CERTIFICATE_SIGNING", "CRL_SIGNING", "ENCIPHER_ONLY", "DECIPHER_ONLY", "ANY", "CUSTOM"]],
    #       key_types: ["RSA_1024" # One of: ["RSA_1024", "RSA_2048", "RSA_3072", "RSA_4096", "EC_prime256v1", "EC_secp384r1", "EC_secp521r1"]],
    #       export_option: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       managed_by: "CLOUDFRONT" # One of: ["CLOUDFRONT"]
    #     },
    #     next_token: "NextToken",
    #     max_items: 1,
    #     sort_by: "CREATED_AT" # One of: ["CREATED_AT"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #   }
    #   options = {}
    #   response = client.list_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     certificate_summary_list: [
    #       {
    #         certificate_arn: "Arn",
    #         domain_name: "DomainNameString",
    #         subject_alternative_name_summaries: ["DomainNameString"],
    #         has_additional_subject_alternative_names: false,
    #         status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED", "FAILED"],
    #         type: "IMPORTED" # One of: ["IMPORTED", "AMAZON_ISSUED", "PRIVATE"],
    #         key_algorithm: "RSA_1024" # One of: ["RSA_1024", "RSA_2048", "RSA_3072", "RSA_4096", "EC_prime256v1", "EC_secp384r1", "EC_secp521r1"],
    #         key_usages: ["DIGITAL_SIGNATURE" # One of: ["DIGITAL_SIGNATURE", "NON_REPUDIATION", "KEY_ENCIPHERMENT", "DATA_ENCIPHERMENT", "KEY_AGREEMENT", "CERTIFICATE_SIGNING", "CRL_SIGNING", "ENCIPHER_ONLY", "DECIPHER_ONLY", "ANY", "CUSTOM"]],
    #         extended_key_usages: ["TLS_WEB_SERVER_AUTHENTICATION" # One of: ["TLS_WEB_SERVER_AUTHENTICATION", "TLS_WEB_CLIENT_AUTHENTICATION", "CODE_SIGNING", "EMAIL_PROTECTION", "TIME_STAMPING", "OCSP_SIGNING", "IPSEC_END_SYSTEM", "IPSEC_TUNNEL", "IPSEC_USER", "ANY", "NONE", "CUSTOM"]],
    #         export_option: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         in_use: false,
    #         exported: false,
    #         renewal_eligibility: "ELIGIBLE" # One of: ["ELIGIBLE", "INELIGIBLE"],
    #         not_before: Time.now,
    #         not_after: Time.now,
    #         created_at: Time.now,
    #         issued_at: Time.now,
    #         imported_at: Time.now,
    #         revoked_at: Time.now,
    #         managed_by: "CLOUDFRONT" # One of: ["CLOUDFRONT"],
    #         certificate_key_pair_origin: "AWS_MANAGED" # One of: ["AWS_MANAGED", "ACME", "CUSTOMER_PROVIDED"]
    #       }
    #     ]
    #   }
    # @return [Types::ListCertificatesResponse]
    def list_certificates(params = {}, options = {})
      request = build_request(:list_certificates, params)
      request.send_request(options)
    end

    # <p>Lists the tags that have been applied to the ACM certificate. Use the certificate's Amazon Resource Name (ARN) to specify the certificate. To add a tag to an ACM certificate, use the <a>AddTagsToCertificate</a> action. To delete a tag, use the <a>RemoveTagsFromCertificate</a> action. </p> <note> <p>This action applies only to the <code>certificate</code> resource type. For all other ACM resource types, use <a>ListTagsForResource</a> instead.</p> </note>
    # @param [Hash, Types::ListTagsForCertificateRequest] params
    # @option params [String] :certificate_arn
    #   <p>String that contains the ARN of the ACM certificate for which you want to list the tags. This must have the following form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForCertificateResponse]
    def list_tags_for_certificate(params = {}, options = {})
      request = build_request(:list_tags_for_certificate, params)
      request.send_request(options)
    end

    # <p>Lists the tags associated with an ACM resource.</p> <note> <p>Use this action for all ACM resource types except the <code>certificate</code> resource type. For certificate resources, use <a>ListTagsForCertificate</a> instead.</p> </note> <p>To add one or more tags, use the <a>TagResource</a> action. To remove one or more tags, use the <a>UntagResource</a> action.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the ACM resource for which to list tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Adds or modifies account-level configurations in ACM. </p> <p>The supported configuration option is <code>DaysBeforeExpiry</code>. This option specifies the number of days prior to certificate expiration when ACM starts generating <code>EventBridge</code> events. ACM sends one event per day per certificate until the certificate expires. By default, accounts receive events starting 45 days before certificate expiration.</p>
    # @param [Hash, Types::PutAccountConfigurationRequest] params
    # @option params [Types::ExpiryEventsConfiguration] :expiry_events
    #   <p>Specifies expiration events associated with an account.</p>
    # @option params [String] :idempotency_token
    #   <p>Customer-chosen string used to distinguish between calls to <code>PutAccountConfiguration</code>. Idempotency tokens time out after one hour. If you call <code>PutAccountConfiguration</code> multiple times with the same unexpired idempotency token, ACM treats it as the same request and returns the original result. If you change the idempotency token for each call, ACM treats each call as a new request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     expiry_events: {
    #       days_before_expiry: 1
    #     },
    #     idempotency_token: "IdempotencyToken", # required
    #   }
    #   options = {}
    #   response = client.put_account_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_account_configuration(params = {}, options = {})
      request = build_request(:put_account_configuration, params)
      request.send_request(options)
    end

    # <p>Remove one or more tags from an ACM certificate. A tag consists of a key-value pair. If you do not specify the value portion of the tag when calling this function, the tag will be removed regardless of value. If you specify a value, the tag is removed only if it is associated with the specified value. </p> <note> <p>This action applies only to the <code>certificate</code> resource type. For all other ACM resource types, use <a>UntagResource</a> instead.</p> </note> <p>To add tags to a certificate, use the <a>AddTagsToCertificate</a> action. To view all of the tags that have been applied to a specific ACM certificate, use the <a>ListTagsForCertificate</a> action. </p>
    # @param [Hash, Types::RemoveTagsFromCertificateRequest] params
    # @option params [String] :certificate_arn
    #   <p>String that contains the ARN of the ACM Certificate with one or more tags that you want to remove. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key-value pair that defines the tag to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.remove_tags_from_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_tags_from_certificate(params = {}, options = {})
      request = build_request(:remove_tags_from_certificate, params)
      request.send_request(options)
    end

    # <p>Renews an <a href="https://docs.aws.amazon.com/acm/latest/userguide/managed-renewal.html">eligible ACM certificate</a>. In order to renew your Amazon Web Services Private CA certificates with ACM, you must first <a href="https://docs.aws.amazon.com/privateca/latest/userguide/assign-permissions.html#PcaPermissions">grant the ACM service principal permission to do so</a>. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/managed-renewal.html">Testing Managed Renewal</a> in the ACM User Guide.</p>
    # @param [Hash, Types::RenewCertificateRequest] params
    # @option params [String] :certificate_arn
    #   <p>String that contains the ARN of the ACM certificate to be renewed. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.renew_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def renew_certificate(params = {}, options = {})
      request = build_request(:renew_certificate, params)
      request.send_request(options)
    end

    # <p>Requests an ACM certificate for use with other Amazon Web Services services. To request an ACM certificate, you must specify a fully qualified domain name (FQDN) in the <code>DomainName</code> parameter. You can also specify additional FQDNs in the <code>SubjectAlternativeNames</code> parameter. </p> <p>If you are requesting a private certificate, domain validation is not required. If you are requesting a public certificate, each domain name that you specify must be validated to verify that you own or control the domain. You can use <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html">DNS validation</a> or <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html">email validation</a>. We recommend that you use DNS validation.</p> <note> <p>ACM behavior differs from the <a href="https://datatracker.ietf.org/doc/html/rfc6125#appendix-B.2">RFC 6125</a> specification of the certificate validation process. ACM first checks for a Subject Alternative Name, and, if it finds one, ignores the common name (CN).</p> </note> <p>After successful completion of the <code>RequestCertificate</code> action, there is a delay of several seconds before you can retrieve information about the new certificate.</p>
    # @param [Hash, Types::RequestCertificateRequest] params
    # @option params [String] :domain_name
    #   <p>Fully qualified domain name (FQDN), such as www.example.com, that you want to secure with an ACM certificate. Use an asterisk (*) to create a wildcard certificate that protects several sites in the same domain. For example, *.example.com protects www.example.com, site.example.com, and images.example.com. </p> <p>In compliance with <a href="https://datatracker.ietf.org/doc/html/rfc5280">RFC 5280</a>, the length of the domain name (technically, the Common Name) that you provide cannot exceed 64 octets (characters), including periods. To add a longer domain name, specify it in the Subject Alternative Name field, which supports names up to 253 octets in length. </p>
    # @option params [String] :validation_method
    #   <p>The method you want to use if you are requesting a public certificate to validate that you own or control domain. You can <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html">validate with DNS</a> or <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html">validate with email</a>. We recommend that you use DNS validation. </p>
    # @option params [Array<String>] :subject_alternative_names
    #   <p>Additional FQDNs to be included in the Subject Alternative Name extension of the ACM certificate. For example, add the name www.example.net to a certificate for which the <code>DomainName</code> field is www.example.com if users can reach your site by using either name. The maximum number of domain names that you can add to an ACM certificate is 100. However, the initial quota is 10 domain names. If you need more than 10 names, you must request a quota increase. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html">Quotas</a>.</p> <p> The maximum length of a SAN DNS name is 253 octets. The name is made up of multiple labels separated by periods. No label can be longer than 63 octets. Consider the following examples: </p> <ul> <li> <p> <code>(63 octets).(63 octets).(63 octets).(61 octets)</code> is legal because the total length is 253 octets (63+1+63+1+63+1+61) and no label exceeds 63 octets.</p> </li> <li> <p> <code>(64 octets).(63 octets).(63 octets).(61 octets)</code> is not legal because the total length exceeds 253 octets (64+1+63+1+63+1+61) and the first label exceeds 63 octets.</p> </li> <li> <p> <code>(63 octets).(63 octets).(63 octets).(62 octets)</code> is not legal because the total length of the DNS name (63+1+63+1+63+1+62) exceeds 253 octets.</p> </li> </ul>
    # @option params [String] :idempotency_token
    #   <p>Customer chosen string that can be used to distinguish between calls to <code>RequestCertificate</code>. Idempotency tokens time out after one hour. Therefore, if you call <code>RequestCertificate</code> multiple times with the same idempotency token within one hour, ACM recognizes that you are requesting only one certificate and will issue only one. If you change the idempotency token for each call, ACM recognizes that you are requesting multiple certificates.</p>
    # @option params [Array<Types::DomainValidationOption>] :domain_validation_options
    #   <p>The domain name that you want ACM to use to send you emails so that you can validate domain ownership.</p>
    # @option params [Types::CertificateOptions] :options
    #   <p>You can use this parameter to specify whether to export your certificate.</p> <p>Certificate transparency logging opt-out is no longer available. All public certificates are recorded in a certificate transparency log. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency">Certificate Transparency Logging</a>.</p> <p>You can export public ACM certificates to use with Amazon Web Services services as well as outside the Amazon Web Services Cloud. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-exportable-certificates.html">Certificate Manager exportable public certificate</a>.</p>
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the private certificate authority (CA) that will be used to issue the certificate. If you do not provide an ARN and you are trying to request a private certificate, ACM will attempt to issue a public certificate. For more information about private CAs, see the <a href="https://docs.aws.amazon.com/privateca/latest/userguide/PcaWelcome.html">Amazon Web Services Private Certificate Authority</a> user guide. The ARN must have the following form: </p> <p> <code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code> </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more resource tags to associate with the certificate.</p>
    # @option params [String] :key_algorithm
    #   <p>Specifies the algorithm of the public and private key pair that your certificate uses to encrypt data. RSA is the default key algorithm for ACM certificates. Elliptic Curve Digital Signature Algorithm (ECDSA) keys are smaller, offering security comparable to RSA keys but with greater computing efficiency. However, ECDSA is not supported by all network clients. Some Amazon Web Services services may require RSA keys, or only support ECDSA keys of a particular size, while others allow the use of either RSA and ECDSA keys to ensure that compatibility is not broken. Check the requirements for the Amazon Web Services service where you plan to deploy your certificate. For more information about selecting an algorithm, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-certificate-characteristics.html#algorithms-term">Key algorithms</a>.</p> <note> <p>Algorithms supported for an ACM certificate request include: </p> <ul> <li> <p> <code>RSA_2048</code> </p> </li> <li> <p> <code>EC_prime256v1</code> </p> </li> <li> <p> <code>EC_secp384r1</code> </p> </li> </ul> <p>Other listed algorithms are for imported certificates only. </p> </note> <note> <p>When you request a private PKI certificate signed by a CA from Amazon Web Services Private CA, the specified signing algorithm family (RSA or ECDSA) must match the algorithm family of the CA's secret key.</p> </note> <p>Default: RSA_2048</p>
    # @option params [String] :managed_by
    #   <p>Identifies the Amazon Web Services service that manages the certificate issued by ACM.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainNameString", # required
    #     validation_method: "EMAIL" # One of: ["EMAIL", "DNS", "HTTP"],
    #     subject_alternative_names: ["DomainNameString"],
    #     idempotency_token: "IdempotencyToken",
    #     domain_validation_options: [
    #       {
    #         domain_name: "DomainNameString", # required
    #         validation_domain: "DomainNameString", # required
    #       }
    #     ],
    #     options: {
    #       certificate_transparency_logging_preference: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       export: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       validation_method: "EMAIL" # One of: ["EMAIL", "DNS", "HTTP"]
    #     },
    #     certificate_authority_arn: "PcaArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     key_algorithm: "RSA_1024" # One of: ["RSA_1024", "RSA_2048", "RSA_3072", "RSA_4096", "EC_prime256v1", "EC_secp384r1", "EC_secp521r1"],
    #     managed_by: "CLOUDFRONT" # One of: ["CLOUDFRONT"]
    #   }
    #   options = {}
    #   response = client.request_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_arn: "Arn"
    #   }
    # @return [Types::RequestCertificateResponse]
    def request_certificate(params = {}, options = {})
      request = build_request(:request_certificate, params)
      request.send_request(options)
    end

    # <p>Resends the email that requests domain ownership validation. The domain owner or an authorized representative must approve the ACM certificate before it can be issued. The certificate can be approved by clicking a link in the mail to navigate to the Amazon certificate approval website and then clicking <b>I Approve</b>. However, the validation email can be blocked by spam filters. Therefore, if you do not receive the original mail, you can request that the mail be resent within 72 hours of requesting the ACM certificate. If more than 72 hours have elapsed since your original request or since your last attempt to resend validation mail, you must request a new certificate. For more information about setting up your contact email addresses, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/setup-email.html">Configure Email for your Domain</a>. </p>
    # @param [Hash, Types::ResendValidationEmailRequest] params
    # @option params [String] :certificate_arn
    #   <p>String that contains the ARN of the requested certificate. The certificate ARN is generated and returned by the <a>RequestCertificate</a> action as soon as the request is made. By default, using this parameter causes email to be sent to all top-level domains you specified in the certificate request. The ARN must be of the form: </p> <p> <code>arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p>
    # @option params [String] :domain
    #   <p>The fully qualified domain name (FQDN) of the certificate that needs to be validated.</p>
    # @option params [String] :validation_domain
    #   <p>The base validation domain that will act as the suffix of the email addresses that are used to send the emails. This must be the same as the <code>Domain</code> value or a superdomain of the <code>Domain</code> value. For example, if you requested a certificate for <code>site.subdomain.example.com</code> and specify a <b>ValidationDomain</b> of <code>subdomain.example.com</code>, ACM sends email to the the following five addresses:</p> <ul> <li> <p>admin@subdomain.example.com</p> </li> <li> <p>administrator@subdomain.example.com</p> </li> <li> <p>hostmaster@subdomain.example.com</p> </li> <li> <p>postmaster@subdomain.example.com</p> </li> <li> <p>webmaster@subdomain.example.com</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_arn: "Arn", # required
    #     domain: "DomainNameString", # required
    #     validation_domain: "DomainNameString", # required
    #   }
    #   options = {}
    #   response = client.resend_validation_email(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def resend_validation_email(params = {}, options = {})
      request = build_request(:resend_validation_email, params)
      request.send_request(options)
    end

    # <p>Revokes an ACME account, preventing it from requesting or revoking certificates. This operation is irreversible.</p>
    # @param [Hash, Types::RevokeAcmeAccountRequest] params
    # @option params [String] :acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    # @option params [String] :account_url
    #   <p>The URL of the ACME account to revoke.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     acme_endpoint_arn: "AcmeEndpointArn", # required
    #     account_url: "String", # required
    #   }
    #   options = {}
    #   response = client.revoke_acme_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def revoke_acme_account(params = {}, options = {})
      request = build_request(:revoke_acme_account, params)
      request.send_request(options)
    end

    # <p>Revokes an external account binding, preventing new ACME accounts from being registered using this binding. Existing ACME accounts that were previously registered using the binding are not affected and must be revoked separately.</p>
    # @param [Hash, Types::RevokeAcmeExternalAccountBindingRequest] params
    # @option params [String] :acme_external_account_binding_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME external account binding to revoke.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     acme_external_account_binding_arn: "AcmeExternalAccountBindingArn", # required
    #   }
    #   options = {}
    #   response = client.revoke_acme_external_account_binding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def revoke_acme_external_account_binding(params = {}, options = {})
      request = build_request(:revoke_acme_external_account_binding, params)
      request.send_request(options)
    end

    # <p>Revokes a public ACM certificate. You can only revoke certificates that have been previously exported.</p> <important> <p>Once a certificate is revoked, you cannot reuse the certificate. Revoking a certificate is permanent.</p> </important>
    # @param [Hash, Types::RevokeCertificateRequest] params
    # @option params [String] :certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the public or private certificate that will be revoked. The ARN must have the following form: </p> <p> <code>arn:aws:acm:region:account:certificate/12345678-1234-1234-1234-123456789012</code> </p>
    # @option params [String] :revocation_reason
    #   <p>Specifies why you revoked the certificate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_arn: "Arn", # required
    #     revocation_reason: "UNSPECIFIED" # One of: ["UNSPECIFIED", "KEY_COMPROMISE", "CA_COMPROMISE", "AFFILIATION_CHANGED", "SUPERCEDED", "SUPERSEDED", "CESSATION_OF_OPERATION", "CERTIFICATE_HOLD", "REMOVE_FROM_CRL", "PRIVILEGE_WITHDRAWN", "A_A_COMPROMISE"], # required
    #   }
    #   options = {}
    #   response = client.revoke_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_arn: "Arn"
    #   }
    # @return [Types::RevokeCertificateResponse]
    def revoke_certificate(params = {}, options = {})
      request = build_request(:revoke_certificate, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of certificates matching search criteria. You can filter certificates by X.509 attributes and ACM specific properties like certificate status, type and renewal eligibility. This operation provides more flexible filtering than <a>ListCertificates</a> by supporting complex filter statements.</p>
    # @param [Hash, Types::SearchCertificatesRequest] params
    # @option params [Types::CertificateFilterStatement] :filter_statement
    #   <p>A filter statement that defines the search criteria. You can combine multiple filters using AND, OR, and NOT logical operators to create complex queries.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. Default is 100.</p>
    # @option params [String] :next_token
    #   <p>Use this parameter only when paginating results and only in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextToken</code> from the response you just received.</p>
    # @option params [String] :sort_by
    #   <p>Specifies the field to sort results by. Valid values are CREATED_AT, NOT_AFTER, STATUS, RENEWAL_STATUS, EXPORTED, IN_USE, NOT_BEFORE, KEY_ALGORITHM, TYPE, CERTIFICATE_ARN, COMMON_NAME, REVOKED_AT, RENEWAL_ELIGIBILITY, ISSUED_AT, MANAGED_BY, EXPORT_OPTION, VALIDATION_METHOD, and IMPORTED_AT.</p>
    # @option params [String] :sort_order
    #   <p>Specifies the order of sorted results. Valid values are ASCENDING or DESCENDING.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_statement: {
    #       # One of:
    #       and: [{
    #         # recursive CertificateFilterStatement
    #       }],
    #       or: [{
    #         # recursive CertificateFilterStatement
    #       }],
    #       not: {
    #         # recursive CertificateFilterStatement
    #       },
    #       filter: {
    #         # One of:
    #         certificate_arn: "Arn",
    #         x509_attribute_filter: {
    #           # One of:
    #           subject: {
    #             # One of:
    #             common_name: {
    #               value: "FilterString", # required
    #               comparison_operator: "CONTAINS" # One of: ["CONTAINS", "EQUALS"], # required
    #             }
    #           },
    #           subject_alternative_name: {
    #             # One of:
    #             dns_name: {
    #               value: "FilterString", # required
    #               comparison_operator: "CONTAINS" # One of: ["CONTAINS", "EQUALS"], # required
    #             }
    #           },
    #           extended_key_usage: "TLS_WEB_SERVER_AUTHENTICATION" # One of: ["TLS_WEB_SERVER_AUTHENTICATION", "TLS_WEB_CLIENT_AUTHENTICATION", "CODE_SIGNING", "EMAIL_PROTECTION", "TIME_STAMPING", "OCSP_SIGNING", "IPSEC_END_SYSTEM", "IPSEC_TUNNEL", "IPSEC_USER", "ANY", "NONE", "CUSTOM"],
    #           key_usage: "DIGITAL_SIGNATURE" # One of: ["DIGITAL_SIGNATURE", "NON_REPUDIATION", "KEY_ENCIPHERMENT", "DATA_ENCIPHERMENT", "KEY_AGREEMENT", "CERTIFICATE_SIGNING", "CRL_SIGNING", "ENCIPHER_ONLY", "DECIPHER_ONLY", "ANY", "CUSTOM"],
    #           key_algorithm: "RSA_1024" # One of: ["RSA_1024", "RSA_2048", "RSA_3072", "RSA_4096", "EC_prime256v1", "EC_secp384r1", "EC_secp521r1"],
    #           serial_number: "SerialNumber",
    #           not_after: {
    #             start: Time.now,
    #             end: Time.now
    #           },
    #           not_before: {
    #             start: Time.now,
    #             end: Time.now
    #           }
    #         },
    #         acm_certificate_metadata_filter: {
    #           # One of:
    #           status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED", "FAILED"],
    #           renewal_status: "PENDING_AUTO_RENEWAL" # One of: ["PENDING_AUTO_RENEWAL", "PENDING_VALIDATION", "SUCCESS", "FAILED"],
    #           type: "IMPORTED" # One of: ["IMPORTED", "AMAZON_ISSUED", "PRIVATE"],
    #           in_use: false,
    #           exported: false,
    #           export_option: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           managed_by: "CLOUDFRONT" # One of: ["CLOUDFRONT"],
    #           validation_method: "EMAIL" # One of: ["EMAIL", "DNS", "HTTP"],
    #           certificate_key_pair_origin: "AWS_MANAGED" # One of: ["AWS_MANAGED", "ACME", "CUSTOMER_PROVIDED"],
    #           acme_endpoint_arn: "Arn",
    #           acme_account_id: "AcmeAccountId"
    #         }
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort_by: "CREATED_AT" # One of: ["CREATED_AT", "NOT_AFTER", "STATUS", "RENEWAL_STATUS", "EXPORTED", "IN_USE", "NOT_BEFORE", "KEY_ALGORITHM", "TYPE", "CERTIFICATE_ARN", "COMMON_NAME", "REVOKED_AT", "RENEWAL_ELIGIBILITY", "ISSUED_AT", "MANAGED_BY", "EXPORT_OPTION", "VALIDATION_METHOD", "IMPORTED_AT", "ACME_ENDPOINT_ARN", "ACME_ACCOUNT_ID", "CERTIFICATE_KEY_PAIR_ORIGIN"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #   }
    #   options = {}
    #   response = client.search_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         certificate_arn: "Arn",
    #         x509_attributes: {
    #           issuer: {
    #             common_name: "String",
    #             domain_components: ["String"],
    #             country: "String",
    #             custom_attributes: [
    #               {
    #                 object_identifier: "String",
    #                 value: "String"
    #               }
    #             ],
    #             distinguished_name_qualifier: "String",
    #             generation_qualifier: "String",
    #             given_name: "String",
    #             initials: "String",
    #             locality: "String",
    #             organization: "String",
    #             organizational_unit: "String",
    #             pseudonym: "String",
    #             serial_number: "String",
    #             state: "String",
    #             surname: "String",
    #             title: "String"
    #           },
    #           subject: {
    #             common_name: "String",
    #             domain_components: ["String"],
    #             country: "String",
    #             custom_attributes: [
    #               {
    #                 object_identifier: "String",
    #                 value: "String"
    #               }
    #             ],
    #             distinguished_name_qualifier: "String",
    #             generation_qualifier: "String",
    #             given_name: "String",
    #             initials: "String",
    #             locality: "String",
    #             organization: "String",
    #             organizational_unit: "String",
    #             pseudonym: "String",
    #             serial_number: "String",
    #             state: "String",
    #             surname: "String",
    #             title: "String"
    #           },
    #           subject_alternative_names: [{
    #             # One of:
    #             directory_name: {
    #               common_name: "String",
    #               domain_components: ["String"],
    #               country: "String",
    #               custom_attributes: [
    #                 {
    #                   object_identifier: "String",
    #                   value: "String"
    #                 }
    #               ],
    #               distinguished_name_qualifier: "String",
    #               generation_qualifier: "String",
    #               given_name: "String",
    #               initials: "String",
    #               locality: "String",
    #               organization: "String",
    #               organizational_unit: "String",
    #               pseudonym: "String",
    #               serial_number: "String",
    #               state: "String",
    #               surname: "String",
    #               title: "String"
    #             },
    #             dns_name: "String",
    #             ip_address: "String",
    #             other_name: {
    #               object_identifier: "String",
    #               value: "String"
    #             },
    #             registered_id: "String",
    #             rfc822_name: "String",
    #             uniform_resource_identifier: "String"
    #           }],
    #           extended_key_usages: ["TLS_WEB_SERVER_AUTHENTICATION" # One of: ["TLS_WEB_SERVER_AUTHENTICATION", "TLS_WEB_CLIENT_AUTHENTICATION", "CODE_SIGNING", "EMAIL_PROTECTION", "TIME_STAMPING", "OCSP_SIGNING", "IPSEC_END_SYSTEM", "IPSEC_TUNNEL", "IPSEC_USER", "ANY", "NONE", "CUSTOM"]],
    #           key_algorithm: "RSA_1024" # One of: ["RSA_1024", "RSA_2048", "RSA_3072", "RSA_4096", "EC_prime256v1", "EC_secp384r1", "EC_secp521r1"],
    #           key_usages: ["DIGITAL_SIGNATURE" # One of: ["DIGITAL_SIGNATURE", "NON_REPUDIATION", "KEY_ENCIPHERMENT", "DATA_ENCIPHERMENT", "KEY_AGREEMENT", "CERTIFICATE_SIGNING", "CRL_SIGNING", "ENCIPHER_ONLY", "DECIPHER_ONLY", "ANY", "CUSTOM"]],
    #           serial_number: "SerialNumber",
    #           not_after: Time.now,
    #           not_before: Time.now
    #         },
    #         certificate_metadata: {
    #           # One of:
    #           acm_certificate_metadata: {
    #             created_at: Time.now,
    #             exported: false,
    #             imported_at: Time.now,
    #             in_use: false,
    #             issued_at: Time.now,
    #             renewal_eligibility: "ELIGIBLE" # One of: ["ELIGIBLE", "INELIGIBLE"],
    #             revoked_at: Time.now,
    #             status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED", "FAILED"],
    #             renewal_status: "PENDING_AUTO_RENEWAL" # One of: ["PENDING_AUTO_RENEWAL", "PENDING_VALIDATION", "SUCCESS", "FAILED"],
    #             type: "IMPORTED" # One of: ["IMPORTED", "AMAZON_ISSUED", "PRIVATE"],
    #             export_option: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             managed_by: "CLOUDFRONT" # One of: ["CLOUDFRONT"],
    #             validation_method: "EMAIL" # One of: ["EMAIL", "DNS", "HTTP"],
    #             certificate_key_pair_origin: "AWS_MANAGED" # One of: ["AWS_MANAGED", "ACME", "CUSTOMER_PROVIDED"],
    #             acme_endpoint_arn: "Arn",
    #             acme_account_id: "AcmeAccountId"
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::SearchCertificatesResponse]
    def search_certificates(params = {}, options = {})
      request = build_request(:search_certificates, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to an ACM resource. Tags are labels that you can use to identify and organize your Amazon Web Services resources. Each tag consists of a <code>key</code> and an optional <code>value</code>.</p> <note> <p>Use this action for all ACM resource types except the <code>certificate</code> resource type. For certificate resources, use <a>AddTagsToCertificate</a> instead.</p> </note> <p>To remove one or more tags, use the <a>UntagResource</a> action. To view all of the tags that have been applied to a resource, use the <a>ListTagsForResource</a> action.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the ACM resource to which the tag is to be applied.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key-value pair that defines the tag to apply.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
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

    # <p>Removes one or more tags from an ACM resource.</p> <note> <p>Use this action for all ACM resource types except the <code>certificate</code> resource type. For certificate resources, use <a>RemoveTagsFromCertificate</a> instead.</p> </note> <p>To add one or more tags, use the <a>TagResource</a> action. To view all of the tags that have been applied to a resource, use the <a>ListTagsForResource</a> action.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the ACM resource from which the tag is to be removed.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The key of each tag to remove.</p>
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
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the prevalidation configuration of an existing domain validation.</p>
    # @param [Hash, Types::UpdateAcmeDomainValidationRequest] params
    # @option params [String] :acme_domain_validation_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME domain validation to update.</p>
    # @option params [Types::PrevalidationOptions] :prevalidation_options
    #   <p>The updated prevalidation options.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     acme_domain_validation_arn: "AcmeDomainValidationArn", # required
    #     prevalidation_options: {
    #       # One of:
    #       dns_prevalidation: {
    #         domain_scope: {
    #           exact_domain: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           subdomains: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           wildcards: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         hosted_zone_id: "HostedZoneId"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_acme_domain_validation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_acme_domain_validation(params = {}, options = {})
      request = build_request(:update_acme_domain_validation, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing ACME endpoint. You can change the authorization behavior, contact requirement, or certificate authority settings.</p>
    # @param [Hash, Types::UpdateAcmeEndpointRequest] params
    # @option params [String] :acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint to update.</p>
    # @option params [String] :authorization_behavior
    #   <p>The updated authorization behavior.</p>
    # @option params [String] :contact
    #   <p>The updated contact requirement.</p>
    # @option params [Types::CertificateAuthority] :certificate_authority
    #   <p>The updated certificate authority configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     acme_endpoint_arn: "AcmeEndpointArn", # required
    #     authorization_behavior: "PRE_APPROVED" # One of: ["PRE_APPROVED"],
    #     contact: "REQUIRED" # One of: ["REQUIRED", "NOT_REQUIRED"],
    #     certificate_authority: {
    #       # One of:
    #       public_certificate_authority: {
    #         allowed_key_algorithms: ["RSA_2048" # One of: ["RSA_2048", "EC_prime256v1", "EC_secp384r1"]]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_acme_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_acme_endpoint(params = {}, options = {})
      request = build_request(:update_acme_endpoint, params)
      request.send_request(options)
    end

    # <p>Updates certificate options. You can use this operation to change the domain validation method or specify whether to export your certificate. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/email-to-dns-migration.html">Migrate from email to DNS validation</a> and <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-exportable-certificates.html">Certificate Manager Exportable Managed Certificates</a>.</p>
    # @param [Hash, Types::UpdateCertificateOptionsRequest] params
    # @option params [String] :certificate_arn
    #   <p>ARN of the requested certificate to update. This must be of the form:</p> <p> <code>arn:aws:acm:us-east-1:<i>account</i>:certificate/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
    # @option params [Types::CertificateOptions] :options
    #   <p>Use to update the options for your certificate. Currently, you can change the domain validation method or specify whether to export your certificate. For more information about migrating from email to DNS validation, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/email-to-dns-migration.html">Migrate from email to DNS validation</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_arn: "Arn", # required
    #     options: { # required
    #       certificate_transparency_logging_preference: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       export: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       validation_method: "EMAIL" # One of: ["EMAIL", "DNS", "HTTP"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_certificate_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_certificate_options(params = {}, options = {})
      request = build_request(:update_certificate_options, params)
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
      context[:gem_name] = 'aws-sdk-acm'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        acme_domain_validation_deleted: Waiters::AcmeDomainValidationDeleted,
        acme_domain_validation_validated: Waiters::AcmeDomainValidationValidated,
        acme_endpoint_active: Waiters::AcmeEndpointActive,
        acme_endpoint_deleted: Waiters::AcmeEndpointDeleted,
        certificate_validated: Waiters::CertificateValidated
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
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
