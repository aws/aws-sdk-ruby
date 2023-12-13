# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DataSync
  module Types

    # @!attribute [rw] server_configuration
    #   Specifies the server name and network port required to connect with
    #   the management interface of your on-premises storage system.
    #   @return [Types::DiscoveryServerConfiguration]
    #
    # @!attribute [rw] system_type
    #   Specifies the type of on-premises storage system that you want
    #   DataSync Discovery to collect information about.
    #
    #   <note markdown="1"> DataSync Discovery currently supports NetApp Fabric-Attached Storage
    #   (FAS) and All Flash FAS (AFF) systems running ONTAP 9.7 or later.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   Specifies the Amazon Resource Name (ARN) of the DataSync agent that
    #   connects to and reads from your on-premises storage system's
    #   management interface. You can only specify one ARN.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cloud_watch_log_group_arn
    #   Specifies the ARN of the Amazon CloudWatch log group for monitoring
    #   and logging discovery job events.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies labels that help you categorize, filter, and search for
    #   your Amazon Web Services resources. We recommend creating at least a
    #   name tag for your on-premises storage system.
    #   @return [Array<Types::TagListEntry>]
    #
    # @!attribute [rw] name
    #   Specifies a familiar name for your on-premises storage system.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a client token to make sure requests with this API
    #   operation are idempotent. If you don't specify a client token,
    #   DataSync generates one for you automatically.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   Specifies the user name and password for accessing your on-premises
    #   storage system's management interface.
    #   @return [Types::Credentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/AddStorageSystemRequest AWS API Documentation
    #
    class AddStorageSystemRequest < Struct.new(
      :server_configuration,
      :system_type,
      :agent_arns,
      :cloud_watch_log_group_arn,
      :tags,
      :name,
      :client_token,
      :credentials)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_system_arn
    #   The ARN of the on-premises storage system that you can use with
    #   DataSync Discovery.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/AddStorageSystemResponse AWS API Documentation
    #
    class AddStorageSystemResponse < Struct.new(
      :storage_system_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single entry in a list (or array) of DataSync agents when
    # you call the [ListAgents][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_ListAgents.html
    #
    # @!attribute [rw] agent_arn
    #   The Amazon Resource Name (ARN) of a DataSync agent.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of an agent.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of an agent.
    #
    #   * If the status is `ONLINE`, the agent is configured properly and
    #     ready to use.
    #
    #   * If the status is `OFFLINE`, the agent has been out of contact with
    #     DataSync for five minutes or longer. This can happen for a few
    #     reasons. For more information, see [What do I do if my agent is
    #     offline?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/troubleshooting-datasync-agents.html#troubleshoot-agent-offline
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform-related details about the agent, such as the version
    #   number.
    #   @return [Types::Platform]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/AgentListEntry AWS API Documentation
    #
    class AgentListEntry < Struct.new(
      :agent_arn,
      :name,
      :status,
      :platform)
      SENSITIVE = []
      include Aws::Structure
    end

    # The shared access signature (SAS) configuration that allows DataSync
    # to access your Microsoft Azure Blob Storage.
    #
    # For more information, see [SAS tokens][1] for accessing your Azure
    # Blob Storage.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-sas-tokens
    #
    # @!attribute [rw] token
    #   Specifies a SAS token that provides permissions to access your Azure
    #   Blob Storage.
    #
    #   The token is part of the SAS URI string that comes after the storage
    #   resource URI and a question mark. A token looks something like this:
    #
    #   `sp=r&st=2023-12-20T14:54:52Z&se=2023-12-20T22:54:52Z&spr=https&sv=2021-06-08&sr=c&sig=aBBKDWQvyuVcTPH9EBp%2FXTI9E%2F%2Fmq171%2BZU178wcwqU%3D`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/AzureBlobSasConfiguration AWS API Documentation
    #
    class AzureBlobSasConfiguration < Struct.new(
      :token)
      SENSITIVE = [:token]
      include Aws::Structure
    end

    # CancelTaskExecutionRequest
    #
    # @!attribute [rw] task_execution_arn
    #   The Amazon Resource Name (ARN) of the task execution to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CancelTaskExecutionRequest AWS API Documentation
    #
    class CancelTaskExecutionRequest < Struct.new(
      :task_execution_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CancelTaskExecutionResponse AWS API Documentation
    #
    class CancelTaskExecutionResponse < Aws::EmptyStructure; end

    # The storage capacity of an on-premises storage system resource (for
    # example, a volume).
    #
    # @!attribute [rw] used
    #   The amount of space that's being used in a storage system resource.
    #   @return [Integer]
    #
    # @!attribute [rw] provisioned
    #   The total amount of space available in a storage system resource.
    #   @return [Integer]
    #
    # @!attribute [rw] logical_used
    #   The amount of space that's being used in a storage system resource
    #   without accounting for compression or deduplication.
    #   @return [Integer]
    #
    # @!attribute [rw] cluster_cloud_storage_used
    #   The amount of space in the cluster that's in cloud storage (for
    #   example, if you're using data tiering).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/Capacity AWS API Documentation
    #
    class Capacity < Struct.new(
      :used,
      :provisioned,
      :logical_used,
      :cluster_cloud_storage_used)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateAgentRequest
    #
    # @!attribute [rw] activation_key
    #   Specifies your DataSync agent's activation key. If you don't have
    #   an activation key, see [Activate your agent][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/activate-agent.html
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   Specifies a name for your agent. You can see this name in the
    #   DataSync console.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies labels that help you categorize, filter, and search for
    #   your Amazon Web Services resources. We recommend creating at least
    #   one tag for your agent.
    #   @return [Array<Types::TagListEntry>]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   Specifies the ID of the VPC endpoint that you want your agent to
    #   connect to. For example, a VPC endpoint ID looks like
    #   `vpce-01234d5aff67890e1`.
    #
    #   The VPC endpoint you use must include the DataSync service name (for
    #   example, `com.amazonaws.us-east-2.datasync`).
    #   @return [String]
    #
    # @!attribute [rw] subnet_arns
    #   Specifies the ARN of the subnet where you want to run your DataSync
    #   task when using a VPC endpoint. This is the subnet where DataSync
    #   creates and manages the [network interfaces][1] for your transfer.
    #   You can only specify one ARN.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/datasync-network.html#required-network-interfaces
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_arns
    #   Specifies the Amazon Resource Name (ARN) of the security group that
    #   protects your task's [network interfaces][1] when [using a virtual
    #   private cloud (VPC) endpoint][2]. You can only specify one ARN.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/datasync-network.html#required-network-interfaces
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/choose-service-endpoint.html#choose-service-endpoint-vpc
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateAgentRequest AWS API Documentation
    #
    class CreateAgentRequest < Struct.new(
      :activation_key,
      :agent_name,
      :tags,
      :vpc_endpoint_id,
      :subnet_arns,
      :security_group_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateAgentResponse
    #
    # @!attribute [rw] agent_arn
    #   The ARN of the agent that you just activated. Use the
    #   [ListAgents][1] operation to return a list of agents in your Amazon
    #   Web Services account and Amazon Web Services Region.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_ListAgents.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateAgentResponse AWS API Documentation
    #
    class CreateAgentResponse < Struct.new(
      :agent_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_url
    #   Specifies the URL of the Azure Blob Storage container involved in
    #   your transfer.
    #   @return [String]
    #
    # @!attribute [rw] authentication_type
    #   Specifies the authentication method DataSync uses to access your
    #   Azure Blob Storage. DataSync can access blob storage using a shared
    #   access signature (SAS).
    #   @return [String]
    #
    # @!attribute [rw] sas_configuration
    #   Specifies the SAS configuration that allows DataSync to access your
    #   Azure Blob Storage.
    #   @return [Types::AzureBlobSasConfiguration]
    #
    # @!attribute [rw] blob_type
    #   Specifies the type of blob that you want your objects or files to be
    #   when transferring them into Azure Blob Storage. Currently, DataSync
    #   only supports moving data into Azure Blob Storage as block blobs.
    #   For more information on blob types, see the [Azure Blob Storage
    #   documentation][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/rest/api/storageservices/understanding-block-blobs--append-blobs--and-page-blobs
    #   @return [String]
    #
    # @!attribute [rw] access_tier
    #   Specifies the access tier that you want your objects or files
    #   transferred into. This only applies when using the location as a
    #   transfer destination. For more information, see [Access tiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access-tiers
    #   @return [String]
    #
    # @!attribute [rw] subdirectory
    #   Specifies path segments if you want to limit your transfer to a
    #   virtual directory in your container (for example, `/my/images`).
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   Specifies the Amazon Resource Name (ARN) of the DataSync agent that
    #   can connect with your Azure Blob Storage container.
    #
    #   You can specify more than one agent. For more information, see
    #   [Using multiple agents for your transfer][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/multiple-agents.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Specifies labels that help you categorize, filter, and search for
    #   your Amazon Web Services resources. We recommend creating at least a
    #   name tag for your transfer location.
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationAzureBlobRequest AWS API Documentation
    #
    class CreateLocationAzureBlobRequest < Struct.new(
      :container_url,
      :authentication_type,
      :sas_configuration,
      :blob_type,
      :access_tier,
      :subdirectory,
      :agent_arns,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location_arn
    #   The ARN of the Azure Blob Storage transfer location that you
    #   created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationAzureBlobResponse AWS API Documentation
    #
    class CreateLocationAzureBlobResponse < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateLocationEfsRequest
    #
    # @!attribute [rw] subdirectory
    #   Specifies a mount path for your Amazon EFS file system. This is
    #   where DataSync reads or writes data (depending on if this is a
    #   source or destination location). By default, DataSync uses the root
    #   directory, but you can also include subdirectories.
    #
    #   <note markdown="1"> You must specify a value with forward slashes (for example,
    #   `/path/to/folder`).
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] efs_filesystem_arn
    #   Specifies the ARN for the Amazon EFS file system.
    #   @return [String]
    #
    # @!attribute [rw] ec2_config
    #   Specifies the subnet and security groups DataSync uses to access
    #   your Amazon EFS file system.
    #   @return [Types::Ec2Config]
    #
    # @!attribute [rw] tags
    #   Specifies the key-value pair that represents a tag that you want to
    #   add to the resource. The value can be an empty string. This value
    #   helps you manage, filter, and search for your resources. We
    #   recommend that you create a name tag for your location.
    #   @return [Array<Types::TagListEntry>]
    #
    # @!attribute [rw] access_point_arn
    #   Specifies the Amazon Resource Name (ARN) of the access point that
    #   DataSync uses to access the Amazon EFS file system.
    #   @return [String]
    #
    # @!attribute [rw] file_system_access_role_arn
    #   Specifies an Identity and Access Management (IAM) role that DataSync
    #   assumes when mounting the Amazon EFS file system.
    #   @return [String]
    #
    # @!attribute [rw] in_transit_encryption
    #   Specifies whether you want DataSync to use Transport Layer Security
    #   (TLS) 1.2 encryption when it copies data to or from the Amazon EFS
    #   file system.
    #
    #   If you specify an access point using `AccessPointArn` or an IAM role
    #   using `FileSystemAccessRoleArn`, you must set this parameter to
    #   `TLS1_2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationEfsRequest AWS API Documentation
    #
    class CreateLocationEfsRequest < Struct.new(
      :subdirectory,
      :efs_filesystem_arn,
      :ec2_config,
      :tags,
      :access_point_arn,
      :file_system_access_role_arn,
      :in_transit_encryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateLocationEfs
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the Amazon EFS file system
    #   location that you create.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationEfsResponse AWS API Documentation
    #
    class CreateLocationEfsResponse < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fsx_filesystem_arn
    #   The Amazon Resource Name (ARN) for the FSx for Lustre file system.
    #   @return [String]
    #
    # @!attribute [rw] security_group_arns
    #   The Amazon Resource Names (ARNs) of the security groups that are
    #   used to configure the FSx for Lustre file system.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subdirectory
    #   A subdirectory in the location's path. This subdirectory in the FSx
    #   for Lustre file system is used to read data from the FSx for Lustre
    #   source location or write data to the FSx for Lustre destination.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents a tag that you want to add to the
    #   resource. The value can be an empty string. This value helps you
    #   manage, filter, and search for your resources. We recommend that you
    #   create a name tag for your location.
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationFsxLustreRequest AWS API Documentation
    #
    class CreateLocationFsxLustreRequest < Struct.new(
      :fsx_filesystem_arn,
      :security_group_arns,
      :subdirectory,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the FSx for Lustre file system
    #   location that's created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationFsxLustreResponse AWS API Documentation
    #
    class CreateLocationFsxLustreResponse < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protocol
    #   Specifies the data transfer protocol that DataSync uses to access
    #   your Amazon FSx file system.
    #   @return [Types::FsxProtocol]
    #
    # @!attribute [rw] security_group_arns
    #   Specifies the Amazon EC2 security groups that provide access to your
    #   file system's preferred subnet.
    #
    #   The security groups must allow outbound traffic on the following
    #   ports (depending on the protocol you use):
    #
    #   * **Network File System (NFS)**: TCP ports 111, 635, and 2049
    #
    #   * **Server Message Block (SMB)**: TCP port 445
    #
    #   Your file system's security groups must also allow inbound traffic
    #   on the same ports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] storage_virtual_machine_arn
    #   Specifies the ARN of the storage virtual machine (SVM) in your file
    #   system where you want to copy data to or from.
    #   @return [String]
    #
    # @!attribute [rw] subdirectory
    #   Specifies a path to the file share in the SVM where you'll copy
    #   your data.
    #
    #   You can specify a junction path (also known as a mount point), qtree
    #   path (for NFS file shares), or share name (for SMB file shares). For
    #   example, your mount path might be `/vol1`, `/vol1/tree1`, or
    #   `/share1`.
    #
    #   <note markdown="1"> Don't specify a junction path in the SVM's root volume. For more
    #   information, see [Managing FSx for ONTAP storage virtual
    #   machines][1] in the *Amazon FSx for NetApp ONTAP User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies labels that help you categorize, filter, and search for
    #   your Amazon Web Services resources. We recommend creating at least a
    #   name tag for your location.
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationFsxOntapRequest AWS API Documentation
    #
    class CreateLocationFsxOntapRequest < Struct.new(
      :protocol,
      :security_group_arns,
      :storage_virtual_machine_arn,
      :subdirectory,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location_arn
    #   Specifies the ARN of the FSx for ONTAP file system location that you
    #   create.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationFsxOntapResponse AWS API Documentation
    #
    class CreateLocationFsxOntapResponse < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fsx_filesystem_arn
    #   The Amazon Resource Name (ARN) of the FSx for OpenZFS file system.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The type of protocol that DataSync uses to access your file system.
    #   @return [Types::FsxProtocol]
    #
    # @!attribute [rw] security_group_arns
    #   The ARNs of the security groups that are used to configure the FSx
    #   for OpenZFS file system.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subdirectory
    #   A subdirectory in the location's path that must begin with `/fsx`.
    #   DataSync uses this subdirectory to read or write data (depending on
    #   whether the file system is a source or destination location).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents a tag that you want to add to the
    #   resource. The value can be an empty string. This value helps you
    #   manage, filter, and search for your resources. We recommend that you
    #   create a name tag for your location.
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationFsxOpenZfsRequest AWS API Documentation
    #
    class CreateLocationFsxOpenZfsRequest < Struct.new(
      :fsx_filesystem_arn,
      :protocol,
      :security_group_arns,
      :subdirectory,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location_arn
    #   The ARN of the FSx for OpenZFS file system location that you
    #   created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationFsxOpenZfsResponse AWS API Documentation
    #
    class CreateLocationFsxOpenZfsResponse < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subdirectory
    #   Specifies a mount path for your file system using forward slashes.
    #   This is where DataSync reads or writes data (depending on if this is
    #   a source or destination location).
    #   @return [String]
    #
    # @!attribute [rw] fsx_filesystem_arn
    #   Specifies the Amazon Resource Name (ARN) for the FSx for Windows
    #   File Server file system.
    #   @return [String]
    #
    # @!attribute [rw] security_group_arns
    #   Specifies the ARNs of the security groups that provide access to
    #   your file system's preferred subnet.
    #
    #   <note markdown="1"> If you choose a security group that doesn't allow connections from
    #   within itself, do one of the following:
    #
    #    * Configure the security group to allow it to communicate within
    #     itself.
    #
    #   * Choose a different security group that can communicate with the
    #     mount target's security group.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Specifies labels that help you categorize, filter, and search for
    #   your Amazon Web Services resources. We recommend creating at least a
    #   name tag for your location.
    #   @return [Array<Types::TagListEntry>]
    #
    # @!attribute [rw] user
    #   Specifies the user who has the permissions to access files, folders,
    #   and metadata in your file system.
    #
    #   For information about choosing a user with the right level of access
    #   for your transfer, see [required permissions][1] for FSx for Windows
    #   File Server locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html#create-fsx-windows-location-permissions
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   Specifies the name of the Windows domain that the FSx for Windows
    #   File Server belongs to.
    #
    #   If you have multiple domains in your environment, configuring this
    #   parameter makes sure that DataSync connects to the right file
    #   server.
    #
    #   For more information, see [required permissions][1] for FSx for
    #   Windows File Server locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html#create-fsx-windows-location-permissions
    #   @return [String]
    #
    # @!attribute [rw] password
    #   Specifies the password of the user who has the permissions to access
    #   files and folders in the file system.
    #
    #   For more information, see [required permissions][1] for FSx for
    #   Windows File Server locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html#create-fsx-windows-location-permissions
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationFsxWindowsRequest AWS API Documentation
    #
    class CreateLocationFsxWindowsRequest < Struct.new(
      :subdirectory,
      :fsx_filesystem_arn,
      :security_group_arns,
      :tags,
      :user,
      :domain,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # @!attribute [rw] location_arn
    #   The ARN of the FSx for Windows File Server file system location you
    #   created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationFsxWindowsResponse AWS API Documentation
    #
    class CreateLocationFsxWindowsResponse < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subdirectory
    #   A subdirectory in the HDFS cluster. This subdirectory is used to
    #   read data from or write data to the HDFS cluster. If the
    #   subdirectory isn't specified, it will default to `/`.
    #   @return [String]
    #
    # @!attribute [rw] name_nodes
    #   The NameNode that manages the HDFS namespace. The NameNode performs
    #   operations such as opening, closing, and renaming files and
    #   directories. The NameNode contains the information to map blocks of
    #   data to the DataNodes. You can use only one NameNode.
    #   @return [Array<Types::HdfsNameNode>]
    #
    # @!attribute [rw] block_size
    #   The size of data blocks to write into the HDFS cluster. The block
    #   size must be a multiple of 512 bytes. The default block size is 128
    #   mebibytes (MiB).
    #   @return [Integer]
    #
    # @!attribute [rw] replication_factor
    #   The number of DataNodes to replicate the data to when writing to the
    #   HDFS cluster. By default, data is replicated to three DataNodes.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_provider_uri
    #   The URI of the HDFS cluster's Key Management Server (KMS).
    #   @return [String]
    #
    # @!attribute [rw] qop_configuration
    #   The Quality of Protection (QOP) configuration specifies the Remote
    #   Procedure Call (RPC) and data transfer protection settings
    #   configured on the Hadoop Distributed File System (HDFS) cluster. If
    #   `QopConfiguration` isn't specified, `RpcProtection` and
    #   `DataTransferProtection` default to `PRIVACY`. If you set
    #   `RpcProtection` or `DataTransferProtection`, the other parameter
    #   assumes the same value.
    #   @return [Types::QopConfiguration]
    #
    # @!attribute [rw] authentication_type
    #   The type of authentication used to determine the identity of the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] simple_user
    #   The user name used to identify the client on the host operating
    #   system.
    #
    #   <note markdown="1"> If `SIMPLE` is specified for `AuthenticationType`, this parameter is
    #   required.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] kerberos_principal
    #   The Kerberos principal with access to the files and folders on the
    #   HDFS cluster.
    #
    #   <note markdown="1"> If `KERBEROS` is specified for `AuthenticationType`, this parameter
    #   is required.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] kerberos_keytab
    #   The Kerberos key table (keytab) that contains mappings between the
    #   defined Kerberos principal and the encrypted keys. You can load the
    #   keytab from a file by providing the file's address. If you're
    #   using the CLI, it performs base64 encoding for you. Otherwise,
    #   provide the base64-encoded text.
    #
    #   <note markdown="1"> If `KERBEROS` is specified for `AuthenticationType`, this parameter
    #   is required.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] kerberos_krb_5_conf
    #   The `krb5.conf` file that contains the Kerberos configuration
    #   information. You can load the `krb5.conf` file by providing the
    #   file's address. If you're using the CLI, it performs the base64
    #   encoding for you. Otherwise, provide the base64-encoded text.
    #
    #   <note markdown="1"> If `KERBEROS` is specified for `AuthenticationType`, this parameter
    #   is required.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   The Amazon Resource Names (ARNs) of the agents that are used to
    #   connect to the HDFS cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents the tag that you want to add to
    #   the location. The value can be an empty string. We recommend using
    #   tags to name your resources.
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationHdfsRequest AWS API Documentation
    #
    class CreateLocationHdfsRequest < Struct.new(
      :subdirectory,
      :name_nodes,
      :block_size,
      :replication_factor,
      :kms_key_provider_uri,
      :qop_configuration,
      :authentication_type,
      :simple_user,
      :kerberos_principal,
      :kerberos_keytab,
      :kerberos_krb_5_conf,
      :agent_arns,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location_arn
    #   The ARN of the source HDFS cluster location that's created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationHdfsResponse AWS API Documentation
    #
    class CreateLocationHdfsResponse < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateLocationNfsRequest
    #
    # @!attribute [rw] subdirectory
    #   Specifies the export path in your NFS file server that you want
    #   DataSync to mount.
    #
    #   This path (or a subdirectory of the path) is where DataSync
    #   transfers data to or from. For information on configuring an export
    #   for DataSync, see [Accessing NFS file servers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#accessing-nfs
    #   @return [String]
    #
    # @!attribute [rw] server_hostname
    #   Specifies the Domain Name System (DNS) name or IP version 4 address
    #   of the NFS file server that your DataSync agent connects to.
    #   @return [String]
    #
    # @!attribute [rw] on_prem_config
    #   Specifies the Amazon Resource Name (ARN) of the DataSync agent that
    #   want to connect to your NFS file server.
    #
    #   You can specify more than one agent. For more information, see
    #   [Using multiple agents for transfers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/multiple-agents.html
    #   @return [Types::OnPremConfig]
    #
    # @!attribute [rw] mount_options
    #   Specifies the options that DataSync can use to mount your NFS file
    #   server.
    #   @return [Types::NfsMountOptions]
    #
    # @!attribute [rw] tags
    #   Specifies labels that help you categorize, filter, and search for
    #   your Amazon Web Services resources. We recommend creating at least a
    #   name tag for your location.
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationNfsRequest AWS API Documentation
    #
    class CreateLocationNfsRequest < Struct.new(
      :subdirectory,
      :server_hostname,
      :on_prem_config,
      :mount_options,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateLocationNfsResponse
    #
    # @!attribute [rw] location_arn
    #   The ARN of the transfer location that you created for your NFS file
    #   server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationNfsResponse AWS API Documentation
    #
    class CreateLocationNfsResponse < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateLocationObjectStorageRequest
    #
    # @!attribute [rw] server_hostname
    #   Specifies the domain name or IP address of the object storage
    #   server. A DataSync agent uses this hostname to mount the object
    #   storage server in a network.
    #   @return [String]
    #
    # @!attribute [rw] server_port
    #   Specifies the port that your object storage server accepts inbound
    #   network traffic on (for example, port 443).
    #   @return [Integer]
    #
    # @!attribute [rw] server_protocol
    #   Specifies the protocol that your object storage server uses to
    #   communicate.
    #   @return [String]
    #
    # @!attribute [rw] subdirectory
    #   Specifies the object prefix for your object storage server. If this
    #   is a source location, DataSync only copies objects with this prefix.
    #   If this is a destination location, DataSync writes all objects with
    #   this prefix.
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   Specifies the name of the object storage bucket involved in the
    #   transfer.
    #   @return [String]
    #
    # @!attribute [rw] access_key
    #   Specifies the access key (for example, a user name) if credentials
    #   are required to authenticate with the object storage server.
    #   @return [String]
    #
    # @!attribute [rw] secret_key
    #   Specifies the secret key (for example, a password) if credentials
    #   are required to authenticate with the object storage server.
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   Specifies the Amazon Resource Names (ARNs) of the DataSync agents
    #   that can securely connect with your location.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Specifies the key-value pair that represents a tag that you want to
    #   add to the resource. Tags can help you manage, filter, and search
    #   for your resources. We recommend creating a name tag for your
    #   location.
    #   @return [Array<Types::TagListEntry>]
    #
    # @!attribute [rw] server_certificate
    #   Specifies a file with the certificates that are used to sign the
    #   object storage server's certificate (for example,
    #   `file:///home/user/.ssh/storage_sys_certificate.pem`). The file you
    #   specify must include the following:
    #
    #   * The certificate of the signing certificate authority (CA)
    #
    #   * Any intermediate certificates
    #
    #   * base64 encoding
    #
    #   * A `.pem` extension
    #
    #   The file can be up to 32768 bytes (before base64 encoding).
    #
    #   To use this parameter, configure `ServerProtocol` to `HTTPS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationObjectStorageRequest AWS API Documentation
    #
    class CreateLocationObjectStorageRequest < Struct.new(
      :server_hostname,
      :server_port,
      :server_protocol,
      :subdirectory,
      :bucket_name,
      :access_key,
      :secret_key,
      :agent_arns,
      :tags,
      :server_certificate)
      SENSITIVE = [:secret_key]
      include Aws::Structure
    end

    # CreateLocationObjectStorageResponse
    #
    # @!attribute [rw] location_arn
    #   Specifies the ARN of the object storage system location that you
    #   create.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationObjectStorageResponse AWS API Documentation
    #
    class CreateLocationObjectStorageResponse < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateLocationS3Request
    #
    # @!attribute [rw] subdirectory
    #   A subdirectory in the Amazon S3 bucket. This subdirectory in Amazon
    #   S3 is used to read data from the S3 source location or write data to
    #   the S3 destination.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_arn
    #   The ARN of the Amazon S3 bucket. If the bucket is on an Amazon Web
    #   Services Outpost, this must be an access point ARN.
    #   @return [String]
    #
    # @!attribute [rw] s3_storage_class
    #   The Amazon S3 storage class that you want to store your files in
    #   when this location is used as a task destination. For buckets in
    #   Amazon Web Services Regions, the storage class defaults to Standard.
    #   For buckets on Outposts, the storage class defaults to Amazon Web
    #   Services S3 Outposts.
    #
    #   For more information about S3 storage classes, see [Amazon S3
    #   Storage Classes][1]. Some storage classes have behaviors that can
    #   affect your S3 storage cost. For detailed information, see
    #   [Considerations when working with S3 storage classes in
    #   DataSync][2].
    #
    #
    #
    #   [1]: http://aws.amazon.com/s3/storage-classes/
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes
    #   @return [String]
    #
    # @!attribute [rw] s3_config
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role used to access an Amazon S3 bucket.
    #
    #   For detailed information about using such a role, see Creating a
    #   Location for Amazon S3 in the *DataSync User Guide*.
    #   @return [Types::S3Config]
    #
    # @!attribute [rw] agent_arns
    #   If you're using DataSync on an Amazon Web Services Outpost, specify
    #   the Amazon Resource Names (ARNs) of the DataSync agents deployed on
    #   your Outpost. For more information about launching a DataSync agent
    #   on an Amazon Web Services Outpost, see [Deploy your DataSync agent
    #   on Outposts][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/deploy-agents.html#outposts-agent
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents the tag that you want to add to
    #   the location. The value can be an empty string. We recommend using
    #   tags to name your resources.
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationS3Request AWS API Documentation
    #
    class CreateLocationS3Request < Struct.new(
      :subdirectory,
      :s3_bucket_arn,
      :s3_storage_class,
      :s3_config,
      :agent_arns,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateLocationS3Response
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the source Amazon S3 bucket
    #   location that is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationS3Response AWS API Documentation
    #
    class CreateLocationS3Response < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateLocationSmbRequest
    #
    # @!attribute [rw] subdirectory
    #   Specifies the name of the share exported by your SMB file server
    #   where DataSync will read or write data. You can include a
    #   subdirectory in the share path (for example,
    #   `/path/to/subdirectory`). Make sure that other SMB clients in your
    #   network can also mount this path.
    #
    #   To copy all data in the specified subdirectory, DataSync must be
    #   able to mount the SMB share and access all of its data. For more
    #   information, see [required permissions][1] for SMB locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #   @return [String]
    #
    # @!attribute [rw] server_hostname
    #   Specifies the Domain Name Service (DNS) name or IP address of the
    #   SMB file server that your DataSync agent will mount.
    #
    #   <note markdown="1"> You can't specify an IP version 6 (IPv6) address.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] user
    #   Specifies the user name that can mount your SMB file server and has
    #   permission to access the files and folders involved in your
    #   transfer.
    #
    #   For information about choosing a user with the right level of access
    #   for your transfer, see [required permissions][1] for SMB locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   Specifies the Windows domain name that your SMB file server belongs
    #   to.
    #
    #   If you have multiple domains in your environment, configuring this
    #   parameter makes sure that DataSync connects to the right file
    #   server.
    #
    #   For more information, see [required permissions][1] for SMB
    #   locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #   @return [String]
    #
    # @!attribute [rw] password
    #   Specifies the password of the user who can mount your SMB file
    #   server and has permission to access the files and folders involved
    #   in your transfer.
    #
    #   For more information, see [required permissions][1] for SMB
    #   locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   Specifies the DataSync agent (or agents) which you want to connect
    #   to your SMB file server. You specify an agent by using its Amazon
    #   Resource Name (ARN).
    #   @return [Array<String>]
    #
    # @!attribute [rw] mount_options
    #   Specifies the version of the SMB protocol that DataSync uses to
    #   access your SMB file server.
    #   @return [Types::SmbMountOptions]
    #
    # @!attribute [rw] tags
    #   Specifies labels that help you categorize, filter, and search for
    #   your Amazon Web Services resources. We recommend creating at least a
    #   name tag for your location.
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationSmbRequest AWS API Documentation
    #
    class CreateLocationSmbRequest < Struct.new(
      :subdirectory,
      :server_hostname,
      :user,
      :domain,
      :password,
      :agent_arns,
      :mount_options,
      :tags)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # CreateLocationSmbResponse
    #
    # @!attribute [rw] location_arn
    #   The ARN of the SMB location that you created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationSmbResponse AWS API Documentation
    #
    class CreateLocationSmbResponse < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateTaskRequest
    #
    # @!attribute [rw] source_location_arn
    #   The Amazon Resource Name (ARN) of the source location for the task.
    #   @return [String]
    #
    # @!attribute [rw] destination_location_arn
    #   The Amazon Resource Name (ARN) of an Amazon Web Services storage
    #   resource's location.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_log_group_arn
    #   The Amazon Resource Name (ARN) of the Amazon CloudWatch log group
    #   that is used to monitor and log events in the task.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a task. This value is a text reference that is used to
    #   identify the task in the console.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   Specifies the configuration options for a task. Some options include
    #   preserving file or object metadata and verifying data integrity.
    #
    #   You can also override these options before starting an individual
    #   run of a task (also known as a *task execution*). For more
    #   information, see [StartTaskExecution][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html
    #   @return [Types::Options]
    #
    # @!attribute [rw] excludes
    #   Specifies a list of filter rules that exclude specific data during
    #   your transfer. For more information and examples, see [Filtering
    #   data transferred by DataSync][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] schedule
    #   Specifies a schedule used to periodically transfer files from a
    #   source to a destination location. The schedule should be specified
    #   in UTC time. For more information, see [Scheduling your task][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html
    #   @return [Types::TaskSchedule]
    #
    # @!attribute [rw] tags
    #   Specifies the tags that you want to apply to the Amazon Resource
    #   Name (ARN) representing the task.
    #
    #   *Tags* are key-value pairs that help you manage, filter, and search
    #   for your DataSync resources.
    #   @return [Array<Types::TagListEntry>]
    #
    # @!attribute [rw] includes
    #   Specifies a list of filter rules that include specific data during
    #   your transfer. For more information and examples, see [Filtering
    #   data transferred by DataSync][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] task_report_config
    #   Specifies how you want to configure a task report, which provides
    #   detailed information about for your DataSync transfer.
    #   @return [Types::TaskReportConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateTaskRequest AWS API Documentation
    #
    class CreateTaskRequest < Struct.new(
      :source_location_arn,
      :destination_location_arn,
      :cloud_watch_log_group_arn,
      :name,
      :options,
      :excludes,
      :schedule,
      :tags,
      :includes,
      :task_report_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateTaskResponse
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateTaskResponse AWS API Documentation
    #
    class CreateTaskResponse < Struct.new(
      :task_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The credentials that provide DataSync Discovery read access to your
    # on-premises storage system's management interface.
    #
    # DataSync Discovery stores these credentials in [Secrets Manager][1].
    # For more information, see [Accessing your on-premises storage
    # system][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html
    # [2]: https://docs.aws.amazon.com/datasync/latest/userguide/discovery-configure-storage.html
    #
    # @!attribute [rw] username
    #   Specifies the user name for your storage system's management
    #   interface.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   Specifies the password for your storage system's management
    #   interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/Credentials AWS API Documentation
    #
    class Credentials < Struct.new(
      :username,
      :password)
      SENSITIVE = [:username, :password]
      include Aws::Structure
    end

    # DeleteAgentRequest
    #
    # @!attribute [rw] agent_arn
    #   The Amazon Resource Name (ARN) of the agent to delete. Use the
    #   `ListAgents` operation to return a list of agents for your account
    #   and Amazon Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteAgentRequest AWS API Documentation
    #
    class DeleteAgentRequest < Struct.new(
      :agent_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteAgentResponse AWS API Documentation
    #
    class DeleteAgentResponse < Aws::EmptyStructure; end

    # DeleteLocation
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the location to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteLocationRequest AWS API Documentation
    #
    class DeleteLocationRequest < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteLocationResponse AWS API Documentation
    #
    class DeleteLocationResponse < Aws::EmptyStructure; end

    # DeleteTask
    #
    # @!attribute [rw] task_arn
    #   Specifies the Amazon Resource Name (ARN) of the task that you want
    #   to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteTaskRequest AWS API Documentation
    #
    class DeleteTaskRequest < Struct.new(
      :task_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteTaskResponse AWS API Documentation
    #
    class DeleteTaskResponse < Aws::EmptyStructure; end

    # DescribeAgent
    #
    # @!attribute [rw] agent_arn
    #   Specifies the Amazon Resource Name (ARN) of the DataSync agent that
    #   you want information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeAgentRequest AWS API Documentation
    #
    class DescribeAgentRequest < Struct.new(
      :agent_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeAgentResponse
    #
    # @!attribute [rw] agent_arn
    #   The ARN of the agent.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the agent.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the agent.
    #
    #   * If the status is `ONLINE`, the agent is configured properly and
    #     ready to use.
    #
    #   * If the status is `OFFLINE`, the agent has been out of contact with
    #     DataSync for five minutes or longer. This can happen for a few
    #     reasons. For more information, see [What do I do if my agent is
    #     offline?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/troubleshooting-datasync-agents.html#troubleshoot-agent-offline
    #   @return [String]
    #
    # @!attribute [rw] last_connection_time
    #   The last time that the agent was communicating with the DataSync
    #   service.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   The time that the agent was [activated][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/activate-agent.html
    #   @return [Time]
    #
    # @!attribute [rw] endpoint_type
    #   The type of [service endpoint][1] that your agent is connected to.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/choose-service-endpoint.html
    #   @return [String]
    #
    # @!attribute [rw] private_link_config
    #   The network configuration that the agent uses when connecting to a
    #   [VPC service endpoint][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/choose-service-endpoint.html#choose-service-endpoint-vpc
    #   @return [Types::PrivateLinkConfig]
    #
    # @!attribute [rw] platform
    #   The platform-related details about the agent, such as the version
    #   number.
    #   @return [Types::Platform]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeAgentResponse AWS API Documentation
    #
    class DescribeAgentResponse < Struct.new(
      :agent_arn,
      :name,
      :status,
      :last_connection_time,
      :creation_time,
      :endpoint_type,
      :private_link_config,
      :platform)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discovery_job_arn
    #   Specifies the Amazon Resource Name (ARN) of the discovery job that
    #   you want information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeDiscoveryJobRequest AWS API Documentation
    #
    class DescribeDiscoveryJobRequest < Struct.new(
      :discovery_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_system_arn
    #   The ARN of the on-premises storage system you're running the
    #   discovery job on.
    #   @return [String]
    #
    # @!attribute [rw] discovery_job_arn
    #   The ARN of the discovery job.
    #   @return [String]
    #
    # @!attribute [rw] collection_duration_minutes
    #   The number of minutes that the discovery job runs.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Indicates the status of a discovery job. For more information, see
    #   [Discovery job statuses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/discovery-job-statuses.html#discovery-job-statuses-table
    #   @return [String]
    #
    # @!attribute [rw] job_start_time
    #   The time when the discovery job started.
    #   @return [Time]
    #
    # @!attribute [rw] job_end_time
    #   The time when the discovery job ended.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeDiscoveryJobResponse AWS API Documentation
    #
    class DescribeDiscoveryJobResponse < Struct.new(
      :storage_system_arn,
      :discovery_job_arn,
      :collection_duration_minutes,
      :status,
      :job_start_time,
      :job_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location_arn
    #   Specifies the Amazon Resource Name (ARN) of your Azure Blob Storage
    #   transfer location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationAzureBlobRequest AWS API Documentation
    #
    class DescribeLocationAzureBlobRequest < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location_arn
    #   The ARN of your Azure Blob Storage transfer location.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URL of the Azure Blob Storage container involved in your
    #   transfer.
    #   @return [String]
    #
    # @!attribute [rw] authentication_type
    #   The authentication method DataSync uses to access your Azure Blob
    #   Storage. DataSync can access blob storage using a shared access
    #   signature (SAS).
    #   @return [String]
    #
    # @!attribute [rw] blob_type
    #   The type of blob that you want your objects or files to be when
    #   transferring them into Azure Blob Storage. Currently, DataSync only
    #   supports moving data into Azure Blob Storage as block blobs. For
    #   more information on blob types, see the [Azure Blob Storage
    #   documentation][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/rest/api/storageservices/understanding-block-blobs--append-blobs--and-page-blobs
    #   @return [String]
    #
    # @!attribute [rw] access_tier
    #   The access tier that you want your objects or files transferred
    #   into. This only applies when using the location as a transfer
    #   destination. For more information, see [Access tiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access-tiers
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   The ARNs of the DataSync agents that can connect with your Azure
    #   Blob Storage container.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_time
    #   The time that your Azure Blob Storage transfer location was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationAzureBlobResponse AWS API Documentation
    #
    class DescribeLocationAzureBlobResponse < Struct.new(
      :location_arn,
      :location_uri,
      :authentication_type,
      :blob_type,
      :access_tier,
      :agent_arns,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeLocationEfsRequest
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the Amazon EFS file system
    #   location that you want information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationEfsRequest AWS API Documentation
    #
    class DescribeLocationEfsRequest < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeLocationEfsResponse
    #
    # @!attribute [rw] location_arn
    #   The ARN of the Amazon EFS file system location.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URL of the Amazon EFS file system location.
    #   @return [String]
    #
    # @!attribute [rw] ec2_config
    #   The subnet and security groups that DataSync uses to access your
    #   Amazon EFS file system.
    #   @return [Types::Ec2Config]
    #
    # @!attribute [rw] creation_time
    #   The time that the location was created.
    #   @return [Time]
    #
    # @!attribute [rw] access_point_arn
    #   The ARN of the access point that DataSync uses to access the Amazon
    #   EFS file system.
    #   @return [String]
    #
    # @!attribute [rw] file_system_access_role_arn
    #   The Identity and Access Management (IAM) role that DataSync assumes
    #   when mounting the Amazon EFS file system.
    #   @return [String]
    #
    # @!attribute [rw] in_transit_encryption
    #   Describes whether DataSync uses Transport Layer Security (TLS)
    #   encryption when copying data to or from the Amazon EFS file system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationEfsResponse AWS API Documentation
    #
    class DescribeLocationEfsResponse < Struct.new(
      :location_arn,
      :location_uri,
      :ec2_config,
      :creation_time,
      :access_point_arn,
      :file_system_access_role_arn,
      :in_transit_encryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the FSx for Lustre location to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationFsxLustreRequest AWS API Documentation
    #
    class DescribeLocationFsxLustreRequest < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the FSx for Lustre location that
    #   was described.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URI of the FSx for Lustre location that was described.
    #   @return [String]
    #
    # @!attribute [rw] security_group_arns
    #   The Amazon Resource Names (ARNs) of the security groups that are
    #   configured for the FSx for Lustre file system.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_time
    #   The time that the FSx for Lustre location was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationFsxLustreResponse AWS API Documentation
    #
    class DescribeLocationFsxLustreResponse < Struct.new(
      :location_arn,
      :location_uri,
      :security_group_arns,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location_arn
    #   Specifies the Amazon Resource Name (ARN) of the FSx for ONTAP file
    #   system location that you want information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationFsxOntapRequest AWS API Documentation
    #
    class DescribeLocationFsxOntapRequest < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_time
    #   The time that the location was created.
    #   @return [Time]
    #
    # @!attribute [rw] location_arn
    #   The ARN of the FSx for ONTAP file system location.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The uniform resource identifier (URI) of the FSx for ONTAP file
    #   system location.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   Specifies the data transfer protocol that DataSync uses to access
    #   your Amazon FSx file system.
    #   @return [Types::FsxProtocol]
    #
    # @!attribute [rw] security_group_arns
    #   The security groups that DataSync uses to access your FSx for ONTAP
    #   file system.
    #   @return [Array<String>]
    #
    # @!attribute [rw] storage_virtual_machine_arn
    #   The ARN of the storage virtual machine (SVM) on your FSx for ONTAP
    #   file system where you're copying data to or from.
    #   @return [String]
    #
    # @!attribute [rw] fsx_filesystem_arn
    #   The ARN of the FSx for ONTAP file system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationFsxOntapResponse AWS API Documentation
    #
    class DescribeLocationFsxOntapResponse < Struct.new(
      :creation_time,
      :location_arn,
      :location_uri,
      :protocol,
      :security_group_arns,
      :storage_virtual_machine_arn,
      :fsx_filesystem_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the FSx for OpenZFS location to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationFsxOpenZfsRequest AWS API Documentation
    #
    class DescribeLocationFsxOpenZfsRequest < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location_arn
    #   The ARN of the FSx for OpenZFS location that was described.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The uniform resource identifier (URI) of the FSx for OpenZFS
    #   location that was described.
    #
    #   Example: `fsxz://us-west-2.fs-1234567890abcdef02/fsx/folderA/folder`
    #   @return [String]
    #
    # @!attribute [rw] security_group_arns
    #   The ARNs of the security groups that are configured for the FSx for
    #   OpenZFS file system.
    #   @return [Array<String>]
    #
    # @!attribute [rw] protocol
    #   The type of protocol that DataSync uses to access your file system.
    #   @return [Types::FsxProtocol]
    #
    # @!attribute [rw] creation_time
    #   The time that the FSx for OpenZFS location was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationFsxOpenZfsResponse AWS API Documentation
    #
    class DescribeLocationFsxOpenZfsResponse < Struct.new(
      :location_arn,
      :location_uri,
      :security_group_arns,
      :protocol,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the FSx for Windows File Server
    #   location to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationFsxWindowsRequest AWS API Documentation
    #
    class DescribeLocationFsxWindowsRequest < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the FSx for Windows File Server
    #   location that was described.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URL of the FSx for Windows File Server location that was
    #   described.
    #   @return [String]
    #
    # @!attribute [rw] security_group_arns
    #   The Amazon Resource Names (ARNs) of the security groups that are
    #   configured for the FSx for Windows File Server file system.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_time
    #   The time that the FSx for Windows File Server location was created.
    #   @return [Time]
    #
    # @!attribute [rw] user
    #   The user who has the permissions to access files and folders in the
    #   FSx for Windows File Server file system.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The name of the Windows domain that the FSx for Windows File Server
    #   belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationFsxWindowsResponse AWS API Documentation
    #
    class DescribeLocationFsxWindowsResponse < Struct.new(
      :location_arn,
      :location_uri,
      :security_group_arns,
      :creation_time,
      :user,
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the HDFS cluster location to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationHdfsRequest AWS API Documentation
    #
    class DescribeLocationHdfsRequest < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location_arn
    #   The ARN of the HDFS cluster location.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URI of the HDFS cluster location.
    #   @return [String]
    #
    # @!attribute [rw] name_nodes
    #   The NameNode that manage the HDFS namespace.
    #   @return [Array<Types::HdfsNameNode>]
    #
    # @!attribute [rw] block_size
    #   The size of the data blocks to write into the HDFS cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] replication_factor
    #   The number of DataNodes to replicate the data to when writing to the
    #   HDFS cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_provider_uri
    #   The URI of the HDFS cluster's Key Management Server (KMS).
    #   @return [String]
    #
    # @!attribute [rw] qop_configuration
    #   The Quality of Protection (QOP) configuration specifies the Remote
    #   Procedure Call (RPC) and data transfer protection settings
    #   configured on the Hadoop Distributed File System (HDFS) cluster.
    #   @return [Types::QopConfiguration]
    #
    # @!attribute [rw] authentication_type
    #   The type of authentication used to determine the identity of the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] simple_user
    #   The user name used to identify the client on the host operating
    #   system. This parameter is used if the `AuthenticationType` is
    #   defined as `SIMPLE`.
    #   @return [String]
    #
    # @!attribute [rw] kerberos_principal
    #   The Kerberos principal with access to the files and folders on the
    #   HDFS cluster. This parameter is used if the `AuthenticationType` is
    #   defined as `KERBEROS`.
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   The ARNs of the agents that are used to connect to the HDFS cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_time
    #   The time that the HDFS location was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationHdfsResponse AWS API Documentation
    #
    class DescribeLocationHdfsResponse < Struct.new(
      :location_arn,
      :location_uri,
      :name_nodes,
      :block_size,
      :replication_factor,
      :kms_key_provider_uri,
      :qop_configuration,
      :authentication_type,
      :simple_user,
      :kerberos_principal,
      :agent_arns,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeLocationNfsRequest
    #
    # @!attribute [rw] location_arn
    #   Specifies the Amazon Resource Name (ARN) of the NFS location that
    #   you want information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationNfsRequest AWS API Documentation
    #
    class DescribeLocationNfsRequest < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeLocationNfsResponse
    #
    # @!attribute [rw] location_arn
    #   The ARN of the NFS location.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URL of the NFS location.
    #   @return [String]
    #
    # @!attribute [rw] on_prem_config
    #   The DataSync agents that are connecting to a Network File System
    #   (NFS) location.
    #   @return [Types::OnPremConfig]
    #
    # @!attribute [rw] mount_options
    #   The mount options that DataSync uses to mount your NFS file server.
    #   @return [Types::NfsMountOptions]
    #
    # @!attribute [rw] creation_time
    #   The time when the NFS location was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationNfsResponse AWS API Documentation
    #
    class DescribeLocationNfsResponse < Struct.new(
      :location_arn,
      :location_uri,
      :on_prem_config,
      :mount_options,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeLocationObjectStorageRequest
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the object storage system location
    #   that you want information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationObjectStorageRequest AWS API Documentation
    #
    class DescribeLocationObjectStorageRequest < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeLocationObjectStorageResponse
    #
    # @!attribute [rw] location_arn
    #   The ARN of the object storage system location.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URL of the object storage system location.
    #   @return [String]
    #
    # @!attribute [rw] access_key
    #   The access key (for example, a user name) required to authenticate
    #   with the object storage system.
    #   @return [String]
    #
    # @!attribute [rw] server_port
    #   The port that your object storage server accepts inbound network
    #   traffic on (for example, port 443).
    #   @return [Integer]
    #
    # @!attribute [rw] server_protocol
    #   The protocol that your object storage system uses to communicate.
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   The ARNs of the DataSync agents that can securely connect with your
    #   location.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_time
    #   The time that the location was created.
    #   @return [Time]
    #
    # @!attribute [rw] server_certificate
    #   The self-signed certificate that DataSync uses to securely
    #   authenticate with your object storage system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationObjectStorageResponse AWS API Documentation
    #
    class DescribeLocationObjectStorageResponse < Struct.new(
      :location_arn,
      :location_uri,
      :access_key,
      :server_port,
      :server_protocol,
      :agent_arns,
      :creation_time,
      :server_certificate)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeLocationS3Request
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 bucket location to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationS3Request AWS API Documentation
    #
    class DescribeLocationS3Request < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeLocationS3Response
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 bucket or access
    #   point.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URL of the Amazon S3 location that was described.
    #   @return [String]
    #
    # @!attribute [rw] s3_storage_class
    #   The Amazon S3 storage class that you chose to store your files in
    #   when this location is used as a task destination. For more
    #   information about S3 storage classes, see [Amazon S3 Storage
    #   Classes][1]. Some storage classes have behaviors that can affect
    #   your S3 storage cost. For detailed information, see [Considerations
    #   when working with S3 storage classes in DataSync][2].
    #
    #
    #
    #   [1]: http://aws.amazon.com/s3/storage-classes/
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes
    #   @return [String]
    #
    # @!attribute [rw] s3_config
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role used to access an Amazon S3 bucket.
    #
    #   For detailed information about using such a role, see Creating a
    #   Location for Amazon S3 in the *DataSync User Guide*.
    #   @return [Types::S3Config]
    #
    # @!attribute [rw] agent_arns
    #   If you are using DataSync on an Amazon Web Services Outpost, the
    #   Amazon Resource Name (ARNs) of the EC2 agents deployed on your
    #   Outpost. For more information about launching a DataSync agent on an
    #   Amazon Web Services Outpost, see [Deploy your DataSync agent on
    #   Outposts][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/deploy-agents.html#outposts-agent
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_time
    #   The time that the Amazon S3 bucket location was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationS3Response AWS API Documentation
    #
    class DescribeLocationS3Response < Struct.new(
      :location_arn,
      :location_uri,
      :s3_storage_class,
      :s3_config,
      :agent_arns,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeLocationSmbRequest
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the SMB location to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationSmbRequest AWS API Documentation
    #
    class DescribeLocationSmbRequest < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeLocationSmbResponse
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the SMB location that was
    #   described.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URL of the source SMB location that was described.
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   The Amazon Resource Name (ARN) of the source SMB file system
    #   location that is created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user
    #   The user who can mount the share, has the permissions to access
    #   files and folders in the SMB share.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The name of the Windows domain that the SMB server belongs to.
    #   @return [String]
    #
    # @!attribute [rw] mount_options
    #   The mount options that are available for DataSync to use to access
    #   an SMB location.
    #   @return [Types::SmbMountOptions]
    #
    # @!attribute [rw] creation_time
    #   The time that the SMB location was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationSmbResponse AWS API Documentation
    #
    class DescribeLocationSmbResponse < Struct.new(
      :location_arn,
      :location_uri,
      :agent_arns,
      :user,
      :domain,
      :mount_options,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_system_arn
    #   Specifies the Amazon Resource Name (ARN) of an on-premises storage
    #   system that you're using with DataSync Discovery.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeStorageSystemRequest AWS API Documentation
    #
    class DescribeStorageSystemRequest < Struct.new(
      :storage_system_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discovery_job_arn
    #   Specifies the Amazon Resource Name (ARN) of the discovery job that
    #   collects information about your on-premises storage system.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Specifies the kind of storage system resource that you want
    #   information about.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Specifies the universally unique identifier (UUID) of the storage
    #   system resource that you want information about.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Specifies a time within the total duration that the discovery job
    #   ran. To see information gathered during a certain time frame, use
    #   this parameter with `EndTime`.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Specifies a time within the total duration that the discovery job
    #   ran. To see information gathered during a certain time frame, use
    #   this parameter with `StartTime`.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   Specifies how many results that you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies an opaque string that indicates the position to begin the
    #   next list of results in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeStorageSystemResourceMetricsRequest AWS API Documentation
    #
    class DescribeStorageSystemResourceMetricsRequest < Struct.new(
      :discovery_job_arn,
      :resource_type,
      :resource_id,
      :start_time,
      :end_time,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metrics
    #   The details that your discovery job collected about your storage
    #   system resource.
    #   @return [Array<Types::ResourceMetrics>]
    #
    # @!attribute [rw] next_token
    #   The opaque string that indicates the position to begin the next list
    #   of results in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeStorageSystemResourceMetricsResponse AWS API Documentation
    #
    class DescribeStorageSystemResourceMetricsResponse < Struct.new(
      :metrics,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discovery_job_arn
    #   Specifies the Amazon Resource Name (ARN) of the discovery job
    #   that's collecting data from your on-premises storage system.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Specifies what kind of storage system resources that you want
    #   information about.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   Specifies the universally unique identifiers (UUIDs) of the storage
    #   system resources that you want information about. You can't use
    #   this parameter in combination with the `Filter` parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filter
    #   Filters the storage system resources that you want returned. For
    #   example, this might be volumes associated with a specific storage
    #   virtual machine (SVM).
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of storage system resources that you
    #   want to list in a response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies an opaque string that indicates the position to begin the
    #   next list of results in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeStorageSystemResourcesRequest AWS API Documentation
    #
    class DescribeStorageSystemResourcesRequest < Struct.new(
      :discovery_job_arn,
      :resource_type,
      :resource_ids,
      :filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_details
    #   The information collected about your storage system's resources. A
    #   response can also include Amazon Web Services storage service
    #   recommendations.
    #
    #   For more information, see [storage resource information][1]
    #   collected by and [recommendations][2] provided by DataSync
    #   Discovery.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/discovery-understand-findings.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/discovery-understand-recommendations.html
    #   @return [Types::ResourceDetails]
    #
    # @!attribute [rw] next_token
    #   The opaque string that indicates the position to begin the next list
    #   of results in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeStorageSystemResourcesResponse AWS API Documentation
    #
    class DescribeStorageSystemResourcesResponse < Struct.new(
      :resource_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_system_arn
    #   The ARN of the on-premises storage system that the discovery job
    #   looked at.
    #   @return [String]
    #
    # @!attribute [rw] server_configuration
    #   The server name and network port required to connect with your
    #   on-premises storage system's management interface.
    #   @return [Types::DiscoveryServerConfiguration]
    #
    # @!attribute [rw] system_type
    #   The type of on-premises storage system.
    #
    #   <note markdown="1"> DataSync Discovery currently only supports NetApp Fabric-Attached
    #   Storage (FAS) and All Flash FAS (AFF) systems running ONTAP 9.7 or
    #   later.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   The ARN of the DataSync agent that connects to and reads from your
    #   on-premises storage system.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name that you gave your on-premises storage system when adding
    #   it to DataSync Discovery.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Describes the connectivity error that the DataSync agent is
    #   encountering with your on-premises storage system.
    #   @return [String]
    #
    # @!attribute [rw] connectivity_status
    #   Indicates whether your DataSync agent can connect to your
    #   on-premises storage system.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_log_group_arn
    #   The ARN of the Amazon CloudWatch log group that's used to monitor
    #   and log discovery job events.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when you added the on-premises storage system to DataSync
    #   Discovery.
    #   @return [Time]
    #
    # @!attribute [rw] secrets_manager_arn
    #   The ARN of the secret that stores your on-premises storage system's
    #   credentials. DataSync Discovery stores these credentials in [Secrets
    #   Manager][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/discovery-configure-storage.html#discovery-add-storage
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeStorageSystemResponse AWS API Documentation
    #
    class DescribeStorageSystemResponse < Struct.new(
      :storage_system_arn,
      :server_configuration,
      :system_type,
      :agent_arns,
      :name,
      :error_message,
      :connectivity_status,
      :cloud_watch_log_group_arn,
      :creation_time,
      :secrets_manager_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeTaskExecutionRequest
    #
    # @!attribute [rw] task_execution_arn
    #   Specifies the Amazon Resource Name (ARN) of the task execution that
    #   you want information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeTaskExecutionRequest AWS API Documentation
    #
    class DescribeTaskExecutionRequest < Struct.new(
      :task_execution_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeTaskExecutionResponse
    #
    # @!attribute [rw] task_execution_arn
    #   The ARN of the task execution that you wanted information about.
    #   `TaskExecutionArn` is hierarchical and includes `TaskArn` for the
    #   task that was executed.
    #
    #   For example, a `TaskExecution` value with the ARN
    #   `arn:aws:datasync:us-east-1:111222333444:task/task-0208075f79cedf4a2/execution/exec-08ef1e88ec491019b`
    #   executed the task with the ARN
    #   `arn:aws:datasync:us-east-1:111222333444:task/task-0208075f79cedf4a2`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the task execution.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   Indicates how your transfer task is configured. These options
    #   include how DataSync handles files, objects, and their associated
    #   metadata during your transfer. You also can specify how to verify
    #   data integrity, set bandwidth limits for your task, among other
    #   options.
    #
    #   Each option has a default value. Unless you need to, you don't have
    #   to configure any of these options before starting your task.
    #   @return [Types::Options]
    #
    # @!attribute [rw] excludes
    #   A list of filter rules that exclude specific data during your
    #   transfer. For more information and examples, see [Filtering data
    #   transferred by DataSync][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] includes
    #   A list of filter rules that include specific data during your
    #   transfer. For more information and examples, see [Filtering data
    #   transferred by DataSync][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] start_time
    #   The time when the task execution started.
    #   @return [Time]
    #
    # @!attribute [rw] estimated_files_to_transfer
    #   The expected number of files, objects, and directories that DataSync
    #   will transfer over the network. This value is calculated during the
    #   task execution's `PREPARING` phase before the `TRANSFERRING` phase.
    #   The calculation is based on comparing the content of the source and
    #   destination locations and finding the difference that needs to be
    #   transferred.
    #   @return [Integer]
    #
    # @!attribute [rw] estimated_bytes_to_transfer
    #   The estimated physical number of bytes that will transfer over the
    #   network.
    #   @return [Integer]
    #
    # @!attribute [rw] files_transferred
    #   The actual number of files, objects, and directories that DataSync
    #   transferred over the network. This value is updated periodically
    #   during the task execution's `TRANSFERRING` phase when something is
    #   read from the source and sent over the network.
    #
    #   If DataSync fails to transfer something, this value can be less than
    #   `EstimatedFilesToTransfer`. In some cases, this value can also be
    #   greater than `EstimatedFilesToTransfer`. This element is
    #   implementation-specific for some location types, so don't use it as
    #   an exact indication of what transferred or to monitor your task
    #   execution.
    #   @return [Integer]
    #
    # @!attribute [rw] bytes_written
    #   The number of logical bytes written to the destination location.
    #   @return [Integer]
    #
    # @!attribute [rw] bytes_transferred
    #   The total number of bytes that are involved in the transfer. For the
    #   number of bytes sent over the network, see `BytesCompressed`.
    #   @return [Integer]
    #
    # @!attribute [rw] result
    #   The result of the task execution.
    #   @return [Types::TaskExecutionResultDetail]
    #
    # @!attribute [rw] bytes_compressed
    #   The physical number of bytes transferred over the network after
    #   compression was applied. In most cases, this number is less than
    #   `BytesTransferred` unless the data isn't compressible.
    #   @return [Integer]
    #
    # @!attribute [rw] task_report_config
    #   The configuration of your task report, which provides detailed
    #   information about for your DataSync transfer.
    #   @return [Types::TaskReportConfig]
    #
    # @!attribute [rw] files_deleted
    #   The number of files, objects, and directories that DataSync deleted
    #   in your destination location. If you don't [configure your task][1]
    #   to delete data in the destination that isn't in the source, the
    #   value is always `0`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/configure-metadata.html
    #   @return [Integer]
    #
    # @!attribute [rw] files_skipped
    #   The number of files, objects, and directories that DataSync skipped
    #   during your transfer.
    #   @return [Integer]
    #
    # @!attribute [rw] files_verified
    #   The number of files, objects, and directories that DataSync verified
    #   during your transfer.
    #
    #   <note markdown="1"> When you configure your task to [verify only the data that's
    #   transferred][1], DataSync doesn't verify directories in some
    #   situations or files that fail to transfer.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/configure-data-verification-options.html
    #   @return [Integer]
    #
    # @!attribute [rw] report_result
    #   Indicates whether DataSync generated a complete [task report][1] for
    #   your transfer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
    #   @return [Types::ReportResult]
    #
    # @!attribute [rw] estimated_files_to_delete
    #   The expected number of files, objects, and directories that DataSync
    #   will delete in your destination location. If you don't [configure
    #   your task][1] to delete data in the destination that isn't in the
    #   source, the value is always `0`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/configure-metadata.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeTaskExecutionResponse AWS API Documentation
    #
    class DescribeTaskExecutionResponse < Struct.new(
      :task_execution_arn,
      :status,
      :options,
      :excludes,
      :includes,
      :start_time,
      :estimated_files_to_transfer,
      :estimated_bytes_to_transfer,
      :files_transferred,
      :bytes_written,
      :bytes_transferred,
      :result,
      :bytes_compressed,
      :task_report_config,
      :files_deleted,
      :files_skipped,
      :files_verified,
      :report_result,
      :estimated_files_to_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeTaskRequest
    #
    # @!attribute [rw] task_arn
    #   Specifies the Amazon Resource Name (ARN) of the transfer task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeTaskRequest AWS API Documentation
    #
    class DescribeTaskRequest < Struct.new(
      :task_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeTaskResponse
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task that was described.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the task that was described.
    #
    #   For detailed information about task execution statuses, see
    #   Understanding Task Statuses in the *DataSync User Guide*.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the task that was described.
    #   @return [String]
    #
    # @!attribute [rw] current_task_execution_arn
    #   The Amazon Resource Name (ARN) of the task execution that is
    #   transferring files.
    #   @return [String]
    #
    # @!attribute [rw] source_location_arn
    #   The Amazon Resource Name (ARN) of the source file system's
    #   location.
    #   @return [String]
    #
    # @!attribute [rw] destination_location_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services storage
    #   resource's location.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_log_group_arn
    #   The Amazon Resource Name (ARN) of the Amazon CloudWatch log group
    #   that was used to monitor and log events in the task.
    #
    #   For more information on these groups, see Working with Log Groups
    #   and Log Streams in the *Amazon CloudWatch User Guide*.
    #   @return [String]
    #
    # @!attribute [rw] source_network_interface_arns
    #   The Amazon Resource Names (ARNs) of the network interfaces created
    #   for your source location. For more information, see [Network
    #   interface requirements][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/datasync-network.html#required-network-interfaces
    #   @return [Array<String>]
    #
    # @!attribute [rw] destination_network_interface_arns
    #   The Amazon Resource Names (ARNs) of the network interfaces created
    #   for your destination location. For more information, see [Network
    #   interface requirements][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/datasync-network.html#required-network-interfaces
    #   @return [Array<String>]
    #
    # @!attribute [rw] options
    #   The configuration options that control the behavior of the
    #   `StartTaskExecution` operation. Some options include preserving file
    #   or object metadata and verifying data integrity.
    #
    #   You can override these options for each task execution. For more
    #   information, see [StartTaskExecution][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html
    #   @return [Types::Options]
    #
    # @!attribute [rw] excludes
    #   A list of filter rules that exclude specific data during your
    #   transfer. For more information and examples, see [Filtering data
    #   transferred by DataSync][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] schedule
    #   The schedule used to periodically transfer files from a source to a
    #   destination location.
    #   @return [Types::TaskSchedule]
    #
    # @!attribute [rw] error_code
    #   Errors that DataSync encountered during execution of the task. You
    #   can use this error code to help troubleshoot issues.
    #   @return [String]
    #
    # @!attribute [rw] error_detail
    #   Detailed description of an error that was encountered during the
    #   task execution. You can use this information to help troubleshoot
    #   issues.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that the task was created.
    #   @return [Time]
    #
    # @!attribute [rw] includes
    #   A list of filter rules that include specific data during your
    #   transfer. For more information and examples, see [Filtering data
    #   transferred by DataSync][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] task_report_config
    #   The configuration of your task report. For more information, see
    #   [Creating a task report][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
    #   @return [Types::TaskReportConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeTaskResponse AWS API Documentation
    #
    class DescribeTaskResponse < Struct.new(
      :task_arn,
      :status,
      :name,
      :current_task_execution_arn,
      :source_location_arn,
      :destination_location_arn,
      :cloud_watch_log_group_arn,
      :source_network_interface_arns,
      :destination_network_interface_arns,
      :options,
      :excludes,
      :schedule,
      :error_code,
      :error_detail,
      :creation_time,
      :includes,
      :task_report_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about a specific DataSync discovery job.
    #
    # @!attribute [rw] discovery_job_arn
    #   The Amazon Resource Name (ARN) of a discovery job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a discovery job. For more information, see [Discovery
    #   job statuses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/discovery-job-statuses.html#discovery-job-statuses-table
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DiscoveryJobListEntry AWS API Documentation
    #
    class DiscoveryJobListEntry < Struct.new(
      :discovery_job_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network settings that DataSync Discovery uses to connect with your
    # on-premises storage system's management interface.
    #
    # @!attribute [rw] server_hostname
    #   The domain name or IP address of your storage system's management
    #   interface.
    #   @return [String]
    #
    # @!attribute [rw] server_port
    #   The network port for accessing the storage system's management
    #   interface.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DiscoveryServerConfiguration AWS API Documentation
    #
    class DiscoveryServerConfiguration < Struct.new(
      :server_hostname,
      :server_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # The subnet and security groups that DataSync uses to access your
    # Amazon EFS file system.
    #
    # @!attribute [rw] subnet_arn
    #   Specifies the ARN of a subnet where DataSync creates the [network
    #   interfaces][1] for managing traffic during your transfer.
    #
    #   The subnet must be located:
    #
    #   * In the same virtual private cloud (VPC) as the Amazon EFS file
    #     system.
    #
    #   * In the same Availability Zone as at least one mount target for the
    #     Amazon EFS file system.
    #
    #   <note markdown="1"> You don't need to specify a subnet that includes a file system
    #   mount target.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/datasync-network.html#required-network-interfaces
    #   @return [String]
    #
    # @!attribute [rw] security_group_arns
    #   Specifies the Amazon Resource Names (ARNs) of the security groups
    #   associated with an Amazon EFS file system's mount target.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/Ec2Config AWS API Documentation
    #
    class Ec2Config < Struct.new(
      :subnet_arn,
      :security_group_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies which files, folders, and objects to include or exclude when
    # transferring files from source to destination.
    #
    # @!attribute [rw] filter_type
    #   The type of filter rule to apply. DataSync only supports the
    #   SIMPLE\_PATTERN rule type.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A single filter string that consists of the patterns to include or
    #   exclude. The patterns are delimited by "\|" (that is, a pipe), for
    #   example: `/folder1|/folder2`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/FilterRule AWS API Documentation
    #
    class FilterRule < Struct.new(
      :filter_type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the data transfer protocol that DataSync uses to access your
    # Amazon FSx file system.
    #
    # @!attribute [rw] nfs
    #   Specifies the Network File System (NFS) protocol configuration that
    #   DataSync uses to access your FSx for OpenZFS file system or FSx for
    #   ONTAP file system's storage virtual machine (SVM).
    #   @return [Types::FsxProtocolNfs]
    #
    # @!attribute [rw] smb
    #   Specifies the Server Message Block (SMB) protocol configuration that
    #   DataSync uses to access your FSx for ONTAP file system's SVM.
    #   @return [Types::FsxProtocolSmb]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/FsxProtocol AWS API Documentation
    #
    class FsxProtocol < Struct.new(
      :nfs,
      :smb)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the Network File System (NFS) protocol configuration that
    # DataSync uses to access your Amazon FSx for OpenZFS or Amazon FSx for
    # NetApp ONTAP file system.
    #
    # @!attribute [rw] mount_options
    #   Specifies how DataSync can access a location using the NFS protocol.
    #   @return [Types::NfsMountOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/FsxProtocolNfs AWS API Documentation
    #
    class FsxProtocolNfs < Struct.new(
      :mount_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the Server Message Block (SMB) protocol configuration that
    # DataSync uses to access your Amazon FSx for NetApp ONTAP file system.
    # For more information, see [Accessing FSx for ONTAP file systems][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html#create-ontap-location-access
    #
    # @!attribute [rw] domain
    #   Specifies the fully qualified domain name (FQDN) of the Microsoft
    #   Active Directory that your storage virtual machine (SVM) belongs to.
    #   @return [String]
    #
    # @!attribute [rw] mount_options
    #   Specifies the version of the Server Message Block (SMB) protocol
    #   that DataSync uses to access an SMB file server.
    #   @return [Types::SmbMountOptions]
    #
    # @!attribute [rw] password
    #   Specifies the password of a user who has permission to access your
    #   SVM.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   Specifies a user name that can mount the location and access the
    #   files, folders, and metadata that you need in the SVM.
    #
    #   If you provide a user in your Active Directory, note the following:
    #
    #   * If you're using Directory Service for Microsoft Active Directory,
    #     the user must be a member of the Amazon Web Services Delegated FSx
    #     Administrators group.
    #
    #   * If you're using a self-managed Active Directory, the user must be
    #     a member of either the Domain Admins group or a custom group that
    #     you specified for file system administration when you created your
    #     file system.
    #
    #   Make sure that the user has the permissions it needs to copy the
    #   data you want:
    #
    #   * `SE_TCB_NAME`: Required to set object ownership and file metadata.
    #     With this privilege, you also can copy NTFS discretionary access
    #     lists (DACLs).
    #
    #   * `SE_SECURITY_NAME`: May be needed to copy NTFS system access
    #     control lists (SACLs). This operation specifically requires the
    #     Windows privilege, which is granted to members of the Domain
    #     Admins group. If you configure your task to copy SACLs, make sure
    #     that the user has the required privileges. For information about
    #     copying SACLs, see [Ownership and permissions-related options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-task.html#configure-ownership-and-permissions
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/FsxProtocolSmb AWS API Documentation
    #
    class FsxProtocolSmb < Struct.new(
      :domain,
      :mount_options,
      :password,
      :user)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # @!attribute [rw] discovery_job_arn
    #   Specifies the Amazon Resource Name (ARN) of the discovery job that
    #   collects information about your on-premises storage system.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   Specifies the universally unique identifiers (UUIDs) of the
    #   resources in your storage system that you want recommendations on.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_type
    #   Specifies the type of resource in your storage system that you want
    #   recommendations on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/GenerateRecommendationsRequest AWS API Documentation
    #
    class GenerateRecommendationsRequest < Struct.new(
      :discovery_job_arn,
      :resource_ids,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/GenerateRecommendationsResponse AWS API Documentation
    #
    class GenerateRecommendationsResponse < Aws::EmptyStructure; end

    # The NameNode of the Hadoop Distributed File System (HDFS). The
    # NameNode manages the file system's namespace. The NameNode performs
    # operations such as opening, closing, and renaming files and
    # directories. The NameNode contains the information to map blocks of
    # data to the DataNodes.
    #
    # @!attribute [rw] hostname
    #   The hostname of the NameNode in the HDFS cluster. This value is the
    #   IP address or Domain Name Service (DNS) name of the NameNode. An
    #   agent that's installed on-premises uses this hostname to
    #   communicate with the NameNode in the network.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port that the NameNode uses to listen to client requests.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/HdfsNameNode AWS API Documentation
    #
    class HdfsNameNode < Struct.new(
      :hostname,
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # The IOPS peaks for an on-premises storage system resource. Each data
    # point represents the 95th percentile peak value during a 1-hour
    # interval.
    #
    # @!attribute [rw] read
    #   Peak IOPS related to read operations.
    #   @return [Float]
    #
    # @!attribute [rw] write
    #   Peak IOPS related to write operations.
    #   @return [Float]
    #
    # @!attribute [rw] other
    #   Peak IOPS unrelated to read and write operations.
    #   @return [Float]
    #
    # @!attribute [rw] total
    #   Peak total IOPS on your on-premises storage system resource.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/IOPS AWS API Documentation
    #
    class IOPS < Struct.new(
      :read,
      :write,
      :other,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when an error occurs in the DataSync service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/InternalException AWS API Documentation
    #
    class InternalException < Struct.new(
      :message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the client submits a malformed request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] datasync_error_code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message,
      :error_code,
      :datasync_error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The latency peaks for an on-premises storage system resource. Each
    # data point represents the 95th percentile peak value during a 1-hour
    # interval.
    #
    # @!attribute [rw] read
    #   Peak latency for read operations.
    #   @return [Float]
    #
    # @!attribute [rw] write
    #   Peak latency for write operations.
    #   @return [Float]
    #
    # @!attribute [rw] other
    #   Peak latency for operations unrelated to read and write operations.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/Latency AWS API Documentation
    #
    class Latency < Struct.new(
      :read,
      :write,
      :other)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListAgentsRequest
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of DataSync agents to list in a
    #   response. By default, a response shows a maximum of 100 agents.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies an opaque string that indicates the position to begin the
    #   next list of results in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListAgentsRequest AWS API Documentation
    #
    class ListAgentsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListAgentsResponse
    #
    # @!attribute [rw] agents
    #   A list of DataSync agents in your Amazon Web Services account in the
    #   Amazon Web Services Region specified in the request. The list is
    #   ordered by the agents' Amazon Resource Names (ARNs).
    #   @return [Array<Types::AgentListEntry>]
    #
    # @!attribute [rw] next_token
    #   The opaque string that indicates the position to begin the next list
    #   of results in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListAgentsResponse AWS API Documentation
    #
    class ListAgentsResponse < Struct.new(
      :agents,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_system_arn
    #   Specifies the Amazon Resource Name (ARN) of an on-premises storage
    #   system. Use this parameter if you only want to list the discovery
    #   jobs that are associated with a specific storage system.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies how many results you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies an opaque string that indicates the position to begin the
    #   next list of results in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListDiscoveryJobsRequest AWS API Documentation
    #
    class ListDiscoveryJobsRequest < Struct.new(
      :storage_system_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discovery_jobs
    #   The discovery jobs that you've run.
    #   @return [Array<Types::DiscoveryJobListEntry>]
    #
    # @!attribute [rw] next_token
    #   The opaque string that indicates the position to begin the next list
    #   of results in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListDiscoveryJobsResponse AWS API Documentation
    #
    class ListDiscoveryJobsResponse < Struct.new(
      :discovery_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListLocationsRequest
    #
    # @!attribute [rw] max_results
    #   The maximum number of locations to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin the
    #   next list of locations.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   You can use API filters to narrow down the list of resources
    #   returned by `ListLocations`. For example, to retrieve all tasks on a
    #   specific source location, you can use `ListLocations` with filter
    #   name `LocationType S3` and `Operator Equals`.
    #   @return [Array<Types::LocationFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListLocationsRequest AWS API Documentation
    #
    class ListLocationsRequest < Struct.new(
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListLocationsResponse
    #
    # @!attribute [rw] locations
    #   An array that contains a list of locations.
    #   @return [Array<Types::LocationListEntry>]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin
    #   returning the next list of locations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListLocationsResponse AWS API Documentation
    #
    class ListLocationsResponse < Struct.new(
      :locations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Specifies how many results you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies an opaque string that indicates the position to begin the
    #   next list of results in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListStorageSystemsRequest AWS API Documentation
    #
    class ListStorageSystemsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_systems
    #   The Amazon Resource Names ARNs) of the on-premises storage systems
    #   that you're using with DataSync Discovery.
    #   @return [Array<Types::StorageSystemListEntry>]
    #
    # @!attribute [rw] next_token
    #   The opaque string that indicates the position to begin the next list
    #   of results in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListStorageSystemsResponse AWS API Documentation
    #
    class ListStorageSystemsResponse < Struct.new(
      :storage_systems,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListTagsForResourceRequest
    #
    # @!attribute [rw] resource_arn
    #   Specifies the Amazon Resource Name (ARN) of the resource that you
    #   want tag information on.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies how many results that you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies an opaque string that indicates the position to begin the
    #   next list of results in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListTagsForResourceResponse
    #
    # @!attribute [rw] tags
    #   An array of tags applied to the specified resource.
    #   @return [Array<Types::TagListEntry>]
    #
    # @!attribute [rw] next_token
    #   The opaque string that indicates the position to begin the next list
    #   of results in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListTaskExecutions
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task whose tasks you want to
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of executed tasks to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin the
    #   next list of the executed tasks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTaskExecutionsRequest AWS API Documentation
    #
    class ListTaskExecutionsRequest < Struct.new(
      :task_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListTaskExecutionsResponse
    #
    # @!attribute [rw] task_executions
    #   A list of executed tasks.
    #   @return [Array<Types::TaskExecutionListEntry>]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin
    #   returning the next list of executed tasks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTaskExecutionsResponse AWS API Documentation
    #
    class ListTaskExecutionsResponse < Struct.new(
      :task_executions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListTasksRequest
    #
    # @!attribute [rw] max_results
    #   The maximum number of tasks to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin the
    #   next list of tasks.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   You can use API filters to narrow down the list of resources
    #   returned by `ListTasks`. For example, to retrieve all tasks on a
    #   specific source location, you can use `ListTasks` with filter name
    #   `LocationId` and `Operator Equals` with the ARN for the location.
    #   @return [Array<Types::TaskFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTasksRequest AWS API Documentation
    #
    class ListTasksRequest < Struct.new(
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListTasksResponse
    #
    # @!attribute [rw] tasks
    #   A list of all the tasks that are returned.
    #   @return [Array<Types::TaskListEntry>]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin
    #   returning the next list of tasks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTasksResponse AWS API Documentation
    #
    class ListTasksResponse < Struct.new(
      :tasks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Narrow down the list of resources returned by `ListLocations`. For
    # example, to see all your Amazon S3 locations, create a filter using
    # `"Name": "LocationType"`, `"Operator": "Equals"`, and `"Values":
    # "S3"`.
    #
    # For more information, see [filtering resources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/query-resources.html
    #
    # @!attribute [rw] name
    #   The name of the filter being used. Each API call supports a list of
    #   filters that are available for it (for example, `LocationType` for
    #   `ListLocations`).
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values that you want to filter for. For example, you might want
    #   to display only Amazon S3 locations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator that is used to compare filter values (for example,
    #   `Equals` or `Contains`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/LocationFilter AWS API Documentation
    #
    class LocationFilter < Struct.new(
      :name,
      :values,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single entry in a list of locations. `LocationListEntry`
    # returns an array that contains a list of locations when the
    # [ListLocations][1] operation is called.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_ListLocations.html
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the location. For Network File
    #   System (NFS) or Amazon EFS, the location is the export path. For
    #   Amazon S3, the location is the prefix path that you want to mount
    #   and use as the root of the location.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   Represents a list of URIs of a location. `LocationUri` returns an
    #   array that contains a list of locations when the [ListLocations][1]
    #   operation is called.
    #
    #   Format: `TYPE://GLOBAL_ID/SUBDIR`.
    #
    #   TYPE designates the type of location (for example, `nfs` or `s3`).
    #
    #   GLOBAL\_ID is the globally unique identifier of the resource that
    #   backs the location. An example for EFS is `us-east-2.fs-abcd1234`.
    #   An example for Amazon S3 is the bucket name, such as `myBucket`. An
    #   example for NFS is a valid IPv4 address or a hostname that is
    #   compliant with Domain Name Service (DNS).
    #
    #   SUBDIR is a valid file system path, delimited by forward slashes as
    #   is the *nix convention. For NFS and Amazon EFS, it's the export
    #   path to mount the location. For Amazon S3, it's the prefix path
    #   that you mount to and treat as the root of the location.
    #
    #
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_ListLocations.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/LocationListEntry AWS API Documentation
    #
    class LocationListEntry < Struct.new(
      :location_arn,
      :location_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The performance data that DataSync Discovery collects about an
    # on-premises storage system resource.
    #
    # @!attribute [rw] iops_read
    #   Peak IOPS related to read operations.
    #   @return [Float]
    #
    # @!attribute [rw] iops_write
    #   Peak IOPS related to write operations.
    #   @return [Float]
    #
    # @!attribute [rw] iops_other
    #   Peak IOPS unrelated to read and write operations.
    #   @return [Float]
    #
    # @!attribute [rw] iops_total
    #   Peak total IOPS on your on-premises storage system resource.
    #   @return [Float]
    #
    # @!attribute [rw] throughput_read
    #   Peak throughput related to read operations.
    #   @return [Float]
    #
    # @!attribute [rw] throughput_write
    #   Peak throughput related to write operations.
    #   @return [Float]
    #
    # @!attribute [rw] throughput_other
    #   Peak throughput unrelated to read and write operations.
    #   @return [Float]
    #
    # @!attribute [rw] throughput_total
    #   Peak total throughput on your on-premises storage system resource.
    #   @return [Float]
    #
    # @!attribute [rw] latency_read
    #   Peak latency for read operations.
    #   @return [Float]
    #
    # @!attribute [rw] latency_write
    #   Peak latency for write operations.
    #   @return [Float]
    #
    # @!attribute [rw] latency_other
    #   Peak latency for operations unrelated to read and write operations.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/MaxP95Performance AWS API Documentation
    #
    class MaxP95Performance < Struct.new(
      :iops_read,
      :iops_write,
      :iops_other,
      :iops_total,
      :throughput_read,
      :throughput_write,
      :throughput_other,
      :throughput_total,
      :latency_read,
      :latency_write,
      :latency_other)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information that DataSync Discovery collects about an on-premises
    # storage system cluster.
    #
    # @!attribute [rw] cifs_share_count
    #   The number of CIFS shares in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] nfs_exported_volumes
    #   The number of NFS volumes in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_id
    #   The universally unique identifier (UUID) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] max_p95_performance
    #   The performance data that DataSync Discovery collects about the
    #   cluster.
    #   @return [Types::MaxP95Performance]
    #
    # @!attribute [rw] cluster_block_storage_size
    #   The total storage space that's available in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] cluster_block_storage_used
    #   The storage space that's being used in a cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] cluster_block_storage_logical_used
    #   The storage space that's being used in the cluster without
    #   accounting for compression or deduplication.
    #   @return [Integer]
    #
    # @!attribute [rw] recommendations
    #   The Amazon Web Services storage services that DataSync Discovery
    #   recommends for the cluster. For more information, see
    #   [Recommendations provided by DataSync Discovery][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/discovery-understand-recommendations.html
    #   @return [Array<Types::Recommendation>]
    #
    # @!attribute [rw] recommendation_status
    #   Indicates whether DataSync Discovery recommendations for the cluster
    #   are ready to view, incomplete, or can't be determined.
    #
    #   For more information, see [Recommendation statuses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/discovery-job-statuses.html#recommendation-statuses-table
    #   @return [String]
    #
    # @!attribute [rw] lun_count
    #   The number of LUNs (logical unit numbers) in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] cluster_cloud_storage_used
    #   The amount of space in the cluster that's in cloud storage (for
    #   example, if you're using data tiering).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/NetAppONTAPCluster AWS API Documentation
    #
    class NetAppONTAPCluster < Struct.new(
      :cifs_share_count,
      :nfs_exported_volumes,
      :resource_id,
      :cluster_name,
      :max_p95_performance,
      :cluster_block_storage_size,
      :cluster_block_storage_used,
      :cluster_block_storage_logical_used,
      :recommendations,
      :recommendation_status,
      :lun_count,
      :cluster_cloud_storage_used)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information that DataSync Discovery collects about a storage
    # virtual machine (SVM) in your on-premises storage system.
    #
    # @!attribute [rw] cluster_uuid
    #   The universally unique identifier (UUID) of the cluster associated
    #   with the SVM.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The UUID of the SVM.
    #   @return [String]
    #
    # @!attribute [rw] svm_name
    #   The name of the SVM
    #   @return [String]
    #
    # @!attribute [rw] cifs_share_count
    #   The number of CIFS shares in the SVM.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled_protocols
    #   The data transfer protocols (such as NFS) configured for the SVM.
    #   @return [Array<String>]
    #
    # @!attribute [rw] total_capacity_used
    #   The storage space that's being used in the SVM.
    #   @return [Integer]
    #
    # @!attribute [rw] total_capacity_provisioned
    #   The total storage space that's available in the SVM.
    #   @return [Integer]
    #
    # @!attribute [rw] total_logical_capacity_used
    #   The storage space that's being used in the SVM without accounting
    #   for compression or deduplication.
    #   @return [Integer]
    #
    # @!attribute [rw] max_p95_performance
    #   The performance data that DataSync Discovery collects about the SVM.
    #   @return [Types::MaxP95Performance]
    #
    # @!attribute [rw] recommendations
    #   The Amazon Web Services storage services that DataSync Discovery
    #   recommends for the SVM. For more information, see [Recommendations
    #   provided by DataSync Discovery][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/discovery-understand-recommendations.html
    #   @return [Array<Types::Recommendation>]
    #
    # @!attribute [rw] nfs_exported_volumes
    #   The number of NFS volumes in the SVM.
    #   @return [Integer]
    #
    # @!attribute [rw] recommendation_status
    #   Indicates whether DataSync Discovery recommendations for the SVM are
    #   ready to view, incomplete, or can't be determined.
    #
    #   For more information, see [Recommendation statuses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/discovery-job-statuses.html#recommendation-statuses-table
    #   @return [String]
    #
    # @!attribute [rw] total_snapshot_capacity_used
    #   The amount of storage in the SVM that's being used for snapshots.
    #   @return [Integer]
    #
    # @!attribute [rw] lun_count
    #   The number of LUNs (logical unit numbers) in the SVM.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/NetAppONTAPSVM AWS API Documentation
    #
    class NetAppONTAPSVM < Struct.new(
      :cluster_uuid,
      :resource_id,
      :svm_name,
      :cifs_share_count,
      :enabled_protocols,
      :total_capacity_used,
      :total_capacity_provisioned,
      :total_logical_capacity_used,
      :max_p95_performance,
      :recommendations,
      :nfs_exported_volumes,
      :recommendation_status,
      :total_snapshot_capacity_used,
      :lun_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information that DataSync Discovery collects about a volume in
    # your on-premises storage system.
    #
    # @!attribute [rw] volume_name
    #   The name of the volume.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The universally unique identifier (UUID) of the volume.
    #   @return [String]
    #
    # @!attribute [rw] cifs_share_count
    #   The number of CIFS shares in the volume.
    #   @return [Integer]
    #
    # @!attribute [rw] security_style
    #   The volume's security style (such as Unix or NTFS).
    #   @return [String]
    #
    # @!attribute [rw] svm_uuid
    #   The UUID of the storage virtual machine (SVM) associated with the
    #   volume.
    #   @return [String]
    #
    # @!attribute [rw] svm_name
    #   The name of the SVM associated with the volume.
    #   @return [String]
    #
    # @!attribute [rw] capacity_used
    #   The storage space that's being used in the volume.
    #   @return [Integer]
    #
    # @!attribute [rw] capacity_provisioned
    #   The total storage space that's available in the volume.
    #   @return [Integer]
    #
    # @!attribute [rw] logical_capacity_used
    #   The storage space that's being used in the volume without
    #   accounting for compression or deduplication.
    #   @return [Integer]
    #
    # @!attribute [rw] nfs_exported
    #   The number of NFS volumes in the volume.
    #   @return [Boolean]
    #
    # @!attribute [rw] snapshot_capacity_used
    #   The amount of storage in the volume that's being used for
    #   snapshots.
    #   @return [Integer]
    #
    # @!attribute [rw] max_p95_performance
    #   The performance data that DataSync Discovery collects about the
    #   volume.
    #   @return [Types::MaxP95Performance]
    #
    # @!attribute [rw] recommendations
    #   The Amazon Web Services storage services that DataSync Discovery
    #   recommends for the volume. For more information, see
    #   [Recommendations provided by DataSync Discovery][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/discovery-understand-recommendations.html
    #   @return [Array<Types::Recommendation>]
    #
    # @!attribute [rw] recommendation_status
    #   Indicates whether DataSync Discovery recommendations for the volume
    #   are ready to view, incomplete, or can't be determined.
    #
    #   For more information, see [Recommendation statuses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/discovery-job-statuses.html#recommendation-statuses-table
    #   @return [String]
    #
    # @!attribute [rw] lun_count
    #   The number of LUNs (logical unit numbers) in the volume.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/NetAppONTAPVolume AWS API Documentation
    #
    class NetAppONTAPVolume < Struct.new(
      :volume_name,
      :resource_id,
      :cifs_share_count,
      :security_style,
      :svm_uuid,
      :svm_name,
      :capacity_used,
      :capacity_provisioned,
      :logical_capacity_used,
      :nfs_exported,
      :snapshot_capacity_used,
      :max_p95_performance,
      :recommendations,
      :recommendation_status,
      :lun_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies how DataSync can access a location using the NFS protocol.
    #
    # @!attribute [rw] version
    #   Specifies the NFS version that you want DataSync to use when
    #   mounting your NFS share. If the server refuses to use the version
    #   specified, the task fails.
    #
    #   You can specify the following options:
    #
    #   * `AUTOMATIC` (default): DataSync chooses NFS version 4.1.
    #
    #   * `NFS3`: Stateless protocol version that allows for asynchronous
    #     writes on the server.
    #
    #   * `NFSv4_0`: Stateful, firewall-friendly protocol version that
    #     supports delegations and pseudo file systems.
    #
    #   * `NFSv4_1`: Stateful protocol version that supports sessions,
    #     directory delegations, and parallel data processing. NFS version
    #     4.1 also includes all features available in version 4.0.
    #
    #   <note markdown="1"> DataSync currently only supports NFS version 3 with Amazon FSx for
    #   NetApp ONTAP locations.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/NfsMountOptions AWS API Documentation
    #
    class NfsMountOptions < Struct.new(
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The DataSync agents that are connecting to a Network File System (NFS)
    # location.
    #
    # @!attribute [rw] agent_arns
    #   The Amazon Resource Names (ARNs) of the agents connecting to a
    #   transfer location.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/OnPremConfig AWS API Documentation
    #
    class OnPremConfig < Struct.new(
      :agent_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates how your transfer task is configured. These options include
    # how DataSync handles files, objects, and their associated metadata
    # during your transfer. You also can specify how to verify data
    # integrity, set bandwidth limits for your task, among other options.
    #
    # Each option has a default value. Unless you need to, you don't have
    # to configure any of these options before starting your task.
    #
    # @!attribute [rw] verify_mode
    #   Specifies how and when DataSync checks the integrity of your data
    #   during a transfer.
    #
    #   Default value: `POINT_IN_TIME_CONSISTENT`
    #
    #   `ONLY_FILES_TRANSFERRED` (recommended): DataSync calculates the
    #   checksum of transferred files and metadata at the source location.
    #   At the end of the transfer, DataSync then compares this checksum to
    #   the checksum calculated on those files at the destination.
    #
    #   We recommend this option when transferring to S3 Glacier Flexible
    #   Retrieval or S3 Glacier Deep Archive storage classes. For more
    #   information, see [Storage class considerations with Amazon S3
    #   locations][1].
    #
    #   `POINT_IN_TIME_CONSISTENT`: At the end of the transfer, DataSync
    #   scans the entire source and destination to verify that both
    #   locations are fully synchronized.
    #
    #   You can't use this option when transferring to S3 Glacier Flexible
    #   Retrieval or S3 Glacier Deep Archive storage classes. For more
    #   information, see [Storage class considerations with Amazon S3
    #   locations][1].
    #
    #   `NONE`: DataSync doesn't run additional verification at the end of
    #   the transfer. All data transmissions are still integrity-checked
    #   with checksum verification during the transfer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes
    #   @return [String]
    #
    # @!attribute [rw] overwrite_mode
    #   Specifies whether data at the destination location should be
    #   overwritten or preserved. If set to `NEVER`, a destination file for
    #   example will not be replaced by a source file (even if the
    #   destination file differs from the source file). If you modify files
    #   in the destination and you sync the files, you can use this value to
    #   protect against overwriting those changes.
    #
    #   Some storage classes have specific behaviors that can affect your
    #   Amazon S3 storage cost. For detailed information, see
    #   [Considerations when working with Amazon S3 storage classes in
    #   DataSync][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes
    #   @return [String]
    #
    # @!attribute [rw] atime
    #   Specifies whether to preserve metadata indicating the last time a
    #   file was read or written to. If you set `Atime` to `BEST_EFFORT`,
    #   DataSync attempts to preserve the original `Atime` attribute on all
    #   source files (that is, the version before the `PREPARING` phase of
    #   the task execution).
    #
    #   <note markdown="1"> The behavior of `Atime` isn't fully standard across platforms, so
    #   DataSync can only do this on a best-effort basis.
    #
    #    </note>
    #
    #   Default value: `BEST_EFFORT`
    #
    #   `BEST_EFFORT`: Attempt to preserve the per-file `Atime` value
    #   (recommended).
    #
    #   `NONE`: Ignore `Atime`.
    #
    #   <note markdown="1"> If `Atime` is set to `BEST_EFFORT`, `Mtime` must be set to
    #   `PRESERVE`.
    #
    #    If `Atime` is set to `NONE`, `Mtime` must also be `NONE`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] mtime
    #   Specifies whether to preserve metadata indicating the last time that
    #   a file was written to before the `PREPARING` phase of your task
    #   execution. This option is required when you need to run the a task
    #   more than once.
    #
    #   Default Value: `PRESERVE`
    #
    #   `PRESERVE`: Preserve original `Mtime` (recommended)
    #
    #   `NONE`: Ignore `Mtime`.
    #
    #   <note markdown="1"> If `Mtime` is set to `PRESERVE`, `Atime` must be set to
    #   `BEST_EFFORT`.
    #
    #    If `Mtime` is set to `NONE`, `Atime` must also be set to `NONE`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] uid
    #   Specifies the POSIX user ID (UID) of the file's owner.
    #
    #   For more information, see [Metadata copied by DataSync][1].
    #
    #   Default value: `INT_VALUE`. This preserves the integer value of the
    #   ID.
    #
    #   `INT_VALUE`: Preserve the integer value of UID and group ID (GID)
    #   (recommended).
    #
    #   `NONE`: Ignore UID and GID.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/special-files.html#metadata-copied
    #   @return [String]
    #
    # @!attribute [rw] gid
    #   Specifies the POSIX group ID (GID) of the file's owners.
    #
    #   For more information, see [Metadata copied by DataSync][1].
    #
    #   Default value: `INT_VALUE`. This preserves the integer value of the
    #   ID.
    #
    #   `INT_VALUE`: Preserve the integer value of user ID (UID) and GID
    #   (recommended).
    #
    #   `NONE`: Ignore UID and GID.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/special-files.html#metadata-copied
    #   @return [String]
    #
    # @!attribute [rw] preserve_deleted_files
    #   Specifies whether files in the destination location that don't
    #   exist in the source should be preserved. This option can affect your
    #   Amazon S3 storage cost. If your task deletes objects, you might
    #   incur minimum storage duration charges for certain storage classes.
    #   For detailed information, see [Considerations when working with
    #   Amazon S3 storage classes in DataSync][1].
    #
    #   Default value: `PRESERVE`
    #
    #   `PRESERVE`: Ignore such destination files (recommended).
    #
    #   `REMOVE`: Delete destination files that aren’t present in the
    #   source.
    #
    #   <note markdown="1"> If you set this parameter to `REMOVE`, you can't set `TransferMode`
    #   to `ALL`. When you transfer all data, DataSync doesn't scan your
    #   destination location and doesn't know what to delete.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes
    #   @return [String]
    #
    # @!attribute [rw] preserve_devices
    #   Specifies whether DataSync should preserve the metadata of block and
    #   character devices in the source location and recreate the files with
    #   that device name and metadata on the destination. DataSync copies
    #   only the name and metadata of such devices.
    #
    #   <note markdown="1"> DataSync can't copy the actual contents of these devices because
    #   they're nonterminal and don't return an end-of-file (EOF) marker.
    #
    #    </note>
    #
    #   Default value: `NONE`
    #
    #   `NONE`: Ignore special devices (recommended).
    #
    #   `PRESERVE`: Preserve character and block device metadata. This
    #   option currently isn't supported for Amazon EFS.
    #   @return [String]
    #
    # @!attribute [rw] posix_permissions
    #   Specifies which users or groups can access a file for a specific
    #   purpose such as reading, writing, or execution of the file.
    #
    #   For more information, see [Metadata copied by DataSync][1].
    #
    #   Default value: `PRESERVE`
    #
    #   `PRESERVE`: Preserve POSIX-style permissions (recommended).
    #
    #   `NONE`: Ignore permissions.
    #
    #   <note markdown="1"> DataSync can preserve extant permissions of a source location.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/special-files.html#metadata-copied
    #   @return [String]
    #
    # @!attribute [rw] bytes_per_second
    #   Limits the bandwidth used by a DataSync task. For example, if you
    #   want DataSync to use a maximum of 1 MB, set this value to `1048576`
    #   (`=1024*1024`).
    #   @return [Integer]
    #
    # @!attribute [rw] task_queueing
    #   Specifies whether your transfer tasks should be put into a queue
    #   during certain scenarios when [running multiple tasks][1]. This is
    #   `ENABLED` by default.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/run-task.html#running-multiple-tasks
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   Specifies the type of logs that DataSync publishes to a Amazon
    #   CloudWatch Logs log group. To specify the log group, see
    #   [CloudWatchLogGroupArn][1].
    #
    #   If you set `LogLevel` to `OFF`, no logs are published. `BASIC`
    #   publishes logs on errors for individual files transferred.
    #   `TRANSFER` publishes logs for every file or object that is
    #   transferred and integrity checked.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_CreateTask.html#DataSync-CreateTask-request-CloudWatchLogGroupArn
    #   @return [String]
    #
    # @!attribute [rw] transfer_mode
    #   Determines whether DataSync transfers only the data and metadata
    #   that differ between the source and the destination location or
    #   transfers all the content from the source (without comparing what's
    #   in the destination).
    #
    #   `CHANGED`: DataSync copies only data or metadata that is new or
    #   different content from the source location to the destination
    #   location.
    #
    #   `ALL`: DataSync copies all source location content to the
    #   destination (without comparing what's in the destination).
    #   @return [String]
    #
    # @!attribute [rw] security_descriptor_copy_flags
    #   Specifies which components of the SMB security descriptor are copied
    #   from source to destination objects.
    #
    #   This value is only used for transfers between SMB and Amazon FSx for
    #   Windows File Server locations or between two FSx for Windows File
    #   Server locations. For more information, see [how DataSync handles
    #   metadata][1].
    #
    #   Default value: `OWNER_DACL`
    #
    #   `OWNER_DACL`: For each copied object, DataSync copies the following
    #   metadata:
    #
    #   * The object owner.
    #
    #   * NTFS discretionary access control lists (DACLs), which determine
    #     whether to grant access to an object.
    #
    #     DataSync won't copy NTFS system access control lists (SACLs) with
    #     this option.
    #
    #   `OWNER_DACL_SACL`: For each copied object, DataSync copies the
    #   following metadata:
    #
    #   * The object owner.
    #
    #   * NTFS discretionary access control lists (DACLs), which determine
    #     whether to grant access to an object.
    #
    #   * SACLs, which are used by administrators to log attempts to access
    #     a secured object.
    #
    #     Copying SACLs requires granting additional permissions to the
    #     Windows user that DataSync uses to access your SMB location. For
    #     information about choosing a user that ensures sufficient
    #     permissions to files, folders, and metadata, see
    #     [user](create-smb-location.html#SMBuser).
    #
    #   `NONE`: None of the SMB security descriptor components are copied.
    #   Destination objects are owned by the user that was provided for
    #   accessing the destination location. DACLs and SACLs are set based on
    #   the destination server’s configuration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/special-files.html
    #   @return [String]
    #
    # @!attribute [rw] object_tags
    #   Specifies whether object tags are preserved when transferring
    #   between object storage systems. If you want your DataSync task to
    #   ignore object tags, specify the `NONE` value.
    #
    #   Default Value: `PRESERVE`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/Options AWS API Documentation
    #
    class Options < Struct.new(
      :verify_mode,
      :overwrite_mode,
      :atime,
      :mtime,
      :uid,
      :gid,
      :preserve_deleted_files,
      :preserve_devices,
      :posix_permissions,
      :bytes_per_second,
      :task_queueing,
      :log_level,
      :transfer_mode,
      :security_descriptor_copy_flags,
      :object_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The types of performance data that DataSync Discovery collects about
    # an on-premises storage system resource.
    #
    # @!attribute [rw] iops
    #   The IOPS peaks for an on-premises storage system resource. Each data
    #   point represents the 95th percentile peak value during a 1-hour
    #   interval.
    #   @return [Types::IOPS]
    #
    # @!attribute [rw] throughput
    #   The throughput peaks for an on-premises storage system resource.
    #   Each data point represents the 95th percentile peak value during a
    #   1-hour interval.
    #   @return [Types::Throughput]
    #
    # @!attribute [rw] latency
    #   The latency peaks for an on-premises storage system resource. Each
    #   data point represents the 95th percentile peak value during a 1-hour
    #   interval.
    #   @return [Types::Latency]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/P95Metrics AWS API Documentation
    #
    class P95Metrics < Struct.new(
      :iops,
      :throughput,
      :latency)
      SENSITIVE = []
      include Aws::Structure
    end

    # The platform-related details about the DataSync agent, such as the
    # version number.
    #
    # @!attribute [rw] version
    #   The version of the DataSync agent.
    #
    #   Beginning December 7, 2023, we will discontinue version 1 DataSync
    #   agents. Check the DataSync console to see if you have affected
    #   agents. If you do, [replace][1] those agents before then to avoid
    #   data transfer or storage discovery disruptions. If you need more
    #   help, contact [Amazon Web Services Support][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/replacing-agent.html
    #   [2]: https://aws.amazon.com/contact-us/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/Platform AWS API Documentation
    #
    class Platform < Struct.new(
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies how your DataSync agent connects to Amazon Web Services
    # using a [virtual private cloud (VPC) service endpoint][1]. An agent
    # that uses a VPC endpoint isn't accessible over the public internet.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/choose-service-endpoint.html#choose-service-endpoint-vpc
    #
    # @!attribute [rw] vpc_endpoint_id
    #   Specifies the ID of the VPC endpoint that your agent connects to.
    #   @return [String]
    #
    # @!attribute [rw] private_link_endpoint
    #   Specifies the VPC endpoint provided by [Amazon Web Services
    #   PrivateLink][1] that your agent connects to.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html
    #   @return [String]
    #
    # @!attribute [rw] subnet_arns
    #   Specifies the ARN of the subnet where your VPC endpoint is located.
    #   You can only specify one ARN.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_arns
    #   Specifies the Amazon Resource Names (ARN) of the security group that
    #   provides DataSync access to your VPC endpoint. You can only specify
    #   one ARN.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/PrivateLinkConfig AWS API Documentation
    #
    class PrivateLinkConfig < Struct.new(
      :vpc_endpoint_id,
      :private_link_endpoint,
      :subnet_arns,
      :security_group_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Quality of Protection (QOP) configuration specifies the Remote
    # Procedure Call (RPC) and data transfer privacy settings configured on
    # the Hadoop Distributed File System (HDFS) cluster.
    #
    # @!attribute [rw] rpc_protection
    #   The RPC protection setting configured on the HDFS cluster. This
    #   setting corresponds to your `hadoop.rpc.protection` setting in your
    #   `core-site.xml` file on your Hadoop cluster.
    #   @return [String]
    #
    # @!attribute [rw] data_transfer_protection
    #   The data transfer protection setting configured on the HDFS cluster.
    #   This setting corresponds to your `dfs.data.transfer.protection`
    #   setting in the `hdfs-site.xml` file on your Hadoop cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/QopConfiguration AWS API Documentation
    #
    class QopConfiguration < Struct.new(
      :rpc_protection,
      :data_transfer_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about an Amazon Web Services storage service that DataSync
    # Discovery recommends for a resource in your on-premises storage
    # system.
    #
    # For more information, see [Recommendations provided by DataSync
    # Discovery][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/discovery-understand-recommendations.html
    #
    # @!attribute [rw] storage_type
    #   A recommended Amazon Web Services storage service that you can
    #   migrate data to based on information that DataSync Discovery
    #   collects about your on-premises storage system.
    #   @return [String]
    #
    # @!attribute [rw] storage_configuration
    #   Information about how you can set up a recommended Amazon Web
    #   Services storage service.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] estimated_monthly_storage_cost
    #   The estimated monthly cost of the recommended Amazon Web Services
    #   storage service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :storage_type,
      :storage_configuration,
      :estimated_monthly_storage_cost)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_system_arn
    #   Specifies the Amazon Resource Name (ARN) of the storage system that
    #   you want to permanently remove from DataSync Discovery.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/RemoveStorageSystemRequest AWS API Documentation
    #
    class RemoveStorageSystemRequest < Struct.new(
      :storage_system_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/RemoveStorageSystemResponse AWS API Documentation
    #
    class RemoveStorageSystemResponse < Aws::EmptyStructure; end

    # Specifies where DataSync uploads your [task report][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
    #
    # @!attribute [rw] s3
    #   Specifies the Amazon S3 bucket where DataSync uploads your task
    #   report.
    #   @return [Types::ReportDestinationS3]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ReportDestination AWS API Documentation
    #
    class ReportDestination < Struct.new(
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the Amazon S3 bucket where DataSync uploads your [task
    # report][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
    #
    # @!attribute [rw] subdirectory
    #   Specifies a bucket prefix for your report.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_arn
    #   Specifies the ARN of the S3 bucket where DataSync uploads your
    #   report.
    #   @return [String]
    #
    # @!attribute [rw] bucket_access_role_arn
    #   Specifies the Amazon Resource Name (ARN) of the IAM policy that
    #   allows DataSync to upload a task report to your S3 bucket. For more
    #   information, see [Allowing DataSync to upload a task report to an
    #   Amazon S3 bucket][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/https:/docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ReportDestinationS3 AWS API Documentation
    #
    class ReportDestinationS3 < Struct.new(
      :subdirectory,
      :s3_bucket_arn,
      :bucket_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the level of detail for a particular aspect of your DataSync
    # [task report][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
    #
    # @!attribute [rw] report_level
    #   Specifies whether your task report includes errors only or successes
    #   and errors.
    #
    #   For example, your report might mostly include only what didn't go
    #   well in your transfer (`ERRORS_ONLY`). At the same time, you want to
    #   verify that your [task filter][1] is working correctly. In this
    #   situation, you can get a list of what files DataSync successfully
    #   skipped and if something transferred that you didn't to transfer
    #   (`SUCCESSES_AND_ERRORS`).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ReportOverride AWS API Documentation
    #
    class ReportOverride < Struct.new(
      :report_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # The level of detail included in each aspect of your DataSync [task
    # report][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
    #
    # @!attribute [rw] transferred
    #   Specifies the level of reporting for the files, objects, and
    #   directories that DataSync attempted to transfer.
    #   @return [Types::ReportOverride]
    #
    # @!attribute [rw] verified
    #   Specifies the level of reporting for the files, objects, and
    #   directories that DataSync attempted to verify at the end of your
    #   transfer.
    #   @return [Types::ReportOverride]
    #
    # @!attribute [rw] deleted
    #   Specifies the level of reporting for the files, objects, and
    #   directories that DataSync attempted to delete in your destination
    #   location. This only applies if you [configure your task][1] to
    #   delete data in the destination that isn't in the source.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/configure-metadata.html
    #   @return [Types::ReportOverride]
    #
    # @!attribute [rw] skipped
    #   Specifies the level of reporting for the files, objects, and
    #   directories that DataSync attempted to skip during your transfer.
    #   @return [Types::ReportOverride]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ReportOverrides AWS API Documentation
    #
    class ReportOverrides < Struct.new(
      :transferred,
      :verified,
      :deleted,
      :skipped)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether DataSync created a complete [task report][1] for
    # your transfer.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
    #
    # @!attribute [rw] status
    #   Indicates whether DataSync is still working on your report, created
    #   a report, or can't create a complete report.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   Indicates the code associated with the error if DataSync can't
    #   create a complete report.
    #   @return [String]
    #
    # @!attribute [rw] error_detail
    #   Provides details about issues creating a report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ReportResult AWS API Documentation
    #
    class ReportResult < Struct.new(
      :status,
      :error_code,
      :error_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information provided by DataSync Discovery about the resources in your
    # on-premises storage system.
    #
    # @!attribute [rw] net_app_ontapsv_ms
    #   The information that DataSync Discovery collects about storage
    #   virtual machines (SVMs) in your on-premises storage system.
    #   @return [Array<Types::NetAppONTAPSVM>]
    #
    # @!attribute [rw] net_app_ontap_volumes
    #   The information that DataSync Discovery collects about volumes in
    #   your on-premises storage system.
    #   @return [Array<Types::NetAppONTAPVolume>]
    #
    # @!attribute [rw] net_app_ontap_clusters
    #   The information that DataSync Discovery collects about the cluster
    #   in your on-premises storage system.
    #   @return [Array<Types::NetAppONTAPCluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ResourceDetails AWS API Documentation
    #
    class ResourceDetails < Struct.new(
      :net_app_ontapsv_ms,
      :net_app_ontap_volumes,
      :net_app_ontap_clusters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information, including performance data and capacity usage, provided
    # by DataSync Discovery about a resource in your on-premises storage
    # system.
    #
    # @!attribute [rw] timestamp
    #   The time when DataSync Discovery collected this information from the
    #   resource.
    #   @return [Time]
    #
    # @!attribute [rw] p95_metrics
    #   The types of performance data that DataSync Discovery collects about
    #   the on-premises storage system resource.
    #   @return [Types::P95Metrics]
    #
    # @!attribute [rw] capacity
    #   The storage capacity of the on-premises storage system resource.
    #   @return [Types::Capacity]
    #
    # @!attribute [rw] resource_id
    #   The universally unique identifier (UUID) of the on-premises storage
    #   system resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of on-premises storage system resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ResourceMetrics AWS API Documentation
    #
    class ResourceMetrics < Struct.new(
      :timestamp,
      :p95_metrics,
      :capacity,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Resource Name (ARN) of the Identity and Access Management
    # (IAM) role used to access an Amazon S3 bucket.
    #
    # For detailed information about using such a role, see Creating a
    # Location for Amazon S3 in the *DataSync User Guide*.
    #
    # @!attribute [rw] bucket_access_role_arn
    #   The ARN of the IAM role for accessing the S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/S3Config AWS API Documentation
    #
    class S3Config < Struct.new(
      :bucket_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the version of the Server Message Block (SMB) protocol that
    # DataSync uses to access an SMB file server.
    #
    # @!attribute [rw] version
    #   By default, DataSync automatically chooses an SMB protocol version
    #   based on negotiation with your SMB file server. You also can
    #   configure DataSync to use a specific SMB version, but we recommend
    #   doing this only if DataSync has trouble negotiating with the SMB
    #   file server automatically.
    #
    #   These are the following options for configuring the SMB version:
    #
    #   * `AUTOMATIC` (default): DataSync and the SMB file server negotiate
    #     the highest version of SMB that they mutually support between 2.1
    #     and 3.1.1.
    #
    #     This is the recommended option. If you instead choose a specific
    #     version that your file server doesn't support, you may get an
    #     `Operation Not Supported` error.
    #
    #   * `SMB3`: Restricts the protocol negotiation to only SMB version
    #     3.0.2.
    #
    #   * `SMB2`: Restricts the protocol negotiation to only SMB version
    #     2.1.
    #
    #   * `SMB2_0`: Restricts the protocol negotiation to only SMB version
    #     2.0.
    #
    #   * `SMB1`: Restricts the protocol negotiation to only SMB version
    #     1.0.
    #
    #     <note markdown="1"> The `SMB1` option isn't available when [creating an Amazon FSx
    #     for NetApp ONTAP location][1].
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_CreateLocationFsxOntap.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/SmbMountOptions AWS API Documentation
    #
    class SmbMountOptions < Struct.new(
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_system_arn
    #   Specifies the Amazon Resource Name (ARN) of the on-premises storage
    #   system that you want to run the discovery job on.
    #   @return [String]
    #
    # @!attribute [rw] collection_duration_minutes
    #   Specifies in minutes how long you want the discovery job to run.
    #
    #   <note markdown="1"> For more accurate recommendations, we recommend a duration of at
    #   least 14 days. Longer durations allow time to collect a sufficient
    #   number of data points and provide a realistic representation of
    #   storage performance and utilization.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   Specifies a client token to make sure requests with this API
    #   operation are idempotent. If you don't specify a client token,
    #   DataSync generates one for you automatically.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies labels that help you categorize, filter, and search for
    #   your Amazon Web Services resources.
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/StartDiscoveryJobRequest AWS API Documentation
    #
    class StartDiscoveryJobRequest < Struct.new(
      :storage_system_arn,
      :collection_duration_minutes,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discovery_job_arn
    #   The ARN of the discovery job that you started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/StartDiscoveryJobResponse AWS API Documentation
    #
    class StartDiscoveryJobResponse < Struct.new(
      :discovery_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # StartTaskExecutionRequest
    #
    # @!attribute [rw] task_arn
    #   Specifies the Amazon Resource Name (ARN) of the task that you want
    #   to start.
    #   @return [String]
    #
    # @!attribute [rw] override_options
    #   Indicates how your transfer task is configured. These options
    #   include how DataSync handles files, objects, and their associated
    #   metadata during your transfer. You also can specify how to verify
    #   data integrity, set bandwidth limits for your task, among other
    #   options.
    #
    #   Each option has a default value. Unless you need to, you don't have
    #   to configure any of these options before starting your task.
    #   @return [Types::Options]
    #
    # @!attribute [rw] includes
    #   Specifies a list of filter rules that determines which files to
    #   include when running a task. The pattern should contain a single
    #   filter string that consists of the patterns to include. The patterns
    #   are delimited by "\|" (that is, a pipe), for example,
    #   `"/folder1|/folder2"`.
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] excludes
    #   Specifies a list of filter rules that determines which files to
    #   exclude from a task. The list contains a single filter string that
    #   consists of the patterns to exclude. The patterns are delimited by
    #   "\|" (that is, a pipe), for example, `"/folder1|/folder2"`.
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] tags
    #   Specifies the tags that you want to apply to the Amazon Resource
    #   Name (ARN) representing the task execution.
    #
    #   *Tags* are key-value pairs that help you manage, filter, and search
    #   for your DataSync resources.
    #   @return [Array<Types::TagListEntry>]
    #
    # @!attribute [rw] task_report_config
    #   Specifies how you want to configure a task report, which provides
    #   detailed information about for your DataSync transfer.
    #   @return [Types::TaskReportConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/StartTaskExecutionRequest AWS API Documentation
    #
    class StartTaskExecutionRequest < Struct.new(
      :task_arn,
      :override_options,
      :includes,
      :excludes,
      :tags,
      :task_report_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # StartTaskExecutionResponse
    #
    # @!attribute [rw] task_execution_arn
    #   The ARN of the running task execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/StartTaskExecutionResponse AWS API Documentation
    #
    class StartTaskExecutionResponse < Struct.new(
      :task_execution_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discovery_job_arn
    #   Specifies the Amazon Resource Name (ARN) of the discovery job that
    #   you want to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/StopDiscoveryJobRequest AWS API Documentation
    #
    class StopDiscoveryJobRequest < Struct.new(
      :discovery_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/StopDiscoveryJobResponse AWS API Documentation
    #
    class StopDiscoveryJobResponse < Aws::EmptyStructure; end

    # Information that identifies an on-premises storage system that you're
    # using with DataSync Discovery.
    #
    # @!attribute [rw] storage_system_arn
    #   The Amazon Resource Names (ARN) of an on-premises storage system
    #   that you added to DataSync Discovery.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of an on-premises storage system that you added to DataSync
    #   Discovery.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/StorageSystemListEntry AWS API Documentation
    #
    class StorageSystemListEntry < Struct.new(
      :storage_system_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair representing a single tag that's been applied to an
    # Amazon Web Services resource.
    #
    # @!attribute [rw] key
    #   The key for an Amazon Web Services resource tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for an Amazon Web Services resource tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TagListEntry AWS API Documentation
    #
    class TagListEntry < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # TagResourceRequest
    #
    # @!attribute [rw] resource_arn
    #   Specifies the Amazon Resource Name (ARN) of the resource to apply
    #   the tag to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies the tags that you want to apply to the resource.
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Represents a single entry in a list of task executions.
    # `TaskExecutionListEntry` returns an array that contains a list of
    # specific invocations of a task when the [ListTaskExecutions][1]
    # operation is called.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_ListTaskExecutions.html
    #
    # @!attribute [rw] task_execution_arn
    #   The Amazon Resource Name (ARN) of the task that was executed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a task execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TaskExecutionListEntry AWS API Documentation
    #
    class TaskExecutionListEntry < Struct.new(
      :task_execution_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the detailed result of a `TaskExecution` operation. This
    # result includes the time in milliseconds spent in each phase, the
    # status of the task execution, and the errors encountered.
    #
    # @!attribute [rw] prepare_duration
    #   The total time in milliseconds that DataSync spent in the PREPARING
    #   phase.
    #   @return [Integer]
    #
    # @!attribute [rw] prepare_status
    #   The status of the PREPARING phase.
    #   @return [String]
    #
    # @!attribute [rw] total_duration
    #   The total time in milliseconds that DataSync took to transfer the
    #   file from the source to the destination location.
    #   @return [Integer]
    #
    # @!attribute [rw] transfer_duration
    #   The total time in milliseconds that DataSync spent in the
    #   TRANSFERRING phase.
    #   @return [Integer]
    #
    # @!attribute [rw] transfer_status
    #   The status of the TRANSFERRING phase.
    #   @return [String]
    #
    # @!attribute [rw] verify_duration
    #   The total time in milliseconds that DataSync spent in the VERIFYING
    #   phase.
    #   @return [Integer]
    #
    # @!attribute [rw] verify_status
    #   The status of the VERIFYING phase.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   Errors that DataSync encountered during execution of the task. You
    #   can use this error code to help troubleshoot issues.
    #   @return [String]
    #
    # @!attribute [rw] error_detail
    #   Detailed description of an error that was encountered during the
    #   task execution. You can use this information to help troubleshoot
    #   issues.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TaskExecutionResultDetail AWS API Documentation
    #
    class TaskExecutionResultDetail < Struct.new(
      :prepare_duration,
      :prepare_status,
      :total_duration,
      :transfer_duration,
      :transfer_status,
      :verify_duration,
      :verify_status,
      :error_code,
      :error_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can use API filters to narrow down the list of resources returned
    # by `ListTasks`. For example, to retrieve all tasks on a source
    # location, you can use `ListTasks` with filter name `LocationId` and
    # `Operator Equals` with the ARN for the location.
    #
    # For more information, see [filtering DataSync resources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/query-resources.html
    #
    # @!attribute [rw] name
    #   The name of the filter being used. Each API call supports a list of
    #   filters that are available for it. For example, `LocationId` for
    #   `ListTasks`.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values that you want to filter for. For example, you might want
    #   to display only tasks for a specific destination location.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator that is used to compare filter values (for example,
    #   `Equals` or `Contains`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TaskFilter AWS API Documentation
    #
    class TaskFilter < Struct.new(
      :name,
      :values,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single entry in a list of tasks. `TaskListEntry` returns
    # an array that contains a list of tasks when the [ListTasks][1]
    # operation is called. A task includes the source and destination file
    # systems to sync and the options to use for the tasks.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_ListTasks.html
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the task.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TaskListEntry AWS API Documentation
    #
    class TaskListEntry < Struct.new(
      :task_arn,
      :status,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies how you want to configure a task report, which provides
    # detailed information about for your DataSync transfer.
    #
    # For more information, see [Task reports][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
    #
    # @!attribute [rw] destination
    #   Specifies the Amazon S3 bucket where DataSync uploads your task
    #   report. For more information, see [Task reports][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html#task-report-access
    #   @return [Types::ReportDestination]
    #
    # @!attribute [rw] output_type
    #   Specifies the type of task report that you want:
    #
    #   * `SUMMARY_ONLY`: Provides necessary details about your task,
    #     including the number of files, objects, and directories
    #     transferred and transfer duration.
    #
    #   * `STANDARD`: Provides complete details about your task, including a
    #     full list of files, objects, and directories that were
    #     transferred, skipped, verified, and more.
    #   @return [String]
    #
    # @!attribute [rw] report_level
    #   Specifies whether you want your task report to include only what
    #   went wrong with your transfer or a list of what succeeded and
    #   didn't.
    #
    #   * `ERRORS_ONLY`: A report shows what DataSync was unable to
    #     transfer, skip, verify, and delete.
    #
    #   * `SUCCESSES_AND_ERRORS`: A report shows what DataSync was able and
    #     unable to transfer, skip, verify, and delete.
    #   @return [String]
    #
    # @!attribute [rw] object_version_ids
    #   Specifies whether your task report includes the new version of each
    #   object transferred into an S3 bucket. This only applies if you
    #   [enable versioning on your bucket][1]. Keep in mind that setting
    #   this to `INCLUDE` can increase the duration of your task execution.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/manage-versioning-examples.html
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   Customizes the reporting level for aspects of your task report. For
    #   example, your report might generally only include errors, but you
    #   could specify that you want a list of successes and errors just for
    #   the files that DataSync attempted to delete in your destination
    #   location.
    #   @return [Types::ReportOverrides]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TaskReportConfig AWS API Documentation
    #
    class TaskReportConfig < Struct.new(
      :destination,
      :output_type,
      :report_level,
      :object_version_ids,
      :overrides)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the schedule you want your task to use for repeated
    # executions. For more information, see [Schedule Expressions for
    # Rules][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html
    #
    # @!attribute [rw] schedule_expression
    #   A cron expression that specifies when DataSync initiates a scheduled
    #   transfer from a source to a destination location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TaskSchedule AWS API Documentation
    #
    class TaskSchedule < Struct.new(
      :schedule_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # The throughput peaks for an on-premises storage system volume. Each
    # data point represents the 95th percentile peak value during a 1-hour
    # interval.
    #
    # @!attribute [rw] read
    #   Peak throughput related to read operations.
    #   @return [Float]
    #
    # @!attribute [rw] write
    #   Peak throughput related to write operations.
    #   @return [Float]
    #
    # @!attribute [rw] other
    #   Peak throughput unrelated to read and write operations.
    #   @return [Float]
    #
    # @!attribute [rw] total
    #   Peak total throughput on your on-premises storage system resource.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/Throughput AWS API Documentation
    #
    class Throughput < Struct.new(
      :read,
      :write,
      :other,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # UntagResourceRequest
    #
    # @!attribute [rw] resource_arn
    #   Specifies the Amazon Resource Name (ARN) of the resource to remove
    #   the tags from.
    #   @return [String]
    #
    # @!attribute [rw] keys
    #   Specifies the keys in the tags that you want to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # UpdateAgentRequest
    #
    # @!attribute [rw] agent_arn
    #   The Amazon Resource Name (ARN) of the agent to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that you want to use to configure the agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateAgentRequest AWS API Documentation
    #
    class UpdateAgentRequest < Struct.new(
      :agent_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateAgentResponse AWS API Documentation
    #
    class UpdateAgentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] discovery_job_arn
    #   Specifies the Amazon Resource Name (ARN) of the discovery job that
    #   you want to update.
    #   @return [String]
    #
    # @!attribute [rw] collection_duration_minutes
    #   Specifies in minutes how long that you want the discovery job to
    #   run. (You can't set this parameter to less than the number of
    #   minutes that the job has already run for.)
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateDiscoveryJobRequest AWS API Documentation
    #
    class UpdateDiscoveryJobRequest < Struct.new(
      :discovery_job_arn,
      :collection_duration_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateDiscoveryJobResponse AWS API Documentation
    #
    class UpdateDiscoveryJobResponse < Aws::EmptyStructure; end

    # @!attribute [rw] location_arn
    #   Specifies the ARN of the Azure Blob Storage transfer location that
    #   you're updating.
    #   @return [String]
    #
    # @!attribute [rw] subdirectory
    #   Specifies path segments if you want to limit your transfer to a
    #   virtual directory in your container (for example, `/my/images`).
    #   @return [String]
    #
    # @!attribute [rw] authentication_type
    #   Specifies the authentication method DataSync uses to access your
    #   Azure Blob Storage. DataSync can access blob storage using a shared
    #   access signature (SAS).
    #   @return [String]
    #
    # @!attribute [rw] sas_configuration
    #   Specifies the SAS configuration that allows DataSync to access your
    #   Azure Blob Storage.
    #   @return [Types::AzureBlobSasConfiguration]
    #
    # @!attribute [rw] blob_type
    #   Specifies the type of blob that you want your objects or files to be
    #   when transferring them into Azure Blob Storage. Currently, DataSync
    #   only supports moving data into Azure Blob Storage as block blobs.
    #   For more information on blob types, see the [Azure Blob Storage
    #   documentation][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/rest/api/storageservices/understanding-block-blobs--append-blobs--and-page-blobs
    #   @return [String]
    #
    # @!attribute [rw] access_tier
    #   Specifies the access tier that you want your objects or files
    #   transferred into. This only applies when using the location as a
    #   transfer destination. For more information, see [Access tiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access-tiers
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   Specifies the Amazon Resource Name (ARN) of the DataSync agent that
    #   can connect with your Azure Blob Storage container.
    #
    #   You can specify more than one agent. For more information, see
    #   [Using multiple agents for your transfer][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/multiple-agents.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationAzureBlobRequest AWS API Documentation
    #
    class UpdateLocationAzureBlobRequest < Struct.new(
      :location_arn,
      :subdirectory,
      :authentication_type,
      :sas_configuration,
      :blob_type,
      :access_tier,
      :agent_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationAzureBlobResponse AWS API Documentation
    #
    class UpdateLocationAzureBlobResponse < Aws::EmptyStructure; end

    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the source HDFS cluster location.
    #   @return [String]
    #
    # @!attribute [rw] subdirectory
    #   A subdirectory in the HDFS cluster. This subdirectory is used to
    #   read data from or write data to the HDFS cluster.
    #   @return [String]
    #
    # @!attribute [rw] name_nodes
    #   The NameNode that manages the HDFS namespace. The NameNode performs
    #   operations such as opening, closing, and renaming files and
    #   directories. The NameNode contains the information to map blocks of
    #   data to the DataNodes. You can use only one NameNode.
    #   @return [Array<Types::HdfsNameNode>]
    #
    # @!attribute [rw] block_size
    #   The size of the data blocks to write into the HDFS cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] replication_factor
    #   The number of DataNodes to replicate the data to when writing to the
    #   HDFS cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_provider_uri
    #   The URI of the HDFS cluster's Key Management Server (KMS).
    #   @return [String]
    #
    # @!attribute [rw] qop_configuration
    #   The Quality of Protection (QOP) configuration specifies the Remote
    #   Procedure Call (RPC) and data transfer privacy settings configured
    #   on the Hadoop Distributed File System (HDFS) cluster.
    #   @return [Types::QopConfiguration]
    #
    # @!attribute [rw] authentication_type
    #   The type of authentication used to determine the identity of the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] simple_user
    #   The user name used to identify the client on the host operating
    #   system.
    #   @return [String]
    #
    # @!attribute [rw] kerberos_principal
    #   The Kerberos principal with access to the files and folders on the
    #   HDFS cluster.
    #   @return [String]
    #
    # @!attribute [rw] kerberos_keytab
    #   The Kerberos key table (keytab) that contains mappings between the
    #   defined Kerberos principal and the encrypted keys. You can load the
    #   keytab from a file by providing the file's address. If you use the
    #   CLI, it performs base64 encoding for you. Otherwise, provide the
    #   base64-encoded text.
    #   @return [String]
    #
    # @!attribute [rw] kerberos_krb_5_conf
    #   The `krb5.conf` file that contains the Kerberos configuration
    #   information. You can load the `krb5.conf` file by providing the
    #   file's address. If you're using the CLI, it performs the base64
    #   encoding for you. Otherwise, provide the base64-encoded text.
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   The ARNs of the agents that are used to connect to the HDFS cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationHdfsRequest AWS API Documentation
    #
    class UpdateLocationHdfsRequest < Struct.new(
      :location_arn,
      :subdirectory,
      :name_nodes,
      :block_size,
      :replication_factor,
      :kms_key_provider_uri,
      :qop_configuration,
      :authentication_type,
      :simple_user,
      :kerberos_principal,
      :kerberos_keytab,
      :kerberos_krb_5_conf,
      :agent_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationHdfsResponse AWS API Documentation
    #
    class UpdateLocationHdfsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] location_arn
    #   Specifies the Amazon Resource Name (ARN) of the NFS transfer
    #   location that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] subdirectory
    #   Specifies the export path in your NFS file server that you want
    #   DataSync to mount.
    #
    #   This path (or a subdirectory of the path) is where DataSync
    #   transfers data to or from. For information on configuring an export
    #   for DataSync, see [Accessing NFS file servers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#accessing-nfs
    #   @return [String]
    #
    # @!attribute [rw] on_prem_config
    #   The DataSync agents that are connecting to a Network File System
    #   (NFS) location.
    #   @return [Types::OnPremConfig]
    #
    # @!attribute [rw] mount_options
    #   Specifies how DataSync can access a location using the NFS protocol.
    #   @return [Types::NfsMountOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationNfsRequest AWS API Documentation
    #
    class UpdateLocationNfsRequest < Struct.new(
      :location_arn,
      :subdirectory,
      :on_prem_config,
      :mount_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationNfsResponse AWS API Documentation
    #
    class UpdateLocationNfsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] location_arn
    #   Specifies the ARN of the object storage system location that you're
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] server_port
    #   Specifies the port that your object storage server accepts inbound
    #   network traffic on (for example, port 443).
    #   @return [Integer]
    #
    # @!attribute [rw] server_protocol
    #   Specifies the protocol that your object storage server uses to
    #   communicate.
    #   @return [String]
    #
    # @!attribute [rw] subdirectory
    #   Specifies the object prefix for your object storage server. If this
    #   is a source location, DataSync only copies objects with this prefix.
    #   If this is a destination location, DataSync writes all objects with
    #   this prefix.
    #   @return [String]
    #
    # @!attribute [rw] access_key
    #   Specifies the access key (for example, a user name) if credentials
    #   are required to authenticate with the object storage server.
    #   @return [String]
    #
    # @!attribute [rw] secret_key
    #   Specifies the secret key (for example, a password) if credentials
    #   are required to authenticate with the object storage server.
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   Specifies the Amazon Resource Names (ARNs) of the DataSync agents
    #   that can securely connect with your location.
    #   @return [Array<String>]
    #
    # @!attribute [rw] server_certificate
    #   Specifies a certificate to authenticate with an object storage
    #   system that uses a private or self-signed certificate authority
    #   (CA). You must specify a Base64-encoded `.pem` file (for example,
    #   `file:///home/user/.ssh/storage_sys_certificate.pem`). The
    #   certificate can be up to 32768 bytes (before Base64 encoding).
    #
    #   To use this parameter, configure `ServerProtocol` to `HTTPS`.
    #
    #   Updating the certificate doesn't interfere with tasks that you have
    #   in progress.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationObjectStorageRequest AWS API Documentation
    #
    class UpdateLocationObjectStorageRequest < Struct.new(
      :location_arn,
      :server_port,
      :server_protocol,
      :subdirectory,
      :access_key,
      :secret_key,
      :agent_arns,
      :server_certificate)
      SENSITIVE = [:secret_key]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationObjectStorageResponse AWS API Documentation
    #
    class UpdateLocationObjectStorageResponse < Aws::EmptyStructure; end

    # @!attribute [rw] location_arn
    #   Specifies the ARN of the SMB location that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] subdirectory
    #   Specifies the name of the share exported by your SMB file server
    #   where DataSync will read or write data. You can include a
    #   subdirectory in the share path (for example,
    #   `/path/to/subdirectory`). Make sure that other SMB clients in your
    #   network can also mount this path.
    #
    #   To copy all data in the specified subdirectory, DataSync must be
    #   able to mount the SMB share and access all of its data. For more
    #   information, see [required permissions][1] for SMB locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #   @return [String]
    #
    # @!attribute [rw] user
    #   Specifies the user name that can mount your SMB file server and has
    #   permission to access the files and folders involved in your
    #   transfer.
    #
    #   For information about choosing a user with the right level of access
    #   for your transfer, see [required permissions][1] for SMB locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   Specifies the Windows domain name that your SMB file server belongs
    #   to.
    #
    #   If you have multiple domains in your environment, configuring this
    #   parameter makes sure that DataSync connects to the right file
    #   server.
    #
    #   For more information, see [required permissions][1] for SMB
    #   locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #   @return [String]
    #
    # @!attribute [rw] password
    #   Specifies the password of the user who can mount your SMB file
    #   server and has permission to access the files and folders involved
    #   in your transfer.
    #
    #   For more information, see [required permissions][1] for SMB
    #   locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   Specifies the DataSync agent (or agents) which you want to connect
    #   to your SMB file server. You specify an agent by using its Amazon
    #   Resource Name (ARN).
    #   @return [Array<String>]
    #
    # @!attribute [rw] mount_options
    #   Specifies the version of the Server Message Block (SMB) protocol
    #   that DataSync uses to access an SMB file server.
    #   @return [Types::SmbMountOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationSmbRequest AWS API Documentation
    #
    class UpdateLocationSmbRequest < Struct.new(
      :location_arn,
      :subdirectory,
      :user,
      :domain,
      :password,
      :agent_arns,
      :mount_options)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationSmbResponse AWS API Documentation
    #
    class UpdateLocationSmbResponse < Aws::EmptyStructure; end

    # @!attribute [rw] storage_system_arn
    #   Specifies the ARN of the on-premises storage system that you want
    #   reconfigure.
    #   @return [String]
    #
    # @!attribute [rw] server_configuration
    #   Specifies the server name and network port required to connect with
    #   your on-premises storage system's management interface.
    #   @return [Types::DiscoveryServerConfiguration]
    #
    # @!attribute [rw] agent_arns
    #   Specifies the Amazon Resource Name (ARN) of the DataSync agent that
    #   connects to and reads your on-premises storage system. You can only
    #   specify one ARN.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   Specifies a familiar name for your on-premises storage system.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_log_group_arn
    #   Specifies the ARN of the Amazon CloudWatch log group for monitoring
    #   and logging discovery job events.
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   Specifies the user name and password for accessing your on-premises
    #   storage system's management interface.
    #   @return [Types::Credentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateStorageSystemRequest AWS API Documentation
    #
    class UpdateStorageSystemRequest < Struct.new(
      :storage_system_arn,
      :server_configuration,
      :agent_arns,
      :name,
      :cloud_watch_log_group_arn,
      :credentials)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateStorageSystemResponse AWS API Documentation
    #
    class UpdateStorageSystemResponse < Aws::EmptyStructure; end

    # @!attribute [rw] task_execution_arn
    #   Specifies the Amazon Resource Name (ARN) of the task execution that
    #   you're updating.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   Indicates how your transfer task is configured. These options
    #   include how DataSync handles files, objects, and their associated
    #   metadata during your transfer. You also can specify how to verify
    #   data integrity, set bandwidth limits for your task, among other
    #   options.
    #
    #   Each option has a default value. Unless you need to, you don't have
    #   to configure any of these options before starting your task.
    #   @return [Types::Options]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateTaskExecutionRequest AWS API Documentation
    #
    class UpdateTaskExecutionRequest < Struct.new(
      :task_execution_arn,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateTaskExecutionResponse AWS API Documentation
    #
    class UpdateTaskExecutionResponse < Aws::EmptyStructure; end

    # UpdateTaskResponse
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the resource name of the task to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   Indicates how your transfer task is configured. These options
    #   include how DataSync handles files, objects, and their associated
    #   metadata during your transfer. You also can specify how to verify
    #   data integrity, set bandwidth limits for your task, among other
    #   options.
    #
    #   Each option has a default value. Unless you need to, you don't have
    #   to configure any of these options before starting your task.
    #   @return [Types::Options]
    #
    # @!attribute [rw] excludes
    #   Specifies a list of filter rules that exclude specific data during
    #   your transfer. For more information and examples, see [Filtering
    #   data transferred by DataSync][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] schedule
    #   Specifies a schedule used to periodically transfer files from a
    #   source to a destination location. You can configure your task to
    #   execute hourly, daily, weekly or on specific days of the week. You
    #   control when in the day or hour you want the task to execute. The
    #   time you specify is UTC time. For more information, see [Scheduling
    #   your task][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html
    #   @return [Types::TaskSchedule]
    #
    # @!attribute [rw] name
    #   The name of the task to update.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_log_group_arn
    #   The Amazon Resource Name (ARN) of the resource name of the Amazon
    #   CloudWatch log group.
    #   @return [String]
    #
    # @!attribute [rw] includes
    #   Specifies a list of filter rules that include specific data during
    #   your transfer. For more information and examples, see [Filtering
    #   data transferred by DataSync][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] task_report_config
    #   Specifies how you want to configure a task report, which provides
    #   detailed information about for your DataSync transfer.
    #   @return [Types::TaskReportConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateTaskRequest AWS API Documentation
    #
    class UpdateTaskRequest < Struct.new(
      :task_arn,
      :options,
      :excludes,
      :schedule,
      :name,
      :cloud_watch_log_group_arn,
      :includes,
      :task_report_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateTaskResponse AWS API Documentation
    #
    class UpdateTaskResponse < Aws::EmptyStructure; end

  end
end
