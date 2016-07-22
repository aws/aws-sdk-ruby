# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module ACM
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :acm

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
      # @option params [required, Array<Types::Tag>] :tags
      #   The key-value pair that defines the tag. The tag value is optional.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_tags_to_certificate({
      #     certificate_arn: "Arn", # required
      #     tags: [ # required
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue",
      #       },
      #     ],
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_certificate({
      #     certificate_arn: "Arn", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_certificate(params = {}, options = {})
        req = build_request(:delete_certificate, params)
        req.send_request(options)
      end

      # Returns a list of the fields contained in the specified ACM
      # Certificate. For example, this action returns the certificate status,
      # a flag that indicates whether the certificate is associated with any
      # other AWS service, and the date at which the certificate request was
      # created. You specify the ACM Certificate on input by its Amazon
      # Resource Name (ARN).
      # @option params [required, String] :certificate_arn
      #   String that contains an ACM Certificate ARN. The ARN must be of the
      #   form:
      #
      #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
      #
      #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
      #   AWS Service Namespaces][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
      # @return [Types::DescribeCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeCertificateResponse#certificate #Certificate} => Types::CertificateDetail
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_certificate({
      #     certificate_arn: "Arn", # required
      #   })
      #
      # @example Response structure
      #   resp.certificate.certificate_arn #=> String
      #   resp.certificate.domain_name #=> String
      #   resp.certificate.subject_alternative_names #=> Array
      #   resp.certificate.subject_alternative_names[0] #=> String
      #   resp.certificate.domain_validation_options #=> Array
      #   resp.certificate.domain_validation_options[0].domain_name #=> String
      #   resp.certificate.domain_validation_options[0].validation_emails #=> Array
      #   resp.certificate.domain_validation_options[0].validation_emails[0] #=> String
      #   resp.certificate.domain_validation_options[0].validation_domain #=> String
      #   resp.certificate.serial #=> String
      #   resp.certificate.subject #=> String
      #   resp.certificate.issuer #=> String
      #   resp.certificate.created_at #=> Time
      #   resp.certificate.issued_at #=> Time
      #   resp.certificate.status #=> String, one of "PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED", "FAILED"
      #   resp.certificate.revoked_at #=> Time
      #   resp.certificate.revocation_reason #=> String, one of "UNSPECIFIED", "KEY_COMPROMISE", "CA_COMPROMISE", "AFFILIATION_CHANGED", "SUPERCEDED", "CESSATION_OF_OPERATION", "CERTIFICATE_HOLD", "REMOVE_FROM_CRL", "PRIVILEGE_WITHDRAWN", "A_A_COMPROMISE"
      #   resp.certificate.not_before #=> Time
      #   resp.certificate.not_after #=> Time
      #   resp.certificate.key_algorithm #=> String, one of "RSA_2048", "EC_prime256v1"
      #   resp.certificate.signature_algorithm #=> String
      #   resp.certificate.in_use_by #=> Array
      #   resp.certificate.in_use_by[0] #=> String
      #   resp.certificate.failure_reason #=> String, one of "NO_AVAILABLE_CONTACTS", "ADDITIONAL_VERIFICATION_REQUIRED", "DOMAIN_NOT_ALLOWED", "INVALID_PUBLIC_DOMAIN", "OTHER"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @return [Types::GetCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetCertificateResponse#certificate #Certificate} => String
      #   * {Types::GetCertificateResponse#certificate_chain #CertificateChain} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_certificate({
      #     certificate_arn: "Arn", # required
      #   })
      #
      # @example Response structure
      #   resp.certificate #=> String
      #   resp.certificate_chain #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_certificate(params = {}, options = {})
        req = build_request(:get_certificate, params)
        req.send_request(options)
      end

      # Retrieves a list of ACM Certificates and the domain name for each. You
      # can optionally filter the list to return only the certificates that
      # match the specified status.
      # @option params [Array<String>] :certificate_statuses
      #   The status or statuses on which to filter the list of ACM
      #   Certificates.
      # @option params [String] :next_token
      #   Use this parameter only when paginating results and only in a
      #   subsequent request after you receive a response with truncated
      #   results. Set it to the value of `NextToken` from the response you just
      #   received.
      # @option params [Integer] :max_items
      #   Use this parameter when paginating results to specify the maximum
      #   number of items to return in the response. If additional items exist
      #   beyond the number you specify, the `NextToken` element is sent in the
      #   response. Use this `NextToken` value in a subsequent request to
      #   retrieve additional items.
      # @return [Types::ListCertificatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListCertificatesResponse#next_token #NextToken} => String
      #   * {Types::ListCertificatesResponse#certificate_summary_list #CertificateSummaryList} => Array&lt;Types::CertificateSummary&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_certificates({
      #     certificate_statuses: ["PENDING_VALIDATION"], # accepts PENDING_VALIDATION, ISSUED, INACTIVE, EXPIRED, VALIDATION_TIMED_OUT, REVOKED, FAILED
      #     next_token: "NextToken",
      #     max_items: 1,
      #   })
      #
      # @example Response structure
      #   resp.next_token #=> String
      #   resp.certificate_summary_list #=> Array
      #   resp.certificate_summary_list[0].certificate_arn #=> String
      #   resp.certificate_summary_list[0].domain_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_certificates(params = {}, options = {})
        req = build_request(:list_certificates, params)
        req.send_request(options)
      end

      # Lists the tags that have been applied to the ACM Certificate. Use the
      # certificate ARN to specify the certificate. To add a tag to an ACM
      # Certificate, use the AddTagsToCertificate action. To delete a tag, use
      # the RemoveTagsFromCertificate action.
      # @option params [required, String] :certificate_arn
      #   String that contains the ARN of the ACM Certificate for which you want
      #   to list the tags. This must be of the form:
      #
      #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
      #
      #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
      #   AWS Service Namespaces][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
      # @return [Types::ListTagsForCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTagsForCertificateResponse#tags #Tags} => Array&lt;Types::Tag&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_tags_for_certificate({
      #     certificate_arn: "Arn", # required
      #   })
      #
      # @example Response structure
      #   resp.tags #=> Array
      #   resp.tags[0].key #=> String
      #   resp.tags[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @option params [required, Array<Types::Tag>] :tags
      #   The key-value pair that defines the tag to remove.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.remove_tags_from_certificate({
      #     certificate_arn: "Arn", # required
      #     tags: [ # required
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue",
      #       },
      #     ],
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # the [AWS Certificate Manager User Guide ][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/acm/latest/userguide/overview.html
      # @option params [required, String] :domain_name
      #   Fully qualified domain name (FQDN), such as www.example.com, of the
      #   site you want to secure with an ACM Certificate. Use an asterisk (\*)
      #   to create a wildcard certificate that protects several sites in the
      #   same domain. For example, \*.example.com protects www.example.com,
      #   site.example.com, and images.example.com.
      # @option params [Array<String>] :subject_alternative_names
      #   Additional FQDNs to be included in the Subject Alternative Name
      #   extension of the ACM Certificate. For example, add the name
      #   www.example.net to a certificate for which the `DomainName` field is
      #   www.example.com if users can reach your site by using either name.
      # @option params [String] :idempotency_token
      #   Customer chosen string that can be used to distinguish between calls
      #   to `RequestCertificate`. Idempotency tokens time out after one hour.
      #   Therefore, if you call `RequestCertificate` multiple times with the
      #   same idempotency token within one hour, ACM recognizes that you are
      #   requesting only one certificate and will issue only one. If you change
      #   the idempotency token for each call, ACM recognizes that you are
      #   requesting multiple certificates.
      # @option params [Array<Types::DomainValidationOption>] :domain_validation_options
      #   The base validation domain that will act as the suffix of the email
      #   addresses that are used to send the emails. This must be the same as
      #   the `Domain` value or a superdomain of the `Domain` value. For
      #   example, if you requested a certificate for `test.example.com` and
      #   specify **DomainValidationOptions** of `example.com`, ACM sends email
      #   to the domain registrant, technical contact, and administrative
      #   contact in WHOIS and the following five addresses:
      #
      #   * admin@example.com
      #
      #   * administrator@example.com
      #
      #   * hostmaster@example.com
      #
      #   * postmaster@example.com
      #
      #   * webmaster@example.com
      # @return [Types::RequestCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RequestCertificateResponse#certificate_arn #CertificateArn} => String
      #
      # @example Request syntax with placeholder values
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
      #   resp.certificate_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @option params [required, String] :domain
      #   The Fully Qualified Domain Name (FQDN) of the certificate that needs
      #   to be validated.
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
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.resend_validation_email({
      #     certificate_arn: "Arn", # required
      #     domain: "DomainNameString", # required
      #     validation_domain: "DomainNameString", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def resend_validation_email(params = {}, options = {})
        req = build_request(:resend_validation_email, params)
        req.send_request(options)
      end

      # @!endgroup

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
        {}
      end

      # @api private
      class << self

        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
