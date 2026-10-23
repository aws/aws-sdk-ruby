# frozen_string_literal: true

# This is generated code!

module Aws::PcaConnectorAd
  # This module contains the types returned by client operations.
  module Types

    # <p> An access control entry allows or denies Active Directory groups based on their security
    #          identifiers (SIDs) from enrolling and/or autoenrolling with the template.</p>
    # @!attribute group_display_name
    #   <p>Name of the Active Directory group. This name does not need to match the group name in Active Directory.</p>
    #   @return [String]
    # @!attribute group_security_identifier
    #   <p>Security identifier (SID) of the group object from Active Directory. The SID starts with
    #            "S-".</p>
    #   @return [String]
    # @!attribute access_rights
    #   <p>Permissions to allow or deny an Active Directory group to enroll or autoenroll certificates issued
    #            against a template.</p>
    #   @return [Types::AccessRights]
    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the Access Control Entry was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time that the Access Control Entry was updated.</p>
    #   @return [Time]
    class AccessControlEntry < Struct.new(
      nil,
      :group_display_name,
      :group_security_identifier,
      :access_rights,
      :template_arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of group access control entries that allow or deny Active Directory groups based on their
    #          security identifiers (SIDs) from enrolling and/or autofenrolling with the template.</p>
    # @!attribute group_display_name
    #   <p>Name of the Active Directory group. This name does not need to match the group name in Active Directory.</p>
    #   @return [String]
    # @!attribute group_security_identifier
    #   <p>Security identifier (SID) of the group object from Active Directory. The SID starts with
    #            "S-".</p>
    #   @return [String]
    # @!attribute access_rights
    #   <p>Allow or deny an Active Directory group from enrolling and autoenrolling certificates issued against
    #            a template.</p>
    #   @return [Types::AccessRights]
    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the Access Control Entry was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time that the Access Control Entry was updated.</p>
    #   @return [Time]
    class AccessControlEntrySummary < Struct.new(
      nil,
      :group_display_name,
      :group_security_identifier,
      :access_rights,
      :template_arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You can receive this error if you attempt to create a resource share when you don't have
    #          the required permissions. This can be caused by insufficient permissions in policies
    #          attached to your Amazon Web Services Identity and Access Management (IAM) principal. It can also happen
    #          because of restrictions in place from an Amazon Web Services Organizations service control policy (SCP)
    #          that affects your Amazon Web Services account. </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Allow or deny permissions for an Active Directory group to enroll or autoenroll certificates for a
    #          template.</p>
    # @!attribute enroll
    #   <p>Allow or deny an Active Directory group from enrolling certificates issued against a
    #            template.</p>
    #   @return [String]
    # @!attribute auto_enroll
    #   <p>Allow or deny an Active Directory group from autoenrolling certificates issued against a template.
    #            The Active Directory group must be allowed to enroll to allow autoenrollment</p>
    #   @return [String]
    class AccessRights < Struct.new(
      nil,
      :enroll,
      :auto_enroll,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Application policies describe what the certificate can be used for.</p>
    # @!attribute critical
    #   <p>Marks the application policy extension as critical.</p>
    #   @return [Boolean]
    # @!attribute policies
    #   <p>Application policies describe what the certificate can be used for.</p>
    #   @return [Array<Types::ApplicationPolicy>]
    class ApplicationPolicies < Struct.new(
      nil,
      :critical,
      :policies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Application policies describe what the certificate can be used for.</p>
    # @!attribute policy_type
    #   <p>The type of application policy</p>
    #   @return [String]
    # @!attribute policy_object_identifier
    #   <p>The object identifier (OID) of an application policy.</p>
    #   @return [String]
    class ApplicationPolicy < Struct.new(
      :policy_type,
      :policy_object_identifier,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PolicyType < ApplicationPolicy; end
      class PolicyObjectIdentifier < ApplicationPolicy; end
      class Unknown < ApplicationPolicy; end
    end

    # <p>Information describing the end of the validity period of the certificate. This parameter
    #          sets the “Not After” date for the certificate. Certificate validity is the period of time
    #          during which a certificate is valid. Validity can be expressed as an explicit date and time
    #          when the certificate expires, or as a span of time after issuance, stated in days, months,
    #          or years. For more information, see Validity in RFC 5280. This value is unaffected when
    #          ValidityNotBefore is also specified. For example, if Validity is set to 20 days in the
    #          future, the certificate will expire 20 days from issuance time regardless of the
    #          ValidityNotBefore value.</p>
    # @!attribute validity_period
    #   <p>Information describing the end of the validity period of the certificate. This parameter
    #            sets the “Not After” date for the certificate. Certificate validity is the period of time
    #            during which a certificate is valid. Validity can be expressed as an explicit date and time
    #            when the certificate expires, or as a span of time after issuance, stated in days, months,
    #            or years. For more information, see Validity in RFC 5280. This value is unaffected when
    #            ValidityNotBefore is also specified. For example, if Validity is set to 20 days in the
    #            future, the certificate will expire 20 days from issuance time regardless of the
    #            ValidityNotBefore value.</p>
    #   @return [Types::ValidityPeriod]
    # @!attribute renewal_period
    #   <p>Renewal period is the period of time before certificate expiration when a new
    #            certificate will be requested.</p>
    #   @return [Types::ValidityPeriod]
    class CertificateValidity < Struct.new(
      nil,
      :validity_period,
      :renewal_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This request cannot be completed for one of the following reasons because the requested
    #          resource was being concurrently modified by another request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type, which can be one of <code>Connector</code>, <code>Template</code>, <code>TemplateGroupAccessControlEntry</code>, <code>ServicePrincipalName</code>, or <code>DirectoryRegistration</code>.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Web Services Private CA Connector for Active Directory is a service that links your Active Directory with Amazon Web Services Private CA. The connector brokers the
    #          exchange of certificates from Amazon Web Services Private CA to domain-joined users and machines managed with
    #          Active Directory.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>. </p>
    #   @return [String]
    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate authority being used. </p>
    #   @return [String]
    # @!attribute certificate_enrollment_policy_server_endpoint
    #   <p>Certificate enrollment endpoint for Active Directory domain-joined objects reach out to when
    #            requesting certificates.</p>
    #   @return [String]
    # @!attribute directory_id
    #   <p>The identifier of the Active Directory.</p>
    #   @return [String]
    # @!attribute vpc_information
    #   <p>Information of the VPC and security group(s) used with the connector.</p>
    #   @return [Types::VpcInformation]
    # @!attribute status
    #   <p>Status of the connector. Status can be creating, active, deleting, or failed.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Additional information about the connector status if the status is failed.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the connector was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time that the connector was updated.</p>
    #   @return [Time]
    class Connector < Struct.new(
      nil,
      :arn,
      :certificate_authority_arn,
      :certificate_enrollment_policy_server_endpoint,
      :directory_id,
      :vpc_information,
      :status,
      :status_reason,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary description of the Amazon Web Services Private CA AD connectors belonging to an Amazon Web Services
    #          account.</p>
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    #   @return [String]
    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate authority being used.</p>
    #   @return [String]
    # @!attribute certificate_enrollment_policy_server_endpoint
    #   <p>Certificate enrollment endpoint for Active Directory domain-joined objects to request
    #            certificates.</p>
    #   @return [String]
    # @!attribute directory_id
    #   <p>The identifier of the Active Directory.</p>
    #   @return [String]
    # @!attribute vpc_information
    #   <p>Information of the VPC and security group(s) used with the connector.</p>
    #   @return [Types::VpcInformation]
    # @!attribute status
    #   <p>Status of the connector. Status can be creating, active, deleting, or failed.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Additional information about the connector status if the status is failed.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the connector was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time that the connector was updated.</p>
    #   @return [Time]
    class ConnectorSummary < Struct.new(
      nil,
      :arn,
      :certificate_authority_arn,
      :certificate_enrollment_policy_server_endpoint,
      :directory_id,
      :vpc_information,
      :status,
      :status_reason,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the Active Directory.</p>
    #   @return [String]
    # @!attribute certificate_authority_arn
    #   <p> The Amazon Resource Name (ARN) of the certificate authority being used.</p>
    #   @return [String]
    # @!attribute vpc_information
    #   <p>Information about your VPC and security groups used with the connector.</p>
    #   @return [Types::VpcInformation]
    # @!attribute client_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata assigned to a connector consisting of a key-value pair.</p>
    #   @return [Hash<String, String>]
    class CreateConnectorRequest < Struct.new(
      nil,
      :directory_id,
      :certificate_authority_arn,
      :vpc_information,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_arn
    #   <p>If successful, the Amazon Resource Name (ARN) of the connector for Active Directory.</p>
    #   @return [String]
    class CreateConnectorResponse < Struct.new(
      nil,
      :connector_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier of the Active Directory.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata assigned to a directory registration consisting of a key-value pair.</p>
    #   @return [Hash<String, String>]
    class CreateDirectoryRegistrationRequest < Struct.new(
      nil,
      :directory_id,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_registration_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html">CreateDirectoryRegistration</a>.</p>
    #   @return [String]
    class CreateDirectoryRegistrationResponse < Struct.new(
      nil,
      :directory_registration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_registration_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html">CreateDirectoryRegistration</a>.</p>
    #   @return [String]
    # @!attribute connector_arn
    #   <p> The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    class CreateServicePrincipalNameRequest < Struct.new(
      nil,
      :directory_registration_arn,
      :connector_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    #   @return [String]
    # @!attribute group_security_identifier
    #   <p>Security identifier (SID) of the group object from Active Directory. The SID starts with
    #            "S-".</p>
    #   @return [String]
    # @!attribute group_display_name
    #   <p>Name of the Active Directory group. This name does not need to match the group name in Active Directory.</p>
    #   @return [String]
    # @!attribute access_rights
    #   <p> Allow or deny permissions for an Active Directory group to enroll or autoenroll certificates for a
    #            template.</p>
    #   @return [Types::AccessRights]
    # @!attribute client_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    class CreateTemplateGroupAccessControlEntryRequest < Struct.new(
      nil,
      :template_arn,
      :group_security_identifier,
      :group_display_name,
      :access_rights,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the template. The template name must be unique.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>Template configuration to define the information included in certificates. Define
    #            certificate validity and renewal periods, certificate request handling and enrollment
    #            options, key usage extensions, application policies, and cryptography settings.</p>
    #   @return [Types::TemplateDefinition]
    # @!attribute client_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata assigned to a template consisting of a key-value pair.</p>
    #   @return [Hash<String, String>]
    class CreateTemplateRequest < Struct.new(
      nil,
      :connector_arn,
      :name,
      :definition,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>If successful, the Amazon Resource Name (ARN) of the template.</p>
    #   @return [String]
    class CreateTemplateResponse < Struct.new(
      nil,
      :template_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_arn
    #   <p> The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    #   @return [String]
    class DeleteConnectorRequest < Struct.new(
      nil,
      :connector_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_registration_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html">CreateDirectoryRegistration</a>.</p>
    #   @return [String]
    class DeleteDirectoryRegistrationRequest < Struct.new(
      nil,
      :directory_registration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_registration_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html">CreateDirectoryRegistration</a>.</p>
    #   @return [String]
    # @!attribute connector_arn
    #   <p> The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    #   @return [String]
    class DeleteServicePrincipalNameRequest < Struct.new(
      nil,
      :directory_registration_arn,
      :connector_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    #   @return [String]
    # @!attribute group_security_identifier
    #   <p>Security identifier (SID) of the group object from Active Directory. The SID starts with
    #            "S-".</p>
    #   @return [String]
    class DeleteTemplateGroupAccessControlEntryRequest < Struct.new(
      nil,
      :template_arn,
      :group_security_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    #   @return [String]
    class DeleteTemplateRequest < Struct.new(
      nil,
      :template_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The directory registration represents the authorization of the connector service with a
    #          directory.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called
    #            CreateDirectoryRegistration. </p>
    #   @return [String]
    # @!attribute directory_id
    #   <p>The identifier of the Active Directory.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the directory registration.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Additional information about the directory registration status if the status is
    #            failed.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the directory registration was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time that the directory registration was updated.</p>
    #   @return [Time]
    class DirectoryRegistration < Struct.new(
      nil,
      :arn,
      :directory_id,
      :status,
      :status_reason,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The directory registration represents the authorization of the connector service with
    #          the Active Directory.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html">CreateDirectoryRegistration</a>.</p>
    #   @return [String]
    # @!attribute directory_id
    #   <p>The identifier of the Active Directory.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the directory registration.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Additional information about the directory registration status if the status is
    #            failed.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the directory registration was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time that the directory registration was updated.</p>
    #   @return [Time]
    class DirectoryRegistrationSummary < Struct.new(
      nil,
      :arn,
      :directory_id,
      :status,
      :status_reason,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Template configurations for v2 template schema.</p>
    # @!attribute include_symmetric_algorithms
    #   <p>Include symmetric algorithms allowed by the subject.</p>
    #   @return [Boolean]
    # @!attribute user_interaction_required
    #   <p>Require user interaction when the subject is enrolled and the private key associated
    #            with the certificate is used.</p>
    #   @return [Boolean]
    # @!attribute remove_invalid_certificate_from_personal_store
    #   <p>Delete expired or revoked certificates instead of archiving them.</p>
    #   @return [Boolean]
    # @!attribute no_security_extension
    #   <p>This flag instructs the CA to not include the security extension
    #            szOID_NTDS_CA_SECURITY_EXT (OID:1.3.6.1.4.1.311.25.2), as specified in [MS-WCCE] sections
    #            2.2.2.7.7.4 and 3.2.2.6.2.1.4.5.9, in the issued certificate. This addresses a Windows
    #            Kerberos elevation-of-privilege vulnerability.</p>
    #   @return [Boolean]
    # @!attribute enable_key_reuse_on_nt_token_keyset_storage_full
    #   <p>Allow renewal using the same key.</p>
    #   @return [Boolean]
    class EnrollmentFlagsV2 < Struct.new(
      nil,
      :include_symmetric_algorithms,
      :user_interaction_required,
      :remove_invalid_certificate_from_personal_store,
      :no_security_extension,
      :enable_key_reuse_on_nt_token_keyset_storage_full,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Template configurations for v3 template schema.</p>
    # @!attribute include_symmetric_algorithms
    #   <p>Include symmetric algorithms allowed by the subject.</p>
    #   @return [Boolean]
    # @!attribute user_interaction_required
    #   <p>Require user interaction when the subject is enrolled and the private key associated
    #            with the certificate is used.</p>
    #   @return [Boolean]
    # @!attribute remove_invalid_certificate_from_personal_store
    #   <p>Delete expired or revoked certificates instead of archiving them.</p>
    #   @return [Boolean]
    # @!attribute no_security_extension
    #   <p>This flag instructs the CA to not include the security extension
    #            szOID_NTDS_CA_SECURITY_EXT (OID:1.3.6.1.4.1.311.25.2), as specified in [MS-WCCE] sections
    #            2.2.2.7.7.4 and 3.2.2.6.2.1.4.5.9, in the issued certificate. This addresses a Windows
    #            Kerberos elevation-of-privilege vulnerability.</p>
    #   @return [Boolean]
    # @!attribute enable_key_reuse_on_nt_token_keyset_storage_full
    #   <p>Allow renewal using the same key.</p>
    #   @return [Boolean]
    class EnrollmentFlagsV3 < Struct.new(
      nil,
      :include_symmetric_algorithms,
      :user_interaction_required,
      :remove_invalid_certificate_from_personal_store,
      :no_security_extension,
      :enable_key_reuse_on_nt_token_keyset_storage_full,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Template configurations for v4 template schema.</p>
    # @!attribute include_symmetric_algorithms
    #   <p>Include symmetric algorithms allowed by the subject.</p>
    #   @return [Boolean]
    # @!attribute user_interaction_required
    #   <p>Require user interaction when the subject is enrolled and the private key associated
    #            with the certificate is used.</p>
    #   @return [Boolean]
    # @!attribute remove_invalid_certificate_from_personal_store
    #   <p>Delete expired or revoked certificates instead of archiving them.</p>
    #   @return [Boolean]
    # @!attribute no_security_extension
    #   <p>This flag instructs the CA to not include the security extension
    #            szOID_NTDS_CA_SECURITY_EXT (OID:1.3.6.1.4.1.311.25.2), as specified in [MS-WCCE] sections
    #            2.2.2.7.7.4 and 3.2.2.6.2.1.4.5.9, in the issued certificate. This addresses a Windows
    #            Kerberos elevation-of-privilege vulnerability.</p>
    #   @return [Boolean]
    # @!attribute enable_key_reuse_on_nt_token_keyset_storage_full
    #   <p>Allow renewal using the same key.</p>
    #   @return [Boolean]
    class EnrollmentFlagsV4 < Struct.new(
      nil,
      :include_symmetric_algorithms,
      :user_interaction_required,
      :remove_invalid_certificate_from_personal_store,
      :no_security_extension,
      :enable_key_reuse_on_nt_token_keyset_storage_full,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Certificate extensions for v2 template schema</p>
    # @!attribute key_usage
    #   <p>The key usage extension defines the purpose (e.g., encipherment, signature, certificate
    #            signing) of the key contained in the certificate.</p>
    #   @return [Types::KeyUsage]
    # @!attribute application_policies
    #   <p>Application policies specify what the certificate is used for and its purpose. </p>
    #   @return [Types::ApplicationPolicies]
    class ExtensionsV2 < Struct.new(
      nil,
      :key_usage,
      :application_policies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Certificate extensions for v3 template schema</p>
    # @!attribute key_usage
    #   <p>The key usage extension defines the purpose (e.g., encipherment, signature, certificate
    #            signing) of the key contained in the certificate.</p>
    #   @return [Types::KeyUsage]
    # @!attribute application_policies
    #   <p>Application policies specify what the certificate is used for and its purpose.</p>
    #   @return [Types::ApplicationPolicies]
    class ExtensionsV3 < Struct.new(
      nil,
      :key_usage,
      :application_policies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Certificate extensions for v4 template schema</p>
    # @!attribute key_usage
    #   <p>The key usage extension defines the purpose (e.g., encipherment, signature) of the key
    #            contained in the certificate.</p>
    #   @return [Types::KeyUsage]
    # @!attribute application_policies
    #   <p>Application policies specify what the certificate is used for and its purpose.</p>
    #   @return [Types::ApplicationPolicies]
    class ExtensionsV4 < Struct.new(
      nil,
      :key_usage,
      :application_policies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>General flags for v2 template schema that defines if the template is for a machine or a
    #          user and if the template can be issued using autoenrollment.</p>
    # @!attribute auto_enrollment
    #   <p>Allows certificate issuance using autoenrollment. Set to TRUE to allow
    #            autoenrollment.</p>
    #   @return [Boolean]
    # @!attribute machine_type
    #   <p>Defines if the template is for machines or users. Set to TRUE if the template is for
    #            machines. Set to FALSE if the template is for users.</p>
    #   @return [Boolean]
    class GeneralFlagsV2 < Struct.new(
      nil,
      :auto_enrollment,
      :machine_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>General flags for v3 template schema that defines if the template is for a machine or a
    #          user and if the template can be issued using autoenrollment.</p>
    # @!attribute auto_enrollment
    #   <p>Allows certificate issuance using autoenrollment. Set to TRUE to allow
    #            autoenrollment.</p>
    #   @return [Boolean]
    # @!attribute machine_type
    #   <p>Defines if the template is for machines or users. Set to TRUE if the template is for
    #            machines. Set to FALSE if the template is for users</p>
    #   @return [Boolean]
    class GeneralFlagsV3 < Struct.new(
      nil,
      :auto_enrollment,
      :machine_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>General flags for v4 template schema that defines if the template is for a machine or a
    #          user and if the template can be issued using autoenrollment.</p>
    # @!attribute auto_enrollment
    #   <p>Allows certificate issuance using autoenrollment. Set to TRUE to allow
    #            autoenrollment.</p>
    #   @return [Boolean]
    # @!attribute machine_type
    #   <p>Defines if the template is for machines or users. Set to TRUE if the template is for
    #            machines. Set to FALSE if the template is for users</p>
    #   @return [Boolean]
    class GeneralFlagsV4 < Struct.new(
      nil,
      :auto_enrollment,
      :machine_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_arn
    #   <p> The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    #   @return [String]
    class GetConnectorRequest < Struct.new(
      nil,
      :connector_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector
    #   <p>A structure that contains information about your connector.</p>
    #   @return [Types::Connector]
    class GetConnectorResponse < Struct.new(
      nil,
      :connector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_registration_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html">CreateDirectoryRegistration</a>.</p>
    #   @return [String]
    class GetDirectoryRegistrationRequest < Struct.new(
      nil,
      :directory_registration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_registration
    #   <p>The directory registration represents the authorization of the connector service with a
    #            directory.</p>
    #   @return [Types::DirectoryRegistration]
    class GetDirectoryRegistrationResponse < Struct.new(
      nil,
      :directory_registration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_registration_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html">CreateDirectoryRegistration</a>.</p>
    #   @return [String]
    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    #   @return [String]
    class GetServicePrincipalNameRequest < Struct.new(
      nil,
      :directory_registration_arn,
      :connector_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_principal_name
    #   <p>The service principal name that the connector uses to authenticate with Active Directory.</p>
    #   @return [Types::ServicePrincipalName]
    class GetServicePrincipalNameResponse < Struct.new(
      nil,
      :service_principal_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    #   @return [String]
    # @!attribute group_security_identifier
    #   <p>Security identifier (SID) of the group object from Active Directory. The SID starts with
    #            "S-".</p>
    #   @return [String]
    class GetTemplateGroupAccessControlEntryRequest < Struct.new(
      nil,
      :template_arn,
      :group_security_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_control_entry
    #   <p>An access control entry allows or denies an Active Directory group from enrolling and/or
    #            autoenrolling with a template.</p>
    #   @return [Types::AccessControlEntry]
    class GetTemplateGroupAccessControlEntryResponse < Struct.new(
      nil,
      :access_control_entry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    #   @return [String]
    class GetTemplateRequest < Struct.new(
      nil,
      :template_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template
    #   <p>A certificate template that the connector uses to issue certificates from a private
    #            CA.</p>
    #   @return [Types::Template]
    class GetTemplateResponse < Struct.new(
      nil,
      :template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or failure with
    #          an internal server. </p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The key usage extension defines the purpose (e.g., encipherment, signature) of the key
    #          contained in the certificate.</p>
    # @!attribute critical
    #   <p>Sets the key usage extension to critical.</p>
    #   @return [Boolean]
    # @!attribute usage_flags
    #   <p>The key usage flags represent the purpose (e.g., encipherment, signature) of the key
    #            contained in the certificate.</p>
    #   @return [Types::KeyUsageFlags]
    class KeyUsage < Struct.new(
      nil,
      :critical,
      :usage_flags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The key usage flags represent the purpose (e.g., encipherment, signature) of the key
    #          contained in the certificate.</p>
    # @!attribute digital_signature
    #   <p>The digitalSignature is asserted when the subject public key is used for verifying
    #            digital signatures.</p>
    #   @return [Boolean]
    # @!attribute non_repudiation
    #   <p>NonRepudiation is asserted when the subject public key is used to verify digital
    #            signatures.</p>
    #   @return [Boolean]
    # @!attribute key_encipherment
    #   <p>KeyEncipherment is asserted when the subject public key is used for enciphering private
    #            or secret keys, i.e., for key transport.</p>
    #   @return [Boolean]
    # @!attribute data_encipherment
    #   <p>DataEncipherment is asserted when the subject public key is used for directly
    #            enciphering raw user data without the use of an intermediate symmetric cipher.</p>
    #   @return [Boolean]
    # @!attribute key_agreement
    #   <p>KeyAgreement is asserted when the subject public key is used for key agreement.</p>
    #   @return [Boolean]
    class KeyUsageFlags < Struct.new(
      nil,
      :digital_signature,
      :non_repudiation,
      :key_encipherment,
      :data_encipherment,
      :key_agreement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The key usage property defines the purpose of the private key contained in the
    #          certificate. You can specify specific purposes using property flags or all by using
    #          property type ALL.</p>
    # @!attribute property_type
    #   <p>You can specify all key usages using property type ALL. You can use property type or
    #            property flags but not both. </p>
    #   @return [String]
    # @!attribute property_flags
    #   <p>You can specify key usage for encryption, key agreement, and signature. You can use
    #            property flags or property type but not both. </p>
    #   @return [Types::KeyUsagePropertyFlags]
    class KeyUsageProperty < Struct.new(
      :property_type,
      :property_flags,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PropertyType < KeyUsageProperty; end
      class PropertyFlags < KeyUsageProperty; end
      class Unknown < KeyUsageProperty; end
    end

    # <p>Specifies key usage.</p>
    # @!attribute decrypt
    #   <p>Allows key for encryption and decryption.</p>
    #   @return [Boolean]
    # @!attribute key_agreement
    #   <p>Allows key exchange without encryption.</p>
    #   @return [Boolean]
    # @!attribute sign
    #   <p>Allow key use for digital signature.</p>
    #   @return [Boolean]
    class KeyUsagePropertyFlags < Struct.new(
      nil,
      :decrypt,
      :key_agreement,
      :sign,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Use this parameter when paginating results to specify the maximum number of items to
    #            return in the response on each page. If additional items exist beyond the number you
    #            specify, the <code>NextToken</code> element is sent in the response. Use this
    #               <code>NextToken</code> value in a subsequent request to retrieve additional
    #            items.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #            response with truncated results. Set it to the value of the <code>NextToken</code>
    #            parameter from the response you just received.</p>
    #   @return [String]
    class ListConnectorsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connectors
    #   <p>Summary information about each connector you have created.</p>
    #   @return [Array<Types::ConnectorSummary>]
    # @!attribute next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #            response with truncated results. Set it to the value of the NextToken parameter from the
    #            response you just received.</p>
    #   @return [String]
    class ListConnectorsResponse < Struct.new(
      nil,
      :connectors,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Use this parameter when paginating results to specify the maximum number of items to
    #            return in the response on each page. If additional items exist beyond the number you
    #            specify, the <code>NextToken</code> element is sent in the response. Use this
    #               <code>NextToken</code> value in a subsequent request to retrieve additional
    #            items.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #            response with truncated results. Set it to the value of the <code>NextToken</code>
    #            parameter from the response you just received.</p>
    #   @return [String]
    class ListDirectoryRegistrationsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_registrations
    #   <p>Summary information about each directory registration you have created.</p>
    #   @return [Array<Types::DirectoryRegistrationSummary>]
    # @!attribute next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #            response with truncated results. Set it to the value of the <code>NextToken</code>
    #            parameter from the response you just received.</p>
    #   @return [String]
    class ListDirectoryRegistrationsResponse < Struct.new(
      nil,
      :directory_registrations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Use this parameter when paginating results to specify the maximum number of items to
    #            return in the response on each page. If additional items exist beyond the number you
    #            specify, the <code>NextToken</code> element is sent in the response. Use this
    #               <code>NextToken</code> value in a subsequent request to retrieve additional
    #            items.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #            response with truncated results. Set it to the value of the <code>NextToken</code>
    #            parameter from the response you just received.</p>
    #   @return [String]
    # @!attribute directory_registration_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html">CreateDirectoryRegistration</a>.</p>
    #   @return [String]
    class ListServicePrincipalNamesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :directory_registration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_principal_names
    #   <p>The service principal name, if any, that the connector uses to authenticate with
    #            Active Directory.</p>
    #   @return [Array<Types::ServicePrincipalNameSummary>]
    # @!attribute next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #            response with truncated results. Set it to the value of the <code>NextToken</code>
    #            parameter from the response you just received.</p>
    #   @return [String]
    class ListServicePrincipalNamesResponse < Struct.new(
      nil,
      :service_principal_names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you created the resource. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags, if any, that are associated with your resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Use this parameter when paginating results to specify the maximum number of items to
    #            return in the response on each page. If additional items exist beyond the number you
    #            specify, the <code>NextToken</code> element is sent in the response. Use this
    #               <code>NextToken</code> value in a subsequent request to retrieve additional
    #            items.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #            response with truncated results. Set it to the value of the <code>NextToken</code>
    #            parameter from the response you just received.</p>
    #   @return [String]
    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    #   @return [String]
    class ListTemplateGroupAccessControlEntriesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :template_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_control_entries
    #   <p>An access control entry grants or denies permission to an Active Directory group to enroll
    #            certificates for a template.</p>
    #   @return [Array<Types::AccessControlEntrySummary>]
    # @!attribute next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #            response with truncated results. Set it to the value of the <code>NextToken</code>
    #            parameter from the response you just received.</p>
    #   @return [String]
    class ListTemplateGroupAccessControlEntriesResponse < Struct.new(
      nil,
      :access_control_entries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Use this parameter when paginating results to specify the maximum number of items to
    #            return in the response on each page. If additional items exist beyond the number you
    #            specify, the <code>NextToken</code> element is sent in the response. Use this
    #               <code>NextToken</code> value in a subsequent request to retrieve additional
    #            items.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #            response with truncated results. Set it to the value of the <code>NextToken</code>
    #            parameter from the response you just received.</p>
    #   @return [String]
    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    #   @return [String]
    class ListTemplatesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :connector_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute templates
    #   <p>Custom configuration templates used when issuing a certificate. </p>
    #   @return [Array<Types::TemplateSummary>]
    # @!attribute next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #            response with truncated results. Set it to the value of the <code>NextToken</code>
    #            parameter from the response you just received.</p>
    #   @return [String]
    class ListTemplatesResponse < Struct.new(
      nil,
      :templates,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the attributes of the private key.</p>
    # @!attribute minimal_key_length
    #   <p>Set the minimum key length of the private key.</p>
    #   @return [Integer]
    # @!attribute key_spec
    #   <p>Defines the purpose of the private key. Set it to "KEY_EXCHANGE" or "SIGNATURE"
    #            value.</p>
    #   @return [String]
    # @!attribute crypto_providers
    #   <p>Defines the cryptographic providers used to generate the private key.</p>
    #   @return [Array<String>]
    class PrivateKeyAttributesV2 < Struct.new(
      nil,
      :minimal_key_length,
      :key_spec,
      :crypto_providers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the attributes of the private key.</p>
    # @!attribute minimal_key_length
    #   <p>Set the minimum key length of the private key.</p>
    #   @return [Integer]
    # @!attribute key_spec
    #   <p>Defines the purpose of the private key. Set it to "KEY_EXCHANGE" or "SIGNATURE"
    #            value.</p>
    #   @return [String]
    # @!attribute crypto_providers
    #   <p>Defines the cryptographic providers used to generate the private key.</p>
    #   @return [Array<String>]
    # @!attribute key_usage_property
    #   <p>The key usage property defines the purpose of the private key contained in the
    #            certificate. You can specify specific purposes using property flags or all by using
    #            property type ALL.</p>
    #   @return [Types::KeyUsageProperty]
    # @!attribute algorithm
    #   <p>Defines the algorithm used to generate the private key.</p>
    #   @return [String]
    class PrivateKeyAttributesV3 < Struct.new(
      nil,
      :minimal_key_length,
      :key_spec,
      :crypto_providers,
      :key_usage_property,
      :algorithm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the attributes of the private key.</p>
    # @!attribute minimal_key_length
    #   <p>Set the minimum key length of the private key.</p>
    #   @return [Integer]
    # @!attribute key_spec
    #   <p>Defines the purpose of the private key. Set it to "KEY_EXCHANGE" or "SIGNATURE"
    #            value.</p>
    #   @return [String]
    # @!attribute crypto_providers
    #   <p>Defines the cryptographic providers used to generate the private key.</p>
    #   @return [Array<String>]
    # @!attribute key_usage_property
    #   <p>The key usage property defines the purpose of the private key contained in the
    #            certificate. You can specify specific purposes using property flags or all by using
    #            property type ALL.</p>
    #   @return [Types::KeyUsageProperty]
    # @!attribute algorithm
    #   <p>Defines the algorithm used to generate the private key.</p>
    #   @return [String]
    class PrivateKeyAttributesV4 < Struct.new(
      nil,
      :minimal_key_length,
      :key_spec,
      :crypto_providers,
      :key_usage_property,
      :algorithm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Private key flags for v2 templates specify the client compatibility, if the private key
    #          can be exported, and if user input is required when using a private key.</p>
    # @!attribute exportable_key
    #   <p>Allows the private key to be exported.</p>
    #   @return [Boolean]
    # @!attribute strong_key_protection_required
    #   <p>Require user input when using the private key for enrollment.</p>
    #   @return [Boolean]
    # @!attribute client_version
    #   <p>Defines the minimum client compatibility.</p>
    #   @return [String]
    class PrivateKeyFlagsV2 < Struct.new(
      nil,
      :exportable_key,
      :strong_key_protection_required,
      :client_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Private key flags for v3 templates specify the client compatibility, if the private key
    #          can be exported, if user input is required when using a private key, and if an alternate
    #          signature algorithm should be used.</p>
    # @!attribute exportable_key
    #   <p>Allows the private key to be exported.</p>
    #   @return [Boolean]
    # @!attribute strong_key_protection_required
    #   <p>Requirer user input when using the private key for enrollment.</p>
    #   @return [Boolean]
    # @!attribute require_alternate_signature_algorithm
    #   <p>Reguires the PKCS #1 v2.1 signature format for certificates. You should verify that your
    #            CA, objects, and applications can accept this signature format.</p>
    #   @return [Boolean]
    # @!attribute client_version
    #   <p>Defines the minimum client compatibility.</p>
    #   @return [String]
    class PrivateKeyFlagsV3 < Struct.new(
      nil,
      :exportable_key,
      :strong_key_protection_required,
      :require_alternate_signature_algorithm,
      :client_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Private key flags for v4 templates specify the client compatibility, if the private key
    #          can be exported, if user input is required when using a private key, if an alternate
    #          signature algorithm should be used, and if certificates are renewed using the same private
    #          key.</p>
    # @!attribute exportable_key
    #   <p>Allows the private key to be exported.</p>
    #   @return [Boolean]
    # @!attribute strong_key_protection_required
    #   <p>Require user input when using the private key for enrollment.</p>
    #   @return [Boolean]
    # @!attribute require_alternate_signature_algorithm
    #   <p>Requires the PKCS #1 v2.1 signature format for certificates. You should verify that your
    #            CA, objects, and applications can accept this signature format.</p>
    #   @return [Boolean]
    # @!attribute require_same_key_renewal
    #   <p>Renew certificate using the same private key.</p>
    #   @return [Boolean]
    # @!attribute use_legacy_provider
    #   <p>Specifies the cryptographic service provider category used to generate private keys. Set
    #            to TRUE to use Legacy Cryptographic Service Providers and FALSE to use Key Storage
    #            Providers.</p>
    #   @return [Boolean]
    # @!attribute client_version
    #   <p>Defines the minimum client compatibility.</p>
    #   @return [String]
    class PrivateKeyFlagsV4 < Struct.new(
      nil,
      :exportable_key,
      :strong_key_protection_required,
      :require_alternate_signature_algorithm,
      :require_same_key_renewal,
      :use_legacy_provider,
      :client_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation tried to access a nonexistent resource. The resource might not be
    #          specified correctly, or its status might not be ACTIVE.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type, which can be one of <code>Connector</code>, <code>Template</code>, <code>TemplateGroupAccessControlEntry</code>, <code>ServicePrincipalName</code>, or <code>DirectoryRegistration</code>.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service principal name that the connector uses to authenticate with Active Directory.</p>
    # @!attribute directory_registration_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html">CreateDirectoryRegistration</a>.</p>
    #   @return [String]
    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector.html</a>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a service principal name.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Additional information for the status of a service principal name if the status is
    #            failed.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the service principal name was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time that the service principal name was updated.</p>
    #   @return [Time]
    class ServicePrincipalName < Struct.new(
      nil,
      :directory_registration_arn,
      :connector_arn,
      :status,
      :status_reason,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service principal name that the connector uses to authenticate with Active Directory.</p>
    # @!attribute directory_registration_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html">CreateDirectoryRegistration</a>.</p>
    #   @return [String]
    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a service principal name.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Additional information for the status of a service principal name if the status is
    #            failed.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the service principal name was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>Time when the service principal name was updated.</p>
    #   @return [Time]
    class ServicePrincipalNameSummary < Struct.new(
      nil,
      :directory_registration_arn,
      :connector_arn,
      :status,
      :status_reason,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type, which can be one of <code>Connector</code>, <code>Template</code>, <code>TemplateGroupAccessControlEntry</code>, <code>ServicePrincipalName</code>, or <code>DirectoryRegistration</code>.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>Identifies the originating service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code associated with the service quota.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information to include in the subject name and alternate subject name of the
    #          certificate. The subject name can be common name, directory path, DNS as common name, or
    #          left blank. You can optionally include email to the subject name for user templates. If you
    #          leave the subject name blank then you must set a subject alternate name. The subject
    #          alternate name (SAN) can include globally unique identifier (GUID), DNS, domain DNS, email,
    #          service principal name (SPN), and user principal name (UPN). You can leave the SAN blank.
    #          If you leave the SAN blank, then you must set a subject name.</p>
    # @!attribute san_require_domain_dns
    #   <p>Include the domain DNS in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute san_require_spn
    #   <p>Include the service principal name (SPN) in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute san_require_directory_guid
    #   <p>Include the globally unique identifier (GUID) in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute san_require_upn
    #   <p>Include the user principal name (UPN) in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute san_require_email
    #   <p>Include the subject's email in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute san_require_dns
    #   <p>Include the DNS in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute require_dns_as_cn
    #   <p>Include the DNS as common name in the subject name.</p>
    #   @return [Boolean]
    # @!attribute require_email
    #   <p>Include the subject's email in the subject name.</p>
    #   @return [Boolean]
    # @!attribute require_common_name
    #   <p>Include the common name in the subject name.</p>
    #   @return [Boolean]
    # @!attribute require_directory_path
    #   <p>Include the directory path in the subject name.</p>
    #   @return [Boolean]
    class SubjectNameFlagsV2 < Struct.new(
      nil,
      :san_require_domain_dns,
      :san_require_spn,
      :san_require_directory_guid,
      :san_require_upn,
      :san_require_email,
      :san_require_dns,
      :require_dns_as_cn,
      :require_email,
      :require_common_name,
      :require_directory_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information to include in the subject name and alternate subject name of the
    #          certificate. The subject name can be common name, directory path, DNS as common name, or
    #          left blank. You can optionally include email to the subject name for user templates. If you
    #          leave the subject name blank then you must set a subject alternate name. The subject
    #          alternate name (SAN) can include globally unique identifier (GUID), DNS, domain DNS, email,
    #          service principal name (SPN), and user principal name (UPN). You can leave the SAN blank.
    #          If you leave the SAN blank, then you must set a subject name.</p>
    # @!attribute san_require_domain_dns
    #   <p>Include the domain DNS in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute san_require_spn
    #   <p>Include the service principal name (SPN) in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute san_require_directory_guid
    #   <p>Include the globally unique identifier (GUID) in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute san_require_upn
    #   <p>Include the user principal name (UPN) in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute san_require_email
    #   <p>Include the subject's email in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute san_require_dns
    #   <p>Include the DNS in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute require_dns_as_cn
    #   <p>Include the DNS as common name in the subject name.</p>
    #   @return [Boolean]
    # @!attribute require_email
    #   <p>Include the subject's email in the subject name.</p>
    #   @return [Boolean]
    # @!attribute require_common_name
    #   <p>Include the common name in the subject name. </p>
    #   @return [Boolean]
    # @!attribute require_directory_path
    #   <p>Include the directory path in the subject name.</p>
    #   @return [Boolean]
    class SubjectNameFlagsV3 < Struct.new(
      nil,
      :san_require_domain_dns,
      :san_require_spn,
      :san_require_directory_guid,
      :san_require_upn,
      :san_require_email,
      :san_require_dns,
      :require_dns_as_cn,
      :require_email,
      :require_common_name,
      :require_directory_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information to include in the subject name and alternate subject name of the
    #          certificate. The subject name can be common name, directory path, DNS as common name, or
    #          left blank. You can optionally include email to the subject name for user templates. If you
    #          leave the subject name blank then you must set a subject alternate name. The subject
    #          alternate name (SAN) can include globally unique identifier (GUID), DNS, domain DNS, email,
    #          service principal name (SPN), and user principal name (UPN). You can leave the SAN blank.
    #          If you leave the SAN blank, then you must set a subject name.</p>
    # @!attribute san_require_domain_dns
    #   <p>Include the domain DNS in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute san_require_spn
    #   <p>Include the service principal name (SPN) in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute san_require_directory_guid
    #   <p>Include the globally unique identifier (GUID) in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute san_require_upn
    #   <p>Include the user principal name (UPN) in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute san_require_email
    #   <p>Include the subject's email in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute san_require_dns
    #   <p>Include the DNS in the subject alternate name.</p>
    #   @return [Boolean]
    # @!attribute require_dns_as_cn
    #   <p>Include the DNS as common name in the subject name.</p>
    #   @return [Boolean]
    # @!attribute require_email
    #   <p>Include the subject's email in the subject name.</p>
    #   @return [Boolean]
    # @!attribute require_common_name
    #   <p>Include the common name in the subject name.</p>
    #   @return [Boolean]
    # @!attribute require_directory_path
    #   <p>Include the directory path in the subject name.</p>
    #   @return [Boolean]
    class SubjectNameFlagsV4 < Struct.new(
      nil,
      :san_require_domain_dns,
      :san_require_spn,
      :san_require_directory_guid,
      :san_require_upn,
      :san_require_email,
      :san_require_dns,
      :require_dns_as_cn,
      :require_email,
      :require_common_name,
      :require_directory_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you created the resource. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata assigned to a directory registration consisting of a key-value pair.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Active Directory compatible certificate template. Connectors issue certificates against these
    #          templates based on the requestor's Active Directory group membership. </p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    #   @return [String]
    # @!attribute connector_arn
    #   <p> The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>Template configuration to define the information included in certificates. Define
    #            certificate validity and renewal periods, certificate request handling and enrollment
    #            options, key usage extensions, application policies, and cryptography settings.</p>
    #   @return [Types::TemplateDefinition]
    # @!attribute name
    #   <p>Name of the templates. Template names must be unique.</p>
    #   @return [String]
    # @!attribute object_identifier
    #   <p>Object identifier of a template.</p>
    #   @return [String]
    # @!attribute policy_schema
    #   <p>The template schema version. Template schema versions can be v2, v3, or v4. The template
    #            configuration options change based on the template schema version.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>Status of the template. Status can be creating, active, deleting, or failed.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The version of the template. Template updates will increment the minor revision.
    #            Re-enrolling all certificate holders will increment the major revision.</p>
    #   @return [Types::TemplateRevision]
    # @!attribute created_at
    #   <p>The date and time that the template was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time that the template was updated.</p>
    #   @return [Time]
    class Template < Struct.new(
      nil,
      :arn,
      :connector_arn,
      :definition,
      :name,
      :object_identifier,
      :policy_schema,
      :status,
      :revision,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Template configuration to define the information included in certificates. Define
    #          certificate validity and renewal periods, certificate request handling and enrollment
    #          options, key usage extensions, application policies, and cryptography settings.</p>
    # @!attribute template_v2
    #   <p>Template configuration to define the information included in certificates. Define
    #            certificate validity and renewal periods, certificate request handling and enrollment
    #            options, key usage extensions, application policies, and cryptography settings.</p>
    #   @return [Types::TemplateV2]
    # @!attribute template_v3
    #   <p>Template configuration to define the information included in certificates. Define
    #            certificate validity and renewal periods, certificate request handling and enrollment
    #            options, key usage extensions, application policies, and cryptography settings.</p>
    #   @return [Types::TemplateV3]
    # @!attribute template_v4
    #   <p>Template configuration to define the information included in certificates. Define
    #            certificate validity and renewal periods, certificate request handling and enrollment
    #            options, key usage extensions, application policies, and cryptography settings.</p>
    #   @return [Types::TemplateV4]
    class TemplateDefinition < Struct.new(
      :template_v2,
      :template_v3,
      :template_v4,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TemplateV2 < TemplateDefinition; end
      class TemplateV3 < TemplateDefinition; end
      class TemplateV4 < TemplateDefinition; end
      class Unknown < TemplateDefinition; end
    end

    # <p>The revision version of the template. Template updates will increment the minor
    #          revision. Re-enrolling all certificate holders will increment the major revision.</p>
    # @!attribute major_revision
    #   <p>The revision version of the template. Re-enrolling all certificate holders will
    #            increment the major revision.</p>
    #   @return [Integer]
    # @!attribute minor_revision
    #   <p>The revision version of the template. Re-enrolling all certificate holders will
    #            increment the major revision.</p>
    #   @return [Integer]
    class TemplateRevision < Struct.new(
      nil,
      :major_revision,
      :minor_revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Active Directory compatible certificate template. Connectors issue certificates against these
    #          templates based on the requestor's Active Directory group membership.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    #   @return [String]
    # @!attribute connector_arn
    #   <p> The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html">CreateConnector</a>.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>Template configuration to define the information included in certificates. Define
    #            certificate validity and renewal periods, certificate request handling and enrollment
    #            options, key usage extensions, application policies, and cryptography settings.</p>
    #   @return [Types::TemplateDefinition]
    # @!attribute name
    #   <p>Name of the template. The template name must be unique.</p>
    #   @return [String]
    # @!attribute object_identifier
    #   <p>Object identifier of a template.</p>
    #   @return [String]
    # @!attribute policy_schema
    #   <p>The template schema version. Template schema versions can be v2, v3, or v4. The template
    #            configuration options change based on the template schema version.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>Status of the template. Status can be creating, active, deleting, or failed.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision version of the template. Template updates will increment the minor
    #            revision. Re-enrolling all certificate holders will increment the major revision.</p>
    #   @return [Types::TemplateRevision]
    # @!attribute created_at
    #   <p>The date and time that the template was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time that the template was updated.</p>
    #   @return [Time]
    class TemplateSummary < Struct.new(
      nil,
      :arn,
      :connector_arn,
      :definition,
      :name,
      :object_identifier,
      :policy_schema,
      :status,
      :revision,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>v2 template schema that uses Legacy Cryptographic Providers.</p>
    # @!attribute certificate_validity
    #   <p>Certificate validity describes the validity and renewal periods of a certificate.</p>
    #   @return [Types::CertificateValidity]
    # @!attribute superseded_templates
    #   <p>List of templates in Active Directory that are superseded by this template.</p>
    #   @return [Array<String>]
    # @!attribute private_key_attributes
    #   <p>Private key attributes allow you to specify the minimal key length, key spec, and
    #            cryptographic providers for the private key of a certificate for v2 templates. V2 templates
    #            allow you to use Legacy Cryptographic Service Providers.</p>
    #   @return [Types::PrivateKeyAttributesV2]
    # @!attribute private_key_flags
    #   <p>Private key flags for v2 templates specify the client compatibility, if the private key
    #            can be exported, and if user input is required when using a private key. </p>
    #   @return [Types::PrivateKeyFlagsV2]
    # @!attribute enrollment_flags
    #   <p>Enrollment flags describe the enrollment settings for certificates such as using the
    #            existing private key and deleting expired or revoked certificates.</p>
    #   @return [Types::EnrollmentFlagsV2]
    # @!attribute subject_name_flags
    #   <p>Subject name flags describe the subject name and subject alternate name that is included
    #            in a certificate.</p>
    #   @return [Types::SubjectNameFlagsV2]
    # @!attribute general_flags
    #   <p>General flags describe whether the template is used for computers or users and if the
    #            template can be used with autoenrollment.</p>
    #   @return [Types::GeneralFlagsV2]
    # @!attribute extensions
    #   <p>Extensions describe the key usage extensions and application policies for a
    #            template.</p>
    #   @return [Types::ExtensionsV2]
    class TemplateV2 < Struct.new(
      nil,
      :certificate_validity,
      :superseded_templates,
      :private_key_attributes,
      :private_key_flags,
      :enrollment_flags,
      :subject_name_flags,
      :general_flags,
      :extensions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>v3 template schema that uses Key Storage Providers.</p>
    # @!attribute certificate_validity
    #   <p>Certificate validity describes the validity and renewal periods of a certificate.</p>
    #   @return [Types::CertificateValidity]
    # @!attribute superseded_templates
    #   <p>List of templates in Active Directory that are superseded by this template.</p>
    #   @return [Array<String>]
    # @!attribute private_key_attributes
    #   <p>Private key attributes allow you to specify the algorithm, minimal key length, key spec,
    #            key usage, and cryptographic providers for the private key of a certificate for v3
    #            templates. V3 templates allow you to use Key Storage Providers.</p>
    #   @return [Types::PrivateKeyAttributesV3]
    # @!attribute private_key_flags
    #   <p>Private key flags for v3 templates specify the client compatibility, if the private key
    #            can be exported, if user input is required when using a private key, and if an alternate
    #            signature algorithm should be used.</p>
    #   @return [Types::PrivateKeyFlagsV3]
    # @!attribute enrollment_flags
    #   <p>Enrollment flags describe the enrollment settings for certificates such as using the
    #            existing private key and deleting expired or revoked certificates.</p>
    #   @return [Types::EnrollmentFlagsV3]
    # @!attribute subject_name_flags
    #   <p>Subject name flags describe the subject name and subject alternate name that is included
    #            in a certificate.</p>
    #   @return [Types::SubjectNameFlagsV3]
    # @!attribute general_flags
    #   <p>General flags describe whether the template is used for computers or users and if the
    #            template can be used with autoenrollment.</p>
    #   @return [Types::GeneralFlagsV3]
    # @!attribute hash_algorithm
    #   <p>Specifies the hash algorithm used to hash the private key.</p>
    #   @return [String]
    # @!attribute extensions
    #   <p>Extensions describe the key usage extensions and application policies for a
    #            template.</p>
    #   @return [Types::ExtensionsV3]
    class TemplateV3 < Struct.new(
      nil,
      :certificate_validity,
      :superseded_templates,
      :private_key_attributes,
      :private_key_flags,
      :enrollment_flags,
      :subject_name_flags,
      :general_flags,
      :hash_algorithm,
      :extensions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>v4 template schema that can use either Legacy Cryptographic Providers or Key Storage
    #          Providers.</p>
    # @!attribute certificate_validity
    #   <p>Certificate validity describes the validity and renewal periods of a certificate.</p>
    #   @return [Types::CertificateValidity]
    # @!attribute superseded_templates
    #   <p>List of templates in Active Directory that are superseded by this template.</p>
    #   @return [Array<String>]
    # @!attribute private_key_attributes
    #   <p>Private key attributes allow you to specify the minimal key length, key spec, key usage,
    #            and cryptographic providers for the private key of a certificate for v4 templates. V4
    #            templates allow you to use either Key Storage Providers or Legacy Cryptographic Service
    #            Providers. You specify the cryptography provider category in private key flags.</p>
    #   @return [Types::PrivateKeyAttributesV4]
    # @!attribute private_key_flags
    #   <p>Private key flags for v4 templates specify the client compatibility, if the private key
    #            can be exported, if user input is required when using a private key, if an alternate
    #            signature algorithm should be used, and if certificates are renewed using the same private
    #            key.</p>
    #   @return [Types::PrivateKeyFlagsV4]
    # @!attribute enrollment_flags
    #   <p>Enrollment flags describe the enrollment settings for certificates using the existing
    #            private key and deleting expired or revoked certificates.</p>
    #   @return [Types::EnrollmentFlagsV4]
    # @!attribute subject_name_flags
    #   <p>Subject name flags describe the subject name and subject alternate name that is included
    #            in a certificate.</p>
    #   @return [Types::SubjectNameFlagsV4]
    # @!attribute general_flags
    #   <p>General flags describe whether the template is used for computers or users and if the
    #            template can be used with autoenrollment.</p>
    #   @return [Types::GeneralFlagsV4]
    # @!attribute hash_algorithm
    #   <p>Specifies the hash algorithm used to hash the private key. Hash algorithm can only be
    #            specified when using Key Storage Providers.</p>
    #   @return [String]
    # @!attribute extensions
    #   <p>Extensions describe the key usage extensions and application policies for a
    #            template.</p>
    #   @return [Types::ExtensionsV4]
    class TemplateV4 < Struct.new(
      nil,
      :certificate_validity,
      :superseded_templates,
      :private_key_attributes,
      :private_key_flags,
      :enrollment_flags,
      :subject_name_flags,
      :general_flags,
      :hash_algorithm,
      :extensions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The limit on the number of requests per second was exceeded. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>Identifies the originating service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code associated with the quota.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you created the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Specifies a list of tag keys that you want to remove from the specified
    #            resources.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    #   @return [String]
    # @!attribute group_security_identifier
    #   <p>Security identifier (SID) of the group object from Active Directory. The SID starts with
    #            "S-".</p>
    #   @return [String]
    # @!attribute group_display_name
    #   <p>Name of the Active Directory group. This name does not need to match the group name in Active Directory.</p>
    #   @return [String]
    # @!attribute access_rights
    #   <p>Allow or deny permissions for an Active Directory group to enroll or autoenroll certificates for a
    #            template.</p>
    #   @return [Types::AccessRights]
    class UpdateTemplateGroupAccessControlEntryRequest < Struct.new(
      nil,
      :template_arn,
      :group_security_identifier,
      :group_display_name,
      :access_rights,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>Template configuration to define the information included in certificates. Define
    #            certificate validity and renewal periods, certificate request handling and enrollment
    #            options, key usage extensions, application policies, and cryptography settings.</p>
    #   @return [Types::TemplateDefinition]
    # @!attribute reenroll_all_certificate_holders
    #   <p>This setting allows the major version of a template to be increased automatically. All
    #            members of Active Directory groups that are allowed to enroll with a template will receive a new
    #            certificate issued using that template.</p>
    #   @return [Boolean]
    class UpdateTemplateRequest < Struct.new(
      nil,
      :template_arn,
      :definition,
      :reenroll_all_certificate_holders,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An input validation error occurred. For example, invalid characters in a template name,
    #          or if a pagination token is invalid. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the validation error. This won't be return for every
    #            validation exception.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information describing the end of the validity period of the certificate. This parameter
    #          sets the “Not After” date for the certificate. Certificate validity is the period of time
    #          during which a certificate is valid. Validity can be expressed as an explicit date and time
    #          when the certificate expires, or as a span of time after issuance, stated in hours, days,
    #          months, or years. For more information, see Validity in RFC 5280. This value is unaffected
    #          when ValidityNotBefore is also specified. For example, if Validity is set to 20 days in the
    #          future, the certificate will expire 20 days from issuance time regardless of the
    #          ValidityNotBefore value. </p>
    # @!attribute period_type
    #   <p>The unit of time. You can select hours, days, weeks, months, and years.</p>
    #   @return [String]
    # @!attribute period
    #   <p>The numeric value for the validity period.</p>
    #   @return [Integer]
    class ValidityPeriod < Struct.new(
      nil,
      :period_type,
      :period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about your VPC and security groups used with the connector.</p>
    # @!attribute ip_address_type
    #   <p>The VPC IP address type.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The security groups used with the connector. You can use a maximum of 4 security groups
    #            with a connector.</p>
    #   @return [Array<String>]
    class VpcInformation < Struct.new(
      nil,
      :ip_address_type,
      :security_group_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
