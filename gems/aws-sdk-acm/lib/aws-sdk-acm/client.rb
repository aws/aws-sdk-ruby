# frozen_string_literal: true

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
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:acm)

module Aws::ACM
  # An API client for ACM.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ACM::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :acm

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
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
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
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
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
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
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
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
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
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
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
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
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

    # Adds one or more tags to an ACM certificate. Tags are labels that you
    # can use to identify and organize your AWS resources. Each tag consists
    # of a `key` and an optional `value`. You specify the certificate on
    # input by its Amazon Resource Name (ARN). You specify the tag by using
    # a key-value pair.
    #
    # You can apply a tag to just one certificate if you want to identify a
    # specific characteristic of that certificate, or you can apply the same
    # tag to multiple certificates if you want to filter for a common
    # relationship among those certificates. Similarly, you can apply the
    # same tag to multiple resources if you want to specify a relationship
    # among those resources. For example, you can add the same tag to an ACM
    # certificate and an Elastic Load Balancing load balancer to indicate
    # that they are both used by the same website. For more information, see
    # [Tagging ACM certificates][1].
    #
    # To remove one or more tags, use the RemoveTagsFromCertificate action.
    # To view all of the tags that have been applied to the certificate, use
    # the ListTagsForCertificate action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm/latest/userguide/tags.html
    #
    # @option params [required, String] :certificate_arn
    #   String that contains the ARN of the ACM certificate to which the tag
    #   is to be applied. This must be of the form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The key-value pair that defines the tag. The tag value is optional.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_certificate({
    #     certificate_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/AddTagsToCertificate AWS API Documentation
    #
    # @overload add_tags_to_certificate(params = {})
    # @param [Hash] params ({})
    def add_tags_to_certificate(params = {}, options = {})
      req = build_request(:add_tags_to_certificate, params)
      req.send_request(options)
    end

    # Deletes a certificate and its associated private key. If this action
    # succeeds, the certificate no longer appears in the list that can be
    # displayed by calling the ListCertificates action or be retrieved by
    # calling the GetCertificate action. The certificate will not be
    # available for use by AWS services integrated with ACM.
    #
    # <note markdown="1"> You cannot delete an ACM certificate that is being used by another AWS
    # service. To delete a certificate that is in use, the certificate
    # association must first be removed.
    #
    #  </note>
    #
    # @option params [required, String] :certificate_arn
    #   String that contains the ARN of the ACM certificate to be deleted.
    #   This must be of the form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_certificate({
    #     certificate_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DeleteCertificate AWS API Documentation
    #
    # @overload delete_certificate(params = {})
    # @param [Hash] params ({})
    def delete_certificate(params = {}, options = {})
      req = build_request(:delete_certificate, params)
      req.send_request(options)
    end

    # Returns detailed metadata about the specified ACM certificate.
    #
    # @option params [required, String] :certificate_arn
    #   The Amazon Resource Name (ARN) of the ACM certificate. The ARN must
    #   have the following form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::DescribeCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCertificateResponse#certificate #certificate} => Types::CertificateDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificate({
    #     certificate_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate.certificate_arn #=> String
    #   resp.certificate.domain_name #=> String
    #   resp.certificate.subject_alternative_names #=> Array
    #   resp.certificate.subject_alternative_names[0] #=> String
    #   resp.certificate.domain_validation_options #=> Array
    #   resp.certificate.domain_validation_options[0].domain_name #=> String
    #   resp.certificate.domain_validation_options[0].validation_emails #=> Array
    #   resp.certificate.domain_validation_options[0].validation_emails[0] #=> String
    #   resp.certificate.domain_validation_options[0].validation_domain #=> String
    #   resp.certificate.domain_validation_options[0].validation_status #=> String, one of "PENDING_VALIDATION", "SUCCESS", "FAILED"
    #   resp.certificate.domain_validation_options[0].resource_record.name #=> String
    #   resp.certificate.domain_validation_options[0].resource_record.type #=> String, one of "CNAME"
    #   resp.certificate.domain_validation_options[0].resource_record.value #=> String
    #   resp.certificate.domain_validation_options[0].validation_method #=> String, one of "EMAIL", "DNS"
    #   resp.certificate.serial #=> String
    #   resp.certificate.subject #=> String
    #   resp.certificate.issuer #=> String
    #   resp.certificate.created_at #=> Time
    #   resp.certificate.issued_at #=> Time
    #   resp.certificate.imported_at #=> Time
    #   resp.certificate.status #=> String, one of "PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED", "FAILED"
    #   resp.certificate.revoked_at #=> Time
    #   resp.certificate.revocation_reason #=> String, one of "UNSPECIFIED", "KEY_COMPROMISE", "CA_COMPROMISE", "AFFILIATION_CHANGED", "SUPERCEDED", "CESSATION_OF_OPERATION", "CERTIFICATE_HOLD", "REMOVE_FROM_CRL", "PRIVILEGE_WITHDRAWN", "A_A_COMPROMISE"
    #   resp.certificate.not_before #=> Time
    #   resp.certificate.not_after #=> Time
    #   resp.certificate.key_algorithm #=> String, one of "RSA_2048", "RSA_1024", "RSA_4096", "EC_prime256v1", "EC_secp384r1", "EC_secp521r1"
    #   resp.certificate.signature_algorithm #=> String
    #   resp.certificate.in_use_by #=> Array
    #   resp.certificate.in_use_by[0] #=> String
    #   resp.certificate.failure_reason #=> String, one of "NO_AVAILABLE_CONTACTS", "ADDITIONAL_VERIFICATION_REQUIRED", "DOMAIN_NOT_ALLOWED", "INVALID_PUBLIC_DOMAIN", "DOMAIN_VALIDATION_DENIED", "CAA_ERROR", "PCA_LIMIT_EXCEEDED", "PCA_INVALID_ARN", "PCA_INVALID_STATE", "PCA_REQUEST_FAILED", "PCA_NAME_CONSTRAINTS_VALIDATION", "PCA_RESOURCE_NOT_FOUND", "PCA_INVALID_ARGS", "PCA_INVALID_DURATION", "PCA_ACCESS_DENIED", "SLR_NOT_FOUND", "OTHER"
    #   resp.certificate.type #=> String, one of "IMPORTED", "AMAZON_ISSUED", "PRIVATE"
    #   resp.certificate.renewal_summary.renewal_status #=> String, one of "PENDING_AUTO_RENEWAL", "PENDING_VALIDATION", "SUCCESS", "FAILED"
    #   resp.certificate.renewal_summary.domain_validation_options #=> Array
    #   resp.certificate.renewal_summary.domain_validation_options[0].domain_name #=> String
    #   resp.certificate.renewal_summary.domain_validation_options[0].validation_emails #=> Array
    #   resp.certificate.renewal_summary.domain_validation_options[0].validation_emails[0] #=> String
    #   resp.certificate.renewal_summary.domain_validation_options[0].validation_domain #=> String
    #   resp.certificate.renewal_summary.domain_validation_options[0].validation_status #=> String, one of "PENDING_VALIDATION", "SUCCESS", "FAILED"
    #   resp.certificate.renewal_summary.domain_validation_options[0].resource_record.name #=> String
    #   resp.certificate.renewal_summary.domain_validation_options[0].resource_record.type #=> String, one of "CNAME"
    #   resp.certificate.renewal_summary.domain_validation_options[0].resource_record.value #=> String
    #   resp.certificate.renewal_summary.domain_validation_options[0].validation_method #=> String, one of "EMAIL", "DNS"
    #   resp.certificate.renewal_summary.renewal_status_reason #=> String, one of "NO_AVAILABLE_CONTACTS", "ADDITIONAL_VERIFICATION_REQUIRED", "DOMAIN_NOT_ALLOWED", "INVALID_PUBLIC_DOMAIN", "DOMAIN_VALIDATION_DENIED", "CAA_ERROR", "PCA_LIMIT_EXCEEDED", "PCA_INVALID_ARN", "PCA_INVALID_STATE", "PCA_REQUEST_FAILED", "PCA_NAME_CONSTRAINTS_VALIDATION", "PCA_RESOURCE_NOT_FOUND", "PCA_INVALID_ARGS", "PCA_INVALID_DURATION", "PCA_ACCESS_DENIED", "SLR_NOT_FOUND", "OTHER"
    #   resp.certificate.renewal_summary.updated_at #=> Time
    #   resp.certificate.key_usages #=> Array
    #   resp.certificate.key_usages[0].name #=> String, one of "DIGITAL_SIGNATURE", "NON_REPUDIATION", "KEY_ENCIPHERMENT", "DATA_ENCIPHERMENT", "KEY_AGREEMENT", "CERTIFICATE_SIGNING", "CRL_SIGNING", "ENCIPHER_ONLY", "DECIPHER_ONLY", "ANY", "CUSTOM"
    #   resp.certificate.extended_key_usages #=> Array
    #   resp.certificate.extended_key_usages[0].name #=> String, one of "TLS_WEB_SERVER_AUTHENTICATION", "TLS_WEB_CLIENT_AUTHENTICATION", "CODE_SIGNING", "EMAIL_PROTECTION", "TIME_STAMPING", "OCSP_SIGNING", "IPSEC_END_SYSTEM", "IPSEC_TUNNEL", "IPSEC_USER", "ANY", "NONE", "CUSTOM"
    #   resp.certificate.extended_key_usages[0].oid #=> String
    #   resp.certificate.certificate_authority_arn #=> String
    #   resp.certificate.renewal_eligibility #=> String, one of "ELIGIBLE", "INELIGIBLE"
    #   resp.certificate.options.certificate_transparency_logging_preference #=> String, one of "ENABLED", "DISABLED"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * certificate_validated
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DescribeCertificate AWS API Documentation
    #
    # @overload describe_certificate(params = {})
    # @param [Hash] params ({})
    def describe_certificate(params = {}, options = {})
      req = build_request(:describe_certificate, params)
      req.send_request(options)
    end

    # Exports a private certificate issued by a private certificate
    # authority (CA) for use anywhere. The exported file contains the
    # certificate, the certificate chain, and the encrypted private 2048-bit
    # RSA key associated with the public key that is embedded in the
    # certificate. For security, you must assign a passphrase for the
    # private key when exporting it.
    #
    # For information about exporting and formatting a certificate using the
    # ACM console or CLI, see [Export a Private Certificate][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-export-private.html
    #
    # @option params [required, String] :certificate_arn
    #   An Amazon Resource Name (ARN) of the issued certificate. This must be
    #   of the form:
    #
    #   `arn:aws:acm:region:account:certificate/12345678-1234-1234-1234-123456789012`
    #
    # @option params [required, String, StringIO, File] :passphrase
    #   Passphrase to associate with the encrypted exported private key. If
    #   you want to later decrypt the private key, you must have the
    #   passphrase. You can use the following OpenSSL command to decrypt a
    #   private key:
    #
    #   `openssl rsa -in encrypted_key.pem -out decrypted_key.pem`
    #
    # @return [Types::ExportCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportCertificateResponse#certificate #certificate} => String
    #   * {Types::ExportCertificateResponse#certificate_chain #certificate_chain} => String
    #   * {Types::ExportCertificateResponse#private_key #private_key} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_certificate({
    #     certificate_arn: "Arn", # required
    #     passphrase: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate #=> String
    #   resp.certificate_chain #=> String
    #   resp.private_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ExportCertificate AWS API Documentation
    #
    # @overload export_certificate(params = {})
    # @param [Hash] params ({})
    def export_certificate(params = {}, options = {})
      req = build_request(:export_certificate, params)
      req.send_request(options)
    end

    # Retrieves an Amazon-issued certificate and its certificate chain. The
    # chain consists of the certificate of the issuing CA and the
    # intermediate certificates of any other subordinate CAs. All of the
    # certificates are base64 encoded. You can use [OpenSSL][1] to decode
    # the certificates and inspect individual fields.
    #
    #
    #
    # [1]: https://wiki.openssl.org/index.php/Command_Line_Utilities
    #
    # @option params [required, String] :certificate_arn
    #   String that contains a certificate ARN in the following format:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::GetCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCertificateResponse#certificate #certificate} => String
    #   * {Types::GetCertificateResponse#certificate_chain #certificate_chain} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_certificate({
    #     certificate_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate #=> String
    #   resp.certificate_chain #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/GetCertificate AWS API Documentation
    #
    # @overload get_certificate(params = {})
    # @param [Hash] params ({})
    def get_certificate(params = {}, options = {})
      req = build_request(:get_certificate, params)
      req.send_request(options)
    end

    # Imports a certificate into AWS Certificate Manager (ACM) to use with
    # services that are integrated with ACM. Note that [integrated
    # services][1] allow only certificate types and keys they support to be
    # associated with their resources. Further, their support differs
    # depending on whether the certificate is imported into IAM or into ACM.
    # For more information, see the documentation for each service. For more
    # information about importing certificates into ACM, see [Importing
    # Certificates][2] in the *AWS Certificate Manager User Guide*.
    #
    # <note markdown="1"> ACM does not provide [managed renewal][3] for certificates that you
    # import.
    #
    #  </note>
    #
    # Note the following guidelines when importing third party certificates:
    #
    # * You must enter the private key that matches the certificate you are
    #   importing.
    #
    # * The private key must be unencrypted. You cannot import a private key
    #   that is protected by a password or a passphrase.
    #
    # * If the certificate you are importing is not self-signed, you must
    #   enter its certificate chain.
    #
    # * If a certificate chain is included, the issuer must be the subject
    #   of one of the certificates in the chain.
    #
    # * The certificate, private key, and certificate chain must be
    #   PEM-encoded.
    #
    # * The current time must be between the `Not Before` and `Not After`
    #   certificate fields.
    #
    # * The `Issuer` field must not be empty.
    #
    # * The OCSP authority URL, if present, must not exceed 1000 characters.
    #
    # * To import a new certificate, omit the `CertificateArn` argument.
    #   Include this argument only when you want to replace a previously
    #   imported certifica
    #
    # * When you import a certificate by using the CLI, you must specify the
    #   certificate, the certificate chain, and the private key by their
    #   file names preceded by `file://`. For example, you can specify a
    #   certificate saved in the `C:\temp` folder as
    #   `file://C:\temp\certificate_to_import.pem`. If you are making an
    #   HTTP or HTTPS Query request, include these arguments as BLOBs.
    #
    # * When you import a certificate by using an SDK, you must specify the
    #   certificate, the certificate chain, and the private key files in the
    #   manner required by the programming language you're using.
    #
    # * The cryptographic algorithm of an imported certificate must match
    #   the algorithm of the signing CA. For example, if the signing CA key
    #   type is RSA, then the certificate key type must also be RSA.
    #
    # This operation returns the [Amazon Resource Name (ARN)][4] of the
    # imported certificate.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-services.html
    # [2]: https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html
    # [3]: https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html
    # [4]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :certificate_arn
    #   The [Amazon Resource Name (ARN)][1] of an imported certificate to
    #   replace. To import a new certificate, omit this field.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String, StringIO, File] :certificate
    #   The certificate to import.
    #
    # @option params [required, String, StringIO, File] :private_key
    #   The private key that matches the public key in the certificate.
    #
    # @option params [String, StringIO, File] :certificate_chain
    #   The PEM encoded certificate chain.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more resource tags to associate with the imported certificate.
    #
    #   Note: You cannot apply tags when reimporting a certificate.
    #
    # @return [Types::ImportCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportCertificateResponse#certificate_arn #certificate_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_certificate({
    #     certificate_arn: "Arn",
    #     certificate: "data", # required
    #     private_key: "data", # required
    #     certificate_chain: "data",
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
    #   resp.certificate_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ImportCertificate AWS API Documentation
    #
    # @overload import_certificate(params = {})
    # @param [Hash] params ({})
    def import_certificate(params = {}, options = {})
      req = build_request(:import_certificate, params)
      req.send_request(options)
    end

    # Retrieves a list of certificate ARNs and domain names. You can request
    # that only certificates that match a specific status be listed. You can
    # also filter by specific attributes of the certificate. Default
    # filtering returns only `RSA_2048` certificates. For more information,
    # see Filters.
    #
    # @option params [Array<String>] :certificate_statuses
    #   Filter the certificate list by status value.
    #
    # @option params [Types::Filters] :includes
    #   Filter the certificate list. For more information, see the Filters
    #   structure.
    #
    # @option params [String] :next_token
    #   Use this parameter only when paginating results and only in a
    #   subsequent request after you receive a response with truncated
    #   results. Set it to the value of `NextToken` from the response you just
    #   received.
    #
    # @option params [Integer] :max_items
    #   Use this parameter when paginating results to specify the maximum
    #   number of items to return in the response. If additional items exist
    #   beyond the number you specify, the `NextToken` element is sent in the
    #   response. Use this `NextToken` value in a subsequent request to
    #   retrieve additional items.
    #
    # @return [Types::ListCertificatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCertificatesResponse#next_token #next_token} => String
    #   * {Types::ListCertificatesResponse#certificate_summary_list #certificate_summary_list} => Array&lt;Types::CertificateSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_certificates({
    #     certificate_statuses: ["PENDING_VALIDATION"], # accepts PENDING_VALIDATION, ISSUED, INACTIVE, EXPIRED, VALIDATION_TIMED_OUT, REVOKED, FAILED
    #     includes: {
    #       extended_key_usage: ["TLS_WEB_SERVER_AUTHENTICATION"], # accepts TLS_WEB_SERVER_AUTHENTICATION, TLS_WEB_CLIENT_AUTHENTICATION, CODE_SIGNING, EMAIL_PROTECTION, TIME_STAMPING, OCSP_SIGNING, IPSEC_END_SYSTEM, IPSEC_TUNNEL, IPSEC_USER, ANY, NONE, CUSTOM
    #       key_usage: ["DIGITAL_SIGNATURE"], # accepts DIGITAL_SIGNATURE, NON_REPUDIATION, KEY_ENCIPHERMENT, DATA_ENCIPHERMENT, KEY_AGREEMENT, CERTIFICATE_SIGNING, CRL_SIGNING, ENCIPHER_ONLY, DECIPHER_ONLY, ANY, CUSTOM
    #       key_types: ["RSA_2048"], # accepts RSA_2048, RSA_1024, RSA_4096, EC_prime256v1, EC_secp384r1, EC_secp521r1
    #     },
    #     next_token: "NextToken",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.certificate_summary_list #=> Array
    #   resp.certificate_summary_list[0].certificate_arn #=> String
    #   resp.certificate_summary_list[0].domain_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListCertificates AWS API Documentation
    #
    # @overload list_certificates(params = {})
    # @param [Hash] params ({})
    def list_certificates(params = {}, options = {})
      req = build_request(:list_certificates, params)
      req.send_request(options)
    end

    # Lists the tags that have been applied to the ACM certificate. Use the
    # certificate's Amazon Resource Name (ARN) to specify the certificate.
    # To add a tag to an ACM certificate, use the AddTagsToCertificate
    # action. To delete a tag, use the RemoveTagsFromCertificate action.
    #
    # @option params [required, String] :certificate_arn
    #   String that contains the ARN of the ACM certificate for which you want
    #   to list the tags. This must have the following form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::ListTagsForCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForCertificateResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_certificate({
    #     certificate_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListTagsForCertificate AWS API Documentation
    #
    # @overload list_tags_for_certificate(params = {})
    # @param [Hash] params ({})
    def list_tags_for_certificate(params = {}, options = {})
      req = build_request(:list_tags_for_certificate, params)
      req.send_request(options)
    end

    # Remove one or more tags from an ACM certificate. A tag consists of a
    # key-value pair. If you do not specify the value portion of the tag
    # when calling this function, the tag will be removed regardless of
    # value. If you specify a value, the tag is removed only if it is
    # associated with the specified value.
    #
    # To add tags to a certificate, use the AddTagsToCertificate action. To
    # view all of the tags that have been applied to a specific ACM
    # certificate, use the ListTagsForCertificate action.
    #
    # @option params [required, String] :certificate_arn
    #   String that contains the ARN of the ACM Certificate with one or more
    #   tags that you want to remove. This must be of the form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The key-value pair that defines the tag to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_certificate({
    #     certificate_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/RemoveTagsFromCertificate AWS API Documentation
    #
    # @overload remove_tags_from_certificate(params = {})
    # @param [Hash] params ({})
    def remove_tags_from_certificate(params = {}, options = {})
      req = build_request(:remove_tags_from_certificate, params)
      req.send_request(options)
    end

    # Renews an eligable ACM certificate. At this time, only exported
    # private certificates can be renewed with this operation. In order to
    # renew your ACM PCA certificates with ACM, you must first [grant the
    # ACM service principal permission to do so][1]. For more information,
    # see [Testing Managed Renewal][2] in the ACM User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaPermissions.html
    # [2]: https://docs.aws.amazon.com/acm/latest/userguide/manual-renewal.html
    #
    # @option params [required, String] :certificate_arn
    #   String that contains the ARN of the ACM certificate to be renewed.
    #   This must be of the form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.renew_certificate({
    #     certificate_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/RenewCertificate AWS API Documentation
    #
    # @overload renew_certificate(params = {})
    # @param [Hash] params ({})
    def renew_certificate(params = {}, options = {})
      req = build_request(:renew_certificate, params)
      req.send_request(options)
    end

    # Requests an ACM certificate for use with other AWS services. To
    # request an ACM certificate, you must specify a fully qualified domain
    # name (FQDN) in the `DomainName` parameter. You can also specify
    # additional FQDNs in the `SubjectAlternativeNames` parameter.
    #
    # If you are requesting a private certificate, domain validation is not
    # required. If you are requesting a public certificate, each domain name
    # that you specify must be validated to verify that you own or control
    # the domain. You can use [DNS validation][1] or [email validation][2].
    # We recommend that you use DNS validation. ACM issues public
    # certificates after receiving approval from the domain owner.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html
    # [2]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html
    #
    # @option params [required, String] :domain_name
    #   Fully qualified domain name (FQDN), such as www.example.com, that you
    #   want to secure with an ACM certificate. Use an asterisk (*) to create
    #   a wildcard certificate that protects several sites in the same domain.
    #   For example, *.example.com protects www.example.com,
    #   site.example.com, and images.example.com.
    #
    #   The first domain name you enter cannot exceed 64 octets, including
    #   periods. Each subsequent Subject Alternative Name (SAN), however, can
    #   be up to 253 octets in length.
    #
    # @option params [String] :validation_method
    #   The method you want to use if you are requesting a public certificate
    #   to validate that you own or control domain. You can [validate with
    #   DNS][1] or [validate with email][2]. We recommend that you use DNS
    #   validation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html
    #   [2]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html
    #
    # @option params [Array<String>] :subject_alternative_names
    #   Additional FQDNs to be included in the Subject Alternative Name
    #   extension of the ACM certificate. For example, add the name
    #   www.example.net to a certificate for which the `DomainName` field is
    #   www.example.com if users can reach your site by using either name. The
    #   maximum number of domain names that you can add to an ACM certificate
    #   is 100. However, the initial quota is 10 domain names. If you need
    #   more than 10 names, you must request a quota increase. For more
    #   information, see [Quotas][1].
    #
    #   The maximum length of a SAN DNS name is 253 octets. The name is made
    #   up of multiple labels separated by periods. No label can be longer
    #   than 63 octets. Consider the following examples:
    #
    #   * `(63 octets).(63 octets).(63 octets).(61 octets)` is legal because
    #     the total length is 253 octets (63+1+63+1+63+1+61) and no label
    #     exceeds 63 octets.
    #
    #   * `(64 octets).(63 octets).(63 octets).(61 octets)` is not legal
    #     because the total length exceeds 253 octets (64+1+63+1+63+1+61) and
    #     the first label exceeds 63 octets.
    #
    #   * `(63 octets).(63 octets).(63 octets).(62 octets)` is not legal
    #     because the total length of the DNS name (63+1+63+1+63+1+62) exceeds
    #     253 octets.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html
    #
    # @option params [String] :idempotency_token
    #   Customer chosen string that can be used to distinguish between calls
    #   to `RequestCertificate`. Idempotency tokens time out after one hour.
    #   Therefore, if you call `RequestCertificate` multiple times with the
    #   same idempotency token within one hour, ACM recognizes that you are
    #   requesting only one certificate and will issue only one. If you change
    #   the idempotency token for each call, ACM recognizes that you are
    #   requesting multiple certificates.
    #
    # @option params [Array<Types::DomainValidationOption>] :domain_validation_options
    #   The domain name that you want ACM to use to send you emails so that
    #   you can validate domain ownership.
    #
    # @option params [Types::CertificateOptions] :options
    #   Currently, you can use this parameter to specify whether to add the
    #   certificate to a certificate transparency log. Certificate
    #   transparency makes it possible to detect SSL/TLS certificates that
    #   have been mistakenly or maliciously issued. Certificates that have not
    #   been logged typically produce an error message in a browser. For more
    #   information, see [Opting Out of Certificate Transparency Logging][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency
    #
    # @option params [String] :certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the private certificate authority
    #   (CA) that will be used to issue the certificate. If you do not provide
    #   an ARN and you are trying to request a private certificate, ACM will
    #   attempt to issue a public certificate. For more information about
    #   private CAs, see the [AWS Certificate Manager Private Certificate
    #   Authority (PCA)][1] user guide. The ARN must have the following form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaWelcome.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more resource tags to associate with the certificate.
    #
    # @return [Types::RequestCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RequestCertificateResponse#certificate_arn #certificate_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.request_certificate({
    #     domain_name: "DomainNameString", # required
    #     validation_method: "EMAIL", # accepts EMAIL, DNS
    #     subject_alternative_names: ["DomainNameString"],
    #     idempotency_token: "IdempotencyToken",
    #     domain_validation_options: [
    #       {
    #         domain_name: "DomainNameString", # required
    #         validation_domain: "DomainNameString", # required
    #       },
    #     ],
    #     options: {
    #       certificate_transparency_logging_preference: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     certificate_authority_arn: "Arn",
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
    #   resp.certificate_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/RequestCertificate AWS API Documentation
    #
    # @overload request_certificate(params = {})
    # @param [Hash] params ({})
    def request_certificate(params = {}, options = {})
      req = build_request(:request_certificate, params)
      req.send_request(options)
    end

    # Resends the email that requests domain ownership validation. The
    # domain owner or an authorized representative must approve the ACM
    # certificate before it can be issued. The certificate can be approved
    # by clicking a link in the mail to navigate to the Amazon certificate
    # approval website and then clicking **I Approve**. However, the
    # validation email can be blocked by spam filters. Therefore, if you do
    # not receive the original mail, you can request that the mail be resent
    # within 72 hours of requesting the ACM certificate. If more than 72
    # hours have elapsed since your original request or since your last
    # attempt to resend validation mail, you must request a new certificate.
    # For more information about setting up your contact email addresses,
    # see [Configure Email for your Domain][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm/latest/userguide/setup-email.html
    #
    # @option params [required, String] :certificate_arn
    #   String that contains the ARN of the requested certificate. The
    #   certificate ARN is generated and returned by the RequestCertificate
    #   action as soon as the request is made. By default, using this
    #   parameter causes email to be sent to all top-level domains you
    #   specified in the certificate request. The ARN must be of the form:
    #
    #   `arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    # @option params [required, String] :domain
    #   The fully qualified domain name (FQDN) of the certificate that needs
    #   to be validated.
    #
    # @option params [required, String] :validation_domain
    #   The base validation domain that will act as the suffix of the email
    #   addresses that are used to send the emails. This must be the same as
    #   the `Domain` value or a superdomain of the `Domain` value. For
    #   example, if you requested a certificate for
    #   `site.subdomain.example.com` and specify a **ValidationDomain** of
    #   `subdomain.example.com`, ACM sends email to the domain registrant,
    #   technical contact, and administrative contact in WHOIS and the
    #   following five addresses:
    #
    #   * admin@subdomain.example.com
    #
    #   * administrator@subdomain.example.com
    #
    #   * hostmaster@subdomain.example.com
    #
    #   * postmaster@subdomain.example.com
    #
    #   * webmaster@subdomain.example.com
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resend_validation_email({
    #     certificate_arn: "Arn", # required
    #     domain: "DomainNameString", # required
    #     validation_domain: "DomainNameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ResendValidationEmail AWS API Documentation
    #
    # @overload resend_validation_email(params = {})
    # @param [Hash] params ({})
    def resend_validation_email(params = {}, options = {})
      req = build_request(:resend_validation_email, params)
      req.send_request(options)
    end

    # Updates a certificate. Currently, you can use this function to specify
    # whether to opt in to or out of recording your certificate in a
    # certificate transparency log. For more information, see [ Opting Out
    # of Certificate Transparency Logging][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency
    #
    # @option params [required, String] :certificate_arn
    #   ARN of the requested certificate to update. This must be of the form:
    #
    #   `arn:aws:acm:us-east-1:account:certificate/12345678-1234-1234-1234-123456789012
    #   `
    #
    # @option params [required, Types::CertificateOptions] :options
    #   Use to update the options for your certificate. Currently, you can
    #   specify whether to add your certificate to a transparency log.
    #   Certificate transparency makes it possible to detect SSL/TLS
    #   certificates that have been mistakenly or maliciously issued.
    #   Certificates that have not been logged typically produce an error
    #   message in a browser.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_certificate_options({
    #     certificate_arn: "Arn", # required
    #     options: { # required
    #       certificate_transparency_logging_preference: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/UpdateCertificateOptions AWS API Documentation
    #
    # @overload update_certificate_options(params = {})
    # @param [Hash] params ({})
    def update_certificate_options(params = {}, options = {})
      req = build_request(:update_certificate_options, params)
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
      context[:gem_name] = 'aws-sdk-acm'
      context[:gem_version] = '1.38.0'
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
    # | waiter_name           | params                        | :delay   | :max_attempts |
    # | --------------------- | ----------------------------- | -------- | ------------- |
    # | certificate_validated | {Client#describe_certificate} | 60       | 40            |
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
        certificate_validated: Waiters::CertificateValidated
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
