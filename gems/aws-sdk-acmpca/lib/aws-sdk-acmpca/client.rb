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
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::ACMPCA
  # An API client for Aws::ACMPCA.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ACMPrivateCA

    add_plugin(::Aws::ACMPCA::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

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
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::ACMPCA::EndpointProvider] :endpoint_provider
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

    # <p>Creates a root or subordinate private certificate authority (CA). You must specify the CA configuration, an optional configuration for Online Certificate Status Protocol (OCSP) and/or a certificate revocation list (CRL), the CA type, and an optional idempotency token to avoid accidental creation of multiple CAs. The CA configuration specifies the name of the algorithm and key size to be used to create the CA private key, the type of signing algorithm that the CA uses, and X.500 subject information. The OCSP configuration can optionally specify a custom URL for the OCSP responder. The CRL configuration specifies the CRL expiration period in days (the validity period of the CRL), the Amazon S3 bucket that will contain the CRL, and a CNAME alias for the S3 bucket that is included in certificates issued by the CA. If successful, this action returns the Amazon Resource Name (ARN) of the CA.</p> <note> <p>Both Amazon Web Services Private CA and the IAM principal must have permission to write to the S3 bucket that you specify. If the IAM principal making the call does not have permission to write to the bucket, then an exception is thrown. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies">Access policies for CRLs in Amazon S3</a>.</p> </note> <p>Amazon Web Services Private CA assets that are stored in Amazon S3 can be protected with encryption. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#crl-encryption">Encrypting Your CRLs</a>.</p>
    # @param [Hash, Types::CreateCertificateAuthorityRequest] params
    # @option params [Types::CertificateAuthorityConfiguration] :certificate_authority_configuration
    #   <p>Name and bit size of the private key algorithm, the name of the signing algorithm, and X.500 certificate subject information.</p>
    # @option params [Types::RevocationConfiguration] :revocation_configuration
    #   <p>Contains information to enable support for Online Certificate Status Protocol (OCSP), certificate revocation list (CRL), both protocols, or neither. By default, both certificate validation mechanisms are disabled.</p> <p>The following requirements apply to revocation configurations.</p> <ul> <li> <p>A configuration disabling CRLs or OCSP must contain only the <code>Enabled=False</code> parameter, and will fail if other parameters such as <code>CustomCname</code> or <code>ExpirationInDays</code> are included.</p> </li> <li> <p>In a CRL configuration, the <code>S3BucketName</code> parameter must conform to <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html">Amazon S3 bucket naming rules</a>.</p> </li> <li> <p>A configuration containing a custom Canonical Name (CNAME) parameter for CRLs or OCSP must conform to <a href="https://www.ietf.org/rfc/rfc2396.txt">RFC2396</a> restrictions on the use of special characters in a CNAME. </p> </li> <li> <p>In a CRL or OCSP configuration, the value of a CNAME parameter must not include a protocol prefix such as "http://" or "https://".</p> </li> </ul> <p> For more information, see the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_OcspConfiguration.html">OcspConfiguration</a> and <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html">CrlConfiguration</a> types.</p>
    # @option params [String] :certificate_authority_type
    #   <p>The type of the certificate authority.</p>
    # @option params [String] :idempotency_token
    #   <p>Custom string that can be used to distinguish between calls to the <b>CreateCertificateAuthority</b> action. Idempotency tokens for <b>CreateCertificateAuthority</b> time out after five minutes. Therefore, if you call <b>CreateCertificateAuthority</b> multiple times with the same idempotency token within five minutes, Amazon Web Services Private CA recognizes that you are requesting only certificate authority and will issue only one. If you change the idempotency token for each call, Amazon Web Services Private CA recognizes that you are requesting multiple certificate authorities.</p>
    # @option params [String] :key_storage_security_standard
    #   <p>Specifies a cryptographic key management compliance standard for handling and protecting CA keys.</p> <p>Default: FIPS_140_2_LEVEL_3_OR_HIGHER</p> <note> <p>Some Amazon Web Services Regions don't support the default value. When you create a CA in these Regions, you must use <code>CCPC_LEVEL_1_OR_HIGHER</code> for the <code>KeyStorageSecurityStandard</code> parameter. If you don't, the operation returns an <code>InvalidArgsException</code> with this message: "A certificate authority cannot be created in this region with the specified security standard."</p> <p>For information about security standard support in different Amazon Web Services Regions, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/data-protection.html#private-keys">Storage and security compliance of Amazon Web Services Private CA private keys</a>.</p> </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs that will be attached to the new private CA. You can associate up to 50 tags with a private CA. For information using tags with IAM to manage permissions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling Access Using IAM Tags</a>.</p>
    # @option params [String] :usage_mode
    #   <p>Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly. Short-lived certificate validity is limited to seven days.</p> <p>The default value is GENERAL_PURPOSE.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_authority_configuration: { # required
    #       key_algorithm: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "EC_prime256v1", "EC_secp384r1", "EC_secp521r1", "SM2"], # required
    #       signing_algorithm: "SHA256WITHECDSA" # One of: ["SHA256WITHECDSA", "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA", "SHA512WITHRSA", "SM3WITHSM2"], # required
    #       subject: { # required
    #         country: "CountryCodeString",
    #         organization: "String64",
    #         organizational_unit: "String64",
    #         distinguished_name_qualifier: "ASN1PrintableString64",
    #         state: "String128",
    #         common_name: "String64",
    #         serial_number: "ASN1PrintableString64",
    #         locality: "String128",
    #         title: "String64",
    #         surname: "String40",
    #         given_name: "String16",
    #         initials: "String5",
    #         pseudonym: "String128",
    #         generation_qualifier: "String3",
    #         custom_attributes: [
    #           {
    #             object_identifier: "CustomObjectIdentifier", # required
    #             value: "String1To256", # required
    #           }
    #         ]
    #       },
    #       csr_extensions: {
    #         key_usage: {
    #           digital_signature: false,
    #           non_repudiation: false,
    #           key_encipherment: false,
    #           data_encipherment: false,
    #           key_agreement: false,
    #           key_cert_sign: false,
    #           crl_sign: false,
    #           encipher_only: false,
    #           decipher_only: false
    #         },
    #         subject_information_access: [
    #           {
    #             access_method: { # required
    #               custom_object_identifier: "CustomObjectIdentifier",
    #               access_method_type: "CA_REPOSITORY" # One of: ["CA_REPOSITORY", "RESOURCE_PKI_MANIFEST", "RESOURCE_PKI_NOTIFY"]
    #             },
    #             access_location: { # required
    #               other_name: {
    #                 type_id: "CustomObjectIdentifier", # required
    #                 value: "String256", # required
    #               },
    #               rfc822_name: "String256",
    #               dns_name: "String253",
    #               directory_name: {
    #                 country: "CountryCodeString",
    #                 organization: "String64",
    #                 organizational_unit: "String64",
    #                 distinguished_name_qualifier: "ASN1PrintableString64",
    #                 state: "String128",
    #                 common_name: "String64",
    #                 serial_number: "ASN1PrintableString64",
    #                 locality: "String128",
    #                 title: "String64",
    #                 surname: "String40",
    #                 given_name: "String16",
    #                 initials: "String5",
    #                 pseudonym: "String128",
    #                 generation_qualifier: "String3",
    #                 custom_attributes: [
    #                   {
    #                     object_identifier: "CustomObjectIdentifier", # required
    #                     value: "String1To256", # required
    #                   }
    #                 ]
    #               },
    #               edi_party_name: {
    #                 party_name: "String256", # required
    #                 name_assigner: "String256"
    #               },
    #               uniform_resource_identifier: "String253",
    #               ip_address: "String39",
    #               registered_id: "CustomObjectIdentifier"
    #             }
    #           }
    #         ]
    #       }
    #     },
    #     revocation_configuration: {
    #       crl_configuration: {
    #         enabled: false, # required
    #         expiration_in_days: 1,
    #         custom_cname: "CnameString",
    #         s3_bucket_name: "S3BucketName3To255",
    #         s3_object_acl: "PUBLIC_READ" # One of: ["PUBLIC_READ", "BUCKET_OWNER_FULL_CONTROL"],
    #         crl_distribution_point_extension_configuration: {
    #           omit_extension: false, # required
    #         },
    #         crl_type: "COMPLETE" # One of: ["COMPLETE", "PARTITIONED"],
    #         custom_path: "CrlPathString"
    #       },
    #       ocsp_configuration: {
    #         enabled: false, # required
    #         ocsp_custom_cname: "CnameString"
    #       }
    #     },
    #     certificate_authority_type: "ROOT" # One of: ["ROOT", "SUBORDINATE"], # required
    #     idempotency_token: "IdempotencyToken",
    #     key_storage_security_standard: "FIPS_140_2_LEVEL_2_OR_HIGHER" # One of: ["FIPS_140_2_LEVEL_2_OR_HIGHER", "FIPS_140_2_LEVEL_3_OR_HIGHER", "CCPC_LEVEL_1_OR_HIGHER"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     usage_mode: "GENERAL_PURPOSE" # One of: ["GENERAL_PURPOSE", "SHORT_LIVED_CERTIFICATE"]
    #   }
    #   options = {}
    #   response = client.create_certificate_authority(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_authority_arn: "Arn"
    #   }
    # @return [Types::CreateCertificateAuthorityResponse]
    def create_certificate_authority(params = {}, options = {})
      request = build_request(:create_certificate_authority, params)
      request.send_request(options)
    end

    # <p>Creates an audit report that lists every time that your CA private key is used to issue a certificate. The <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_IssueCertificate.html">IssueCertificate</a> and <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_RevokeCertificate.html">RevokeCertificate</a> actions use the private key.</p> <p>To save the audit report to your designated Amazon S3 bucket, you must create a bucket policy that grants Amazon Web Services Private CA permission to access and write to it. For an example policy, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/PcaAuditReport.html#s3-access">Prepare an Amazon S3 bucket for audit reports</a>.</p> <p>Amazon Web Services Private CA assets that are stored in Amazon S3 can be protected with encryption. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/PcaAuditReport.html#audit-report-encryption">Encrypting Your Audit Reports</a>.</p> <note> <p>You can generate a maximum of one report every 30 minutes.</p> </note>
    # @param [Hash, Types::CreateCertificateAuthorityAuditReportRequest] params
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the CA to be audited. This is of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>.</p>
    # @option params [String] :s3_bucket_name
    #   <p>The name of the S3 bucket that will contain the audit report.</p>
    # @option params [String] :audit_report_response_format
    #   <p>The format in which to create the report. This can be either <b>JSON</b> or <b>CSV</b>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_authority_arn: "Arn", # required
    #     s3_bucket_name: "S3BucketName", # required
    #     audit_report_response_format: "JSON" # One of: ["JSON", "CSV"], # required
    #   }
    #   options = {}
    #   response = client.create_certificate_authority_audit_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     audit_report_id: "AuditReportId",
    #     s3_key: "S3Key"
    #   }
    # @return [Types::CreateCertificateAuthorityAuditReportResponse]
    def create_certificate_authority_audit_report(params = {}, options = {})
      request = build_request(:create_certificate_authority_audit_report, params)
      request.send_request(options)
    end

    # <p>Grants one or more permissions on a private CA to the Certificate Manager (ACM) service principal (<code>acm.amazonaws.com</code>). These permissions allow ACM to issue and renew ACM certificates that reside in the same Amazon Web Services account as the CA.</p> <p>You can list current permissions with the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListPermissions.html">ListPermissions</a> action and revoke them with the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePermission.html">DeletePermission</a> action.</p> <p class="title"> <b>About Permissions</b> </p> <ul> <li> <p>If the private CA and the certificates it issues reside in the same account, you can use <code>CreatePermission</code> to grant permissions for ACM to carry out automatic certificate renewals.</p> </li> <li> <p>For automatic certificate renewal to succeed, the ACM service principal needs permissions to create, retrieve, and list certificates.</p> </li> <li> <p>If the private CA and the ACM certificates reside in different accounts, then permissions cannot be used to enable automatic renewals. Instead, the ACM certificate owner must set up a resource-based policy to enable cross-account issuance and renewals. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html">Using a Resource Based Policy with Amazon Web Services Private CA</a>.</p> </li> </ul>
    # @param [Hash, Types::CreatePermissionRequest] params
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the CA that grants the permissions. You can find the ARN by calling the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action. This must have the following form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>
    # @option params [String] :principal
    #   <p>The Amazon Web Services service or identity that receives the permission. At this time, the only valid principal is <code>acm.amazonaws.com</code>.</p>
    # @option params [String] :source_account
    #   <p>The ID of the calling account.</p>
    # @option params [Array<String>] :actions
    #   <p>The actions that the specified Amazon Web Services service principal can use. These include <code>IssueCertificate</code>, <code>GetCertificate</code>, and <code>ListPermissions</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_authority_arn: "Arn", # required
    #     principal: "Principal", # required
    #     source_account: "AccountId",
    #     actions: ["IssueCertificate" # One of: ["IssueCertificate", "GetCertificate", "ListPermissions"]], # required
    #   }
    #   options = {}
    #   response = client.create_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_permission(params = {}, options = {})
      request = build_request(:create_permission, params)
      request.send_request(options)
    end

    # <p>Deletes a private certificate authority (CA). You must provide the Amazon Resource Name (ARN) of the private CA that you want to delete. You can find the ARN by calling the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action. </p> <note> <p>Deleting a CA will invalidate other CAs and certificates below it in your CA hierarchy.</p> </note> <p>Before you can delete a CA that you have created and activated, you must disable it. To do this, call the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_UpdateCertificateAuthority.html">UpdateCertificateAuthority</a> action and set the <b>CertificateAuthorityStatus</b> parameter to <code>DISABLED</code>. </p> <p>Additionally, you can delete a CA if you are waiting for it to be created (that is, the status of the CA is <code>CREATING</code>). You can also delete it if the CA has been created but you haven't yet imported the signed certificate into Amazon Web Services Private CA (that is, the status of the CA is <code>PENDING_CERTIFICATE</code>). </p> <p>When you successfully call <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeleteCertificateAuthority.html">DeleteCertificateAuthority</a>, the CA's status changes to <code>DELETED</code>. However, the CA won't be permanently deleted until the restoration period has passed. By default, if you do not set the <code>PermanentDeletionTimeInDays</code> parameter, the CA remains restorable for 30 days. You can set the parameter from 7 to 30 days. The <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_DescribeCertificateAuthority.html">DescribeCertificateAuthority</a> action returns the time remaining in the restoration window of a private CA in the <code>DELETED</code> state. To restore an eligible CA, call the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_RestoreCertificateAuthority.html">RestoreCertificateAuthority</a> action.</p> <important> <p>A private CA can be deleted if it is in the <code>PENDING_CERTIFICATE</code>, <code>CREATING</code>, <code>EXPIRED</code>, <code>DISABLED</code>, or <code>FAILED</code> state. To delete a CA in the <code>ACTIVE</code> state, you must first disable it, or else the delete request results in an exception. If you are deleting a private CA in the <code>PENDING_CERTIFICATE</code> or <code>DISABLED</code> state, you can set the length of its restoration period to 7-30 days. The default is 30. During this time, the status is set to <code>DELETED</code> and the CA can be restored. A private CA deleted in the <code>CREATING</code> or <code>FAILED</code> state has no assigned restoration period and cannot be restored.</p> </important>
    # @param [Hash, Types::DeleteCertificateAuthorityRequest] params
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must have the following form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>
    # @option params [Integer] :permanent_deletion_time_in_days
    #   <p>The number of days to make a CA restorable after it has been deleted. This can be anywhere from 7 to 30 days, with 30 being the default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_authority_arn: "Arn", # required
    #     permanent_deletion_time_in_days: 1
    #   }
    #   options = {}
    #   response = client.delete_certificate_authority(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_certificate_authority(params = {}, options = {})
      request = build_request(:delete_certificate_authority, params)
      request.send_request(options)
    end

    # <p>Revokes permissions on a private CA granted to the Certificate Manager (ACM) service principal (acm.amazonaws.com). </p> <p>These permissions allow ACM to issue and renew ACM certificates that reside in the same Amazon Web Services account as the CA. If you revoke these permissions, ACM will no longer renew the affected certificates automatically.</p> <p>Permissions can be granted with the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreatePermission.html">CreatePermission</a> action and listed with the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListPermissions.html">ListPermissions</a> action. </p> <p class="title"> <b>About Permissions</b> </p> <ul> <li> <p>If the private CA and the certificates it issues reside in the same account, you can use <code>CreatePermission</code> to grant permissions for ACM to carry out automatic certificate renewals.</p> </li> <li> <p>For automatic certificate renewal to succeed, the ACM service principal needs permissions to create, retrieve, and list certificates.</p> </li> <li> <p>If the private CA and the ACM certificates reside in different accounts, then permissions cannot be used to enable automatic renewals. Instead, the ACM certificate owner must set up a resource-based policy to enable cross-account issuance and renewals. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html">Using a Resource Based Policy with Amazon Web Services Private CA</a>.</p> </li> </ul>
    # @param [Hash, Types::DeletePermissionRequest] params
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Number (ARN) of the private CA that issued the permissions. You can find the CA's ARN by calling the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action. This must have the following form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>
    # @option params [String] :principal
    #   <p>The Amazon Web Services service or identity that will have its CA permissions revoked. At this time, the only valid service principal is <code>acm.amazonaws.com</code> </p>
    # @option params [String] :source_account
    #   <p>The Amazon Web Services account that calls this action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_authority_arn: "Arn", # required
    #     principal: "Principal", # required
    #     source_account: "AccountId"
    #   }
    #   options = {}
    #   response = client.delete_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_permission(params = {}, options = {})
      request = build_request(:delete_permission, params)
      request.send_request(options)
    end

    # <p>Deletes the resource-based policy attached to a private CA. Deletion will remove any access that the policy has granted. If there is no policy attached to the private CA, this action will return successful.</p> <p>If you delete a policy that was applied through Amazon Web Services Resource Access Manager (RAM), the CA will be removed from all shares in which it was included. </p> <p>The Certificate Manager Service Linked Role that the policy supports is not affected when you delete the policy. </p> <p>The current policy can be shown with <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetPolicy.html">GetPolicy</a> and updated with <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_PutPolicy.html">PutPolicy</a>.</p> <p class="title"> <b>About Policies</b> </p> <ul> <li> <p>A policy grants access on a private CA to an Amazon Web Services customer account, to Amazon Web Services Organizations, or to an Amazon Web Services Organizations unit. Policies are under the control of a CA administrator. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html">Using a Resource Based Policy with Amazon Web Services Private CA</a>.</p> </li> <li> <p>A policy permits a user of Certificate Manager (ACM) to issue ACM certificates signed by a CA in another account.</p> </li> <li> <p>For ACM to manage automatic renewal of these certificates, the ACM user must configure a Service Linked Role (SLR). The SLR allows the ACM service to assume the identity of the user, subject to confirmation against the Amazon Web Services Private CA policy. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html">Using a Service Linked Role with ACM</a>.</p> </li> <li> <p>Updates made in Amazon Web Services Resource Manager (RAM) are reflected in policies. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html">Attach a Policy for Cross-Account Access</a>.</p> </li> </ul>
    # @param [Hash, Types::DeletePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of the private CA that will have its policy deleted. You can find the CA's ARN by calling the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action. The ARN value must have the form <code>arn:aws:acm-pca:region:account:certificate-authority/01234567-89ab-cdef-0123-0123456789ab</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_policy(params = {}, options = {})
      request = build_request(:delete_policy, params)
      request.send_request(options)
    end

    # <p>Lists information about your private certificate authority (CA) or one that has been shared with you. You specify the private CA on input by its ARN (Amazon Resource Name). The output contains the status of your CA. This can be any of the following: </p> <ul> <li> <p> <code>CREATING</code> - Amazon Web Services Private CA is creating your private certificate authority.</p> </li> <li> <p> <code>PENDING_CERTIFICATE</code> - The certificate is pending. You must use your Amazon Web Services Private CA-hosted or on-premises root or subordinate CA to sign your private CA CSR and then import it into Amazon Web Services Private CA. </p> </li> <li> <p> <code>ACTIVE</code> - Your private CA is active.</p> </li> <li> <p> <code>DISABLED</code> - Your private CA has been disabled.</p> </li> <li> <p> <code>EXPIRED</code> - Your private CA certificate has expired.</p> </li> <li> <p> <code>FAILED</code> - Your private CA has failed. Your CA can fail because of problems such a network outage or back-end Amazon Web Services failure or other errors. A failed CA can never return to the pending state. You must create a new CA. </p> </li> <li> <p> <code>DELETED</code> - Your private CA is within the restoration period, after which it is permanently deleted. The length of time remaining in the CA's restoration period is also included in this action's output.</p> </li> </ul>
    # @param [Hash, Types::DescribeCertificateAuthorityRequest] params
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_authority_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_certificate_authority(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_authority: {
    #       arn: "Arn",
    #       owner_account: "AccountId",
    #       created_at: Time.now,
    #       last_state_change_at: Time.now,
    #       type: "ROOT" # One of: ["ROOT", "SUBORDINATE"],
    #       serial: "String",
    #       status: "CREATING" # One of: ["CREATING", "PENDING_CERTIFICATE", "ACTIVE", "DELETED", "DISABLED", "EXPIRED", "FAILED"],
    #       not_before: Time.now,
    #       not_after: Time.now,
    #       failure_reason: "REQUEST_TIMED_OUT" # One of: ["REQUEST_TIMED_OUT", "UNSUPPORTED_ALGORITHM", "OTHER"],
    #       certificate_authority_configuration: {
    #         key_algorithm: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "EC_prime256v1", "EC_secp384r1", "EC_secp521r1", "SM2"], # required
    #         signing_algorithm: "SHA256WITHECDSA" # One of: ["SHA256WITHECDSA", "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA", "SHA512WITHRSA", "SM3WITHSM2"], # required
    #         subject: { # required
    #           country: "CountryCodeString",
    #           organization: "String64",
    #           organizational_unit: "String64",
    #           distinguished_name_qualifier: "ASN1PrintableString64",
    #           state: "String128",
    #           common_name: "String64",
    #           serial_number: "ASN1PrintableString64",
    #           locality: "String128",
    #           title: "String64",
    #           surname: "String40",
    #           given_name: "String16",
    #           initials: "String5",
    #           pseudonym: "String128",
    #           generation_qualifier: "String3",
    #           custom_attributes: [
    #             {
    #               object_identifier: "CustomObjectIdentifier", # required
    #               value: "String1To256", # required
    #             }
    #           ]
    #         },
    #         csr_extensions: {
    #           key_usage: {
    #             digital_signature: false,
    #             non_repudiation: false,
    #             key_encipherment: false,
    #             data_encipherment: false,
    #             key_agreement: false,
    #             key_cert_sign: false,
    #             crl_sign: false,
    #             encipher_only: false,
    #             decipher_only: false
    #           },
    #           subject_information_access: [
    #             {
    #               access_method: { # required
    #                 custom_object_identifier: "CustomObjectIdentifier",
    #                 access_method_type: "CA_REPOSITORY" # One of: ["CA_REPOSITORY", "RESOURCE_PKI_MANIFEST", "RESOURCE_PKI_NOTIFY"]
    #               },
    #               access_location: { # required
    #                 other_name: {
    #                   type_id: "CustomObjectIdentifier", # required
    #                   value: "String256", # required
    #                 },
    #                 rfc822_name: "String256",
    #                 dns_name: "String253",
    #                 directory_name: {
    #                   country: "CountryCodeString",
    #                   organization: "String64",
    #                   organizational_unit: "String64",
    #                   distinguished_name_qualifier: "ASN1PrintableString64",
    #                   state: "String128",
    #                   common_name: "String64",
    #                   serial_number: "ASN1PrintableString64",
    #                   locality: "String128",
    #                   title: "String64",
    #                   surname: "String40",
    #                   given_name: "String16",
    #                   initials: "String5",
    #                   pseudonym: "String128",
    #                   generation_qualifier: "String3",
    #                   custom_attributes: [
    #                     {
    #                       object_identifier: "CustomObjectIdentifier", # required
    #                       value: "String1To256", # required
    #                     }
    #                   ]
    #                 },
    #                 edi_party_name: {
    #                   party_name: "String256", # required
    #                   name_assigner: "String256"
    #                 },
    #                 uniform_resource_identifier: "String253",
    #                 ip_address: "String39",
    #                 registered_id: "CustomObjectIdentifier"
    #               }
    #             }
    #           ]
    #         }
    #       },
    #       revocation_configuration: {
    #         crl_configuration: {
    #           enabled: false, # required
    #           expiration_in_days: 1,
    #           custom_cname: "CnameString",
    #           s3_bucket_name: "S3BucketName3To255",
    #           s3_object_acl: "PUBLIC_READ" # One of: ["PUBLIC_READ", "BUCKET_OWNER_FULL_CONTROL"],
    #           crl_distribution_point_extension_configuration: {
    #             omit_extension: false, # required
    #           },
    #           crl_type: "COMPLETE" # One of: ["COMPLETE", "PARTITIONED"],
    #           custom_path: "CrlPathString"
    #         },
    #         ocsp_configuration: {
    #           enabled: false, # required
    #           ocsp_custom_cname: "CnameString"
    #         }
    #       },
    #       restorable_until: Time.now,
    #       key_storage_security_standard: "FIPS_140_2_LEVEL_2_OR_HIGHER" # One of: ["FIPS_140_2_LEVEL_2_OR_HIGHER", "FIPS_140_2_LEVEL_3_OR_HIGHER", "CCPC_LEVEL_1_OR_HIGHER"],
    #       usage_mode: "GENERAL_PURPOSE" # One of: ["GENERAL_PURPOSE", "SHORT_LIVED_CERTIFICATE"]
    #     }
    #   }
    # @return [Types::DescribeCertificateAuthorityResponse]
    def describe_certificate_authority(params = {}, options = {})
      request = build_request(:describe_certificate_authority, params)
      request.send_request(options)
    end

    # <p>Lists information about a specific audit report created by calling the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html">CreateCertificateAuthorityAuditReport</a> action. Audit information is created every time the certificate authority (CA) private key is used. The private key is used when you call the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_IssueCertificate.html">IssueCertificate</a> action or the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_RevokeCertificate.html">RevokeCertificate</a> action. </p>
    # @param [Hash, Types::DescribeCertificateAuthorityAuditReportRequest] params
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the private CA. This must be of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>
    # @option params [String] :audit_report_id
    #   <p>The report ID returned by calling the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html">CreateCertificateAuthorityAuditReport</a> action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_authority_arn: "Arn", # required
    #     audit_report_id: "AuditReportId", # required
    #   }
    #   options = {}
    #   response = client.describe_certificate_authority_audit_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     audit_report_status: "CREATING" # One of: ["CREATING", "SUCCESS", "FAILED"],
    #     s3_bucket_name: "S3BucketName",
    #     s3_key: "S3Key",
    #     created_at: Time.now
    #   }
    # @return [Types::DescribeCertificateAuthorityAuditReportResponse]
    def describe_certificate_authority_audit_report(params = {}, options = {})
      request = build_request(:describe_certificate_authority_audit_report, params)
      request.send_request(options)
    end

    # <p>Retrieves a certificate from your private CA or one that has been shared with you. The ARN of the certificate is returned when you call the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_IssueCertificate.html">IssueCertificate</a> action. You must specify both the ARN of your private CA and the ARN of the issued certificate when calling the <b>GetCertificate</b> action. You can retrieve the certificate if it is in the <b>ISSUED</b>, <b>EXPIRED</b>, or <b>REVOKED</b> state. You can call the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html">CreateCertificateAuthorityAuditReport</a> action to create a report that contains information about all of the certificates issued and revoked by your private CA. </p>
    # @param [Hash, Types::GetCertificateRequest] params
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>
    # @option params [String] :certificate_arn
    #   <p>The ARN of the issued certificate. The ARN contains the certificate serial number and must be in the following form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>/certificate/<i>286535153982981100925020015808220737245</i> </code> </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_authority_arn: "Arn", # required
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

    # <p>Retrieves the certificate and certificate chain for your private certificate authority (CA) or one that has been shared with you. Both the certificate and the chain are base64 PEM-encoded. The chain does not include the CA certificate. Each certificate in the chain signs the one before it. </p>
    # @param [Hash, Types::GetCertificateAuthorityCertificateRequest] params
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of your private CA. This is of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_authority_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_certificate_authority_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate: "CertificateBody",
    #     certificate_chain: "CertificateChain"
    #   }
    # @return [Types::GetCertificateAuthorityCertificateResponse]
    def get_certificate_authority_certificate(params = {}, options = {})
      request = build_request(:get_certificate_authority_certificate, params)
      request.send_request(options)
    end

    # <p>Retrieves the certificate signing request (CSR) for your private certificate authority (CA). The CSR is created when you call the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action. Sign the CSR with your Amazon Web Services Private CA-hosted or on-premises root or subordinate CA. Then import the signed certificate back into Amazon Web Services Private CA by calling the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html">ImportCertificateAuthorityCertificate</a> action. The CSR is returned as a base64 PEM-encoded string. </p>
    # @param [Hash, Types::GetCertificateAuthorityCsrRequest] params
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_authority_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_certificate_authority_csr(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     csr: "CsrBody"
    #   }
    # @return [Types::GetCertificateAuthorityCsrResponse]
    def get_certificate_authority_csr(params = {}, options = {})
      request = build_request(:get_certificate_authority_csr, params)
      request.send_request(options)
    end

    # <p>Retrieves the resource-based policy attached to a private CA. If either the private CA resource or the policy cannot be found, this action returns a <code>ResourceNotFoundException</code>. </p> <p>The policy can be attached or updated with <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_PutPolicy.html">PutPolicy</a> and removed with <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePolicy.html">DeletePolicy</a>.</p> <p class="title"> <b>About Policies</b> </p> <ul> <li> <p>A policy grants access on a private CA to an Amazon Web Services customer account, to Amazon Web Services Organizations, or to an Amazon Web Services Organizations unit. Policies are under the control of a CA administrator. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html">Using a Resource Based Policy with Amazon Web Services Private CA</a>.</p> </li> <li> <p>A policy permits a user of Certificate Manager (ACM) to issue ACM certificates signed by a CA in another account.</p> </li> <li> <p>For ACM to manage automatic renewal of these certificates, the ACM user must configure a Service Linked Role (SLR). The SLR allows the ACM service to assume the identity of the user, subject to confirmation against the Amazon Web Services Private CA policy. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html">Using a Service Linked Role with ACM</a>.</p> </li> <li> <p>Updates made in Amazon Web Services Resource Manager (RAM) are reflected in policies. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html">Attach a Policy for Cross-Account Access</a>.</p> </li> </ul>
    # @param [Hash, Types::GetPolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of the private CA that will have its policy retrieved. You can find the CA's ARN by calling the ListCertificateAuthorities action. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "AWSPolicy"
    #   }
    # @return [Types::GetPolicyResponse]
    def get_policy(params = {}, options = {})
      request = build_request(:get_policy, params)
      request.send_request(options)
    end

    # <p>Imports a signed private CA certificate into Amazon Web Services Private CA. This action is used when you are using a chain of trust whose root is located outside Amazon Web Services Private CA. Before you can call this action, the following preparations must in place:</p> <ol> <li> <p>In Amazon Web Services Private CA, call the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action to create the private CA that you plan to back with the imported certificate.</p> </li> <li> <p>Call the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetCertificateAuthorityCsr.html">GetCertificateAuthorityCsr</a> action to generate a certificate signing request (CSR).</p> </li> <li> <p>Sign the CSR using a root or intermediate CA hosted by either an on-premises PKI hierarchy or by a commercial CA.</p> </li> <li> <p>Create a certificate chain and copy the signed certificate and the certificate chain to your working directory.</p> </li> </ol> <p>Amazon Web Services Private CA supports three scenarios for installing a CA certificate:</p> <ul> <li> <p>Installing a certificate for a root CA hosted by Amazon Web Services Private CA.</p> </li> <li> <p>Installing a subordinate CA certificate whose parent authority is hosted by Amazon Web Services Private CA.</p> </li> <li> <p>Installing a subordinate CA certificate whose parent authority is externally hosted.</p> </li> </ul> <p>The following additional requirements apply when you import a CA certificate.</p> <ul> <li> <p>Only a self-signed certificate can be imported as a root CA.</p> </li> <li> <p>A self-signed certificate cannot be imported as a subordinate CA.</p> </li> <li> <p>Your certificate chain must not include the private CA certificate that you are importing.</p> </li> <li> <p>Your root CA must be the last certificate in your chain. The subordinate certificate, if any, that your root CA signed must be next to last. The subordinate certificate signed by the preceding subordinate CA must come next, and so on until your chain is built. </p> </li> <li> <p>The chain must be PEM-encoded.</p> </li> <li> <p>The maximum allowed size of a certificate is 32 KB.</p> </li> <li> <p>The maximum allowed size of a certificate chain is 2 MB.</p> </li> </ul> <p> <i>Enforcement of Critical Constraints</i> </p> <p>Amazon Web Services Private CA allows the following extensions to be marked critical in the imported CA certificate or chain.</p> <ul> <li> <p>Authority key identifier</p> </li> <li> <p>Basic constraints (<i>must</i> be marked critical)</p> </li> <li> <p>Certificate policies</p> </li> <li> <p>Extended key usage</p> </li> <li> <p>Inhibit anyPolicy</p> </li> <li> <p>Issuer alternative name</p> </li> <li> <p>Key usage</p> </li> <li> <p>Name constraints</p> </li> <li> <p>Policy mappings</p> </li> <li> <p>Subject alternative name</p> </li> <li> <p>Subject directory attributes</p> </li> <li> <p>Subject key identifier</p> </li> <li> <p>Subject information access</p> </li> </ul> <p>Amazon Web Services Private CA rejects the following extensions when they are marked critical in an imported CA certificate or chain.</p> <ul> <li> <p>Authority information access</p> </li> <li> <p>CRL distribution points</p> </li> <li> <p>Freshest CRL</p> </li> <li> <p>Policy constraints</p> </li> </ul> <p>Amazon Web Services Private Certificate Authority will also reject any other extension marked as critical not contained on the preceding list of allowed extensions.</p>
    # @param [Hash, Types::ImportCertificateAuthorityCertificateRequest] params
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
    # @option params [String] :certificate
    #   <p>The PEM-encoded certificate for a private CA. This may be a self-signed certificate in the case of a root CA, or it may be signed by another CA that you control.</p>
    # @option params [String] :certificate_chain
    #   <p>A PEM-encoded file that contains all of your certificates, other than the certificate you're importing, chaining up to your root CA. Your Amazon Web Services Private CA-hosted or on-premises root certificate is the last in the chain, and each certificate in the chain signs the one preceding. </p> <p>This parameter must be supplied when you import a subordinate CA. When you import a root CA, there is no chain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_authority_arn: "Arn", # required
    #     certificate: "data", # required
    #     certificate_chain: "data"
    #   }
    #   options = {}
    #   response = client.import_certificate_authority_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def import_certificate_authority_certificate(params = {}, options = {})
      request = build_request(:import_certificate_authority_certificate, params)
      request.send_request(options)
    end

    # <p>Uses your private certificate authority (CA), or one that has been shared with you, to issue a client certificate. This action returns the Amazon Resource Name (ARN) of the certificate. You can retrieve the certificate by calling the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetCertificate.html">GetCertificate</a> action and specifying the ARN. </p> <note> <p>You cannot use the ACM <b>ListCertificateAuthorities</b> action to retrieve the ARNs of the certificates that you issue by using Amazon Web Services Private CA.</p> </note>
    # @param [Hash, Types::IssueCertificateRequest] params
    # @option params [Types::ApiPassthrough] :api_passthrough
    #   <p>Specifies X.509 certificate information to be included in the issued certificate. An <code>APIPassthrough</code> or <code>APICSRPassthrough</code> template variant must be selected, or else this parameter is ignored. For more information about using these templates, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html">Understanding Certificate Templates</a>.</p> <p>If conflicting or duplicate certificate information is supplied during certificate issuance, Amazon Web Services Private CA applies <a href="https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html#template-order-of-operations">order of operation rules</a> to determine what information is used.</p>
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
    # @option params [String] :csr
    #   <p>The certificate signing request (CSR) for the certificate you want to issue. As an example, you can use the following OpenSSL command to create the CSR and a 2048 bit RSA private key. </p> <p> <code>openssl req -new -newkey rsa:2048 -days 365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr</code> </p> <p>If you have a configuration file, you can then use the following OpenSSL command. The <code>usr_cert</code> block in the configuration file contains your X509 version 3 extensions. </p> <p> <code>openssl req -new -config openssl_rsa.cnf -extensions usr_cert -newkey rsa:2048 -days 365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr</code> </p> <p>Note: A CSR must provide either a <i>subject name</i> or a <i>subject alternative name</i> or the request will be rejected. </p>
    # @option params [String] :signing_algorithm
    #   <p>The name of the algorithm that will be used to sign the certificate to be issued. </p> <p>This parameter should not be confused with the <code>SigningAlgorithm</code> parameter used to sign a CSR in the <code>CreateCertificateAuthority</code> action.</p> <note> <p>The specified signing algorithm family (RSA or ECDSA) must match the algorithm family of the CA's secret key.</p> </note>
    # @option params [String] :template_arn
    #   <p>Specifies a custom configuration template to use when issuing a certificate. If this parameter is not provided, Amazon Web Services Private CA defaults to the <code>EndEntityCertificate/V1</code> template. For CA certificates, you should choose the shortest path length that meets your needs. The path length is indicated by the PathLen<i>N</i> portion of the ARN, where <i>N</i> is the <a href="https://docs.aws.amazon.com/privateca/latest/userguide/PcaTerms.html#terms-cadepth">CA depth</a>.</p> <p>Note: The CA depth configured on a subordinate CA certificate must not exceed the limit set by its parents in the CA hierarchy.</p> <p>For a list of <code>TemplateArn</code> values supported by Amazon Web Services Private CA, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html">Understanding Certificate Templates</a>.</p>
    # @option params [Types::Validity] :validity
    #   <p>Information describing the end of the validity period of the certificate. This parameter sets the “Not After” date for the certificate.</p> <p>Certificate validity is the period of time during which a certificate is valid. Validity can be expressed as an explicit date and time when the certificate expires, or as a span of time after issuance, stated in days, months, or years. For more information, see <a href="https://datatracker.ietf.org/doc/html/rfc5280#section-4.1.2.5">Validity</a> in RFC 5280. </p> <p>This value is unaffected when <code>ValidityNotBefore</code> is also specified. For example, if <code>Validity</code> is set to 20 days in the future, the certificate will expire 20 days from issuance time regardless of the <code>ValidityNotBefore</code> value.</p> <p>The end of the validity period configured on a certificate must not exceed the limit set on its parents in the CA hierarchy.</p>
    # @option params [Types::Validity] :validity_not_before
    #   <p>Information describing the start of the validity period of the certificate. This parameter sets the “Not Before" date for the certificate.</p> <p>By default, when issuing a certificate, Amazon Web Services Private CA sets the "Not Before" date to the issuance time minus 60 minutes. This compensates for clock inconsistencies across computer systems. The <code>ValidityNotBefore</code> parameter can be used to customize the “Not Before” value. </p> <p>Unlike the <code>Validity</code> parameter, the <code>ValidityNotBefore</code> parameter is optional.</p> <p>The <code>ValidityNotBefore</code> value is expressed as an explicit date and time, using the <code>Validity</code> type value <code>ABSOLUTE</code>. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_Validity.html">Validity</a> in this API reference and <a href="https://datatracker.ietf.org/doc/html/rfc5280#section-4.1.2.5">Validity</a> in RFC 5280.</p>
    # @option params [String] :idempotency_token
    #   <p>Alphanumeric string that can be used to distinguish between calls to the <b>IssueCertificate</b> action. Idempotency tokens for <b>IssueCertificate</b> time out after five minutes. Therefore, if you call <b>IssueCertificate</b> multiple times with the same idempotency token within five minutes, Amazon Web Services Private CA recognizes that you are requesting only one certificate and will issue only one. If you change the idempotency token for each call, Amazon Web Services Private CA recognizes that you are requesting multiple certificates.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_passthrough: {
    #       extensions: {
    #         certificate_policies: [
    #           {
    #             cert_policy_id: "CustomObjectIdentifier", # required
    #             policy_qualifiers: [
    #               {
    #                 policy_qualifier_id: "CPS" # One of: ["CPS"], # required
    #                 qualifier: { # required
    #                   cps_uri: "String256", # required
    #                 }
    #               }
    #             ]
    #           }
    #         ],
    #         extended_key_usage: [
    #           {
    #             extended_key_usage_type: "SERVER_AUTH" # One of: ["SERVER_AUTH", "CLIENT_AUTH", "CODE_SIGNING", "EMAIL_PROTECTION", "TIME_STAMPING", "OCSP_SIGNING", "SMART_CARD_LOGIN", "DOCUMENT_SIGNING", "CERTIFICATE_TRANSPARENCY"],
    #             extended_key_usage_object_identifier: "CustomObjectIdentifier"
    #           }
    #         ],
    #         key_usage: {
    #           digital_signature: false,
    #           non_repudiation: false,
    #           key_encipherment: false,
    #           data_encipherment: false,
    #           key_agreement: false,
    #           key_cert_sign: false,
    #           crl_sign: false,
    #           encipher_only: false,
    #           decipher_only: false
    #         },
    #         subject_alternative_names: [
    #           {
    #             other_name: {
    #               type_id: "CustomObjectIdentifier", # required
    #               value: "String256", # required
    #             },
    #             rfc822_name: "String256",
    #             dns_name: "String253",
    #             directory_name: {
    #               country: "CountryCodeString",
    #               organization: "String64",
    #               organizational_unit: "String64",
    #               distinguished_name_qualifier: "ASN1PrintableString64",
    #               state: "String128",
    #               common_name: "String64",
    #               serial_number: "ASN1PrintableString64",
    #               locality: "String128",
    #               title: "String64",
    #               surname: "String40",
    #               given_name: "String16",
    #               initials: "String5",
    #               pseudonym: "String128",
    #               generation_qualifier: "String3",
    #               custom_attributes: [
    #                 {
    #                   object_identifier: "CustomObjectIdentifier", # required
    #                   value: "String1To256", # required
    #                 }
    #               ]
    #             },
    #             edi_party_name: {
    #               party_name: "String256", # required
    #               name_assigner: "String256"
    #             },
    #             uniform_resource_identifier: "String253",
    #             ip_address: "String39",
    #             registered_id: "CustomObjectIdentifier"
    #           }
    #         ],
    #         custom_extensions: [
    #           {
    #             object_identifier: "CustomObjectIdentifier", # required
    #             value: "Base64String1To4096", # required
    #             critical: false
    #           }
    #         ]
    #       },
    #       subject: {
    #         country: "CountryCodeString",
    #         organization: "String64",
    #         organizational_unit: "String64",
    #         distinguished_name_qualifier: "ASN1PrintableString64",
    #         state: "String128",
    #         common_name: "String64",
    #         serial_number: "ASN1PrintableString64",
    #         locality: "String128",
    #         title: "String64",
    #         surname: "String40",
    #         given_name: "String16",
    #         initials: "String5",
    #         pseudonym: "String128",
    #         generation_qualifier: "String3",
    #         custom_attributes: [
    #           {
    #             object_identifier: "CustomObjectIdentifier", # required
    #             value: "String1To256", # required
    #           }
    #         ]
    #       }
    #     },
    #     certificate_authority_arn: "Arn", # required
    #     csr: "data", # required
    #     signing_algorithm: "SHA256WITHECDSA" # One of: ["SHA256WITHECDSA", "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA", "SHA512WITHRSA", "SM3WITHSM2"], # required
    #     template_arn: "Arn",
    #     validity: { # required
    #       value: 1, # required
    #       type: "END_DATE" # One of: ["END_DATE", "ABSOLUTE", "DAYS", "MONTHS", "YEARS"], # required
    #     },
    #     validity_not_before: {
    #       value: 1, # required
    #       type: "END_DATE" # One of: ["END_DATE", "ABSOLUTE", "DAYS", "MONTHS", "YEARS"], # required
    #     },
    #     idempotency_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.issue_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_arn: "Arn"
    #   }
    # @return [Types::IssueCertificateResponse]
    def issue_certificate(params = {}, options = {})
      request = build_request(:issue_certificate, params)
      request.send_request(options)
    end

    # <p>Lists the private certificate authorities that you created by using the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action.</p>
    # @param [Hash, Types::ListCertificateAuthoritiesRequest] params
    # @option params [Integer] :max_results
    #   <p>Use this parameter when paginating results to specify the maximum number of items to return in the response on each page. If additional items exist beyond the number you specify, the <code>NextToken</code> element is sent in the response. Use this <code>NextToken</code> value in a subsequent request to retrieve additional items.</p> <p>Although the maximum value is 1000, the action only returns a maximum of 100 items.</p>
    # @option params [String] :next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a response with truncated results. Set it to the value of the <code>NextToken</code> parameter from the response you just received.</p>
    # @option params [String] :resource_owner
    #   <p>Use this parameter to filter the returned set of certificate authorities based on their owner. The default is SELF.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     resource_owner: "SELF" # One of: ["SELF", "OTHER_ACCOUNTS"]
    #   }
    #   options = {}
    #   response = client.list_certificate_authorities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     certificate_authorities: [
    #       {
    #         arn: "Arn",
    #         owner_account: "AccountId",
    #         created_at: Time.now,
    #         last_state_change_at: Time.now,
    #         type: "ROOT" # One of: ["ROOT", "SUBORDINATE"],
    #         serial: "String",
    #         status: "CREATING" # One of: ["CREATING", "PENDING_CERTIFICATE", "ACTIVE", "DELETED", "DISABLED", "EXPIRED", "FAILED"],
    #         not_before: Time.now,
    #         not_after: Time.now,
    #         failure_reason: "REQUEST_TIMED_OUT" # One of: ["REQUEST_TIMED_OUT", "UNSUPPORTED_ALGORITHM", "OTHER"],
    #         certificate_authority_configuration: {
    #           key_algorithm: "RSA_2048" # One of: ["RSA_2048", "RSA_3072", "RSA_4096", "EC_prime256v1", "EC_secp384r1", "EC_secp521r1", "SM2"], # required
    #           signing_algorithm: "SHA256WITHECDSA" # One of: ["SHA256WITHECDSA", "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA", "SHA512WITHRSA", "SM3WITHSM2"], # required
    #           subject: { # required
    #             country: "CountryCodeString",
    #             organization: "String64",
    #             organizational_unit: "String64",
    #             distinguished_name_qualifier: "ASN1PrintableString64",
    #             state: "String128",
    #             common_name: "String64",
    #             serial_number: "ASN1PrintableString64",
    #             locality: "String128",
    #             title: "String64",
    #             surname: "String40",
    #             given_name: "String16",
    #             initials: "String5",
    #             pseudonym: "String128",
    #             generation_qualifier: "String3",
    #             custom_attributes: [
    #               {
    #                 object_identifier: "CustomObjectIdentifier", # required
    #                 value: "String1To256", # required
    #               }
    #             ]
    #           },
    #           csr_extensions: {
    #             key_usage: {
    #               digital_signature: false,
    #               non_repudiation: false,
    #               key_encipherment: false,
    #               data_encipherment: false,
    #               key_agreement: false,
    #               key_cert_sign: false,
    #               crl_sign: false,
    #               encipher_only: false,
    #               decipher_only: false
    #             },
    #             subject_information_access: [
    #               {
    #                 access_method: { # required
    #                   custom_object_identifier: "CustomObjectIdentifier",
    #                   access_method_type: "CA_REPOSITORY" # One of: ["CA_REPOSITORY", "RESOURCE_PKI_MANIFEST", "RESOURCE_PKI_NOTIFY"]
    #                 },
    #                 access_location: { # required
    #                   other_name: {
    #                     type_id: "CustomObjectIdentifier", # required
    #                     value: "String256", # required
    #                   },
    #                   rfc822_name: "String256",
    #                   dns_name: "String253",
    #                   directory_name: {
    #                     country: "CountryCodeString",
    #                     organization: "String64",
    #                     organizational_unit: "String64",
    #                     distinguished_name_qualifier: "ASN1PrintableString64",
    #                     state: "String128",
    #                     common_name: "String64",
    #                     serial_number: "ASN1PrintableString64",
    #                     locality: "String128",
    #                     title: "String64",
    #                     surname: "String40",
    #                     given_name: "String16",
    #                     initials: "String5",
    #                     pseudonym: "String128",
    #                     generation_qualifier: "String3",
    #                     custom_attributes: [
    #                       {
    #                         object_identifier: "CustomObjectIdentifier", # required
    #                         value: "String1To256", # required
    #                       }
    #                     ]
    #                   },
    #                   edi_party_name: {
    #                     party_name: "String256", # required
    #                     name_assigner: "String256"
    #                   },
    #                   uniform_resource_identifier: "String253",
    #                   ip_address: "String39",
    #                   registered_id: "CustomObjectIdentifier"
    #                 }
    #               }
    #             ]
    #           }
    #         },
    #         revocation_configuration: {
    #           crl_configuration: {
    #             enabled: false, # required
    #             expiration_in_days: 1,
    #             custom_cname: "CnameString",
    #             s3_bucket_name: "S3BucketName3To255",
    #             s3_object_acl: "PUBLIC_READ" # One of: ["PUBLIC_READ", "BUCKET_OWNER_FULL_CONTROL"],
    #             crl_distribution_point_extension_configuration: {
    #               omit_extension: false, # required
    #             },
    #             crl_type: "COMPLETE" # One of: ["COMPLETE", "PARTITIONED"],
    #             custom_path: "CrlPathString"
    #           },
    #           ocsp_configuration: {
    #             enabled: false, # required
    #             ocsp_custom_cname: "CnameString"
    #           }
    #         },
    #         restorable_until: Time.now,
    #         key_storage_security_standard: "FIPS_140_2_LEVEL_2_OR_HIGHER" # One of: ["FIPS_140_2_LEVEL_2_OR_HIGHER", "FIPS_140_2_LEVEL_3_OR_HIGHER", "CCPC_LEVEL_1_OR_HIGHER"],
    #         usage_mode: "GENERAL_PURPOSE" # One of: ["GENERAL_PURPOSE", "SHORT_LIVED_CERTIFICATE"]
    #       }
    #     ]
    #   }
    # @return [Types::ListCertificateAuthoritiesResponse]
    def list_certificate_authorities(params = {}, options = {})
      request = build_request(:list_certificate_authorities, params)
      request.send_request(options)
    end

    # <p>List all permissions on a private CA, if any, granted to the Certificate Manager (ACM) service principal (acm.amazonaws.com). </p> <p>These permissions allow ACM to issue and renew ACM certificates that reside in the same Amazon Web Services account as the CA. </p> <p>Permissions can be granted with the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreatePermission.html">CreatePermission</a> action and revoked with the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePermission.html">DeletePermission</a> action.</p> <p class="title"> <b>About Permissions</b> </p> <ul> <li> <p>If the private CA and the certificates it issues reside in the same account, you can use <code>CreatePermission</code> to grant permissions for ACM to carry out automatic certificate renewals.</p> </li> <li> <p>For automatic certificate renewal to succeed, the ACM service principal needs permissions to create, retrieve, and list certificates.</p> </li> <li> <p>If the private CA and the ACM certificates reside in different accounts, then permissions cannot be used to enable automatic renewals. Instead, the ACM certificate owner must set up a resource-based policy to enable cross-account issuance and renewals. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html">Using a Resource Based Policy with Amazon Web Services Private CA</a>.</p> </li> </ul>
    # @param [Hash, Types::ListPermissionsRequest] params
    # @option params [Integer] :max_results
    #   <p>When paginating results, use this parameter to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the <b>NextToken</b> element is sent in the response. Use this <b>NextToken</b> value in a subsequent request to retrieve additional items.</p>
    # @option params [String] :next_token
    #   <p>When paginating results, use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <b>NextToken</b> from the response you just received.</p>
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Number (ARN) of the private CA to inspect. You can find the ARN by calling the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action. This must be of the form: <code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code> You can get a private CA's ARN by running the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     certificate_authority_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     permissions: [
    #       {
    #         certificate_authority_arn: "Arn",
    #         created_at: Time.now,
    #         principal: "Principal",
    #         source_account: "AccountId",
    #         actions: ["IssueCertificate" # One of: ["IssueCertificate", "GetCertificate", "ListPermissions"]],
    #         policy: "AWSPolicy"
    #       }
    #     ]
    #   }
    # @return [Types::ListPermissionsResponse]
    def list_permissions(params = {}, options = {})
      request = build_request(:list_permissions, params)
      request.send_request(options)
    end

    # <p>Lists the tags, if any, that are associated with your private CA or one that has been shared with you. Tags are labels that you can use to identify and organize your CAs. Each tag consists of a key and an optional value. Call the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_TagCertificateAuthority.html">TagCertificateAuthority</a> action to add one or more tags to your CA. Call the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_UntagCertificateAuthority.html">UntagCertificateAuthority</a> action to remove tags. </p>
    # @param [Hash, Types::ListTagsRequest] params
    # @option params [Integer] :max_results
    #   <p>Use this parameter when paginating results to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the <b>NextToken</b> element is sent in the response. Use this <b>NextToken</b> value in a subsequent request to retrieve additional items.</p>
    # @option params [String] :next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a response with truncated results. Set it to the value of <b>NextToken</b> from the response you just received.</p>
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     certificate_authority_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsResponse]
    def list_tags(params = {}, options = {})
      request = build_request(:list_tags, params)
      request.send_request(options)
    end

    # <p>Attaches a resource-based policy to a private CA. </p> <p>A policy can also be applied by sharing a private CA through Amazon Web Services Resource Access Manager (RAM). For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html">Attach a Policy for Cross-Account Access</a>.</p> <p>The policy can be displayed with <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetPolicy.html">GetPolicy</a> and removed with <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePolicy.html">DeletePolicy</a>.</p> <p class="title"> <b>About Policies</b> </p> <ul> <li> <p>A policy grants access on a private CA to an Amazon Web Services customer account, to Amazon Web Services Organizations, or to an Amazon Web Services Organizations unit. Policies are under the control of a CA administrator. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html">Using a Resource Based Policy with Amazon Web Services Private CA</a>.</p> </li> <li> <p>A policy permits a user of Certificate Manager (ACM) to issue ACM certificates signed by a CA in another account.</p> </li> <li> <p>For ACM to manage automatic renewal of these certificates, the ACM user must configure a Service Linked Role (SLR). The SLR allows the ACM service to assume the identity of the user, subject to confirmation against the Amazon Web Services Private CA policy. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html">Using a Service Linked Role with ACM</a>.</p> </li> <li> <p>Updates made in Amazon Web Services Resource Manager (RAM) are reflected in policies. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html">Attach a Policy for Cross-Account Access</a>.</p> </li> </ul>
    # @param [Hash, Types::PutPolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of the private CA to associate with the policy. The ARN of the CA can be found by calling the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action.</p> <p/>
    # @option params [String] :policy
    #   <p>The path and file name of a JSON-formatted IAM policy to attach to the specified private CA resource. If this policy does not contain all required statements or if it includes any statement that is not allowed, the <code>PutPolicy</code> action returns an <code>InvalidPolicyException</code>. For information about IAM policy and statement structure, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json">Overview of JSON Policies</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     policy: "AWSPolicy", # required
    #   }
    #   options = {}
    #   response = client.put_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_policy(params = {}, options = {})
      request = build_request(:put_policy, params)
      request.send_request(options)
    end

    # <p>Restores a certificate authority (CA) that is in the <code>DELETED</code> state. You can restore a CA during the period that you defined in the <b>PermanentDeletionTimeInDays</b> parameter of the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeleteCertificateAuthority.html">DeleteCertificateAuthority</a> action. Currently, you can specify 7 to 30 days. If you did not specify a <b>PermanentDeletionTimeInDays</b> value, by default you can restore the CA at any time in a 30 day period. You can check the time remaining in the restoration period of a private CA in the <code>DELETED</code> state by calling the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_DescribeCertificateAuthority.html">DescribeCertificateAuthority</a> or <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> actions. The status of a restored CA is set to its pre-deletion status when the <b>RestoreCertificateAuthority</b> action returns. To change its status to <code>ACTIVE</code>, call the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_UpdateCertificateAuthority.html">UpdateCertificateAuthority</a> action. If the private CA was in the <code>PENDING_CERTIFICATE</code> state at deletion, you must use the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html">ImportCertificateAuthorityCertificate</a> action to import a certificate authority into the private CA before it can be activated. You cannot restore a CA after the restoration period has ended.</p>
    # @param [Hash, Types::RestoreCertificateAuthorityRequest] params
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_authority_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.restore_certificate_authority(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def restore_certificate_authority(params = {}, options = {})
      request = build_request(:restore_certificate_authority, params)
      request.send_request(options)
    end

    # <p>Revokes a certificate that was issued inside Amazon Web Services Private CA. If you enable a certificate revocation list (CRL) when you create or update your private CA, information about the revoked certificates will be included in the CRL. Amazon Web Services Private CA writes the CRL to an S3 bucket that you specify. A CRL is typically updated approximately 30 minutes after a certificate is revoked. If for any reason the CRL update fails, Amazon Web Services Private CA attempts makes further attempts every 15 minutes. With Amazon CloudWatch, you can create alarms for the metrics <code>CRLGenerated</code> and <code>MisconfiguredCRLBucket</code>. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/PcaCloudWatch.html">Supported CloudWatch Metrics</a>.</p> <note> <p>Both Amazon Web Services Private CA and the IAM principal must have permission to write to the S3 bucket that you specify. If the IAM principal making the call does not have permission to write to the bucket, then an exception is thrown. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies">Access policies for CRLs in Amazon S3</a>.</p> </note> <p>Amazon Web Services Private CA also writes revocation information to the audit report. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html">CreateCertificateAuthorityAuditReport</a>.</p> <note> <p>You cannot revoke a root CA self-signed certificate.</p> </note>
    # @param [Hash, Types::RevokeCertificateRequest] params
    # @option params [String] :certificate_authority_arn
    #   <p>Amazon Resource Name (ARN) of the private CA that issued the certificate to be revoked. This must be of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
    # @option params [String] :certificate_serial
    #   <p>Serial number of the certificate to be revoked. This must be in hexadecimal format. You can retrieve the serial number by calling <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetCertificate.html">GetCertificate</a> with the Amazon Resource Name (ARN) of the certificate you want and the ARN of your private CA. The <b>GetCertificate</b> action retrieves the certificate in the PEM format. You can use the following OpenSSL command to list the certificate in text format and copy the hexadecimal serial number. </p> <p> <code>openssl x509 -in <i>file_path</i> -text -noout</code> </p> <p>You can also copy the serial number from the console or use the <a href="https://docs.aws.amazon.com/acm/latest/APIReference/API_DescribeCertificate.html">DescribeCertificate</a> action in the <i>Certificate Manager API Reference</i>. </p>
    # @option params [String] :revocation_reason
    #   <p>Specifies why you revoked the certificate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_authority_arn: "Arn", # required
    #     certificate_serial: "String128", # required
    #     revocation_reason: "UNSPECIFIED" # One of: ["UNSPECIFIED", "KEY_COMPROMISE", "CERTIFICATE_AUTHORITY_COMPROMISE", "AFFILIATION_CHANGED", "SUPERSEDED", "CESSATION_OF_OPERATION", "PRIVILEGE_WITHDRAWN", "A_A_COMPROMISE"], # required
    #   }
    #   options = {}
    #   response = client.revoke_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def revoke_certificate(params = {}, options = {})
      request = build_request(:revoke_certificate, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to your private CA. Tags are labels that you can use to identify and organize your Amazon Web Services resources. Each tag consists of a key and an optional value. You specify the private CA on input by its Amazon Resource Name (ARN). You specify the tag by using a key-value pair. You can apply a tag to just one private CA if you want to identify a specific characteristic of that CA, or you can apply the same tag to multiple private CAs if you want to filter for a common relationship among those CAs. To remove one or more tags, use the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_UntagCertificateAuthority.html">UntagCertificateAuthority</a> action. Call the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListTags.html">ListTags</a> action to see what tags are associated with your CA. </p> <note> <p>To attach tags to a private CA during the creation procedure, a CA administrator must first associate an inline IAM policy with the <code>CreateCertificateAuthority</code> action and explicitly allow tagging. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/auth-InlinePolicies.html#policy-tag-ca">Attaching tags to a CA at the time of creation</a>.</p> </note>
    # @param [Hash, Types::TagCertificateAuthorityRequest] params
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>List of tags to be associated with the CA.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_authority_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_certificate_authority(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_certificate_authority(params = {}, options = {})
      request = build_request(:tag_certificate_authority, params)
      request.send_request(options)
    end

    # <p>Remove one or more tags from your private CA. A tag consists of a key-value pair. If you do not specify the value portion of the tag when calling this action, the tag will be removed regardless of value. If you specify a value, the tag is removed only if it is associated with the specified value. To add tags to a private CA, use the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_TagCertificateAuthority.html">TagCertificateAuthority</a>. Call the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListTags.html">ListTags</a> action to see what tags are associated with your CA. </p>
    # @param [Hash, Types::UntagCertificateAuthorityRequest] params
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>List of tags to be removed from the CA.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_authority_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_certificate_authority(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_certificate_authority(params = {}, options = {})
      request = build_request(:untag_certificate_authority, params)
      request.send_request(options)
    end

    # <p>Updates the status or configuration of a private certificate authority (CA). Your private CA must be in the <code>ACTIVE</code> or <code>DISABLED</code> state before you can update it. You can disable a private CA that is in the <code>ACTIVE</code> state or make a CA that is in the <code>DISABLED</code> state active again.</p> <note> <p>Both Amazon Web Services Private CA and the IAM principal must have permission to write to the S3 bucket that you specify. If the IAM principal making the call does not have permission to write to the bucket, then an exception is thrown. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies">Access policies for CRLs in Amazon S3</a>.</p> </note>
    # @param [Hash, Types::UpdateCertificateAuthorityRequest] params
    # @option params [String] :certificate_authority_arn
    #   <p>Amazon Resource Name (ARN) of the private CA that issued the certificate to be revoked. This must be of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
    # @option params [Types::RevocationConfiguration] :revocation_configuration
    #   <p>Contains information to enable support for Online Certificate Status Protocol (OCSP), certificate revocation list (CRL), both protocols, or neither. If you don't supply this parameter, existing capibilites remain unchanged. For more information, see the <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_OcspConfiguration.html">OcspConfiguration</a> and <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html">CrlConfiguration</a> types.</p> <p>The following requirements apply to revocation configurations.</p> <ul> <li> <p>A configuration disabling CRLs or OCSP must contain only the <code>Enabled=False</code> parameter, and will fail if other parameters such as <code>CustomCname</code> or <code>ExpirationInDays</code> are included.</p> </li> <li> <p>In a CRL configuration, the <code>S3BucketName</code> parameter must conform to <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html">Amazon S3 bucket naming rules</a>.</p> </li> <li> <p>A configuration containing a custom Canonical Name (CNAME) parameter for CRLs or OCSP must conform to <a href="https://www.ietf.org/rfc/rfc2396.txt">RFC2396</a> restrictions on the use of special characters in a CNAME. </p> </li> <li> <p>In a CRL or OCSP configuration, the value of a CNAME parameter must not include a protocol prefix such as "http://" or "https://".</p> </li> </ul> <important> <p> If you update the <code>S3BucketName</code> of <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html">CrlConfiguration</a>, you can break revocation for existing certificates. In other words, if you call <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_UpdateCertificateAuthority.html">UpdateCertificateAuthority</a> to update the CRL configuration's S3 bucket name, Amazon Web Services Private CA only writes CRLs to the new S3 bucket. Certificates issued prior to this point will have the old S3 bucket name in your CRL Distribution Point (CDP) extension, essentially breaking revocation. If you must update the S3 bucket, you'll need to reissue old certificates to keep the revocation working. Alternatively, you can use a <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html#privateca-Type-CrlConfiguration-CustomCname">CustomCname</a> in your CRL configuration if you might need to change the S3 bucket name in the future.</p> </important>
    # @option params [String] :status
    #   <p>Status of your private CA.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_authority_arn: "Arn", # required
    #     revocation_configuration: {
    #       crl_configuration: {
    #         enabled: false, # required
    #         expiration_in_days: 1,
    #         custom_cname: "CnameString",
    #         s3_bucket_name: "S3BucketName3To255",
    #         s3_object_acl: "PUBLIC_READ" # One of: ["PUBLIC_READ", "BUCKET_OWNER_FULL_CONTROL"],
    #         crl_distribution_point_extension_configuration: {
    #           omit_extension: false, # required
    #         },
    #         crl_type: "COMPLETE" # One of: ["COMPLETE", "PARTITIONED"],
    #         custom_path: "CrlPathString"
    #       },
    #       ocsp_configuration: {
    #         enabled: false, # required
    #         ocsp_custom_cname: "CnameString"
    #       }
    #     },
    #     status: "CREATING" # One of: ["CREATING", "PENDING_CERTIFICATE", "ACTIVE", "DELETED", "DISABLED", "EXPIRED", "FAILED"]
    #   }
    #   options = {}
    #   response = client.update_certificate_authority(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_certificate_authority(params = {}, options = {})
      request = build_request(:update_certificate_authority, params)
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
      context[:gem_name] = 'aws-sdk-acmpca'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        audit_report_created: Waiters::AuditReportCreated,
        certificate_authority_csr_created: Waiters::CertificateAuthorityCSRCreated,
        certificate_issued: Waiters::CertificateIssued
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
    end
  end
end
