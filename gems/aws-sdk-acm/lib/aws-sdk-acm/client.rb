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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ACM::EndpointProvider)
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

    # <p>Adds one or more tags to an ACM certificate. Tags are labels that you can use to identify and organize your Amazon Web Services resources. Each tag consists of a <code>key</code> and an optional <code>value</code>. You specify the certificate on input by its Amazon Resource Name (ARN). You specify the tag by using a key-value pair. </p> <p>You can apply a tag to just one certificate if you want to identify a specific characteristic of that certificate, or you can apply the same tag to multiple certificates if you want to filter for a common relationship among those certificates. Similarly, you can apply the same tag to multiple resources if you want to specify a relationship among those resources. For example, you can add the same tag to an ACM certificate and an Elastic Load Balancing load balancer to indicate that they are both used by the same website. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/tags.html">Tagging ACM certificates</a>. </p> <p>To remove one or more tags, use the <a>RemoveTagsFromCertificate</a> action. To view all of the tags that have been applied to the certificate, use the <a>ListTagsForCertificate</a> action. </p>
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

    # <p>Deletes a certificate and its associated private key. If this action succeeds, the certificate no longer appears in the list that can be displayed by calling the <a>ListCertificates</a> action or be retrieved by calling the <a>GetCertificate</a> action. The certificate will not be available for use by Amazon Web Services services integrated with ACM. </p> <note> <p>You cannot delete an ACM certificate that is being used by another Amazon Web Services service. To delete a certificate that is in use, the certificate association must first be removed.</p> </note>
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
    #         export: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     }
    #   }
    # @return [Types::DescribeCertificateResponse]
    def describe_certificate(params = {}, options = {})
      request = build_request(:describe_certificate, params)
      request.send_request(options)
    end

    # <p>Exports a private certificate issued by a private certificate authority (CA) or public certificate for use anywhere. The exported file contains the certificate, the certificate chain, and the encrypted private key associated with the public key that is embedded in the certificate. For security, you must assign a passphrase for the private key when exporting it. </p> <p>For information about exporting and formatting a certificate using the ACM console or CLI, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/export-private.html">Export a private certificate</a> and <a href="https://docs.aws.amazon.com/acm/latest/userguide/export-public-certificate">Export a public certificate</a>.</p>
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

    # <p>Retrieves a list of certificate ARNs and domain names. You can request that only certificates that match a specific status be listed. You can also filter by specific attributes of the certificate. Default filtering returns only <code>RSA_2048</code> certificates. For more information, see <a>Filters</a>.</p>
    # @param [Hash, Types::ListCertificatesRequest] params
    # @option params [Array<String>] :certificate_statuses
    #   <p>Filter the certificate list by status value.</p>
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
    #         managed_by: "CLOUDFRONT" # One of: ["CLOUDFRONT"]
    #       }
    #     ]
    #   }
    # @return [Types::ListCertificatesResponse]
    def list_certificates(params = {}, options = {})
      request = build_request(:list_certificates, params)
      request.send_request(options)
    end

    # <p>Lists the tags that have been applied to the ACM certificate. Use the certificate's Amazon Resource Name (ARN) to specify the certificate. To add a tag to an ACM certificate, use the <a>AddTagsToCertificate</a> action. To delete a tag, use the <a>RemoveTagsFromCertificate</a> action. </p>
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

    # <p>Remove one or more tags from an ACM certificate. A tag consists of a key-value pair. If you do not specify the value portion of the tag when calling this function, the tag will be removed regardless of value. If you specify a value, the tag is removed only if it is associated with the specified value. </p> <p>To add tags to a certificate, use the <a>AddTagsToCertificate</a> action. To view all of the tags that have been applied to a specific ACM certificate, use the <a>ListTagsForCertificate</a> action. </p>
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

    # <p>Renews an <a href="https://docs.aws.amazon.com/acm/latest/userguide/managed-renewal.html">eligible ACM certificate</a>. In order to renew your Amazon Web Services Private CA certificates with ACM, you must first <a href="https://docs.aws.amazon.com/privateca/latest/userguide/PcaPermissions.html">grant the ACM service principal permission to do so</a>. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/manual-renewal.html">Testing Managed Renewal</a> in the ACM User Guide.</p>
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
    #   <p>You can use this parameter to specify whether to add the certificate to a certificate transparency log and export your certificate.</p> <p>Certificate transparency makes it possible to detect SSL/TLS certificates that have been mistakenly or maliciously issued. Certificates that have not been logged typically produce an error message in a browser. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency">Opting Out of Certificate Transparency Logging</a>.</p> <p>You can export public ACM certificates to use with Amazon Web Services services as well as outside the Amazon Web Services Cloud. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-exportable-certificates.html">Certificate Manager exportable public certificate</a>.</p>
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the private certificate authority (CA) that will be used to issue the certificate. If you do not provide an ARN and you are trying to request a private certificate, ACM will attempt to issue a public certificate. For more information about private CAs, see the <a href="https://docs.aws.amazon.com/privateca/latest/userguide/PcaWelcome.html">Amazon Web Services Private Certificate Authority</a> user guide. The ARN must have the following form: </p> <p> <code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code> </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more resource tags to associate with the certificate.</p>
    # @option params [String] :key_algorithm
    #   <p>Specifies the algorithm of the public and private key pair that your certificate uses to encrypt data. RSA is the default key algorithm for ACM certificates. Elliptic Curve Digital Signature Algorithm (ECDSA) keys are smaller, offering security comparable to RSA keys but with greater computing efficiency. However, ECDSA is not supported by all network clients. Some Amazon Web Services services may require RSA keys, or only support ECDSA keys of a particular size, while others allow the use of either RSA and ECDSA keys to ensure that compatibility is not broken. Check the requirements for the Amazon Web Services service where you plan to deploy your certificate. For more information about selecting an algorithm, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-certificate.html#algorithms">Key algorithms</a>.</p> <note> <p>Algorithms supported for an ACM certificate request include: </p> <ul> <li> <p> <code>RSA_2048</code> </p> </li> <li> <p> <code>EC_prime256v1</code> </p> </li> <li> <p> <code>EC_secp384r1</code> </p> </li> </ul> <p>Other listed algorithms are for imported certificates only. </p> </note> <note> <p>When you request a private PKI certificate signed by a CA from Amazon Web Services Private CA, the specified signing algorithm family (RSA or ECDSA) must match the algorithm family of the CA's secret key.</p> </note> <p>Default: RSA_2048</p>
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
    #       export: "ENABLED" # One of: ["ENABLED", "DISABLED"]
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
    #   <p>The base validation domain that will act as the suffix of the email addresses that are used to send the emails. This must be the same as the <code>Domain</code> value or a superdomain of the <code>Domain</code> value. For example, if you requested a certificate for <code>site.subdomain.example.com</code> and specify a <b>ValidationDomain</b> of <code>subdomain.example.com</code>, ACM sends email to the domain registrant, technical contact, and administrative contact in WHOIS and the following five addresses:</p> <ul> <li> <p>admin@subdomain.example.com</p> </li> <li> <p>administrator@subdomain.example.com</p> </li> <li> <p>hostmaster@subdomain.example.com</p> </li> <li> <p>postmaster@subdomain.example.com</p> </li> <li> <p>webmaster@subdomain.example.com</p> </li> </ul>
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

    # <p>Revokes a public ACM certificate. You can only revoke certificates that have been previously exported.</p>
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

    # <p>Updates a certificate. You can use this function to specify whether to opt in to or out of recording your certificate in a certificate transparency log and exporting. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency"> Opting Out of Certificate Transparency Logging</a> and <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-exportable-certificates.html">Certificate Manager Exportable Managed Certificates</a>.</p>
    # @param [Hash, Types::UpdateCertificateOptionsRequest] params
    # @option params [String] :certificate_arn
    #   <p>ARN of the requested certificate to update. This must be of the form:</p> <p> <code>arn:aws:acm:us-east-1:<i>account</i>:certificate/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
    # @option params [Types::CertificateOptions] :options
    #   <p>Use to update the options for your certificate. Currently, you can specify whether to add your certificate to a transparency log or export your certificate. Certificate transparency makes it possible to detect SSL/TLS certificates that have been mistakenly or maliciously issued. Certificates that have not been logged typically produce an error message in a browser. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_arn: "Arn", # required
    #     options: { # required
    #       certificate_transparency_logging_preference: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       export: "ENABLED" # One of: ["ENABLED", "DISABLED"]
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
