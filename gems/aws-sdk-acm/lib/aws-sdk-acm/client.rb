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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:acm)

module Aws::ACM
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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Adds one or more tags to an ACM Certificate. Tags are labels that you
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
    # Certificate and an Elastic Load Balancing load balancer to indicate
    # that they are both used by the same website. For more information, see
    # [Tagging ACM Certificates][1].
    #
    # To remove one or more tags, use the RemoveTagsFromCertificate action.
    # To view all of the tags that have been applied to the certificate, use
    # the ListTagsForCertificate action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/acm/latest/userguide/tags.html
    #
    # @option params [required, String] :certificate_arn
    #   String that contains the ARN of the ACM Certificate to which the tag
    #   is to be applied. This must be of the form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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

    # Deletes an ACM Certificate and its associated private key. If this
    # action succeeds, the certificate no longer appears in the list of ACM
    # Certificates that can be displayed by calling the ListCertificates
    # action or be retrieved by calling the GetCertificate action. The
    # certificate will not be available for use by other AWS services.
    #
    # <note markdown="1"> You cannot delete an ACM Certificate that is being used by another AWS
    # service. To delete a certificate that is in use, the certificate
    # association must first be removed.
    #
    #  </note>
    #
    # @option params [required, String] :certificate_arn
    #   String that contains the ARN of the ACM Certificate to be deleted.
    #   This must be of the form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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

    # Returns detailed metadata about the specified ACM Certificate.
    #
    # @option params [required, String] :certificate_arn
    #   The Amazon Resource Name (ARN) of the ACM Certificate. The ARN must
    #   have the following form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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
    #   resp.certificate.key_algorithm #=> String, one of "RSA_2048", "RSA_1024", "EC_prime256v1"
    #   resp.certificate.signature_algorithm #=> String
    #   resp.certificate.in_use_by #=> Array
    #   resp.certificate.in_use_by[0] #=> String
    #   resp.certificate.failure_reason #=> String, one of "NO_AVAILABLE_CONTACTS", "ADDITIONAL_VERIFICATION_REQUIRED", "DOMAIN_NOT_ALLOWED", "INVALID_PUBLIC_DOMAIN", "OTHER"
    #   resp.certificate.type #=> String, one of "IMPORTED", "AMAZON_ISSUED"
    #   resp.certificate.renewal_summary.renewal_status #=> String, one of "PENDING_AUTO_RENEWAL", "PENDING_VALIDATION", "SUCCESS", "FAILED"
    #   resp.certificate.renewal_summary.domain_validation_options #=> Array
    #   resp.certificate.renewal_summary.domain_validation_options[0].domain_name #=> String
    #   resp.certificate.renewal_summary.domain_validation_options[0].validation_emails #=> Array
    #   resp.certificate.renewal_summary.domain_validation_options[0].validation_emails[0] #=> String
    #   resp.certificate.renewal_summary.domain_validation_options[0].validation_domain #=> String
    #   resp.certificate.renewal_summary.domain_validation_options[0].validation_status #=> String, one of "PENDING_VALIDATION", "SUCCESS", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DescribeCertificate AWS API Documentation
    #
    # @overload describe_certificate(params = {})
    # @param [Hash] params ({})
    def describe_certificate(params = {}, options = {})
      req = build_request(:describe_certificate, params)
      req.send_request(options)
    end

    # Retrieves an ACM Certificate and certificate chain for the certificate
    # specified by an ARN. The chain is an ordered list of certificates that
    # contains the root certificate, intermediate certificates of
    # subordinate CAs, and the ACM Certificate. The certificate and
    # certificate chain are base64 encoded. If you want to decode the
    # certificate chain to see the individual certificate fields, you can
    # use OpenSSL.
    #
    # <note markdown="1"> Currently, ACM Certificates can be used only with Elastic Load
    # Balancing and Amazon CloudFront.
    #
    #  </note>
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
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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

    # Imports an SSL/TLS certificate into AWS Certificate Manager (ACM) to
    # use with [ACM's integrated AWS services][1].
    #
    # <note markdown="1"> ACM does not provide [managed renewal][2] for certificates that you
    # import.
    #
    #  </note>
    #
    # For more information about importing certificates into ACM, including
    # the differences between certificates that you import and those that
    # ACM provides, see [Importing Certificates][3] in the *AWS Certificate
    # Manager User Guide*.
    #
    # To import a certificate, you must provide the certificate and the
    # matching private key. When the certificate is not self-signed, you
    # must also provide a certificate chain. You can omit the certificate
    # chain when importing a self-signed certificate.
    #
    # The certificate, private key, and certificate chain must be
    # PEM-encoded. For more information about converting these items to PEM
    # format, see [Importing Certificates Troubleshooting][4] in the *AWS
    # Certificate Manager User Guide*.
    #
    # To import a new certificate, omit the `CertificateArn` field. Include
    # this field only when you want to replace a previously imported
    # certificate.
    #
    # This operation returns the [Amazon Resource Name (ARN)][5] of the
    # imported certificate.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/acm/latest/userguide/acm-services.html
    # [2]: http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html
    # [3]: http://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html
    # [4]: http://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html#import-certificate-troubleshooting
    # [5]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [String] :certificate_arn
    #   The [Amazon Resource Name (ARN)][1] of an imported certificate to
    #   replace. To import a new certificate, omit this field.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, String, IO] :certificate
    #   The certificate to import. It must meet the following requirements:
    #
    #   * Must be PEM-encoded.
    #
    #   * Must contain a 1024-bit or 2048-bit RSA public key.
    #
    #   * Must be valid at the time of import. You cannot import a certificate
    #     before its validity period begins (the certificate's `NotBefore`
    #     date) or after it expires (the certificate's `NotAfter` date).
    #
    # @option params [required, String, IO] :private_key
    #   The private key that matches the public key in the certificate. It
    #   must meet the following requirements:
    #
    #   * Must be PEM-encoded.
    #
    #   * Must be unencrypted. You cannot import a private key that is
    #     protected by a password or passphrase.
    #
    # @option params [String, IO] :certificate_chain
    #   The certificate chain. It must be PEM-encoded.
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

    # Retrieves a list of ACM Certificates and the domain name for each. You
    # can optionally filter the list to return only the certificates that
    # match the specified status.
    #
    # @option params [Array<String>] :certificate_statuses
    #   The status or statuses on which to filter the list of ACM
    #   Certificates.
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
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_certificates({
    #     certificate_statuses: ["PENDING_VALIDATION"], # accepts PENDING_VALIDATION, ISSUED, INACTIVE, EXPIRED, VALIDATION_TIMED_OUT, REVOKED, FAILED
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

    # Lists the tags that have been applied to the ACM Certificate. Use the
    # certificate's Amazon Resource Name (ARN) to specify the certificate.
    # To add a tag to an ACM Certificate, use the AddTagsToCertificate
    # action. To delete a tag, use the RemoveTagsFromCertificate action.
    #
    # @option params [required, String] :certificate_arn
    #   String that contains the ARN of the ACM Certificate for which you want
    #   to list the tags. This has the following form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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

    # Remove one or more tags from an ACM Certificate. A tag consists of a
    # key-value pair. If you do not specify the value portion of the tag
    # when calling this function, the tag will be removed regardless of
    # value. If you specify a value, the tag is removed only if it is
    # associated with the specified value.
    #
    # To add tags to a certificate, use the AddTagsToCertificate action. To
    # view all of the tags that have been applied to a specific ACM
    # Certificate, use the ListTagsForCertificate action.
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
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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

    # Requests an ACM Certificate for use with other AWS services. To
    # request an ACM Certificate, you must specify the fully qualified
    # domain name (FQDN) for your site. You can also specify additional
    # FQDNs if users can reach your site by using other names. For each
    # domain name you specify, email is sent to the domain owner to request
    # approval to issue the certificate. After receiving approval from the
    # domain owner, the ACM Certificate is issued. For more information, see
    # the [AWS Certificate Manager User Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/acm/latest/userguide/
    #
    # @option params [required, String] :domain_name
    #   Fully qualified domain name (FQDN), such as www.example.com, of the
    #   site that you want to secure with an ACM Certificate. Use an asterisk
    #   (*) to create a wildcard certificate that protects several sites in
    #   the same domain. For example, *.example.com protects www.example.com,
    #   site.example.com, and images.example.com.
    #
    #   The maximum length of a DNS name is 253 octets. The name is made up of
    #   multiple labels separated by periods. No label can be longer than 63
    #   octets. Consider the following examples:
    #
    #   `(63 octets).(63 octets).(63 octets).(61 octets)` is legal because the
    #   total length is 253 octets (63+1+63+1+63+1+61) and no label exceeds 63
    #   octets.
    #
    #   `(64 octets).(63 octets).(63 octets).(61 octets)` is not legal because
    #   the total length exceeds 253 octets (64+1+63+1+63+1+61) and the first
    #   label exceeds 63 octets.
    #
    #   `(63 octets).(63 octets).(63 octets).(62 octets)` is not legal because
    #   the total length of the DNS name (63+1+63+1+63+1+62) exceeds 253
    #   octets.
    #
    # @option params [Array<String>] :subject_alternative_names
    #   Additional FQDNs to be included in the Subject Alternative Name
    #   extension of the ACM Certificate. For example, add the name
    #   www.example.net to a certificate for which the `DomainName` field is
    #   www.example.com if users can reach your site by using either name. The
    #   maximum number of domain names that you can add to an ACM Certificate
    #   is 100. However, the initial limit is 10 domain names. If you need
    #   more than 10 names, you must request a limit increase. For more
    #   information, see [Limits][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html
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
    #   The domain name that you want ACM to use to send you emails to
    #   validate your ownership of the domain.
    #
    # @return [Types::RequestCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RequestCertificateResponse#certificate_arn #certificate_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.request_certificate({
    #     domain_name: "DomainNameString", # required
    #     subject_alternative_names: ["DomainNameString"],
    #     idempotency_token: "IdempotencyToken",
    #     domain_validation_options: [
    #       {
    #         domain_name: "DomainNameString", # required
    #         validation_domain: "DomainNameString", # required
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
    # Certificate before it can be issued. The certificate can be approved
    # by clicking a link in the mail to navigate to the Amazon certificate
    # approval website and then clicking **I Approve**. However, the
    # validation email can be blocked by spam filters. Therefore, if you do
    # not receive the original mail, you can request that the mail be resent
    # within 72 hours of requesting the ACM Certificate. If more than 72
    # hours have elapsed since your original request or since your last
    # attempt to resend validation mail, you must request a new certificate.
    # For more information about setting up your contact email addresses,
    # see [Configure Email for your Domain][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/acm/latest/userguide/setup-email.html
    #
    # @option params [required, String] :certificate_arn
    #   String that contains the ARN of the requested certificate. The
    #   certificate ARN is generated and returned by the RequestCertificate
    #   action as soon as the request is made. By default, using this
    #   parameter causes email to be sent to all top-level domains you
    #   specified in the certificate request.
    #
    #   The ARN must be of the form:
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
      context[:gem_version] = '1.0.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
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
