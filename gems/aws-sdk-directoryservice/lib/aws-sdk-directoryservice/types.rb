# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DirectoryService
  module Types

    # @note When making an API call, you may pass AcceptSharedDirectoryRequest
    #   data as a hash:
    #
    #       {
    #         shared_directory_id: "DirectoryId", # required
    #       }
    #
    # @!attribute [rw] shared_directory_id
    #   Identifier of the shared directory in the directory consumer
    #   account. This identifier is different for each directory owner
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AcceptSharedDirectoryRequest AWS API Documentation
    #
    class AcceptSharedDirectoryRequest < Struct.new(
      :shared_directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] shared_directory
    #   The shared directory in the directory consumer account.
    #   @return [Types::SharedDirectory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AcceptSharedDirectoryResult AWS API Documentation
    #
    class AcceptSharedDirectoryResult < Struct.new(
      :shared_directory)
      SENSITIVE = []
      include Aws::Structure
    end

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddIpRoutesRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         ip_routes: [ # required
    #           {
    #             cidr_ip: "CidrIp",
    #             description: "Description",
    #           },
    #         ],
    #         update_security_group_for_directory_controllers: false,
    #       }
    #
    # @!attribute [rw] directory_id
    #   Identifier (ID) of the directory to which to add the address block.
    #   @return [String]
    #
    # @!attribute [rw] ip_routes
    #   IP address blocks, using CIDR format, of the traffic to route. This
    #   is often the IP address block of the DNS server used for your
    #   on-premises domain.
    #   @return [Array<Types::IpRoute>]
    #
    # @!attribute [rw] update_security_group_for_directory_controllers
    #   If set to true, updates the inbound and outbound rules of the
    #   security group that has the description: "AWS created security
    #   group for *directory ID* directory controllers." Following are the
    #   new rules:
    #
    #   Inbound:
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 88, Source: 0.0.0.0/0
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 123, Source:
    #     0.0.0.0/0
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 138, Source:
    #     0.0.0.0/0
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 389, Source:
    #     0.0.0.0/0
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 464, Source:
    #     0.0.0.0/0
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 445, Source:
    #     0.0.0.0/0
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 88, Source: 0.0.0.0/0
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 135, Source:
    #     0.0.0.0/0
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 445, Source:
    #     0.0.0.0/0
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 464, Source:
    #     0.0.0.0/0
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 636, Source:
    #     0.0.0.0/0
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 1024-65535, Source:
    #     0.0.0.0/0
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 3268-33269, Source:
    #     0.0.0.0/0
    #
    #   * Type: DNS (UDP), Protocol: UDP, Range: 53, Source: 0.0.0.0/0
    #
    #   * Type: DNS (TCP), Protocol: TCP, Range: 53, Source: 0.0.0.0/0
    #
    #   * Type: LDAP, Protocol: TCP, Range: 389, Source: 0.0.0.0/0
    #
    #   * Type: All ICMP, Protocol: All, Range: N/A, Source: 0.0.0.0/0
    #
    #
    #
    #   Outbound:
    #
    #   * Type: All traffic, Protocol: All, Range: All, Destination:
    #     0.0.0.0/0
    #
    #   ^
    #
    #   These security rules impact an internal network interface that is
    #   not exposed publicly.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AddIpRoutesRequest AWS API Documentation
    #
    class AddIpRoutesRequest < Struct.new(
      :directory_id,
      :ip_routes,
      :update_security_group_for_directory_controllers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AddIpRoutesResult AWS API Documentation
    #
    class AddIpRoutesResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AddTagsToResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "ResourceId", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_id
    #   Identifier (ID) for the directory to which to add the tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the directory.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AddTagsToResourceRequest AWS API Documentation
    #
    class AddTagsToResourceRequest < Struct.new(
      :resource_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AddTagsToResourceResult AWS API Documentation
    #
    class AddTagsToResourceResult < Aws::EmptyStructure; end

    # Represents a named directory attribute.
    #
    # @note When making an API call, you may pass Attribute
    #   data as a hash:
    #
    #       {
    #         name: "AttributeName",
    #         value: "AttributeValue",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/Attribute AWS API Documentation
    #
    class Attribute < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An authentication error occurred.
    #
    # @!attribute [rw] message
    #   The textual message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The identifier of the request that caused the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AuthenticationFailedException AWS API Documentation
    #
    class AuthenticationFailedException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelSchemaExtensionRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         schema_extension_id: "SchemaExtensionId", # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory whose schema extension will be
    #   canceled.
    #   @return [String]
    #
    # @!attribute [rw] schema_extension_id
    #   The identifier of the schema extension that will be canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CancelSchemaExtensionRequest AWS API Documentation
    #
    class CancelSchemaExtensionRequest < Struct.new(
      :directory_id,
      :schema_extension_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CancelSchemaExtensionResult AWS API Documentation
    #
    class CancelSchemaExtensionResult < Aws::EmptyStructure; end

    # Information about the certificate.
    #
    # @!attribute [rw] certificate_id
    #   The identifier of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   Describes a state change for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] common_name
    #   The common name for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] registered_date_time
    #   The date and time that the certificate was registered.
    #   @return [Time]
    #
    # @!attribute [rw] expiry_date_time
    #   The date and time when the certificate will expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/Certificate AWS API Documentation
    #
    class Certificate < Struct.new(
      :certificate_id,
      :state,
      :state_reason,
      :common_name,
      :registered_date_time,
      :expiry_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate has already been registered into the system.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CertificateAlreadyExistsException AWS API Documentation
    #
    class CertificateAlreadyExistsException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate is not present in the system for describe or
    # deregister activities.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CertificateDoesNotExistException AWS API Documentation
    #
    class CertificateDoesNotExistException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate is being used for the LDAP security connection and
    # cannot be removed without disabling LDAP security.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CertificateInUseException AWS API Documentation
    #
    class CertificateInUseException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains general information about a certificate.
    #
    # @!attribute [rw] certificate_id
    #   The identifier of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] common_name
    #   The common name for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] expiry_date_time
    #   The date and time when the certificate will expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CertificateInfo AWS API Documentation
    #
    class CertificateInfo < Struct.new(
      :certificate_id,
      :common_name,
      :state,
      :expiry_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate could not be added because the certificate limit has
    # been reached.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CertificateLimitExceededException AWS API Documentation
    #
    class CertificateLimitExceededException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A client exception has occurred.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ClientException AWS API Documentation
    #
    class ClientException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a computer account in a directory.
    #
    # @!attribute [rw] computer_id
    #   The identifier of the computer.
    #   @return [String]
    #
    # @!attribute [rw] computer_name
    #   The computer name.
    #   @return [String]
    #
    # @!attribute [rw] computer_attributes
    #   An array of Attribute objects containing the LDAP attributes that
    #   belong to the computer account.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/Computer AWS API Documentation
    #
    class Computer < Struct.new(
      :computer_id,
      :computer_name,
      :computer_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Points to a remote domain with which you are setting up a trust
    # relationship. Conditional forwarders are required in order to set up a
    # trust relationship with another domain.
    #
    # @!attribute [rw] remote_domain_name
    #   The fully qualified domain name (FQDN) of the remote domains pointed
    #   to by the conditional forwarder.
    #   @return [String]
    #
    # @!attribute [rw] dns_ip_addrs
    #   The IP addresses of the remote DNS server associated with
    #   RemoteDomainName. This is the IP address of the DNS server that your
    #   conditional forwarder points to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] replication_scope
    #   The replication scope of the conditional forwarder. The only allowed
    #   value is `Domain`, which will replicate the conditional forwarder to
    #   all of the domain controllers for your AWS directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ConditionalForwarder AWS API Documentation
    #
    class ConditionalForwarder < Struct.new(
      :remote_domain_name,
      :dns_ip_addrs,
      :replication_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the inputs for the ConnectDirectory operation.
    #
    # @note When making an API call, you may pass ConnectDirectoryRequest
    #   data as a hash:
    #
    #       {
    #         name: "DirectoryName", # required
    #         short_name: "DirectoryShortName",
    #         password: "ConnectPassword", # required
    #         description: "Description",
    #         size: "Small", # required, accepts Small, Large
    #         connect_settings: { # required
    #           vpc_id: "VpcId", # required
    #           subnet_ids: ["SubnetId"], # required
    #           customer_dns_ips: ["IpAddr"], # required
    #           customer_user_name: "UserName", # required
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The fully qualified name of the on-premises directory, such as
    #   `corp.example.com`.
    #   @return [String]
    #
    # @!attribute [rw] short_name
    #   The NetBIOS name of the on-premises directory, such as `CORP`.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the on-premises user account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the directory.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size of the directory.
    #   @return [String]
    #
    # @!attribute [rw] connect_settings
    #   A DirectoryConnectSettings object that contains additional
    #   information for the operation.
    #   @return [Types::DirectoryConnectSettings]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to AD Connector.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ConnectDirectoryRequest AWS API Documentation
    #
    class ConnectDirectoryRequest < Struct.new(
      :name,
      :short_name,
      :password,
      :description,
      :size,
      :connect_settings,
      :tags)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Contains the results of the ConnectDirectory operation.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the new directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ConnectDirectoryResult AWS API Documentation
    #
    class ConnectDirectoryResult < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the inputs for the CreateAlias operation.
    #
    # @note When making an API call, you may pass CreateAliasRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         alias: "AliasName", # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory for which to create the alias.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The requested alias.
    #
    #   The alias must be unique amongst all aliases in AWS. This operation
    #   throws an `EntityAlreadyExistsException` error if the alias already
    #   exists.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateAliasRequest AWS API Documentation
    #
    class CreateAliasRequest < Struct.new(
      :directory_id,
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the CreateAlias operation.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias for the directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateAliasResult AWS API Documentation
    #
    class CreateAliasResult < Struct.new(
      :directory_id,
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the inputs for the CreateComputer operation.
    #
    # @note When making an API call, you may pass CreateComputerRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         computer_name: "ComputerName", # required
    #         password: "ComputerPassword", # required
    #         organizational_unit_distinguished_name: "OrganizationalUnitDN",
    #         computer_attributes: [
    #           {
    #             name: "AttributeName",
    #             value: "AttributeValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory in which to create the computer
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] computer_name
    #   The name of the computer account.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   A one-time password that is used to join the computer to the
    #   directory. You should generate a random, strong password to use for
    #   this parameter.
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_distinguished_name
    #   The fully-qualified distinguished name of the organizational unit to
    #   place the computer account in.
    #   @return [String]
    #
    # @!attribute [rw] computer_attributes
    #   An array of Attribute objects that contain any LDAP attributes to
    #   apply to the computer account.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateComputerRequest AWS API Documentation
    #
    class CreateComputerRequest < Struct.new(
      :directory_id,
      :computer_name,
      :password,
      :organizational_unit_distinguished_name,
      :computer_attributes)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Contains the results for the CreateComputer operation.
    #
    # @!attribute [rw] computer
    #   A Computer object that represents the computer account.
    #   @return [Types::Computer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateComputerResult AWS API Documentation
    #
    class CreateComputerResult < Struct.new(
      :computer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Initiates the creation of a conditional forwarder for your AWS
    # Directory Service for Microsoft Active Directory. Conditional
    # forwarders are required in order to set up a trust relationship with
    # another domain.
    #
    # @note When making an API call, you may pass CreateConditionalForwarderRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         remote_domain_name: "RemoteDomainName", # required
    #         dns_ip_addrs: ["IpAddr"], # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The directory ID of the AWS directory for which you are creating the
    #   conditional forwarder.
    #   @return [String]
    #
    # @!attribute [rw] remote_domain_name
    #   The fully qualified domain name (FQDN) of the remote domain with
    #   which you will set up a trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] dns_ip_addrs
    #   The IP addresses of the remote DNS server associated with
    #   RemoteDomainName.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateConditionalForwarderRequest AWS API Documentation
    #
    class CreateConditionalForwarderRequest < Struct.new(
      :directory_id,
      :remote_domain_name,
      :dns_ip_addrs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a CreateConditinalForwarder request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateConditionalForwarderResult AWS API Documentation
    #
    class CreateConditionalForwarderResult < Aws::EmptyStructure; end

    # Contains the inputs for the CreateDirectory operation.
    #
    # @note When making an API call, you may pass CreateDirectoryRequest
    #   data as a hash:
    #
    #       {
    #         name: "DirectoryName", # required
    #         short_name: "DirectoryShortName",
    #         password: "Password", # required
    #         description: "Description",
    #         size: "Small", # required, accepts Small, Large
    #         vpc_settings: {
    #           vpc_id: "VpcId", # required
    #           subnet_ids: ["SubnetId"], # required
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The fully qualified name for the directory, such as
    #   `corp.example.com`.
    #   @return [String]
    #
    # @!attribute [rw] short_name
    #   The NetBIOS name of the directory, such as `CORP`.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the directory administrator. The directory creation
    #   process creates a directory administrator account with the user name
    #   `Administrator` and this password.
    #
    #   If you need to change the password for the administrator account,
    #   you can use the ResetUserPassword API call.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the directory.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size of the directory.
    #   @return [String]
    #
    # @!attribute [rw] vpc_settings
    #   A DirectoryVpcSettings object that contains additional information
    #   for the operation.
    #   @return [Types::DirectoryVpcSettings]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the Simple AD directory.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateDirectoryRequest AWS API Documentation
    #
    class CreateDirectoryRequest < Struct.new(
      :name,
      :short_name,
      :password,
      :description,
      :size,
      :vpc_settings,
      :tags)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Contains the results of the CreateDirectory operation.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory that was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateDirectoryResult AWS API Documentation
    #
    class CreateDirectoryResult < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLogSubscriptionRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         log_group_name: "LogGroupName", # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   Identifier of the directory to which you want to subscribe and
    #   receive real-time logs to your specified CloudWatch log group.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The name of the CloudWatch log group where the real-time domain
    #   controller logs are forwarded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateLogSubscriptionRequest AWS API Documentation
    #
    class CreateLogSubscriptionRequest < Struct.new(
      :directory_id,
      :log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateLogSubscriptionResult AWS API Documentation
    #
    class CreateLogSubscriptionResult < Aws::EmptyStructure; end

    # Creates an AWS Managed Microsoft AD directory.
    #
    # @note When making an API call, you may pass CreateMicrosoftADRequest
    #   data as a hash:
    #
    #       {
    #         name: "DirectoryName", # required
    #         short_name: "DirectoryShortName",
    #         password: "Password", # required
    #         description: "Description",
    #         vpc_settings: { # required
    #           vpc_id: "VpcId", # required
    #           subnet_ids: ["SubnetId"], # required
    #         },
    #         edition: "Enterprise", # accepts Enterprise, Standard
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The fully qualified domain name for the AWS Managed Microsoft AD
    #   directory, such as `corp.example.com`. This name will resolve inside
    #   your VPC only. It does not need to be publicly resolvable.
    #   @return [String]
    #
    # @!attribute [rw] short_name
    #   The NetBIOS name for your domain, such as `CORP`. If you don't
    #   specify a NetBIOS name, it will default to the first part of your
    #   directory DNS. For example, `CORP` for the directory DNS
    #   `corp.example.com`.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the default administrative user named `Admin`.
    #
    #   If you need to change the password for the administrator account,
    #   you can use the ResetUserPassword API call.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the directory. This label will appear on the AWS
    #   console `Directory Details` page after the directory is created.
    #   @return [String]
    #
    # @!attribute [rw] vpc_settings
    #   Contains VPC information for the CreateDirectory or
    #   CreateMicrosoftAD operation.
    #   @return [Types::DirectoryVpcSettings]
    #
    # @!attribute [rw] edition
    #   AWS Managed Microsoft AD is available in two editions: `Standard`
    #   and `Enterprise`. `Enterprise` is the default.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the AWS Managed Microsoft AD directory.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateMicrosoftADRequest AWS API Documentation
    #
    class CreateMicrosoftADRequest < Struct.new(
      :name,
      :short_name,
      :password,
      :description,
      :vpc_settings,
      :edition,
      :tags)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Result of a CreateMicrosoftAD request.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory that was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateMicrosoftADResult AWS API Documentation
    #
    class CreateMicrosoftADResult < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the inputs for the CreateSnapshot operation.
    #
    # @note When making an API call, you may pass CreateSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         name: "SnapshotName",
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory of which to take a snapshot.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive name to apply to the snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateSnapshotRequest AWS API Documentation
    #
    class CreateSnapshotRequest < Struct.new(
      :directory_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the CreateSnapshot operation.
    #
    # @!attribute [rw] snapshot_id
    #   The identifier of the snapshot that was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateSnapshotResult AWS API Documentation
    #
    class CreateSnapshotResult < Struct.new(
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Directory Service for Microsoft Active Directory allows you to
    # configure trust relationships. For example, you can establish a trust
    # between your AWS Managed Microsoft AD directory, and your existing
    # on-premises Microsoft Active Directory. This would allow you to
    # provide users and groups access to resources in either domain, with a
    # single set of credentials.
    #
    # This action initiates the creation of the AWS side of a trust
    # relationship between an AWS Managed Microsoft AD directory and an
    # external domain.
    #
    # @note When making an API call, you may pass CreateTrustRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         remote_domain_name: "RemoteDomainName", # required
    #         trust_password: "TrustPassword", # required
    #         trust_direction: "One-Way: Outgoing", # required, accepts One-Way: Outgoing, One-Way: Incoming, Two-Way
    #         trust_type: "Forest", # accepts Forest, External
    #         conditional_forwarder_ip_addrs: ["IpAddr"],
    #         selective_auth: "Enabled", # accepts Enabled, Disabled
    #       }
    #
    # @!attribute [rw] directory_id
    #   The Directory ID of the AWS Managed Microsoft AD directory for which
    #   to establish the trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] remote_domain_name
    #   The Fully Qualified Domain Name (FQDN) of the external domain for
    #   which to create the trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] trust_password
    #   The trust password. The must be the same password that was used when
    #   creating the trust relationship on the external domain.
    #   @return [String]
    #
    # @!attribute [rw] trust_direction
    #   The direction of the trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] trust_type
    #   The trust relationship type. `Forest` is the default.
    #   @return [String]
    #
    # @!attribute [rw] conditional_forwarder_ip_addrs
    #   The IP addresses of the remote DNS server associated with
    #   RemoteDomainName.
    #   @return [Array<String>]
    #
    # @!attribute [rw] selective_auth
    #   Optional parameter to enable selective authentication for the trust.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateTrustRequest AWS API Documentation
    #
    class CreateTrustRequest < Struct.new(
      :directory_id,
      :remote_domain_name,
      :trust_password,
      :trust_direction,
      :trust_type,
      :conditional_forwarder_ip_addrs,
      :selective_auth)
      SENSITIVE = [:trust_password]
      include Aws::Structure
    end

    # The result of a CreateTrust request.
    #
    # @!attribute [rw] trust_id
    #   A unique identifier for the trust relationship that was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateTrustResult AWS API Documentation
    #
    class CreateTrustResult < Struct.new(
      :trust_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deletes a conditional forwarder.
    #
    # @note When making an API call, you may pass DeleteConditionalForwarderRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         remote_domain_name: "RemoteDomainName", # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The directory ID for which you are deleting the conditional
    #   forwarder.
    #   @return [String]
    #
    # @!attribute [rw] remote_domain_name
    #   The fully qualified domain name (FQDN) of the remote domain with
    #   which you are deleting the conditional forwarder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteConditionalForwarderRequest AWS API Documentation
    #
    class DeleteConditionalForwarderRequest < Struct.new(
      :directory_id,
      :remote_domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a DeleteConditionalForwarder request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteConditionalForwarderResult AWS API Documentation
    #
    class DeleteConditionalForwarderResult < Aws::EmptyStructure; end

    # Contains the inputs for the DeleteDirectory operation.
    #
    # @note When making an API call, you may pass DeleteDirectoryRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteDirectoryRequest AWS API Documentation
    #
    class DeleteDirectoryRequest < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the DeleteDirectory operation.
    #
    # @!attribute [rw] directory_id
    #   The directory identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteDirectoryResult AWS API Documentation
    #
    class DeleteDirectoryResult < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteLogSubscriptionRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   Identifier of the directory whose log subscription you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteLogSubscriptionRequest AWS API Documentation
    #
    class DeleteLogSubscriptionRequest < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteLogSubscriptionResult AWS API Documentation
    #
    class DeleteLogSubscriptionResult < Aws::EmptyStructure; end

    # Contains the inputs for the DeleteSnapshot operation.
    #
    # @note When making an API call, you may pass DeleteSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         snapshot_id: "SnapshotId", # required
    #       }
    #
    # @!attribute [rw] snapshot_id
    #   The identifier of the directory snapshot to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteSnapshotRequest AWS API Documentation
    #
    class DeleteSnapshotRequest < Struct.new(
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the DeleteSnapshot operation.
    #
    # @!attribute [rw] snapshot_id
    #   The identifier of the directory snapshot that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteSnapshotResult AWS API Documentation
    #
    class DeleteSnapshotResult < Struct.new(
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deletes the local side of an existing trust relationship between the
    # AWS Managed Microsoft AD directory and the external domain.
    #
    # @note When making an API call, you may pass DeleteTrustRequest
    #   data as a hash:
    #
    #       {
    #         trust_id: "TrustId", # required
    #         delete_associated_conditional_forwarder: false,
    #       }
    #
    # @!attribute [rw] trust_id
    #   The Trust ID of the trust relationship to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] delete_associated_conditional_forwarder
    #   Delete a conditional forwarder as part of a DeleteTrustRequest.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteTrustRequest AWS API Documentation
    #
    class DeleteTrustRequest < Struct.new(
      :trust_id,
      :delete_associated_conditional_forwarder)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a DeleteTrust request.
    #
    # @!attribute [rw] trust_id
    #   The Trust ID of the trust relationship that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteTrustResult AWS API Documentation
    #
    class DeleteTrustResult < Struct.new(
      :trust_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeregisterCertificateRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         certificate_id: "CertificateId", # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The identifier of the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeregisterCertificateRequest AWS API Documentation
    #
    class DeregisterCertificateRequest < Struct.new(
      :directory_id,
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeregisterCertificateResult AWS API Documentation
    #
    class DeregisterCertificateResult < Aws::EmptyStructure; end

    # Removes the specified directory as a publisher to the specified SNS
    # topic.
    #
    # @note When making an API call, you may pass DeregisterEventTopicRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         topic_name: "TopicName", # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The Directory ID to remove as a publisher. This directory will no
    #   longer send messages to the specified SNS topic.
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   The name of the SNS topic from which to remove the directory as a
    #   publisher.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeregisterEventTopicRequest AWS API Documentation
    #
    class DeregisterEventTopicRequest < Struct.new(
      :directory_id,
      :topic_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a DeregisterEventTopic request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeregisterEventTopicResult AWS API Documentation
    #
    class DeregisterEventTopicResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeCertificateRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         certificate_id: "CertificateId", # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The identifier of the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeCertificateRequest AWS API Documentation
    #
    class DescribeCertificateRequest < Struct.new(
      :directory_id,
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   Information about the certificate, including registered date time,
    #   certificate state, the reason for the state, expiration date time,
    #   and certificate common name.
    #   @return [Types::Certificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeCertificateResult AWS API Documentation
    #
    class DescribeCertificateResult < Struct.new(
      :certificate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a conditional forwarder.
    #
    # @note When making an API call, you may pass DescribeConditionalForwardersRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         remote_domain_names: ["RemoteDomainName"],
    #       }
    #
    # @!attribute [rw] directory_id
    #   The directory ID for which to get the list of associated conditional
    #   forwarders.
    #   @return [String]
    #
    # @!attribute [rw] remote_domain_names
    #   The fully qualified domain names (FQDN) of the remote domains for
    #   which to get the list of associated conditional forwarders. If this
    #   member is null, all conditional forwarders are returned.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeConditionalForwardersRequest AWS API Documentation
    #
    class DescribeConditionalForwardersRequest < Struct.new(
      :directory_id,
      :remote_domain_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a DescribeConditionalForwarder request.
    #
    # @!attribute [rw] conditional_forwarders
    #   The list of conditional forwarders that have been created.
    #   @return [Array<Types::ConditionalForwarder>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeConditionalForwardersResult AWS API Documentation
    #
    class DescribeConditionalForwardersResult < Struct.new(
      :conditional_forwarders)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the inputs for the DescribeDirectories operation.
    #
    # @note When making an API call, you may pass DescribeDirectoriesRequest
    #   data as a hash:
    #
    #       {
    #         directory_ids: ["DirectoryId"],
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] directory_ids
    #   A list of identifiers of the directories for which to obtain the
    #   information. If this member is null, all directories that belong to
    #   the current account are returned.
    #
    #   An empty list results in an `InvalidParameterException` being
    #   thrown.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `DescribeDirectoriesResult.NextToken` value from a previous call
    #   to DescribeDirectories. Pass null if this is the first call.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return. If this value is zero, the
    #   maximum number of items is specified by the limitations of the
    #   operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeDirectoriesRequest AWS API Documentation
    #
    class DescribeDirectoriesRequest < Struct.new(
      :directory_ids,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the DescribeDirectories operation.
    #
    # @!attribute [rw] directory_descriptions
    #   The list of DirectoryDescription objects that were retrieved.
    #
    #   It is possible that this list contains less than the number of items
    #   specified in the `Limit` member of the request. This occurs if there
    #   are less than the requested number of items left to retrieve, or if
    #   the limitations of the operation have been exceeded.
    #   @return [Array<Types::DirectoryDescription>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. Pass this value for the
    #   `NextToken` parameter in a subsequent call to DescribeDirectories to
    #   retrieve the next set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeDirectoriesResult AWS API Documentation
    #
    class DescribeDirectoriesResult < Struct.new(
      :directory_descriptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDomainControllersRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         domain_controller_ids: ["DomainControllerId"],
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] directory_id
    #   Identifier of the directory for which to retrieve the domain
    #   controller information.
    #   @return [String]
    #
    # @!attribute [rw] domain_controller_ids
    #   A list of identifiers for the domain controllers whose information
    #   will be provided.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The *DescribeDomainControllers.NextToken* value from a previous call
    #   to DescribeDomainControllers. Pass null if this is the first call.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeDomainControllersRequest AWS API Documentation
    #
    class DescribeDomainControllersRequest < Struct.new(
      :directory_id,
      :domain_controller_ids,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_controllers
    #   List of the DomainController objects that were retrieved.
    #   @return [Array<Types::DomainController>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. Pass this value for the
    #   `NextToken` parameter in a subsequent call to
    #   DescribeDomainControllers retrieve the next set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeDomainControllersResult AWS API Documentation
    #
    class DescribeDomainControllersResult < Struct.new(
      :domain_controllers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes event topics.
    #
    # @note When making an API call, you may pass DescribeEventTopicsRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId",
    #         topic_names: ["TopicName"],
    #       }
    #
    # @!attribute [rw] directory_id
    #   The Directory ID for which to get the list of associated SNS topics.
    #   If this member is null, associations for all Directory IDs are
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] topic_names
    #   A list of SNS topic names for which to obtain the information. If
    #   this member is null, all associations for the specified Directory ID
    #   are returned.
    #
    #   An empty list results in an `InvalidParameterException` being
    #   thrown.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeEventTopicsRequest AWS API Documentation
    #
    class DescribeEventTopicsRequest < Struct.new(
      :directory_id,
      :topic_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a DescribeEventTopic request.
    #
    # @!attribute [rw] event_topics
    #   A list of SNS topic names that receive status messages from the
    #   specified Directory ID.
    #   @return [Array<Types::EventTopic>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeEventTopicsResult AWS API Documentation
    #
    class DescribeEventTopicsResult < Struct.new(
      :event_topics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeLDAPSSettingsRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         type: "Client", # accepts Client
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of LDAP security to enable. Currently only the value
    #   `Client` is supported.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The type of next token used for pagination.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the number of items that should be displayed on one page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeLDAPSSettingsRequest AWS API Documentation
    #
    class DescribeLDAPSSettingsRequest < Struct.new(
      :directory_id,
      :type,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ldaps_settings_info
    #   Information about LDAP security for the specified directory,
    #   including status of enablement, state last updated date time, and
    #   the reason for the state.
    #   @return [Array<Types::LDAPSSettingInfo>]
    #
    # @!attribute [rw] next_token
    #   The next token used to retrieve the LDAPS settings if the number of
    #   setting types exceeds page limit and there is another page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeLDAPSSettingsResult AWS API Documentation
    #
    class DescribeLDAPSSettingsResult < Struct.new(
      :ldaps_settings_info,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSharedDirectoriesRequest
    #   data as a hash:
    #
    #       {
    #         owner_directory_id: "DirectoryId", # required
    #         shared_directory_ids: ["DirectoryId"],
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] owner_directory_id
    #   Returns the identifier of the directory in the directory owner
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] shared_directory_ids
    #   A list of identifiers of all shared directories in your account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `DescribeSharedDirectoriesResult.NextToken` value from a
    #   previous call to DescribeSharedDirectories. Pass null if this is the
    #   first call.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The number of shared directories to return in the response object.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeSharedDirectoriesRequest AWS API Documentation
    #
    class DescribeSharedDirectoriesRequest < Struct.new(
      :owner_directory_id,
      :shared_directory_ids,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] shared_directories
    #   A list of all shared directories in your account.
    #   @return [Array<Types::SharedDirectory>]
    #
    # @!attribute [rw] next_token
    #   If not null, token that indicates that more results are available.
    #   Pass this value for the `NextToken` parameter in a subsequent call
    #   to DescribeSharedDirectories to retrieve the next set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeSharedDirectoriesResult AWS API Documentation
    #
    class DescribeSharedDirectoriesResult < Struct.new(
      :shared_directories,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the inputs for the DescribeSnapshots operation.
    #
    # @note When making an API call, you may pass DescribeSnapshotsRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId",
    #         snapshot_ids: ["SnapshotId"],
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory for which to retrieve snapshot
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_ids
    #   A list of identifiers of the snapshots to obtain the information
    #   for. If this member is null or empty, all snapshots are returned
    #   using the *Limit* and *NextToken* members.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The *DescribeSnapshotsResult.NextToken* value from a previous call
    #   to DescribeSnapshots. Pass null if this is the first call.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeSnapshotsRequest AWS API Documentation
    #
    class DescribeSnapshotsRequest < Struct.new(
      :directory_id,
      :snapshot_ids,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the DescribeSnapshots operation.
    #
    # @!attribute [rw] snapshots
    #   The list of Snapshot objects that were retrieved.
    #
    #   It is possible that this list contains less than the number of items
    #   specified in the *Limit* member of the request. This occurs if there
    #   are less than the requested number of items left to retrieve, or if
    #   the limitations of the operation have been exceeded.
    #   @return [Array<Types::Snapshot>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. Pass this value in the
    #   *NextToken* member of a subsequent call to DescribeSnapshots.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeSnapshotsResult AWS API Documentation
    #
    class DescribeSnapshotsResult < Struct.new(
      :snapshots,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the trust relationships for a particular AWS Managed
    # Microsoft AD directory. If no input parameters are are provided, such
    # as directory ID or trust ID, this request describes all the trust
    # relationships.
    #
    # @note When making an API call, you may pass DescribeTrustsRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId",
    #         trust_ids: ["TrustId"],
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] directory_id
    #   The Directory ID of the AWS directory that is a part of the
    #   requested trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] trust_ids
    #   A list of identifiers of the trust relationships for which to obtain
    #   the information. If this member is null, all trust relationships
    #   that belong to the current account are returned.
    #
    #   An empty list results in an `InvalidParameterException` being
    #   thrown.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The *DescribeTrustsResult.NextToken* value from a previous call to
    #   DescribeTrusts. Pass null if this is the first call.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeTrustsRequest AWS API Documentation
    #
    class DescribeTrustsRequest < Struct.new(
      :directory_id,
      :trust_ids,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a DescribeTrust request.
    #
    # @!attribute [rw] trusts
    #   The list of Trust objects that were retrieved.
    #
    #   It is possible that this list contains less than the number of items
    #   specified in the *Limit* member of the request. This occurs if there
    #   are less than the requested number of items left to retrieve, or if
    #   the limitations of the operation have been exceeded.
    #   @return [Array<Types::Trust>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. Pass this value for the
    #   *NextToken* parameter in a subsequent call to DescribeTrusts to
    #   retrieve the next set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeTrustsResult AWS API Documentation
    #
    class DescribeTrustsResult < Struct.new(
      :trusts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified directory has already been shared with this AWS account.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryAlreadySharedException AWS API Documentation
    #
    class DirectoryAlreadySharedException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information for the ConnectDirectory operation when an AD
    # Connector directory is being created.
    #
    # @note When making an API call, you may pass DirectoryConnectSettings
    #   data as a hash:
    #
    #       {
    #         vpc_id: "VpcId", # required
    #         subnet_ids: ["SubnetId"], # required
    #         customer_dns_ips: ["IpAddr"], # required
    #         customer_user_name: "UserName", # required
    #       }
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC in which the AD Connector is created.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet identifiers in the VPC in which the AD Connector is
    #   created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] customer_dns_ips
    #   A list of one or more IP addresses of DNS servers or domain
    #   controllers in the on-premises directory.
    #   @return [Array<String>]
    #
    # @!attribute [rw] customer_user_name
    #   The user name of an account in the on-premises directory that is
    #   used to connect to the directory. This account must have the
    #   following permissions:
    #
    #   * Read users and groups
    #
    #   * Create computer objects
    #
    #   * Join computers to the domain
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryConnectSettings AWS API Documentation
    #
    class DirectoryConnectSettings < Struct.new(
      :vpc_id,
      :subnet_ids,
      :customer_dns_ips,
      :customer_user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an AD Connector directory.
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC that the AD Connector is in.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet identifiers in the VPC that the AD Connector is in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] customer_user_name
    #   The user name of the service account in the on-premises directory.
    #   @return [String]
    #
    # @!attribute [rw] security_group_id
    #   The security group identifier for the AD Connector directory.
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   A list of the Availability Zones that the directory is in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connect_ips
    #   The IP addresses of the AD Connector servers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryConnectSettingsDescription AWS API Documentation
    #
    class DirectoryConnectSettingsDescription < Struct.new(
      :vpc_id,
      :subnet_ids,
      :customer_user_name,
      :security_group_id,
      :availability_zones,
      :connect_ips)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an AWS Directory Service directory.
    #
    # @!attribute [rw] directory_id
    #   The directory identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The fully qualified name of the directory.
    #   @return [String]
    #
    # @!attribute [rw] short_name
    #   The short name of the directory.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The directory size.
    #   @return [String]
    #
    # @!attribute [rw] edition
    #   The edition associated with this directory.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias for the directory. If no alias has been created for the
    #   directory, the alias is the directory identifier, such as
    #   `d-XXXXXXXXXX`.
    #   @return [String]
    #
    # @!attribute [rw] access_url
    #   The access URL for the directory, such as
    #   `http://<alias>.awsapps.com`. If no alias has been created for the
    #   directory, `<alias>` is the directory identifier, such as
    #   `d-XXXXXXXXXX`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the directory.
    #   @return [String]
    #
    # @!attribute [rw] dns_ip_addrs
    #   The IP addresses of the DNS servers for the directory. For a Simple
    #   AD or Microsoft AD directory, these are the IP addresses of the
    #   Simple AD or Microsoft AD directory servers. For an AD Connector
    #   directory, these are the IP addresses of the DNS servers or domain
    #   controllers in the on-premises directory to which the AD Connector
    #   is connected.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stage
    #   The current stage of the directory.
    #   @return [String]
    #
    # @!attribute [rw] share_status
    #   Current directory status of the shared AWS Managed Microsoft AD
    #   directory.
    #   @return [String]
    #
    # @!attribute [rw] share_method
    #   The method used when sharing a directory to determine whether the
    #   directory should be shared within your AWS organization
    #   (`ORGANIZATIONS`) or with any AWS account by sending a shared
    #   directory request (`HANDSHAKE`).
    #   @return [String]
    #
    # @!attribute [rw] share_notes
    #   A directory share request that is sent by the directory owner to the
    #   directory consumer. The request includes a typed message to help the
    #   directory consumer administrator determine whether to approve or
    #   reject the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] launch_time
    #   Specifies when the directory was created.
    #   @return [Time]
    #
    # @!attribute [rw] stage_last_updated_date_time
    #   The date and time that the stage was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The directory size.
    #   @return [String]
    #
    # @!attribute [rw] vpc_settings
    #   A DirectoryVpcSettingsDescription object that contains additional
    #   information about a directory. This member is only present if the
    #   directory is a Simple AD or Managed AD directory.
    #   @return [Types::DirectoryVpcSettingsDescription]
    #
    # @!attribute [rw] connect_settings
    #   A DirectoryConnectSettingsDescription object that contains
    #   additional information about an AD Connector directory. This member
    #   is only present if the directory is an AD Connector directory.
    #   @return [Types::DirectoryConnectSettingsDescription]
    #
    # @!attribute [rw] radius_settings
    #   A RadiusSettings object that contains information about the RADIUS
    #   server configured for this directory.
    #   @return [Types::RadiusSettings]
    #
    # @!attribute [rw] radius_status
    #   The status of the RADIUS MFA server connection.
    #   @return [String]
    #
    # @!attribute [rw] stage_reason
    #   Additional information about the directory stage.
    #   @return [String]
    #
    # @!attribute [rw] sso_enabled
    #   Indicates if single sign-on is enabled for the directory. For more
    #   information, see EnableSso and DisableSso.
    #   @return [Boolean]
    #
    # @!attribute [rw] desired_number_of_domain_controllers
    #   The desired number of domain controllers in the directory if the
    #   directory is Microsoft AD.
    #   @return [Integer]
    #
    # @!attribute [rw] owner_directory_description
    #   Describes the AWS Managed Microsoft AD directory in the directory
    #   owner account.
    #   @return [Types::OwnerDirectoryDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryDescription AWS API Documentation
    #
    class DirectoryDescription < Struct.new(
      :directory_id,
      :name,
      :short_name,
      :size,
      :edition,
      :alias,
      :access_url,
      :description,
      :dns_ip_addrs,
      :stage,
      :share_status,
      :share_method,
      :share_notes,
      :launch_time,
      :stage_last_updated_date_time,
      :type,
      :vpc_settings,
      :connect_settings,
      :radius_settings,
      :radius_status,
      :stage_reason,
      :sso_enabled,
      :desired_number_of_domain_controllers,
      :owner_directory_description)
      SENSITIVE = [:share_notes]
      include Aws::Structure
    end

    # The specified directory does not exist in the system.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryDoesNotExistException AWS API Documentation
    #
    class DirectoryDoesNotExistException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of directories in the region has been reached. You
    # can use the GetDirectoryLimits operation to determine your directory
    # limits in the region.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryLimitExceededException AWS API Documentation
    #
    class DirectoryLimitExceededException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains directory limit information for a Region.
    #
    # @!attribute [rw] cloud_only_directories_limit
    #   The maximum number of cloud directories allowed in the Region.
    #   @return [Integer]
    #
    # @!attribute [rw] cloud_only_directories_current_count
    #   The current number of cloud directories in the Region.
    #   @return [Integer]
    #
    # @!attribute [rw] cloud_only_directories_limit_reached
    #   Indicates if the cloud directory limit has been reached.
    #   @return [Boolean]
    #
    # @!attribute [rw] cloud_only_microsoft_ad_limit
    #   The maximum number of AWS Managed Microsoft AD directories allowed
    #   in the region.
    #   @return [Integer]
    #
    # @!attribute [rw] cloud_only_microsoft_ad_current_count
    #   The current number of AWS Managed Microsoft AD directories in the
    #   region.
    #   @return [Integer]
    #
    # @!attribute [rw] cloud_only_microsoft_ad_limit_reached
    #   Indicates if the AWS Managed Microsoft AD directory limit has been
    #   reached.
    #   @return [Boolean]
    #
    # @!attribute [rw] connected_directories_limit
    #   The maximum number of connected directories allowed in the Region.
    #   @return [Integer]
    #
    # @!attribute [rw] connected_directories_current_count
    #   The current number of connected directories in the Region.
    #   @return [Integer]
    #
    # @!attribute [rw] connected_directories_limit_reached
    #   Indicates if the connected directory limit has been reached.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryLimits AWS API Documentation
    #
    class DirectoryLimits < Struct.new(
      :cloud_only_directories_limit,
      :cloud_only_directories_current_count,
      :cloud_only_directories_limit_reached,
      :cloud_only_microsoft_ad_limit,
      :cloud_only_microsoft_ad_current_count,
      :cloud_only_microsoft_ad_limit_reached,
      :connected_directories_limit,
      :connected_directories_current_count,
      :connected_directories_limit_reached)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified directory has not been shared with this AWS account.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryNotSharedException AWS API Documentation
    #
    class DirectoryNotSharedException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified directory is unavailable or could not be found.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryUnavailableException AWS API Documentation
    #
    class DirectoryUnavailableException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains VPC information for the CreateDirectory or CreateMicrosoftAD
    # operation.
    #
    # @note When making an API call, you may pass DirectoryVpcSettings
    #   data as a hash:
    #
    #       {
    #         vpc_id: "VpcId", # required
    #         subnet_ids: ["SubnetId"], # required
    #       }
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC in which to create the directory.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The identifiers of the subnets for the directory servers. The two
    #   subnets must be in different Availability Zones. AWS Directory
    #   Service creates a directory server and a DNS server in each of these
    #   subnets.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryVpcSettings AWS API Documentation
    #
    class DirectoryVpcSettings < Struct.new(
      :vpc_id,
      :subnet_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the directory.
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC that the directory is in.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The identifiers of the subnets for the directory servers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_id
    #   The domain controller security group identifier for the directory.
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   The list of Availability Zones that the directory is in.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryVpcSettingsDescription AWS API Documentation
    #
    class DirectoryVpcSettingsDescription < Struct.new(
      :vpc_id,
      :subnet_ids,
      :security_group_id,
      :availability_zones)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableLDAPSRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         type: "Client", # required, accepts Client
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of LDAP security to enable. Currently only the value
    #   `Client` is supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableLDAPSRequest AWS API Documentation
    #
    class DisableLDAPSRequest < Struct.new(
      :directory_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableLDAPSResult AWS API Documentation
    #
    class DisableLDAPSResult < Aws::EmptyStructure; end

    # Contains the inputs for the DisableRadius operation.
    #
    # @note When making an API call, you may pass DisableRadiusRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory for which to disable MFA.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableRadiusRequest AWS API Documentation
    #
    class DisableRadiusRequest < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the DisableRadius operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableRadiusResult AWS API Documentation
    #
    class DisableRadiusResult < Aws::EmptyStructure; end

    # Contains the inputs for the DisableSso operation.
    #
    # @note When making an API call, you may pass DisableSsoRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         user_name: "UserName",
    #         password: "ConnectPassword",
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory for which to disable single-sign on.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The username of an alternate account to use to disable single-sign
    #   on. This is only used for AD Connector directories. This account
    #   must have privileges to remove a service principal name.
    #
    #   If the AD Connector service account does not have privileges to
    #   remove a service principal name, you can specify an alternate
    #   account with the *UserName* and *Password* parameters. These
    #   credentials are only used to disable single sign-on and are not
    #   stored by the service. The AD Connector service account is not
    #   changed.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password of an alternate account to use to disable single-sign
    #   on. This is only used for AD Connector directories. For more
    #   information, see the *UserName* parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableSsoRequest AWS API Documentation
    #
    class DisableSsoRequest < Struct.new(
      :directory_id,
      :user_name,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Contains the results of the DisableSso operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableSsoResult AWS API Documentation
    #
    class DisableSsoResult < Aws::EmptyStructure; end

    # Contains information about the domain controllers for a specified
    # directory.
    #
    # @!attribute [rw] directory_id
    #   Identifier of the directory where the domain controller resides.
    #   @return [String]
    #
    # @!attribute [rw] domain_controller_id
    #   Identifies a specific domain controller in the directory.
    #   @return [String]
    #
    # @!attribute [rw] dns_ip_addr
    #   The IP address of the domain controller.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC that contains the domain controller.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   Identifier of the subnet in the VPC that contains the domain
    #   controller.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where the domain controller is located.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the domain controller.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A description of the domain controller state.
    #   @return [String]
    #
    # @!attribute [rw] launch_time
    #   Specifies when the domain controller was created.
    #   @return [Time]
    #
    # @!attribute [rw] status_last_updated_date_time
    #   The date and time that the status was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DomainController AWS API Documentation
    #
    class DomainController < Struct.new(
      :directory_id,
      :domain_controller_id,
      :dns_ip_addr,
      :vpc_id,
      :subnet_id,
      :availability_zone,
      :status,
      :status_reason,
      :launch_time,
      :status_last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum allowed number of domain controllers per directory was
    # exceeded. The default limit per directory is 20 domain controllers.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DomainControllerLimitExceededException AWS API Documentation
    #
    class DomainControllerLimitExceededException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableLDAPSRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         type: "Client", # required, accepts Client
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of LDAP security to enable. Currently only the value
    #   `Client` is supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableLDAPSRequest AWS API Documentation
    #
    class EnableLDAPSRequest < Struct.new(
      :directory_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableLDAPSResult AWS API Documentation
    #
    class EnableLDAPSResult < Aws::EmptyStructure; end

    # Contains the inputs for the EnableRadius operation.
    #
    # @note When making an API call, you may pass EnableRadiusRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         radius_settings: { # required
    #           radius_servers: ["Server"],
    #           radius_port: 1,
    #           radius_timeout: 1,
    #           radius_retries: 1,
    #           shared_secret: "RadiusSharedSecret",
    #           authentication_protocol: "PAP", # accepts PAP, CHAP, MS-CHAPv1, MS-CHAPv2
    #           display_label: "RadiusDisplayLabel",
    #           use_same_username: false,
    #         },
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory for which to enable MFA.
    #   @return [String]
    #
    # @!attribute [rw] radius_settings
    #   A RadiusSettings object that contains information about the RADIUS
    #   server.
    #   @return [Types::RadiusSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableRadiusRequest AWS API Documentation
    #
    class EnableRadiusRequest < Struct.new(
      :directory_id,
      :radius_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the EnableRadius operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableRadiusResult AWS API Documentation
    #
    class EnableRadiusResult < Aws::EmptyStructure; end

    # Contains the inputs for the EnableSso operation.
    #
    # @note When making an API call, you may pass EnableSsoRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         user_name: "UserName",
    #         password: "ConnectPassword",
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory for which to enable single-sign on.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The username of an alternate account to use to enable single-sign
    #   on. This is only used for AD Connector directories. This account
    #   must have privileges to add a service principal name.
    #
    #   If the AD Connector service account does not have privileges to add
    #   a service principal name, you can specify an alternate account with
    #   the *UserName* and *Password* parameters. These credentials are only
    #   used to enable single sign-on and are not stored by the service. The
    #   AD Connector service account is not changed.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password of an alternate account to use to enable single-sign
    #   on. This is only used for AD Connector directories. For more
    #   information, see the *UserName* parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableSsoRequest AWS API Documentation
    #
    class EnableSsoRequest < Struct.new(
      :directory_id,
      :user_name,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Contains the results of the EnableSso operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableSsoResult AWS API Documentation
    #
    class EnableSsoResult < Aws::EmptyStructure; end

    # The specified entity already exists.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EntityAlreadyExistsException AWS API Documentation
    #
    class EntityAlreadyExistsException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified entity could not be found.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EntityDoesNotExistException AWS API Documentation
    #
    class EntityDoesNotExistException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about SNS topic and AWS Directory Service directory
    # associations.
    #
    # @!attribute [rw] directory_id
    #   The Directory ID of an AWS Directory Service directory that will
    #   publish status messages to an SNS topic.
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   The name of an AWS SNS topic the receives status messages from the
    #   directory.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The SNS topic ARN (Amazon Resource Name).
    #   @return [String]
    #
    # @!attribute [rw] created_date_time
    #   The date and time of when you associated your directory with the SNS
    #   topic.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The topic registration status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EventTopic AWS API Documentation
    #
    class EventTopic < Struct.new(
      :directory_id,
      :topic_name,
      :topic_arn,
      :created_date_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the inputs for the GetDirectoryLimits operation.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/GetDirectoryLimitsRequest AWS API Documentation
    #
    class GetDirectoryLimitsRequest < Aws::EmptyStructure; end

    # Contains the results of the GetDirectoryLimits operation.
    #
    # @!attribute [rw] directory_limits
    #   A DirectoryLimits object that contains the directory limits for the
    #   current rRegion.
    #   @return [Types::DirectoryLimits]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/GetDirectoryLimitsResult AWS API Documentation
    #
    class GetDirectoryLimitsResult < Struct.new(
      :directory_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the inputs for the GetSnapshotLimits operation.
    #
    # @note When making an API call, you may pass GetSnapshotLimitsRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   Contains the identifier of the directory to obtain the limits for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/GetSnapshotLimitsRequest AWS API Documentation
    #
    class GetSnapshotLimitsRequest < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the GetSnapshotLimits operation.
    #
    # @!attribute [rw] snapshot_limits
    #   A SnapshotLimits object that contains the manual snapshot limits for
    #   the specified directory.
    #   @return [Types::SnapshotLimits]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/GetSnapshotLimitsResult AWS API Documentation
    #
    class GetSnapshotLimitsResult < Struct.new(
      :snapshot_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # The account does not have sufficient permission to perform the
    # operation.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/InsufficientPermissionsException AWS API Documentation
    #
    class InsufficientPermissionsException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate PEM that was provided has incorrect encoding.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/InvalidCertificateException AWS API Documentation
    #
    class InvalidCertificateException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The LDAP activities could not be performed because they are limited by
    # the LDAPS status.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/InvalidLDAPSStatusException AWS API Documentation
    #
    class InvalidLDAPSStatusException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `NextToken` value is not valid.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameters are not valid.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The new password provided by the user does not meet the password
    # complexity requirements defined in your directory.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/InvalidPasswordException AWS API Documentation
    #
    class InvalidPasswordException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified shared target is not valid.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/InvalidTargetException AWS API Documentation
    #
    class InvalidTargetException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # IP address block. This is often the address block of the DNS server
    # used for your on-premises domain.
    #
    # @note When making an API call, you may pass IpRoute
    #   data as a hash:
    #
    #       {
    #         cidr_ip: "CidrIp",
    #         description: "Description",
    #       }
    #
    # @!attribute [rw] cidr_ip
    #   IP address block using CIDR format, for example 10.0.0.0/24. This is
    #   often the address block of the DNS server used for your on-premises
    #   domain. For a single IP address use a CIDR address block with /32.
    #   For example 10.0.0.0/32.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the address block.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/IpRoute AWS API Documentation
    #
    class IpRoute < Struct.new(
      :cidr_ip,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about one or more IP address blocks.
    #
    # @!attribute [rw] directory_id
    #   Identifier (ID) of the directory associated with the IP addresses.
    #   @return [String]
    #
    # @!attribute [rw] cidr_ip
    #   IP address block in the IpRoute.
    #   @return [String]
    #
    # @!attribute [rw] ip_route_status_msg
    #   The status of the IP address block.
    #   @return [String]
    #
    # @!attribute [rw] added_date_time
    #   The date and time the address block was added to the directory.
    #   @return [Time]
    #
    # @!attribute [rw] ip_route_status_reason
    #   The reason for the IpRouteStatusMsg.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the IpRouteInfo.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/IpRouteInfo AWS API Documentation
    #
    class IpRouteInfo < Struct.new(
      :directory_id,
      :cidr_ip,
      :ip_route_status_msg,
      :added_date_time,
      :ip_route_status_reason,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum allowed number of IP addresses was exceeded. The default
    # limit is 100 IP address blocks.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/IpRouteLimitExceededException AWS API Documentation
    #
    class IpRouteLimitExceededException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains general information about the LDAPS settings.
    #
    # @!attribute [rw] ldaps_status
    #   The state of the LDAPS settings.
    #   @return [String]
    #
    # @!attribute [rw] ldaps_status_reason
    #   Describes a state change for LDAPS.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time when the LDAPS settings were last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/LDAPSSettingInfo AWS API Documentation
    #
    class LDAPSSettingInfo < Struct.new(
      :ldaps_status,
      :ldaps_status_reason,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCertificatesRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token for requesting another page of certificates if the
    #   `NextToken` response element indicates that more certificates are
    #   available. Use the value of the returned `NextToken` element in your
    #   request until the token comes back as `null`. Pass `null` if this is
    #   the first call.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The number of items that should show up on one page
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListCertificatesRequest AWS API Documentation
    #
    class ListCertificatesRequest < Struct.new(
      :directory_id,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Indicates whether another page of certificates is available when the
    #   number of available certificates exceeds the page limit.
    #   @return [String]
    #
    # @!attribute [rw] certificates_info
    #   A list of certificates with basic details including certificate ID,
    #   certificate common name, certificate state.
    #   @return [Array<Types::CertificateInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListCertificatesResult AWS API Documentation
    #
    class ListCertificatesResult < Struct.new(
      :next_token,
      :certificates_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListIpRoutesRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] directory_id
    #   Identifier (ID) of the directory for which you want to retrieve the
    #   IP addresses.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The *ListIpRoutes.NextToken* value from a previous call to
    #   ListIpRoutes. Pass null if this is the first call.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Maximum number of items to return. If this value is zero, the
    #   maximum number of items is specified by the limitations of the
    #   operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListIpRoutesRequest AWS API Documentation
    #
    class ListIpRoutesRequest < Struct.new(
      :directory_id,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ip_routes_info
    #   A list of IpRoutes.
    #   @return [Array<Types::IpRouteInfo>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. Pass this value for the
    #   *NextToken* parameter in a subsequent call to ListIpRoutes to
    #   retrieve the next set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListIpRoutesResult AWS API Documentation
    #
    class ListIpRoutesResult < Struct.new(
      :ip_routes_info,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListLogSubscriptionsRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] directory_id
    #   If a *DirectoryID* is provided, lists only the log subscription
    #   associated with that directory. If no *DirectoryId* is provided,
    #   lists all log subscriptions associated with your AWS account. If
    #   there are no log subscriptions for the AWS account or the directory,
    #   an empty list will be returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListLogSubscriptionsRequest AWS API Documentation
    #
    class ListLogSubscriptionsRequest < Struct.new(
      :directory_id,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_subscriptions
    #   A list of active LogSubscription objects for calling the AWS
    #   account.
    #   @return [Array<Types::LogSubscription>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListLogSubscriptionsResult AWS API Documentation
    #
    class ListLogSubscriptionsResult < Struct.new(
      :log_subscriptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSchemaExtensionsRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory from which to retrieve the schema
    #   extension information.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `ListSchemaExtensions.NextToken` value from a previous call to
    #   `ListSchemaExtensions`. Pass null if this is the first call.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListSchemaExtensionsRequest AWS API Documentation
    #
    class ListSchemaExtensionsRequest < Struct.new(
      :directory_id,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_extensions_info
    #   Information about the schema extensions applied to the directory.
    #   @return [Array<Types::SchemaExtensionInfo>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. Pass this value for the
    #   `NextToken` parameter in a subsequent call to `ListSchemaExtensions`
    #   to retrieve the next set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListSchemaExtensionsResult AWS API Documentation
    #
    class ListSchemaExtensionsResult < Struct.new(
      :schema_extensions_info,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "ResourceId", # required
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] resource_id
    #   Identifier (ID) of the directory for which you want to retrieve
    #   tags.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Reserved for future use.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_id,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   List of tags returned by the ListTagsForResource operation.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListTagsForResourceResult AWS API Documentation
    #
    class ListTagsForResourceResult < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a log subscription, which tracks real-time data from a
    # chosen log group to a specified destination.
    #
    # @!attribute [rw] directory_id
    #   Identifier (ID) of the directory that you want to associate with the
    #   log subscription.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] subscription_created_date_time
    #   The date and time that the log subscription was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/LogSubscription AWS API Documentation
    #
    class LogSubscription < Struct.new(
      :directory_id,
      :log_group_name,
      :subscription_created_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The LDAP activities could not be performed because at least one valid
    # certificate must be registered with the system.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/NoAvailableCertificateException AWS API Documentation
    #
    class NoAvailableCertificateException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception encountered while trying to access your AWS organization.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/OrganizationsException AWS API Documentation
    #
    class OrganizationsException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the directory owner account details that have been shared to
    # the directory consumer account.
    #
    # @!attribute [rw] directory_id
    #   Identifier of the AWS Managed Microsoft AD directory in the
    #   directory owner account.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Identifier of the directory owner account.
    #   @return [String]
    #
    # @!attribute [rw] dns_ip_addrs
    #   IP address of the directory’s domain controllers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_settings
    #   Information about the VPC settings for the directory.
    #   @return [Types::DirectoryVpcSettingsDescription]
    #
    # @!attribute [rw] radius_settings
    #   A RadiusSettings object that contains information about the RADIUS
    #   server.
    #   @return [Types::RadiusSettings]
    #
    # @!attribute [rw] radius_status
    #   Information about the status of the RADIUS server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/OwnerDirectoryDescription AWS API Documentation
    #
    class OwnerDirectoryDescription < Struct.new(
      :directory_id,
      :account_id,
      :dns_ip_addrs,
      :vpc_settings,
      :radius_settings,
      :radius_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a Remote Authentication Dial In User
    # Service (RADIUS) server.
    #
    # @note When making an API call, you may pass RadiusSettings
    #   data as a hash:
    #
    #       {
    #         radius_servers: ["Server"],
    #         radius_port: 1,
    #         radius_timeout: 1,
    #         radius_retries: 1,
    #         shared_secret: "RadiusSharedSecret",
    #         authentication_protocol: "PAP", # accepts PAP, CHAP, MS-CHAPv1, MS-CHAPv2
    #         display_label: "RadiusDisplayLabel",
    #         use_same_username: false,
    #       }
    #
    # @!attribute [rw] radius_servers
    #   An array of strings that contains the IP addresses of the RADIUS
    #   server endpoints, or the IP addresses of your RADIUS server load
    #   balancer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] radius_port
    #   The port that your RADIUS server is using for communications. Your
    #   on-premises network must allow inbound traffic over this port from
    #   the AWS Directory Service servers.
    #   @return [Integer]
    #
    # @!attribute [rw] radius_timeout
    #   The amount of time, in seconds, to wait for the RADIUS server to
    #   respond.
    #   @return [Integer]
    #
    # @!attribute [rw] radius_retries
    #   The maximum number of times that communication with the RADIUS
    #   server is attempted.
    #   @return [Integer]
    #
    # @!attribute [rw] shared_secret
    #   Required for enabling RADIUS on the directory.
    #   @return [String]
    #
    # @!attribute [rw] authentication_protocol
    #   The protocol specified for your RADIUS endpoints.
    #   @return [String]
    #
    # @!attribute [rw] display_label
    #   Not currently used.
    #   @return [String]
    #
    # @!attribute [rw] use_same_username
    #   Not currently used.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RadiusSettings AWS API Documentation
    #
    class RadiusSettings < Struct.new(
      :radius_servers,
      :radius_port,
      :radius_timeout,
      :radius_retries,
      :shared_secret,
      :authentication_protocol,
      :display_label,
      :use_same_username)
      SENSITIVE = [:shared_secret]
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterCertificateRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         certificate_data: "CertificateData", # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] certificate_data
    #   The certificate PEM string that needs to be registered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RegisterCertificateRequest AWS API Documentation
    #
    class RegisterCertificateRequest < Struct.new(
      :directory_id,
      :certificate_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_id
    #   The identifier of the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RegisterCertificateResult AWS API Documentation
    #
    class RegisterCertificateResult < Struct.new(
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Registers a new event topic.
    #
    # @note When making an API call, you may pass RegisterEventTopicRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         topic_name: "TopicName", # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The Directory ID that will publish status messages to the SNS topic.
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   The SNS topic name to which the directory will publish status
    #   messages. This SNS topic must be in the same region as the specified
    #   Directory ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RegisterEventTopicRequest AWS API Documentation
    #
    class RegisterEventTopicRequest < Struct.new(
      :directory_id,
      :topic_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a RegisterEventTopic request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RegisterEventTopicResult AWS API Documentation
    #
    class RegisterEventTopicResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RejectSharedDirectoryRequest
    #   data as a hash:
    #
    #       {
    #         shared_directory_id: "DirectoryId", # required
    #       }
    #
    # @!attribute [rw] shared_directory_id
    #   Identifier of the shared directory in the directory consumer
    #   account. This identifier is different for each directory owner
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RejectSharedDirectoryRequest AWS API Documentation
    #
    class RejectSharedDirectoryRequest < Struct.new(
      :shared_directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] shared_directory_id
    #   Identifier of the shared directory in the directory consumer
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RejectSharedDirectoryResult AWS API Documentation
    #
    class RejectSharedDirectoryResult < Struct.new(
      :shared_directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveIpRoutesRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         cidr_ips: ["CidrIp"], # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   Identifier (ID) of the directory from which you want to remove the
    #   IP addresses.
    #   @return [String]
    #
    # @!attribute [rw] cidr_ips
    #   IP address blocks that you want to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RemoveIpRoutesRequest AWS API Documentation
    #
    class RemoveIpRoutesRequest < Struct.new(
      :directory_id,
      :cidr_ips)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RemoveIpRoutesResult AWS API Documentation
    #
    class RemoveIpRoutesResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RemoveTagsFromResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "ResourceId", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_id
    #   Identifier (ID) of the directory from which to remove the tag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag key (name) of the tag to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RemoveTagsFromResourceRequest AWS API Documentation
    #
    class RemoveTagsFromResourceRequest < Struct.new(
      :resource_id,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RemoveTagsFromResourceResult AWS API Documentation
    #
    class RemoveTagsFromResourceResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ResetUserPasswordRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         user_name: "CustomerUserName", # required
    #         new_password: "UserPassword", # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   Identifier of the AWS Managed Microsoft AD or Simple AD directory in
    #   which the user resides.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The user name of the user whose password will be reset.
    #   @return [String]
    #
    # @!attribute [rw] new_password
    #   The new password that will be reset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ResetUserPasswordRequest AWS API Documentation
    #
    class ResetUserPasswordRequest < Struct.new(
      :directory_id,
      :user_name,
      :new_password)
      SENSITIVE = [:new_password]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ResetUserPasswordResult AWS API Documentation
    #
    class ResetUserPasswordResult < Aws::EmptyStructure; end

    # An object representing the inputs for the RestoreFromSnapshot
    # operation.
    #
    # @note When making an API call, you may pass RestoreFromSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         snapshot_id: "SnapshotId", # required
    #       }
    #
    # @!attribute [rw] snapshot_id
    #   The identifier of the snapshot to restore from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RestoreFromSnapshotRequest AWS API Documentation
    #
    class RestoreFromSnapshotRequest < Struct.new(
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the RestoreFromSnapshot operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RestoreFromSnapshotResult AWS API Documentation
    #
    class RestoreFromSnapshotResult < Aws::EmptyStructure; end

    # Information about a schema extension.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory to which the schema extension is
    #   applied.
    #   @return [String]
    #
    # @!attribute [rw] schema_extension_id
    #   The identifier of the schema extension.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the schema extension.
    #   @return [String]
    #
    # @!attribute [rw] schema_extension_status
    #   The current status of the schema extension.
    #   @return [String]
    #
    # @!attribute [rw] schema_extension_status_reason
    #   The reason for the `SchemaExtensionStatus`.
    #   @return [String]
    #
    # @!attribute [rw] start_date_time
    #   The date and time that the schema extension started being applied to
    #   the directory.
    #   @return [Time]
    #
    # @!attribute [rw] end_date_time
    #   The date and time that the schema extension was completed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/SchemaExtensionInfo AWS API Documentation
    #
    class SchemaExtensionInfo < Struct.new(
      :directory_id,
      :schema_extension_id,
      :description,
      :schema_extension_status,
      :schema_extension_status_reason,
      :start_date_time,
      :end_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception has occurred in AWS Directory Service.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ServiceException AWS API Documentation
    #
    class ServiceException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ShareDirectoryRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         share_notes: "Notes",
    #         share_target: { # required
    #           id: "TargetId", # required
    #           type: "ACCOUNT", # required, accepts ACCOUNT
    #         },
    #         share_method: "ORGANIZATIONS", # required, accepts ORGANIZATIONS, HANDSHAKE
    #       }
    #
    # @!attribute [rw] directory_id
    #   Identifier of the AWS Managed Microsoft AD directory that you want
    #   to share with other AWS accounts.
    #   @return [String]
    #
    # @!attribute [rw] share_notes
    #   A directory share request that is sent by the directory owner to the
    #   directory consumer. The request includes a typed message to help the
    #   directory consumer administrator determine whether to approve or
    #   reject the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] share_target
    #   Identifier for the directory consumer account with whom the
    #   directory is to be shared.
    #   @return [Types::ShareTarget]
    #
    # @!attribute [rw] share_method
    #   The method used when sharing a directory to determine whether the
    #   directory should be shared within your AWS organization
    #   (`ORGANIZATIONS`) or with any AWS account by sending a directory
    #   sharing request (`HANDSHAKE`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ShareDirectoryRequest AWS API Documentation
    #
    class ShareDirectoryRequest < Struct.new(
      :directory_id,
      :share_notes,
      :share_target,
      :share_method)
      SENSITIVE = [:share_notes]
      include Aws::Structure
    end

    # @!attribute [rw] shared_directory_id
    #   Identifier of the directory that is stored in the directory consumer
    #   account that is shared from the specified directory (`DirectoryId`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ShareDirectoryResult AWS API Documentation
    #
    class ShareDirectoryResult < Struct.new(
      :shared_directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of AWS accounts that you can share with this
    # directory has been reached.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ShareLimitExceededException AWS API Documentation
    #
    class ShareLimitExceededException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifier that contains details about the directory consumer account.
    #
    # @note When making an API call, you may pass ShareTarget
    #   data as a hash:
    #
    #       {
    #         id: "TargetId", # required
    #         type: "ACCOUNT", # required, accepts ACCOUNT
    #       }
    #
    # @!attribute [rw] id
    #   Identifier of the directory consumer account.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of identifier to be used in the `Id` field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ShareTarget AWS API Documentation
    #
    class ShareTarget < Struct.new(
      :id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the shared directory in the directory owner account for
    # which the share request in the directory consumer account has been
    # accepted.
    #
    # @!attribute [rw] owner_account_id
    #   Identifier of the directory owner account, which contains the
    #   directory that has been shared to the consumer account.
    #   @return [String]
    #
    # @!attribute [rw] owner_directory_id
    #   Identifier of the directory in the directory owner account.
    #   @return [String]
    #
    # @!attribute [rw] share_method
    #   The method used when sharing a directory to determine whether the
    #   directory should be shared within your AWS organization
    #   (`ORGANIZATIONS`) or with any AWS account by sending a shared
    #   directory request (`HANDSHAKE`).
    #   @return [String]
    #
    # @!attribute [rw] shared_account_id
    #   Identifier of the directory consumer account that has access to the
    #   shared directory (`OwnerDirectoryId`) in the directory owner
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] shared_directory_id
    #   Identifier of the shared directory in the directory consumer
    #   account. This identifier is different for each directory owner
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] share_status
    #   Current directory status of the shared AWS Managed Microsoft AD
    #   directory.
    #   @return [String]
    #
    # @!attribute [rw] share_notes
    #   A directory share request that is sent by the directory owner to the
    #   directory consumer. The request includes a typed message to help the
    #   directory consumer administrator determine whether to approve or
    #   reject the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] created_date_time
    #   The date and time that the shared directory was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time that the shared directory was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/SharedDirectory AWS API Documentation
    #
    class SharedDirectory < Struct.new(
      :owner_account_id,
      :owner_directory_id,
      :share_method,
      :shared_account_id,
      :shared_directory_id,
      :share_status,
      :share_notes,
      :created_date_time,
      :last_updated_date_time)
      SENSITIVE = [:share_notes]
      include Aws::Structure
    end

    # Describes a directory snapshot.
    #
    # @!attribute [rw] directory_id
    #   The directory identifier.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot identifier.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The snapshot type.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive name of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The snapshot status.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time that the snapshot was taken.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/Snapshot AWS API Documentation
    #
    class Snapshot < Struct.new(
      :directory_id,
      :snapshot_id,
      :type,
      :name,
      :status,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of manual snapshots for the directory has been
    # reached. You can use the GetSnapshotLimits operation to determine the
    # snapshot limits for a directory.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/SnapshotLimitExceededException AWS API Documentation
    #
    class SnapshotLimitExceededException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains manual snapshot limit information for a directory.
    #
    # @!attribute [rw] manual_snapshots_limit
    #   The maximum number of manual snapshots allowed.
    #   @return [Integer]
    #
    # @!attribute [rw] manual_snapshots_current_count
    #   The current number of manual snapshots of the directory.
    #   @return [Integer]
    #
    # @!attribute [rw] manual_snapshots_limit_reached
    #   Indicates if the manual snapshot limit has been reached.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/SnapshotLimits AWS API Documentation
    #
    class SnapshotLimits < Struct.new(
      :manual_snapshots_limit,
      :manual_snapshots_current_count,
      :manual_snapshots_limit_reached)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartSchemaExtensionRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         create_snapshot_before_schema_extension: false, # required
    #         ldif_content: "LdifContent", # required
    #         description: "Description", # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory for which the schema extension will
    #   be applied to.
    #   @return [String]
    #
    # @!attribute [rw] create_snapshot_before_schema_extension
    #   If true, creates a snapshot of the directory before applying the
    #   schema extension.
    #   @return [Boolean]
    #
    # @!attribute [rw] ldif_content
    #   The LDIF file represented as a string. To construct the LdifContent
    #   string, precede each line as it would be formatted in an ldif file
    #   with \\n. See the example request below for more details. The file
    #   size can be no larger than 1MB.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the schema extension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/StartSchemaExtensionRequest AWS API Documentation
    #
    class StartSchemaExtensionRequest < Struct.new(
      :directory_id,
      :create_snapshot_before_schema_extension,
      :ldif_content,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_extension_id
    #   The identifier of the schema extension that will be applied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/StartSchemaExtensionResult AWS API Documentation
    #
    class StartSchemaExtensionResult < Struct.new(
      :schema_extension_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata assigned to a directory consisting of a key-value pair.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   Required name of the tag. The string value can be Unicode characters
    #   and cannot be prefixed with "aws:". The string can contain only
    #   the set of Unicode letters, digits, white-space, '\_', '.',
    #   '/', '=', '+', '-' (Java regex:
    #   "^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-\]*)$").
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The optional value of the tag. The string value can be Unicode
    #   characters. The string can contain only the set of Unicode letters,
    #   digits, white-space, '\_', '.', '/', '=', '+', '-' (Java
    #   regex:
    #   "^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-\]*)$").
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum allowed number of tags was exceeded.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/TagLimitExceededException AWS API Documentation
    #
    class TagLimitExceededException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a trust relationship between an AWS Managed Microsoft AD
    # directory and an external domain.
    #
    # @!attribute [rw] directory_id
    #   The Directory ID of the AWS directory involved in the trust
    #   relationship.
    #   @return [String]
    #
    # @!attribute [rw] trust_id
    #   The unique ID of the trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] remote_domain_name
    #   The Fully Qualified Domain Name (FQDN) of the external domain
    #   involved in the trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] trust_type
    #   The trust relationship type. `Forest` is the default.
    #   @return [String]
    #
    # @!attribute [rw] trust_direction
    #   The trust relationship direction.
    #   @return [String]
    #
    # @!attribute [rw] trust_state
    #   The trust relationship state.
    #   @return [String]
    #
    # @!attribute [rw] created_date_time
    #   The date and time that the trust relationship was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time that the trust relationship was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] state_last_updated_date_time
    #   The date and time that the TrustState was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] trust_state_reason
    #   The reason for the TrustState.
    #   @return [String]
    #
    # @!attribute [rw] selective_auth
    #   Current state of selective authentication for the trust.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/Trust AWS API Documentation
    #
    class Trust < Struct.new(
      :directory_id,
      :trust_id,
      :remote_domain_name,
      :trust_type,
      :trust_direction,
      :trust_state,
      :created_date_time,
      :last_updated_date_time,
      :state_last_updated_date_time,
      :trust_state_reason,
      :selective_auth)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UnshareDirectoryRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         unshare_target: { # required
    #           id: "TargetId", # required
    #           type: "ACCOUNT", # required, accepts ACCOUNT
    #         },
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the AWS Managed Microsoft AD directory that you
    #   want to stop sharing.
    #   @return [String]
    #
    # @!attribute [rw] unshare_target
    #   Identifier for the directory consumer account with whom the
    #   directory has to be unshared.
    #   @return [Types::UnshareTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UnshareDirectoryRequest AWS API Documentation
    #
    class UnshareDirectoryRequest < Struct.new(
      :directory_id,
      :unshare_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] shared_directory_id
    #   Identifier of the directory stored in the directory consumer account
    #   that is to be unshared from the specified directory (`DirectoryId`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UnshareDirectoryResult AWS API Documentation
    #
    class UnshareDirectoryResult < Struct.new(
      :shared_directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifier that contains details about the directory consumer account
    # with whom the directory is being unshared.
    #
    # @note When making an API call, you may pass UnshareTarget
    #   data as a hash:
    #
    #       {
    #         id: "TargetId", # required
    #         type: "ACCOUNT", # required, accepts ACCOUNT
    #       }
    #
    # @!attribute [rw] id
    #   Identifier of the directory consumer account.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of identifier to be used in the *Id* field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UnshareTarget AWS API Documentation
    #
    class UnshareTarget < Struct.new(
      :id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation is not supported.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UnsupportedOperationException AWS API Documentation
    #
    class UnsupportedOperationException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates a conditional forwarder.
    #
    # @note When making an API call, you may pass UpdateConditionalForwarderRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         remote_domain_name: "RemoteDomainName", # required
    #         dns_ip_addrs: ["IpAddr"], # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The directory ID of the AWS directory for which to update the
    #   conditional forwarder.
    #   @return [String]
    #
    # @!attribute [rw] remote_domain_name
    #   The fully qualified domain name (FQDN) of the remote domain with
    #   which you will set up a trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] dns_ip_addrs
    #   The updated IP addresses of the remote DNS server associated with
    #   the conditional forwarder.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateConditionalForwarderRequest AWS API Documentation
    #
    class UpdateConditionalForwarderRequest < Struct.new(
      :directory_id,
      :remote_domain_name,
      :dns_ip_addrs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of an UpdateConditionalForwarder request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateConditionalForwarderResult AWS API Documentation
    #
    class UpdateConditionalForwarderResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateNumberOfDomainControllersRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         desired_number: 1, # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   Identifier of the directory to which the domain controllers will be
    #   added or removed.
    #   @return [String]
    #
    # @!attribute [rw] desired_number
    #   The number of domain controllers desired in the directory.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateNumberOfDomainControllersRequest AWS API Documentation
    #
    class UpdateNumberOfDomainControllersRequest < Struct.new(
      :directory_id,
      :desired_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateNumberOfDomainControllersResult AWS API Documentation
    #
    class UpdateNumberOfDomainControllersResult < Aws::EmptyStructure; end

    # Contains the inputs for the UpdateRadius operation.
    #
    # @note When making an API call, you may pass UpdateRadiusRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         radius_settings: { # required
    #           radius_servers: ["Server"],
    #           radius_port: 1,
    #           radius_timeout: 1,
    #           radius_retries: 1,
    #           shared_secret: "RadiusSharedSecret",
    #           authentication_protocol: "PAP", # accepts PAP, CHAP, MS-CHAPv1, MS-CHAPv2
    #           display_label: "RadiusDisplayLabel",
    #           use_same_username: false,
    #         },
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory for which to update the RADIUS
    #   server information.
    #   @return [String]
    #
    # @!attribute [rw] radius_settings
    #   A RadiusSettings object that contains information about the RADIUS
    #   server.
    #   @return [Types::RadiusSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateRadiusRequest AWS API Documentation
    #
    class UpdateRadiusRequest < Struct.new(
      :directory_id,
      :radius_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the UpdateRadius operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateRadiusResult AWS API Documentation
    #
    class UpdateRadiusResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateTrustRequest
    #   data as a hash:
    #
    #       {
    #         trust_id: "TrustId", # required
    #         selective_auth: "Enabled", # accepts Enabled, Disabled
    #       }
    #
    # @!attribute [rw] trust_id
    #   Identifier of the trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] selective_auth
    #   Updates selective authentication for the trust.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateTrustRequest AWS API Documentation
    #
    class UpdateTrustRequest < Struct.new(
      :trust_id,
      :selective_auth)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @!attribute [rw] trust_id
    #   Identifier of the trust relationship.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateTrustResult AWS API Documentation
    #
    class UpdateTrustResult < Struct.new(
      :request_id,
      :trust_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user provided a username that does not exist in your directory.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UserDoesNotExistException AWS API Documentation
    #
    class UserDoesNotExistException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Initiates the verification of an existing trust relationship between
    # an AWS Managed Microsoft AD directory and an external domain.
    #
    # @note When making an API call, you may pass VerifyTrustRequest
    #   data as a hash:
    #
    #       {
    #         trust_id: "TrustId", # required
    #       }
    #
    # @!attribute [rw] trust_id
    #   The unique Trust ID of the trust relationship to verify.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/VerifyTrustRequest AWS API Documentation
    #
    class VerifyTrustRequest < Struct.new(
      :trust_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Result of a VerifyTrust request.
    #
    # @!attribute [rw] trust_id
    #   The unique Trust ID of the trust relationship that was verified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/VerifyTrustResult AWS API Documentation
    #
    class VerifyTrustResult < Struct.new(
      :trust_id)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
