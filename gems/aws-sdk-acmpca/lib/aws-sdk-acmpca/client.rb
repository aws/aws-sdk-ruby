# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics.rb'
require 'aws-sdk-core/plugins/client_metrics_sender.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:acmpca)

module Aws::ACMPCA
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :acmpca

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetrics)
    add_plugin(Aws::Plugins::ClientMetricsSender)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a root or subordinate private certificate authority (CA). You
    # must specify the CA configuration, the certificate revocation list
    # (CRL) configuration, the CA type, and an optional idempotency token to
    # avoid accidental creation of multiple CAs. The CA configuration
    # specifies the name of the algorithm and key size to be used to create
    # the CA private key, the type of signing algorithm that the CA uses,
    # and X.500 subject information. The CRL configuration specifies the CRL
    # expiration period in days (the validity period of the CRL), the Amazon
    # S3 bucket that will contain the CRL, and a CNAME alias for the S3
    # bucket that is included in certificates issued by the CA. If
    # successful, this action returns the Amazon Resource Name (ARN) of the
    # CA.
    #
    # @option params [required, Types::CertificateAuthorityConfiguration] :certificate_authority_configuration
    #   Name and bit size of the private key algorithm, the name of the
    #   signing algorithm, and X.500 certificate subject information.
    #
    # @option params [Types::RevocationConfiguration] :revocation_configuration
    #   Contains a Boolean value that you can use to enable a certification
    #   revocation list (CRL) for the CA, the name of the S3 bucket to which
    #   ACM Private CA will write the CRL, and an optional CNAME alias that
    #   you can use to hide the name of your bucket in the **CRL Distribution
    #   Points** extension of your CA certificate. For more information, see
    #   the CrlConfiguration structure.
    #
    # @option params [required, String] :certificate_authority_type
    #   The type of the certificate authority.
    #
    # @option params [String] :idempotency_token
    #   Alphanumeric string that can be used to distinguish between calls to
    #   **CreateCertificateAuthority**. Idempotency tokens time out after five
    #   minutes. Therefore, if you call **CreateCertificateAuthority**
    #   multiple times with the same idempotency token within a five minute
    #   period, ACM Private CA recognizes that you are requesting only one
    #   certificate. As a result, ACM Private CA issues only one. If you
    #   change the idempotency token for each call, however, ACM Private CA
    #   recognizes that you are requesting multiple certificates.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs that will be attached to the new private CA. You can
    #   associate up to 50 tags with a private CA. For information using tags
    #   with
    #
    #   IAM to manage permissions, see [Controlling Access Using IAM Tags][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html
    #
    # @return [Types::CreateCertificateAuthorityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCertificateAuthorityResponse#certificate_authority_arn #certificate_authority_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_certificate_authority({
    #     certificate_authority_configuration: { # required
    #       key_algorithm: "RSA_2048", # required, accepts RSA_2048, RSA_4096, EC_prime256v1, EC_secp384r1
    #       signing_algorithm: "SHA256WITHECDSA", # required, accepts SHA256WITHECDSA, SHA384WITHECDSA, SHA512WITHECDSA, SHA256WITHRSA, SHA384WITHRSA, SHA512WITHRSA
    #       subject: { # required
    #         country: "CountryCodeString",
    #         organization: "String64",
    #         organizational_unit: "String64",
    #         distinguished_name_qualifier: "DistinguishedNameQualifierString",
    #         state: "String128",
    #         common_name: "String64",
    #         serial_number: "String64",
    #         locality: "String128",
    #         title: "String64",
    #         surname: "String40",
    #         given_name: "String16",
    #         initials: "String5",
    #         pseudonym: "String128",
    #         generation_qualifier: "String3",
    #       },
    #     },
    #     revocation_configuration: {
    #       crl_configuration: {
    #         enabled: false, # required
    #         expiration_in_days: 1,
    #         custom_cname: "String253",
    #         s3_bucket_name: "String3To255",
    #       },
    #     },
    #     certificate_authority_type: "ROOT", # required, accepts ROOT, SUBORDINATE
    #     idempotency_token: "IdempotencyToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_authority_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CreateCertificateAuthority AWS API Documentation
    #
    # @overload create_certificate_authority(params = {})
    # @param [Hash] params ({})
    def create_certificate_authority(params = {}, options = {})
      req = build_request(:create_certificate_authority, params)
      req.send_request(options)
    end

    # Creates an audit report that lists every time that your CA private key
    # is used. The report is saved in the Amazon S3 bucket that you specify
    # on input. The IssueCertificate and RevokeCertificate actions use the
    # private key.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the CA to be audited. This is of the
    #   form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    # @option params [required, String] :s3_bucket_name
    #   The name of the S3 bucket that will contain the audit report.
    #
    # @option params [required, String] :audit_report_response_format
    #   The format in which to create the report. This can be either **JSON**
    #   or **CSV**.
    #
    # @return [Types::CreateCertificateAuthorityAuditReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCertificateAuthorityAuditReportResponse#audit_report_id #audit_report_id} => String
    #   * {Types::CreateCertificateAuthorityAuditReportResponse#s3_key #s3_key} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_certificate_authority_audit_report({
    #     certificate_authority_arn: "Arn", # required
    #     s3_bucket_name: "String", # required
    #     audit_report_response_format: "JSON", # required, accepts JSON, CSV
    #   })
    #
    # @example Response structure
    #
    #   resp.audit_report_id #=> String
    #   resp.s3_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CreateCertificateAuthorityAuditReport AWS API Documentation
    #
    # @overload create_certificate_authority_audit_report(params = {})
    # @param [Hash] params ({})
    def create_certificate_authority_audit_report(params = {}, options = {})
      req = build_request(:create_certificate_authority_audit_report, params)
      req.send_request(options)
    end

    # Assigns permissions from a private CA to a designated AWS service.
    # Services are specified by their service principals and can be given
    # permission to create and retrieve certificates on a private CA.
    # Services can also be given permission to list the active permissions
    # that the private CA has granted. For ACM to automatically renew your
    # private CA's certificates, you must assign all possible permissions
    # from the CA to the ACM service principal.
    #
    # At this time, you can only assign permissions to ACM
    # (`acm.amazonaws.com`). Permissions can be revoked with the
    # DeletePermission action and listed with the ListPermissions action.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the CA that grants the permissions.
    #   You can find the ARN by calling the ListCertificateAuthorities action.
    #   This must have the following form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    # @option params [required, String] :principal
    #   The AWS service or identity that receives the permission. At this
    #   time, the only valid principal is `acm.amazonaws.com`.
    #
    # @option params [String] :source_account
    #   The ID of the calling account.
    #
    # @option params [required, Array<String>] :actions
    #   The actions that the specified AWS service principal can use. These
    #   include `IssueCertificate`, `GetCertificate`, and `ListPermissions`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_permission({
    #     certificate_authority_arn: "Arn", # required
    #     principal: "Principal", # required
    #     source_account: "AccountId",
    #     actions: ["IssueCertificate"], # required, accepts IssueCertificate, GetCertificate, ListPermissions
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CreatePermission AWS API Documentation
    #
    # @overload create_permission(params = {})
    # @param [Hash] params ({})
    def create_permission(params = {}, options = {})
      req = build_request(:create_permission, params)
      req.send_request(options)
    end

    # Deletes a private certificate authority (CA). You must provide the
    # Amazon Resource Name (ARN) of the private CA that you want to delete.
    # You can find the ARN by calling the ListCertificateAuthorities action.
    #
    # <note markdown="1"> Deleting a CA will invalidate other CAs and certificates below it in
    # your CA hierarchy.
    #
    #  </note>
    #
    # Before you can delete a CA that you have created and activated, you
    # must disable it. To do this, call the UpdateCertificateAuthority
    # action and set the **CertificateAuthorityStatus** parameter to
    # `DISABLED`.
    #
    # Additionally, you can delete a CA if you are waiting for it to be
    # created (that is, the status of the CA is `CREATING`). You can also
    # delete it if the CA has been created but you haven't yet imported the
    # signed certificate into ACM Private CA (that is, the status of the CA
    # is `PENDING_CERTIFICATE`).
    #
    # When you successfully call DeleteCertificateAuthority, the CA's
    # status changes to `DELETED`. However, the CA won't be permanently
    # deleted until the restoration period has passed. By default, if you do
    # not set the `PermanentDeletionTimeInDays` parameter, the CA remains
    # restorable for 30 days. You can set the parameter from 7 to 30 days.
    # The DescribeCertificateAuthority action returns the time remaining in
    # the restoration window of a private CA in the `DELETED` state. To
    # restore an eligible CA, call the RestoreCertificateAuthority action.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   CreateCertificateAuthority. This must have the following form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    # @option params [Integer] :permanent_deletion_time_in_days
    #   The number of days to make a CA restorable after it has been deleted.
    #   This can be anywhere from 7 to 30 days, with 30 being the default.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_certificate_authority({
    #     certificate_authority_arn: "Arn", # required
    #     permanent_deletion_time_in_days: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DeleteCertificateAuthority AWS API Documentation
    #
    # @overload delete_certificate_authority(params = {})
    # @param [Hash] params ({})
    def delete_certificate_authority(params = {}, options = {})
      req = build_request(:delete_certificate_authority, params)
      req.send_request(options)
    end

    # Revokes permissions that a private CA assigned to a designated AWS
    # service. Permissions can be created with the CreatePermission action
    # and listed with the ListPermissions action.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Number (ARN) of the private CA that issued the
    #   permissions. You can find the CA's ARN by calling the
    #   ListCertificateAuthorities action. This must have the following form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    # @option params [required, String] :principal
    #   The AWS service or identity that will have its CA permissions revoked.
    #   At this time, the only valid service principal is `acm.amazonaws.com`
    #
    # @option params [String] :source_account
    #   The AWS account that calls this action.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_permission({
    #     certificate_authority_arn: "Arn", # required
    #     principal: "Principal", # required
    #     source_account: "AccountId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DeletePermission AWS API Documentation
    #
    # @overload delete_permission(params = {})
    # @param [Hash] params ({})
    def delete_permission(params = {}, options = {})
      req = build_request(:delete_permission, params)
      req.send_request(options)
    end

    # Lists information about your private certificate authority (CA). You
    # specify the private CA on input by its ARN (Amazon Resource Name). The
    # output contains the status of your CA. This can be any of the
    # following:
    #
    # * `CREATING` - ACM Private CA is creating your private certificate
    #   authority.
    #
    # * `PENDING_CERTIFICATE` - The certificate is pending. You must use
    #   your ACM Private CA-hosted or on-premises root or subordinate CA to
    #   sign your private CA CSR and then import it into PCA.
    #
    # * `ACTIVE` - Your private CA is active.
    #
    # * `DISABLED` - Your private CA has been disabled.
    #
    # * `EXPIRED` - Your private CA certificate has expired.
    #
    # * `FAILED` - Your private CA has failed. Your CA can fail because of
    #   problems such a network outage or backend AWS failure or other
    #   errors. A failed CA can never return to the pending state. You must
    #   create a new CA.
    #
    # * `DELETED` - Your private CA is within the restoration period, after
    #   which it is permanently deleted. The length of time remaining in the
    #   CA's restoration period is also included in this action's output.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   CreateCertificateAuthority. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    # @return [Types::DescribeCertificateAuthorityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCertificateAuthorityResponse#certificate_authority #certificate_authority} => Types::CertificateAuthority
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificate_authority({
    #     certificate_authority_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_authority.arn #=> String
    #   resp.certificate_authority.created_at #=> Time
    #   resp.certificate_authority.last_state_change_at #=> Time
    #   resp.certificate_authority.type #=> String, one of "ROOT", "SUBORDINATE"
    #   resp.certificate_authority.serial #=> String
    #   resp.certificate_authority.status #=> String, one of "CREATING", "PENDING_CERTIFICATE", "ACTIVE", "DELETED", "DISABLED", "EXPIRED", "FAILED"
    #   resp.certificate_authority.not_before #=> Time
    #   resp.certificate_authority.not_after #=> Time
    #   resp.certificate_authority.failure_reason #=> String, one of "REQUEST_TIMED_OUT", "UNSUPPORTED_ALGORITHM", "OTHER"
    #   resp.certificate_authority.certificate_authority_configuration.key_algorithm #=> String, one of "RSA_2048", "RSA_4096", "EC_prime256v1", "EC_secp384r1"
    #   resp.certificate_authority.certificate_authority_configuration.signing_algorithm #=> String, one of "SHA256WITHECDSA", "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA", "SHA512WITHRSA"
    #   resp.certificate_authority.certificate_authority_configuration.subject.country #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.organization #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.organizational_unit #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.distinguished_name_qualifier #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.state #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.common_name #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.serial_number #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.locality #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.title #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.surname #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.given_name #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.initials #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.pseudonym #=> String
    #   resp.certificate_authority.certificate_authority_configuration.subject.generation_qualifier #=> String
    #   resp.certificate_authority.revocation_configuration.crl_configuration.enabled #=> Boolean
    #   resp.certificate_authority.revocation_configuration.crl_configuration.expiration_in_days #=> Integer
    #   resp.certificate_authority.revocation_configuration.crl_configuration.custom_cname #=> String
    #   resp.certificate_authority.revocation_configuration.crl_configuration.s3_bucket_name #=> String
    #   resp.certificate_authority.restorable_until #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DescribeCertificateAuthority AWS API Documentation
    #
    # @overload describe_certificate_authority(params = {})
    # @param [Hash] params ({})
    def describe_certificate_authority(params = {}, options = {})
      req = build_request(:describe_certificate_authority, params)
      req.send_request(options)
    end

    # Lists information about a specific audit report created by calling the
    # CreateCertificateAuthorityAuditReport action. Audit information is
    # created every time the certificate authority (CA) private key is used.
    # The private key is used when you call the IssueCertificate action or
    # the RevokeCertificate action.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the private CA. This must be of the
    #   form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    # @option params [required, String] :audit_report_id
    #   The report ID returned by calling the
    #   CreateCertificateAuthorityAuditReport action.
    #
    # @return [Types::DescribeCertificateAuthorityAuditReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCertificateAuthorityAuditReportResponse#audit_report_status #audit_report_status} => String
    #   * {Types::DescribeCertificateAuthorityAuditReportResponse#s3_bucket_name #s3_bucket_name} => String
    #   * {Types::DescribeCertificateAuthorityAuditReportResponse#s3_key #s3_key} => String
    #   * {Types::DescribeCertificateAuthorityAuditReportResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificate_authority_audit_report({
    #     certificate_authority_arn: "Arn", # required
    #     audit_report_id: "AuditReportId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.audit_report_status #=> String, one of "CREATING", "SUCCESS", "FAILED"
    #   resp.s3_bucket_name #=> String
    #   resp.s3_key #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DescribeCertificateAuthorityAuditReport AWS API Documentation
    #
    # @overload describe_certificate_authority_audit_report(params = {})
    # @param [Hash] params ({})
    def describe_certificate_authority_audit_report(params = {}, options = {})
      req = build_request(:describe_certificate_authority_audit_report, params)
      req.send_request(options)
    end

    # Retrieves a certificate from your private CA. The ARN of the
    # certificate is returned when you call the IssueCertificate action. You
    # must specify both the ARN of your private CA and the ARN of the issued
    # certificate when calling the **GetCertificate** action. You can
    # retrieve the certificate if it is in the **ISSUED** state. You can
    # call the CreateCertificateAuthorityAuditReport action to create a
    # report that contains information about all of the certificates issued
    # and revoked by your private CA.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   CreateCertificateAuthority. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    # @option params [required, String] :certificate_arn
    #   The ARN of the issued certificate. The ARN contains the certificate
    #   serial number and must be in the following form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012/certificate/286535153982981100925020015808220737245
    #   `
    #
    # @return [Types::GetCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCertificateResponse#certificate #certificate} => String
    #   * {Types::GetCertificateResponse#certificate_chain #certificate_chain} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_certificate({
    #     certificate_authority_arn: "Arn", # required
    #     certificate_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate #=> String
    #   resp.certificate_chain #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetCertificate AWS API Documentation
    #
    # @overload get_certificate(params = {})
    # @param [Hash] params ({})
    def get_certificate(params = {}, options = {})
      req = build_request(:get_certificate, params)
      req.send_request(options)
    end

    # Retrieves the certificate and certificate chain for your private
    # certificate authority (CA). Both the certificate and the chain are
    # base64 PEM-encoded. The chain does not include the CA certificate.
    # Each certificate in the chain signs the one before it.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) of your private CA. This is of the
    #   form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    # @return [Types::GetCertificateAuthorityCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCertificateAuthorityCertificateResponse#certificate #certificate} => String
    #   * {Types::GetCertificateAuthorityCertificateResponse#certificate_chain #certificate_chain} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_certificate_authority_certificate({
    #     certificate_authority_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate #=> String
    #   resp.certificate_chain #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetCertificateAuthorityCertificate AWS API Documentation
    #
    # @overload get_certificate_authority_certificate(params = {})
    # @param [Hash] params ({})
    def get_certificate_authority_certificate(params = {}, options = {})
      req = build_request(:get_certificate_authority_certificate, params)
      req.send_request(options)
    end

    # Retrieves the certificate signing request (CSR) for your private
    # certificate authority (CA). The CSR is created when you call the
    # CreateCertificateAuthority action. Sign the CSR with your ACM Private
    # CA-hosted or on-premises root or subordinate CA. Then import the
    # signed certificate back into ACM Private CA by calling the
    # ImportCertificateAuthorityCertificate action. The CSR is returned as a
    # base64 PEM-encoded string.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called the
    #   CreateCertificateAuthority action. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    # @return [Types::GetCertificateAuthorityCsrResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCertificateAuthorityCsrResponse#csr #csr} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_certificate_authority_csr({
    #     certificate_authority_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.csr #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetCertificateAuthorityCsr AWS API Documentation
    #
    # @overload get_certificate_authority_csr(params = {})
    # @param [Hash] params ({})
    def get_certificate_authority_csr(params = {}, options = {})
      req = build_request(:get_certificate_authority_csr, params)
      req.send_request(options)
    end

    # Imports a signed private CA certificate into ACM Private CA. This
    # action is used when you are using a chain of trust whose root is
    # located outside ACM Private CA. Before you can call this action, the
    # following preparations must in place:
    #
    # 1.  In ACM Private CA, call the CreateCertificateAuthority action to
    #     create the private CA that that you plan to back with the imported
    #     certificate.
    #
    # 2.  Call the GetCertificateAuthorityCsr action to generate a
    #     certificate signing request (CSR).
    #
    # 3.  Sign the CSR using a root or intermediate CA hosted either by an
    #     on-premises PKI hierarchy or a commercial CA..
    #
    # 4.  Create a certificate chain and copy the signed certificate and the
    #     certificate chain to your working directory.
    #
    # The following requirements apply when you import a CA certificate.
    #
    # * You cannot import a non-self-signed certificate for use as a root
    #   CA.
    #
    # * You cannot import a self-signed certificate for use as a subordinate
    #   CA.
    #
    # * Your certificate chain must not include the private CA certificate
    #   that you are importing.
    #
    # * Your ACM Private CA-hosted or on-premises CA certificate must be the
    #   last certificate in your chain. The subordinate certificate, if any,
    #   that your root CA signed must be next to last. The subordinate
    #   certificate signed by the preceding subordinate CA must come next,
    #   and so on until your chain is built.
    #
    # * The chain must be PEM-encoded.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   CreateCertificateAuthority. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    # @option params [required, String, IO] :certificate
    #   The PEM-encoded certificate for a private CA. This may be a
    #   self-signed certificate in the case of a root CA, or it may be signed
    #   by another CA that you control.
    #
    # @option params [String, IO] :certificate_chain
    #   A PEM-encoded file that contains all of your certificates, other than
    #   the certificate you're importing, chaining up to your root CA. Your
    #   ACM Private CA-hosted or on-premises root certificate is the last in
    #   the chain, and each certificate in the chain signs the one preceding.
    #
    #   This parameter must be supplied when you import a subordinate CA. When
    #   you import a root CA, there is no chain.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_certificate_authority_certificate({
    #     certificate_authority_arn: "Arn", # required
    #     certificate: "data", # required
    #     certificate_chain: "data",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ImportCertificateAuthorityCertificate AWS API Documentation
    #
    # @overload import_certificate_authority_certificate(params = {})
    # @param [Hash] params ({})
    def import_certificate_authority_certificate(params = {}, options = {})
      req = build_request(:import_certificate_authority_certificate, params)
      req.send_request(options)
    end

    # Uses your private certificate authority (CA) to issue a client
    # certificate. This action returns the Amazon Resource Name (ARN) of the
    # certificate. You can retrieve the certificate by calling the
    # GetCertificate action and specifying the ARN.
    #
    # <note markdown="1"> You cannot use the ACM **ListCertificateAuthorities** action to
    # retrieve the ARNs of the certificates that you issue by using ACM
    # Private CA.
    #
    #  </note>
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   CreateCertificateAuthority. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    # @option params [required, String, IO] :csr
    #   The certificate signing request (CSR) for the certificate you want to
    #   issue. You can use the following OpenSSL command to create the CSR and
    #   a 2048 bit RSA private key.
    #
    #   `openssl req -new -newkey rsa:2048 -days 365 -keyout
    #   private/test_cert_priv_key.pem -out csr/test_cert_.csr`
    #
    #   If you have a configuration file, you can use the following OpenSSL
    #   command. The `usr_cert` block in the configuration file contains your
    #   X509 version 3 extensions.
    #
    #   `openssl req -new -config openssl_rsa.cnf -extensions usr_cert -newkey
    #   rsa:2048 -days -365 -keyout private/test_cert_priv_key.pem -out
    #   csr/test_cert_.csr`
    #
    # @option params [required, String] :signing_algorithm
    #   The name of the algorithm that will be used to sign the certificate to
    #   be issued.
    #
    # @option params [String] :template_arn
    #   Specifies a custom configuration template to use when issuing a
    #   certificate. If this parameter is not provided, ACM Private CA
    #   defaults to the `EndEntityCertificate/V1` template.
    #
    #   The following service-owned `TemplateArn` values are supported by ACM
    #   Private CA:
    #
    #   * arn:aws:acm-pca:::template/EndEntityCertificate/V1
    #
    #   * arn:aws:acm-pca:::template/SubordinateCACertificate\_PathLen0/V1
    #
    #   * arn:aws:acm-pca:::template/SubordinateCACertificate\_PathLen1/V1
    #
    #   * arn:aws:acm-pca:::template/SubordinateCACertificate\_PathLen2/V1
    #
    #   * arn:aws:acm-pca:::template/SubordinateCACertificate\_PathLen3/V1
    #
    #   * arn:aws:acm-pca:::template/RootCACertificate/V1
    #
    #   For more information, see [Using Templates][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html
    #
    # @option params [required, Types::Validity] :validity
    #   The type of the validity period.
    #
    # @option params [String] :idempotency_token
    #   Custom string that can be used to distinguish between calls to the
    #   **IssueCertificate** action. Idempotency tokens time out after one
    #   hour. Therefore, if you call **IssueCertificate** multiple times with
    #   the same idempotency token within 5 minutes, ACM Private CA recognizes
    #   that you are requesting only one certificate and will issue only one.
    #   If you change the idempotency token for each call, PCA recognizes that
    #   you are requesting multiple certificates.
    #
    # @return [Types::IssueCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IssueCertificateResponse#certificate_arn #certificate_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.issue_certificate({
    #     certificate_authority_arn: "Arn", # required
    #     csr: "data", # required
    #     signing_algorithm: "SHA256WITHECDSA", # required, accepts SHA256WITHECDSA, SHA384WITHECDSA, SHA512WITHECDSA, SHA256WITHRSA, SHA384WITHRSA, SHA512WITHRSA
    #     template_arn: "Arn",
    #     validity: { # required
    #       value: 1, # required
    #       type: "END_DATE", # required, accepts END_DATE, ABSOLUTE, DAYS, MONTHS, YEARS
    #     },
    #     idempotency_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/IssueCertificate AWS API Documentation
    #
    # @overload issue_certificate(params = {})
    # @param [Hash] params ({})
    def issue_certificate(params = {}, options = {})
      req = build_request(:issue_certificate, params)
      req.send_request(options)
    end

    # Lists the private certificate authorities that you created by using
    # the CreateCertificateAuthority action.
    #
    # @option params [String] :next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the `NextToken` parameter from the response you just
    #   received.
    #
    # @option params [Integer] :max_results
    #   Use this parameter when paginating results to specify the maximum
    #   number of items to return in the response on each page. If additional
    #   items exist beyond the number you specify, the `NextToken` element is
    #   sent in the response. Use this `NextToken` value in a subsequent
    #   request to retrieve additional items.
    #
    # @return [Types::ListCertificateAuthoritiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCertificateAuthoritiesResponse#certificate_authorities #certificate_authorities} => Array&lt;Types::CertificateAuthority&gt;
    #   * {Types::ListCertificateAuthoritiesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_certificate_authorities({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_authorities #=> Array
    #   resp.certificate_authorities[0].arn #=> String
    #   resp.certificate_authorities[0].created_at #=> Time
    #   resp.certificate_authorities[0].last_state_change_at #=> Time
    #   resp.certificate_authorities[0].type #=> String, one of "ROOT", "SUBORDINATE"
    #   resp.certificate_authorities[0].serial #=> String
    #   resp.certificate_authorities[0].status #=> String, one of "CREATING", "PENDING_CERTIFICATE", "ACTIVE", "DELETED", "DISABLED", "EXPIRED", "FAILED"
    #   resp.certificate_authorities[0].not_before #=> Time
    #   resp.certificate_authorities[0].not_after #=> Time
    #   resp.certificate_authorities[0].failure_reason #=> String, one of "REQUEST_TIMED_OUT", "UNSUPPORTED_ALGORITHM", "OTHER"
    #   resp.certificate_authorities[0].certificate_authority_configuration.key_algorithm #=> String, one of "RSA_2048", "RSA_4096", "EC_prime256v1", "EC_secp384r1"
    #   resp.certificate_authorities[0].certificate_authority_configuration.signing_algorithm #=> String, one of "SHA256WITHECDSA", "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA", "SHA512WITHRSA"
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.country #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.organization #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.organizational_unit #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.distinguished_name_qualifier #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.state #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.common_name #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.serial_number #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.locality #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.title #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.surname #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.given_name #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.initials #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.pseudonym #=> String
    #   resp.certificate_authorities[0].certificate_authority_configuration.subject.generation_qualifier #=> String
    #   resp.certificate_authorities[0].revocation_configuration.crl_configuration.enabled #=> Boolean
    #   resp.certificate_authorities[0].revocation_configuration.crl_configuration.expiration_in_days #=> Integer
    #   resp.certificate_authorities[0].revocation_configuration.crl_configuration.custom_cname #=> String
    #   resp.certificate_authorities[0].revocation_configuration.crl_configuration.s3_bucket_name #=> String
    #   resp.certificate_authorities[0].restorable_until #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ListCertificateAuthorities AWS API Documentation
    #
    # @overload list_certificate_authorities(params = {})
    # @param [Hash] params ({})
    def list_certificate_authorities(params = {}, options = {})
      req = build_request(:list_certificate_authorities, params)
      req.send_request(options)
    end

    # Lists all the permissions, if any, that have been assigned by a
    # private CA. Permissions can be granted with the CreatePermission
    # action and revoked with the DeletePermission action.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Number (ARN) of the private CA to inspect. You can
    #   find the ARN by calling the ListCertificateAuthorities action. This
    #   must be of the form:
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012`
    #   You can get a private CA's ARN by running the
    #   ListCertificateAuthorities action.
    #
    # @option params [String] :next_token
    #   When paginating results, use this parameter in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of **NextToken** from the response you just received.
    #
    # @option params [Integer] :max_results
    #   When paginating results, use this parameter to specify the maximum
    #   number of items to return in the response. If additional items exist
    #   beyond the number you specify, the **NextToken** element is sent in
    #   the response. Use this **NextToken** value in a subsequent request to
    #   retrieve additional items.
    #
    # @return [Types::ListPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPermissionsResponse#permissions #permissions} => Array&lt;Types::Permission&gt;
    #   * {Types::ListPermissionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permissions({
    #     certificate_authority_arn: "Arn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.permissions #=> Array
    #   resp.permissions[0].certificate_authority_arn #=> String
    #   resp.permissions[0].created_at #=> Time
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].source_account #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String, one of "IssueCertificate", "GetCertificate", "ListPermissions"
    #   resp.permissions[0].policy #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ListPermissions AWS API Documentation
    #
    # @overload list_permissions(params = {})
    # @param [Hash] params ({})
    def list_permissions(params = {}, options = {})
      req = build_request(:list_permissions, params)
      req.send_request(options)
    end

    # Lists the tags, if any, that are associated with your private CA. Tags
    # are labels that you can use to identify and organize your CAs. Each
    # tag consists of a key and an optional value. Call the
    # TagCertificateAuthority action to add one or more tags to your CA.
    # Call the UntagCertificateAuthority action to remove tags.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called the
    #   CreateCertificateAuthority action. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    # @option params [String] :next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of **NextToken** from the response you just received.
    #
    # @option params [Integer] :max_results
    #   Use this parameter when paginating results to specify the maximum
    #   number of items to return in the response. If additional items exist
    #   beyond the number you specify, the **NextToken** element is sent in
    #   the response. Use this **NextToken** value in a subsequent request to
    #   retrieve additional items.
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     certificate_authority_arn: "Arn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Restores a certificate authority (CA) that is in the `DELETED` state.
    # You can restore a CA during the period that you defined in the
    # **PermanentDeletionTimeInDays** parameter of the
    # DeleteCertificateAuthority action. Currently, you can specify 7 to 30
    # days. If you did not specify a **PermanentDeletionTimeInDays** value,
    # by default you can restore the CA at any time in a 30 day period. You
    # can check the time remaining in the restoration period of a private CA
    # in the `DELETED` state by calling the DescribeCertificateAuthority or
    # ListCertificateAuthorities actions. The status of a restored CA is set
    # to its pre-deletion status when the **RestoreCertificateAuthority**
    # action returns. To change its status to `ACTIVE`, call the
    # UpdateCertificateAuthority action. If the private CA was in the
    # `PENDING_CERTIFICATE` state at deletion, you must use the
    # ImportCertificateAuthorityCertificate action to import a certificate
    # authority into the private CA before it can be activated. You cannot
    # restore a CA after the restoration period has ended.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called the
    #   CreateCertificateAuthority action. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_certificate_authority({
    #     certificate_authority_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/RestoreCertificateAuthority AWS API Documentation
    #
    # @overload restore_certificate_authority(params = {})
    # @param [Hash] params ({})
    def restore_certificate_authority(params = {}, options = {})
      req = build_request(:restore_certificate_authority, params)
      req.send_request(options)
    end

    # Revokes a certificate that was issued inside ACM Private CA. If you
    # enable a certificate revocation list (CRL) when you create or update
    # your private CA, information about the revoked certificates will be
    # included in the CRL. ACM Private CA writes the CRL to an S3 bucket
    # that you specify. For more information about revocation, see the
    # CrlConfiguration structure. ACM Private CA also writes revocation
    # information to the audit report. For more information, see
    # CreateCertificateAuthorityAuditReport.
    #
    # <note markdown="1"> You cannot revoke a root CA self-signed certificate.
    #
    #  </note>
    #
    # @option params [required, String] :certificate_authority_arn
    #   Amazon Resource Name (ARN) of the private CA that issued the
    #   certificate to be revoked. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    # @option params [required, String] :certificate_serial
    #   Serial number of the certificate to be revoked. This must be in
    #   hexadecimal format. You can retrieve the serial number by calling
    #   GetCertificate with the Amazon Resource Name (ARN) of the certificate
    #   you want and the ARN of your private CA. The **GetCertificate** action
    #   retrieves the certificate in the PEM format. You can use the following
    #   OpenSSL command to list the certificate in text format and copy the
    #   hexadecimal serial number.
    #
    #   `openssl x509 -in file_path -text -noout`
    #
    #   You can also copy the serial number from the console or use the
    #   [DescribeCertificate][1] action in the *AWS Certificate Manager API
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/APIReference/API_DescribeCertificate.html
    #
    # @option params [required, String] :revocation_reason
    #   Specifies why you revoked the certificate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_certificate({
    #     certificate_authority_arn: "Arn", # required
    #     certificate_serial: "String128", # required
    #     revocation_reason: "UNSPECIFIED", # required, accepts UNSPECIFIED, KEY_COMPROMISE, CERTIFICATE_AUTHORITY_COMPROMISE, AFFILIATION_CHANGED, SUPERSEDED, CESSATION_OF_OPERATION, PRIVILEGE_WITHDRAWN, A_A_COMPROMISE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/RevokeCertificate AWS API Documentation
    #
    # @overload revoke_certificate(params = {})
    # @param [Hash] params ({})
    def revoke_certificate(params = {}, options = {})
      req = build_request(:revoke_certificate, params)
      req.send_request(options)
    end

    # Adds one or more tags to your private CA. Tags are labels that you can
    # use to identify and organize your AWS resources. Each tag consists of
    # a key and an optional value. You specify the private CA on input by
    # its Amazon Resource Name (ARN). You specify the tag by using a
    # key-value pair. You can apply a tag to just one private CA if you want
    # to identify a specific characteristic of that CA, or you can apply the
    # same tag to multiple private CAs if you want to filter for a common
    # relationship among those CAs. To remove one or more tags, use the
    # UntagCertificateAuthority action. Call the ListTags action to see what
    # tags are associated with your CA.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   CreateCertificateAuthority. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   List of tags to be associated with the CA.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_certificate_authority({
    #     certificate_authority_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/TagCertificateAuthority AWS API Documentation
    #
    # @overload tag_certificate_authority(params = {})
    # @param [Hash] params ({})
    def tag_certificate_authority(params = {}, options = {})
      req = build_request(:tag_certificate_authority, params)
      req.send_request(options)
    end

    # Remove one or more tags from your private CA. A tag consists of a
    # key-value pair. If you do not specify the value portion of the tag
    # when calling this action, the tag will be removed regardless of value.
    # If you specify a value, the tag is removed only if it is associated
    # with the specified value. To add tags to a private CA, use the
    # TagCertificateAuthority. Call the ListTags action to see what tags are
    # associated with your CA.
    #
    # @option params [required, String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   CreateCertificateAuthority. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   List of tags to be removed from the CA.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_certificate_authority({
    #     certificate_authority_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/UntagCertificateAuthority AWS API Documentation
    #
    # @overload untag_certificate_authority(params = {})
    # @param [Hash] params ({})
    def untag_certificate_authority(params = {}, options = {})
      req = build_request(:untag_certificate_authority, params)
      req.send_request(options)
    end

    # Updates the status or configuration of a private certificate authority
    # (CA). Your private CA must be in the `ACTIVE` or `DISABLED` state
    # before you can update it. You can disable a private CA that is in the
    # `ACTIVE` state or make a CA that is in the `DISABLED` state active
    # again.
    #
    # @option params [required, String] :certificate_authority_arn
    #   Amazon Resource Name (ARN) of the private CA that issued the
    #   certificate to be revoked. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    # @option params [Types::RevocationConfiguration] :revocation_configuration
    #   Revocation information for your private CA.
    #
    # @option params [String] :status
    #   Status of your private CA.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_certificate_authority({
    #     certificate_authority_arn: "Arn", # required
    #     revocation_configuration: {
    #       crl_configuration: {
    #         enabled: false, # required
    #         expiration_in_days: 1,
    #         custom_cname: "String253",
    #         s3_bucket_name: "String3To255",
    #       },
    #     },
    #     status: "CREATING", # accepts CREATING, PENDING_CERTIFICATE, ACTIVE, DELETED, DISABLED, EXPIRED, FAILED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/UpdateCertificateAuthority AWS API Documentation
    #
    # @overload update_certificate_authority(params = {})
    # @param [Hash] params ({})
    def update_certificate_authority(params = {}, options = {})
      req = build_request(:update_certificate_authority, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-acmpca'
      context[:gem_version] = '1.21.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name                       | params                                         | :delay   | :max_attempts |
    # | --------------------------------- | ---------------------------------------------- | -------- | ------------- |
    # | audit_report_created              | {#describe_certificate_authority_audit_report} | 3        | 60            |
    # | certificate_authority_csr_created | {#get_certificate_authority_csr}               | 3        | 60            |
    # | certificate_issued                | {#get_certificate}                             | 3        | 60            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

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
      def errors_module
        Errors
      end

    end
  end
end
