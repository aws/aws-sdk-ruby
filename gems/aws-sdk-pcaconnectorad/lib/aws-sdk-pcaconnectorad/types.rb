# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PcaConnectorAd
  module Types

    # An access control entry allows or denies Active Directory groups based
    # on their security identifiers (SIDs) from enrolling and/or
    # autoenrolling with the template.
    #
    # @!attribute [rw] access_rights
    #   Permissions to allow or deny an Active Directory group to enroll or
    #   autoenroll certificates issued against a template.
    #   @return [Types::AccessRights]
    #
    # @!attribute [rw] created_at
    #   The date and time that the Access Control Entry was created.
    #   @return [Time]
    #
    # @!attribute [rw] group_display_name
    #   Name of the Active Directory group. This name does not need to match
    #   the group name in Active Directory.
    #   @return [String]
    #
    # @!attribute [rw] group_security_identifier
    #   Security identifier (SID) of the group object from Active Directory.
    #   The SID starts with "S-".
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the Access Control Entry was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/AccessControlEntry AWS API Documentation
    #
    class AccessControlEntry < Struct.new(
      :access_rights,
      :created_at,
      :group_display_name,
      :group_security_identifier,
      :template_arn,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of group access control entries that allow or deny Active
    # Directory groups based on their security identifiers (SIDs) from
    # enrolling and/or autofenrolling with the template.
    #
    # @!attribute [rw] access_rights
    #   Allow or deny an Active Directory group from enrolling and
    #   autoenrolling certificates issued against a template.
    #   @return [Types::AccessRights]
    #
    # @!attribute [rw] created_at
    #   The date and time that the Access Control Entry was created.
    #   @return [Time]
    #
    # @!attribute [rw] group_display_name
    #   Name of the Active Directory group. This name does not need to match
    #   the group name in Active Directory.
    #   @return [String]
    #
    # @!attribute [rw] group_security_identifier
    #   Security identifier (SID) of the group object from Active Directory.
    #   The SID starts with "S-".
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the Access Control Entry was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/AccessControlEntrySummary AWS API Documentation
    #
    class AccessControlEntrySummary < Struct.new(
      :access_rights,
      :created_at,
      :group_display_name,
      :group_security_identifier,
      :template_arn,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can receive this error if you attempt to create a resource share
    # when you don't have the required permissions. This can be caused by
    # insufficient permissions in policies attached to your Amazon Web
    # Services Identity and Access Management (IAM) principal. It can also
    # happen because of restrictions in place from an Amazon Web Services
    # Organizations service control policy (SCP) that affects your Amazon
    # Web Services account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allow or deny permissions for an Active Directory group to enroll or
    # autoenroll certificates for a template.
    #
    # @!attribute [rw] auto_enroll
    #   Allow or deny an Active Directory group from autoenrolling
    #   certificates issued against a template. The Active Directory group
    #   must be allowed to enroll to allow autoenrollment
    #   @return [String]
    #
    # @!attribute [rw] enroll
    #   Allow or deny an Active Directory group from enrolling certificates
    #   issued against a template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/AccessRights AWS API Documentation
    #
    class AccessRights < Struct.new(
      :auto_enroll,
      :enroll)
      SENSITIVE = []
      include Aws::Structure
    end

    # Application policies describe what the certificate can be used for.
    #
    # @!attribute [rw] critical
    #   Marks the application policy extension as critical.
    #   @return [Boolean]
    #
    # @!attribute [rw] policies
    #   Application policies describe what the certificate can be used for.
    #   @return [Array<Types::ApplicationPolicy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ApplicationPolicies AWS API Documentation
    #
    class ApplicationPolicies < Struct.new(
      :critical,
      :policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # Application policies describe what the certificate can be used for.
    #
    # @note ApplicationPolicy is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ApplicationPolicy is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ApplicationPolicy corresponding to the set member.
    #
    # @!attribute [rw] policy_object_identifier
    #   The object identifier (OID) of an application policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of application policy
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ApplicationPolicy AWS API Documentation
    #
    class ApplicationPolicy < Struct.new(
      :policy_object_identifier,
      :policy_type,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class PolicyObjectIdentifier < ApplicationPolicy; end
      class PolicyType < ApplicationPolicy; end
      class Unknown < ApplicationPolicy; end
    end

    # Information describing the end of the validity period of the
    # certificate. This parameter sets the “Not After” date for the
    # certificate. Certificate validity is the period of time during which a
    # certificate is valid. Validity can be expressed as an explicit date
    # and time when the certificate expires, or as a span of time after
    # issuance, stated in days, months, or years. For more information, see
    # Validity in RFC 5280. This value is unaffected when ValidityNotBefore
    # is also specified. For example, if Validity is set to 20 days in the
    # future, the certificate will expire 20 days from issuance time
    # regardless of the ValidityNotBefore value.
    #
    # @!attribute [rw] renewal_period
    #   Renewal period is the period of time before certificate expiration
    #   when a new certificate will be requested.
    #   @return [Types::ValidityPeriod]
    #
    # @!attribute [rw] validity_period
    #   Information describing the end of the validity period of the
    #   certificate. This parameter sets the “Not After” date for the
    #   certificate. Certificate validity is the period of time during which
    #   a certificate is valid. Validity can be expressed as an explicit
    #   date and time when the certificate expires, or as a span of time
    #   after issuance, stated in days, months, or years. For more
    #   information, see Validity in RFC 5280. This value is unaffected when
    #   ValidityNotBefore is also specified. For example, if Validity is set
    #   to 20 days in the future, the certificate will expire 20 days from
    #   issuance time regardless of the ValidityNotBefore value.
    #   @return [Types::ValidityPeriod]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/CertificateValidity AWS API Documentation
    #
    class CertificateValidity < Struct.new(
      :renewal_period,
      :validity_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # This request cannot be completed for one of the following reasons
    # because the requested resource was being concurrently modified by
    # another request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type, which can be one of `Connector`, `Template`,
    #   `TemplateGroupAccessControlEntry`, `ServicePrincipalName`, or
    #   `DirectoryRegistration`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Web Services Private CA Connector for Active Directory is a
    # service that links your Active Directory with Amazon Web Services
    # Private CA. The connector brokers the exchange of certificates from
    # Amazon Web Services Private CA to domain-joined users and machines
    # managed with Active Directory.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the certificate authority being
    #   used.
    #   @return [String]
    #
    # @!attribute [rw] certificate_enrollment_policy_server_endpoint
    #   Certificate enrollment endpoint for Active Directory domain-joined
    #   objects reach out to when requesting certificates.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the connector was created.
    #   @return [Time]
    #
    # @!attribute [rw] directory_id
    #   The identifier of the Active Directory.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the connector. Status can be creating, active, deleting,
    #   or failed.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Additional information about the connector status if the status is
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the connector was updated.
    #   @return [Time]
    #
    # @!attribute [rw] vpc_information
    #   Information of the VPC and security group(s) used with the
    #   connector.
    #   @return [Types::VpcInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/Connector AWS API Documentation
    #
    class Connector < Struct.new(
      :arn,
      :certificate_authority_arn,
      :certificate_enrollment_policy_server_endpoint,
      :created_at,
      :directory_id,
      :status,
      :status_reason,
      :updated_at,
      :vpc_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary description of the Amazon Web Services Private CA AD
    # connectors belonging to an Amazon Web Services account.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the certificate authority being
    #   used.
    #   @return [String]
    #
    # @!attribute [rw] certificate_enrollment_policy_server_endpoint
    #   Certificate enrollment endpoint for Active Directory domain-joined
    #   objects to request certificates.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the connector was created.
    #   @return [Time]
    #
    # @!attribute [rw] directory_id
    #   The identifier of the Active Directory.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the connector. Status can be creating, active, deleting,
    #   or failed.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Additional information about the connector status if the status is
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the connector was updated.
    #   @return [Time]
    #
    # @!attribute [rw] vpc_information
    #   Information of the VPC and security group(s) used with the
    #   connector.
    #   @return [Types::VpcInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ConnectorSummary AWS API Documentation
    #
    class ConnectorSummary < Struct.new(
      :arn,
      :certificate_authority_arn,
      :certificate_enrollment_policy_server_endpoint,
      :created_at,
      :directory_id,
      :status,
      :status_reason,
      :updated_at,
      :vpc_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the certificate authority being
    #   used.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The identifier of the Active Directory.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata assigned to a connector consisting of a key-value pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_information
    #   Security group IDs that describe the inbound and outbound rules.
    #   @return [Types::VpcInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/CreateConnectorRequest AWS API Documentation
    #
    class CreateConnectorRequest < Struct.new(
      :certificate_authority_arn,
      :client_token,
      :directory_id,
      :tags,
      :vpc_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_arn
    #   If successful, the Amazon Resource Name (ARN) of the connector for
    #   Active Directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/CreateConnectorResponse AWS API Documentation
    #
    class CreateConnectorResponse < Struct.new(
      :connector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The identifier of the Active Directory.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata assigned to a directory registration consisting of a
    #   key-value pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/CreateDirectoryRegistrationRequest AWS API Documentation
    #
    class CreateDirectoryRegistrationRequest < Struct.new(
      :client_token,
      :directory_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_registration_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateDirectoryRegistration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/CreateDirectoryRegistrationResponse AWS API Documentation
    #
    class CreateDirectoryRegistrationResponse < Struct.new(
      :directory_registration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #   @return [String]
    #
    # @!attribute [rw] directory_registration_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateDirectoryRegistration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/CreateServicePrincipalNameRequest AWS API Documentation
    #
    class CreateServicePrincipalNameRequest < Struct.new(
      :client_token,
      :connector_arn,
      :directory_registration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_rights
    #   Allow or deny permissions for an Active Directory group to enroll or
    #   autoenroll certificates for a template.
    #   @return [Types::AccessRights]
    #
    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] group_display_name
    #   Name of the Active Directory group. This name does not need to match
    #   the group name in Active Directory.
    #   @return [String]
    #
    # @!attribute [rw] group_security_identifier
    #   Security identifier (SID) of the group object from Active Directory.
    #   The SID starts with "S-".
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/CreateTemplateGroupAccessControlEntryRequest AWS API Documentation
    #
    class CreateTemplateGroupAccessControlEntryRequest < Struct.new(
      :access_rights,
      :client_token,
      :group_display_name,
      :group_security_identifier,
      :template_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Template configuration to define the information included in
    #   certificates. Define certificate validity and renewal periods,
    #   certificate request handling and enrollment options, key usage
    #   extensions, application policies, and cryptography settings.
    #   @return [Types::TemplateDefinition]
    #
    # @!attribute [rw] name
    #   Name of the template. The template name must be unique.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata assigned to a template consisting of a key-value pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/CreateTemplateRequest AWS API Documentation
    #
    class CreateTemplateRequest < Struct.new(
      :client_token,
      :connector_arn,
      :definition,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   If successful, the Amazon Resource Name (ARN) of the template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/CreateTemplateResponse AWS API Documentation
    #
    class CreateTemplateResponse < Struct.new(
      :template_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/DeleteConnectorRequest AWS API Documentation
    #
    class DeleteConnectorRequest < Struct.new(
      :connector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_registration_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateDirectoryRegistration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/DeleteDirectoryRegistrationRequest AWS API Documentation
    #
    class DeleteDirectoryRegistrationRequest < Struct.new(
      :directory_registration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #   @return [String]
    #
    # @!attribute [rw] directory_registration_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateDirectoryRegistration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/DeleteServicePrincipalNameRequest AWS API Documentation
    #
    class DeleteServicePrincipalNameRequest < Struct.new(
      :connector_arn,
      :directory_registration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_security_identifier
    #   Security identifier (SID) of the group object from Active Directory.
    #   The SID starts with "S-".
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/DeleteTemplateGroupAccessControlEntryRequest AWS API Documentation
    #
    class DeleteTemplateGroupAccessControlEntryRequest < Struct.new(
      :group_security_identifier,
      :template_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/DeleteTemplateRequest AWS API Documentation
    #
    class DeleteTemplateRequest < Struct.new(
      :template_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The directory registration represents the authorization of the
    # connector service with a directory.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   CreateDirectoryRegistration.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the directory registration was created.
    #   @return [Time]
    #
    # @!attribute [rw] directory_id
    #   The identifier of the Active Directory.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the directory registration.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Additional information about the directory registration status if
    #   the status is failed.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the directory registration was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/DirectoryRegistration AWS API Documentation
    #
    class DirectoryRegistration < Struct.new(
      :arn,
      :created_at,
      :directory_id,
      :status,
      :status_reason,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The directory registration represents the authorization of the
    # connector service with the Active Directory.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateDirectoryRegistration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the directory registration was created.
    #   @return [Time]
    #
    # @!attribute [rw] directory_id
    #   The identifier of the Active Directory.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the directory registration.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Additional information about the directory registration status if
    #   the status is failed.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the directory registration was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/DirectoryRegistrationSummary AWS API Documentation
    #
    class DirectoryRegistrationSummary < Struct.new(
      :arn,
      :created_at,
      :directory_id,
      :status,
      :status_reason,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Template configurations for v2 template schema.
    #
    # @!attribute [rw] enable_key_reuse_on_nt_token_keyset_storage_full
    #   Allow renewal using the same key.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_symmetric_algorithms
    #   Include symmetric algorithms allowed by the subject.
    #   @return [Boolean]
    #
    # @!attribute [rw] no_security_extension
    #   This flag instructs the CA to not include the security extension
    #   szOID\_NTDS\_CA\_SECURITY\_EXT (OID:1.3.6.1.4.1.311.25.2), as
    #   specified in \[MS-WCCE\] sections 2.2.2.7.7.4 and 3.2.2.6.2.1.4.5.9,
    #   in the issued certificate. This addresses a Windows Kerberos
    #   elevation-of-privilege vulnerability.
    #   @return [Boolean]
    #
    # @!attribute [rw] remove_invalid_certificate_from_personal_store
    #   Delete expired or revoked certificates instead of archiving them.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_interaction_required
    #   Require user interaction when the subject is enrolled and the
    #   private key associated with the certificate is used.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/EnrollmentFlagsV2 AWS API Documentation
    #
    class EnrollmentFlagsV2 < Struct.new(
      :enable_key_reuse_on_nt_token_keyset_storage_full,
      :include_symmetric_algorithms,
      :no_security_extension,
      :remove_invalid_certificate_from_personal_store,
      :user_interaction_required)
      SENSITIVE = []
      include Aws::Structure
    end

    # Template configurations for v3 template schema.
    #
    # @!attribute [rw] enable_key_reuse_on_nt_token_keyset_storage_full
    #   Allow renewal using the same key.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_symmetric_algorithms
    #   Include symmetric algorithms allowed by the subject.
    #   @return [Boolean]
    #
    # @!attribute [rw] no_security_extension
    #   This flag instructs the CA to not include the security extension
    #   szOID\_NTDS\_CA\_SECURITY\_EXT (OID:1.3.6.1.4.1.311.25.2), as
    #   specified in \[MS-WCCE\] sections 2.2.2.7.7.4 and 3.2.2.6.2.1.4.5.9,
    #   in the issued certificate. This addresses a Windows Kerberos
    #   elevation-of-privilege vulnerability.
    #   @return [Boolean]
    #
    # @!attribute [rw] remove_invalid_certificate_from_personal_store
    #   Delete expired or revoked certificates instead of archiving them.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_interaction_required
    #   Require user interaction when the subject is enrolled and the
    #   private key associated with the certificate is used.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/EnrollmentFlagsV3 AWS API Documentation
    #
    class EnrollmentFlagsV3 < Struct.new(
      :enable_key_reuse_on_nt_token_keyset_storage_full,
      :include_symmetric_algorithms,
      :no_security_extension,
      :remove_invalid_certificate_from_personal_store,
      :user_interaction_required)
      SENSITIVE = []
      include Aws::Structure
    end

    # Template configurations for v4 template schema.
    #
    # @!attribute [rw] enable_key_reuse_on_nt_token_keyset_storage_full
    #   Allow renewal using the same key.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_symmetric_algorithms
    #   Include symmetric algorithms allowed by the subject.
    #   @return [Boolean]
    #
    # @!attribute [rw] no_security_extension
    #   This flag instructs the CA to not include the security extension
    #   szOID\_NTDS\_CA\_SECURITY\_EXT (OID:1.3.6.1.4.1.311.25.2), as
    #   specified in \[MS-WCCE\] sections 2.2.2.7.7.4 and 3.2.2.6.2.1.4.5.9,
    #   in the issued certificate. This addresses a Windows Kerberos
    #   elevation-of-privilege vulnerability.
    #   @return [Boolean]
    #
    # @!attribute [rw] remove_invalid_certificate_from_personal_store
    #   Delete expired or revoked certificates instead of archiving them.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_interaction_required
    #   Require user interaction when the subject is enrolled and the
    #   private key associated with the certificate is used.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/EnrollmentFlagsV4 AWS API Documentation
    #
    class EnrollmentFlagsV4 < Struct.new(
      :enable_key_reuse_on_nt_token_keyset_storage_full,
      :include_symmetric_algorithms,
      :no_security_extension,
      :remove_invalid_certificate_from_personal_store,
      :user_interaction_required)
      SENSITIVE = []
      include Aws::Structure
    end

    # Certificate extensions for v2 template schema
    #
    # @!attribute [rw] application_policies
    #   Application policies specify what the certificate is used for and
    #   its purpose.
    #   @return [Types::ApplicationPolicies]
    #
    # @!attribute [rw] key_usage
    #   The key usage extension defines the purpose (e.g., encipherment,
    #   signature, certificate signing) of the key contained in the
    #   certificate.
    #   @return [Types::KeyUsage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ExtensionsV2 AWS API Documentation
    #
    class ExtensionsV2 < Struct.new(
      :application_policies,
      :key_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Certificate extensions for v3 template schema
    #
    # @!attribute [rw] application_policies
    #   Application policies specify what the certificate is used for and
    #   its purpose.
    #   @return [Types::ApplicationPolicies]
    #
    # @!attribute [rw] key_usage
    #   The key usage extension defines the purpose (e.g., encipherment,
    #   signature, certificate signing) of the key contained in the
    #   certificate.
    #   @return [Types::KeyUsage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ExtensionsV3 AWS API Documentation
    #
    class ExtensionsV3 < Struct.new(
      :application_policies,
      :key_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Certificate extensions for v4 template schema
    #
    # @!attribute [rw] application_policies
    #   Application policies specify what the certificate is used for and
    #   its purpose.
    #   @return [Types::ApplicationPolicies]
    #
    # @!attribute [rw] key_usage
    #   The key usage extension defines the purpose (e.g., encipherment,
    #   signature) of the key contained in the certificate.
    #   @return [Types::KeyUsage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ExtensionsV4 AWS API Documentation
    #
    class ExtensionsV4 < Struct.new(
      :application_policies,
      :key_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # General flags for v2 template schema that defines if the template is
    # for a machine or a user and if the template can be issued using
    # autoenrollment.
    #
    # @!attribute [rw] auto_enrollment
    #   Allows certificate issuance using autoenrollment. Set to TRUE to
    #   allow autoenrollment.
    #   @return [Boolean]
    #
    # @!attribute [rw] machine_type
    #   Defines if the template is for machines or users. Set to TRUE if the
    #   template is for machines. Set to FALSE if the template is for users.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GeneralFlagsV2 AWS API Documentation
    #
    class GeneralFlagsV2 < Struct.new(
      :auto_enrollment,
      :machine_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # General flags for v3 template schema that defines if the template is
    # for a machine or a user and if the template can be issued using
    # autoenrollment.
    #
    # @!attribute [rw] auto_enrollment
    #   Allows certificate issuance using autoenrollment. Set to TRUE to
    #   allow autoenrollment.
    #   @return [Boolean]
    #
    # @!attribute [rw] machine_type
    #   Defines if the template is for machines or users. Set to TRUE if the
    #   template is for machines. Set to FALSE if the template is for users
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GeneralFlagsV3 AWS API Documentation
    #
    class GeneralFlagsV3 < Struct.new(
      :auto_enrollment,
      :machine_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # General flags for v4 template schema that defines if the template is
    # for a machine or a user and if the template can be issued using
    # autoenrollment.
    #
    # @!attribute [rw] auto_enrollment
    #   Allows certificate issuance using autoenrollment. Set to TRUE to
    #   allow autoenrollment.
    #   @return [Boolean]
    #
    # @!attribute [rw] machine_type
    #   Defines if the template is for machines or users. Set to TRUE if the
    #   template is for machines. Set to FALSE if the template is for users
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GeneralFlagsV4 AWS API Documentation
    #
    class GeneralFlagsV4 < Struct.new(
      :auto_enrollment,
      :machine_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GetConnectorRequest AWS API Documentation
    #
    class GetConnectorRequest < Struct.new(
      :connector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector
    #   A structure that contains information about your connector.
    #   @return [Types::Connector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GetConnectorResponse AWS API Documentation
    #
    class GetConnectorResponse < Struct.new(
      :connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_registration_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateDirectoryRegistration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GetDirectoryRegistrationRequest AWS API Documentation
    #
    class GetDirectoryRegistrationRequest < Struct.new(
      :directory_registration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_registration
    #   The directory registration represents the authorization of the
    #   connector service with a directory.
    #   @return [Types::DirectoryRegistration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GetDirectoryRegistrationResponse AWS API Documentation
    #
    class GetDirectoryRegistrationResponse < Struct.new(
      :directory_registration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #   @return [String]
    #
    # @!attribute [rw] directory_registration_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateDirectoryRegistration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GetServicePrincipalNameRequest AWS API Documentation
    #
    class GetServicePrincipalNameRequest < Struct.new(
      :connector_arn,
      :directory_registration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_principal_name
    #   The service principal name that the connector uses to authenticate
    #   with Active Directory.
    #   @return [Types::ServicePrincipalName]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GetServicePrincipalNameResponse AWS API Documentation
    #
    class GetServicePrincipalNameResponse < Struct.new(
      :service_principal_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_security_identifier
    #   Security identifier (SID) of the group object from Active Directory.
    #   The SID starts with "S-".
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GetTemplateGroupAccessControlEntryRequest AWS API Documentation
    #
    class GetTemplateGroupAccessControlEntryRequest < Struct.new(
      :group_security_identifier,
      :template_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_control_entry
    #   An access control entry allows or denies an Active Directory group
    #   from enrolling and/or autoenrolling with a template.
    #   @return [Types::AccessControlEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GetTemplateGroupAccessControlEntryResponse AWS API Documentation
    #
    class GetTemplateGroupAccessControlEntryResponse < Struct.new(
      :access_control_entry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GetTemplateRequest AWS API Documentation
    #
    class GetTemplateRequest < Struct.new(
      :template_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template
    #   A certificate template that the connector uses to issue certificates
    #   from a private CA.
    #   @return [Types::Template]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/GetTemplateResponse AWS API Documentation
    #
    class GetTemplateResponse < Struct.new(
      :template)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure with an internal server.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The key usage extension defines the purpose (e.g., encipherment,
    # signature) of the key contained in the certificate.
    #
    # @!attribute [rw] critical
    #   Sets the key usage extension to critical.
    #   @return [Boolean]
    #
    # @!attribute [rw] usage_flags
    #   The key usage flags represent the purpose (e.g., encipherment,
    #   signature) of the key contained in the certificate.
    #   @return [Types::KeyUsageFlags]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/KeyUsage AWS API Documentation
    #
    class KeyUsage < Struct.new(
      :critical,
      :usage_flags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The key usage flags represent the purpose (e.g., encipherment,
    # signature) of the key contained in the certificate.
    #
    # @!attribute [rw] data_encipherment
    #   DataEncipherment is asserted when the subject public key is used for
    #   directly enciphering raw user data without the use of an
    #   intermediate symmetric cipher.
    #   @return [Boolean]
    #
    # @!attribute [rw] digital_signature
    #   The digitalSignature is asserted when the subject public key is used
    #   for verifying digital signatures.
    #   @return [Boolean]
    #
    # @!attribute [rw] key_agreement
    #   KeyAgreement is asserted when the subject public key is used for key
    #   agreement.
    #   @return [Boolean]
    #
    # @!attribute [rw] key_encipherment
    #   KeyEncipherment is asserted when the subject public key is used for
    #   enciphering private or secret keys, i.e., for key transport.
    #   @return [Boolean]
    #
    # @!attribute [rw] non_repudiation
    #   NonRepudiation is asserted when the subject public key is used to
    #   verify digital signatures.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/KeyUsageFlags AWS API Documentation
    #
    class KeyUsageFlags < Struct.new(
      :data_encipherment,
      :digital_signature,
      :key_agreement,
      :key_encipherment,
      :non_repudiation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The key usage property defines the purpose of the private key
    # contained in the certificate. You can specify specific purposes using
    # property flags or all by using property type ALL.
    #
    # @note KeyUsageProperty is a union - when making an API calls you must set exactly one of the members.
    #
    # @note KeyUsageProperty is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of KeyUsageProperty corresponding to the set member.
    #
    # @!attribute [rw] property_flags
    #   You can specify key usage for encryption, key agreement, and
    #   signature. You can use property flags or property type but not both.
    #   @return [Types::KeyUsagePropertyFlags]
    #
    # @!attribute [rw] property_type
    #   You can specify all key usages using property type ALL. You can use
    #   property type or property flags but not both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/KeyUsageProperty AWS API Documentation
    #
    class KeyUsageProperty < Struct.new(
      :property_flags,
      :property_type,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class PropertyFlags < KeyUsageProperty; end
      class PropertyType < KeyUsageProperty; end
      class Unknown < KeyUsageProperty; end
    end

    # Specifies key usage.
    #
    # @!attribute [rw] decrypt
    #   Allows key for encryption and decryption.
    #   @return [Boolean]
    #
    # @!attribute [rw] key_agreement
    #   Allows key exchange without encryption.
    #   @return [Boolean]
    #
    # @!attribute [rw] sign
    #   Allow key use for digital signature.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/KeyUsagePropertyFlags AWS API Documentation
    #
    class KeyUsagePropertyFlags < Struct.new(
      :decrypt,
      :key_agreement,
      :sign)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Use this parameter when paginating results to specify the maximum
    #   number of items to return in the response on each page. If
    #   additional items exist beyond the number you specify, the
    #   `NextToken` element is sent in the response. Use this `NextToken`
    #   value in a subsequent request to retrieve additional items.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the `NextToken` parameter from the response you just
    #   received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListConnectorsRequest AWS API Documentation
    #
    class ListConnectorsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connectors
    #   Summary information about each connector you have created.
    #   @return [Array<Types::ConnectorSummary>]
    #
    # @!attribute [rw] next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the NextToken parameter from the response you just
    #   received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListConnectorsResponse AWS API Documentation
    #
    class ListConnectorsResponse < Struct.new(
      :connectors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Use this parameter when paginating results to specify the maximum
    #   number of items to return in the response on each page. If
    #   additional items exist beyond the number you specify, the
    #   `NextToken` element is sent in the response. Use this `NextToken`
    #   value in a subsequent request to retrieve additional items.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the `NextToken` parameter from the response you just
    #   received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListDirectoryRegistrationsRequest AWS API Documentation
    #
    class ListDirectoryRegistrationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_registrations
    #   Summary information about each directory registration you have
    #   created.
    #   @return [Array<Types::DirectoryRegistrationSummary>]
    #
    # @!attribute [rw] next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the `NextToken` parameter from the response you just
    #   received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListDirectoryRegistrationsResponse AWS API Documentation
    #
    class ListDirectoryRegistrationsResponse < Struct.new(
      :directory_registrations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_registration_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateDirectoryRegistration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html
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
    # @!attribute [rw] next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the `NextToken` parameter from the response you just
    #   received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListServicePrincipalNamesRequest AWS API Documentation
    #
    class ListServicePrincipalNamesRequest < Struct.new(
      :directory_registration_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the `NextToken` parameter from the response you just
    #   received.
    #   @return [String]
    #
    # @!attribute [rw] service_principal_names
    #   The service principal name, if any, that the connector uses to
    #   authenticate with Active Directory.
    #   @return [Array<Types::ServicePrincipalNameSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListServicePrincipalNamesResponse AWS API Documentation
    #
    class ListServicePrincipalNamesResponse < Struct.new(
      :next_token,
      :service_principal_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that was returned when you created
    #   the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags, if any, that are associated with your resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Use this parameter when paginating results to specify the maximum
    #   number of items to return in the response on each page. If
    #   additional items exist beyond the number you specify, the
    #   `NextToken` element is sent in the response. Use this `NextToken`
    #   value in a subsequent request to retrieve additional items.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the `NextToken` parameter from the response you just
    #   received.
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListTemplateGroupAccessControlEntriesRequest AWS API Documentation
    #
    class ListTemplateGroupAccessControlEntriesRequest < Struct.new(
      :max_results,
      :next_token,
      :template_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_control_entries
    #   An access control entry grants or denies permission to an Active
    #   Directory group to enroll certificates for a template.
    #   @return [Array<Types::AccessControlEntrySummary>]
    #
    # @!attribute [rw] next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the `NextToken` parameter from the response you just
    #   received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListTemplateGroupAccessControlEntriesResponse AWS API Documentation
    #
    class ListTemplateGroupAccessControlEntriesResponse < Struct.new(
      :access_control_entries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
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
    # @!attribute [rw] next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the `NextToken` parameter from the response you just
    #   received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListTemplatesRequest AWS API Documentation
    #
    class ListTemplatesRequest < Struct.new(
      :connector_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Use this parameter when paginating results in a subsequent request
    #   after you receive a response with truncated results. Set it to the
    #   value of the `NextToken` parameter from the response you just
    #   received.
    #   @return [String]
    #
    # @!attribute [rw] templates
    #   Custom configuration templates used when issuing a certificate.
    #   @return [Array<Types::TemplateSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ListTemplatesResponse AWS API Documentation
    #
    class ListTemplatesResponse < Struct.new(
      :next_token,
      :templates)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the attributes of the private key.
    #
    # @!attribute [rw] crypto_providers
    #   Defines the cryptographic providers used to generate the private
    #   key.
    #   @return [Array<String>]
    #
    # @!attribute [rw] key_spec
    #   Defines the purpose of the private key. Set it to "KEY\_EXCHANGE"
    #   or "SIGNATURE" value.
    #   @return [String]
    #
    # @!attribute [rw] minimal_key_length
    #   Set the minimum key length of the private key.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/PrivateKeyAttributesV2 AWS API Documentation
    #
    class PrivateKeyAttributesV2 < Struct.new(
      :crypto_providers,
      :key_spec,
      :minimal_key_length)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the attributes of the private key.
    #
    # @!attribute [rw] algorithm
    #   Defines the algorithm used to generate the private key.
    #   @return [String]
    #
    # @!attribute [rw] crypto_providers
    #   Defines the cryptographic providers used to generate the private
    #   key.
    #   @return [Array<String>]
    #
    # @!attribute [rw] key_spec
    #   Defines the purpose of the private key. Set it to "KEY\_EXCHANGE"
    #   or "SIGNATURE" value.
    #   @return [String]
    #
    # @!attribute [rw] key_usage_property
    #   The key usage property defines the purpose of the private key
    #   contained in the certificate. You can specify specific purposes
    #   using property flags or all by using property type ALL.
    #   @return [Types::KeyUsageProperty]
    #
    # @!attribute [rw] minimal_key_length
    #   Set the minimum key length of the private key.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/PrivateKeyAttributesV3 AWS API Documentation
    #
    class PrivateKeyAttributesV3 < Struct.new(
      :algorithm,
      :crypto_providers,
      :key_spec,
      :key_usage_property,
      :minimal_key_length)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the attributes of the private key.
    #
    # @!attribute [rw] algorithm
    #   Defines the algorithm used to generate the private key.
    #   @return [String]
    #
    # @!attribute [rw] crypto_providers
    #   Defines the cryptographic providers used to generate the private
    #   key.
    #   @return [Array<String>]
    #
    # @!attribute [rw] key_spec
    #   Defines the purpose of the private key. Set it to "KEY\_EXCHANGE"
    #   or "SIGNATURE" value.
    #   @return [String]
    #
    # @!attribute [rw] key_usage_property
    #   The key usage property defines the purpose of the private key
    #   contained in the certificate. You can specify specific purposes
    #   using property flags or all by using property type ALL.
    #   @return [Types::KeyUsageProperty]
    #
    # @!attribute [rw] minimal_key_length
    #   Set the minimum key length of the private key.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/PrivateKeyAttributesV4 AWS API Documentation
    #
    class PrivateKeyAttributesV4 < Struct.new(
      :algorithm,
      :crypto_providers,
      :key_spec,
      :key_usage_property,
      :minimal_key_length)
      SENSITIVE = []
      include Aws::Structure
    end

    # Private key flags for v2 templates specify the client compatibility,
    # if the private key can be exported, and if user input is required when
    # using a private key.
    #
    # @!attribute [rw] client_version
    #   Defines the minimum client compatibility.
    #   @return [String]
    #
    # @!attribute [rw] exportable_key
    #   Allows the private key to be exported.
    #   @return [Boolean]
    #
    # @!attribute [rw] strong_key_protection_required
    #   Require user input when using the private key for enrollment.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/PrivateKeyFlagsV2 AWS API Documentation
    #
    class PrivateKeyFlagsV2 < Struct.new(
      :client_version,
      :exportable_key,
      :strong_key_protection_required)
      SENSITIVE = []
      include Aws::Structure
    end

    # Private key flags for v3 templates specify the client compatibility,
    # if the private key can be exported, if user input is required when
    # using a private key, and if an alternate signature algorithm should be
    # used.
    #
    # @!attribute [rw] client_version
    #   Defines the minimum client compatibility.
    #   @return [String]
    #
    # @!attribute [rw] exportable_key
    #   Allows the private key to be exported.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_alternate_signature_algorithm
    #   Reguires the PKCS #1 v2.1 signature format for certificates. You
    #   should verify that your CA, objects, and applications can accept
    #   this signature format.
    #   @return [Boolean]
    #
    # @!attribute [rw] strong_key_protection_required
    #   Requirer user input when using the private key for enrollment.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/PrivateKeyFlagsV3 AWS API Documentation
    #
    class PrivateKeyFlagsV3 < Struct.new(
      :client_version,
      :exportable_key,
      :require_alternate_signature_algorithm,
      :strong_key_protection_required)
      SENSITIVE = []
      include Aws::Structure
    end

    # Private key flags for v4 templates specify the client compatibility,
    # if the private key can be exported, if user input is required when
    # using a private key, if an alternate signature algorithm should be
    # used, and if certificates are renewed using the same private key.
    #
    # @!attribute [rw] client_version
    #   Defines the minimum client compatibility.
    #   @return [String]
    #
    # @!attribute [rw] exportable_key
    #   Allows the private key to be exported.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_alternate_signature_algorithm
    #   Requires the PKCS #1 v2.1 signature format for certificates. You
    #   should verify that your CA, objects, and applications can accept
    #   this signature format.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_same_key_renewal
    #   Renew certificate using the same private key.
    #   @return [Boolean]
    #
    # @!attribute [rw] strong_key_protection_required
    #   Require user input when using the private key for enrollment.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_legacy_provider
    #   Specifies the cryptographic service provider category used to
    #   generate private keys. Set to TRUE to use Legacy Cryptographic
    #   Service Providers and FALSE to use Key Storage Providers.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/PrivateKeyFlagsV4 AWS API Documentation
    #
    class PrivateKeyFlagsV4 < Struct.new(
      :client_version,
      :exportable_key,
      :require_alternate_signature_algorithm,
      :require_same_key_renewal,
      :strong_key_protection_required,
      :use_legacy_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation tried to access a nonexistent resource. The resource
    # might not be specified correctly, or its status might not be ACTIVE.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type, which can be one of `Connector`, `Template`,
    #   `TemplateGroupAccessControlEntry`, `ServicePrincipalName`, or
    #   `DirectoryRegistration`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service principal name that the connector uses to authenticate
    # with Active Directory.
    #
    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector.html][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the service principal name was created.
    #   @return [Time]
    #
    # @!attribute [rw] directory_registration_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateDirectoryRegistration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a service principal name.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Additional information for the status of a service principal name if
    #   the status is failed.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the service principal name was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ServicePrincipalName AWS API Documentation
    #
    class ServicePrincipalName < Struct.new(
      :connector_arn,
      :created_at,
      :directory_registration_arn,
      :status,
      :status_reason,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service principal name that the connector uses to authenticate
    # with Active Directory.
    #
    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the service principal name was created.
    #   @return [Time]
    #
    # @!attribute [rw] directory_registration_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateDirectoryRegistration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a service principal name.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Additional information for the status of a service principal name if
    #   the status is failed.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Time when the service principal name was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ServicePrincipalNameSummary AWS API Documentation
    #
    class ServicePrincipalNameSummary < Struct.new(
      :connector_arn,
      :created_at,
      :directory_registration_arn,
      :status,
      :status_reason,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code associated with the service quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type, which can be one of `Connector`, `Template`,
    #   `TemplateGroupAccessControlEntry`, `ServicePrincipalName`, or
    #   `DirectoryRegistration`.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Identifies the originating service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :resource_id,
      :resource_type,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information to include in the subject name and alternate subject name
    # of the certificate. The subject name can be common name, directory
    # path, DNS as common name, or left blank. You can optionally include
    # email to the subject name for user templates. If you leave the subject
    # name blank then you must set a subject alternate name. The subject
    # alternate name (SAN) can include globally unique identifier (GUID),
    # DNS, domain DNS, email, service principal name (SPN), and user
    # principal name (UPN). You can leave the SAN blank. If you leave the
    # SAN blank, then you must set a subject name.
    #
    # @!attribute [rw] require_common_name
    #   Include the common name in the subject name.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_directory_path
    #   Include the directory path in the subject name.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_dns_as_cn
    #   Include the DNS as common name in the subject name.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_email
    #   Include the subject's email in the subject name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_directory_guid
    #   Include the globally unique identifier (GUID) in the subject
    #   alternate name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_dns
    #   Include the DNS in the subject alternate name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_domain_dns
    #   Include the domain DNS in the subject alternate name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_email
    #   Include the subject's email in the subject alternate name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_spn
    #   Include the service principal name (SPN) in the subject alternate
    #   name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_upn
    #   Include the user principal name (UPN) in the subject alternate name.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/SubjectNameFlagsV2 AWS API Documentation
    #
    class SubjectNameFlagsV2 < Struct.new(
      :require_common_name,
      :require_directory_path,
      :require_dns_as_cn,
      :require_email,
      :san_require_directory_guid,
      :san_require_dns,
      :san_require_domain_dns,
      :san_require_email,
      :san_require_spn,
      :san_require_upn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information to include in the subject name and alternate subject name
    # of the certificate. The subject name can be common name, directory
    # path, DNS as common name, or left blank. You can optionally include
    # email to the subject name for user templates. If you leave the subject
    # name blank then you must set a subject alternate name. The subject
    # alternate name (SAN) can include globally unique identifier (GUID),
    # DNS, domain DNS, email, service principal name (SPN), and user
    # principal name (UPN). You can leave the SAN blank. If you leave the
    # SAN blank, then you must set a subject name.
    #
    # @!attribute [rw] require_common_name
    #   Include the common name in the subject name.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_directory_path
    #   Include the directory path in the subject name.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_dns_as_cn
    #   Include the DNS as common name in the subject name.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_email
    #   Include the subject's email in the subject name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_directory_guid
    #   Include the globally unique identifier (GUID) in the subject
    #   alternate name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_dns
    #   Include the DNS in the subject alternate name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_domain_dns
    #   Include the domain DNS in the subject alternate name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_email
    #   Include the subject's email in the subject alternate name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_spn
    #   Include the service principal name (SPN) in the subject alternate
    #   name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_upn
    #   Include the user principal name (UPN) in the subject alternate name.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/SubjectNameFlagsV3 AWS API Documentation
    #
    class SubjectNameFlagsV3 < Struct.new(
      :require_common_name,
      :require_directory_path,
      :require_dns_as_cn,
      :require_email,
      :san_require_directory_guid,
      :san_require_dns,
      :san_require_domain_dns,
      :san_require_email,
      :san_require_spn,
      :san_require_upn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information to include in the subject name and alternate subject name
    # of the certificate. The subject name can be common name, directory
    # path, DNS as common name, or left blank. You can optionally include
    # email to the subject name for user templates. If you leave the subject
    # name blank then you must set a subject alternate name. The subject
    # alternate name (SAN) can include globally unique identifier (GUID),
    # DNS, domain DNS, email, service principal name (SPN), and user
    # principal name (UPN). You can leave the SAN blank. If you leave the
    # SAN blank, then you must set a subject name.
    #
    # @!attribute [rw] require_common_name
    #   Include the common name in the subject name.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_directory_path
    #   Include the directory path in the subject name.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_dns_as_cn
    #   Include the DNS as common name in the subject name.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_email
    #   Include the subject's email in the subject name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_directory_guid
    #   Include the globally unique identifier (GUID) in the subject
    #   alternate name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_dns
    #   Include the DNS in the subject alternate name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_domain_dns
    #   Include the domain DNS in the subject alternate name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_email
    #   Include the subject's email in the subject alternate name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_spn
    #   Include the service principal name (SPN) in the subject alternate
    #   name.
    #   @return [Boolean]
    #
    # @!attribute [rw] san_require_upn
    #   Include the user principal name (UPN) in the subject alternate name.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/SubjectNameFlagsV4 AWS API Documentation
    #
    class SubjectNameFlagsV4 < Struct.new(
      :require_common_name,
      :require_directory_path,
      :require_dns_as_cn,
      :require_email,
      :san_require_directory_guid,
      :san_require_dns,
      :san_require_domain_dns,
      :san_require_email,
      :san_require_spn,
      :san_require_upn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that was returned when you created
    #   the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata assigned to a directory registration consisting of a
    #   key-value pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Active Directory compatible certificate template. Connectors issue
    # certificates against these templates based on the requestor's Active
    # Directory group membership.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #   @return [String]
    #
    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the template was created.
    #   @return [Time]
    #
    # @!attribute [rw] definition
    #   Template configuration to define the information included in
    #   certificates. Define certificate validity and renewal periods,
    #   certificate request handling and enrollment options, key usage
    #   extensions, application policies, and cryptography settings.
    #   @return [Types::TemplateDefinition]
    #
    # @!attribute [rw] name
    #   Name of the templates. Template names must be unique.
    #   @return [String]
    #
    # @!attribute [rw] object_identifier
    #   Object identifier of a template.
    #   @return [String]
    #
    # @!attribute [rw] policy_schema
    #   The template schema version. Template schema versions can be v2, v3,
    #   or v4. The template configuration options change based on the
    #   template schema version.
    #   @return [Integer]
    #
    # @!attribute [rw] revision
    #   The version of the template. Template updates will increment the
    #   minor revision. Re-enrolling all certificate holders will increment
    #   the major revision.
    #   @return [Types::TemplateRevision]
    #
    # @!attribute [rw] status
    #   Status of the template. Status can be creating, active, deleting, or
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the template was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/Template AWS API Documentation
    #
    class Template < Struct.new(
      :arn,
      :connector_arn,
      :created_at,
      :definition,
      :name,
      :object_identifier,
      :policy_schema,
      :revision,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Template configuration to define the information included in
    # certificates. Define certificate validity and renewal periods,
    # certificate request handling and enrollment options, key usage
    # extensions, application policies, and cryptography settings.
    #
    # @note TemplateDefinition is a union - when making an API calls you must set exactly one of the members.
    #
    # @note TemplateDefinition is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TemplateDefinition corresponding to the set member.
    #
    # @!attribute [rw] template_v2
    #   Template configuration to define the information included in
    #   certificates. Define certificate validity and renewal periods,
    #   certificate request handling and enrollment options, key usage
    #   extensions, application policies, and cryptography settings.
    #   @return [Types::TemplateV2]
    #
    # @!attribute [rw] template_v3
    #   Template configuration to define the information included in
    #   certificates. Define certificate validity and renewal periods,
    #   certificate request handling and enrollment options, key usage
    #   extensions, application policies, and cryptography settings.
    #   @return [Types::TemplateV3]
    #
    # @!attribute [rw] template_v4
    #   Template configuration to define the information included in
    #   certificates. Define certificate validity and renewal periods,
    #   certificate request handling and enrollment options, key usage
    #   extensions, application policies, and cryptography settings.
    #   @return [Types::TemplateV4]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/TemplateDefinition AWS API Documentation
    #
    class TemplateDefinition < Struct.new(
      :template_v2,
      :template_v3,
      :template_v4,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class TemplateV2 < TemplateDefinition; end
      class TemplateV3 < TemplateDefinition; end
      class TemplateV4 < TemplateDefinition; end
      class Unknown < TemplateDefinition; end
    end

    # The revision version of the template. Template updates will increment
    # the minor revision. Re-enrolling all certificate holders will
    # increment the major revision.
    #
    # @!attribute [rw] major_revision
    #   The revision version of the template. Re-enrolling all certificate
    #   holders will increment the major revision.
    #   @return [Integer]
    #
    # @!attribute [rw] minor_revision
    #   The revision version of the template. Re-enrolling all certificate
    #   holders will increment the major revision.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/TemplateRevision AWS API Documentation
    #
    class TemplateRevision < Struct.new(
      :major_revision,
      :minor_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Active Directory compatible certificate template. Connectors issue
    # certificates against these templates based on the requestor's Active
    # Directory group membership.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #   @return [String]
    #
    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateConnector][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the template was created.
    #   @return [Time]
    #
    # @!attribute [rw] definition
    #   Template configuration to define the information included in
    #   certificates. Define certificate validity and renewal periods,
    #   certificate request handling and enrollment options, key usage
    #   extensions, application policies, and cryptography settings.
    #   @return [Types::TemplateDefinition]
    #
    # @!attribute [rw] name
    #   Name of the template. The template name must be unique.
    #   @return [String]
    #
    # @!attribute [rw] object_identifier
    #   Object identifier of a template.
    #   @return [String]
    #
    # @!attribute [rw] policy_schema
    #   The template schema version. Template schema versions can be v2, v3,
    #   or v4. The template configuration options change based on the
    #   template schema version.
    #   @return [Integer]
    #
    # @!attribute [rw] revision
    #   The revision version of the template. Template updates will
    #   increment the minor revision. Re-enrolling all certificate holders
    #   will increment the major revision.
    #   @return [Types::TemplateRevision]
    #
    # @!attribute [rw] status
    #   Status of the template. Status can be creating, active, deleting, or
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the template was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/TemplateSummary AWS API Documentation
    #
    class TemplateSummary < Struct.new(
      :arn,
      :connector_arn,
      :created_at,
      :definition,
      :name,
      :object_identifier,
      :policy_schema,
      :revision,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # v2 template schema that uses Legacy Cryptographic Providers.
    #
    # @!attribute [rw] certificate_validity
    #   Certificate validity describes the validity and renewal periods of a
    #   certificate.
    #   @return [Types::CertificateValidity]
    #
    # @!attribute [rw] enrollment_flags
    #   Enrollment flags describe the enrollment settings for certificates
    #   such as using the existing private key and deleting expired or
    #   revoked certificates.
    #   @return [Types::EnrollmentFlagsV2]
    #
    # @!attribute [rw] extensions
    #   Extensions describe the key usage extensions and application
    #   policies for a template.
    #   @return [Types::ExtensionsV2]
    #
    # @!attribute [rw] general_flags
    #   General flags describe whether the template is used for computers or
    #   users and if the template can be used with autoenrollment.
    #   @return [Types::GeneralFlagsV2]
    #
    # @!attribute [rw] private_key_attributes
    #   Private key attributes allow you to specify the minimal key length,
    #   key spec, and cryptographic providers for the private key of a
    #   certificate for v2 templates. V2 templates allow you to use Legacy
    #   Cryptographic Service Providers.
    #   @return [Types::PrivateKeyAttributesV2]
    #
    # @!attribute [rw] private_key_flags
    #   Private key flags for v2 templates specify the client compatibility,
    #   if the private key can be exported, and if user input is required
    #   when using a private key.
    #   @return [Types::PrivateKeyFlagsV2]
    #
    # @!attribute [rw] subject_name_flags
    #   Subject name flags describe the subject name and subject alternate
    #   name that is included in a certificate.
    #   @return [Types::SubjectNameFlagsV2]
    #
    # @!attribute [rw] superseded_templates
    #   List of templates in Active Directory that are superseded by this
    #   template.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/TemplateV2 AWS API Documentation
    #
    class TemplateV2 < Struct.new(
      :certificate_validity,
      :enrollment_flags,
      :extensions,
      :general_flags,
      :private_key_attributes,
      :private_key_flags,
      :subject_name_flags,
      :superseded_templates)
      SENSITIVE = []
      include Aws::Structure
    end

    # v3 template schema that uses Key Storage Providers.
    #
    # @!attribute [rw] certificate_validity
    #   Certificate validity describes the validity and renewal periods of a
    #   certificate.
    #   @return [Types::CertificateValidity]
    #
    # @!attribute [rw] enrollment_flags
    #   Enrollment flags describe the enrollment settings for certificates
    #   such as using the existing private key and deleting expired or
    #   revoked certificates.
    #   @return [Types::EnrollmentFlagsV3]
    #
    # @!attribute [rw] extensions
    #   Extensions describe the key usage extensions and application
    #   policies for a template.
    #   @return [Types::ExtensionsV3]
    #
    # @!attribute [rw] general_flags
    #   General flags describe whether the template is used for computers or
    #   users and if the template can be used with autoenrollment.
    #   @return [Types::GeneralFlagsV3]
    #
    # @!attribute [rw] hash_algorithm
    #   Specifies the hash algorithm used to hash the private key.
    #   @return [String]
    #
    # @!attribute [rw] private_key_attributes
    #   Private key attributes allow you to specify the algorithm, minimal
    #   key length, key spec, key usage, and cryptographic providers for the
    #   private key of a certificate for v3 templates. V3 templates allow
    #   you to use Key Storage Providers.
    #   @return [Types::PrivateKeyAttributesV3]
    #
    # @!attribute [rw] private_key_flags
    #   Private key flags for v3 templates specify the client compatibility,
    #   if the private key can be exported, if user input is required when
    #   using a private key, and if an alternate signature algorithm should
    #   be used.
    #   @return [Types::PrivateKeyFlagsV3]
    #
    # @!attribute [rw] subject_name_flags
    #   Subject name flags describe the subject name and subject alternate
    #   name that is included in a certificate.
    #   @return [Types::SubjectNameFlagsV3]
    #
    # @!attribute [rw] superseded_templates
    #   List of templates in Active Directory that are superseded by this
    #   template.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/TemplateV3 AWS API Documentation
    #
    class TemplateV3 < Struct.new(
      :certificate_validity,
      :enrollment_flags,
      :extensions,
      :general_flags,
      :hash_algorithm,
      :private_key_attributes,
      :private_key_flags,
      :subject_name_flags,
      :superseded_templates)
      SENSITIVE = []
      include Aws::Structure
    end

    # v4 template schema that can use either Legacy Cryptographic Providers
    # or Key Storage Providers.
    #
    # @!attribute [rw] certificate_validity
    #   Certificate validity describes the validity and renewal periods of a
    #   certificate.
    #   @return [Types::CertificateValidity]
    #
    # @!attribute [rw] enrollment_flags
    #   Enrollment flags describe the enrollment settings for certificates
    #   using the existing private key and deleting expired or revoked
    #   certificates.
    #   @return [Types::EnrollmentFlagsV4]
    #
    # @!attribute [rw] extensions
    #   Extensions describe the key usage extensions and application
    #   policies for a template.
    #   @return [Types::ExtensionsV4]
    #
    # @!attribute [rw] general_flags
    #   General flags describe whether the template is used for computers or
    #   users and if the template can be used with autoenrollment.
    #   @return [Types::GeneralFlagsV4]
    #
    # @!attribute [rw] hash_algorithm
    #   Specifies the hash algorithm used to hash the private key. Hash
    #   algorithm can only be specified when using Key Storage Providers.
    #   @return [String]
    #
    # @!attribute [rw] private_key_attributes
    #   Private key attributes allow you to specify the minimal key length,
    #   key spec, key usage, and cryptographic providers for the private key
    #   of a certificate for v4 templates. V4 templates allow you to use
    #   either Key Storage Providers or Legacy Cryptographic Service
    #   Providers. You specify the cryptography provider category in private
    #   key flags.
    #   @return [Types::PrivateKeyAttributesV4]
    #
    # @!attribute [rw] private_key_flags
    #   Private key flags for v4 templates specify the client compatibility,
    #   if the private key can be exported, if user input is required when
    #   using a private key, if an alternate signature algorithm should be
    #   used, and if certificates are renewed using the same private key.
    #   @return [Types::PrivateKeyFlagsV4]
    #
    # @!attribute [rw] subject_name_flags
    #   Subject name flags describe the subject name and subject alternate
    #   name that is included in a certificate.
    #   @return [Types::SubjectNameFlagsV4]
    #
    # @!attribute [rw] superseded_templates
    #   List of templates in Active Directory that are superseded by this
    #   template.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/TemplateV4 AWS API Documentation
    #
    class TemplateV4 < Struct.new(
      :certificate_validity,
      :enrollment_flags,
      :extensions,
      :general_flags,
      :hash_algorithm,
      :private_key_attributes,
      :private_key_flags,
      :subject_name_flags,
      :superseded_templates)
      SENSITIVE = []
      include Aws::Structure
    end

    # The limit on the number of requests per second was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code associated with the quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Identifies the originating service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that was returned when you created
    #   the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Specifies a list of tag keys that you want to remove from the
    #   specified resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_rights
    #   Allow or deny permissions for an Active Directory group to enroll or
    #   autoenroll certificates for a template.
    #   @return [Types::AccessRights]
    #
    # @!attribute [rw] group_display_name
    #   Name of the Active Directory group. This name does not need to match
    #   the group name in Active Directory.
    #   @return [String]
    #
    # @!attribute [rw] group_security_identifier
    #   Security identifier (SID) of the group object from Active Directory.
    #   The SID starts with "S-".
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/UpdateTemplateGroupAccessControlEntryRequest AWS API Documentation
    #
    class UpdateTemplateGroupAccessControlEntryRequest < Struct.new(
      :access_rights,
      :group_display_name,
      :group_security_identifier,
      :template_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] definition
    #   Template configuration to define the information included in
    #   certificates. Define certificate validity and renewal periods,
    #   certificate request handling and enrollment options, key usage
    #   extensions, application policies, and cryptography settings.
    #   @return [Types::TemplateDefinition]
    #
    # @!attribute [rw] reenroll_all_certificate_holders
    #   This setting allows the major version of a template to be increased
    #   automatically. All members of Active Directory groups that are
    #   allowed to enroll with a template will receive a new certificate
    #   issued using that template.
    #   @return [Boolean]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) that was returned when you called
    #   [CreateTemplate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/UpdateTemplateRequest AWS API Documentation
    #
    class UpdateTemplateRequest < Struct.new(
      :definition,
      :reenroll_all_certificate_holders,
      :template_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An input validation error occurred. For example, invalid characters in
    # a template name, or if a pagination token is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation error. This won't be return for every
    #   validation exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information describing the end of the validity period of the
    # certificate. This parameter sets the “Not After” date for the
    # certificate. Certificate validity is the period of time during which a
    # certificate is valid. Validity can be expressed as an explicit date
    # and time when the certificate expires, or as a span of time after
    # issuance, stated in hours, days, months, or years. For more
    # information, see Validity in RFC 5280. This value is unaffected when
    # ValidityNotBefore is also specified. For example, if Validity is set
    # to 20 days in the future, the certificate will expire 20 days from
    # issuance time regardless of the ValidityNotBefore value.
    #
    # @!attribute [rw] period
    #   The numeric value for the validity period.
    #   @return [Integer]
    #
    # @!attribute [rw] period_type
    #   The unit of time. You can select hours, days, weeks, months, and
    #   years.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/ValidityPeriod AWS API Documentation
    #
    class ValidityPeriod < Struct.new(
      :period,
      :period_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about your VPC and security groups used with the
    # connector.
    #
    # @!attribute [rw] security_group_ids
    #   The security groups used with the connector. You can use a maximum
    #   of 4 security groups with a connector.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad-2018-05-10/VpcInformation AWS API Documentation
    #
    class VpcInformation < Struct.new(
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

