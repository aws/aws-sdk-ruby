# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module DirectoryService
    module Types

      # @note When making an API call, pass AddIpRoutesRequest
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
      class AddIpRoutesRequest < Struct.new(
        :directory_id,
        :ip_routes,
        :update_security_group_for_directory_controllers)
        include Aws::Structure
      end

      class AddIpRoutesResult < Aws::EmptyStructure; end

      # @note When making an API call, pass AddTagsToResourceRequest
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
      # @!attribute [rw] resource_id
      #   Identifier (ID) for the directory to which to add the tag.
      #   @return [String]
      #
      # @!attribute [rw] tags
      #   The tags to be assigned to the Amazon Directory Services directory.
      #   @return [Array<Types::Tag>]
      class AddTagsToResourceRequest < Struct.new(
        :resource_id,
        :tags)
        include Aws::Structure
      end

      class AddTagsToResourceResult < Aws::EmptyStructure; end

      # Represents a named directory attribute.
      # @note When making an API call, pass Attribute
      #   data as a hash:
      #
      #       {
      #         name: "AttributeName",
      #         value: "AttributeValue",
      #       }
      # @!attribute [rw] name
      #   The name of the attribute.
      #   @return [String]
      #
      # @!attribute [rw] value
      #   The value of the attribute.
      #   @return [String]
      class Attribute < Struct.new(
        :name,
        :value)
        include Aws::Structure
      end

      # Contains information about a computer account in a directory.
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
      class Computer < Struct.new(
        :computer_id,
        :computer_name,
        :computer_attributes)
        include Aws::Structure
      end

      # Points to a remote domain with which you are setting up a trust
      # relationship. Conditional forwarders are required in order to set up a
      # trust relationship with another domain.
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
      class ConditionalForwarder < Struct.new(
        :remote_domain_name,
        :dns_ip_addrs,
        :replication_scope)
        include Aws::Structure
      end

      # Contains the inputs for the ConnectDirectory operation.
      # @note When making an API call, pass ConnectDirectoryRequest
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
      #       }
      # @!attribute [rw] name
      #   The fully-qualified name of the on-premises directory, such as
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
      #   A textual description for the directory.
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
      class ConnectDirectoryRequest < Struct.new(
        :name,
        :short_name,
        :password,
        :description,
        :size,
        :connect_settings)
        include Aws::Structure
      end

      # Contains the results of the ConnectDirectory operation.
      # @!attribute [rw] directory_id
      #   The identifier of the new directory.
      #   @return [String]
      class ConnectDirectoryResult < Struct.new(
        :directory_id)
        include Aws::Structure
      end

      # Contains the inputs for the CreateAlias operation.
      # @note When making an API call, pass CreateAliasRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId", # required
      #         alias: "AliasName", # required
      #       }
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
      class CreateAliasRequest < Struct.new(
        :directory_id,
        :alias)
        include Aws::Structure
      end

      # Contains the results of the CreateAlias operation.
      # @!attribute [rw] directory_id
      #   The identifier of the directory.
      #   @return [String]
      #
      # @!attribute [rw] alias
      #   The alias for the directory.
      #   @return [String]
      class CreateAliasResult < Struct.new(
        :directory_id,
        :alias)
        include Aws::Structure
      end

      # Contains the inputs for the CreateComputer operation.
      # @note When making an API call, pass CreateComputerRequest
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
      class CreateComputerRequest < Struct.new(
        :directory_id,
        :computer_name,
        :password,
        :organizational_unit_distinguished_name,
        :computer_attributes)
        include Aws::Structure
      end

      # Contains the results for the CreateComputer operation.
      # @!attribute [rw] computer
      #   A Computer object that represents the computer account.
      #   @return [Types::Computer]
      class CreateComputerResult < Struct.new(
        :computer)
        include Aws::Structure
      end

      # Initiates the creation of a conditional forwarder for your AWS
      # Directory Service for Microsoft Active Directory. Conditional
      # forwarders are required in order to set up a trust relationship with
      # another domain.
      # @note When making an API call, pass CreateConditionalForwarderRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId", # required
      #         remote_domain_name: "RemoteDomainName", # required
      #         dns_ip_addrs: ["IpAddr"], # required
      #       }
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
      class CreateConditionalForwarderRequest < Struct.new(
        :directory_id,
        :remote_domain_name,
        :dns_ip_addrs)
        include Aws::Structure
      end

      # The result of a CreateConditinalForwarder request.
      class CreateConditionalForwarderResult < Aws::EmptyStructure; end

      # Contains the inputs for the CreateDirectory operation.
      # @note When making an API call, pass CreateDirectoryRequest
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
      #       }
      # @!attribute [rw] name
      #   The fully qualified name for the directory, such as
      #   `corp.example.com`.
      #   @return [String]
      #
      # @!attribute [rw] short_name
      #   The short name of the directory, such as `CORP`.
      #   @return [String]
      #
      # @!attribute [rw] password
      #   The password for the directory administrator. The directory creation
      #   process creates a directory administrator account with the username
      #   `Administrator` and this password.
      #   @return [String]
      #
      # @!attribute [rw] description
      #   A textual description for the directory.
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
      class CreateDirectoryRequest < Struct.new(
        :name,
        :short_name,
        :password,
        :description,
        :size,
        :vpc_settings)
        include Aws::Structure
      end

      # Contains the results of the CreateDirectory operation.
      # @!attribute [rw] directory_id
      #   The identifier of the directory that was created.
      #   @return [String]
      class CreateDirectoryResult < Struct.new(
        :directory_id)
        include Aws::Structure
      end

      # Creates a Microsoft AD in the AWS cloud.
      # @note When making an API call, pass CreateMicrosoftADRequest
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
      #       }
      # @!attribute [rw] name
      #   The fully qualified domain name for the directory, such as
      #   `corp.example.com`. This name will resolve inside your VPC only. It
      #   does not need to be publicly resolvable.
      #   @return [String]
      #
      # @!attribute [rw] short_name
      #   The NetBIOS name for your domain. A short identifier for your
      #   domain, such as `CORP`. If you don't specify a NetBIOS name, it
      #   will default to the first part of your directory DNS. For example,
      #   `CORP` for the directory DNS `corp.example.com`.
      #   @return [String]
      #
      # @!attribute [rw] password
      #   The password for the default administrative user named `Admin`.
      #   @return [String]
      #
      # @!attribute [rw] description
      #   A textual description for the directory. This label will appear on
      #   the AWS console `Directory Details` page after the directory is
      #   created.
      #   @return [String]
      #
      # @!attribute [rw] vpc_settings
      #   Contains VPC information for the CreateDirectory or
      #   CreateMicrosoftAD operation.
      #   @return [Types::DirectoryVpcSettings]
      class CreateMicrosoftADRequest < Struct.new(
        :name,
        :short_name,
        :password,
        :description,
        :vpc_settings)
        include Aws::Structure
      end

      # Result of a CreateMicrosoftAD request.
      # @!attribute [rw] directory_id
      #   The identifier of the directory that was created.
      #   @return [String]
      class CreateMicrosoftADResult < Struct.new(
        :directory_id)
        include Aws::Structure
      end

      # Contains the inputs for the CreateSnapshot operation.
      # @note When making an API call, pass CreateSnapshotRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId", # required
      #         name: "SnapshotName",
      #       }
      # @!attribute [rw] directory_id
      #   The identifier of the directory of which to take a snapshot.
      #   @return [String]
      #
      # @!attribute [rw] name
      #   The descriptive name to apply to the snapshot.
      #   @return [String]
      class CreateSnapshotRequest < Struct.new(
        :directory_id,
        :name)
        include Aws::Structure
      end

      # Contains the results of the CreateSnapshot operation.
      # @!attribute [rw] snapshot_id
      #   The identifier of the snapshot that was created.
      #   @return [String]
      class CreateSnapshotResult < Struct.new(
        :snapshot_id)
        include Aws::Structure
      end

      # AWS Directory Service for Microsoft Active Directory allows you to
      # configure trust relationships. For example, you can establish a trust
      # between your Microsoft AD in the AWS cloud, and your existing
      # on-premises Microsoft Active Directory. This would allow you to
      # provide users and groups access to resources in either domain, with a
      # single set of credentials.
      #
      # This action initiates the creation of the AWS side of a trust
      # relationship between a Microsoft AD in the AWS cloud and an external
      # domain.
      # @note When making an API call, pass CreateTrustRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId", # required
      #         remote_domain_name: "RemoteDomainName", # required
      #         trust_password: "TrustPassword", # required
      #         trust_direction: "One-Way: Outgoing", # required, accepts One-Way: Outgoing, One-Way: Incoming, Two-Way
      #         trust_type: "Forest", # accepts Forest
      #         conditional_forwarder_ip_addrs: ["IpAddr"],
      #       }
      # @!attribute [rw] directory_id
      #   The Directory ID of the Microsoft AD in the AWS cloud for which to
      #   establish the trust relationship.
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
      #   The trust relationship type.
      #   @return [String]
      #
      # @!attribute [rw] conditional_forwarder_ip_addrs
      #   The IP addresses of the remote DNS server associated with
      #   RemoteDomainName.
      #   @return [Array<String>]
      class CreateTrustRequest < Struct.new(
        :directory_id,
        :remote_domain_name,
        :trust_password,
        :trust_direction,
        :trust_type,
        :conditional_forwarder_ip_addrs)
        include Aws::Structure
      end

      # The result of a CreateTrust request.
      # @!attribute [rw] trust_id
      #   A unique identifier for the trust relationship that was created.
      #   @return [String]
      class CreateTrustResult < Struct.new(
        :trust_id)
        include Aws::Structure
      end

      # Deletes a conditional forwarder.
      # @note When making an API call, pass DeleteConditionalForwarderRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId", # required
      #         remote_domain_name: "RemoteDomainName", # required
      #       }
      # @!attribute [rw] directory_id
      #   The directory ID for which you are deleting the conditional
      #   forwarder.
      #   @return [String]
      #
      # @!attribute [rw] remote_domain_name
      #   The fully qualified domain name (FQDN) of the remote domain with
      #   which you are deleting the conditional forwarder.
      #   @return [String]
      class DeleteConditionalForwarderRequest < Struct.new(
        :directory_id,
        :remote_domain_name)
        include Aws::Structure
      end

      # The result of a DeleteConditionalForwarder request.
      class DeleteConditionalForwarderResult < Aws::EmptyStructure; end

      # Contains the inputs for the DeleteDirectory operation.
      # @note When making an API call, pass DeleteDirectoryRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId", # required
      #       }
      # @!attribute [rw] directory_id
      #   The identifier of the directory to delete.
      #   @return [String]
      class DeleteDirectoryRequest < Struct.new(
        :directory_id)
        include Aws::Structure
      end

      # Contains the results of the DeleteDirectory operation.
      # @!attribute [rw] directory_id
      #   The directory identifier.
      #   @return [String]
      class DeleteDirectoryResult < Struct.new(
        :directory_id)
        include Aws::Structure
      end

      # Contains the inputs for the DeleteSnapshot operation.
      # @note When making an API call, pass DeleteSnapshotRequest
      #   data as a hash:
      #
      #       {
      #         snapshot_id: "SnapshotId", # required
      #       }
      # @!attribute [rw] snapshot_id
      #   The identifier of the directory snapshot to be deleted.
      #   @return [String]
      class DeleteSnapshotRequest < Struct.new(
        :snapshot_id)
        include Aws::Structure
      end

      # Contains the results of the DeleteSnapshot operation.
      # @!attribute [rw] snapshot_id
      #   The identifier of the directory snapshot that was deleted.
      #   @return [String]
      class DeleteSnapshotResult < Struct.new(
        :snapshot_id)
        include Aws::Structure
      end

      # Deletes the local side of an existing trust relationship between the
      # Microsoft AD in the AWS cloud and the external domain.
      # @note When making an API call, pass DeleteTrustRequest
      #   data as a hash:
      #
      #       {
      #         trust_id: "TrustId", # required
      #         delete_associated_conditional_forwarder: false,
      #       }
      # @!attribute [rw] trust_id
      #   The Trust ID of the trust relationship to be deleted.
      #   @return [String]
      #
      # @!attribute [rw] delete_associated_conditional_forwarder
      #   Delete a conditional forwarder as part of a DeleteTrustRequest.
      #   @return [Boolean]
      class DeleteTrustRequest < Struct.new(
        :trust_id,
        :delete_associated_conditional_forwarder)
        include Aws::Structure
      end

      # The result of a DeleteTrust request.
      # @!attribute [rw] trust_id
      #   The Trust ID of the trust relationship that was deleted.
      #   @return [String]
      class DeleteTrustResult < Struct.new(
        :trust_id)
        include Aws::Structure
      end

      # Removes the specified directory as a publisher to the specified SNS
      # topic.
      # @note When making an API call, pass DeregisterEventTopicRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId", # required
      #         topic_name: "TopicName", # required
      #       }
      # @!attribute [rw] directory_id
      #   The Directory ID to remove as a publisher. This directory will no
      #   longer send messages to the specified SNS topic.
      #   @return [String]
      #
      # @!attribute [rw] topic_name
      #   The name of the SNS topic from which to remove the directory as a
      #   publisher.
      #   @return [String]
      class DeregisterEventTopicRequest < Struct.new(
        :directory_id,
        :topic_name)
        include Aws::Structure
      end

      # The result of a DeregisterEventTopic request.
      class DeregisterEventTopicResult < Aws::EmptyStructure; end

      # Describes a conditional forwarder.
      # @note When making an API call, pass DescribeConditionalForwardersRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId", # required
      #         remote_domain_names: ["RemoteDomainName"],
      #       }
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
      class DescribeConditionalForwardersRequest < Struct.new(
        :directory_id,
        :remote_domain_names)
        include Aws::Structure
      end

      # The result of a DescribeConditionalForwarder request.
      # @!attribute [rw] conditional_forwarders
      #   The list of conditional forwarders that have been created.
      #   @return [Array<Types::ConditionalForwarder>]
      class DescribeConditionalForwardersResult < Struct.new(
        :conditional_forwarders)
        include Aws::Structure
      end

      # Contains the inputs for the DescribeDirectories operation.
      # @note When making an API call, pass DescribeDirectoriesRequest
      #   data as a hash:
      #
      #       {
      #         directory_ids: ["DirectoryId"],
      #         next_token: "NextToken",
      #         limit: 1,
      #       }
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
      #   The *DescribeDirectoriesResult.NextToken* value from a previous call
      #   to DescribeDirectories. Pass null if this is the first call.
      #   @return [String]
      #
      # @!attribute [rw] limit
      #   The maximum number of items to return. If this value is zero, the
      #   maximum number of items is specified by the limitations of the
      #   operation.
      #   @return [Integer]
      class DescribeDirectoriesRequest < Struct.new(
        :directory_ids,
        :next_token,
        :limit)
        include Aws::Structure
      end

      # Contains the results of the DescribeDirectories operation.
      # @!attribute [rw] directory_descriptions
      #   The list of DirectoryDescription objects that were retrieved.
      #
      #   It is possible that this list contains less than the number of items
      #   specified in the *Limit* member of the request. This occurs if there
      #   are less than the requested number of items left to retrieve, or if
      #   the limitations of the operation have been exceeded.
      #   @return [Array<Types::DirectoryDescription>]
      #
      # @!attribute [rw] next_token
      #   If not null, more results are available. Pass this value for the
      #   *NextToken* parameter in a subsequent call to DescribeDirectories to
      #   retrieve the next set of items.
      #   @return [String]
      class DescribeDirectoriesResult < Struct.new(
        :directory_descriptions,
        :next_token)
        include Aws::Structure
      end

      # Describes event topics.
      # @note When making an API call, pass DescribeEventTopicsRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId",
      #         topic_names: ["TopicName"],
      #       }
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
      class DescribeEventTopicsRequest < Struct.new(
        :directory_id,
        :topic_names)
        include Aws::Structure
      end

      # The result of a DescribeEventTopic request.
      # @!attribute [rw] event_topics
      #   A list of SNS topic names that receive status messages from the
      #   specified Directory ID.
      #   @return [Array<Types::EventTopic>]
      class DescribeEventTopicsResult < Struct.new(
        :event_topics)
        include Aws::Structure
      end

      # Contains the inputs for the DescribeSnapshots operation.
      # @note When making an API call, pass DescribeSnapshotsRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId",
      #         snapshot_ids: ["SnapshotId"],
      #         next_token: "NextToken",
      #         limit: 1,
      #       }
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
      class DescribeSnapshotsRequest < Struct.new(
        :directory_id,
        :snapshot_ids,
        :next_token,
        :limit)
        include Aws::Structure
      end

      # Contains the results of the DescribeSnapshots operation.
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
      class DescribeSnapshotsResult < Struct.new(
        :snapshots,
        :next_token)
        include Aws::Structure
      end

      # Describes the trust relationships for a particular Microsoft AD in the
      # AWS cloud. If no input parameters are are provided, such as directory
      # ID or trust ID, this request describes all the trust relationships.
      # @note When making an API call, pass DescribeTrustsRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId",
      #         trust_ids: ["TrustId"],
      #         next_token: "NextToken",
      #         limit: 1,
      #       }
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
      class DescribeTrustsRequest < Struct.new(
        :directory_id,
        :trust_ids,
        :next_token,
        :limit)
        include Aws::Structure
      end

      # The result of a DescribeTrust request.
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
      class DescribeTrustsResult < Struct.new(
        :trusts,
        :next_token)
        include Aws::Structure
      end

      # Contains information for the ConnectDirectory operation when an AD
      # Connector directory is being created.
      # @note When making an API call, pass DirectoryConnectSettings
      #   data as a hash:
      #
      #       {
      #         vpc_id: "VpcId", # required
      #         subnet_ids: ["SubnetId"], # required
      #         customer_dns_ips: ["IpAddr"], # required
      #         customer_user_name: "UserName", # required
      #       }
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
      #   The username of an account in the on-premises directory that is used
      #   to connect to the directory. This account must have the following
      #   privileges:
      #
      #   * Read users and groups
      #
      #   * Create computer objects
      #
      #   * Join computers to the domain
      #   @return [String]
      class DirectoryConnectSettings < Struct.new(
        :vpc_id,
        :subnet_ids,
        :customer_dns_ips,
        :customer_user_name)
        include Aws::Structure
      end

      # Contains information about an AD Connector directory.
      # @!attribute [rw] vpc_id
      #   The identifier of the VPC that the AD Connector is in.
      #   @return [String]
      #
      # @!attribute [rw] subnet_ids
      #   A list of subnet identifiers in the VPC that the AD connector is in.
      #   @return [Array<String>]
      #
      # @!attribute [rw] customer_user_name
      #   The username of the service account in the on-premises directory.
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
      class DirectoryConnectSettingsDescription < Struct.new(
        :vpc_id,
        :subnet_ids,
        :customer_user_name,
        :security_group_id,
        :availability_zones,
        :connect_ips)
        include Aws::Structure
      end

      # Contains information about an AWS Directory Service directory.
      # @!attribute [rw] directory_id
      #   The directory identifier.
      #   @return [String]
      #
      # @!attribute [rw] name
      #   The fully-qualified name of the directory.
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
      #   The textual description for the directory.
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
      #   Indicates if single-sign on is enabled for the directory. For more
      #   information, see EnableSso and DisableSso.
      #   @return [Boolean]
      class DirectoryDescription < Struct.new(
        :directory_id,
        :name,
        :short_name,
        :size,
        :alias,
        :access_url,
        :description,
        :dns_ip_addrs,
        :stage,
        :launch_time,
        :stage_last_updated_date_time,
        :type,
        :vpc_settings,
        :connect_settings,
        :radius_settings,
        :radius_status,
        :stage_reason,
        :sso_enabled)
        include Aws::Structure
      end

      # Contains directory limit information for a region.
      # @!attribute [rw] cloud_only_directories_limit
      #   The maximum number of cloud directories allowed in the region.
      #   @return [Integer]
      #
      # @!attribute [rw] cloud_only_directories_current_count
      #   The current number of cloud directories in the region.
      #   @return [Integer]
      #
      # @!attribute [rw] cloud_only_directories_limit_reached
      #   Indicates if the cloud directory limit has been reached.
      #   @return [Boolean]
      #
      # @!attribute [rw] cloud_only_microsoft_ad_limit
      #   The maximum number of Microsoft AD directories allowed in the
      #   region.
      #   @return [Integer]
      #
      # @!attribute [rw] cloud_only_microsoft_ad_current_count
      #   The current number of Microsoft AD directories in the region.
      #   @return [Integer]
      #
      # @!attribute [rw] cloud_only_microsoft_ad_limit_reached
      #   Indicates if the Microsoft AD directory limit has been reached.
      #   @return [Boolean]
      #
      # @!attribute [rw] connected_directories_limit
      #   The maximum number of connected directories allowed in the region.
      #   @return [Integer]
      #
      # @!attribute [rw] connected_directories_current_count
      #   The current number of connected directories in the region.
      #   @return [Integer]
      #
      # @!attribute [rw] connected_directories_limit_reached
      #   Indicates if the connected directory limit has been reached.
      #   @return [Boolean]
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
        include Aws::Structure
      end

      # Contains VPC information for the CreateDirectory or CreateMicrosoftAD
      # operation.
      # @note When making an API call, pass DirectoryVpcSettings
      #   data as a hash:
      #
      #       {
      #         vpc_id: "VpcId", # required
      #         subnet_ids: ["SubnetId"], # required
      #       }
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
      class DirectoryVpcSettings < Struct.new(
        :vpc_id,
        :subnet_ids)
        include Aws::Structure
      end

      # Contains information about the directory.
      # @!attribute [rw] vpc_id
      #   The identifier of the VPC that the directory is in.
      #   @return [String]
      #
      # @!attribute [rw] subnet_ids
      #   The identifiers of the subnets for the directory servers.
      #   @return [Array<String>]
      #
      # @!attribute [rw] security_group_id
      #   The security group identifier for the directory. If the directory
      #   was created before 8/1/2014, this is the identifier of the directory
      #   members security group that was created when the directory was
      #   created. If the directory was created after this date, this value is
      #   null.
      #   @return [String]
      #
      # @!attribute [rw] availability_zones
      #   The list of Availability Zones that the directory is in.
      #   @return [Array<String>]
      class DirectoryVpcSettingsDescription < Struct.new(
        :vpc_id,
        :subnet_ids,
        :security_group_id,
        :availability_zones)
        include Aws::Structure
      end

      # Contains the inputs for the DisableRadius operation.
      # @note When making an API call, pass DisableRadiusRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId", # required
      #       }
      # @!attribute [rw] directory_id
      #   The identifier of the directory for which to disable MFA.
      #   @return [String]
      class DisableRadiusRequest < Struct.new(
        :directory_id)
        include Aws::Structure
      end

      # Contains the results of the DisableRadius operation.
      class DisableRadiusResult < Aws::EmptyStructure; end

      # Contains the inputs for the DisableSso operation.
      # @note When making an API call, pass DisableSsoRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId", # required
      #         user_name: "UserName",
      #         password: "ConnectPassword",
      #       }
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
      class DisableSsoRequest < Struct.new(
        :directory_id,
        :user_name,
        :password)
        include Aws::Structure
      end

      # Contains the results of the DisableSso operation.
      class DisableSsoResult < Aws::EmptyStructure; end

      # Contains the inputs for the EnableRadius operation.
      # @note When making an API call, pass EnableRadiusRequest
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
      # @!attribute [rw] directory_id
      #   The identifier of the directory for which to enable MFA.
      #   @return [String]
      #
      # @!attribute [rw] radius_settings
      #   A RadiusSettings object that contains information about the RADIUS
      #   server.
      #   @return [Types::RadiusSettings]
      class EnableRadiusRequest < Struct.new(
        :directory_id,
        :radius_settings)
        include Aws::Structure
      end

      # Contains the results of the EnableRadius operation.
      class EnableRadiusResult < Aws::EmptyStructure; end

      # Contains the inputs for the EnableSso operation.
      # @note When making an API call, pass EnableSsoRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId", # required
      #         user_name: "UserName",
      #         password: "ConnectPassword",
      #       }
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
      class EnableSsoRequest < Struct.new(
        :directory_id,
        :user_name,
        :password)
        include Aws::Structure
      end

      # Contains the results of the EnableSso operation.
      class EnableSsoResult < Aws::EmptyStructure; end

      # Information about SNS topic and AWS Directory Service directory
      # associations.
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
      class EventTopic < Struct.new(
        :directory_id,
        :topic_name,
        :topic_arn,
        :created_date_time,
        :status)
        include Aws::Structure
      end

      # Contains the inputs for the GetDirectoryLimits operation.
      # @api private
      class GetDirectoryLimitsRequest < Aws::EmptyStructure; end

      # Contains the results of the GetDirectoryLimits operation.
      # @!attribute [rw] directory_limits
      #   A DirectoryLimits object that contains the directory limits for the
      #   current region.
      #   @return [Types::DirectoryLimits]
      class GetDirectoryLimitsResult < Struct.new(
        :directory_limits)
        include Aws::Structure
      end

      # Contains the inputs for the GetSnapshotLimits operation.
      # @note When making an API call, pass GetSnapshotLimitsRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId", # required
      #       }
      # @!attribute [rw] directory_id
      #   Contains the identifier of the directory to obtain the limits for.
      #   @return [String]
      class GetSnapshotLimitsRequest < Struct.new(
        :directory_id)
        include Aws::Structure
      end

      # Contains the results of the GetSnapshotLimits operation.
      # @!attribute [rw] snapshot_limits
      #   A SnapshotLimits object that contains the manual snapshot limits for
      #   the specified directory.
      #   @return [Types::SnapshotLimits]
      class GetSnapshotLimitsResult < Struct.new(
        :snapshot_limits)
        include Aws::Structure
      end

      # IP address block. This is often the address block of the DNS server
      # used for your on-premises domain.
      # @note When making an API call, pass IpRoute
      #   data as a hash:
      #
      #       {
      #         cidr_ip: "CidrIp",
      #         description: "Description",
      #       }
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
      class IpRoute < Struct.new(
        :cidr_ip,
        :description)
        include Aws::Structure
      end

      # Information about one or more IP address blocks.
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
      class IpRouteInfo < Struct.new(
        :directory_id,
        :cidr_ip,
        :ip_route_status_msg,
        :added_date_time,
        :ip_route_status_reason,
        :description)
        include Aws::Structure
      end

      # @note When making an API call, pass ListIpRoutesRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId", # required
      #         next_token: "NextToken",
      #         limit: 1,
      #       }
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
      class ListIpRoutesRequest < Struct.new(
        :directory_id,
        :next_token,
        :limit)
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
      class ListIpRoutesResult < Struct.new(
        :ip_routes_info,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass ListTagsForResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource_id: "ResourceId", # required
      #         next_token: "NextToken",
      #         limit: 1,
      #       }
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
      class ListTagsForResourceRequest < Struct.new(
        :resource_id,
        :next_token,
        :limit)
        include Aws::Structure
      end

      # @!attribute [rw] tags
      #   List of tags returned by the ListTagsForResource operation.
      #   @return [Array<Types::Tag>]
      #
      # @!attribute [rw] next_token
      #   Reserved for future use.
      #   @return [String]
      class ListTagsForResourceResult < Struct.new(
        :tags,
        :next_token)
        include Aws::Structure
      end

      # Contains information about a Remote Authentication Dial In User
      # Service (RADIUS) server.
      # @note When making an API call, pass RadiusSettings
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
      #   Not currently used.
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
      class RadiusSettings < Struct.new(
        :radius_servers,
        :radius_port,
        :radius_timeout,
        :radius_retries,
        :shared_secret,
        :authentication_protocol,
        :display_label,
        :use_same_username)
        include Aws::Structure
      end

      # Registers a new event topic.
      # @note When making an API call, pass RegisterEventTopicRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId", # required
      #         topic_name: "TopicName", # required
      #       }
      # @!attribute [rw] directory_id
      #   The Directory ID that will publish status messages to the SNS topic.
      #   @return [String]
      #
      # @!attribute [rw] topic_name
      #   The SNS topic name to which the directory will publish status
      #   messages. This SNS topic must be in the same region as the specified
      #   Directory ID.
      #   @return [String]
      class RegisterEventTopicRequest < Struct.new(
        :directory_id,
        :topic_name)
        include Aws::Structure
      end

      # The result of a RegisterEventTopic request.
      class RegisterEventTopicResult < Aws::EmptyStructure; end

      # @note When making an API call, pass RemoveIpRoutesRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId", # required
      #         cidr_ips: ["CidrIp"], # required
      #       }
      # @!attribute [rw] directory_id
      #   Identifier (ID) of the directory from which you want to remove the
      #   IP addresses.
      #   @return [String]
      #
      # @!attribute [rw] cidr_ips
      #   IP address blocks that you want to remove.
      #   @return [Array<String>]
      class RemoveIpRoutesRequest < Struct.new(
        :directory_id,
        :cidr_ips)
        include Aws::Structure
      end

      class RemoveIpRoutesResult < Aws::EmptyStructure; end

      # @note When making an API call, pass RemoveTagsFromResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource_id: "ResourceId", # required
      #         tag_keys: ["TagKey"], # required
      #       }
      # @!attribute [rw] resource_id
      #   Identifier (ID) of the directory from which to remove the tag.
      #   @return [String]
      #
      # @!attribute [rw] tag_keys
      #   The tag key (name) of the tag to be removed.
      #   @return [Array<String>]
      class RemoveTagsFromResourceRequest < Struct.new(
        :resource_id,
        :tag_keys)
        include Aws::Structure
      end

      class RemoveTagsFromResourceResult < Aws::EmptyStructure; end

      # An object representing the inputs for the RestoreFromSnapshot
      # operation.
      # @note When making an API call, pass RestoreFromSnapshotRequest
      #   data as a hash:
      #
      #       {
      #         snapshot_id: "SnapshotId", # required
      #       }
      # @!attribute [rw] snapshot_id
      #   The identifier of the snapshot to restore from.
      #   @return [String]
      class RestoreFromSnapshotRequest < Struct.new(
        :snapshot_id)
        include Aws::Structure
      end

      # Contains the results of the RestoreFromSnapshot operation.
      class RestoreFromSnapshotResult < Aws::EmptyStructure; end

      # Describes a directory snapshot.
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
      class Snapshot < Struct.new(
        :directory_id,
        :snapshot_id,
        :type,
        :name,
        :status,
        :start_time)
        include Aws::Structure
      end

      # Contains manual snapshot limit information for a directory.
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
      class SnapshotLimits < Struct.new(
        :manual_snapshots_limit,
        :manual_snapshots_current_count,
        :manual_snapshots_limit_reached)
        include Aws::Structure
      end

      # Metadata assigned to an Amazon Directory Services directory consisting
      # of a key-value pair.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue", # required
      #       }
      # @!attribute [rw] key
      #   Required name of the tag. The string value can be Unicode characters
      #   and cannot be prefixed with "aws:". The string can contain only
      #   the set of Unicode letters, digits, white-space, '\_', '.',
      #   '/', '=', '+', '-' (Java regex:
      #   "^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-\]\*)$").
      #   @return [String]
      #
      # @!attribute [rw] value
      #   The optional value of the tag. The string value can be Unicode
      #   characters. The string can contain only the set of Unicode letters,
      #   digits, white-space, '\_', '.', '/', '=', '+', '-' (Java
      #   regex:
      #   "^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-\]\*)$").
      #   @return [String]
      class Tag < Struct.new(
        :key,
        :value)
        include Aws::Structure
      end

      # Describes a trust relationship between an Microsoft AD in the AWS
      # cloud and an external domain.
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
      #   The trust relationship type.
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
        :trust_state_reason)
        include Aws::Structure
      end

      # Updates a conditional forwarder.
      # @note When making an API call, pass UpdateConditionalForwarderRequest
      #   data as a hash:
      #
      #       {
      #         directory_id: "DirectoryId", # required
      #         remote_domain_name: "RemoteDomainName", # required
      #         dns_ip_addrs: ["IpAddr"], # required
      #       }
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
      class UpdateConditionalForwarderRequest < Struct.new(
        :directory_id,
        :remote_domain_name,
        :dns_ip_addrs)
        include Aws::Structure
      end

      # The result of an UpdateConditionalForwarder request.
      class UpdateConditionalForwarderResult < Aws::EmptyStructure; end

      # Contains the inputs for the UpdateRadius operation.
      # @note When making an API call, pass UpdateRadiusRequest
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
      # @!attribute [rw] directory_id
      #   The identifier of the directory for which to update the RADIUS
      #   server information.
      #   @return [String]
      #
      # @!attribute [rw] radius_settings
      #   A RadiusSettings object that contains information about the RADIUS
      #   server.
      #   @return [Types::RadiusSettings]
      class UpdateRadiusRequest < Struct.new(
        :directory_id,
        :radius_settings)
        include Aws::Structure
      end

      # Contains the results of the UpdateRadius operation.
      class UpdateRadiusResult < Aws::EmptyStructure; end

      # Initiates the verification of an existing trust relationship between a
      # Microsoft AD in the AWS cloud and an external domain.
      # @note When making an API call, pass VerifyTrustRequest
      #   data as a hash:
      #
      #       {
      #         trust_id: "TrustId", # required
      #       }
      # @!attribute [rw] trust_id
      #   The unique Trust ID of the trust relationship to verify.
      #   @return [String]
      class VerifyTrustRequest < Struct.new(
        :trust_id)
        include Aws::Structure
      end

      # Result of a VerifyTrust request.
      # @!attribute [rw] trust_id
      #   The unique Trust ID of the trust relationship that was verified.
      #   @return [String]
      class VerifyTrustResult < Struct.new(
        :trust_id)
        include Aws::Structure
      end

    end
  end
end
