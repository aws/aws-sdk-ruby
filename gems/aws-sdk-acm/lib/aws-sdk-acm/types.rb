# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ACM
  module Types

    # @note When making an API call, you may pass AddTagsToCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   String that contains the ARN of the ACM Certificate to which the tag
    #   is to be applied. This must be of the form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair that defines the tag. The tag value is optional.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/AddTagsToCertificateRequest AWS API Documentation
    #
    class AddTagsToCertificateRequest < Struct.new(
      :certificate_arn,
      :tags)
      include Aws::Structure
    end

    # Contains metadata about an ACM certificate. This structure is returned
    # in the response to a DescribeCertificate request.
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate. For more
    #   information about ARNs, see [Amazon Resource Names (ARNs) and AWS
    #   Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The fully qualified domain name for the certificate, such as
    #   www.example.com or example.com.
    #   @return [String]
    #
    # @!attribute [rw] subject_alternative_names
    #   One or more domain names (subject alternative names) included in the
    #   certificate. This list contains the domain names that are bound to
    #   the public key that is contained in the certificate. The subject
    #   alternative names include the canonical domain name (CN) of the
    #   certificate and additional domain names that can be used to connect
    #   to the website.
    #   @return [Array<String>]
    #
    # @!attribute [rw] domain_validation_options
    #   Contains information about the initial validation of each domain
    #   name that occurs as a result of the RequestCertificate request. This
    #   field exists only when the certificate type is `AMAZON_ISSUED`.
    #   @return [Array<Types::DomainValidation>]
    #
    # @!attribute [rw] serial
    #   The serial number of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The name of the entity that is associated with the public key
    #   contained in the certificate.
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   The name of the certificate authority that issued and signed the
    #   certificate.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the certificate was requested. This value exists
    #   only when the certificate type is `AMAZON_ISSUED`.
    #   @return [Time]
    #
    # @!attribute [rw] issued_at
    #   The time at which the certificate was issued. This value exists only
    #   when the certificate type is `AMAZON_ISSUED`.
    #   @return [Time]
    #
    # @!attribute [rw] imported_at
    #   The date and time at which the certificate was imported. This value
    #   exists only when the certificate type is `IMPORTED`.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] revoked_at
    #   The time at which the certificate was revoked. This value exists
    #   only when the certificate status is `REVOKED`.
    #   @return [Time]
    #
    # @!attribute [rw] revocation_reason
    #   The reason the certificate was revoked. This value exists only when
    #   the certificate status is `REVOKED`.
    #   @return [String]
    #
    # @!attribute [rw] not_before
    #   The time before which the certificate is not valid.
    #   @return [Time]
    #
    # @!attribute [rw] not_after
    #   The time after which the certificate is not valid.
    #   @return [Time]
    #
    # @!attribute [rw] key_algorithm
    #   The algorithm that was used to generate the key pair (the public and
    #   private key).
    #   @return [String]
    #
    # @!attribute [rw] signature_algorithm
    #   The algorithm that was used to sign the certificate.
    #   @return [String]
    #
    # @!attribute [rw] in_use_by
    #   A list of ARNs for the AWS resources that are using the certificate.
    #   A certificate can be used by multiple AWS resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] failure_reason
    #   The reason the certificate request failed. This value exists only
    #   when the certificate status is `FAILED`. For more information, see
    #   [Certificate Request Failed][1] in the *AWS Certificate Manager User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/acm/latest/userguide/troubleshooting.html#troubleshooting-failed
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The source of the certificate. For certificates provided by ACM,
    #   this value is `AMAZON_ISSUED`. For certificates that you imported
    #   with ImportCertificate, this value is `IMPORTED`. ACM does not
    #   provide [managed renewal][1] for imported certificates. For more
    #   information about the differences between certificates that you
    #   import and those that ACM provides, see [Importing Certificates][2]
    #   in the *AWS Certificate Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html
    #   [2]: http://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html
    #   @return [String]
    #
    # @!attribute [rw] renewal_summary
    #   Contains information about the status of ACM's [managed renewal][1]
    #   for the certificate. This field exists only when the certificate
    #   type is `AMAZON_ISSUED`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html
    #   @return [Types::RenewalSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CertificateDetail AWS API Documentation
    #
    class CertificateDetail < Struct.new(
      :certificate_arn,
      :domain_name,
      :subject_alternative_names,
      :domain_validation_options,
      :serial,
      :subject,
      :issuer,
      :created_at,
      :issued_at,
      :imported_at,
      :status,
      :revoked_at,
      :revocation_reason,
      :not_before,
      :not_after,
      :key_algorithm,
      :signature_algorithm,
      :in_use_by,
      :failure_reason,
      :type,
      :renewal_summary)
      include Aws::Structure
    end

    # This structure is returned in the response object of ListCertificates
    # action.
    #
    # @!attribute [rw] certificate_arn
    #   Amazon Resource Name (ARN) of the certificate. This is of the form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Fully qualified domain name (FQDN), such as www.example.com or
    #   example.com, for the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CertificateSummary AWS API Documentation
    #
    class CertificateSummary < Struct.new(
      :certificate_arn,
      :domain_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   String that contains the ARN of the ACM Certificate to be deleted.
    #   This must be of the form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DeleteCertificateRequest AWS API Documentation
    #
    class DeleteCertificateRequest < Struct.new(
      :certificate_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the ACM Certificate. The ARN must
    #   have the following form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DescribeCertificateRequest AWS API Documentation
    #
    class DescribeCertificateRequest < Struct.new(
      :certificate_arn)
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   Metadata about an ACM certificate.
    #   @return [Types::CertificateDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DescribeCertificateResponse AWS API Documentation
    #
    class DescribeCertificateResponse < Struct.new(
      :certificate)
      include Aws::Structure
    end

    # Contains information about the validation of each domain name in the
    # certificate.
    #
    # @!attribute [rw] domain_name
    #   A fully qualified domain name (FQDN) in the certificate. For
    #   example, `www.example.com` or `example.com`.
    #   @return [String]
    #
    # @!attribute [rw] validation_emails
    #   A list of email addresses that ACM used to send domain validation
    #   emails.
    #   @return [Array<String>]
    #
    # @!attribute [rw] validation_domain
    #   The domain name that ACM used to send domain validation emails.
    #   @return [String]
    #
    # @!attribute [rw] validation_status
    #   The validation status of the domain name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DomainValidation AWS API Documentation
    #
    class DomainValidation < Struct.new(
      :domain_name,
      :validation_emails,
      :validation_domain,
      :validation_status)
      include Aws::Structure
    end

    # Contains information about the domain names that you want ACM to use
    # to send you emails to validate your ownership of the domain.
    #
    # @note When making an API call, you may pass DomainValidationOption
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainNameString", # required
    #         validation_domain: "DomainNameString", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   A fully qualified domain name (FQDN) in the certificate request.
    #   @return [String]
    #
    # @!attribute [rw] validation_domain
    #   The domain name that you want ACM to use to send you validation
    #   emails. This domain name is the suffix of the email addresses that
    #   you want ACM to use. This must be the same as the `DomainName` value
    #   or a superdomain of the `DomainName` value. For example, if you
    #   request a certificate for `testing.example.com`, you can specify
    #   `example.com` for this value. In that case, ACM sends domain
    #   validation emails to the following five addresses:
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
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DomainValidationOption AWS API Documentation
    #
    class DomainValidationOption < Struct.new(
      :domain_name,
      :validation_domain)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   String that contains a certificate ARN in the following format:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/GetCertificateRequest AWS API Documentation
    #
    class GetCertificateRequest < Struct.new(
      :certificate_arn)
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   String that contains the ACM Certificate represented by the ARN
    #   specified at input.
    #   @return [String]
    #
    # @!attribute [rw] certificate_chain
    #   The certificate chain that contains the root certificate issued by
    #   the certificate authority (CA).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/GetCertificateResponse AWS API Documentation
    #
    class GetCertificateResponse < Struct.new(
      :certificate,
      :certificate_chain)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "Arn",
    #         certificate: "data", # required
    #         private_key: "data", # required
    #         certificate_chain: "data",
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   The [Amazon Resource Name (ARN)][1] of an imported certificate to
    #   replace. To import a new certificate, omit this field.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The certificate to import. It must meet the following requirements:
    #
    #   * Must be PEM-encoded.
    #
    #   * Must contain a 1024-bit or 2048-bit RSA public key.
    #
    #   * Must be valid at the time of import. You cannot import a
    #     certificate before its validity period begins (the certificate's
    #     `NotBefore` date) or after it expires (the certificate's
    #     `NotAfter` date).
    #   @return [String]
    #
    # @!attribute [rw] private_key
    #   The private key that matches the public key in the certificate. It
    #   must meet the following requirements:
    #
    #   * Must be PEM-encoded.
    #
    #   * Must be unencrypted. You cannot import a private key that is
    #     protected by a password or passphrase.
    #   @return [String]
    #
    # @!attribute [rw] certificate_chain
    #   The certificate chain. It must be PEM-encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ImportCertificateRequest AWS API Documentation
    #
    class ImportCertificateRequest < Struct.new(
      :certificate_arn,
      :certificate,
      :private_key,
      :certificate_chain)
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   The [Amazon Resource Name (ARN)][1] of the imported certificate.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ImportCertificateResponse AWS API Documentation
    #
    class ImportCertificateResponse < Struct.new(
      :certificate_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCertificatesRequest
    #   data as a hash:
    #
    #       {
    #         certificate_statuses: ["PENDING_VALIDATION"], # accepts PENDING_VALIDATION, ISSUED, INACTIVE, EXPIRED, VALIDATION_TIMED_OUT, REVOKED, FAILED
    #         next_token: "NextToken",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] certificate_statuses
    #   The status or statuses on which to filter the list of ACM
    #   Certificates.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Use this parameter only when paginating results and only in a
    #   subsequent request after you receive a response with truncated
    #   results. Set it to the value of `NextToken` from the response you
    #   just received.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this parameter when paginating results to specify the maximum
    #   number of items to return in the response. If additional items exist
    #   beyond the number you specify, the `NextToken` element is sent in
    #   the response. Use this `NextToken` value in a subsequent request to
    #   retrieve additional items.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListCertificatesRequest AWS API Documentation
    #
    class ListCertificatesRequest < Struct.new(
      :certificate_statuses,
      :next_token,
      :max_items)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When the list is truncated, this value is present and contains the
    #   value to use for the `NextToken` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @!attribute [rw] certificate_summary_list
    #   A list of ACM Certificates.
    #   @return [Array<Types::CertificateSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListCertificatesResponse AWS API Documentation
    #
    class ListCertificatesResponse < Struct.new(
      :next_token,
      :certificate_summary_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   String that contains the ARN of the ACM Certificate for which you
    #   want to list the tags. This has the following form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListTagsForCertificateRequest AWS API Documentation
    #
    class ListTagsForCertificateRequest < Struct.new(
      :certificate_arn)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The key-value pairs that define the applied tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListTagsForCertificateResponse AWS API Documentation
    #
    class ListTagsForCertificateResponse < Struct.new(
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveTagsFromCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   String that contains the ARN of the ACM Certificate with one or more
    #   tags that you want to remove. This must be of the form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair that defines the tag to remove.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/RemoveTagsFromCertificateRequest AWS API Documentation
    #
    class RemoveTagsFromCertificateRequest < Struct.new(
      :certificate_arn,
      :tags)
      include Aws::Structure
    end

    # Contains information about the status of ACM's [managed renewal][1]
    # for the certificate. This structure exists only when the certificate
    # type is `AMAZON_ISSUED`.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html
    #
    # @!attribute [rw] renewal_status
    #   The status of ACM's [managed renewal][1] of the certificate.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html
    #   @return [String]
    #
    # @!attribute [rw] domain_validation_options
    #   Contains information about the validation of each domain name in the
    #   certificate, as it pertains to ACM's [managed renewal][1]. This is
    #   different from the initial validation that occurs as a result of the
    #   RequestCertificate request. This field exists only when the
    #   certificate type is `AMAZON_ISSUED`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html
    #   @return [Array<Types::DomainValidation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/RenewalSummary AWS API Documentation
    #
    class RenewalSummary < Struct.new(
      :renewal_status,
      :domain_validation_options)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RequestCertificateRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainNameString", # required
    #         subject_alternative_names: ["DomainNameString"],
    #         idempotency_token: "IdempotencyToken",
    #         domain_validation_options: [
    #           {
    #             domain_name: "DomainNameString", # required
    #             validation_domain: "DomainNameString", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] domain_name
    #   Fully qualified domain name (FQDN), such as www.example.com, of the
    #   site that you want to secure with an ACM Certificate. Use an
    #   asterisk (*) to create a wildcard certificate that protects several
    #   sites in the same domain. For example, *.example.com protects
    #   www.example.com, site.example.com, and images.example.com.
    #
    #   The maximum length of a DNS name is 253 octets. The name is made up
    #   of multiple labels separated by periods. No label can be longer than
    #   63 octets. Consider the following examples:
    #
    #   `(63 octets).(63 octets).(63 octets).(61 octets)` is legal because
    #   the total length is 253 octets (63+1+63+1+63+1+61) and no label
    #   exceeds 63 octets.
    #
    #   `(64 octets).(63 octets).(63 octets).(61 octets)` is not legal
    #   because the total length exceeds 253 octets (64+1+63+1+63+1+61) and
    #   the first label exceeds 63 octets.
    #
    #   `(63 octets).(63 octets).(63 octets).(62 octets)` is not legal
    #   because the total length of the DNS name (63+1+63+1+63+1+62) exceeds
    #   253 octets.
    #   @return [String]
    #
    # @!attribute [rw] subject_alternative_names
    #   Additional FQDNs to be included in the Subject Alternative Name
    #   extension of the ACM Certificate. For example, add the name
    #   www.example.net to a certificate for which the `DomainName` field is
    #   www.example.com if users can reach your site by using either name.
    #   The maximum number of domain names that you can add to an ACM
    #   Certificate is 100. However, the initial limit is 10 domain names.
    #   If you need more than 10 names, you must request a limit increase.
    #   For more information, see [Limits][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] idempotency_token
    #   Customer chosen string that can be used to distinguish between calls
    #   to `RequestCertificate`. Idempotency tokens time out after one hour.
    #   Therefore, if you call `RequestCertificate` multiple times with the
    #   same idempotency token within one hour, ACM recognizes that you are
    #   requesting only one certificate and will issue only one. If you
    #   change the idempotency token for each call, ACM recognizes that you
    #   are requesting multiple certificates.
    #   @return [String]
    #
    # @!attribute [rw] domain_validation_options
    #   The domain name that you want ACM to use to send you emails to
    #   validate your ownership of the domain.
    #   @return [Array<Types::DomainValidationOption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/RequestCertificateRequest AWS API Documentation
    #
    class RequestCertificateRequest < Struct.new(
      :domain_name,
      :subject_alternative_names,
      :idempotency_token,
      :domain_validation_options)
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   String that contains the ARN of the issued certificate. This must be
    #   of the form:
    #
    #   `arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/RequestCertificateResponse AWS API Documentation
    #
    class RequestCertificateResponse < Struct.new(
      :certificate_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ResendValidationEmailRequest
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "Arn", # required
    #         domain: "DomainNameString", # required
    #         validation_domain: "DomainNameString", # required
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   String that contains the ARN of the requested certificate. The
    #   certificate ARN is generated and returned by the RequestCertificate
    #   action as soon as the request is made. By default, using this
    #   parameter causes email to be sent to all top-level domains you
    #   specified in the certificate request.
    #
    #   The ARN must be of the form:
    #
    #   `arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The fully qualified domain name (FQDN) of the certificate that needs
    #   to be validated.
    #   @return [String]
    #
    # @!attribute [rw] validation_domain
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
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ResendValidationEmailRequest AWS API Documentation
    #
    class ResendValidationEmailRequest < Struct.new(
      :certificate_arn,
      :domain,
      :validation_domain)
      include Aws::Structure
    end

    # A key-value pair that identifies or specifies metadata about an ACM
    # resource.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

  end
end
