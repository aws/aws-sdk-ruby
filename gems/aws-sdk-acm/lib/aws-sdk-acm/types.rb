# frozen_string_literal: true

# This is generated code!

module Aws::ACM
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have access required to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>String that contains the ARN of the ACM certificate to which the tag is to be applied. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pair that defines the tag. The tag value is optional.</p>
    #   @return [Array<Types::Tag>]
    class AddTagsToCertificateRequest < Struct.new(
      nil,
      :certificate_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about an ACM certificate. This structure is returned in the response to a <a>DescribeCertificate</a> request. </p>
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The fully qualified domain name for the certificate, such as www.example.com or example.com.</p>
    #   @return [String]
    # @!attribute subject_alternative_names
    #   <p>One or more domain names (subject alternative names) included in the certificate. This list contains the domain names that are bound to the public key that is contained in the certificate. The subject alternative names include the canonical domain name (CN) of the certificate and additional domain names that can be used to connect to the website. </p>
    #   @return [Array<String>]
    # @!attribute managed_by
    #   <p>Identifies the Amazon Web Services service that manages the certificate issued by ACM.</p>
    #   @return [String]
    # @!attribute domain_validation_options
    #   <p>Contains information about the initial validation of each domain name that occurs as a result of the <a>RequestCertificate</a> request. This field exists only when the certificate type is <code>AMAZON_ISSUED</code>. </p>
    #   @return [Array<Types::DomainValidation>]
    # @!attribute serial
    #   <p>The serial number of the certificate.</p>
    #   @return [String]
    # @!attribute subject
    #   <p>The name of the entity that is associated with the public key contained in the certificate.</p>
    #   @return [String]
    # @!attribute issuer
    #   <p>The name of the certificate authority that issued and signed the certificate.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the certificate was requested.</p>
    #   @return [Time]
    # @!attribute issued_at
    #   <p>The time at which the certificate was issued. This value exists only when the certificate type is <code>AMAZON_ISSUED</code>. </p>
    #   @return [Time]
    # @!attribute imported_at
    #   <p>The date and time when the certificate was imported. This value exists only when the certificate type is <code>IMPORTED</code>. </p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the certificate.</p> <p>A certificate enters status PENDING_VALIDATION upon being requested, unless it fails for any of the reasons given in the troubleshooting topic <a href="https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting-failed.html">Certificate request fails</a>. ACM makes repeated attempts to validate a certificate for 72 hours and then times out. If a certificate shows status FAILED or VALIDATION_TIMED_OUT, delete the request, correct the issue with <a href="https://docs.aws.amazon.com/acm/latest/userguide/dns-validation.html">DNS validation</a> or <a href="https://docs.aws.amazon.com/acm/latest/userguide/email-validation.html">Email validation</a>, and try again. If validation succeeds, the certificate enters status ISSUED. </p>
    #   @return [String]
    # @!attribute revoked_at
    #   <p>The time at which the certificate was revoked. This value exists only when the certificate status is <code>REVOKED</code>. </p>
    #   @return [Time]
    # @!attribute revocation_reason
    #   <p>The reason the certificate was revoked. This value exists only when the certificate status is <code>REVOKED</code>. </p>
    #   @return [String]
    # @!attribute not_before
    #   <p>The time before which the certificate is not valid.</p>
    #   @return [Time]
    # @!attribute not_after
    #   <p>The time after which the certificate is not valid.</p>
    #   @return [Time]
    # @!attribute key_algorithm
    #   <p>The algorithm that was used to generate the public-private key pair.</p>
    #   @return [String]
    # @!attribute signature_algorithm
    #   <p>The algorithm that was used to sign the certificate.</p>
    #   @return [String]
    # @!attribute in_use_by
    #   <p>A list of ARNs for the Amazon Web Services resources that are using the certificate. A certificate can be used by multiple Amazon Web Services resources. </p>
    #   @return [Array<String>]
    # @!attribute failure_reason
    #   <p>The reason the certificate request failed. This value exists only when the certificate status is <code>FAILED</code>. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting.html#troubleshooting-failed">Certificate Request Failed</a> in the <i>Certificate Manager User Guide</i>. </p>
    #   @return [String]
    # @!attribute type
    #   <p>The source of the certificate. For certificates provided by ACM, this value is <code>AMAZON_ISSUED</code>. For certificates that you imported with <a>ImportCertificate</a>, this value is <code>IMPORTED</code>. ACM does not provide <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for imported certificates. For more information about the differences between certificates that you import and those that ACM provides, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing Certificates</a> in the <i>Certificate Manager User Guide</i>. </p>
    #   @return [String]
    # @!attribute renewal_summary
    #   <p>Contains information about the status of ACM's <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for the certificate. This field exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
    #   @return [Types::RenewalSummary]
    # @!attribute key_usages
    #   <p>A list of Key Usage X.509 v3 extension objects. Each object is a string value that identifies the purpose of the public key contained in the certificate. Possible extension values include DIGITAL_SIGNATURE, KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.</p>
    #   @return [Array<Types::KeyUsage>]
    # @!attribute extended_key_usages
    #   <p>Contains a list of Extended Key Usage X.509 v3 extension objects. Each object specifies a purpose for which the certificate public key can be used and consists of a name and an object identifier (OID). </p>
    #   @return [Array<Types::ExtendedKeyUsage>]
    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the private certificate authority (CA) that issued the certificate. This has the following format: </p> <p> <code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code> </p>
    #   @return [String]
    # @!attribute renewal_eligibility
    #   <p>Specifies whether the certificate is eligible for renewal. At this time, only exported private certificates can be renewed with the <a>RenewCertificate</a> command.</p>
    #   @return [String]
    # @!attribute options
    #   <p>Value that specifies whether to add the certificate to a transparency log. Certificate transparency makes it possible to detect SSL certificates that have been mistakenly or maliciously issued. A browser might respond to certificate that has not been logged by showing an error message. The logs are cryptographically secure. </p>
    #   @return [Types::CertificateOptions]
    class CertificateDetail < Struct.new(
      nil,
      :certificate_arn,
      :domain_name,
      :subject_alternative_names,
      :managed_by,
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
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure that contains options for your certificate. You can use this structure to specify whether to opt in to or out of certificate transparency logging and export your certificate. </p> <p>Some browsers require that public certificates issued for your domain be recorded in a log. Certificates that are not logged typically generate a browser error. Transparency makes it possible for you to detect SSL/TLS certificates that have been mistakenly or maliciously issued for your domain. For general information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency">Certificate Transparency Logging</a>.</p> <p>You can export public ACM certificates to use with Amazon Web Services services as well as outside Amazon Web Services Cloud. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-exportable-certificates.html">Certificate Manager exportable public certificate</a>.</p>
    # @!attribute certificate_transparency_logging_preference
    #   <p>You can opt out of certificate transparency logging by specifying the <code>DISABLED</code> option. Opt in by specifying <code>ENABLED</code>. </p>
    #   @return [String]
    # @!attribute export
    #   <p>You can opt in to allow the export of your certificates by specifying <code>ENABLED</code>.</p>
    #   @return [String]
    class CertificateOptions < Struct.new(
      nil,
      :certificate_transparency_logging_preference,
      :export,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure is returned in the response object of <a>ListCertificates</a> action. </p>
    # @!attribute certificate_arn
    #   <p>Amazon Resource Name (ARN) of the certificate. This is of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>Fully qualified domain name (FQDN), such as www.example.com or example.com, for the certificate.</p>
    #   @return [String]
    # @!attribute subject_alternative_name_summaries
    #   <p>One or more domain names (subject alternative names) included in the certificate. This list contains the domain names that are bound to the public key that is contained in the certificate. The subject alternative names include the canonical domain name (CN) of the certificate and additional domain names that can be used to connect to the website. </p> <p>When called by <a href="https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html">ListCertificates</a>, this parameter will only return the first 100 subject alternative names included in the certificate. To display the full list of subject alternative names, use <a href="https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html">DescribeCertificate</a>.</p>
    #   @return [Array<String>]
    # @!attribute has_additional_subject_alternative_names
    #   <p>When called by <a href="https://docs.aws.amazon.com/acm/latestAPIReference/API_ListCertificates.html">ListCertificates</a>, indicates whether the full list of subject alternative names has been included in the response. If false, the response includes all of the subject alternative names included in the certificate. If true, the response only includes the first 100 subject alternative names included in the certificate. To display the full list of subject alternative names, use <a href="https://docs.aws.amazon.com/acm/latestAPIReference/API_DescribeCertificate.html">DescribeCertificate</a>.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The status of the certificate.</p> <p>A certificate enters status PENDING_VALIDATION upon being requested, unless it fails for any of the reasons given in the troubleshooting topic <a href="https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting-failed.html">Certificate request fails</a>. ACM makes repeated attempts to validate a certificate for 72 hours and then times out. If a certificate shows status FAILED or VALIDATION_TIMED_OUT, delete the request, correct the issue with <a href="https://docs.aws.amazon.com/acm/latest/userguide/dns-validation.html">DNS validation</a> or <a href="https://docs.aws.amazon.com/acm/latest/userguide/email-validation.html">Email validation</a>, and try again. If validation succeeds, the certificate enters status ISSUED. </p>
    #   @return [String]
    # @!attribute type
    #   <p>The source of the certificate. For certificates provided by ACM, this value is <code>AMAZON_ISSUED</code>. For certificates that you imported with <a>ImportCertificate</a>, this value is <code>IMPORTED</code>. ACM does not provide <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for imported certificates. For more information about the differences between certificates that you import and those that ACM provides, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing Certificates</a> in the <i>Certificate Manager User Guide</i>. </p>
    #   @return [String]
    # @!attribute key_algorithm
    #   <p>The algorithm that was used to generate the public-private key pair.</p>
    #   @return [String]
    # @!attribute key_usages
    #   <p>A list of Key Usage X.509 v3 extension objects. Each object is a string value that identifies the purpose of the public key contained in the certificate. Possible extension values include DIGITAL_SIGNATURE, KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.</p>
    #   @return [Array<String>]
    # @!attribute extended_key_usages
    #   <p>Contains a list of Extended Key Usage X.509 v3 extension objects. Each object specifies a purpose for which the certificate public key can be used and consists of a name and an object identifier (OID). </p>
    #   @return [Array<String>]
    # @!attribute export_option
    #   <p>Indicates if export is enabled for the certificate.</p>
    #   @return [String]
    # @!attribute in_use
    #   <p>Indicates whether the certificate is currently in use by any Amazon Web Services resources.</p>
    #   @return [Boolean]
    # @!attribute exported
    #   <p>Indicates whether the certificate has been exported. This value exists only when the certificate type is <code>PRIVATE</code>.</p>
    #   @return [Boolean]
    # @!attribute renewal_eligibility
    #   <p>Specifies whether the certificate is eligible for renewal. At this time, only exported private certificates can be renewed with the <a>RenewCertificate</a> command.</p>
    #   @return [String]
    # @!attribute not_before
    #   <p>The time before which the certificate is not valid.</p>
    #   @return [Time]
    # @!attribute not_after
    #   <p>The time after which the certificate is not valid.</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>The time at which the certificate was requested.</p>
    #   @return [Time]
    # @!attribute issued_at
    #   <p>The time at which the certificate was issued. This value exists only when the certificate type is <code>AMAZON_ISSUED</code>. </p>
    #   @return [Time]
    # @!attribute imported_at
    #   <p>The date and time when the certificate was imported. This value exists only when the certificate type is <code>IMPORTED</code>. </p>
    #   @return [Time]
    # @!attribute revoked_at
    #   <p>The time at which the certificate was revoked. This value exists only when the certificate status is <code>REVOKED</code>. </p>
    #   @return [Time]
    # @!attribute managed_by
    #   <p>Identifies the Amazon Web Services service that manages the certificate issued by ACM.</p>
    #   @return [String]
    class CertificateSummary < Struct.new(
      nil,
      :certificate_arn,
      :domain_name,
      :subject_alternative_name_summaries,
      :has_additional_subject_alternative_names,
      :status,
      :type,
      :key_algorithm,
      :key_usages,
      :extended_key_usages,
      :export_option,
      :in_use,
      :exported,
      :renewal_eligibility,
      :not_before,
      :not_after,
      :created_at,
      :issued_at,
      :imported_at,
      :revoked_at,
      :managed_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You are trying to update a resource or configuration that is already being created or updated. Wait for the previous operation to finish and try again.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>String that contains the ARN of the ACM certificate to be deleted. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #   @return [String]
    class DeleteCertificateRequest < Struct.new(
      nil,
      :certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the ACM certificate. The ARN must have the following form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #   @return [String]
    class DescribeCertificateRequest < Struct.new(
      nil,
      :certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate
    #   <p>Metadata about an ACM certificate.</p>
    #   @return [Types::CertificateDetail]
    class DescribeCertificateResponse < Struct.new(
      nil,
      :certificate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the validation of each domain name in the certificate.</p>
    # @!attribute domain_name
    #   <p>A fully qualified domain name (FQDN) in the certificate. For example, <code>www.example.com</code> or <code>example.com</code>. </p>
    #   @return [String]
    # @!attribute validation_emails
    #   <p>A list of email addresses that ACM used to send domain validation emails.</p>
    #   @return [Array<String>]
    # @!attribute validation_domain
    #   <p>The domain name that ACM used to send domain validation emails.</p>
    #   @return [String]
    # @!attribute validation_status
    #   <p>The validation status of the domain name. This can be one of the following values:</p> <ul> <li> <p> <code>PENDING_VALIDATION</code> </p> </li> <li> <p> <code/>SUCCESS</p> </li> <li> <p> <code/>FAILED</p> </li> </ul>
    #   @return [String]
    # @!attribute resource_record
    #   <p>Contains the CNAME record that you add to your DNS database for domain validation. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html">Use DNS to Validate Domain Ownership</a>.</p> <note> <p>The CNAME information that you need does not include the name of your domain. If you include your domain name in the DNS database CNAME record, validation fails. For example, if the name is <code>_a79865eb4cd1a6ab990a45779b4e0b96.yourdomain.com</code>, only <code>_a79865eb4cd1a6ab990a45779b4e0b96</code> must be used.</p> </note>
    #   @return [Types::ResourceRecord]
    # @!attribute http_redirect
    #   <p>Contains information for HTTP-based domain validation of certificates requested through Amazon CloudFront and issued by ACM. This field exists only when the certificate type is <code>AMAZON_ISSUED</code> and the validation method is <code>HTTP</code>.</p>
    #   @return [Types::HttpRedirect]
    # @!attribute validation_method
    #   <p>Specifies the domain validation method.</p>
    #   @return [String]
    class DomainValidation < Struct.new(
      nil,
      :domain_name,
      :validation_emails,
      :validation_domain,
      :validation_status,
      :resource_record,
      :http_redirect,
      :validation_method,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the domain names that you want ACM to use to send you emails that enable you to validate domain ownership.</p>
    # @!attribute domain_name
    #   <p>A fully qualified domain name (FQDN) in the certificate request.</p>
    #   @return [String]
    # @!attribute validation_domain
    #   <p>The domain name that you want ACM to use to send you validation emails. This domain name is the suffix of the email addresses that you want ACM to use. This must be the same as the <code>DomainName</code> value or a superdomain of the <code>DomainName</code> value. For example, if you request a certificate for <code>testing.example.com</code>, you can specify <code>example.com</code> for this value. In that case, ACM sends domain validation emails to the following five addresses:</p> <ul> <li> <p>admin@example.com</p> </li> <li> <p>administrator@example.com</p> </li> <li> <p>hostmaster@example.com</p> </li> <li> <p>postmaster@example.com</p> </li> <li> <p>webmaster@example.com</p> </li> </ul>
    #   @return [String]
    class DomainValidationOption < Struct.new(
      nil,
      :domain_name,
      :validation_domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object containing expiration events options associated with an Amazon Web Services account.</p>
    # @!attribute days_before_expiry
    #   <p>Specifies the number of days prior to certificate expiration when ACM starts generating <code>EventBridge</code> events. ACM sends one event per day per certificate until the certificate expires. By default, accounts receive events starting 45 days before certificate expiration.</p>
    #   @return [Integer]
    class ExpiryEventsConfiguration < Struct.new(
      nil,
      :days_before_expiry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>An Amazon Resource Name (ARN) of the issued certificate. This must be of the form:</p> <p> <code>arn:aws:acm:region:account:certificate/12345678-1234-1234-1234-123456789012</code> </p>
    #   @return [String]
    # @!attribute passphrase
    #   <p>Passphrase to associate with the encrypted exported private key. </p> <note> <p>When creating your passphrase, you can use any ASCII character except #, $, or %.</p> </note> <p>If you want to later decrypt the private key, you must have the passphrase. You can use the following OpenSSL command to decrypt a private key. After entering the command, you are prompted for the passphrase.</p> <p> <code>openssl rsa -in encrypted_key.pem -out decrypted_key.pem</code> </p>
    #   @return [String]
    class ExportCertificateRequest < Struct.new(
      nil,
      :certificate_arn,
      :passphrase,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate
    #   <p>The base64 PEM-encoded certificate.</p>
    #   @return [String]
    # @!attribute certificate_chain
    #   <p>The base64 PEM-encoded certificate chain. This does not include the certificate that you are exporting.</p>
    #   @return [String]
    # @!attribute private_key
    #   <p>The encrypted private key associated with the public key in the certificate. The key is output in PKCS #8 format and is base64 PEM-encoded. </p>
    #   @return [String]
    class ExportCertificateResponse < Struct.new(
      nil,
      :certificate,
      :certificate_chain,
      :private_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Extended Key Usage X.509 v3 extension defines one or more purposes for which the public key can be used. This is in addition to or in place of the basic purposes specified by the Key Usage extension. </p>
    # @!attribute name
    #   <p>The name of an Extended Key Usage value.</p>
    #   @return [String]
    # @!attribute oid
    #   <p>An object identifier (OID) for the extension value. OIDs are strings of numbers separated by periods. The following OIDs are defined in RFC 3280 and RFC 5280. </p> <ul> <li> <p> <code>1.3.6.1.5.5.7.3.1 (TLS_WEB_SERVER_AUTHENTICATION)</code> </p> </li> <li> <p> <code>1.3.6.1.5.5.7.3.2 (TLS_WEB_CLIENT_AUTHENTICATION)</code> </p> </li> <li> <p> <code>1.3.6.1.5.5.7.3.3 (CODE_SIGNING)</code> </p> </li> <li> <p> <code>1.3.6.1.5.5.7.3.4 (EMAIL_PROTECTION)</code> </p> </li> <li> <p> <code>1.3.6.1.5.5.7.3.8 (TIME_STAMPING)</code> </p> </li> <li> <p> <code>1.3.6.1.5.5.7.3.9 (OCSP_SIGNING)</code> </p> </li> <li> <p> <code>1.3.6.1.5.5.7.3.5 (IPSEC_END_SYSTEM)</code> </p> </li> <li> <p> <code>1.3.6.1.5.5.7.3.6 (IPSEC_TUNNEL)</code> </p> </li> <li> <p> <code>1.3.6.1.5.5.7.3.7 (IPSEC_USER)</code> </p> </li> </ul>
    #   @return [String]
    class ExtendedKeyUsage < Struct.new(
      nil,
      :name,
      :oid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure can be used in the <a>ListCertificates</a> action to filter the output of the certificate list. </p>
    # @!attribute extended_key_usage
    #   <p>Specify one or more <a>ExtendedKeyUsage</a> extension values.</p>
    #   @return [Array<String>]
    # @!attribute key_usage
    #   <p>Specify one or more <a>KeyUsage</a> extension values.</p>
    #   @return [Array<String>]
    # @!attribute key_types
    #   <p>Specify one or more algorithms that can be used to generate key pairs.</p> <p>Default filtering returns only <code>RSA_1024</code> and <code>RSA_2048</code> certificates that have at least one domain. To return other certificate types, provide the desired type signatures in a comma-separated list. For example, <code>"keyTypes": ["RSA_2048","RSA_4096"]</code> returns both <code>RSA_2048</code> and <code>RSA_4096</code> certificates.</p>
    #   @return [Array<String>]
    # @!attribute export_option
    #   <p>Specify <code>ENABLED</code> or <code>DISABLED</code> to identify certificates that can be exported.</p>
    #   @return [String]
    # @!attribute managed_by
    #   <p>Identifies the Amazon Web Services service that manages the certificate issued by ACM.</p>
    #   @return [String]
    class Filters < Struct.new(
      nil,
      :extended_key_usage,
      :key_usage,
      :key_types,
      :export_option,
      :managed_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute expiry_events
    #   <p>Expiration events configuration options associated with the Amazon Web Services account.</p>
    #   @return [Types::ExpiryEventsConfiguration]
    class GetAccountConfigurationResponse < Struct.new(
      nil,
      :expiry_events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>String that contains a certificate ARN in the following format:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #   @return [String]
    class GetCertificateRequest < Struct.new(
      nil,
      :certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate
    #   <p>The ACM-issued certificate corresponding to the ARN specified as input.</p>
    #   @return [String]
    # @!attribute certificate_chain
    #   <p>Certificates forming the requested certificate's chain of trust. The chain consists of the certificate of the issuing CA and the intermediate certificates of any other subordinate CAs. </p>
    #   @return [String]
    class GetCertificateResponse < Struct.new(
      nil,
      :certificate,
      :certificate_chain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for HTTP-based domain validation of certificates requested through Amazon CloudFront and issued by ACM. This field exists only when the certificate type is <code>AMAZON_ISSUED</code> and the validation method is <code>HTTP</code>.</p>
    # @!attribute redirect_from
    #   <p>The URL including the domain to be validated. The certificate authority sends <code>GET</code> requests here during validation.</p>
    #   @return [String]
    # @!attribute redirect_to
    #   <p>The URL hosting the validation token. <code>RedirectFrom</code> must return this content or redirect here.</p>
    #   @return [String]
    class HttpRedirect < Struct.new(
      nil,
      :redirect_from,
      :redirect_to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an imported certificate to replace. To import a new certificate, omit this field. </p>
    #   @return [String]
    # @!attribute certificate
    #   <p>The certificate to import.</p>
    #   @return [String]
    # @!attribute private_key
    #   <p>The private key that matches the public key in the certificate.</p>
    #   @return [String]
    # @!attribute certificate_chain
    #   <p>The PEM encoded certificate chain.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more resource tags to associate with the imported certificate. </p> <p>Note: You cannot apply tags when reimporting a certificate.</p>
    #   @return [Array<Types::Tag>]
    class ImportCertificateRequest < Struct.new(
      nil,
      :certificate_arn,
      :certificate,
      :private_key,
      :certificate_chain,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the imported certificate.</p>
    #   @return [String]
    class ImportCertificateResponse < Struct.new(
      nil,
      :certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more of request parameters specified is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidArgsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested Amazon Resource Name (ARN) does not refer to an existing resource.</p>
    # @!attribute message
    #   @return [String]
    class InvalidArnException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more values in the <a>DomainValidationOption</a> structure is incorrect.</p>
    # @!attribute message
    #   @return [String]
    class InvalidDomainValidationOptionsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An input parameter was invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Processing has reached an invalid state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidStateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or both of the values that make up the key-value pair is not valid. For example, you cannot specify a tag value that begins with <code>aws:</code>.</p>
    # @!attribute message
    #   @return [String]
    class InvalidTagException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Key Usage X.509 v3 extension defines the purpose of the public key contained in the certificate.</p>
    # @!attribute name
    #   <p>A string value that contains a Key Usage extension name.</p>
    #   @return [String]
    class KeyUsage < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An ACM quota has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_statuses
    #   <p>Filter the certificate list by status value.</p>
    #   @return [Array<String>]
    # @!attribute includes
    #   <p>Filter the certificate list. For more information, see the <a>Filters</a> structure.</p>
    #   @return [Types::Filters]
    # @!attribute next_token
    #   <p>Use this parameter only when paginating results and only in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextToken</code> from the response you just received.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this parameter when paginating results to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the <code>NextToken</code> element is sent in the response. Use this <code>NextToken</code> value in a subsequent request to retrieve additional items.</p>
    #   @return [Integer]
    # @!attribute sort_by
    #   <p>Specifies the field to sort results by. If you specify <code>SortBy</code>, you must also specify <code>SortOrder</code>.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Specifies the order of sorted results. If you specify <code>SortOrder</code>, you must also specify <code>SortBy</code>.</p>
    #   @return [String]
    class ListCertificatesRequest < Struct.new(
      nil,
      :certificate_statuses,
      :includes,
      :next_token,
      :max_items,
      :sort_by,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When the list is truncated, this value is present and contains the value to use for the <code>NextToken</code> parameter in a subsequent pagination request.</p>
    #   @return [String]
    # @!attribute certificate_summary_list
    #   <p>A list of ACM certificates.</p>
    #   @return [Array<Types::CertificateSummary>]
    class ListCertificatesResponse < Struct.new(
      nil,
      :next_token,
      :certificate_summary_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>String that contains the ARN of the ACM certificate for which you want to list the tags. This must have the following form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #   @return [String]
    class ListTagsForCertificateRequest < Struct.new(
      nil,
      :certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The key-value pairs that define the applied tags.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForCertificateResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute expiry_events
    #   <p>Specifies expiration events associated with an account.</p>
    #   @return [Types::ExpiryEventsConfiguration]
    # @!attribute idempotency_token
    #   <p>Customer-chosen string used to distinguish between calls to <code>PutAccountConfiguration</code>. Idempotency tokens time out after one hour. If you call <code>PutAccountConfiguration</code> multiple times with the same unexpired idempotency token, ACM treats it as the same request and returns the original result. If you change the idempotency token for each call, ACM treats each call as a new request.</p>
    #   @return [String]
    class PutAccountConfigurationRequest < Struct.new(
      nil,
      :expiry_events,
      :idempotency_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>String that contains the ARN of the ACM Certificate with one or more tags that you want to remove. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pair that defines the tag to remove.</p>
    #   @return [Array<Types::Tag>]
    class RemoveTagsFromCertificateRequest < Struct.new(
      nil,
      :certificate_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>String that contains the ARN of the ACM certificate to be renewed. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #   @return [String]
    class RenewCertificateRequest < Struct.new(
      nil,
      :certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the status of ACM's <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for the certificate. This structure exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
    # @!attribute renewal_status
    #   <p>The status of ACM's <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> of the certificate.</p>
    #   @return [String]
    # @!attribute domain_validation_options
    #   <p>Contains information about the validation of each domain name in the certificate, as it pertains to ACM's <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a>. This is different from the initial validation that occurs as a result of the <a>RequestCertificate</a> request. This field exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
    #   @return [Array<Types::DomainValidation>]
    # @!attribute renewal_status_reason
    #   <p>The reason that a renewal request was unsuccessful.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time at which the renewal summary was last updated.</p>
    #   @return [Time]
    class RenewalSummary < Struct.new(
      nil,
      :renewal_status,
      :domain_validation_options,
      :renewal_status_reason,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>Fully qualified domain name (FQDN), such as www.example.com, that you want to secure with an ACM certificate. Use an asterisk (*) to create a wildcard certificate that protects several sites in the same domain. For example, *.example.com protects www.example.com, site.example.com, and images.example.com. </p> <p>In compliance with <a href="https://datatracker.ietf.org/doc/html/rfc5280">RFC 5280</a>, the length of the domain name (technically, the Common Name) that you provide cannot exceed 64 octets (characters), including periods. To add a longer domain name, specify it in the Subject Alternative Name field, which supports names up to 253 octets in length. </p>
    #   @return [String]
    # @!attribute validation_method
    #   <p>The method you want to use if you are requesting a public certificate to validate that you own or control domain. You can <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html">validate with DNS</a> or <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html">validate with email</a>. We recommend that you use DNS validation. </p>
    #   @return [String]
    # @!attribute subject_alternative_names
    #   <p>Additional FQDNs to be included in the Subject Alternative Name extension of the ACM certificate. For example, add the name www.example.net to a certificate for which the <code>DomainName</code> field is www.example.com if users can reach your site by using either name. The maximum number of domain names that you can add to an ACM certificate is 100. However, the initial quota is 10 domain names. If you need more than 10 names, you must request a quota increase. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html">Quotas</a>.</p> <p> The maximum length of a SAN DNS name is 253 octets. The name is made up of multiple labels separated by periods. No label can be longer than 63 octets. Consider the following examples: </p> <ul> <li> <p> <code>(63 octets).(63 octets).(63 octets).(61 octets)</code> is legal because the total length is 253 octets (63+1+63+1+63+1+61) and no label exceeds 63 octets.</p> </li> <li> <p> <code>(64 octets).(63 octets).(63 octets).(61 octets)</code> is not legal because the total length exceeds 253 octets (64+1+63+1+63+1+61) and the first label exceeds 63 octets.</p> </li> <li> <p> <code>(63 octets).(63 octets).(63 octets).(62 octets)</code> is not legal because the total length of the DNS name (63+1+63+1+63+1+62) exceeds 253 octets.</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute idempotency_token
    #   <p>Customer chosen string that can be used to distinguish between calls to <code>RequestCertificate</code>. Idempotency tokens time out after one hour. Therefore, if you call <code>RequestCertificate</code> multiple times with the same idempotency token within one hour, ACM recognizes that you are requesting only one certificate and will issue only one. If you change the idempotency token for each call, ACM recognizes that you are requesting multiple certificates.</p>
    #   @return [String]
    # @!attribute domain_validation_options
    #   <p>The domain name that you want ACM to use to send you emails so that you can validate domain ownership.</p>
    #   @return [Array<Types::DomainValidationOption>]
    # @!attribute options
    #   <p>You can use this parameter to specify whether to add the certificate to a certificate transparency log and export your certificate.</p> <p>Certificate transparency makes it possible to detect SSL/TLS certificates that have been mistakenly or maliciously issued. Certificates that have not been logged typically produce an error message in a browser. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency">Opting Out of Certificate Transparency Logging</a>.</p> <p>You can export public ACM certificates to use with Amazon Web Services services as well as outside the Amazon Web Services Cloud. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-exportable-certificates.html">Certificate Manager exportable public certificate</a>.</p>
    #   @return [Types::CertificateOptions]
    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the private certificate authority (CA) that will be used to issue the certificate. If you do not provide an ARN and you are trying to request a private certificate, ACM will attempt to issue a public certificate. For more information about private CAs, see the <a href="https://docs.aws.amazon.com/privateca/latest/userguide/PcaWelcome.html">Amazon Web Services Private Certificate Authority</a> user guide. The ARN must have the following form: </p> <p> <code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code> </p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more resource tags to associate with the certificate.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute key_algorithm
    #   <p>Specifies the algorithm of the public and private key pair that your certificate uses to encrypt data. RSA is the default key algorithm for ACM certificates. Elliptic Curve Digital Signature Algorithm (ECDSA) keys are smaller, offering security comparable to RSA keys but with greater computing efficiency. However, ECDSA is not supported by all network clients. Some Amazon Web Services services may require RSA keys, or only support ECDSA keys of a particular size, while others allow the use of either RSA and ECDSA keys to ensure that compatibility is not broken. Check the requirements for the Amazon Web Services service where you plan to deploy your certificate. For more information about selecting an algorithm, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-certificate.html#algorithms">Key algorithms</a>.</p> <note> <p>Algorithms supported for an ACM certificate request include: </p> <ul> <li> <p> <code>RSA_2048</code> </p> </li> <li> <p> <code>EC_prime256v1</code> </p> </li> <li> <p> <code>EC_secp384r1</code> </p> </li> </ul> <p>Other listed algorithms are for imported certificates only. </p> </note> <note> <p>When you request a private PKI certificate signed by a CA from Amazon Web Services Private CA, the specified signing algorithm family (RSA or ECDSA) must match the algorithm family of the CA's secret key.</p> </note> <p>Default: RSA_2048</p>
    #   @return [String]
    # @!attribute managed_by
    #   <p>Identifies the Amazon Web Services service that manages the certificate issued by ACM.</p>
    #   @return [String]
    class RequestCertificateRequest < Struct.new(
      nil,
      :domain_name,
      :validation_method,
      :subject_alternative_names,
      :idempotency_token,
      :domain_validation_options,
      :options,
      :certificate_authority_arn,
      :tags,
      :key_algorithm,
      :managed_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>String that contains the ARN of the issued certificate. This must be of the form:</p> <p> <code>arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p>
    #   @return [String]
    class RequestCertificateResponse < Struct.new(
      nil,
      :certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The certificate request is in process and the certificate in your account has not yet been issued.</p>
    # @!attribute message
    #   @return [String]
    class RequestInProgressException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>String that contains the ARN of the requested certificate. The certificate ARN is generated and returned by the <a>RequestCertificate</a> action as soon as the request is made. By default, using this parameter causes email to be sent to all top-level domains you specified in the certificate request. The ARN must be of the form: </p> <p> <code>arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p>
    #   @return [String]
    # @!attribute domain
    #   <p>The fully qualified domain name (FQDN) of the certificate that needs to be validated.</p>
    #   @return [String]
    # @!attribute validation_domain
    #   <p>The base validation domain that will act as the suffix of the email addresses that are used to send the emails. This must be the same as the <code>Domain</code> value or a superdomain of the <code>Domain</code> value. For example, if you requested a certificate for <code>site.subdomain.example.com</code> and specify a <b>ValidationDomain</b> of <code>subdomain.example.com</code>, ACM sends email to the domain registrant, technical contact, and administrative contact in WHOIS and the following five addresses:</p> <ul> <li> <p>admin@subdomain.example.com</p> </li> <li> <p>administrator@subdomain.example.com</p> </li> <li> <p>hostmaster@subdomain.example.com</p> </li> <li> <p>postmaster@subdomain.example.com</p> </li> <li> <p>webmaster@subdomain.example.com</p> </li> </ul>
    #   @return [String]
    class ResendValidationEmailRequest < Struct.new(
      nil,
      :certificate_arn,
      :domain,
      :validation_domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The certificate is in use by another Amazon Web Services service in the caller's account. Remove the association and try again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified certificate cannot be found in the caller's account or the caller's account cannot be found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a DNS record value that you can use to validate ownership or control of a domain. This is used by the <a>DescribeCertificate</a> action. </p>
    # @!attribute name
    #   <p>The name of the DNS record to create in your domain. This is supplied by ACM.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of DNS record. Currently this can be <code>CNAME</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the CNAME record to add to your DNS database. This is supplied by ACM.</p>
    #   @return [String]
    class ResourceRecord < Struct.new(
      nil,
      :name,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the public or private certificate that will be revoked. The ARN must have the following form: </p> <p> <code>arn:aws:acm:region:account:certificate/12345678-1234-1234-1234-123456789012</code> </p>
    #   @return [String]
    # @!attribute revocation_reason
    #   <p>Specifies why you revoked the certificate.</p>
    #   @return [String]
    class RevokeCertificateRequest < Struct.new(
      nil,
      :certificate_arn,
      :revocation_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the public or private certificate that was revoked.</p>
    #   @return [String]
    class RevokeCertificateResponse < Struct.new(
      nil,
      :certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair that identifies or specifies metadata about an ACM resource.</p>
    # @!attribute key
    #   <p>The key of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A specified tag did not comply with an existing tag policy and was rejected.</p>
    # @!attribute message
    #   @return [String]
    class TagPolicyException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because it exceeded a quota.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request contains too many tags. Try the request again with fewer tags.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>ARN of the requested certificate to update. This must be of the form:</p> <p> <code>arn:aws:acm:us-east-1:<i>account</i>:certificate/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
    #   @return [String]
    # @!attribute options
    #   <p>Use to update the options for your certificate. Currently, you can specify whether to add your certificate to a transparency log or export your certificate. Certificate transparency makes it possible to detect SSL/TLS certificates that have been mistakenly or maliciously issued. Certificates that have not been logged typically produce an error message in a browser. </p>
    #   @return [Types::CertificateOptions]
    class UpdateCertificateOptionsRequest < Struct.new(
      nil,
      :certificate_arn,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The supplied input failed to satisfy constraints of an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
