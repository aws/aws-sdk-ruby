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

    # Contains ACM-specific metadata about a certificate.
    #
    # @!attribute [rw] created_at
    #   The time at which the certificate was requested.
    #   @return [Time]
    #
    # @!attribute [rw] exported
    #   Indicates whether the certificate has been exported.
    #   @return [Boolean]
    #
    # @!attribute [rw] imported_at
    #   The date and time when the certificate was imported. This value
    #   exists only when the certificate type is `IMPORTED`.
    #   @return [Time]
    #
    # @!attribute [rw] in_use
    #   Indicates whether the certificate is currently in use by an Amazon
    #   Web Services service.
    #   @return [Boolean]
    #
    # @!attribute [rw] issued_at
    #   The time at which the certificate was issued. This value exists only
    #   when the certificate type is `AMAZON_ISSUED`.
    #   @return [Time]
    #
    # @!attribute [rw] renewal_eligibility
    #   Specifies whether the certificate is eligible for renewal. At this
    #   time, only exported private certificates can be renewed with the
    #   RenewCertificate command.
    #   @return [String]
    #
    # @!attribute [rw] revoked_at
    #   The time at which the certificate was revoked. This value exists
    #   only when the certificate status is `REVOKED`.
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
    # @!attribute [rw] renewal_status
    #   The renewal status of the certificate.
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
    # @!attribute [rw] export_option
    #   Indicates whether the certificate can be exported.
    #   @return [String]
    #
    # @!attribute [rw] managed_by
    #   Identifies the Amazon Web Services service that manages the
    #   certificate issued by ACM.
    #   @return [String]
    #
    # @!attribute [rw] validation_method
    #   Specifies the domain validation method.
    #   @return [String]
    #
    # @!attribute [rw] certificate_key_pair_origin
    #   The origin of the certificate's key pair.
    #   @return [String]
    #
    # @!attribute [rw] acme_endpoint_arn
    #   The ARN of the ACME endpoint used to issue the certificate.
    #   @return [String]
    #
    # @!attribute [rw] acme_account_id
    #   The ACME account identifier associated with the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/AcmCertificateMetadata AWS API Documentation
    #
    class AcmCertificateMetadata < Struct.new(
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
      :acme_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters certificates by ACM metadata.
    #
    # @note AcmCertificateMetadataFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] status
    #   Filter by certificate status.
    #   @return [String]
    #
    # @!attribute [rw] renewal_status
    #   Filter by certificate renewal status.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Filter by certificate type.
    #   @return [String]
    #
    # @!attribute [rw] in_use
    #   Filter by whether the certificate is in use.
    #   @return [Boolean]
    #
    # @!attribute [rw] exported
    #   Filter by whether the certificate has been exported.
    #   @return [Boolean]
    #
    # @!attribute [rw] export_option
    #   Filter by certificate export option.
    #   @return [String]
    #
    # @!attribute [rw] managed_by
    #   Filter by the entity that manages the certificate.
    #   @return [String]
    #
    # @!attribute [rw] validation_method
    #   Filter by validation method.
    #   @return [String]
    #
    # @!attribute [rw] certificate_key_pair_origin
    #   Filter by certificate key pair origin.
    #   @return [String]
    #
    # @!attribute [rw] acme_endpoint_arn
    #   Filter by ACME endpoint ARN.
    #   @return [String]
    #
    # @!attribute [rw] acme_account_id
    #   Filter by ACME account identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/AcmCertificateMetadataFilter AWS API Documentation
    #
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
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

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

    # Contains detailed information about an ACME account.
    #
    # @!attribute [rw] account_url
    #   The URL of the ACME account.
    #   @return [String]
    #
    # @!attribute [rw] public_key_thumbprint
    #   The thumbprint of the public key associated with the ACME account.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the ACME account.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the ACME account was created.
    #   @return [Time]
    #
    # @!attribute [rw] acme_external_account_binding_arn
    #   The Amazon Resource Name (ARN) of the external account binding
    #   associated with this ACME account.
    #   @return [String]
    #
    # @!attribute [rw] contacts
    #   The contact information for the ACME account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/AcmeAccount AWS API Documentation
    #
    class AcmeAccount < Struct.new(
      :account_url,
      :public_key_thumbprint,
      :status,
      :created_at,
      :acme_external_account_binding_arn,
      :contacts)
      SENSITIVE = [:contacts]
      include Aws::Structure
    end

    # Contains summary information about an ACME account.
    #
    # @!attribute [rw] account_url
    #   The URL of the ACME account.
    #   @return [String]
    #
    # @!attribute [rw] public_key_thumbprint
    #   The thumbprint of the public key associated with the ACME account.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the ACME account.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the ACME account was created.
    #   @return [Time]
    #
    # @!attribute [rw] acme_external_account_binding_arn
    #   The Amazon Resource Name (ARN) of the external account binding
    #   associated with this ACME account.
    #   @return [String]
    #
    # @!attribute [rw] contacts
    #   The contact information for the ACME account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/AcmeAccountSummary AWS API Documentation
    #
    class AcmeAccountSummary < Struct.new(
      :account_url,
      :public_key_thumbprint,
      :status,
      :created_at,
      :acme_external_account_binding_arn,
      :contacts)
      SENSITIVE = [:contacts]
      include Aws::Structure
    end

    # Contains detailed information about an ACME domain validation.
    #
    # @!attribute [rw] acme_domain_validation_arn
    #   The Amazon Resource Name (ARN) of the ACME domain validation.
    #   @return [String]
    #
    # @!attribute [rw] acme_endpoint_arn
    #   The Amazon Resource Name (ARN) of the ACME endpoint.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name being validated.
    #   @return [String]
    #
    # @!attribute [rw] prevalidation_type
    #   The type of prevalidation used.
    #   @return [String]
    #
    # @!attribute [rw] prevalidation_details
    #   Details about the prevalidation configuration.
    #   @return [Types::PrevalidationDetails]
    #
    # @!attribute [rw] status
    #   The status of the domain validation.
    #   @return [String]
    #
    # @!attribute [rw] failure_details
    #   Details about the failure, if the validation failed.
    #   @return [Types::FailureDetails]
    #
    # @!attribute [rw] created_at
    #   The time at which the domain validation was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the domain validation was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/AcmeDomainValidation AWS API Documentation
    #
    class AcmeDomainValidation < Struct.new(
      :acme_domain_validation_arn,
      :acme_endpoint_arn,
      :domain_name,
      :prevalidation_type,
      :prevalidation_details,
      :status,
      :failure_details,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about an ACME domain validation.
    #
    # @!attribute [rw] acme_domain_validation_arn
    #   The Amazon Resource Name (ARN) of the ACME domain validation.
    #   @return [String]
    #
    # @!attribute [rw] acme_endpoint_arn
    #   The Amazon Resource Name (ARN) of the ACME endpoint.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name being validated.
    #   @return [String]
    #
    # @!attribute [rw] prevalidation_type
    #   The type of prevalidation used.
    #   @return [String]
    #
    # @!attribute [rw] prevalidation_details
    #   Details about the prevalidation configuration.
    #   @return [Types::PrevalidationDetails]
    #
    # @!attribute [rw] status
    #   The status of the domain validation.
    #   @return [String]
    #
    # @!attribute [rw] failure_details
    #   Details about the failure, if the validation failed.
    #   @return [Types::FailureDetails]
    #
    # @!attribute [rw] created_at
    #   The time at which the domain validation was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the domain validation was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/AcmeDomainValidationSummary AWS API Documentation
    #
    class AcmeDomainValidationSummary < Struct.new(
      :acme_domain_validation_arn,
      :acme_endpoint_arn,
      :domain_name,
      :prevalidation_type,
      :prevalidation_details,
      :status,
      :failure_details,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about an ACME endpoint.
    #
    # @!attribute [rw] acme_endpoint_arn
    #   The Amazon Resource Name (ARN) of the ACME endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_url
    #   The URL of the ACME endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the ACME endpoint.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason the ACME endpoint failed, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] authorization_behavior
    #   The authorization behavior of the ACME endpoint.
    #   @return [String]
    #
    # @!attribute [rw] contact
    #   Whether ACME clients must provide contact information during account
    #   registration.
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority
    #   The certificate authority configuration for the ACME endpoint.
    #   @return [Types::CertificateAuthority]
    #
    # @!attribute [rw] certificate_tags
    #   Tags applied to certificates issued through this ACME endpoint.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_at
    #   The time at which the ACME endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the ACME endpoint was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/AcmeEndpoint AWS API Documentation
    #
    class AcmeEndpoint < Struct.new(
      :acme_endpoint_arn,
      :endpoint_url,
      :status,
      :failure_reason,
      :authorization_behavior,
      :contact,
      :certificate_authority,
      :certificate_tags,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about an ACME endpoint.
    #
    # @!attribute [rw] acme_endpoint_arn
    #   The Amazon Resource Name (ARN) of the ACME endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_url
    #   The URL of the ACME endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the ACME endpoint.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason the ACME endpoint failed, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] authorization_behavior
    #   The authorization behavior of the ACME endpoint.
    #   @return [String]
    #
    # @!attribute [rw] contact
    #   Whether ACME clients must provide contact information during account
    #   registration.
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority
    #   The certificate authority configuration for the ACME endpoint.
    #   @return [Types::CertificateAuthority]
    #
    # @!attribute [rw] certificate_tags
    #   Tags applied to certificates issued through this ACME endpoint.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_at
    #   The time at which the ACME endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the ACME endpoint was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/AcmeEndpointSummary AWS API Documentation
    #
    class AcmeEndpointSummary < Struct.new(
      :acme_endpoint_arn,
      :endpoint_url,
      :status,
      :failure_reason,
      :authorization_behavior,
      :contact,
      :certificate_authority,
      :certificate_tags,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about an ACME external account binding.
    #
    # @!attribute [rw] acme_external_account_binding_arn
    #   The Amazon Resource Name (ARN) of the ACME external account binding.
    #   @return [String]
    #
    # @!attribute [rw] acme_endpoint_arn
    #   The Amazon Resource Name (ARN) of the ACME endpoint.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   external account binding.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The time at which the external account binding expires.
    #   @return [Time]
    #
    # @!attribute [rw] revoked_at
    #   The time at which the external account binding was revoked.
    #   @return [Time]
    #
    # @!attribute [rw] last_used_at
    #   The time at which the external account binding was last used.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The time at which the external account binding was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the external account binding was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/AcmeExternalAccountBinding AWS API Documentation
    #
    class AcmeExternalAccountBinding < Struct.new(
      :acme_external_account_binding_arn,
      :acme_endpoint_arn,
      :role_arn,
      :expires_at,
      :revoked_at,
      :last_used_at,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about an ACME external account binding.
    #
    # @!attribute [rw] acme_external_account_binding_arn
    #   The Amazon Resource Name (ARN) of the ACME external account binding.
    #   @return [String]
    #
    # @!attribute [rw] acme_endpoint_arn
    #   The Amazon Resource Name (ARN) of the ACME endpoint.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   external account binding.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The time at which the external account binding expires.
    #   @return [Time]
    #
    # @!attribute [rw] revoked_at
    #   The time at which the external account binding was revoked.
    #   @return [Time]
    #
    # @!attribute [rw] last_used_at
    #   The time at which the external account binding was last used.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The time at which the external account binding was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the external account binding was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/AcmeExternalAccountBindingSummary AWS API Documentation
    #
    class AcmeExternalAccountBindingSummary < Struct.new(
      :acme_external_account_binding_arn,
      :acme_endpoint_arn,
      :role_arn,
      :expires_at,
      :revoked_at,
      :last_used_at,
      :created_at,
      :updated_at)
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

    # Defines the certificate authority to use for an ACME endpoint.
    #
    # @note CertificateAuthority is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CertificateAuthority is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CertificateAuthority corresponding to the set member.
    #
    # @!attribute [rw] public_certificate_authority
    #   Configuration for using a public certificate authority.
    #   @return [Types::PublicCertificateAuthority]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CertificateAuthority AWS API Documentation
    #
    class CertificateAuthority < Struct.new(
      :public_certificate_authority,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class PublicCertificateAuthority < CertificateAuthority; end
      class Unknown < CertificateAuthority; end
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
    # @!attribute [rw] managed_by
    #   Identifies the Amazon Web Services service that manages the
    #   certificate issued by ACM.
    #   @return [String]
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
    #   Contains the certificate options. Certificate transparency logging
    #   opt-out is no longer available. All public certificates are recorded
    #   in a certificate transparency log.
    #   @return [Types::CertificateOptions]
    #
    # @!attribute [rw] certificate_key_pair_origin
    #   The origin of the certificate's key pair.
    #   @return [String]
    #
    # @!attribute [rw] acme_endpoint_arn
    #   The ARN of the ACME endpoint used to issue the certificate.
    #   @return [String]
    #
    # @!attribute [rw] acme_account_id
    #   The ACME account identifier associated with the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CertificateDetail AWS API Documentation
    #
    class CertificateDetail < Struct.new(
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
      :certificate_key_pair_origin,
      :acme_endpoint_arn,
      :acme_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a filter for searching certificates by ARN, X.509 attributes,
    # or ACM metadata.
    #
    # @note CertificateFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] certificate_arn
    #   Filter by certificate ARN.
    #   @return [String]
    #
    # @!attribute [rw] x509_attribute_filter
    #   Filter by X.509 certificate attributes.
    #   @return [Types::X509AttributeFilter]
    #
    # @!attribute [rw] acm_certificate_metadata_filter
    #   Filter by ACM certificate metadata.
    #   @return [Types::AcmCertificateMetadataFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CertificateFilter AWS API Documentation
    #
    class CertificateFilter < Struct.new(
      :certificate_arn,
      :x509_attribute_filter,
      :acm_certificate_metadata_filter,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CertificateArn < CertificateFilter; end
      class X509AttributeFilter < CertificateFilter; end
      class AcmCertificateMetadataFilter < CertificateFilter; end
      class Unknown < CertificateFilter; end
    end

    # A filter statement used to search for certificates. Can contain AND,
    # OR, NOT logical operators or a single filter.
    #
    # @note CertificateFilterStatement is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] and
    #   A list of filter statements that must all be true.
    #   @return [Array<Types::CertificateFilterStatement>]
    #
    # @!attribute [rw] or
    #   A list of filter statements where at least one must be true.
    #   @return [Array<Types::CertificateFilterStatement>]
    #
    # @!attribute [rw] not
    #   A filter statement that must not be true.
    #   @return [Types::CertificateFilterStatement]
    #
    # @!attribute [rw] filter
    #   A single certificate filter.
    #   @return [Types::CertificateFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CertificateFilterStatement AWS API Documentation
    #
    class CertificateFilterStatement < Struct.new(
      :and,
      :or,
      :not,
      :filter,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class And < CertificateFilterStatement; end
      class Or < CertificateFilterStatement; end
      class Not < CertificateFilterStatement; end
      class Filter < CertificateFilterStatement; end
      class Unknown < CertificateFilterStatement; end
    end

    # Contains metadata about a certificate. Currently supports ACM
    # certificate metadata.
    #
    # @note CertificateMetadata is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CertificateMetadata corresponding to the set member.
    #
    # @!attribute [rw] acm_certificate_metadata
    #   Metadata for an ACM certificate.
    #   @return [Types::AcmCertificateMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CertificateMetadata AWS API Documentation
    #
    class CertificateMetadata < Struct.new(
      :acm_certificate_metadata,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AcmCertificateMetadata < CertificateMetadata; end
      class Unknown < CertificateMetadata; end
    end

    # Structure that contains options for your certificate. You can use this
    # structure to specify whether to export your certificate.
    #
    # Certificate transparency logging opt-out is no longer available. All
    # public certificates are recorded in a certificate transparency log.
    # For general information, see [Certificate Transparency Logging][1].
    #
    # You can export public ACM certificates to use with Amazon Web Services
    # services as well as outside Amazon Web Services Cloud. For more
    # information, see [Certificate Manager exportable public
    # certificate][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency
    # [2]: https://docs.aws.amazon.com/acm/latest/userguide/acm-exportable-certificates.html
    #
    # @!attribute [rw] certificate_transparency_logging_preference
    #   This parameter has been deprecated. Certificate transparency logging
    #   opt-out is no longer available. All public certificates are recorded
    #   in a certificate transparency log.
    #   @return [String]
    #
    # @!attribute [rw] export
    #   You can opt in to allow the export of your certificates by
    #   specifying `ENABLED`. You cannot update the value of `Export` after
    #   the the certificate is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CertificateOptions AWS API Documentation
    #
    class CertificateOptions < Struct.new(
      :certificate_transparency_logging_preference,
      :export)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a certificate returned by the
    # SearchCertificates action. This structure includes the certificate
    # ARN, X.509 attributes, and ACM metadata.
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] x509_attributes
    #   X.509 certificate attributes such as subject, issuer, and validity
    #   period.
    #   @return [Types::X509Attributes]
    #
    # @!attribute [rw] certificate_metadata
    #   ACM-specific metadata about the certificate.
    #   @return [Types::CertificateMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CertificateSearchResult AWS API Documentation
    #
    class CertificateSearchResult < Struct.new(
      :certificate_arn,
      :x509_attributes,
      :certificate_metadata)
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
    #   [1]: https://docs.aws.amazon.com/acm/latest/APIReference/API_ListCertificates.html
    #   [2]: https://docs.aws.amazon.com/acm/latest/APIReference/API_DescribeCertificate.html
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
    #   [1]: https://docs.aws.amazon.com/acm/latest/APIReference/API_ListCertificates.html
    #   [2]: https://docs.aws.amazon.com/acm/latest/APIReference/API_DescribeCertificate.html
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
    # @!attribute [rw] export_option
    #   Indicates if export is enabled for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] in_use
    #   Indicates whether the certificate is currently in use by any Amazon
    #   Web Services resources.
    #   @return [Boolean]
    #
    # @!attribute [rw] exported
    #   Indicates whether the certificate has been exported.
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
    # @!attribute [rw] managed_by
    #   Identifies the Amazon Web Services service that manages the
    #   certificate issued by ACM.
    #   @return [String]
    #
    # @!attribute [rw] certificate_key_pair_origin
    #   The origin of the certificate's key pair.
    #   @return [String]
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
      :certificate_key_pair_origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters certificates by common name.
    #
    # @!attribute [rw] value
    #   The value to match against.
    #   @return [String]
    #
    # @!attribute [rw] comparison_operator
    #   The comparison operator to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CommonNameFilter AWS API Documentation
    #
    class CommonNameFilter < Struct.new(
      :value,
      :comparison_operator)
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

    # @!attribute [rw] idempotency_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] acme_endpoint_arn
    #   The Amazon Resource Name (ARN) of the ACME endpoint.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name to validate.
    #   @return [String]
    #
    # @!attribute [rw] prevalidation_options
    #   The prevalidation options for the domain.
    #   @return [Types::PrevalidationOptions]
    #
    # @!attribute [rw] tags
    #   One or more tags to associate with the domain validation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CreateAcmeDomainValidationRequest AWS API Documentation
    #
    class CreateAcmeDomainValidationRequest < Struct.new(
      :idempotency_token,
      :acme_endpoint_arn,
      :domain_name,
      :prevalidation_options,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acme_domain_validation_arn
    #   The Amazon Resource Name (ARN) of the created domain validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CreateAcmeDomainValidationResponse AWS API Documentation
    #
    class CreateAcmeDomainValidationResponse < Struct.new(
      :acme_domain_validation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] idempotency_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] authorization_behavior
    #   The authorization behavior for the ACME endpoint.
    #   @return [String]
    #
    # @!attribute [rw] contact
    #   Specifies whether ACME clients must provide contact information
    #   during account registration.
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority
    #   The type of certificate authority to use for issuing certificates
    #   through this ACME endpoint.
    #   @return [Types::CertificateAuthority]
    #
    # @!attribute [rw] tags
    #   One or more tags to associate with the ACME endpoint.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] certificate_tags
    #   Tags to apply to certificates issued through this ACME endpoint.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CreateAcmeEndpointRequest AWS API Documentation
    #
    class CreateAcmeEndpointRequest < Struct.new(
      :idempotency_token,
      :authorization_behavior,
      :contact,
      :certificate_authority,
      :tags,
      :certificate_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acme_endpoint_arn
    #   The Amazon Resource Name (ARN) of the created ACME endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CreateAcmeEndpointResponse AWS API Documentation
    #
    class CreateAcmeEndpointResponse < Struct.new(
      :acme_endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] idempotency_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] acme_endpoint_arn
    #   The Amazon Resource Name (ARN) of the ACME endpoint.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to associate with the
    #   external account binding.
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   The expiration configuration for the external account binding.
    #   @return [Types::Expiration]
    #
    # @!attribute [rw] tags
    #   One or more tags to associate with the external account binding.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CreateAcmeExternalAccountBindingRequest AWS API Documentation
    #
    class CreateAcmeExternalAccountBindingRequest < Struct.new(
      :idempotency_token,
      :acme_endpoint_arn,
      :role_arn,
      :expiration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] external_account_binding
    #   The created external account binding.
    #   @return [Types::AcmeExternalAccountBinding]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CreateAcmeExternalAccountBindingResponse AWS API Documentation
    #
    class CreateAcmeExternalAccountBindingResponse < Struct.new(
      :external_account_binding)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the X.500 relative distinguished name (RDN).
    #
    # @!attribute [rw] object_identifier
    #   Specifies the object identifier (OID) of the attribute type of the
    #   relative distinguished name (RDN).
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Specifies the attribute value of relative distinguished name (RDN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/CustomAttribute AWS API Documentation
    #
    class CustomAttribute < Struct.new(
      :object_identifier,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acme_domain_validation_arn
    #   The Amazon Resource Name (ARN) of the ACME domain validation to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DeleteAcmeDomainValidationRequest AWS API Documentation
    #
    class DeleteAcmeDomainValidationRequest < Struct.new(
      :acme_domain_validation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acme_endpoint_arn
    #   The Amazon Resource Name (ARN) of the ACME endpoint to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DeleteAcmeEndpointRequest AWS API Documentation
    #
    class DeleteAcmeEndpointRequest < Struct.new(
      :acme_endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acme_external_account_binding_arn
    #   The Amazon Resource Name (ARN) of the ACME external account binding
    #   to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DeleteAcmeExternalAccountBindingRequest AWS API Documentation
    #
    class DeleteAcmeExternalAccountBindingRequest < Struct.new(
      :acme_external_account_binding_arn)
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

    # @!attribute [rw] acme_endpoint_arn
    #   The Amazon Resource Name (ARN) of the ACME endpoint.
    #   @return [String]
    #
    # @!attribute [rw] account_url
    #   The URL of the ACME account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DescribeAcmeAccountRequest AWS API Documentation
    #
    class DescribeAcmeAccountRequest < Struct.new(
      :acme_endpoint_arn,
      :account_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acme_account
    #   The ACME account details.
    #   @return [Types::AcmeAccount]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DescribeAcmeAccountResponse AWS API Documentation
    #
    class DescribeAcmeAccountResponse < Struct.new(
      :acme_account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acme_domain_validation_arn
    #   The Amazon Resource Name (ARN) of the ACME domain validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DescribeAcmeDomainValidationRequest AWS API Documentation
    #
    class DescribeAcmeDomainValidationRequest < Struct.new(
      :acme_domain_validation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acme_domain_validation
    #   The ACME domain validation details.
    #   @return [Types::AcmeDomainValidation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DescribeAcmeDomainValidationResponse AWS API Documentation
    #
    class DescribeAcmeDomainValidationResponse < Struct.new(
      :acme_domain_validation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acme_endpoint_arn
    #   The Amazon Resource Name (ARN) of the ACME endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DescribeAcmeEndpointRequest AWS API Documentation
    #
    class DescribeAcmeEndpointRequest < Struct.new(
      :acme_endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acme_endpoint
    #   The ACME endpoint details.
    #   @return [Types::AcmeEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DescribeAcmeEndpointResponse AWS API Documentation
    #
    class DescribeAcmeEndpointResponse < Struct.new(
      :acme_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acme_external_account_binding_arn
    #   The Amazon Resource Name (ARN) of the ACME external account binding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DescribeAcmeExternalAccountBindingRequest AWS API Documentation
    #
    class DescribeAcmeExternalAccountBindingRequest < Struct.new(
      :acme_external_account_binding_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] external_account_binding
    #   The external account binding details.
    #   @return [Types::AcmeExternalAccountBinding]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DescribeAcmeExternalAccountBindingResponse AWS API Documentation
    #
    class DescribeAcmeExternalAccountBindingResponse < Struct.new(
      :external_account_binding)
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

    # Contains X.500 distinguished name information.
    #
    # @!attribute [rw] common_name
    #   The common name (CN) attribute.
    #   @return [String]
    #
    # @!attribute [rw] domain_components
    #   The domain component attributes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] country
    #   The country (C) attribute.
    #   @return [String]
    #
    # @!attribute [rw] custom_attributes
    #   A list of custom attributes in the distinguished name. Each custom
    #   attribute contains an object identifier (OID) and its corresponding
    #   value.
    #   @return [Array<Types::CustomAttribute>]
    #
    # @!attribute [rw] distinguished_name_qualifier
    #   The distinguished name qualifier attribute.
    #   @return [String]
    #
    # @!attribute [rw] generation_qualifier
    #   The generation qualifier attribute.
    #   @return [String]
    #
    # @!attribute [rw] given_name
    #   The given name attribute.
    #   @return [String]
    #
    # @!attribute [rw] initials
    #   The initials attribute.
    #   @return [String]
    #
    # @!attribute [rw] locality
    #   The locality (L) attribute.
    #   @return [String]
    #
    # @!attribute [rw] organization
    #   The organization (O) attribute.
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit
    #   The organizational unit (OU) attribute.
    #   @return [String]
    #
    # @!attribute [rw] pseudonym
    #   The pseudonym attribute.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The serial number attribute.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state or province (ST) attribute.
    #   @return [String]
    #
    # @!attribute [rw] surname
    #   The surname attribute.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DistinguishedName AWS API Documentation
    #
    class DistinguishedName < Struct.new(
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
      :title)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters certificates by DNS name.
    #
    # @!attribute [rw] value
    #   The DNS name value to match against.
    #   @return [String]
    #
    # @!attribute [rw] comparison_operator
    #   The comparison operator to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DnsNameFilter AWS API Documentation
    #
    class DnsNameFilter < Struct.new(
      :value,
      :comparison_operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # DNS prevalidation details including the resource record for
    # validation.
    #
    # @!attribute [rw] domain_scope
    #   The scope of domains covered by this prevalidation.
    #   @return [Types::DomainScope]
    #
    # @!attribute [rw] hosted_zone_id
    #   The Route 53 hosted zone ID for DNS validation.
    #   @return [String]
    #
    # @!attribute [rw] resource_record
    #   The DNS resource record to create for domain validation.
    #   @return [Types::ResourceRecord]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DnsPrevalidationDetails AWS API Documentation
    #
    class DnsPrevalidationDetails < Struct.new(
      :domain_scope,
      :hosted_zone_id,
      :resource_record)
      SENSITIVE = []
      include Aws::Structure
    end

    # DNS prevalidation options for domain validation.
    #
    # @!attribute [rw] domain_scope
    #   The scope of domains covered by this prevalidation.
    #   @return [Types::DomainScope]
    #
    # @!attribute [rw] hosted_zone_id
    #   The Route 53 hosted zone ID for DNS validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DnsPrevalidationOptions AWS API Documentation
    #
    class DnsPrevalidationOptions < Struct.new(
      :domain_scope,
      :hosted_zone_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the scope of domain validation.
    #
    # @!attribute [rw] exact_domain
    #   Whether validation applies to the exact domain.
    #   @return [String]
    #
    # @!attribute [rw] subdomains
    #   Whether validation applies to subdomains.
    #   @return [String]
    #
    # @!attribute [rw] wildcards
    #   Whether validation applies to wildcard domains.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DomainScope AWS API Documentation
    #
    class DomainScope < Struct.new(
      :exact_domain,
      :subdomains,
      :wildcards)
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
    #   <note markdown="1"> The CNAME information that you need does not include the name of
    #   your domain. If you include your domain name in the DNS database
    #   CNAME record, validation fails. For example, if the name is
    #   `_a79865eb4cd1a6ab990a45779b4e0b96.yourdomain.com`, only
    #   `_a79865eb4cd1a6ab990a45779b4e0b96` must be used.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html
    #   @return [Types::ResourceRecord]
    #
    # @!attribute [rw] http_redirect
    #   Contains information for HTTP-based domain validation of
    #   certificates requested through Amazon CloudFront and issued by ACM.
    #   This field exists only when the certificate type is `AMAZON_ISSUED`
    #   and the validation method is `HTTP`.
    #   @return [Types::HttpRedirect]
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
      :http_redirect,
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

    # Specifies an expiration configuration.
    #
    # @!attribute [rw] value
    #   The numeric value of the expiration.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The time unit for the expiration value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/Expiration AWS API Documentation
    #
    class Expiration < Struct.new(
      :value,
      :type)
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

    # Contains details about a failure.
    #
    # @!attribute [rw] reason
    #   The reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message describing the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/FailureDetails AWS API Documentation
    #
    class FailureDetails < Struct.new(
      :reason,
      :message)
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
    # @!attribute [rw] export_option
    #   Specify `ENABLED` or `DISABLED` to identify certificates that can be
    #   exported.
    #   @return [String]
    #
    # @!attribute [rw] managed_by
    #   Identifies the Amazon Web Services service that manages the
    #   certificate issued by ACM.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/Filters AWS API Documentation
    #
    class Filters < Struct.new(
      :extended_key_usage,
      :key_usage,
      :key_types,
      :export_option,
      :managed_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an ASN.1 X.400 `GeneralName` as defined in [RFC 5280][1].
    # Only one of the following naming options should be provided.
    #
    #
    #
    # [1]: https://datatracker.ietf.org/doc/html/rfc5280
    #
    # @note GeneralName is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of GeneralName corresponding to the set member.
    #
    # @!attribute [rw] directory_name
    #   Contains information about the certificate subject. The `Subject`
    #   field in the certificate identifies the entity that owns or controls
    #   the public key in the certificate. The entity can be a user,
    #   computer, device, or service. The `Subject` must contain an X.500
    #   distinguished name (DN). A DN is a sequence of relative
    #   distinguished names (RDNs). The RDNs are separated by commas in the
    #   certificate.
    #   @return [Types::DistinguishedName]
    #
    # @!attribute [rw] dns_name
    #   Represents `GeneralName` as a DNS name.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   Represents `GeneralName` as an IPv4 or IPv6 address.
    #   @return [String]
    #
    # @!attribute [rw] other_name
    #   Represents `GeneralName` using an `OtherName` object.
    #   @return [Types::OtherName]
    #
    # @!attribute [rw] registered_id
    #   Represents `GeneralName` as an object identifier (OID).
    #   @return [String]
    #
    # @!attribute [rw] rfc_822_name
    #   Represents `GeneralName` as an [RFC 822][1] email address.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc822
    #   @return [String]
    #
    # @!attribute [rw] uniform_resource_identifier
    #   Represents `GeneralName` as a URI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/GeneralName AWS API Documentation
    #
    class GeneralName < Struct.new(
      :directory_name,
      :dns_name,
      :ip_address,
      :other_name,
      :registered_id,
      :rfc_822_name,
      :uniform_resource_identifier,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DirectoryName < GeneralName; end
      class DnsName < GeneralName; end
      class IpAddress < GeneralName; end
      class OtherName < GeneralName; end
      class RegisteredId < GeneralName; end
      class Rfc822Name < GeneralName; end
      class UniformResourceIdentifier < GeneralName; end
      class Unknown < GeneralName; end
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

    # @!attribute [rw] acme_external_account_binding_arn
    #   The Amazon Resource Name (ARN) of the ACME external account binding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/GetAcmeExternalAccountBindingCredentialsRequest AWS API Documentation
    #
    class GetAcmeExternalAccountBindingCredentialsRequest < Struct.new(
      :acme_external_account_binding_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_id
    #   The key identifier for the external account binding credentials.
    #   @return [String]
    #
    # @!attribute [rw] mac_key
    #   The MAC key for the external account binding credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/GetAcmeExternalAccountBindingCredentialsResponse AWS API Documentation
    #
    class GetAcmeExternalAccountBindingCredentialsResponse < Struct.new(
      :key_id,
      :mac_key)
      SENSITIVE = [:mac_key]
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

    # Contains information for HTTP-based domain validation of certificates
    # requested through Amazon CloudFront and issued by ACM. This field
    # exists only when the certificate type is `AMAZON_ISSUED` and the
    # validation method is `HTTP`.
    #
    # @!attribute [rw] redirect_from
    #   The URL including the domain to be validated. The certificate
    #   authority sends `GET` requests here during validation.
    #   @return [String]
    #
    # @!attribute [rw] redirect_to
    #   The URL hosting the validation token. `RedirectFrom` must return
    #   this content or redirect here.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/HttpRedirect AWS API Documentation
    #
    class HttpRedirect < Struct.new(
      :redirect_from,
      :redirect_to)
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

    # The request processing has failed because of an unknown error,
    # exception, or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more of request parameters specified is not valid.
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

    # @!attribute [rw] next_token
    #   A token for pagination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] acme_endpoint_arn
    #   The Amazon Resource Name (ARN) of the ACME endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListAcmeAccountsRequest AWS API Documentation
    #
    class ListAcmeAccountsRequest < Struct.new(
      :next_token,
      :max_results,
      :acme_endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acme_accounts
    #   The list of ACME accounts.
    #   @return [Array<Types::AcmeAccountSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListAcmeAccountsResponse AWS API Documentation
    #
    class ListAcmeAccountsResponse < Struct.new(
      :acme_accounts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token for pagination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] acme_endpoint_arn
    #   The Amazon Resource Name (ARN) of the ACME endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListAcmeDomainValidationsRequest AWS API Documentation
    #
    class ListAcmeDomainValidationsRequest < Struct.new(
      :next_token,
      :max_results,
      :acme_endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acme_domain_validations
    #   The list of domain validations.
    #   @return [Array<Types::AcmeDomainValidationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListAcmeDomainValidationsResponse AWS API Documentation
    #
    class ListAcmeDomainValidationsResponse < Struct.new(
      :acme_domain_validations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token for pagination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListAcmeEndpointsRequest AWS API Documentation
    #
    class ListAcmeEndpointsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acme_endpoints
    #   The list of ACME endpoints.
    #   @return [Array<Types::AcmeEndpointSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListAcmeEndpointsResponse AWS API Documentation
    #
    class ListAcmeEndpointsResponse < Struct.new(
      :acme_endpoints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token for pagination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] acme_endpoint_arn
    #   The Amazon Resource Name (ARN) of the ACME endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListAcmeExternalAccountBindingsRequest AWS API Documentation
    #
    class ListAcmeExternalAccountBindingsRequest < Struct.new(
      :next_token,
      :max_results,
      :acme_endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] external_account_bindings
    #   The list of external account bindings.
    #   @return [Array<Types::AcmeExternalAccountBindingSummary>]
    #
    # @!attribute [rw] next_token
    #   A token for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListAcmeExternalAccountBindingsResponse AWS API Documentation
    #
    class ListAcmeExternalAccountBindingsResponse < Struct.new(
      :external_account_bindings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_statuses
    #   Filter the certificate list by status value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] certificate_key_pair_origins
    #   Filter the certificate list by certificate key pair origin. Specify
    #   one or more `CertificateKeyPairOrigin` values. Default filtering
    #   returns only certificates with key pair origin of `AWS_MANAGED` and
    #   `CUSTOMER_PROVIDED`.
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
      :certificate_key_pair_origins,
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

    # @!attribute [rw] resource_arn
    #   The ARN of the ACM resource for which to list tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a custom ASN.1 X.400 `GeneralName` using an object identifier
    # (OID) and value. For more information, see NIST's definition of
    # [Object Identifier (OID)][1].
    #
    #
    #
    # [1]: https://csrc.nist.gov/glossary/term/Object_Identifier
    #
    # @!attribute [rw] object_identifier
    #   Specifies an OID.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Specifies an OID value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/OtherName AWS API Documentation
    #
    class OtherName < Struct.new(
      :object_identifier,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the prevalidation configuration.
    #
    # @note PrevalidationDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PrevalidationDetails corresponding to the set member.
    #
    # @!attribute [rw] dns_prevalidation
    #   DNS-based prevalidation details.
    #   @return [Types::DnsPrevalidationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/PrevalidationDetails AWS API Documentation
    #
    class PrevalidationDetails < Struct.new(
      :dns_prevalidation,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DnsPrevalidation < PrevalidationDetails; end
      class Unknown < PrevalidationDetails; end
    end

    # Specifies prevalidation options for domain validation.
    #
    # @note PrevalidationOptions is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] dns_prevalidation
    #   DNS-based prevalidation options.
    #   @return [Types::DnsPrevalidationOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/PrevalidationOptions AWS API Documentation
    #
    class PrevalidationOptions < Struct.new(
      :dns_prevalidation,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DnsPrevalidation < PrevalidationOptions; end
      class Unknown < PrevalidationOptions; end
    end

    # Configuration for a public certificate authority.
    #
    # @!attribute [rw] allowed_key_algorithms
    #   The key algorithms allowed for certificates issued by this
    #   certificate authority.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/PublicCertificateAuthority AWS API Documentation
    #
    class PublicCertificateAuthority < Struct.new(
      :allowed_key_algorithms)
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
    #   You can use this parameter to specify whether to export your
    #   certificate.
    #
    #   Certificate transparency logging opt-out is no longer available. All
    #   public certificates are recorded in a certificate transparency log.
    #   For more information, see [Certificate Transparency Logging][1].
    #
    #   You can export public ACM certificates to use with Amazon Web
    #   Services services as well as outside the Amazon Web Services Cloud.
    #   For more information, see [Certificate Manager exportable public
    #   certificate][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency
    #   [2]: https://docs.aws.amazon.com/acm/latest/userguide/acm-exportable-certificates.html
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
    #   supported by all network clients. Some Amazon Web Services services
    #   may require RSA keys, or only support ECDSA keys of a particular
    #   size, while others allow the use of either RSA and ECDSA keys to
    #   ensure that compatibility is not broken. Check the requirements for
    #   the Amazon Web Services service where you plan to deploy your
    #   certificate. For more information about selecting an algorithm, see
    #   [Key algorithms][1].
    #
    #   <note markdown="1"> Algorithms supported for an ACM certificate request include:
    #
    #    * `RSA_2048`
    #
    #   * `EC_prime256v1`
    #
    #   * `EC_secp384r1`
    #
    #    Other listed algorithms are for imported certificates only.
    #
    #    </note>
    #
    #   <note markdown="1"> When you request a private PKI certificate signed by a CA from
    #   Amazon Web Services Private CA, the specified signing algorithm
    #   family (RSA or ECDSA) must match the algorithm family of the CA's
    #   secret key.
    #
    #    </note>
    #
    #   Default: RSA\_2048
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-certificate-characteristics.html#algorithms-term
    #   @return [String]
    #
    # @!attribute [rw] managed_by
    #   Identifies the Amazon Web Services service that manages the
    #   certificate issued by ACM.
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
      :key_algorithm,
      :managed_by)
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
    #   `subdomain.example.com`, ACM sends email to the the following five
    #   addresses:
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

    # @!attribute [rw] acme_endpoint_arn
    #   The Amazon Resource Name (ARN) of the ACME endpoint.
    #   @return [String]
    #
    # @!attribute [rw] account_url
    #   The URL of the ACME account to revoke.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/RevokeAcmeAccountRequest AWS API Documentation
    #
    class RevokeAcmeAccountRequest < Struct.new(
      :acme_endpoint_arn,
      :account_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acme_external_account_binding_arn
    #   The Amazon Resource Name (ARN) of the ACME external account binding
    #   to revoke.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/RevokeAcmeExternalAccountBindingRequest AWS API Documentation
    #
    class RevokeAcmeExternalAccountBindingRequest < Struct.new(
      :acme_external_account_binding_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the public or private certificate
    #   that will be revoked. The ARN must have the following form:
    #
    #   `arn:aws:acm:region:account:certificate/12345678-1234-1234-1234-123456789012`
    #   @return [String]
    #
    # @!attribute [rw] revocation_reason
    #   Specifies why you revoked the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/RevokeCertificateRequest AWS API Documentation
    #
    class RevokeCertificateRequest < Struct.new(
      :certificate_arn,
      :revocation_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the public or private certificate
    #   that was revoked.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/RevokeCertificateResponse AWS API Documentation
    #
    class RevokeCertificateResponse < Struct.new(
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_statement
    #   A filter statement that defines the search criteria. You can combine
    #   multiple filters using AND, OR, and NOT logical operators to create
    #   complex queries.
    #   @return [Types::CertificateFilterStatement]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. Default is
    #   100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Use this parameter only when paginating results and only in a
    #   subsequent request after you receive a response with truncated
    #   results. Set it to the value of `NextToken` from the response you
    #   just received.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Specifies the field to sort results by. Valid values are
    #   CREATED\_AT, NOT\_AFTER, STATUS, RENEWAL\_STATUS, EXPORTED, IN\_USE,
    #   NOT\_BEFORE, KEY\_ALGORITHM, TYPE, CERTIFICATE\_ARN, COMMON\_NAME,
    #   REVOKED\_AT, RENEWAL\_ELIGIBILITY, ISSUED\_AT, MANAGED\_BY,
    #   EXPORT\_OPTION, VALIDATION\_METHOD, and IMPORTED\_AT.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Specifies the order of sorted results. Valid values are ASCENDING or
    #   DESCENDING.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/SearchCertificatesRequest AWS API Documentation
    #
    class SearchCertificatesRequest < Struct.new(
      :filter_statement,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   A list of certificate search results containing certificate ARNs,
    #   X.509 attributes, and ACM metadata.
    #   @return [Array<Types::CertificateSearchResult>]
    #
    # @!attribute [rw] next_token
    #   When the list is truncated, this value is present and contains the
    #   value to use for the `NextToken` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/SearchCertificatesResponse AWS API Documentation
    #
    class SearchCertificatesResponse < Struct.new(
      :results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A service quota has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters certificates by subject alternative name attributes.
    #
    # @note SubjectAlternativeNameFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] dns_name
    #   Filter by DNS name in subject alternative names.
    #   @return [Types::DnsNameFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/SubjectAlternativeNameFilter AWS API Documentation
    #
    class SubjectAlternativeNameFilter < Struct.new(
      :dns_name,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DnsName < SubjectAlternativeNameFilter; end
      class Unknown < SubjectAlternativeNameFilter; end
    end

    # Filters certificates by subject attributes.
    #
    # @note SubjectFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] common_name
    #   Filter by common name in the subject.
    #   @return [Types::CommonNameFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/SubjectFilter AWS API Documentation
    #
    class SubjectFilter < Struct.new(
      :common_name,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CommonName < SubjectFilter; end
      class Unknown < SubjectFilter; end
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

    # @!attribute [rw] resource_arn
    #   The ARN of the ACM resource to which the tag is to be applied.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair that defines the tag to apply.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied because it exceeded a quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] throttling_reasons
    #   One or more reasons why the request was throttled.
    #   @return [Array<Types::ThrottlingReason>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :throttling_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # A description of why a request was throttled.
    #
    # @!attribute [rw] reason
    #   A description of why a request was throttled.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The resource that causes the request to be throttled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ThrottlingReason AWS API Documentation
    #
    class ThrottlingReason < Struct.new(
      :reason,
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a time range for filtering certificates.
    #
    # @!attribute [rw] start
    #   The start of the time range. This value is inclusive.
    #   @return [Time]
    #
    # @!attribute [rw] end
    #   The end of the time range. This value is inclusive.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/TimestampRange AWS API Documentation
    #
    class TimestampRange < Struct.new(
      :start,
      :end)
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

    # @!attribute [rw] resource_arn
    #   The ARN of the ACM resource from which the tag is to be removed.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The key of each tag to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acme_domain_validation_arn
    #   The Amazon Resource Name (ARN) of the ACME domain validation to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] prevalidation_options
    #   The updated prevalidation options.
    #   @return [Types::PrevalidationOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/UpdateAcmeDomainValidationRequest AWS API Documentation
    #
    class UpdateAcmeDomainValidationRequest < Struct.new(
      :acme_domain_validation_arn,
      :prevalidation_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acme_endpoint_arn
    #   The Amazon Resource Name (ARN) of the ACME endpoint to update.
    #   @return [String]
    #
    # @!attribute [rw] authorization_behavior
    #   The updated authorization behavior.
    #   @return [String]
    #
    # @!attribute [rw] contact
    #   The updated contact requirement.
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority
    #   The updated certificate authority configuration.
    #   @return [Types::CertificateAuthority]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/UpdateAcmeEndpointRequest AWS API Documentation
    #
    class UpdateAcmeEndpointRequest < Struct.new(
      :acme_endpoint_arn,
      :authorization_behavior,
      :contact,
      :certificate_authority)
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
    #   specify whether to export your certificate. Certificate transparency
    #   logging opt-out is no longer available. All public certificates are
    #   recorded in a certificate transparency log. For more information,
    #   see [Certificate Transparency Logging][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency
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

    # Filters certificates by X.509 attributes.
    #
    # @note X509AttributeFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] subject
    #   Filter by certificate subject.
    #   @return [Types::SubjectFilter]
    #
    # @!attribute [rw] subject_alternative_name
    #   Filter by subject alternative names.
    #   @return [Types::SubjectAlternativeNameFilter]
    #
    # @!attribute [rw] extended_key_usage
    #   Filter by extended key usage.
    #   @return [String]
    #
    # @!attribute [rw] key_usage
    #   Filter by key usage.
    #   @return [String]
    #
    # @!attribute [rw] key_algorithm
    #   Filter by key algorithm.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   Filter by serial number.
    #   @return [String]
    #
    # @!attribute [rw] not_after
    #   Filter by certificate expiration date. The start date is inclusive.
    #   @return [Types::TimestampRange]
    #
    # @!attribute [rw] not_before
    #   Filter by certificate validity start date. The start date is
    #   inclusive.
    #   @return [Types::TimestampRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/X509AttributeFilter AWS API Documentation
    #
    class X509AttributeFilter < Struct.new(
      :subject,
      :subject_alternative_name,
      :extended_key_usage,
      :key_usage,
      :key_algorithm,
      :serial_number,
      :not_after,
      :not_before,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

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

    # Contains X.509 certificate attributes extracted from the certificate.
    #
    # @!attribute [rw] issuer
    #   The distinguished name of the certificate issuer.
    #   @return [Types::DistinguishedName]
    #
    # @!attribute [rw] subject
    #   The distinguished name of the certificate subject.
    #   @return [Types::DistinguishedName]
    #
    # @!attribute [rw] subject_alternative_names
    #   One or more domain names (subject alternative names) included in the
    #   certificate. This list contains the domain names that are bound to
    #   the public key that is contained in the certificate. The subject
    #   alternative names include the canonical domain name (CN) of the
    #   certificate and additional domain names that can be used to connect
    #   to the website.
    #   @return [Array<Types::GeneralName>]
    #
    # @!attribute [rw] extended_key_usages
    #   Contains a list of Extended Key Usage X.509 v3 extension objects.
    #   Each object specifies a purpose for which the certificate public key
    #   can be used and consists of a name and an object identifier (OID).
    #   @return [Array<String>]
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
    # @!attribute [rw] serial_number
    #   The serial number assigned by the certificate authority.
    #   @return [String]
    #
    # @!attribute [rw] not_after
    #   The time after which the certificate is not valid.
    #   @return [Time]
    #
    # @!attribute [rw] not_before
    #   The time before which the certificate is not valid.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/X509Attributes AWS API Documentation
    #
    class X509Attributes < Struct.new(
      :issuer,
      :subject,
      :subject_alternative_names,
      :extended_key_usages,
      :key_algorithm,
      :key_usages,
      :serial_number,
      :not_after,
      :not_before)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

