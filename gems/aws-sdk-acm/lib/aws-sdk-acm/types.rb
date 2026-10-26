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

    # <p>Contains ACM-specific metadata about a certificate.</p>
    # @!attribute created_at
    #   <p>The time at which the certificate was requested.</p>
    #   @return [Time]
    # @!attribute exported
    #   <p>Indicates whether the certificate has been exported.</p>
    #   @return [Boolean]
    # @!attribute imported_at
    #   <p>The date and time when the certificate was imported. This value exists only when the certificate type is <code>IMPORTED</code>. </p>
    #   @return [Time]
    # @!attribute in_use
    #   <p>Indicates whether the certificate is currently in use by an Amazon Web Services service.</p>
    #   @return [Boolean]
    # @!attribute issued_at
    #   <p>The time at which the certificate was issued. This value exists only when the certificate type is <code>AMAZON_ISSUED</code>. </p>
    #   @return [Time]
    # @!attribute renewal_eligibility
    #   <p>Specifies whether the certificate is eligible for renewal. At this time, only exported private certificates can be renewed with the <a>RenewCertificate</a> command.</p>
    #   @return [String]
    # @!attribute revoked_at
    #   <p>The time at which the certificate was revoked. This value exists only when the certificate status is <code>REVOKED</code>. </p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the certificate.</p> <p>A certificate enters status PENDING_VALIDATION upon being requested, unless it fails for any of the reasons given in the troubleshooting topic <a href="https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting-failed.html">Certificate request fails</a>. ACM makes repeated attempts to validate a certificate for 72 hours and then times out. If a certificate shows status FAILED or VALIDATION_TIMED_OUT, delete the request, correct the issue with <a href="https://docs.aws.amazon.com/acm/latest/userguide/dns-validation.html">DNS validation</a> or <a href="https://docs.aws.amazon.com/acm/latest/userguide/email-validation.html">Email validation</a>, and try again. If validation succeeds, the certificate enters status ISSUED. </p>
    #   @return [String]
    # @!attribute renewal_status
    #   <p>The renewal status of the certificate.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The source of the certificate. For certificates provided by ACM, this value is <code>AMAZON_ISSUED</code>. For certificates that you imported with <a>ImportCertificate</a>, this value is <code>IMPORTED</code>. ACM does not provide <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for imported certificates. For more information about the differences between certificates that you import and those that ACM provides, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing Certificates</a> in the <i>Certificate Manager User Guide</i>. </p>
    #   @return [String]
    # @!attribute export_option
    #   <p>Indicates whether the certificate can be exported.</p>
    #   @return [String]
    # @!attribute managed_by
    #   <p>Identifies the Amazon Web Services service that manages the certificate issued by ACM.</p>
    #   @return [String]
    # @!attribute validation_method
    #   <p>Specifies the domain validation method.</p>
    #   @return [String]
    # @!attribute certificate_key_pair_origin
    #   <p>The origin of the certificate's key pair.</p>
    #   @return [String]
    # @!attribute acme_endpoint_arn
    #   <p>The ARN of the ACME endpoint used to issue the certificate.</p>
    #   @return [String]
    # @!attribute acme_account_id
    #   <p>The ACME account identifier associated with the certificate.</p>
    #   @return [String]
    class AcmCertificateMetadata < Struct.new(
      nil,
      :created_at,
      :exported,
      :imported_at,
      :in_use,
      :issued_at,
      :renewal_eligibility,
      :revoked_at,
      :status,
      :renewal_status,
      :type,
      :export_option,
      :managed_by,
      :validation_method,
      :certificate_key_pair_origin,
      :acme_endpoint_arn,
      :acme_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filters certificates by ACM metadata.</p>
    # @!attribute status
    #   <p>Filter by certificate status.</p>
    #   @return [String]
    # @!attribute renewal_status
    #   <p>Filter by certificate renewal status.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Filter by certificate type.</p>
    #   @return [String]
    # @!attribute in_use
    #   <p>Filter by whether the certificate is in use.</p>
    #   @return [Boolean]
    # @!attribute exported
    #   <p>Filter by whether the certificate has been exported.</p>
    #   @return [Boolean]
    # @!attribute export_option
    #   <p>Filter by certificate export option.</p>
    #   @return [String]
    # @!attribute managed_by
    #   <p>Filter by the entity that manages the certificate.</p>
    #   @return [String]
    # @!attribute validation_method
    #   <p>Filter by validation method.</p>
    #   @return [String]
    # @!attribute certificate_key_pair_origin
    #   <p>Filter by certificate key pair origin.</p>
    #   @return [String]
    # @!attribute acme_endpoint_arn
    #   <p>Filter by ACME endpoint ARN.</p>
    #   @return [String]
    # @!attribute acme_account_id
    #   <p>Filter by ACME account identifier.</p>
    #   @return [String]
    class AcmCertificateMetadataFilter < Struct.new(
      :status,
      :renewal_status,
      :type,
      :in_use,
      :exported,
      :export_option,
      :managed_by,
      :validation_method,
      :certificate_key_pair_origin,
      :acme_endpoint_arn,
      :acme_account_id,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Status < AcmCertificateMetadataFilter; end
      class RenewalStatus < AcmCertificateMetadataFilter; end
      class Type < AcmCertificateMetadataFilter; end
      class InUse < AcmCertificateMetadataFilter; end
      class Exported < AcmCertificateMetadataFilter; end
      class ExportOption < AcmCertificateMetadataFilter; end
      class ManagedBy < AcmCertificateMetadataFilter; end
      class ValidationMethod < AcmCertificateMetadataFilter; end
      class CertificateKeyPairOrigin < AcmCertificateMetadataFilter; end
      class AcmeEndpointArn < AcmCertificateMetadataFilter; end
      class AcmeAccountId < AcmCertificateMetadataFilter; end
      class Unknown < AcmCertificateMetadataFilter; end
    end

    # <p>Contains detailed information about an ACME account.</p>
    # @!attribute account_url
    #   <p>The URL of the ACME account.</p>
    #   @return [String]
    # @!attribute public_key_thumbprint
    #   <p>The thumbprint of the public key associated with the ACME account.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the ACME account.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the ACME account was created.</p>
    #   @return [Time]
    # @!attribute acme_external_account_binding_arn
    #   <p>The Amazon Resource Name (ARN) of the external account binding associated with this ACME account.</p>
    #   @return [String]
    # @!attribute contacts
    #   <p>The contact information for the ACME account.</p>
    #   @return [Array<String>]
    class AcmeAccount < Struct.new(
      nil,
      :account_url,
      :public_key_thumbprint,
      :status,
      :created_at,
      :acme_external_account_binding_arn,
      :contacts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an ACME account.</p>
    # @!attribute account_url
    #   <p>The URL of the ACME account.</p>
    #   @return [String]
    # @!attribute public_key_thumbprint
    #   <p>The thumbprint of the public key associated with the ACME account.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the ACME account.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the ACME account was created.</p>
    #   @return [Time]
    # @!attribute acme_external_account_binding_arn
    #   <p>The Amazon Resource Name (ARN) of the external account binding associated with this ACME account.</p>
    #   @return [String]
    # @!attribute contacts
    #   <p>The contact information for the ACME account.</p>
    #   @return [Array<String>]
    class AcmeAccountSummary < Struct.new(
      nil,
      :account_url,
      :public_key_thumbprint,
      :status,
      :created_at,
      :acme_external_account_binding_arn,
      :contacts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about an ACME domain validation.</p>
    # @!attribute acme_domain_validation_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME domain validation.</p>
    #   @return [String]
    # @!attribute acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name being validated.</p>
    #   @return [String]
    # @!attribute prevalidation_type
    #   <p>The type of prevalidation used.</p>
    #   @return [String]
    # @!attribute prevalidation_details
    #   <p>Details about the prevalidation configuration.</p>
    #   @return [Types::PrevalidationDetails]
    # @!attribute status
    #   <p>The status of the domain validation.</p>
    #   @return [String]
    # @!attribute failure_details
    #   <p>Details about the failure, if the validation failed.</p>
    #   @return [Types::FailureDetails]
    # @!attribute created_at
    #   <p>The time at which the domain validation was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the domain validation was last updated.</p>
    #   @return [Time]
    class AcmeDomainValidation < Struct.new(
      nil,
      :acme_domain_validation_arn,
      :acme_endpoint_arn,
      :domain_name,
      :prevalidation_type,
      :prevalidation_details,
      :status,
      :failure_details,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an ACME domain validation.</p>
    # @!attribute acme_domain_validation_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME domain validation.</p>
    #   @return [String]
    # @!attribute acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name being validated.</p>
    #   @return [String]
    # @!attribute prevalidation_type
    #   <p>The type of prevalidation used.</p>
    #   @return [String]
    # @!attribute prevalidation_details
    #   <p>Details about the prevalidation configuration.</p>
    #   @return [Types::PrevalidationDetails]
    # @!attribute status
    #   <p>The status of the domain validation.</p>
    #   @return [String]
    # @!attribute failure_details
    #   <p>Details about the failure, if the validation failed.</p>
    #   @return [Types::FailureDetails]
    # @!attribute created_at
    #   <p>The time at which the domain validation was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the domain validation was last updated.</p>
    #   @return [Time]
    class AcmeDomainValidationSummary < Struct.new(
      nil,
      :acme_domain_validation_arn,
      :acme_endpoint_arn,
      :domain_name,
      :prevalidation_type,
      :prevalidation_details,
      :status,
      :failure_details,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about an ACME endpoint.</p>
    # @!attribute acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_url
    #   <p>The URL of the ACME endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the ACME endpoint.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason the ACME endpoint failed, if applicable.</p>
    #   @return [String]
    # @!attribute authorization_behavior
    #   <p>The authorization behavior of the ACME endpoint.</p>
    #   @return [String]
    # @!attribute contact
    #   <p>Whether ACME clients must provide contact information during account registration.</p>
    #   @return [String]
    # @!attribute certificate_authority
    #   <p>The certificate authority configuration for the ACME endpoint.</p>
    #   @return [Types::CertificateAuthority]
    # @!attribute certificate_tags
    #   <p>Tags applied to certificates issued through this ACME endpoint.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_at
    #   <p>The time at which the ACME endpoint was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the ACME endpoint was last updated.</p>
    #   @return [Time]
    class AcmeEndpoint < Struct.new(
      nil,
      :acme_endpoint_arn,
      :endpoint_url,
      :status,
      :failure_reason,
      :authorization_behavior,
      :contact,
      :certificate_authority,
      :certificate_tags,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an ACME endpoint.</p>
    # @!attribute acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_url
    #   <p>The URL of the ACME endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the ACME endpoint.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason the ACME endpoint failed, if applicable.</p>
    #   @return [String]
    # @!attribute authorization_behavior
    #   <p>The authorization behavior of the ACME endpoint.</p>
    #   @return [String]
    # @!attribute contact
    #   <p>Whether ACME clients must provide contact information during account registration.</p>
    #   @return [String]
    # @!attribute certificate_authority
    #   <p>The certificate authority configuration for the ACME endpoint.</p>
    #   @return [Types::CertificateAuthority]
    # @!attribute certificate_tags
    #   <p>Tags applied to certificates issued through this ACME endpoint.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_at
    #   <p>The time at which the ACME endpoint was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the ACME endpoint was last updated.</p>
    #   @return [Time]
    class AcmeEndpointSummary < Struct.new(
      nil,
      :acme_endpoint_arn,
      :endpoint_url,
      :status,
      :failure_reason,
      :authorization_behavior,
      :contact,
      :certificate_authority,
      :certificate_tags,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about an ACME external account binding.</p>
    # @!attribute acme_external_account_binding_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME external account binding.</p>
    #   @return [String]
    # @!attribute acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with the external account binding.</p>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The time at which the external account binding expires.</p>
    #   @return [Time]
    # @!attribute revoked_at
    #   <p>The time at which the external account binding was revoked.</p>
    #   @return [Time]
    # @!attribute last_used_at
    #   <p>The time at which the external account binding was last used.</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>The time at which the external account binding was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the external account binding was last updated.</p>
    #   @return [Time]
    class AcmeExternalAccountBinding < Struct.new(
      nil,
      :acme_external_account_binding_arn,
      :acme_endpoint_arn,
      :role_arn,
      :expires_at,
      :revoked_at,
      :last_used_at,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an ACME external account binding.</p>
    # @!attribute acme_external_account_binding_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME external account binding.</p>
    #   @return [String]
    # @!attribute acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with the external account binding.</p>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The time at which the external account binding expires.</p>
    #   @return [Time]
    # @!attribute revoked_at
    #   <p>The time at which the external account binding was revoked.</p>
    #   @return [Time]
    # @!attribute last_used_at
    #   <p>The time at which the external account binding was last used.</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>The time at which the external account binding was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the external account binding was last updated.</p>
    #   @return [Time]
    class AcmeExternalAccountBindingSummary < Struct.new(
      nil,
      :acme_external_account_binding_arn,
      :acme_endpoint_arn,
      :role_arn,
      :expires_at,
      :revoked_at,
      :last_used_at,
      :created_at,
      :updated_at,
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

    # <p>Defines the certificate authority to use for an ACME endpoint.</p>
    # @!attribute public_certificate_authority
    #   <p>Configuration for using a public certificate authority.</p>
    #   @return [Types::PublicCertificateAuthority]
    class CertificateAuthority < Struct.new(
      :public_certificate_authority,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PublicCertificateAuthority < CertificateAuthority; end
      class Unknown < CertificateAuthority; end
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
    #   <p>Contains the certificate options. Certificate transparency logging opt-out is no longer available. All public certificates are recorded in a certificate transparency log.</p>
    #   @return [Types::CertificateOptions]
    # @!attribute update_summary
    #   <p>Contains information about the most recent update to the certificate. This field exists only when the certificate type is <code>AMAZON_ISSUED</code> and a certificate update has been requested.</p>
    #   @return [Types::UpdateSummary]
    # @!attribute certificate_key_pair_origin
    #   <p>The origin of the certificate's key pair.</p>
    #   @return [String]
    # @!attribute acme_endpoint_arn
    #   <p>The ARN of the ACME endpoint used to issue the certificate.</p>
    #   @return [String]
    # @!attribute acme_account_id
    #   <p>The ACME account identifier associated with the certificate.</p>
    #   @return [String]
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
      :update_summary,
      :certificate_key_pair_origin,
      :acme_endpoint_arn,
      :acme_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a filter for searching certificates by ARN, X.509 attributes, or ACM metadata.</p>
    # @!attribute certificate_arn
    #   <p>Filter by certificate ARN.</p>
    #   @return [String]
    # @!attribute x509_attribute_filter
    #   <p>Filter by X.509 certificate attributes.</p>
    #   @return [Types::X509AttributeFilter]
    # @!attribute acm_certificate_metadata_filter
    #   <p>Filter by ACM certificate metadata.</p>
    #   @return [Types::AcmCertificateMetadataFilter]
    class CertificateFilter < Struct.new(
      :certificate_arn,
      :x509_attribute_filter,
      :acm_certificate_metadata_filter,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CertificateArn < CertificateFilter; end
      class X509AttributeFilter < CertificateFilter; end
      class AcmCertificateMetadataFilter < CertificateFilter; end
      class Unknown < CertificateFilter; end
    end

    # <p>A filter statement used to search for certificates. Can contain AND, OR, NOT logical operators or a single filter.</p>
    # @!attribute and
    #   <p>A list of filter statements that must all be true.</p>
    #   @return [Array<Types::CertificateFilterStatement>]
    # @!attribute or
    #   <p>A list of filter statements where at least one must be true.</p>
    #   @return [Array<Types::CertificateFilterStatement>]
    # @!attribute not
    #   <p>A filter statement that must not be true.</p>
    #   @return [Types::CertificateFilterStatement]
    # @!attribute filter
    #   <p>A single certificate filter.</p>
    #   @return [Types::CertificateFilter]
    class CertificateFilterStatement < Struct.new(
      :and,
      :or,
      :not,
      :filter,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class And < CertificateFilterStatement; end
      class Or < CertificateFilterStatement; end
      class Not < CertificateFilterStatement; end
      class Filter < CertificateFilterStatement; end
      class Unknown < CertificateFilterStatement; end
    end

    # <p>Contains metadata about a certificate. Currently supports ACM certificate metadata.</p>
    # @!attribute acm_certificate_metadata
    #   <p>Metadata for an ACM certificate.</p>
    #   @return [Types::AcmCertificateMetadata]
    class CertificateMetadata < Struct.new(
      :acm_certificate_metadata,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AcmCertificateMetadata < CertificateMetadata; end
      class Unknown < CertificateMetadata; end
    end

    # <p>Structure that contains options for your certificate. You can use this structure to change the domain validation method or specify whether to export your certificate.</p> <p>All public certificates are recorded in a certificate transparency log. For general information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency">Certificate Transparency Logging</a>.</p> <p>You can export public ACM certificates to use with Amazon Web Services services as well as outside Amazon Web Services Cloud. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-exportable-certificates.html">Certificate Manager exportable public certificate</a>.</p>
    # @!attribute certificate_transparency_logging_preference
    #   <p>This parameter has been deprecated. Certificate transparency logging opt-out is no longer available. All public certificates are recorded in a certificate transparency log.</p>
    #   @deprecated
    #     Certificate transparency logging opt-out is no longer available.
    #     Since: 12th June 2026
    #   @return [String]
    # @!attribute export
    #   <p>You can opt in to allow the export of your certificates by specifying <code>ENABLED</code>. You cannot update the value of <code>Export</code> after the the certificate is created.</p>
    #   @return [String]
    # @!attribute validation_method
    #   <p>The domain validation method for the certificate. To migrate from email to DNS validation, specify <code>DNS</code>.</p>
    #   @return [String]
    class CertificateOptions < Struct.new(
      nil,
      :certificate_transparency_logging_preference,
      :export,
      :validation_method,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a certificate returned by the <a>SearchCertificates</a> action. This structure includes the certificate ARN, X.509 attributes, and ACM metadata.</p>
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    #   @return [String]
    # @!attribute x509_attributes
    #   <p>X.509 certificate attributes such as subject, issuer, and validity period.</p>
    #   @return [Types::X509Attributes]
    # @!attribute certificate_metadata
    #   <p>ACM-specific metadata about the certificate.</p>
    #   @return [Types::CertificateMetadata]
    class CertificateSearchResult < Struct.new(
      nil,
      :certificate_arn,
      :x509_attributes,
      :certificate_metadata,
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
    #   <p>One or more domain names (subject alternative names) included in the certificate. This list contains the domain names that are bound to the public key that is contained in the certificate. The subject alternative names include the canonical domain name (CN) of the certificate and additional domain names that can be used to connect to the website. </p> <p>When called by <a href="https://docs.aws.amazon.com/acm/latest/APIReference/API_ListCertificates.html">ListCertificates</a>, this parameter will only return the first 100 subject alternative names included in the certificate. To display the full list of subject alternative names, use <a href="https://docs.aws.amazon.com/acm/latest/APIReference/API_DescribeCertificate.html">DescribeCertificate</a>.</p>
    #   @return [Array<String>]
    # @!attribute has_additional_subject_alternative_names
    #   <p>When called by <a href="https://docs.aws.amazon.com/acm/latest/APIReference/API_ListCertificates.html">ListCertificates</a>, indicates whether the full list of subject alternative names has been included in the response. If false, the response includes all of the subject alternative names included in the certificate. If true, the response only includes the first 100 subject alternative names included in the certificate. To display the full list of subject alternative names, use <a href="https://docs.aws.amazon.com/acm/latest/APIReference/API_DescribeCertificate.html">DescribeCertificate</a>.</p>
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
    #   <p>Indicates whether the certificate has been exported.</p>
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
    # @!attribute certificate_key_pair_origin
    #   <p>The origin of the certificate's key pair.</p>
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
      :certificate_key_pair_origin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filters certificates by common name.</p>
    # @!attribute value
    #   <p>The value to match against.</p>
    #   @return [String]
    # @!attribute comparison_operator
    #   <p>The comparison operator to use.</p>
    #   @return [String]
    class CommonNameFilter < Struct.new(
      nil,
      :value,
      :comparison_operator,
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

    # @!attribute idempotency_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    # @!attribute acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name to validate.</p>
    #   @return [String]
    # @!attribute prevalidation_options
    #   <p>The prevalidation options for the domain.</p>
    #   @return [Types::PrevalidationOptions]
    # @!attribute tags
    #   <p>One or more tags to associate with the domain validation.</p>
    #   @return [Array<Types::Tag>]
    class CreateAcmeDomainValidationRequest < Struct.new(
      nil,
      :idempotency_token,
      :acme_endpoint_arn,
      :domain_name,
      :prevalidation_options,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acme_domain_validation_arn
    #   <p>The Amazon Resource Name (ARN) of the created domain validation.</p>
    #   @return [String]
    class CreateAcmeDomainValidationResponse < Struct.new(
      nil,
      :acme_domain_validation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute idempotency_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    # @!attribute authorization_behavior
    #   <p>The authorization behavior for the ACME endpoint.</p>
    #   @return [String]
    # @!attribute contact
    #   <p>Specifies whether ACME clients must provide contact information during account registration.</p>
    #   @return [String]
    # @!attribute certificate_authority
    #   <p>The type of certificate authority to use for issuing certificates through this ACME endpoint.</p>
    #   @return [Types::CertificateAuthority]
    # @!attribute tags
    #   <p>One or more tags to associate with the ACME endpoint.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute certificate_tags
    #   <p>Tags to apply to certificates issued through this ACME endpoint.</p>
    #   @return [Array<Types::Tag>]
    class CreateAcmeEndpointRequest < Struct.new(
      nil,
      :idempotency_token,
      :authorization_behavior,
      :contact,
      :certificate_authority,
      :tags,
      :certificate_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the created ACME endpoint.</p>
    #   @return [String]
    class CreateAcmeEndpointResponse < Struct.new(
      nil,
      :acme_endpoint_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute idempotency_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    # @!attribute acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to associate with the external account binding.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>The expiration configuration for the external account binding.</p>
    #   @return [Types::Expiration]
    # @!attribute tags
    #   <p>One or more tags to associate with the external account binding.</p>
    #   @return [Array<Types::Tag>]
    class CreateAcmeExternalAccountBindingRequest < Struct.new(
      nil,
      :idempotency_token,
      :acme_endpoint_arn,
      :role_arn,
      :expiration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute external_account_binding
    #   <p>The created external account binding.</p>
    #   @return [Types::AcmeExternalAccountBinding]
    class CreateAcmeExternalAccountBindingResponse < Struct.new(
      nil,
      :external_account_binding,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the X.500 relative distinguished name (RDN).</p>
    # @!attribute object_identifier
    #   <p>Specifies the object identifier (OID) of the attribute type of the relative distinguished name (RDN).</p>
    #   @return [String]
    # @!attribute value
    #   <p>Specifies the attribute value of relative distinguished name (RDN).</p>
    #   @return [String]
    class CustomAttribute < Struct.new(
      nil,
      :object_identifier,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acme_domain_validation_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME domain validation to delete.</p>
    #   @return [String]
    class DeleteAcmeDomainValidationRequest < Struct.new(
      nil,
      :acme_domain_validation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint to delete.</p>
    #   @return [String]
    class DeleteAcmeEndpointRequest < Struct.new(
      nil,
      :acme_endpoint_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acme_external_account_binding_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME external account binding to delete.</p>
    #   @return [String]
    class DeleteAcmeExternalAccountBindingRequest < Struct.new(
      nil,
      :acme_external_account_binding_arn,
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

    # @!attribute acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    #   @return [String]
    # @!attribute account_url
    #   <p>The URL of the ACME account.</p>
    #   @return [String]
    class DescribeAcmeAccountRequest < Struct.new(
      nil,
      :acme_endpoint_arn,
      :account_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acme_account
    #   <p>The ACME account details.</p>
    #   @return [Types::AcmeAccount]
    class DescribeAcmeAccountResponse < Struct.new(
      nil,
      :acme_account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acme_domain_validation_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME domain validation.</p>
    #   @return [String]
    class DescribeAcmeDomainValidationRequest < Struct.new(
      nil,
      :acme_domain_validation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acme_domain_validation
    #   <p>The ACME domain validation details.</p>
    #   @return [Types::AcmeDomainValidation]
    class DescribeAcmeDomainValidationResponse < Struct.new(
      nil,
      :acme_domain_validation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    #   @return [String]
    class DescribeAcmeEndpointRequest < Struct.new(
      nil,
      :acme_endpoint_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acme_endpoint
    #   <p>The ACME endpoint details.</p>
    #   @return [Types::AcmeEndpoint]
    class DescribeAcmeEndpointResponse < Struct.new(
      nil,
      :acme_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acme_external_account_binding_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME external account binding.</p>
    #   @return [String]
    class DescribeAcmeExternalAccountBindingRequest < Struct.new(
      nil,
      :acme_external_account_binding_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute external_account_binding
    #   <p>The external account binding details.</p>
    #   @return [Types::AcmeExternalAccountBinding]
    class DescribeAcmeExternalAccountBindingResponse < Struct.new(
      nil,
      :external_account_binding,
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

    # <p>Contains X.500 distinguished name information.</p>
    # @!attribute common_name
    #   <p>The common name (CN) attribute.</p>
    #   @return [String]
    # @!attribute domain_components
    #   <p>The domain component attributes.</p>
    #   @return [Array<String>]
    # @!attribute country
    #   <p>The country (C) attribute.</p>
    #   @return [String]
    # @!attribute custom_attributes
    #   <p>A list of custom attributes in the distinguished name. Each custom attribute contains an object identifier (OID) and its corresponding value.</p>
    #   @return [Array<Types::CustomAttribute>]
    # @!attribute distinguished_name_qualifier
    #   <p>The distinguished name qualifier attribute.</p>
    #   @return [String]
    # @!attribute generation_qualifier
    #   <p>The generation qualifier attribute.</p>
    #   @return [String]
    # @!attribute given_name
    #   <p>The given name attribute.</p>
    #   @return [String]
    # @!attribute initials
    #   <p>The initials attribute.</p>
    #   @return [String]
    # @!attribute locality
    #   <p>The locality (L) attribute.</p>
    #   @return [String]
    # @!attribute organization
    #   <p>The organization (O) attribute.</p>
    #   @return [String]
    # @!attribute organizational_unit
    #   <p>The organizational unit (OU) attribute.</p>
    #   @return [String]
    # @!attribute pseudonym
    #   <p>The pseudonym attribute.</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>The serial number attribute.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state or province (ST) attribute.</p>
    #   @return [String]
    # @!attribute surname
    #   <p>The surname attribute.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title attribute.</p>
    #   @return [String]
    class DistinguishedName < Struct.new(
      nil,
      :common_name,
      :domain_components,
      :country,
      :custom_attributes,
      :distinguished_name_qualifier,
      :generation_qualifier,
      :given_name,
      :initials,
      :locality,
      :organization,
      :organizational_unit,
      :pseudonym,
      :serial_number,
      :state,
      :surname,
      :title,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filters certificates by DNS name.</p>
    # @!attribute value
    #   <p>The DNS name value to match against.</p>
    #   @return [String]
    # @!attribute comparison_operator
    #   <p>The comparison operator to use.</p>
    #   @return [String]
    class DnsNameFilter < Struct.new(
      nil,
      :value,
      :comparison_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DNS prevalidation details including the resource record for validation.</p>
    # @!attribute domain_scope
    #   <p>The scope of domains covered by this prevalidation.</p>
    #   @return [Types::DomainScope]
    # @!attribute hosted_zone_id
    #   <p>The Route 53 hosted zone ID for DNS validation.</p>
    #   @return [String]
    # @!attribute resource_record
    #   <p>The DNS resource record to create for domain validation.</p>
    #   @return [Types::ResourceRecord]
    class DnsPrevalidationDetails < Struct.new(
      nil,
      :domain_scope,
      :hosted_zone_id,
      :resource_record,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DNS prevalidation options for domain validation.</p>
    # @!attribute domain_scope
    #   <p>The scope of domains covered by this prevalidation.</p>
    #   @return [Types::DomainScope]
    # @!attribute hosted_zone_id
    #   <p>The Route 53 hosted zone ID for DNS validation.</p>
    #   @return [String]
    class DnsPrevalidationOptions < Struct.new(
      nil,
      :domain_scope,
      :hosted_zone_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the CNAME record that you must add to your DNS configuration to validate domain ownership using DNS validation.</p>
    # @!attribute resource_record
    #   <p>The CNAME record that ACM creates for DNS validation. Add this record to your DNS configuration to prove that you own or control the domain.</p>
    #   @return [Types::ResourceRecord]
    class DnsValidationChallenge < Struct.new(
      nil,
      :resource_record,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the scope of domain validation.</p>
    # @!attribute exact_domain
    #   <p>Whether validation applies to the exact domain.</p>
    #   @return [String]
    # @!attribute subdomains
    #   <p>Whether validation applies to subdomains.</p>
    #   @return [String]
    # @!attribute wildcards
    #   <p>Whether validation applies to wildcard domains.</p>
    #   @return [String]
    class DomainScope < Struct.new(
      nil,
      :exact_domain,
      :subdomains,
      :wildcards,
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

    # <p>Contains information about a domain validation method migration, including the previous validation method and the target validation method.</p>
    # @!attribute from
    #   <p>The validation method that the certificate was using before the update.</p>
    #   @return [String]
    # @!attribute to
    #   <p>The target validation method for the update.</p>
    #   @return [String]
    class DomainValidationMethodUpdateSummary < Struct.new(
      nil,
      :from,
      :to,
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

    # <p>Contains per-domain validation information for a certificate. This structure is returned as a member of the <a>ListCertificateDomainValidations</a> response.</p>
    # @!attribute domain_name
    #   <p>The fully qualified domain name (FQDN) in the certificate for which this validation summary applies.</p>
    #   @return [String]
    # @!attribute active_validation_configuration
    #   <p>The validation configuration currently in effect for this domain. This reflects the validation method that ACM is currently using to validate domain ownership (for example, email or DNS).</p>
    #   @return [Types::ValidationConfiguration]
    # @!attribute requested_validation_configuration
    #   <p>The validation configuration for a pending validation method migration. This field is present only when a migration is in progress (for example, from email to DNS validation). It contains the target validation method, the current validation status, and the validation challenge details (such as the CNAME record to add to your DNS configuration).</p>
    #   @return [Types::ValidationConfiguration]
    class DomainValidationSummary < Struct.new(
      nil,
      :domain_name,
      :active_validation_configuration,
      :requested_validation_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the email addresses used for email-based domain validation.</p>
    # @!attribute validation_emails
    #   <p>A list of email addresses that ACM uses to send domain validation emails.</p>
    #   @return [Array<String>]
    # @!attribute validation_domain
    #   <p>The domain name that ACM uses to send validation emails.</p>
    #   @return [String]
    class EmailValidationChallenge < Struct.new(
      nil,
      :validation_emails,
      :validation_domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an expiration configuration.</p>
    # @!attribute value
    #   <p>The numeric value of the expiration.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>The time unit for the expiration value.</p>
    #   @return [String]
    class Expiration < Struct.new(
      nil,
      :value,
      :type,
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

    # <p>Contains details about a failure.</p>
    # @!attribute reason
    #   <p>The reason for the failure.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing the failure.</p>
    #   @return [String]
    class FailureDetails < Struct.new(
      nil,
      :reason,
      :message,
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

    # <p>Describes an ASN.1 X.400 <code>GeneralName</code> as defined in <a href="https://datatracker.ietf.org/doc/html/rfc5280">RFC 5280</a>. Only one of the following naming options should be provided.</p>
    # @!attribute directory_name
    #   <p>Contains information about the certificate subject. The <code>Subject</code> field in the certificate identifies the entity that owns or controls the public key in the certificate. The entity can be a user, computer, device, or service. The <code>Subject</code> must contain an X.500 distinguished name (DN). A DN is a sequence of relative distinguished names (RDNs). The RDNs are separated by commas in the certificate.</p>
    #   @return [Types::DistinguishedName]
    # @!attribute dns_name
    #   <p>Represents <code>GeneralName</code> as a DNS name.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>Represents <code>GeneralName</code> as an IPv4 or IPv6 address.</p>
    #   @return [String]
    # @!attribute other_name
    #   <p>Represents <code>GeneralName</code> using an <code>OtherName</code> object.</p>
    #   @return [Types::OtherName]
    # @!attribute registered_id
    #   <p>Represents <code>GeneralName</code> as an object identifier (OID).</p>
    #   @return [String]
    # @!attribute rfc822_name
    #   <p>Represents <code>GeneralName</code> as an <a href="https://datatracker.ietf.org/doc/html/rfc822">RFC 822</a> email address.</p>
    #   @return [String]
    # @!attribute uniform_resource_identifier
    #   <p>Represents <code>GeneralName</code> as a URI.</p>
    #   @return [String]
    class GeneralName < Struct.new(
      :directory_name,
      :dns_name,
      :ip_address,
      :other_name,
      :registered_id,
      :rfc822_name,
      :uniform_resource_identifier,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DirectoryName < GeneralName; end
      class DnsName < GeneralName; end
      class IpAddress < GeneralName; end
      class OtherName < GeneralName; end
      class RegisteredId < GeneralName; end
      class Rfc822Name < GeneralName; end
      class UniformResourceIdentifier < GeneralName; end
      class Unknown < GeneralName; end
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

    # @!attribute acme_external_account_binding_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME external account binding.</p>
    #   @return [String]
    class GetAcmeExternalAccountBindingCredentialsRequest < Struct.new(
      nil,
      :acme_external_account_binding_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_id
    #   <p>The key identifier for the external account binding credentials.</p>
    #   @return [String]
    # @!attribute mac_key
    #   <p>The MAC key for the external account binding credentials.</p>
    #   @return [String]
    class GetAcmeExternalAccountBindingCredentialsResponse < Struct.new(
      nil,
      :key_id,
      :mac_key,
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

    # <p>The request processing has failed because of an unknown error, exception, or failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
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

    # @!attribute next_token
    #   <p>A token for pagination.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    #   @return [String]
    class ListAcmeAccountsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :acme_endpoint_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acme_accounts
    #   <p>The list of ACME accounts.</p>
    #   @return [Array<Types::AcmeAccountSummary>]
    # @!attribute next_token
    #   <p>A token for pagination.</p>
    #   @return [String]
    class ListAcmeAccountsResponse < Struct.new(
      nil,
      :acme_accounts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token for pagination.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    #   @return [String]
    class ListAcmeDomainValidationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :acme_endpoint_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acme_domain_validations
    #   <p>The list of domain validations.</p>
    #   @return [Array<Types::AcmeDomainValidationSummary>]
    # @!attribute next_token
    #   <p>A token for pagination.</p>
    #   @return [String]
    class ListAcmeDomainValidationsResponse < Struct.new(
      nil,
      :acme_domain_validations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token for pagination.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    class ListAcmeEndpointsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acme_endpoints
    #   <p>The list of ACME endpoints.</p>
    #   @return [Array<Types::AcmeEndpointSummary>]
    # @!attribute next_token
    #   <p>A token for pagination.</p>
    #   @return [String]
    class ListAcmeEndpointsResponse < Struct.new(
      nil,
      :acme_endpoints,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token for pagination.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    #   @return [String]
    class ListAcmeExternalAccountBindingsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :acme_endpoint_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute external_account_bindings
    #   <p>The list of external account bindings.</p>
    #   @return [Array<Types::AcmeExternalAccountBindingSummary>]
    # @!attribute next_token
    #   <p>A token for pagination.</p>
    #   @return [String]
    class ListAcmeExternalAccountBindingsResponse < Struct.new(
      nil,
      :external_account_bindings,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate for which to list domain validation summaries.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned by a previous call to <code>ListCertificateDomainValidations</code>. If the number of results exceeds <code>MaxItems</code>, use this token to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of domain validation summaries to return. If you don't specify a value, the default is 1000.</p>
    #   @return [Integer]
    class ListCertificateDomainValidationsRequest < Struct.new(
      nil,
      :certificate_arn,
      :next_token,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_validation_summary_list
    #   <p>A list of <a>DomainValidationSummary</a> objects, one for each domain on the certificate. Each object contains the domain name and its active and requested validation configurations.</p>
    #   @return [Array<Types::DomainValidationSummary>]
    # @!attribute next_token
    #   <p>If the number of results exceeds <code>MaxItems</code>, this token is included in the response. Use this token in a subsequent <code>ListCertificateDomainValidations</code> request to retrieve the next page of results.</p>
    #   @return [String]
    class ListCertificateDomainValidationsResponse < Struct.new(
      nil,
      :domain_validation_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_statuses
    #   <p>Filter the certificate list by status value.</p>
    #   @return [Array<String>]
    # @!attribute certificate_key_pair_origins
    #   <p>Filter the certificate list by certificate key pair origin. Specify one or more <code>CertificateKeyPairOrigin</code> values. Default filtering returns only certificates with key pair origin of <code>AWS_MANAGED</code> and <code>CUSTOMER_PROVIDED</code>.</p>
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
      :certificate_key_pair_origins,
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

    # @!attribute resource_arn
    #   <p>The ARN of the ACM resource for which to list tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a custom ASN.1 X.400 <code>GeneralName</code> using an object identifier (OID) and value. For more information, see NIST's definition of <a href="https://csrc.nist.gov/glossary/term/Object_Identifier">Object Identifier (OID)</a>.</p>
    # @!attribute object_identifier
    #   <p>Specifies an OID.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Specifies an OID value.</p>
    #   @return [String]
    class OtherName < Struct.new(
      nil,
      :object_identifier,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the prevalidation configuration.</p>
    # @!attribute dns_prevalidation
    #   <p>DNS-based prevalidation details.</p>
    #   @return [Types::DnsPrevalidationDetails]
    class PrevalidationDetails < Struct.new(
      :dns_prevalidation,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DnsPrevalidation < PrevalidationDetails; end
      class Unknown < PrevalidationDetails; end
    end

    # <p>Specifies prevalidation options for domain validation.</p>
    # @!attribute dns_prevalidation
    #   <p>DNS-based prevalidation options.</p>
    #   @return [Types::DnsPrevalidationOptions]
    class PrevalidationOptions < Struct.new(
      :dns_prevalidation,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DnsPrevalidation < PrevalidationOptions; end
      class Unknown < PrevalidationOptions; end
    end

    # <p>Configuration for a public certificate authority.</p>
    # @!attribute allowed_key_algorithms
    #   <p>The key algorithms allowed for certificates issued by this certificate authority.</p>
    #   @return [Array<String>]
    class PublicCertificateAuthority < Struct.new(
      nil,
      :allowed_key_algorithms,
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
    #   <p>You can use this parameter to specify whether to export your certificate.</p> <p>Certificate transparency logging opt-out is no longer available. All public certificates are recorded in a certificate transparency log. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency">Certificate Transparency Logging</a>.</p> <p>You can export public ACM certificates to use with Amazon Web Services services as well as outside the Amazon Web Services Cloud. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-exportable-certificates.html">Certificate Manager exportable public certificate</a>.</p>
    #   @return [Types::CertificateOptions]
    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the private certificate authority (CA) that will be used to issue the certificate. If you do not provide an ARN and you are trying to request a private certificate, ACM will attempt to issue a public certificate. For more information about private CAs, see the <a href="https://docs.aws.amazon.com/privateca/latest/userguide/PcaWelcome.html">Amazon Web Services Private Certificate Authority</a> user guide. The ARN must have the following form: </p> <p> <code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code> </p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more resource tags to associate with the certificate.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute key_algorithm
    #   <p>Specifies the algorithm of the public and private key pair that your certificate uses to encrypt data. RSA is the default key algorithm for ACM certificates. Elliptic Curve Digital Signature Algorithm (ECDSA) keys are smaller, offering security comparable to RSA keys but with greater computing efficiency. However, ECDSA is not supported by all network clients. Some Amazon Web Services services may require RSA keys, or only support ECDSA keys of a particular size, while others allow the use of either RSA and ECDSA keys to ensure that compatibility is not broken. Check the requirements for the Amazon Web Services service where you plan to deploy your certificate. For more information about selecting an algorithm, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-certificate-characteristics.html#algorithms-term">Key algorithms</a>.</p> <note> <p>Algorithms supported for an ACM certificate request include: </p> <ul> <li> <p> <code>RSA_2048</code> </p> </li> <li> <p> <code>EC_prime256v1</code> </p> </li> <li> <p> <code>EC_secp384r1</code> </p> </li> </ul> <p>Other listed algorithms are for imported certificates only. </p> </note> <note> <p>When you request a private PKI certificate signed by a CA from Amazon Web Services Private CA, the specified signing algorithm family (RSA or ECDSA) must match the algorithm family of the CA's secret key.</p> </note> <p>Default: RSA_2048</p>
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
    #   <p>The base validation domain that will act as the suffix of the email addresses that are used to send the emails. This must be the same as the <code>Domain</code> value or a superdomain of the <code>Domain</code> value. For example, if you requested a certificate for <code>site.subdomain.example.com</code> and specify a <b>ValidationDomain</b> of <code>subdomain.example.com</code>, ACM sends email to the the following five addresses:</p> <ul> <li> <p>admin@subdomain.example.com</p> </li> <li> <p>administrator@subdomain.example.com</p> </li> <li> <p>hostmaster@subdomain.example.com</p> </li> <li> <p>postmaster@subdomain.example.com</p> </li> <li> <p>webmaster@subdomain.example.com</p> </li> </ul>
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

    # @!attribute acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint.</p>
    #   @return [String]
    # @!attribute account_url
    #   <p>The URL of the ACME account to revoke.</p>
    #   @return [String]
    class RevokeAcmeAccountRequest < Struct.new(
      nil,
      :acme_endpoint_arn,
      :account_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acme_external_account_binding_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME external account binding to revoke.</p>
    #   @return [String]
    class RevokeAcmeExternalAccountBindingRequest < Struct.new(
      nil,
      :acme_external_account_binding_arn,
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

    # @!attribute filter_statement
    #   <p>A filter statement that defines the search criteria. You can combine multiple filters using AND, OR, and NOT logical operators to create complex queries.</p>
    #   @return [Types::CertificateFilterStatement]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. Default is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Use this parameter only when paginating results and only in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextToken</code> from the response you just received.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Specifies the field to sort results by. Valid values are CREATED_AT, NOT_AFTER, STATUS, RENEWAL_STATUS, EXPORTED, IN_USE, NOT_BEFORE, KEY_ALGORITHM, TYPE, CERTIFICATE_ARN, COMMON_NAME, REVOKED_AT, RENEWAL_ELIGIBILITY, ISSUED_AT, MANAGED_BY, EXPORT_OPTION, VALIDATION_METHOD, and IMPORTED_AT.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Specifies the order of sorted results. Valid values are ASCENDING or DESCENDING.</p>
    #   @return [String]
    class SearchCertificatesRequest < Struct.new(
      nil,
      :filter_statement,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>A list of certificate search results containing certificate ARNs, X.509 attributes, and ACM metadata.</p>
    #   @return [Array<Types::CertificateSearchResult>]
    # @!attribute next_token
    #   <p>When the list is truncated, this value is present and contains the value to use for the <code>NextToken</code> parameter in a subsequent pagination request.</p>
    #   @return [String]
    class SearchCertificatesResponse < Struct.new(
      nil,
      :results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A service quota has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filters certificates by subject alternative name attributes.</p>
    # @!attribute dns_name
    #   <p>Filter by DNS name in subject alternative names.</p>
    #   @return [Types::DnsNameFilter]
    class SubjectAlternativeNameFilter < Struct.new(
      :dns_name,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DnsName < SubjectAlternativeNameFilter; end
      class Unknown < SubjectAlternativeNameFilter; end
    end

    # <p>Filters certificates by subject attributes.</p>
    # @!attribute common_name
    #   <p>Filter by common name in the subject.</p>
    #   @return [Types::CommonNameFilter]
    class SubjectFilter < Struct.new(
      :common_name,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CommonName < SubjectFilter; end
      class Unknown < SubjectFilter; end
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

    # @!attribute resource_arn
    #   <p>The ARN of the ACM resource to which the tag is to be applied.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pair that defines the tag to apply.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because it exceeded a quota.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute throttling_reasons
    #   <p>One or more reasons why the request was throttled.</p>
    #   @return [Array<Types::ThrottlingReason>]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :throttling_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A description of why a request was throttled.</p>
    # @!attribute reason
    #   <p>A description of why a request was throttled.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The resource that causes the request to be throttled.</p>
    #   @return [String]
    class ThrottlingReason < Struct.new(
      nil,
      :reason,
      :resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a time range for filtering certificates.</p>
    # @!attribute start
    #   <p>The start of the time range. This value is inclusive.</p>
    #   @return [Time]
    # @!attribute end
    #   <p>The end of the time range. This value is inclusive.</p>
    #   @return [Time]
    class TimestampRange < Struct.new(
      nil,
      :start,
      :end,
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

    # @!attribute resource_arn
    #   <p>The ARN of the ACM resource from which the tag is to be removed.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The key of each tag to remove.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acme_domain_validation_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME domain validation to update.</p>
    #   @return [String]
    # @!attribute prevalidation_options
    #   <p>The updated prevalidation options.</p>
    #   @return [Types::PrevalidationOptions]
    class UpdateAcmeDomainValidationRequest < Struct.new(
      nil,
      :acme_domain_validation_arn,
      :prevalidation_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acme_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the ACME endpoint to update.</p>
    #   @return [String]
    # @!attribute authorization_behavior
    #   <p>The updated authorization behavior.</p>
    #   @return [String]
    # @!attribute contact
    #   <p>The updated contact requirement.</p>
    #   @return [String]
    # @!attribute certificate_authority
    #   <p>The updated certificate authority configuration.</p>
    #   @return [Types::CertificateAuthority]
    class UpdateAcmeEndpointRequest < Struct.new(
      nil,
      :acme_endpoint_arn,
      :authorization_behavior,
      :contact,
      :certificate_authority,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>ARN of the requested certificate to update. This must be of the form:</p> <p> <code>arn:aws:acm:us-east-1:<i>account</i>:certificate/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>
    #   @return [String]
    # @!attribute options
    #   <p>Use to update the options for your certificate. Currently, you can change the domain validation method or specify whether to export your certificate. For more information about migrating from email to DNS validation, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/email-to-dns-migration.html">Migrate from email to DNS validation</a>.</p>
    #   @return [Types::CertificateOptions]
    class UpdateCertificateOptionsRequest < Struct.new(
      nil,
      :certificate_arn,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the most recent certificate update, such as a domain validation method migration. This structure is returned as part of the <a>CertificateDetail</a> response from <a>DescribeCertificate</a>.</p>
    # @!attribute status
    #   <p>The status of the certificate update. The following are valid values:</p> <ul> <li> <p> <code>PENDING_DOMAIN_VALIDATION</code> – The certificate update is waiting for domain ownership validation to complete.</p> </li> <li> <p> <code>SUCCESS</code> – The certificate was updated successfully.</p> </li> <li> <p> <code>FAILED</code> – The certificate update failed.</p> </li> </ul>
    #   @return [String]
    # @!attribute type
    #   <p>The type of update that was requested for the certificate. The following are valid values:</p> <ul> <li> <p> <code>DOMAIN_VALIDATION_METHOD</code> – The update changes the domain validation method for the certificate.</p> </li> </ul>
    #   @return [String]
    # @!attribute domain_validation_method_update_summary
    #   <p>Contains information about a domain validation method migration, including the previous and target validation methods.</p>
    #   @return [Types::DomainValidationMethodUpdateSummary]
    # @!attribute requested_at
    #   <p>The time at which the certificate update was requested.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the certificate update status was last changed.</p>
    #   @return [Time]
    class UpdateSummary < Struct.new(
      nil,
      :status,
      :type,
      :domain_validation_method_update_summary,
      :requested_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the challenge details that you use to prove domain ownership. Only one member is set, depending on the validation method.</p>
    # @!attribute email_validation_challenge
    #   <p>Contains the email addresses used for email-based domain validation.</p>
    #   @return [Types::EmailValidationChallenge]
    # @!attribute dns_validation_challenge
    #   <p>Contains the CNAME record that you must add to your DNS configuration to validate domain ownership using DNS validation.</p>
    #   @return [Types::DnsValidationChallenge]
    class ValidationChallenge < Struct.new(
      :email_validation_challenge,
      :dns_validation_challenge,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EmailValidationChallenge < ValidationChallenge; end
      class DnsValidationChallenge < ValidationChallenge; end
      class Unknown < ValidationChallenge; end
    end

    # <p>Contains the validation method, validation status, and validation challenge details for a domain. This structure appears in <a>DomainValidationSummary</a> as both the active and requested validation configuration.</p>
    # @!attribute validation_method
    #   <p>The validation method for this configuration. Valid values:</p> <ul> <li> <p> <code>DNS</code> – Validation using a CNAME record added to your DNS configuration.</p> </li> <li> <p> <code>EMAIL</code> – Validation using an approval email sent to domain contacts.</p> </li> <li> <p> <code>HTTP</code> – Validation using an HTTP resource placed on your web server.</p> </li> </ul>
    #   @return [String]
    # @!attribute validation_challenge
    #   <p>The validation challenge details for this configuration. The structure varies by validation method: for DNS validation, contains a <code>DnsValidationChallenge</code> with the CNAME record to add; for email validation, contains an <code>EmailValidationChallenge</code> with the validation email addresses.</p>
    #   @return [Types::ValidationChallenge]
    # @!attribute validation_status
    #   <p>The validation status for this domain. Valid values:</p> <ul> <li> <p> <code>PENDING_VALIDATION</code> – The domain is waiting for validation to complete.</p> </li> <li> <p> <code>SUCCESS</code> – Validation completed successfully.</p> </li> <li> <p> <code>FAILED</code> – Validation failed.</p> </li> </ul>
    #   @return [String]
    class ValidationConfiguration < Struct.new(
      nil,
      :validation_method,
      :validation_challenge,
      :validation_status,
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

    # <p>Filters certificates by X.509 attributes.</p>
    # @!attribute subject
    #   <p>Filter by certificate subject.</p>
    #   @return [Types::SubjectFilter]
    # @!attribute subject_alternative_name
    #   <p>Filter by subject alternative names.</p>
    #   @return [Types::SubjectAlternativeNameFilter]
    # @!attribute extended_key_usage
    #   <p>Filter by extended key usage.</p>
    #   @return [String]
    # @!attribute key_usage
    #   <p>Filter by key usage.</p>
    #   @return [String]
    # @!attribute key_algorithm
    #   <p>Filter by key algorithm.</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>Filter by serial number.</p>
    #   @return [String]
    # @!attribute not_after
    #   <p>Filter by certificate expiration date. The start date is inclusive.</p>
    #   @return [Types::TimestampRange]
    # @!attribute not_before
    #   <p>Filter by certificate validity start date. The start date is inclusive.</p>
    #   @return [Types::TimestampRange]
    class X509AttributeFilter < Struct.new(
      :subject,
      :subject_alternative_name,
      :extended_key_usage,
      :key_usage,
      :key_algorithm,
      :serial_number,
      :not_after,
      :not_before,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Subject < X509AttributeFilter; end
      class SubjectAlternativeName < X509AttributeFilter; end
      class ExtendedKeyUsage < X509AttributeFilter; end
      class KeyUsage < X509AttributeFilter; end
      class KeyAlgorithm < X509AttributeFilter; end
      class SerialNumber < X509AttributeFilter; end
      class NotAfter < X509AttributeFilter; end
      class NotBefore < X509AttributeFilter; end
      class Unknown < X509AttributeFilter; end
    end

    # <p>Contains X.509 certificate attributes extracted from the certificate.</p>
    # @!attribute issuer
    #   <p>The distinguished name of the certificate issuer.</p>
    #   @return [Types::DistinguishedName]
    # @!attribute subject
    #   <p>The distinguished name of the certificate subject.</p>
    #   @return [Types::DistinguishedName]
    # @!attribute subject_alternative_names
    #   <p>One or more domain names (subject alternative names) included in the certificate. This list contains the domain names that are bound to the public key that is contained in the certificate. The subject alternative names include the canonical domain name (CN) of the certificate and additional domain names that can be used to connect to the website. </p>
    #   @return [Array<Types::GeneralName>]
    # @!attribute extended_key_usages
    #   <p>Contains a list of Extended Key Usage X.509 v3 extension objects. Each object specifies a purpose for which the certificate public key can be used and consists of a name and an object identifier (OID). </p>
    #   @return [Array<String>]
    # @!attribute key_algorithm
    #   <p>The algorithm that was used to generate the public-private key pair.</p>
    #   @return [String]
    # @!attribute key_usages
    #   <p>A list of Key Usage X.509 v3 extension objects. Each object is a string value that identifies the purpose of the public key contained in the certificate. Possible extension values include DIGITAL_SIGNATURE, KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.</p>
    #   @return [Array<String>]
    # @!attribute serial_number
    #   <p>The serial number assigned by the certificate authority.</p>
    #   @return [String]
    # @!attribute not_after
    #   <p>The time after which the certificate is not valid.</p>
    #   @return [Time]
    # @!attribute not_before
    #   <p>The time before which the certificate is not valid.</p>
    #   @return [Time]
    class X509Attributes < Struct.new(
      nil,
      :issuer,
      :subject,
      :subject_alternative_names,
      :extended_key_usages,
      :key_algorithm,
      :key_usages,
      :serial_number,
      :not_after,
      :not_before,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
