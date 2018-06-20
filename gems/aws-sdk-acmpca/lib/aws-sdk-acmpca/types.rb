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
      include Aws::Structure
    end

    # Contains information about your private certificate authority (CA).
    # Your private CA can issue and revoke X.509 digital certificates.
    # Digital certificates verify that the entity named in the certificate
    # **Subject** field owns or controls the public key contained in the
    # **Subject Public Key Info** field. Call the CreateCertificateAuthority
    # operation to create your private CA. You must then call the
    # GetCertificateAuthorityCertificate operation to retrieve a private CA
    # certificate signing request (CSR). Take the CSR to your on-premises CA
    # and sign it with the root CA certificate or a subordinate certificate.
    # Call the ImportCertificateAuthorityCertificate operation to import the
    # signed certificate into AWS Certificate Manager (ACM).
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) for your private certificate authority
    #   (CA). The format is ` 12345678-1234-1234-1234-123456789012 `.
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
    #   DeleteCertificateAuthorityRequest operation.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CertificateAuthority AWS API Documentation
    #
    class CertificateAuthority < Struct.new(
      :arn,
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
      include Aws::Structure
    end

    # Contains configuration information for your private certificate
    # authority (CA). This includes information about the class of public
    # key algorithm and the key pair that your private CA creates when it
    # issues a certificate, the signature algorithm it uses used when
    # issuing certificates, and its X.500 distinguished name. You must
    # specify this information when you call the CreateCertificateAuthority
    # operation.
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
    #           distinguished_name_qualifier: "DistinguishedNameQualifierString",
    #           state: "String128",
    #           common_name: "String64",
    #           serial_number: "String64",
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
    #   that your key pair creates when it issues a certificate.
    #   @return [String]
    #
    # @!attribute [rw] signing_algorithm
    #   Name of the algorithm your private CA uses to sign certificate
    #   requests.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCertificateAuthorityAuditReportRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #         s3_bucket_name: "String", # required
    #         audit_report_response_format: "JSON", # required, accepts JSON, CSV
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   Amazon Resource Name (ARN) of the CA to be audited. This is of the
    #   form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   Name of the S3 bucket that will contain the audit report.
    #   @return [String]
    #
    # @!attribute [rw] audit_report_response_format
    #   Format in which to create the report. This can be either **JSON** or
    #   **CSV**.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CreateCertificateAuthorityAuditReportRequest AWS API Documentation
    #
    class CreateCertificateAuthorityAuditReportRequest < Struct.new(
      :certificate_authority_arn,
      :s3_bucket_name,
      :audit_report_response_format)
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
    #             distinguished_name_qualifier: "DistinguishedNameQualifierString",
    #             state: "String128",
    #             common_name: "String64",
    #             serial_number: "String64",
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
    #         certificate_authority_type: "SUBORDINATE", # required, accepts SUBORDINATE
    #         idempotency_token: "IdempotencyToken",
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
    #   ACM PCA will write the CRL, and an optional CNAME alias that you can
    #   use to hide the name of your bucket in the **CRL Distribution
    #   Points** extension of your CA certificate. For more information, see
    #   the CrlConfiguration structure.
    #   @return [Types::RevocationConfiguration]
    #
    # @!attribute [rw] certificate_authority_type
    #   The type of the certificate authority. Currently, this must be
    #   **SUBORDINATE**.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   Alphanumeric string that can be used to distinguish between calls to
    #   **CreateCertificateAuthority**. Idempotency tokens time out after
    #   five minutes. Therefore, if you call **CreateCertificateAuthority**
    #   multiple times with the same idempotency token within a five minute
    #   period, ACM PCA recognizes that you are requesting only one
    #   certificate. As a result, ACM PCA issues only one. If you change the
    #   idempotency token for each call, however, ACM PCA recognizes that
    #   you are requesting multiple certificates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CreateCertificateAuthorityRequest AWS API Documentation
    #
    class CreateCertificateAuthorityRequest < Struct.new(
      :certificate_authority_configuration,
      :revocation_configuration,
      :certificate_authority_type,
      :idempotency_token)
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
    # policy must give write permission to ACM PCA.
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
    # Certificate revocation lists created by ACM PCA are DER-encoded. You
    # can use the following OpenSSL command to list a CRL.
    #
    # `openssl crl -inform DER -text -in crl_path -noout`
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
    #   revocation for a new CA when you call the CreateCertificateAuthority
    #   operation or for an existing CA when you call the
    #   UpdateCertificateAuthority operation.
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
    #   calling the UpdateCertificateAuthority operation. You must specify a
    #   bucket policy that allows ACM PCA to write the CRL to your bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CrlConfiguration AWS API Documentation
    #
    class CrlConfiguration < Struct.new(
      :enabled,
      :expiration_in_days,
      :custom_cname,
      :s3_bucket_name)
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
    #   CreateCertificateAuthority. This must have the following form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
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
    #   CreateCertificateAuthorityAuditReport operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DescribeCertificateAuthorityAuditReportRequest AWS API Documentation
    #
    class DescribeCertificateAuthorityAuditReportRequest < Struct.new(
      :certificate_authority_arn,
      :audit_report_id)
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
    #   CreateCertificateAuthority. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DescribeCertificateAuthorityRequest AWS API Documentation
    #
    class DescribeCertificateAuthorityRequest < Struct.new(
      :certificate_authority_arn)
      include Aws::Structure
    end

    # @!attribute [rw] certificate_authority
    #   A CertificateAuthority structure that contains information about
    #   your private CA.
    #   @return [Types::CertificateAuthority]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DescribeCertificateAuthorityResponse AWS API Documentation
    #
    class DescribeCertificateAuthorityResponse < Struct.new(
      :certificate_authority)
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
    #   your private CA certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetCertificateAuthorityCertificateResponse AWS API Documentation
    #
    class GetCertificateAuthorityCertificateResponse < Struct.new(
      :certificate,
      :certificate_chain)
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
    #   CreateCertificateAuthority operation. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetCertificateAuthorityCsrRequest AWS API Documentation
    #
    class GetCertificateAuthorityCsrRequest < Struct.new(
      :certificate_authority_arn)
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
    #   CreateCertificateAuthority. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportCertificateAuthorityCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #         certificate: "data", # required
    #         certificate_chain: "data", # required
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   CreateCertificateAuthority. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The PEM-encoded certificate for your private CA. This must be signed
    #   by using your on-premises CA.
    #   @return [String]
    #
    # @!attribute [rw] certificate_chain
    #   A PEM-encoded file that contains all of your certificates, other
    #   than the certificate you're importing, chaining up to your root CA.
    #   Your on-premises root certificate is the last in the chain, and each
    #   certificate in the chain signs the one preceding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ImportCertificateAuthorityCertificateRequest AWS API Documentation
    #
    class ImportCertificateAuthorityCertificateRequest < Struct.new(
      :certificate_authority_arn,
      :certificate,
      :certificate_chain)
      include Aws::Structure
    end

    # @note When making an API call, you may pass IssueCertificateRequest
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "Arn", # required
    #         csr: "data", # required
    #         signing_algorithm: "SHA256WITHECDSA", # required, accepts SHA256WITHECDSA, SHA384WITHECDSA, SHA512WITHECDSA, SHA256WITHRSA, SHA384WITHRSA, SHA512WITHRSA
    #         validity: { # required
    #           value: 1, # required
    #           type: "END_DATE", # required, accepts END_DATE, ABSOLUTE, DAYS, MONTHS, YEARS
    #         },
    #         idempotency_token: "IdempotencyToken",
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   CreateCertificateAuthority. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
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
    #   @return [String]
    #
    # @!attribute [rw] signing_algorithm
    #   The name of the algorithm that will be used to sign the certificate
    #   to be issued.
    #   @return [String]
    #
    # @!attribute [rw] validity
    #   The type of the validity period.
    #   @return [Types::Validity]
    #
    # @!attribute [rw] idempotency_token
    #   Custom string that can be used to distinguish between calls to the
    #   **IssueCertificate** operation. Idempotency tokens time out after
    #   one hour. Therefore, if you call **IssueCertificate** multiple times
    #   with the same idempotency token within 5 minutes, ACM PCA recognizes
    #   that you are requesting only one certificate and will issue only
    #   one. If you change the idempotency token for each call, PCA
    #   recognizes that you are requesting multiple certificates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/IssueCertificateRequest AWS API Documentation
    #
    class IssueCertificateRequest < Struct.new(
      :certificate_authority_arn,
      :csr,
      :signing_algorithm,
      :validity,
      :idempotency_token)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCertificateAuthoritiesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ListCertificateAuthoritiesRequest AWS API Documentation
    #
    class ListCertificateAuthoritiesRequest < Struct.new(
      :next_token,
      :max_results)
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
    #   CreateCertificateAuthority operation. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
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
    #   CreateCertificateAuthority operation. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/RestoreCertificateAuthorityRequest AWS API Documentation
    #
    class RestoreCertificateAuthorityRequest < Struct.new(
      :certificate_authority_arn)
      include Aws::Structure
    end

    # Certificate revocation information used by the
    # CreateCertificateAuthority and UpdateCertificateAuthority operations.
    # Your private certificate authority (CA) can create and maintain a
    # certificate revocation list (CRL). A CRL contains information about
    # certificates revoked by your CA. For more information, see
    # RevokeCertificate.
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
    #   GetCertificate with the Amazon Resource Name (ARN) of the
    #   certificate you want and the ARN of your private CA. The
    #   **GetCertificate** operation retrieves the certificate in the PEM
    #   format. You can use the following OpenSSL command to list the
    #   certificate in text format and copy the hexadecimal serial number.
    #
    #   `openssl x509 -in file_path -text -noout`
    #
    #   You can also copy the serial number from the console or use the
    #   [DescribeCertificate][1] operation in the *AWS Certificate Manager
    #   API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/APIReference/API_DescribeCertificate.html
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
      include Aws::Structure
    end

    # Tags are labels that you can use to identify and organize your private
    # CAs. Each tag consists of a key and an optional value. You can
    # associate up to 50 tags with a private CA. To add one or more tags to
    # a private CA, call the TagCertificateAuthority operation. To remove a
    # tag, call the UntagCertificateAuthority operation.
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
    #   CreateCertificateAuthority. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
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
    #   CreateCertificateAuthority. This must be of the form:
    #
    #   `arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012
    #   `
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
      include Aws::Structure
    end

    # Length of time for which the certificate issued by your private
    # certificate authority (CA), or by the private CA itself, is valid in
    # days, months, or years. You can issue a certificate by calling the
    # IssueCertificate operation.
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
    #   Time period.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   Specifies whether the `Value` parameter represents days, months, or
    #   years.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/Validity AWS API Documentation
    #
    class Validity < Struct.new(
      :value,
      :type)
      include Aws::Structure
    end

  end
end
