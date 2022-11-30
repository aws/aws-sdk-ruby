# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ACM
  module Types

    # You do not have access required to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   String that contains the ARN of the ACM certificate to which the tag
    #   is to be applied. This must be of the form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about an ACM certificate. This structure is returned
    # in the response to a DescribeCertificate request.
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate. For more
    #   information about ARNs, see [Amazon Resource Names (ARNs)][1] in the
    #   *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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
    #   The time at which the certificate was requested.
    #   @return [Time]
    #
    # @!attribute [rw] issued_at
    #   The time at which the certificate was issued. This value exists only
    #   when the certificate type is `AMAZON_ISSUED`.
    #   @return [Time]
    #
    # @!attribute [rw] imported_at
    #   The date and time when the certificate was imported. This value
    #   exists only when the certificate type is `IMPORTED`.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the certificate.
    #
    #   A certificate enters status PENDING\_VALIDATION upon being
    #   requested, unless it fails for any of the reasons given in the
    #   troubleshooting topic [Certificate request fails][1]. ACM makes
    #   repeated attempts to validate a certificate for 72 hours and then
    #   times out. If a certificate shows status FAILED or
    #   VALIDATION\_TIMED\_OUT, delete the request, correct the issue with
    #   [DNS validation][2] or [Email validation][3], and try again. If
    #   validation succeeds, the certificate enters status ISSUED.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting-failed.html
    #   [2]: https://docs.aws.amazon.com/acm/latest/userguide/dns-validation.html
    #   [3]: https://docs.aws.amazon.com/acm/latest/userguide/email-validation.html
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
    #   The algorithm that was used to generate the public-private key pair.
    #   @return [String]
    #
    # @!attribute [rw] signature_algorithm
    #   The algorithm that was used to sign the certificate.
    #   @return [String]
    #
    # @!attribute [rw] in_use_by
    #   A list of ARNs for the Amazon Web Services resources that are using
    #   the certificate. A certificate can be used by multiple Amazon Web
    #   Services resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] failure_reason
    #   The reason the certificate request failed. This value exists only
    #   when the certificate status is `FAILED`. For more information, see
    #   [Certificate Request Failed][1] in the *Certificate Manager User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting.html#troubleshooting-failed
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The source of the certificate. For certificates provided by ACM,
    #   this value is `AMAZON_ISSUED`. For certificates that you imported
    #   with ImportCertificate, this value is `IMPORTED`. ACM does not
    #   provide [managed renewal][1] for imported certificates. For more
    #   information about the differences between certificates that you
    #   import and those that ACM provides, see [Importing Certificates][2]
    #   in the *Certificate Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html
    #   [2]: https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html
    #   @return [String]
    #
    # @!attribute [rw] renewal_summary
    #   Contains information about the status of ACM's [managed renewal][1]
    #   for the certificate. This field exists only when the certificate
    #   type is `AMAZON_ISSUED`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html
    #   @return [Types::RenewalSummary]
    #
    # @!attribute [rw] key_usages
    #   A list of Key Usage X.509 v3 extension objects. Each object is a
    #   string value that identifies the purpose of the public key contained
    #   in the certificate. Possible extension values include
    #   DIGITAL\_SIGNATURE, KEY\_ENCHIPHERMENT, NON\_REPUDIATION, and more.
    #   @return [Array<Types::KeyUsage>]
    #
    # @!attribute [rw] extended_key_usages
    #   Contains a list of Extended Key Usage X.509 v3 extension objects.
    #   Each object specifies a purpose for which the certificate public key
    #   can be used and consists of a name and an object identifier (OID).
    #   @return [Array<Types::ExtendedKeyUsage>]
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the private certificate authority
    #   (CA) that issued the certificate. This has the following format:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012`
    #   @return [String]
    #
    # @!attribute [rw] renewal_eligibility
    #   Specifies whether the certificate is eligible for renewal. At this
    #   time, only exported private certificates can be renewed with the
    #   RenewCertificate command.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   Value that specifies whether to add the certificate to a
    #   transparency log. Certificate transparency makes it possible to
    #   detect SSL certificates that have been mistakenly or maliciously
    #   issued. A browser might respond to certificate that has not been
    #   logged by showing an error message. The logs are cryptographically
    #   secure.
    #   @return [Types::CertificateOptions]
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
      :renewal_summary,
      :key_usages,
      :extended_key_usages,
      :certificate_authority_arn,
      :renewal_eligibility,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure that contains options for your certificate. Currently, you
    # can use this only to specify whether to opt in to or out of
    # certificate transparency logging. Some browsers require that public
    # certificates issued for your domain be recorded in a log. Certificates
    # that are not logged typically generate a browser error. Transparency
    # makes it possible for you to detect SSL/TLS certificates that have
    # been mistakenly or maliciously issued for your domain. For general
    # information, see [Certificate Transparency Logging][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency
    #
    # @!attribute [rw] certificate_transparency_logging_preference
    #   You can opt out of certificate transparency logging by specifying
    #   the `DISABLED` option. Opt in by specifying `ENABLED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CertificateOptions AWS API Documentation
    #
    class CertificateOptions < Struct.new(
      :certificate_transparency_logging_preference)
      SENSITIVE = []
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
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Fully qualified domain name (FQDN), such as www.example.com or
    #   example.com, for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] subject_alternative_name_summaries
    #   One or more domain names (subject alternative names) included in the
    #   certificate. This list contains the domain names that are bound to
    #   the public key that is contained in the certificate. The subject
    #   alternative names include the canonical domain name (CN) of the
    #   certificate and additional domain names that can be used to connect
    #   to the website.
    #
    #   When called by [ListCertificates][1], this parameter will only
    #   return the first 100 subject alternative names included in the
    #   certificate. To display the full list of subject alternative names,
    #   use [DescribeCertificate][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html
    #   [2]: https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] has_additional_subject_alternative_names
    #   When called by [ListCertificates][1], indicates whether the full
    #   list of subject alternative names has been included in the response.
    #   If false, the response includes all of the subject alternative names
    #   included in the certificate. If true, the response only includes the
    #   first 100 subject alternative names included in the certificate. To
    #   display the full list of subject alternative names, use
    #   [DescribeCertificate][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html
    #   [2]: https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of the certificate.
    #
    #   A certificate enters status PENDING\_VALIDATION upon being
    #   requested, unless it fails for any of the reasons given in the
    #   troubleshooting topic [Certificate request fails][1]. ACM makes
    #   repeated attempts to validate a certificate for 72 hours and then
    #   times out. If a certificate shows status FAILED or
    #   VALIDATION\_TIMED\_OUT, delete the request, correct the issue with
    #   [DNS validation][2] or [Email validation][3], and try again. If
    #   validation succeeds, the certificate enters status ISSUED.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting-failed.html
    #   [2]: https://docs.aws.amazon.com/acm/latest/userguide/dns-validation.html
    #   [3]: https://docs.aws.amazon.com/acm/latest/userguide/email-validation.html
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The source of the certificate. For certificates provided by ACM,
    #   this value is `AMAZON_ISSUED`. For certificates that you imported
    #   with ImportCertificate, this value is `IMPORTED`. ACM does not
    #   provide [managed renewal][1] for imported certificates. For more
    #   information about the differences between certificates that you
    #   import and those that ACM provides, see [Importing Certificates][2]
    #   in the *Certificate Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html
    #   [2]: https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html
    #   @return [String]
    #
    # @!attribute [rw] key_algorithm
    #   The algorithm that was used to generate the public-private key pair.
    #   @return [String]
    #
    # @!attribute [rw] key_usages
    #   A list of Key Usage X.509 v3 extension objects. Each object is a
    #   string value that identifies the purpose of the public key contained
    #   in the certificate. Possible extension values include
    #   DIGITAL\_SIGNATURE, KEY\_ENCHIPHERMENT, NON\_REPUDIATION, and more.
    #   @return [Array<String>]
    #
    # @!attribute [rw] extended_key_usages
    #   Contains a list of Extended Key Usage X.509 v3 extension objects.
    #   Each object specifies a purpose for which the certificate public key
    #   can be used and consists of a name and an object identifier (OID).
    #   @return [Array<String>]
    #
    # @!attribute [rw] in_use
    #   Indicates whether the certificate is currently in use by any Amazon
    #   Web Services resources.
    #   @return [Boolean]
    #
    # @!attribute [rw] exported
    #   Indicates whether the certificate has been exported. This value
    #   exists only when the certificate type is `PRIVATE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] renewal_eligibility
    #   Specifies whether the certificate is eligible for renewal. At this
    #   time, only exported private certificates can be renewed with the
    #   RenewCertificate command.
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
    # @!attribute [rw] created_at
    #   The time at which the certificate was requested.
    #   @return [Time]
    #
    # @!attribute [rw] issued_at
    #   The time at which the certificate was issued. This value exists only
    #   when the certificate type is `AMAZON_ISSUED`.
    #   @return [Time]
    #
    # @!attribute [rw] imported_at
    #   The date and time when the certificate was imported. This value
    #   exists only when the certificate type is `IMPORTED`.
    #   @return [Time]
    #
    # @!attribute [rw] revoked_at
    #   The time at which the certificate was revoked. This value exists
    #   only when the certificate status is `REVOKED`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CertificateSummary AWS API Documentation
    #
    class CertificateSummary < Struct.new(
      :certificate_arn,
      :domain_name,
      :subject_alternative_name_summaries,
      :has_additional_subject_alternative_names,
      :status,
      :type,
      :key_algorithm,
      :key_usages,
      :extended_key_usages,
      :in_use,
      :exported,
      :renewal_eligibility,
      :not_before,
      :not_after,
      :created_at,
      :issued_at,
      :imported_at,
      :revoked_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are trying to update a resource or configuration that is already
    # being created or updated. Wait for the previous operation to finish
    # and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   String that contains the ARN of the ACM certificate to be deleted.
    #   This must be of the form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DeleteCertificateRequest AWS API Documentation
    #
    class DeleteCertificateRequest < Struct.new(
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the ACM certificate. The ARN must
    #   have the following form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DescribeCertificateRequest AWS API Documentation
    #
    class DescribeCertificateRequest < Struct.new(
      :certificate_arn)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The validation status of the domain name. This can be one of the
    #   following values:
    #
    #   * `PENDING_VALIDATION`
    #
    #   * ``SUCCESS
    #
    #   * ``FAILED
    #   @return [String]
    #
    # @!attribute [rw] resource_record
    #   Contains the CNAME record that you add to your DNS database for
    #   domain validation. For more information, see [Use DNS to Validate
    #   Domain Ownership][1].
    #
    #   Note: The CNAME information that you need does not include the name
    #   of your domain. If you include  your domain name in the DNS database
    #   CNAME record, validation fails.  For example, if the name is
    #   "\_a79865eb4cd1a6ab990a45779b4e0b96.yourdomain.com", only
    #   "\_a79865eb4cd1a6ab990a45779b4e0b96" must be used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html
    #   @return [Types::ResourceRecord]
    #
    # @!attribute [rw] validation_method
    #   Specifies the domain validation method.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DomainValidation AWS API Documentation
    #
    class DomainValidation < Struct.new(
      :domain_name,
      :validation_emails,
      :validation_domain,
      :validation_status,
      :resource_record,
      :validation_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the domain names that you want ACM to use
    # to send you emails that enable you to validate domain ownership.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing expiration events options associated with an Amazon
    # Web Services account.
    #
    # @!attribute [rw] days_before_expiry
    #   Specifies the number of days prior to certificate expiration when
    #   ACM starts generating `EventBridge` events. ACM sends one event per
    #   day per certificate until the certificate expires. By default,
    #   accounts receive events starting 45 days before certificate
    #   expiration.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ExpiryEventsConfiguration AWS API Documentation
    #
    class ExpiryEventsConfiguration < Struct.new(
      :days_before_expiry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   An Amazon Resource Name (ARN) of the issued certificate. This must
    #   be of the form:
    #
    #   `arn:aws:acm:region:account:certificate/12345678-1234-1234-1234-123456789012`
    #   @return [String]
    #
    # @!attribute [rw] passphrase
    #   Passphrase to associate with the encrypted exported private key.
    #
    #   <note markdown="1"> When creating your passphrase, you can use any ASCII character
    #   except #, $, or %.
    #
    #    </note>
    #
    #   If you want to later decrypt the private key, you must have the
    #   passphrase. You can use the following OpenSSL command to decrypt a
    #   private key. After entering the command, you are prompted for the
    #   passphrase.
    #
    #   `openssl rsa -in encrypted_key.pem -out decrypted_key.pem`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ExportCertificateRequest AWS API Documentation
    #
    class ExportCertificateRequest < Struct.new(
      :certificate_arn,
      :passphrase)
      SENSITIVE = [:passphrase]
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   The base64 PEM-encoded certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_chain
    #   The base64 PEM-encoded certificate chain. This does not include the
    #   certificate that you are exporting.
    #   @return [String]
    #
    # @!attribute [rw] private_key
    #   The encrypted private key associated with the public key in the
    #   certificate. The key is output in PKCS #8 format and is base64
    #   PEM-encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ExportCertificateResponse AWS API Documentation
    #
    class ExportCertificateResponse < Struct.new(
      :certificate,
      :certificate_chain,
      :private_key)
      SENSITIVE = [:private_key]
      include Aws::Structure
    end

    # The Extended Key Usage X.509 v3 extension defines one or more purposes
    # for which the public key can be used. This is in addition to or in
    # place of the basic purposes specified by the Key Usage extension.
    #
    # @!attribute [rw] name
    #   The name of an Extended Key Usage value.
    #   @return [String]
    #
    # @!attribute [rw] oid
    #   An object identifier (OID) for the extension value. OIDs are strings
    #   of numbers separated by periods. The following OIDs are defined in
    #   RFC 3280 and RFC 5280.
    #
    #   * `1.3.6.1.5.5.7.3.1 (TLS_WEB_SERVER_AUTHENTICATION)`
    #
    #   * `1.3.6.1.5.5.7.3.2 (TLS_WEB_CLIENT_AUTHENTICATION)`
    #
    #   * `1.3.6.1.5.5.7.3.3 (CODE_SIGNING)`
    #
    #   * `1.3.6.1.5.5.7.3.4 (EMAIL_PROTECTION)`
    #
    #   * `1.3.6.1.5.5.7.3.8 (TIME_STAMPING)`
    #
    #   * `1.3.6.1.5.5.7.3.9 (OCSP_SIGNING)`
    #
    #   * `1.3.6.1.5.5.7.3.5 (IPSEC_END_SYSTEM)`
    #
    #   * `1.3.6.1.5.5.7.3.6 (IPSEC_TUNNEL)`
    #
    #   * `1.3.6.1.5.5.7.3.7 (IPSEC_USER)`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ExtendedKeyUsage AWS API Documentation
    #
    class ExtendedKeyUsage < Struct.new(
      :name,
      :oid)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure can be used in the ListCertificates action to filter
    # the output of the certificate list.
    #
    # @!attribute [rw] extended_key_usage
    #   Specify one or more ExtendedKeyUsage extension values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] key_usage
    #   Specify one or more KeyUsage extension values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] key_types
    #   Specify one or more algorithms that can be used to generate key
    #   pairs.
    #
    #   Default filtering returns only `RSA_1024` and `RSA_2048`
    #   certificates that have at least one domain. To return other
    #   certificate types, provide the desired type signatures in a
    #   comma-separated list. For example, `"keyTypes":
    #   ["RSA_2048","RSA_4096"]` returns both `RSA_2048` and `RSA_4096`
    #   certificates.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/Filters AWS API Documentation
    #
    class Filters < Struct.new(
      :extended_key_usage,
      :key_usage,
      :key_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] expiry_events
    #   Expiration events configuration options associated with the Amazon
    #   Web Services account.
    #   @return [Types::ExpiryEventsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/GetAccountConfigurationResponse AWS API Documentation
    #
    class GetAccountConfigurationResponse < Struct.new(
      :expiry_events)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   String that contains a certificate ARN in the following format:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/GetCertificateRequest AWS API Documentation
    #
    class GetCertificateRequest < Struct.new(
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   The ACM-issued certificate corresponding to the ARN specified as
    #   input.
    #   @return [String]
    #
    # @!attribute [rw] certificate_chain
    #   Certificates forming the requested certificate's chain of trust.
    #   The chain consists of the certificate of the issuing CA and the
    #   intermediate certificates of any other subordinate CAs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/GetCertificateResponse AWS API Documentation
    #
    class GetCertificateResponse < Struct.new(
      :certificate,
      :certificate_chain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   The [Amazon Resource Name (ARN)][1] of an imported certificate to
    #   replace. To import a new certificate, omit this field.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The certificate to import.
    #   @return [String]
    #
    # @!attribute [rw] private_key
    #   The private key that matches the public key in the certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_chain
    #   The PEM encoded certificate chain.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more resource tags to associate with the imported
    #   certificate.
    #
    #   Note: You cannot apply tags when reimporting a certificate.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ImportCertificateRequest AWS API Documentation
    #
    class ImportCertificateRequest < Struct.new(
      :certificate_arn,
      :certificate,
      :private_key,
      :certificate_chain,
      :tags)
      SENSITIVE = [:private_key]
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   The [Amazon Resource Name (ARN)][1] of the imported certificate.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ImportCertificateResponse AWS API Documentation
    #
    class ImportCertificateResponse < Struct.new(
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more of of request parameters specified is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/InvalidArgsException AWS API Documentation
    #
    class InvalidArgsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested Amazon Resource Name (ARN) does not refer to an existing
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/InvalidArnException AWS API Documentation
    #
    class InvalidArnException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more values in the DomainValidationOption structure is
    # incorrect.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/InvalidDomainValidationOptionsException AWS API Documentation
    #
    class InvalidDomainValidationOptionsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An input parameter was invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Processing has reached an invalid state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/InvalidStateException AWS API Documentation
    #
    class InvalidStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or both of the values that make up the key-value pair is not
    # valid. For example, you cannot specify a tag value that begins with
    # `aws:`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/InvalidTagException AWS API Documentation
    #
    class InvalidTagException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Key Usage X.509 v3 extension defines the purpose of the public key
    # contained in the certificate.
    #
    # @!attribute [rw] name
    #   A string value that contains a Key Usage extension name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/KeyUsage AWS API Documentation
    #
    class KeyUsage < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An ACM quota has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_statuses
    #   Filter the certificate list by status value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] includes
    #   Filter the certificate list. For more information, see the Filters
    #   structure.
    #   @return [Types::Filters]
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
    # @!attribute [rw] sort_by
    #   Specifies the field to sort results by. If you specify `SortBy`, you
    #   must also specify `SortOrder`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Specifies the order of sorted results. If you specify `SortOrder`,
    #   you must also specify `SortBy`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListCertificatesRequest AWS API Documentation
    #
    class ListCertificatesRequest < Struct.new(
      :certificate_statuses,
      :includes,
      :next_token,
      :max_items,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When the list is truncated, this value is present and contains the
    #   value to use for the `NextToken` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @!attribute [rw] certificate_summary_list
    #   A list of ACM certificates.
    #   @return [Array<Types::CertificateSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListCertificatesResponse AWS API Documentation
    #
    class ListCertificatesResponse < Struct.new(
      :next_token,
      :certificate_summary_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   String that contains the ARN of the ACM certificate for which you
    #   want to list the tags. This must have the following form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListTagsForCertificateRequest AWS API Documentation
    #
    class ListTagsForCertificateRequest < Struct.new(
      :certificate_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] expiry_events
    #   Specifies expiration events associated with an account.
    #   @return [Types::ExpiryEventsConfiguration]
    #
    # @!attribute [rw] idempotency_token
    #   Customer-chosen string used to distinguish between calls to
    #   `PutAccountConfiguration`. Idempotency tokens time out after one
    #   hour. If you call `PutAccountConfiguration` multiple times with the
    #   same unexpired idempotency token, ACM treats it as the same request
    #   and returns the original result. If you change the idempotency token
    #   for each call, ACM treats each call as a new request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/PutAccountConfigurationRequest AWS API Documentation
    #
    class PutAccountConfigurationRequest < Struct.new(
      :expiry_events,
      :idempotency_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   String that contains the ARN of the ACM Certificate with one or more
    #   tags that you want to remove. This must be of the form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   String that contains the ARN of the ACM certificate to be renewed.
    #   This must be of the form:
    #
    #   `arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/RenewCertificateRequest AWS API Documentation
    #
    class RenewCertificateRequest < Struct.new(
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the status of ACM's [managed renewal][1]
    # for the certificate. This structure exists only when the certificate
    # type is `AMAZON_ISSUED`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html
    #
    # @!attribute [rw] renewal_status
    #   The status of ACM's [managed renewal][1] of the certificate.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html
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
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html
    #   @return [Array<Types::DomainValidation>]
    #
    # @!attribute [rw] renewal_status_reason
    #   The reason that a renewal request was unsuccessful.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the renewal summary was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/RenewalSummary AWS API Documentation
    #
    class RenewalSummary < Struct.new(
      :renewal_status,
      :domain_validation_options,
      :renewal_status_reason,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   Fully qualified domain name (FQDN), such as www.example.com, that
    #   you want to secure with an ACM certificate. Use an asterisk (*) to
    #   create a wildcard certificate that protects several sites in the
    #   same domain. For example, *.example.com protects www.example.com,
    #   site.example.com, and images.example.com.
    #
    #   In compliance with [RFC 5280][1], the length of the domain name
    #   (technically, the Common Name) that you provide cannot exceed 64
    #   octets (characters), including periods. To add a longer domain name,
    #   specify it in the Subject Alternative Name field, which supports
    #   names up to 253 octets in length.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc5280
    #   @return [String]
    #
    # @!attribute [rw] validation_method
    #   The method you want to use if you are requesting a public
    #   certificate to validate that you own or control domain. You can
    #   [validate with DNS][1] or [validate with email][2]. We recommend
    #   that you use DNS validation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html
    #   [2]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html
    #   @return [String]
    #
    # @!attribute [rw] subject_alternative_names
    #   Additional FQDNs to be included in the Subject Alternative Name
    #   extension of the ACM certificate. For example, add the name
    #   www.example.net to a certificate for which the `DomainName` field is
    #   www.example.com if users can reach your site by using either name.
    #   The maximum number of domain names that you can add to an ACM
    #   certificate is 100. However, the initial quota is 10 domain names.
    #   If you need more than 10 names, you must request a quota increase.
    #   For more information, see [Quotas][1].
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
    #     because the total length exceeds 253 octets (64+1+63+1+63+1+61)
    #     and the first label exceeds 63 octets.
    #
    #   * `(63 octets).(63 octets).(63 octets).(62 octets)` is not legal
    #     because the total length of the DNS name (63+1+63+1+63+1+62)
    #     exceeds 253 octets.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html
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
    #   The domain name that you want ACM to use to send you emails so that
    #   you can validate domain ownership.
    #   @return [Array<Types::DomainValidationOption>]
    #
    # @!attribute [rw] options
    #   Currently, you can use this parameter to specify whether to add the
    #   certificate to a certificate transparency log. Certificate
    #   transparency makes it possible to detect SSL/TLS certificates that
    #   have been mistakenly or maliciously issued. Certificates that have
    #   not been logged typically produce an error message in a browser. For
    #   more information, see [Opting Out of Certificate Transparency
    #   Logging][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency
    #   @return [Types::CertificateOptions]
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the private certificate authority
    #   (CA) that will be used to issue the certificate. If you do not
    #   provide an ARN and you are trying to request a private certificate,
    #   ACM will attempt to issue a public certificate. For more information
    #   about private CAs, see the [Amazon Web Services Private Certificate
    #   Authority][1] user guide. The ARN must have the following form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/userguide/PcaWelcome.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more resource tags to associate with the certificate.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] key_algorithm
    #   Specifies the algorithm of the public and private key pair that your
    #   certificate uses to encrypt data. RSA is the default key algorithm
    #   for ACM certificates. Elliptic Curve Digital Signature Algorithm
    #   (ECDSA) keys are smaller, offering security comparable to RSA keys
    #   but with greater computing efficiency. However, ECDSA is not
    #   supported by all network clients. Some AWS services may require RSA
    #   keys, or only support ECDSA keys of a particular size, while others
    #   allow the use of either RSA and ECDSA keys to ensure that
    #   compatibility is not broken. Check the requirements for the AWS
    #   service where you plan to deploy your certificate.
    #
    #   Default: RSA\_2048
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/RequestCertificateRequest AWS API Documentation
    #
    class RequestCertificateRequest < Struct.new(
      :domain_name,
      :validation_method,
      :subject_alternative_names,
      :idempotency_token,
      :domain_validation_options,
      :options,
      :certificate_authority_arn,
      :tags,
      :key_algorithm)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate request is in process and the certificate in your
    # account has not yet been issued.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/RequestInProgressException AWS API Documentation
    #
    class RequestInProgressException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   String that contains the ARN of the requested certificate. The
    #   certificate ARN is generated and returned by the RequestCertificate
    #   action as soon as the request is made. By default, using this
    #   parameter causes email to be sent to all top-level domains you
    #   specified in the certificate request. The ARN must be of the form:
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate is in use by another Amazon Web Services service in
    # the caller's account. Remove the association and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified certificate cannot be found in the caller's account or
    # the caller's account cannot be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a DNS record value that you can use to validate ownership or
    # control of a domain. This is used by the DescribeCertificate action.
    #
    # @!attribute [rw] name
    #   The name of the DNS record to create in your domain. This is
    #   supplied by ACM.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of DNS record. Currently this can be `CNAME`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the CNAME record to add to your DNS database. This is
    #   supplied by ACM.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ResourceRecord AWS API Documentation
    #
    class ResourceRecord < Struct.new(
      :name,
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair that identifies or specifies metadata about an ACM
    # resource.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A specified tag did not comply with an existing tag policy and was
    # rejected.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/TagPolicyException AWS API Documentation
    #
    class TagPolicyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied because it exceeded a quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request contains too many tags. Try the request again with fewer
    # tags.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   ARN of the requested certificate to update. This must be of the
    #   form:
    #
    #   `arn:aws:acm:us-east-1:account:certificate/12345678-1234-1234-1234-123456789012
    #   `
    #   @return [String]
    #
    # @!attribute [rw] options
    #   Use to update the options for your certificate. Currently, you can
    #   specify whether to add your certificate to a transparency log.
    #   Certificate transparency makes it possible to detect SSL/TLS
    #   certificates that have been mistakenly or maliciously issued.
    #   Certificates that have not been logged typically produce an error
    #   message in a browser.
    #   @return [Types::CertificateOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/UpdateCertificateOptionsRequest AWS API Documentation
    #
    class UpdateCertificateOptionsRequest < Struct.new(
      :certificate_arn,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The supplied input failed to satisfy constraints of an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
