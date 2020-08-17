# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ACMPCA
  module Types

    # Contains information about the certificate subject. The certificate
    # can be one issued by your private certificate authority (CA) or it can
    # be your private CA certificate. The **Subject** field in the
    # certificate identifies the entity that owns or controls the public key
    # in the certificate. The entity can be a user, computer, device, or
    # service. The **Subject** must contain an X.500 distinguished name
    # (DN). A DN is a sequence of relative distinguished names (RDNs). The
    # RDNs are separated by commas in the certificate. The DN must be unique
    # for each entity, but your private CA can issue more than one
    # certificate with the same DN to the same entity.
    #
    # @note When making an API call, you may pass ASN1Subject
    #   data as a hash:
    #
    #       {
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
    #       }
    #
    # @!attribute [rw] country
    #   Two-digit code that specifies the country in which the certificate
    #   subject located.
    #   @return [String]
    #
    # @!attribute [rw] organization
    #   Legal name of the organization with which the certificate subject is
    #   affiliated.
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit
    #   A subdivision or unit of the organization (such as sales or finance)
    #   with which the certificate subject is affiliated.
    #   @return [String]
    #
    # @!attribute [rw] distinguished_name_qualifier
    #   Disambiguating information for the certificate subject.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   State in which the subject of the certificate is located.
    #   @return [String]
    #
    # @!attribute [rw] common_name
    #   Fully qualified domain name (FQDN) associated with the certificate
    #   subject.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The certificate serial number.
    #   @return [String]
    #
    # @!attribute [rw] locality
    #   The locality (such as a city or town) in which the certificate
    #   subject is located.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A title such as Mr. or Ms., which is pre-pended to the name to refer
    #   formally to the certificate subject.
    #   @return [String]
    #
    # @!attribute [rw] surname
    #   Family name. In the US and the UK, for example, the surname of an
    #   individual is ordered last. In Asian cultures the surname is
    #   typically ordered first.
    #   @return [String]
    #
    # @!attribute [rw] given_name
    #   First name.
    #   @return [String]
    #
    # @!attribute [rw] initials
    #   Concatenation that typically contains the first letter of the
    #   **GivenName**, the first letter of the middle name if one exists,
    #   and the first letter of the **SurName**.
    #   @return [String]
    #
    # @!attribute [rw] pseudonym
    #   Typically a shortened version of a longer **GivenName**. For
    #   example, Jonathan is often shortened to John. Elizabeth is often
    #   shortened to Beth, Liz, or Eliza.
    #   @return [String]
    #
    # @!attribute [rw] generation_qualifier
    #   Typically a qualifier appended to the name of an individual.
    #   Examples include Jr. for junior, Sr. for senior, and III for third.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ASN1Subject AWS API Documentation
    #
    class ASN1Subject < Struct.new(
      :country,
      :organization,
      :organizational_unit,
      :distinguished_name_qualifier,
      :state,
      :common_name,
      :serial_number,
      :locality,
      :title,
      :surname,
      :given_name,
      :initials,
      :pseudonym,
      :generation_qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about your private certificate authority (CA).
    # Your private CA can issue and revoke X.509 digital certificates.
    # Digital certificates verify that the entity named in the certificate
    # **Subject** field owns or controls the public key contained in the
    # **Subject Public Key Info** field. Call the
    # [CreateCertificateAuthority][1] action to create your private CA. You
    # must then call the [GetCertificateAuthorityCertificate][2] action to
    # retrieve a private CA certificate signing request (CSR). Sign the CSR
    # with your ACM Private CA-hosted or on-premises root or subordinate CA
    # certificate. Call the [ImportCertificateAuthorityCertificate][3]
    # action to import the signed certificate into AWS Certificate Manager
    # (ACM).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html
    # [2]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetCertificateAuthorityCertificate.html
    # [3]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) for your private certificate authority
    #   (CA). The format is ` 12345678-1234-1234-1234-123456789012 `.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The AWS account ID that owns the certificate authority.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Date and time at which your private CA was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_state_change_at
    #   Date and time at which your private CA was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   Type of your private CA.
    #   @return [String]
    #
    # @!attribute [rw] serial
    #   Serial number of your private CA.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of your private CA.
    #   @return [String]
    #
    # @!attribute [rw] not_before
    #   Date and time before which your private CA certificate is not valid.
    #   @return [Time]
    #
    # @!attribute [rw] not_after
    #   Date and time after which your private CA certificate is not valid.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   Reason the request to create your private CA failed.
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority_configuration
    #   Your private CA configuration.
    #   @return [Types::CertificateAuthorityConfiguration]
    #
    # @!attribute [rw] revocation_configuration
    #   Information about the certificate revocation list (CRL) created and
    #   maintained by your private CA.
    #   @return [Types::RevocationConfiguration]
    #
    # @!attribute [rw] restorable_until
    #   The period during which a deleted CA can be restored. For more
    #   information, see the `PermanentDeletionTimeInDays` parameter of the
    #   [DeleteCertificateAuthorityRequest][1] action.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeleteCertificateAuthorityRequest.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CertificateAuthority AWS API Documentation
    #
    class CertificateAuthority < Struct.new(
      :arn,
      :owner_account,
      :created_at,
      :last_state_change_at,
      :type,
      :serial,
      :status,
      :not_before,
      :not_after,
      :failure_reason,
      :certificate_authority_configuration,
      :revocation_configuration,
      :restorable_until)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information for your private certificate
    # authority (CA). This includes information about the class of public
    # key algorithm and the key pair that your private CA creates when it
    # issues a certificate. It also includes the signature algorithm that it
    # uses when issuing certificates, and its X.500 distinguished name. You
    # must specify this information when you call the
    # [CreateCertificateAuthority][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html
    #
    # @note When making an API call, you may pass CertificateAuthorityConfiguration
    #   data as a hash:
    #
    #       {
    #         key_algorithm: "RSA_2048", # required, accepts RSA_2048, RSA_4096, EC_prime256v1, EC_secp384r1
    #         signing_algorithm: "SHA256WITHECDSA", # required, accepts SHA256WITHECDSA, SHA384WITHECDSA, SHA512WITHECDSA, SHA256WITHRSA, SHA384WITHRSA, SHA512WITHRSA
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
    #         },
    #       }
    #
    # @!attribute [rw] key_algorithm
    #   Type of the public key algorithm and size, in bits, of the key pair
    #   that your CA creates when it issues a certificate. When you create a
    #   subordinate CA, you must use a key algorithm supported by the parent
    #   CA.
    #   @return [String]
    #
    # @!attribute [rw] signing_algorithm
    #   Name of the algorithm your private CA uses to sign certificate
    #   requests.
    #
    #   This parameter should not be confused with the `SigningAlgorithm`
    #   parameter used to sign certificates when they are issued.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   Structure that contains X.500 distinguished name information for
    #   your private CA.
    #   @return [Types::ASN1Subject]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CertificateAuthorityConfiguration AWS API Documentation
    #
    class CertificateAuthorityConfiguration < Struct.new(
      :key_algorithm,
      :signing_algorithm,
      :subject)
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate authority certificate you are importing does not
    # comply with conditions specified in the certificate that signed it.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CertificateMismatchException AWS API Documentation
    #
    class CertificateMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A previous update to your private CA is still ongoing.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCertificateAuthorityAuditReportRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #         s3_bucket_name: "S3BucketName", # required
    #         audit_report_response_format: "JSON", # required, accepts JSON, CSV
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the CA to be audited. This is of
    #   the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the S3 bucket that will contain the audit report.
    #   @return [String]
    #
    # @!attribute [rw] audit_report_response_format
    #   The format in which to create the report. This can be either
    #   **JSON** or **CSV**.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CreateCertificateAuthorityAuditReportRequest AWS API Documentation
    #
    class CreateCertificateAuthorityAuditReportRequest < Struct.new(
      :certificate_authority_arn,
      :s3_bucket_name,
      :audit_report_response_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] audit_report_id
    #   An alphanumeric string that contains a report identifier.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The **key** that uniquely identifies the report file in your S3
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CreateCertificateAuthorityAuditReportResponse AWS API Documentation
    #
    class CreateCertificateAuthorityAuditReportResponse < Struct.new(
      :audit_report_id,
      :s3_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCertificateAuthorityRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_configuration: { # required
    #           key_algorithm: "RSA_2048", # required, accepts RSA_2048, RSA_4096, EC_prime256v1, EC_secp384r1
    #           signing_algorithm: "SHA256WITHECDSA", # required, accepts SHA256WITHECDSA, SHA384WITHECDSA, SHA512WITHECDSA, SHA256WITHRSA, SHA384WITHRSA, SHA512WITHRSA
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
    #           },
    #         },
    #         revocation_configuration: {
    #           crl_configuration: {
    #             enabled: false, # required
    #             expiration_in_days: 1,
    #             custom_cname: "String253",
    #             s3_bucket_name: "String3To255",
    #           },
    #         },
    #         certificate_authority_type: "ROOT", # required, accepts ROOT, SUBORDINATE
    #         idempotency_token: "IdempotencyToken",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] certificate_authority_configuration
    #   Name and bit size of the private key algorithm, the name of the
    #   signing algorithm, and X.500 certificate subject information.
    #   @return [Types::CertificateAuthorityConfiguration]
    #
    # @!attribute [rw] revocation_configuration
    #   Contains a Boolean value that you can use to enable a certification
    #   revocation list (CRL) for the CA, the name of the S3 bucket to which
    #   ACM Private CA will write the CRL, and an optional CNAME alias that
    #   you can use to hide the name of your bucket in the **CRL
    #   Distribution Points** extension of your CA certificate. For more
    #   information, see the [CrlConfiguration][1] structure.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CrlConfiguration.html
    #   @return [Types::RevocationConfiguration]
    #
    # @!attribute [rw] certificate_authority_type
    #   The type of the certificate authority.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   Alphanumeric string that can be used to distinguish between calls to
    #   **CreateCertificateAuthority**. For a given token, ACM Private CA
    #   creates exactly one CA. If you issue a subsequent call using the
    #   same token, ACM Private CA returns the ARN of the existing CA and
    #   takes no further action. If you change the idempotency token across
    #   multiple calls, ACM Private CA creates a unique CA for each unique
    #   token.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that will be attached to the new private CA. You can
    #   associate up to 50 tags with a private CA. For information using
    #   tags with IAM to manage permissions, see [Controlling Access Using
    #   IAM Tags][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CreateCertificateAuthorityRequest AWS API Documentation
    #
    class CreateCertificateAuthorityRequest < Struct.new(
      :certificate_authority_configuration,
      :revocation_configuration,
      :certificate_authority_type,
      :idempotency_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_authority_arn
    #   If successful, the Amazon Resource Name (ARN) of the certificate
    #   authority (CA). This is of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CreateCertificateAuthorityResponse AWS API Documentation
    #
    class CreateCertificateAuthorityResponse < Struct.new(
      :certificate_authority_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePermissionRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #         principal: "Principal", # required
    #         source_account: "AccountId",
    #         actions: ["IssueCertificate"], # required, accepts IssueCertificate, GetCertificate, ListPermissions
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the CA that grants the
    #   permissions. You can find the ARN by calling the
    #   [ListCertificateAuthorities][1] action. This must have the following
    #   form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The AWS service or identity that receives the permission. At this
    #   time, the only valid principal is `acm.amazonaws.com`.
    #   @return [String]
    #
    # @!attribute [rw] source_account
    #   The ID of the calling account.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The actions that the specified AWS service principal can use. These
    #   include `IssueCertificate`, `GetCertificate`, and `ListPermissions`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CreatePermissionRequest AWS API Documentation
    #
    class CreatePermissionRequest < Struct.new(
      :certificate_authority_arn,
      :principal,
      :source_account,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information for a certificate revocation list
    # (CRL). Your private certificate authority (CA) creates base CRLs.
    # Delta CRLs are not supported. You can enable CRLs for your new or an
    # existing private CA by setting the **Enabled** parameter to `true`.
    # Your private CA writes CRLs to an S3 bucket that you specify in the
    # **S3BucketName** parameter. You can hide the name of your bucket by
    # specifying a value for the **CustomCname** parameter. Your private CA
    # copies the CNAME or the S3 bucket name to the **CRL Distribution
    # Points** extension of each certificate it issues. Your S3 bucket
    # policy must give write permission to ACM Private CA.
    #
    # ACM Private CAA assets that are stored in Amazon S3 can be protected
    # with encryption. For more information, see [Encrypting Your CRLs][1].
    #
    # Your private CA uses the value in the **ExpirationInDays** parameter
    # to calculate the **nextUpdate** field in the CRL. The CRL is refreshed
    # at 1/2 the age of next update or when a certificate is revoked. When a
    # certificate is revoked, it is recorded in the next CRL that is
    # generated and in the next audit report. Only time valid certificates
    # are listed in the CRL. Expired certificates are not included.
    #
    # CRLs contain the following fields:
    #
    # * **Version**\: The current version number defined in RFC 5280 is V2.
    #   The integer value is 0x1.
    #
    # * **Signature Algorithm**\: The name of the algorithm used to sign the
    #   CRL.
    #
    # * **Issuer**\: The X.500 distinguished name of your private CA that
    #   issued the CRL.
    #
    # * **Last Update**\: The issue date and time of this CRL.
    #
    # * **Next Update**\: The day and time by which the next CRL will be
    #   issued.
    #
    # * **Revoked Certificates**\: List of revoked certificates. Each list
    #   item contains the following information.
    #
    #   * **Serial Number**\: The serial number, in hexadecimal format, of
    #     the revoked certificate.
    #
    #   * **Revocation Date**\: Date and time the certificate was revoked.
    #
    #   * **CRL Entry Extensions**\: Optional extensions for the CRL entry.
    #
    #     * **X509v3 CRL Reason Code**\: Reason the certificate was revoked.
    #
    #     ^
    #
    # * **CRL Extensions**\: Optional extensions for the CRL.
    #
    #   * **X509v3 Authority Key Identifier**\: Identifies the public key
    #     associated with the private key used to sign the certificate.
    #
    #   * **X509v3 CRL Number:**\: Decimal sequence number for the CRL.
    #
    # * **Signature Algorithm**\: Algorithm used by your private CA to sign
    #   the CRL.
    #
    # * **Signature Value**\: Signature computed over the CRL.
    #
    # Certificate revocation lists created by ACM Private CA are
    # DER-encoded. You can use the following OpenSSL command to list a CRL.
    #
    # `openssl crl -inform DER -text -in crl_path -noout`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#crl-encryption
    #
    # @note When making an API call, you may pass CrlConfiguration
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         expiration_in_days: 1,
    #         custom_cname: "String253",
    #         s3_bucket_name: "String3To255",
    #       }
    #
    # @!attribute [rw] enabled
    #   Boolean value that specifies whether certificate revocation lists
    #   (CRLs) are enabled. You can use this value to enable certificate
    #   revocation for a new CA when you call the
    #   [CreateCertificateAuthority][1] action or for an existing CA when
    #   you call the [UpdateCertificateAuthority][2] action.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html
    #   [2]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html
    #   @return [Boolean]
    #
    # @!attribute [rw] expiration_in_days
    #   Number of days until a certificate expires.
    #   @return [Integer]
    #
    # @!attribute [rw] custom_cname
    #   Name inserted into the certificate **CRL Distribution Points**
    #   extension that enables the use of an alias for the CRL distribution
    #   point. Use this value if you don't want the name of your S3 bucket
    #   to be public.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   Name of the S3 bucket that contains the CRL. If you do not provide a
    #   value for the **CustomCname** argument, the name of your S3 bucket
    #   is placed into the **CRL Distribution Points** extension of the
    #   issued certificate. You can change the name of your bucket by
    #   calling the [UpdateCertificateAuthority][1] action. You must specify
    #   a bucket policy that allows ACM Private CA to write the CRL to your
    #   bucket.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CrlConfiguration AWS API Documentation
    #
    class CrlConfiguration < Struct.new(
      :enabled,
      :expiration_in_days,
      :custom_cname,
      :s3_bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCertificateAuthorityRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #         permanent_deletion_time_in_days: 1,
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateCertificateAuthority][1]. This must have the following form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html
    #   @return [String]
    #
    # @!attribute [rw] permanent_deletion_time_in_days
    #   The number of days to make a CA restorable after it has been
    #   deleted. This can be anywhere from 7 to 30 days, with 30 being the
    #   default.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DeleteCertificateAuthorityRequest AWS API Documentation
    #
    class DeleteCertificateAuthorityRequest < Struct.new(
      :certificate_authority_arn,
      :permanent_deletion_time_in_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePermissionRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #         principal: "Principal", # required
    #         source_account: "AccountId",
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Number (ARN) of the private CA that issued the
    #   permissions. You can find the CA's ARN by calling the
    #   [ListCertificateAuthorities][1] action. This must have the following
    #   form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The AWS service or identity that will have its CA permissions
    #   revoked. At this time, the only valid service principal is
    #   `acm.amazonaws.com`
    #   @return [String]
    #
    # @!attribute [rw] source_account
    #   The AWS account that calls this action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DeletePermissionRequest AWS API Documentation
    #
    class DeletePermissionRequest < Struct.new(
      :certificate_authority_arn,
      :principal,
      :source_account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePolicyRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Number (ARN) of the private CA that will have
    #   its policy deleted. You can find the CA's ARN by calling the
    #   [ListCertificateAuthorities][1] action. The ARN value must have the
    #   form
    #   `arn:aws:acm-pca:region:account:certificate-authority/01234567-89ab-cdef-0123-0123456789ab`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DeletePolicyRequest AWS API Documentation
    #
    class DeletePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCertificateAuthorityAuditReportRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #         audit_report_id: "AuditReportId", # required
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the private CA. This must be of
    #   the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #   @return [String]
    #
    # @!attribute [rw] audit_report_id
    #   The report ID returned by calling the
    #   [CreateCertificateAuthorityAuditReport][1] action.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DescribeCertificateAuthorityAuditReportRequest AWS API Documentation
    #
    class DescribeCertificateAuthorityAuditReportRequest < Struct.new(
      :certificate_authority_arn,
      :audit_report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] audit_report_status
    #   Specifies whether report creation is in progress, has succeeded, or
    #   has failed.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   Name of the S3 bucket that contains the report.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   S3 **key** that uniquely identifies the report file in your S3
    #   bucket.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time at which the report was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DescribeCertificateAuthorityAuditReportResponse AWS API Documentation
    #
    class DescribeCertificateAuthorityAuditReportResponse < Struct.new(
      :audit_report_status,
      :s3_bucket_name,
      :s3_key,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCertificateAuthorityRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateCertificateAuthority][1]. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DescribeCertificateAuthorityRequest AWS API Documentation
    #
    class DescribeCertificateAuthorityRequest < Struct.new(
      :certificate_authority_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_authority
    #   A [CertificateAuthority][1] structure that contains information
    #   about your private CA.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CertificateAuthority.html
    #   @return [Types::CertificateAuthority]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DescribeCertificateAuthorityResponse AWS API Documentation
    #
    class DescribeCertificateAuthorityResponse < Struct.new(
      :certificate_authority)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCertificateAuthorityCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) of your private CA. This is of the
    #   form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetCertificateAuthorityCertificateRequest AWS API Documentation
    #
    class GetCertificateAuthorityCertificateRequest < Struct.new(
      :certificate_authority_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   Base64-encoded certificate authority (CA) certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_chain
    #   Base64-encoded certificate chain that includes any intermediate
    #   certificates and chains up to root on-premises certificate that you
    #   used to sign your private CA certificate. The chain does not include
    #   your private CA certificate. If this is a root CA, the value will be
    #   null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetCertificateAuthorityCertificateResponse AWS API Documentation
    #
    class GetCertificateAuthorityCertificateResponse < Struct.new(
      :certificate,
      :certificate_chain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCertificateAuthorityCsrRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called the
    #   [CreateCertificateAuthority][1] action. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetCertificateAuthorityCsrRequest AWS API Documentation
    #
    class GetCertificateAuthorityCsrRequest < Struct.new(
      :certificate_authority_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] csr
    #   The base64 PEM-encoded certificate signing request (CSR) for your
    #   private CA certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetCertificateAuthorityCsrResponse AWS API Documentation
    #
    class GetCertificateAuthorityCsrResponse < Struct.new(
      :csr)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #         certificate_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateCertificateAuthority][1]. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The ARN of the issued certificate. The ARN contains the certificate
    #   serial number and must be in the following form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012/certificate/286535153982981100925020015808220737245
    #   `
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetCertificateRequest AWS API Documentation
    #
    class GetCertificateRequest < Struct.new(
      :certificate_authority_arn,
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   The base64 PEM-encoded certificate specified by the `CertificateArn`
    #   parameter.
    #   @return [String]
    #
    # @!attribute [rw] certificate_chain
    #   The base64 PEM-encoded certificate chain that chains up to the
    #   on-premises root CA certificate that you used to sign your private
    #   CA certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetCertificateResponse AWS API Documentation
    #
    class GetCertificateResponse < Struct.new(
      :certificate,
      :certificate_chain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPolicyRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Number (ARN) of the private CA that will have
    #   its policy retrieved. You can find the CA's ARN by calling the
    #   ListCertificateAuthorities action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetPolicyRequest AWS API Documentation
    #
    class GetPolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The policy attached to the private CA as a JSON document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetPolicyResponse AWS API Documentation
    #
    class GetPolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportCertificateAuthorityCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #         certificate: "data", # required
    #         certificate_chain: "data",
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateCertificateAuthority][1]. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The PEM-encoded certificate for a private CA. This may be a
    #   self-signed certificate in the case of a root CA, or it may be
    #   signed by another CA that you control.
    #   @return [String]
    #
    # @!attribute [rw] certificate_chain
    #   A PEM-encoded file that contains all of your certificates, other
    #   than the certificate you're importing, chaining up to your root CA.
    #   Your ACM Private CA-hosted or on-premises root certificate is the
    #   last in the chain, and each certificate in the chain signs the one
    #   preceding.
    #
    #   This parameter must be supplied when you import a subordinate CA.
    #   When you import a root CA, there is no chain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ImportCertificateAuthorityCertificateRequest AWS API Documentation
    #
    class ImportCertificateAuthorityCertificateRequest < Struct.new(
      :certificate_authority_arn,
      :certificate,
      :certificate_chain)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more of the specified arguments was not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/InvalidArgsException AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/InvalidArnException AWS API Documentation
    #
    class InvalidArnException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The token specified in the `NextToken` argument is not valid. Use the
    # token returned from your previous call to
    # [ListCertificateAuthorities][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource policy is invalid or is missing a required statement. For
    # general information about IAM policy and statement structure, see
    # [Overview of JSON Policies][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/https:/docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/InvalidPolicyException AWS API Documentation
    #
    class InvalidPolicyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request action cannot be performed or is prohibited.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The state of the private CA does not allow this action to occur.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/InvalidStateException AWS API Documentation
    #
    class InvalidStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tag associated with the CA is not valid. The invalid argument is
    # contained in the message field.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/InvalidTagException AWS API Documentation
    #
    class InvalidTagException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass IssueCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #         csr: "data", # required
    #         signing_algorithm: "SHA256WITHECDSA", # required, accepts SHA256WITHECDSA, SHA384WITHECDSA, SHA512WITHECDSA, SHA256WITHRSA, SHA384WITHRSA, SHA512WITHRSA
    #         template_arn: "Arn",
    #         validity: { # required
    #           value: 1, # required
    #           type: "END_DATE", # required, accepts END_DATE, ABSOLUTE, DAYS, MONTHS, YEARS
    #         },
    #         idempotency_token: "IdempotencyToken",
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateCertificateAuthority][1]. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html
    #   @return [String]
    #
    # @!attribute [rw] csr
    #   The certificate signing request (CSR) for the certificate you want
    #   to issue. You can use the following OpenSSL command to create the
    #   CSR and a 2048 bit RSA private key.
    #
    #   `openssl req -new -newkey rsa:2048 -days 365 -keyout
    #   private/test_cert_priv_key.pem -out csr/test_cert_.csr`
    #
    #   If you have a configuration file, you can use the following OpenSSL
    #   command. The `usr_cert` block in the configuration file contains
    #   your X509 version 3 extensions.
    #
    #   `openssl req -new -config openssl_rsa.cnf -extensions usr_cert
    #   -newkey rsa:2048 -days -365 -keyout private/test_cert_priv_key.pem
    #   -out csr/test_cert_.csr`
    #
    #   Note: A CSR must provide either a *subject name* or a *subject
    #   alternative name* or the request will be rejected.
    #   @return [String]
    #
    # @!attribute [rw] signing_algorithm
    #   The name of the algorithm that will be used to sign the certificate
    #   to be issued.
    #
    #   This parameter should not be confused with the `SigningAlgorithm`
    #   parameter used to sign a CSR.
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   Specifies a custom configuration template to use when issuing a
    #   certificate. If this parameter is not provided, ACM Private CA
    #   defaults to the `EndEntityCertificate/V1` template. For CA
    #   certificates, you should choose the shortest path length that meets
    #   your needs. The path length is indicated by the PathLen*N* portion
    #   of the ARN, where *N* is the [CA depth][1].
    #
    #   Note: The CA depth configured on a subordinate CA certificate must
    #   not exceed the limit set by its parents in the CA hierarchy.
    #
    #   The following service-owned `TemplateArn` values are supported by
    #   ACM Private CA:
    #
    #   * arn:aws:acm-pca:::template/CodeSigningCertificate/V1
    #
    #   * arn:aws:acm-pca:::template/CodeSigningCertificate\_CSRPassthrough/V1
    #
    #   * arn:aws:acm-pca:::template/EndEntityCertificate/V1
    #
    #   * arn:aws:acm-pca:::template/EndEntityCertificate\_CSRPassthrough/V1
    #
    #   * arn:aws:acm-pca:::template/EndEntityClientAuthCertificate/V1
    #
    #   * arn:aws:acm-pca:::template/EndEntityClientAuthCertificate\_CSRPassthrough/V1
    #
    #   * arn:aws:acm-pca:::template/EndEntityServerAuthCertificate/V1
    #
    #   * arn:aws:acm-pca:::template/EndEntityServerAuthCertificate\_CSRPassthrough/V1
    #
    #   * arn:aws:acm-pca:::template/OCSPSigningCertificate/V1
    #
    #   * arn:aws:acm-pca:::template/OCSPSigningCertificate\_CSRPassthrough/V1
    #
    #   * arn:aws:acm-pca:::template/RootCACertificate/V1
    #
    #   * arn:aws:acm-pca:::template/SubordinateCACertificate\_PathLen0/V1
    #
    #   * arn:aws:acm-pca:::template/SubordinateCACertificate\_PathLen1/V1
    #
    #   * arn:aws:acm-pca:::template/SubordinateCACertificate\_PathLen2/V1
    #
    #   * arn:aws:acm-pca:::template/SubordinateCACertificate\_PathLen3/V1
    #
    #   For more information, see [Using Templates][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaTerms.html#terms-cadepth
    #   [2]: https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html
    #   @return [String]
    #
    # @!attribute [rw] validity
    #   Information describing the validity period of the certificate.
    #
    #   When issuing a certificate, ACM Private CA sets the "Not Before"
    #   date in the validity field to date and time minus 60 minutes. This
    #   is intended to compensate for time inconsistencies across systems of
    #   60 minutes or less.
    #
    #   The validity period configured on a certificate must not exceed the
    #   limit set by its parents in the CA hierarchy.
    #   @return [Types::Validity]
    #
    # @!attribute [rw] idempotency_token
    #   Custom string that can be used to distinguish between calls to the
    #   **IssueCertificate** action. Idempotency tokens time out after one
    #   hour. Therefore, if you call **IssueCertificate** multiple times
    #   with the same idempotency token within 5 minutes, ACM Private CA
    #   recognizes that you are requesting only one certificate and will
    #   issue only one. If you change the idempotency token for each call,
    #   PCA recognizes that you are requesting multiple certificates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/IssueCertificateRequest AWS API Documentation
    #
    class IssueCertificateRequest < Struct.new(
      :certificate_authority_arn,
      :csr,
      :signing_algorithm,
      :template_arn,
      :validity,
      :idempotency_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the issued certificate and the
    #   certificate serial number. This is of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012/certificate/286535153982981100925020015808220737245
    #   `
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/IssueCertificateResponse AWS API Documentation
    #
    class IssueCertificateResponse < Struct.new(
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An ACM Private CA quota has been exceeded. See the exception message
    # returned to determine the quota that was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCertificateAuthoritiesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         resource_owner: "SELF", # accepts SELF, OTHER_ACCOUNTS
    #       }
    #
    # @!attribute [rw] next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the `NextToken` parameter from the response you just
    #   received.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Use this parameter when paginating results to specify the maximum
    #   number of items to return in the response on each page. If
    #   additional items exist beyond the number you specify, the
    #   `NextToken` element is sent in the response. Use this `NextToken`
    #   value in a subsequent request to retrieve additional items.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_owner
    #   Use this parameter to filter the returned set of certificate
    #   authorities based on their owner. The default is SELF.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ListCertificateAuthoritiesRequest AWS API Documentation
    #
    class ListCertificateAuthoritiesRequest < Struct.new(
      :next_token,
      :max_results,
      :resource_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_authorities
    #   Summary information about each certificate authority you have
    #   created.
    #   @return [Array<Types::CertificateAuthority>]
    #
    # @!attribute [rw] next_token
    #   When the list is truncated, this value is present and should be used
    #   for the `NextToken` parameter in a subsequent pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ListCertificateAuthoritiesResponse AWS API Documentation
    #
    class ListCertificateAuthoritiesResponse < Struct.new(
      :certificate_authorities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPermissionsRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Number (ARN) of the private CA to inspect. You
    #   can find the ARN by calling the [ListCertificateAuthorities][1]
    #   action. This must be of the form:
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012`
    #   You can get a private CA's ARN by running the
    #   [ListCertificateAuthorities][1] action.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   When paginating results, use this parameter in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of **NextToken** from the response you just received.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   When paginating results, use this parameter to specify the maximum
    #   number of items to return in the response. If additional items exist
    #   beyond the number you specify, the **NextToken** element is sent in
    #   the response. Use this **NextToken** value in a subsequent request
    #   to retrieve additional items.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ListPermissionsRequest AWS API Documentation
    #
    class ListPermissionsRequest < Struct.new(
      :certificate_authority_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permissions
    #   Summary information about each permission assigned by the specified
    #   private CA, including the action enabled, the policy provided, and
    #   the time of creation.
    #   @return [Array<Types::Permission>]
    #
    # @!attribute [rw] next_token
    #   When the list is truncated, this value is present and should be used
    #   for the **NextToken** parameter in a subsequent pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ListPermissionsResponse AWS API Documentation
    #
    class ListPermissionsResponse < Struct.new(
      :permissions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called the
    #   [CreateCertificateAuthority][1] action. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of **NextToken** from the response you just received.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Use this parameter when paginating results to specify the maximum
    #   number of items to return in the response. If additional items exist
    #   beyond the number you specify, the **NextToken** element is sent in
    #   the response. Use this **NextToken** value in a subsequent request
    #   to retrieve additional items.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ListTagsRequest AWS API Documentation
    #
    class ListTagsRequest < Struct.new(
      :certificate_authority_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with your private CA.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   When the list is truncated, this value is present and should be used
    #   for the **NextToken** parameter in a subsequent pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ListTagsResponse AWS API Documentation
    #
    class ListTagsResponse < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current action was prevented because it would lock the caller out
    # from performing subsequent actions. Verify that the specified
    # parameters would not result in the caller being denied access to the
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/LockoutPreventedException AWS API Documentation
    #
    class LockoutPreventedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate signing request is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/MalformedCSRException AWS API Documentation
    #
    class MalformedCSRException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more fields in the certificate are invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/MalformedCertificateException AWS API Documentation
    #
    class MalformedCertificateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Permissions designate which private CA actions can be performed by an
    # AWS service or entity. In order for ACM to automatically renew private
    # certificates, you must give the ACM service principal all available
    # permissions (`IssueCertificate`, `GetCertificate`, and
    # `ListPermissions`). Permissions can be assigned with the
    # [CreatePermission][1] action, removed with the [DeletePermission][2]
    # action, and listed with the [ListPermissions][3] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreatePermission.html
    # [2]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePermission.html
    # [3]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListPermissions.html
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Number (ARN) of the private CA from which the
    #   permission was issued.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the permission was created.
    #   @return [Time]
    #
    # @!attribute [rw] principal
    #   The AWS service or entity that holds the permission. At this time,
    #   the only valid principal is `acm.amazonaws.com`.
    #   @return [String]
    #
    # @!attribute [rw] source_account
    #   The ID of the account that assigned the permission.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The private CA actions that can be performed by the designated AWS
    #   service.
    #   @return [Array<String>]
    #
    # @!attribute [rw] policy
    #   The name of the policy that is associated with the permission.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/Permission AWS API Documentation
    #
    class Permission < Struct.new(
      :certificate_authority_arn,
      :created_at,
      :principal,
      :source_account,
      :actions,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The designated permission has already been given to the user.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/PermissionAlreadyExistsException AWS API Documentation
    #
    class PermissionAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutPolicyRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         policy: "AWSPolicy", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Number (ARN) of the private CA to associate with
    #   the policy. The ARN of the CA can be found by calling the
    #   [ListCertificateAuthorities][1] action.
    #
    #
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The path and filename of a JSON-formatted IAM policy to attach to
    #   the specified private CA resource. If this policy does not contain
    #   all required statements or if it includes any statement that is not
    #   allowed, the `PutPolicy` action returns an `InvalidPolicyException`.
    #   For information about IAM policy and statement structure, see
    #   [Overview of JSON Policies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/PutPolicyRequest AWS API Documentation
    #
    class PutPolicyRequest < Struct.new(
      :resource_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request has already been completed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/RequestAlreadyProcessedException AWS API Documentation
    #
    class RequestAlreadyProcessedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has failed for an unspecified reason.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/RequestFailedException AWS API Documentation
    #
    class RequestFailedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request is already in progress.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/RequestInProgressException AWS API Documentation
    #
    class RequestInProgressException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource such as a private CA, S3 bucket, certificate, audit report,
    # or policy cannot be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestoreCertificateAuthorityRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called the
    #   [CreateCertificateAuthority][1] action. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/RestoreCertificateAuthorityRequest AWS API Documentation
    #
    class RestoreCertificateAuthorityRequest < Struct.new(
      :certificate_authority_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Certificate revocation information used by the
    # [CreateCertificateAuthority][1] and [UpdateCertificateAuthority][2]
    # actions. Your private certificate authority (CA) can create and
    # maintain a certificate revocation list (CRL). A CRL contains
    # information about certificates revoked by your CA. For more
    # information, see [RevokeCertificate][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html
    # [2]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html
    # [3]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RevokeCertificate.html
    #
    # @note When making an API call, you may pass RevocationConfiguration
    #   data as a hash:
    #
    #       {
    #         crl_configuration: {
    #           enabled: false, # required
    #           expiration_in_days: 1,
    #           custom_cname: "String253",
    #           s3_bucket_name: "String3To255",
    #         },
    #       }
    #
    # @!attribute [rw] crl_configuration
    #   Configuration of the certificate revocation list (CRL), if any,
    #   maintained by your private CA.
    #   @return [Types::CrlConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/RevocationConfiguration AWS API Documentation
    #
    class RevocationConfiguration < Struct.new(
      :crl_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RevokeCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #         certificate_serial: "String128", # required
    #         revocation_reason: "UNSPECIFIED", # required, accepts UNSPECIFIED, KEY_COMPROMISE, CERTIFICATE_AUTHORITY_COMPROMISE, AFFILIATION_CHANGED, SUPERSEDED, CESSATION_OF_OPERATION, PRIVILEGE_WITHDRAWN, A_A_COMPROMISE
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   Amazon Resource Name (ARN) of the private CA that issued the
    #   certificate to be revoked. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #   @return [String]
    #
    # @!attribute [rw] certificate_serial
    #   Serial number of the certificate to be revoked. This must be in
    #   hexadecimal format. You can retrieve the serial number by calling
    #   [GetCertificate][1] with the Amazon Resource Name (ARN) of the
    #   certificate you want and the ARN of your private CA. The
    #   **GetCertificate** action retrieves the certificate in the PEM
    #   format. You can use the following OpenSSL command to list the
    #   certificate in text format and copy the hexadecimal serial number.
    #
    #   `openssl x509 -in file_path -text -noout`
    #
    #   You can also copy the serial number from the console or use the
    #   [DescribeCertificate][2] action in the *AWS Certificate Manager API
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetCertificate.html
    #   [2]: https://docs.aws.amazon.com/acm/latest/APIReference/API_DescribeCertificate.html
    #   @return [String]
    #
    # @!attribute [rw] revocation_reason
    #   Specifies why you revoked the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/RevokeCertificateRequest AWS API Documentation
    #
    class RevokeCertificateRequest < Struct.new(
      :certificate_authority_arn,
      :certificate_serial,
      :revocation_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Tags are labels that you can use to identify and organize your private
    # CAs. Each tag consists of a key and an optional value. You can
    # associate up to 50 tags with a private CA. To add one or more tags to
    # a private CA, call the [TagCertificateAuthority][1] action. To remove
    # a tag, call the [UntagCertificateAuthority][2] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_TagCertificateAuthority.html
    # [2]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UntagCertificateAuthority.html
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
    #   Key (name) of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagCertificateAuthorityRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateCertificateAuthority][1]. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   List of tags to be associated with the CA.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/TagCertificateAuthorityRequest AWS API Documentation
    #
    class TagCertificateAuthorityRequest < Struct.new(
      :certificate_authority_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can associate up to 50 tags with a private CA. Exception
    # information is contained in the exception message field.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagCertificateAuthorityRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateCertificateAuthority][1]. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   List of tags to be removed from the CA.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/UntagCertificateAuthorityRequest AWS API Documentation
    #
    class UntagCertificateAuthorityRequest < Struct.new(
      :certificate_authority_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateCertificateAuthorityRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #         revocation_configuration: {
    #           crl_configuration: {
    #             enabled: false, # required
    #             expiration_in_days: 1,
    #             custom_cname: "String253",
    #             s3_bucket_name: "String3To255",
    #           },
    #         },
    #         status: "CREATING", # accepts CREATING, PENDING_CERTIFICATE, ACTIVE, DELETED, DISABLED, EXPIRED, FAILED
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   Amazon Resource Name (ARN) of the private CA that issued the
    #   certificate to be revoked. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #   @return [String]
    #
    # @!attribute [rw] revocation_configuration
    #   Revocation information for your private CA.
    #   @return [Types::RevocationConfiguration]
    #
    # @!attribute [rw] status
    #   Status of your private CA.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/UpdateCertificateAuthorityRequest AWS API Documentation
    #
    class UpdateCertificateAuthorityRequest < Struct.new(
      :certificate_authority_arn,
      :revocation_configuration,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validity specifies the period of time during which a certificate is
    # valid. Validity can be expressed as an explicit date and time when the
    # certificate expires, or as a span of time after issuance, stated in
    # days, months, or years. For more information, see [Validity][1] in RFC
    # 5280.
    #
    # You can issue a certificate by calling the [IssueCertificate][2]
    # action.
    #
    #
    #
    # [1]: https://tools.ietf.org/html/rfc5280#section-4.1.2.5
    # [2]: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_IssueCertificate.html
    #
    # @note When making an API call, you may pass Validity
    #   data as a hash:
    #
    #       {
    #         value: 1, # required
    #         type: "END_DATE", # required, accepts END_DATE, ABSOLUTE, DAYS, MONTHS, YEARS
    #       }
    #
    # @!attribute [rw] value
    #   A long integer interpreted according to the value of `Type`, below.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   Determines how *ACM Private CA* interprets the `Value` parameter, an
    #   integer. Supported validity types include those listed below. Type
    #   definitions with values include a sample input value and the
    #   resulting output.
    #
    #   `END_DATE`\: The specific date and time when the certificate will
    #   expire, expressed using UTCTime (YYMMDDHHMMSS) or GeneralizedTime
    #   (YYYYMMDDHHMMSS) format. When UTCTime is used, if the year field
    #   (YY) is greater than or equal to 50, the year is interpreted as
    #   19YY. If the year field is less than 50, the year is interpreted as
    #   20YY.
    #
    #   * Sample input value: 491231235959 (UTCTime format)
    #
    #   * Output expiration date/time: 12/31/2049 23:59:59
    #
    #   `ABSOLUTE`\: The specific date and time when the certificate will
    #   expire, expressed in seconds since the Unix Epoch.
    #
    #   * Sample input value: 2524608000
    #
    #   * Output expiration date/time: 01/01/2050 00:00:00
    #
    #   `DAYS`, `MONTHS`, `YEARS`\: The relative time from the moment of
    #   issuance until the certificate will expire, expressed in days,
    #   months, or years.
    #
    #   Example if `DAYS`, issued on 10/12/2020 at 12:34:54 UTC:
    #
    #   * Sample input value: 90
    #
    #   * Output expiration date: 01/10/2020 12:34:54 UTC
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/Validity AWS API Documentation
    #
    class Validity < Struct.new(
      :value,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
