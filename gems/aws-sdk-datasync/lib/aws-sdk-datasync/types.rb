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
    #   an activation key, see [Activating your agent][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/activate-agent.html
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   Specifies a name for your agent. We recommend specifying a name that
    #   you can remember.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies labels that help you categorize, filter, and search for
    #   your Amazon Web Services resources. We recommend creating at least
    #   one tag for your agent.
    #   @return [Array<Types::TagListEntry>]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   Specifies the ID of the [VPC service endpoint][1] that you're
    #   using. For example, a VPC endpoint ID looks like
    #   `vpce-01234d5aff67890e1`.
    #
    #   The VPC service endpoint you use must include the DataSync service
    #   name (for example, `com.amazonaws.us-east-2.datasync`).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/choose-service-endpoint.html#datasync-in-vpc
    #   @return [String]
    #
    # @!attribute [rw] subnet_arns
    #   Specifies the ARN of the subnet where your VPC service endpoint is
    #   located. You can only specify one ARN.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_arns
    #   Specifies the Amazon Resource Name (ARN) of the security group that
    #   allows traffic between your agent and VPC service endpoint. You can
    #   only specify one ARN.
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
    #   where DataSync reads or writes data on your file system (depending
    #   on if this is a source or destination location).
    #
    #   By default, DataSync uses the root directory (or [access point][1]
    #   if you provide one by using `AccessPointArn`). You can also include
    #   subdirectories using forward slashes (for example,
    #   `/path/to/folder`).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html
    #   @return [String]
    #
    # @!attribute [rw] efs_filesystem_arn
    #   Specifies the ARN for your Amazon EFS file system.
    #   @return [String]
    #
    # @!attribute [rw] ec2_config
    #   Specifies the subnet and security groups DataSync uses to connect to
    #   one of your Amazon EFS file system's [mount targets][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/accessing-fs.html
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
    #   DataSync uses to mount your Amazon EFS file system.
    #
    #   For more information, see [Accessing restricted file systems][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-iam
    #   @return [String]
    #
    # @!attribute [rw] file_system_access_role_arn
    #   Specifies an Identity and Access Management (IAM) role that allows
    #   DataSync to access your Amazon EFS file system.
    #
    #   For information on creating this role, see [Creating a DataSync IAM
    #   role for file system access][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-iam-role
    #   @return [String]
    #
    # @!attribute [rw] in_transit_encryption
    #   Specifies whether you want DataSync to use Transport Layer Security
    #   (TLS) 1.2 encryption when it transfers data to or from your Amazon
    #   EFS file system.
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
    #   Specifies the Amazon Resource Name (ARN) of the FSx for Lustre file
    #   system.
    #   @return [String]
    #
    # @!attribute [rw] security_group_arns
    #   Specifies the Amazon Resource Names (ARNs) of up to five security
    #   groups that provide access to your FSx for Lustre file system.
    #
    #   The security groups must be able to access the file system's ports.
    #   The file system must also allow access from the security groups. For
    #   information about file system access, see the [ *Amazon FSx for
    #   Lustre User Guide* ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/limit-access-security-groups.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] subdirectory
    #   Specifies a mount path for your FSx for Lustre file system. The path
    #   can include subdirectories.
    #
    #   When the location is used as a source, DataSync reads data from the
    #   mount path. When the location is used as a destination, DataSync
    #   writes data to the mount path. If you don't include this parameter,
    #   DataSync uses the file system's root directory (`/`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies labels that help you categorize, filter, and search for
    #   your Amazon Web Services resources. We recommend creating at least a
    #   name tag for your location.
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
    #   location that you created.
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
    #   Specifies a path to the file share in the SVM where you want to
    #   transfer data to or from.
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
    #   Specifies the ARNs of the Amazon EC2 security groups that provide
    #   access to your file system's preferred subnet.
    #
    #   The security groups that you specify must be able to communicate
    #   with your file system's security groups. For information about
    #   configuring security groups for file system access, see the [
    #   *Amazon FSx for Windows File Server User Guide* ][1].
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
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/limit-access-security-groups.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Specifies labels that help you categorize, filter, and search for
    #   your Amazon Web Services resources. We recommend creating at least a
    #   name tag for your location.
    #   @return [Array<Types::TagListEntry>]
    #
    # @!attribute [rw] user
    #   Specifies the user with the permissions to mount and access the
    #   files, folders, and file metadata in your FSx for Windows File
    #   Server file system.
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
    #   File Server file system belongs to.
    #
    #   If you have multiple Active Directory domains in your environment,
    #   configuring this parameter makes sure that DataSync connects to the
    #   right file system.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   Specifies the password of the user with the permissions to mount and
    #   access the files, folders, and file metadata in your FSx for Windows
    #   File Server file system.
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
    #   The Amazon Resource Names (ARNs) of the DataSync agents that can
    #   connect to your HDFS cluster.
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
    #   The ARN of the source HDFS cluster location that you create.
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
    #   Specifies the DNS name or IP version 4 address of the NFS file
    #   server that your DataSync agent connects to.
    #   @return [String]
    #
    # @!attribute [rw] on_prem_config
    #   Specifies the Amazon Resource Name (ARN) of the DataSync agent that
    #   can connect to your NFS file server.
    #
    #   You can specify more than one agent. For more information, see
    #   [Using multiple DataSync agents][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/do-i-need-datasync-agent.html#multiple-agents
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
    #   Specifies the domain name or IP version 4 (IPv4) address of the
    #   object storage server that your DataSync agent connects to.
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
    #   that can connect with your object storage system.
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
    #   Specifies a certificate chain for DataSync to authenticate with your
    #   object storage system if the system uses a private or self-signed
    #   certificate authority (CA). You must specify a single `.pem` file
    #   with a full certificate chain (for example,
    #   `file:///home/user/.ssh/object_storage_certificates.pem`).
    #
    #   The certificate chain might include:
    #
    #   * The object storage system's certificate
    #
    #   * All intermediate certificates (if there are any)
    #
    #   * The root certificate of the signing CA
    #
    #   You can concatenate your certificates into a `.pem` file (which can
    #   be up to 32768 bytes before base64 encoding). The following example
    #   `cat` command creates an `object_storage_certificates.pem` file that
    #   includes three certificates:
    #
    #   `cat object_server_certificate.pem intermediate_certificate.pem
    #   ca_root_certificate.pem > object_storage_certificates.pem`
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
    #   Specifies a prefix in the S3 bucket that DataSync reads from or
    #   writes to (depending on whether the bucket is a source or
    #   destination location).
    #
    #   <note markdown="1"> DataSync can't transfer objects with a prefix that begins with a
    #   slash (`/`) or includes `//`, `/./`, or `/../` patterns. For
    #   example:
    #
    #    * `/photos`
    #
    #   * `photos//2006/January`
    #
    #   * `photos/./2006/February`
    #
    #   * `photos/../2006/March`
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_arn
    #   Specifies the ARN of the S3 bucket that you want to use as a
    #   location. (When creating your DataSync task later, you specify
    #   whether this location is a transfer source or destination.)
    #
    #   If your S3 bucket is located on an Outposts resource, you must
    #   specify an Amazon S3 access point. For more information, see
    #   [Managing data access with Amazon S3 access points][1] in the
    #   *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html
    #   @return [String]
    #
    # @!attribute [rw] s3_storage_class
    #   Specifies the storage class that you want your objects to use when
    #   Amazon S3 is a transfer destination.
    #
    #   For buckets in Amazon Web Services Regions, the storage class
    #   defaults to `STANDARD`. For buckets on Outposts, the storage class
    #   defaults to `OUTPOSTS`.
    #
    #   For more information, see [Storage class considerations with Amazon
    #   S3 transfers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes
    #   @return [String]
    #
    # @!attribute [rw] s3_config
    #   Specifies the Amazon Resource Name (ARN) of the Identity and Access
    #   Management (IAM) role that DataSync uses to access your S3 bucket.
    #
    #   For more information, see [Providing DataSync access to S3
    #   buckets][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-access
    #   @return [Types::S3Config]
    #
    # @!attribute [rw] agent_arns
    #   (Amazon S3 on Outposts only) Specifies the Amazon Resource Name
    #   (ARN) of the DataSync agent on your Outpost.
    #
    #   For more information, see [Deploy your DataSync agent on
    #   Outposts][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/deploy-agents.html#outposts-agent
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Specifies labels that help you categorize, filter, and search for
    #   your Amazon Web Services resources. We recommend creating at least a
    #   name tag for your transfer location.
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
    #   The ARN of the S3 location that you created.
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
    #   To copy all data in the subdirectory, DataSync must be able to mount
    #   the SMB share and access all of its data. For more information, see
    #   [Providing DataSync access to SMB file servers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #   @return [String]
    #
    # @!attribute [rw] server_hostname
    #   Specifies the domain name or IP address of the SMB file server that
    #   your DataSync agent connects to.
    #
    #   Remember the following when configuring this parameter:
    #
    #   * You can't specify an IP version 6 (IPv6) address.
    #
    #   * If you're using Kerberos authentication, you must specify a
    #     domain name.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   Specifies the user that can mount and access the files, folders, and
    #   file metadata in your SMB file server. This parameter applies only
    #   if `AuthenticationType` is set to `NTLM`.
    #
    #   For information about choosing a user with the right level of access
    #   for your transfer, see [Providing DataSync access to SMB file
    #   servers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   Specifies the Windows domain name that your SMB file server belongs
    #   to. This parameter applies only if `AuthenticationType` is set to
    #   `NTLM`.
    #
    #   If you have multiple domains in your environment, configuring this
    #   parameter makes sure that DataSync connects to the right file
    #   server.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   Specifies the password of the user who can mount your SMB file
    #   server and has permission to access the files and folders involved
    #   in your transfer. This parameter applies only if
    #   `AuthenticationType` is set to `NTLM`.
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   Specifies the DataSync agent (or agents) that can connect to your
    #   SMB file server. You specify an agent by using its Amazon Resource
    #   Name (ARN).
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
    # @!attribute [rw] authentication_type
    #   Specifies the authentication protocol that DataSync uses to connect
    #   to your SMB file server. DataSync supports `NTLM` (default) and
    #   `KERBEROS` authentication.
    #
    #   For more information, see [Providing DataSync access to SMB file
    #   servers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #   @return [String]
    #
    # @!attribute [rw] dns_ip_addresses
    #   Specifies the IPv4 addresses for the DNS servers that your SMB file
    #   server belongs to. This parameter applies only if
    #   `AuthenticationType` is set to `KERBEROS`.
    #
    #   If you have multiple domains in your environment, configuring this
    #   parameter makes sure that DataSync connects to the right SMB file
    #   server.
    #   @return [Array<String>]
    #
    # @!attribute [rw] kerberos_principal
    #   Specifies a Kerberos prinicpal, which is an identity in your
    #   Kerberos realm that has permission to access the files, folders, and
    #   file metadata in your SMB file server.
    #
    #   A Kerberos principal might look like
    #   `HOST/kerberosuser@MYDOMAIN.ORG`.
    #
    #   Principal names are case sensitive. Your DataSync task execution
    #   will fail if the principal that you specify for this parameter
    #   doesn’t exactly match the principal that you use to create the
    #   keytab file.
    #   @return [String]
    #
    # @!attribute [rw] kerberos_keytab
    #   Specifies your Kerberos key table (keytab) file, which includes
    #   mappings between your Kerberos principal and encryption keys.
    #
    #   The file must be base64 encoded. If you're using the CLI, the
    #   encoding is done for you.
    #
    #   To avoid task execution errors, make sure that the Kerberos
    #   principal that you use to create the keytab file matches exactly
    #   what you specify for `KerberosPrincipal`.
    #   @return [String]
    #
    # @!attribute [rw] kerberos_krb_5_conf
    #   Specifies a Kerberos configuration file (`krb5.conf`) that defines
    #   your Kerberos realm configuration.
    #
    #   The file must be base64 encoded. If you're using the CLI, the
    #   encoding is done for you.
    #   @return [String]
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
      :tags,
      :authentication_type,
      :dns_ip_addresses,
      :kerberos_principal,
      :kerberos_keytab,
      :kerberos_krb_5_conf)
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
    #   Specifies the ARN of your transfer's source location.
    #   @return [String]
    #
    # @!attribute [rw] destination_location_arn
    #   Specifies the ARN of your transfer's destination location.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_log_group_arn
    #   Specifies the Amazon Resource Name (ARN) of an Amazon CloudWatch log
    #   group for monitoring your task.
    #
    #   For Enhanced mode tasks, you don't need to specify anything.
    #   DataSync automatically sends logs to a CloudWatch log group named
    #   `/aws/datasync`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specifies the name of your task.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   Specifies your task's settings, such as preserving file metadata,
    #   verifying data integrity, among other options.
    #   @return [Types::Options]
    #
    # @!attribute [rw] excludes
    #   Specifies exclude filters that define the files, objects, and
    #   folders in your source location that you don't want DataSync to
    #   transfer. For more information and examples, see [Specifying what
    #   DataSync transfers by using filters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] schedule
    #   Specifies a schedule for when you want your task to run. For more
    #   information, see [Scheduling your task][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html
    #   @return [Types::TaskSchedule]
    #
    # @!attribute [rw] tags
    #   Specifies the tags that you want to apply to your task.
    #
    #   *Tags* are key-value pairs that help you manage, filter, and search
    #   for your DataSync resources.
    #   @return [Array<Types::TagListEntry>]
    #
    # @!attribute [rw] includes
    #   Specifies include filters that define the files, objects, and
    #   folders in your source location that you want DataSync to transfer.
    #   For more information and examples, see [Specifying what DataSync
    #   transfers by using filters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] manifest_config
    #   Configures a manifest, which is a list of files or objects that you
    #   want DataSync to transfer. For more information and configuration
    #   examples, see [Specifying what DataSync transfers by using a
    #   manifest][1].
    #
    #   When using this parameter, your caller identity (the role that
    #   you're using DataSync with) must have the `iam:PassRole`
    #   permission. The [AWSDataSyncFullAccess][2] policy includes this
    #   permission.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess
    #   @return [Types::ManifestConfig]
    #
    # @!attribute [rw] task_report_config
    #   Specifies how you want to configure a task report, which provides
    #   detailed information about your DataSync transfer. For more
    #   information, see [Monitoring your DataSync transfers with task
    #   reports][1].
    #
    #   When using this parameter, your caller identity (the role that
    #   you're using DataSync with) must have the `iam:PassRole`
    #   permission. The [AWSDataSyncFullAccess][2] policy includes this
    #   permission.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess
    #   @return [Types::TaskReportConfig]
    #
    # @!attribute [rw] task_mode
    #   Specifies one of the following task modes for your data transfer:
    #
    #   * `ENHANCED` - Transfer virtually unlimited numbers of objects with
    #     higher performance than Basic mode. Enhanced mode tasks optimize
    #     the data transfer process by listing, preparing, transferring, and
    #     verifying data in parallel. Enhanced mode is currently available
    #     for transfers between Amazon S3 locations.
    #
    #     <note markdown="1"> To create an Enhanced mode task, the IAM role that you use to call
    #     the `CreateTask` operation must have the
    #     `iam:CreateServiceLinkedRole` permission.
    #
    #      </note>
    #
    #   * `BASIC` (default) - Transfer files or objects between Amazon Web
    #     Services storage and all other supported DataSync locations. Basic
    #     mode tasks are subject to [quotas][1] on the number of files,
    #     objects, and directories in a dataset. Basic mode sequentially
    #     prepares, transfers, and verifies data, making it slower than
    #     Enhanced mode for most workloads.
    #
    #   For more information, see [Understanding task mode differences][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/datasync-limits.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html#task-mode-differences
    #   @return [String]
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
      :manifest_config,
      :task_report_config,
      :task_mode)
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
    #   The subnet and security groups that DataSync uses to connect to one
    #   of your Amazon EFS file system's [mount targets][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/accessing-fs.html
    #   @return [Types::Ec2Config]
    #
    # @!attribute [rw] creation_time
    #   The time that the location was created.
    #   @return [Time]
    #
    # @!attribute [rw] access_point_arn
    #   The ARN of the access point that DataSync uses to access the Amazon
    #   EFS file system.
    #
    #   For more information, see [Accessing restricted file systems][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-iam
    #   @return [String]
    #
    # @!attribute [rw] file_system_access_role_arn
    #   The Identity and Access Management (IAM) role that allows DataSync
    #   to access your Amazon EFS file system.
    #
    #   For more information, see [Creating a DataSync IAM role for file
    #   system access][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-iam-role
    #   @return [String]
    #
    # @!attribute [rw] in_transit_encryption
    #   Indicates whether DataSync uses Transport Layer Security (TLS)
    #   encryption when transferring data to or from the Amazon EFS file
    #   system.
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
    #   Specifies the Amazon Resource Name (ARN) of the FSx for Windows File
    #   Server location.
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
    #   The ARN of the FSx for Windows File Server location.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The uniform resource identifier (URI) of the FSx for Windows File
    #   Server location.
    #   @return [String]
    #
    # @!attribute [rw] security_group_arns
    #   The ARNs of the Amazon EC2 security groups that provide access to
    #   your file system's preferred subnet.
    #
    #   For information about configuring security groups for file system
    #   access, see the [ *Amazon FSx for Windows File Server User Guide*
    #   ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/limit-access-security-groups.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_time
    #   The time that the FSx for Windows File Server location was created.
    #   @return [Time]
    #
    # @!attribute [rw] user
    #   The user with the permissions to mount and access the FSx for
    #   Windows File Server file system.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The name of the Microsoft Active Directory domain that the FSx for
    #   Windows File Server file system belongs to.
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
    #   Specifies the Amazon Resource Name (ARN) of the HDFS location.
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
    #   The ARN of the HDFS location.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URI of the HDFS location.
    #   @return [String]
    #
    # @!attribute [rw] name_nodes
    #   The NameNode that manages the HDFS namespace.
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
    #   The Quality of Protection (QOP) configuration, which specifies the
    #   Remote Procedure Call (RPC) and data transfer protection settings
    #   configured on the HDFS cluster.
    #   @return [Types::QopConfiguration]
    #
    # @!attribute [rw] authentication_type
    #   The type of authentication used to determine the identity of the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] simple_user
    #   The user name to identify the client on the host operating system.
    #   This parameter is used if the `AuthenticationType` is defined as
    #   `SIMPLE`.
    #   @return [String]
    #
    # @!attribute [rw] kerberos_principal
    #   The Kerberos principal with access to the files and folders on the
    #   HDFS cluster. This parameter is used if the `AuthenticationType` is
    #   defined as `KERBEROS`.
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   The ARNs of the DataSync agents that can connect with your HDFS
    #   cluster.
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
    #   The URI of the NFS location.
    #   @return [String]
    #
    # @!attribute [rw] on_prem_config
    #   The DataSync agents that can connect to your Network File System
    #   (NFS) file server.
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
    #   Specifies the Amazon Resource Name (ARN) of the object storage
    #   system location.
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
    #   The URI of the object storage system location.
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
    #   The ARNs of the DataSync agents that can connect with your object
    #   storage system.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_time
    #   The time that the location was created.
    #   @return [Time]
    #
    # @!attribute [rw] server_certificate
    #   The certificate chain for DataSync to authenticate with your object
    #   storage system if the system uses a private or self-signed
    #   certificate authority (CA).
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
    #   Specifies the Amazon Resource Name (ARN) of the Amazon S3 location.
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
    #   The ARN of the Amazon S3 location.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URL of the Amazon S3 location that was described.
    #   @return [String]
    #
    # @!attribute [rw] s3_storage_class
    #   When Amazon S3 is a destination location, this is the storage class
    #   that you chose for your objects.
    #
    #   Some storage classes have behaviors that can affect your Amazon S3
    #   storage costs. For more information, see [Storage class
    #   considerations with Amazon S3 transfers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes
    #   @return [String]
    #
    # @!attribute [rw] s3_config
    #   Specifies the Amazon Resource Name (ARN) of the Identity and Access
    #   Management (IAM) role that DataSync uses to access your S3 bucket.
    #
    #   For more information, see [Providing DataSync access to S3
    #   buckets][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-access
    #   @return [Types::S3Config]
    #
    # @!attribute [rw] agent_arns
    #   The ARNs of the DataSync agents deployed on your Outpost when using
    #   working with Amazon S3 on Outposts.
    #
    #   For more information, see [Deploy your DataSync agent on
    #   Outposts][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/deploy-agents.html#outposts-agent
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_time
    #   The time that the Amazon S3 location was created.
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
    #   Specifies the Amazon Resource Name (ARN) of the SMB location that
    #   you want information about.
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
    #   The ARN of the SMB location.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URI of the SMB location.
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   The ARNs of the DataSync agents that can connect with your SMB file
    #   server.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user
    #   The user that can mount and access the files, folders, and file
    #   metadata in your SMB file server. This element applies only if
    #   `AuthenticationType` is set to `NTLM`.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The name of the Windows domain that the SMB file server belongs to.
    #   This element applies only if `AuthenticationType` is set to `NTLM`.
    #   @return [String]
    #
    # @!attribute [rw] mount_options
    #   The SMB protocol version that DataSync uses to access your SMB file
    #   server.
    #   @return [Types::SmbMountOptions]
    #
    # @!attribute [rw] creation_time
    #   The time that the SMB location was created.
    #   @return [Time]
    #
    # @!attribute [rw] dns_ip_addresses
    #   The IPv4 addresses for the DNS servers that your SMB file server
    #   belongs to. This element applies only if `AuthenticationType` is set
    #   to `KERBEROS`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] kerberos_principal
    #   The Kerberos principal that has permission to access the files,
    #   folders, and file metadata in your SMB file server.
    #   @return [String]
    #
    # @!attribute [rw] authentication_type
    #   The authentication protocol that DataSync uses to connect to your
    #   SMB file server.
    #   @return [String]
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
      :creation_time,
      :dns_ip_addresses,
      :kerberos_principal,
      :authentication_type)
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
    #   to configure any option before calling [StartTaskExecution][1].
    #
    #   You also can override your task options for each task execution. For
    #   example, you might want to adjust the `LogLevel` for an individual
    #   execution.
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
    # @!attribute [rw] manifest_config
    #   The configuration of the manifest that lists the files or objects to
    #   transfer. For more information, see [Specifying what DataSync
    #   transfers by using a manifest][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html
    #   @return [Types::ManifestConfig]
    #
    # @!attribute [rw] start_time
    #   The time when the task execution started.
    #   @return [Time]
    #
    # @!attribute [rw] estimated_files_to_transfer
    #   The number of files, objects, and directories that DataSync expects
    #   to transfer over the network. This value is calculated while
    #   DataSync [prepares][1] the transfer.
    #
    #   How this gets calculated depends primarily on your task’s [transfer
    #   mode][2] configuration:
    #
    #   * If `TranserMode` is set to `CHANGED` - The calculation is based on
    #     comparing the content of the source and destination locations and
    #     determining the difference that needs to be transferred. The
    #     difference can include:
    #
    #     * Anything that's added or modified at the source location.
    #
    #     * Anything that's in both locations and modified at the
    #       destination after an initial transfer (unless [OverwriteMode][3]
    #       is set to `NEVER`).
    #
    #     * **(Basic task mode only)** The number of items that DataSync
    #       expects to delete (if [PreserveDeletedFiles][4] is set to
    #       `REMOVE`).
    #   * If `TranserMode` is set to `ALL` - The calculation is based only
    #     on the items that DataSync finds at the source location.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/run-task.html#understand-task-execution-statuses
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-TransferMode
    #   [3]: https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-OverwriteMode
    #   [4]: https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-PreserveDeletedFiles
    #   @return [Integer]
    #
    # @!attribute [rw] estimated_bytes_to_transfer
    #   The number of logical bytes that DataSync expects to write to the
    #   destination location.
    #   @return [Integer]
    #
    # @!attribute [rw] files_transferred
    #   The number of files, objects, and directories that DataSync actually
    #   transfers over the network. This value is updated periodically
    #   during your task execution when something is read from the source
    #   and sent over the network.
    #
    #   If DataSync fails to transfer something, this value can be less than
    #   `EstimatedFilesToTransfer`. In some cases, this value can also be
    #   greater than `EstimatedFilesToTransfer`. This element is
    #   implementation-specific for some location types, so don't use it as
    #   an exact indication of what's transferring or to monitor your task
    #   execution.
    #   @return [Integer]
    #
    # @!attribute [rw] bytes_written
    #   The number of logical bytes that DataSync actually writes to the
    #   destination location.
    #   @return [Integer]
    #
    # @!attribute [rw] bytes_transferred
    #   The number of bytes that DataSync sends to the network before
    #   compression (if compression is possible). For the number of bytes
    #   transferred over the network, see [BytesCompressed][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_DescribeTaskExecution.html#DataSync-DescribeTaskExecution-response-BytesCompressed
    #   @return [Integer]
    #
    # @!attribute [rw] bytes_compressed
    #   The number of physical bytes that DataSync transfers over the
    #   network after compression (if compression is possible). This number
    #   is typically less than [BytesTransferred][1] unless the data isn't
    #   compressible.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_DescribeTaskExecution.html#DataSync-DescribeTaskExecution-response-BytesTransferred
    #   @return [Integer]
    #
    # @!attribute [rw] result
    #   The result of the task execution.
    #   @return [Types::TaskExecutionResultDetail]
    #
    # @!attribute [rw] task_report_config
    #   The configuration of your task report, which provides detailed
    #   information about for your DataSync transfer. For more information,
    #   see [Creating a task report][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
    #   @return [Types::TaskReportConfig]
    #
    # @!attribute [rw] files_deleted
    #   The number of files, objects, and directories that DataSync actually
    #   deletes in your destination location. If you don't configure your
    #   task to [delete data in the destination that isn't in the
    #   source][1], the value is always `0`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/configure-metadata.html
    #   @return [Integer]
    #
    # @!attribute [rw] files_skipped
    #   The number of files, objects, and directories that DataSync skips
    #   during your transfer.
    #   @return [Integer]
    #
    # @!attribute [rw] files_verified
    #   The number of files, objects, and directories that DataSync verifies
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
    #   The number of files, objects, and directories that DataSync expects
    #   to delete in your destination location. If you don't configure your
    #   task to [delete data in the destination that isn't in the
    #   source][1], the value is always `0`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/configure-metadata.html
    #   @return [Integer]
    #
    # @!attribute [rw] task_mode
    #   The task mode that you're using. For more information, see
    #   [Choosing a task mode for your data transfer][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html
    #   @return [String]
    #
    # @!attribute [rw] files_prepared
    #   The number of objects that DataSync will attempt to transfer after
    #   comparing your source and destination locations.
    #
    #   <note markdown="1"> Applies only to [Enhanced mode tasks][1].
    #
    #    </note>
    #
    #   This counter isn't applicable if you configure your task to
    #   [transfer all data][2]. In that scenario, DataSync copies everything
    #   from the source to the destination without comparing differences
    #   between the locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/configure-metadata.html#task-option-transfer-mode
    #   @return [Integer]
    #
    # @!attribute [rw] files_listed
    #   The number of objects that DataSync finds at your locations.
    #
    #   <note markdown="1"> Applies only to [Enhanced mode tasks][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html
    #   @return [Types::TaskExecutionFilesListedDetail]
    #
    # @!attribute [rw] files_failed
    #   The number of objects that DataSync fails to prepare, transfer,
    #   verify, and delete during your task execution.
    #
    #   <note markdown="1"> Applies only to [Enhanced mode tasks][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html
    #   @return [Types::TaskExecutionFilesFailedDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeTaskExecutionResponse AWS API Documentation
    #
    class DescribeTaskExecutionResponse < Struct.new(
      :task_execution_arn,
      :status,
      :options,
      :excludes,
      :includes,
      :manifest_config,
      :start_time,
      :estimated_files_to_transfer,
      :estimated_bytes_to_transfer,
      :files_transferred,
      :bytes_written,
      :bytes_transferred,
      :bytes_compressed,
      :result,
      :task_report_config,
      :files_deleted,
      :files_skipped,
      :files_verified,
      :report_result,
      :estimated_files_to_delete,
      :task_mode,
      :files_prepared,
      :files_listed,
      :files_failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeTaskRequest
    #
    # @!attribute [rw] task_arn
    #   Specifies the Amazon Resource Name (ARN) of the transfer task that
    #   you want information about.
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
    #   The ARN of your task.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of your task. For information about what each status
    #   means, see [Task statuses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/understand-task-statuses.html#understand-task-creation-statuses
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of your task.
    #   @return [String]
    #
    # @!attribute [rw] current_task_execution_arn
    #   The ARN of the most recent task execution.
    #   @return [String]
    #
    # @!attribute [rw] source_location_arn
    #   The ARN of your transfer's source location.
    #   @return [String]
    #
    # @!attribute [rw] destination_location_arn
    #   The ARN of your transfer's destination location.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_log_group_arn
    #   The Amazon Resource Name (ARN) of an Amazon CloudWatch log group for
    #   monitoring your task.
    #
    #   For more information, see [Monitoring data transfers with CloudWatch
    #   Logs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/configure-logging.html
    #   @return [String]
    #
    # @!attribute [rw] source_network_interface_arns
    #   The ARNs of the [network interfaces][1] that DataSync created for
    #   your source location.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/datasync-network.html#required-network-interfaces
    #   @return [Array<String>]
    #
    # @!attribute [rw] destination_network_interface_arns
    #   The ARNs of the [network interfaces][1] that DataSync created for
    #   your destination location.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/datasync-network.html#required-network-interfaces
    #   @return [Array<String>]
    #
    # @!attribute [rw] options
    #   The task's settings. For example, what file metadata gets
    #   preserved, how data integrity gets verified at the end of your
    #   transfer, bandwidth limits, among other options.
    #   @return [Types::Options]
    #
    # @!attribute [rw] excludes
    #   The exclude filters that define the files, objects, and folders in
    #   your source location that you don't want DataSync to transfer. For
    #   more information and examples, see [Specifying what DataSync
    #   transfers by using filters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] schedule
    #   The schedule for when you want your task to run. For more
    #   information, see [Scheduling your task][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html
    #   @return [Types::TaskSchedule]
    #
    # @!attribute [rw] error_code
    #   If there's an issue with your task, you can use the error code to
    #   help you troubleshoot the problem. For more information, see
    #   [Troubleshooting issues with DataSync transfers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/troubleshooting-datasync-locations-tasks.html
    #   @return [String]
    #
    # @!attribute [rw] error_detail
    #   If there's an issue with your task, you can use the error details
    #   to help you troubleshoot the problem. For more information, see
    #   [Troubleshooting issues with DataSync transfers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/troubleshooting-datasync-locations-tasks.html
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that the task was created.
    #   @return [Time]
    #
    # @!attribute [rw] includes
    #   The include filters that define the files, objects, and folders in
    #   your source location that you want DataSync to transfer. For more
    #   information and examples, see [Specifying what DataSync transfers by
    #   using filters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] manifest_config
    #   The configuration of the manifest that lists the files or objects
    #   that you want DataSync to transfer. For more information, see
    #   [Specifying what DataSync transfers by using a manifest][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html
    #   @return [Types::ManifestConfig]
    #
    # @!attribute [rw] task_report_config
    #   The configuration of your task report, which provides detailed
    #   information about your DataSync transfer. For more information, see
    #   [Monitoring your DataSync transfers with task reports][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
    #   @return [Types::TaskReportConfig]
    #
    # @!attribute [rw] schedule_details
    #   The details about your [task schedule][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html
    #   @return [Types::TaskScheduleDetails]
    #
    # @!attribute [rw] task_mode
    #   The task mode that you're using. For more information, see
    #   [Choosing a task mode for your data transfer][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html
    #   @return [String]
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
      :manifest_config,
      :task_report_config,
      :schedule_details,
      :task_mode)
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

    # The subnet and security groups that DataSync uses to connect to one of
    # your Amazon EFS file system's [mount targets][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/efs/latest/ug/accessing-fs.html
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
    # DataSync uses to access your FSx for OpenZFS file system or FSx for
    # ONTAP file system's storage virtual machine (SVM).
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
    # DataSync uses to access your Amazon FSx for NetApp ONTAP file
    # system's storage virtual machine (SVM). For more information, see
    # [Providing DataSync access to FSx for ONTAP file systems][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html#create-ontap-location-access
    #
    # @!attribute [rw] domain
    #   Specifies the name of the Windows domain that your storage virtual
    #   machine (SVM) belongs to.
    #
    #   If you have multiple domains in your environment, configuring this
    #   setting makes sure that DataSync connects to the right SVM.
    #
    #   If you have multiple Active Directory domains in your environment,
    #   configuring this parameter makes sure that DataSync connects to the
    #   right SVM.
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
    #   Specifies a user that can mount and access the files, folders, and
    #   metadata in your SVM.
    #
    #   For information about choosing a user with the right level of access
    #   for your transfer, see [Using the SMB protocol][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html#create-ontap-location-smb
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

    # Specifies the data transfer protocol that DataSync uses to access your
    # Amazon FSx file system.
    #
    # <note markdown="1"> You can't update the Network File System (NFS) protocol configuration
    # for FSx for ONTAP locations. DataSync currently only supports NFS
    # version 3 with this location type.
    #
    #  </note>
    #
    # @!attribute [rw] nfs
    #   Specifies the Network File System (NFS) protocol configuration that
    #   DataSync uses to access your FSx for OpenZFS file system or FSx for
    #   ONTAP file system's storage virtual machine (SVM).
    #   @return [Types::FsxProtocolNfs]
    #
    # @!attribute [rw] smb
    #   Specifies the Server Message Block (SMB) protocol configuration that
    #   DataSync uses to access your FSx for ONTAP file system's storage
    #   virtual machine (SVM).
    #   @return [Types::FsxUpdateProtocolSmb]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/FsxUpdateProtocol AWS API Documentation
    #
    class FsxUpdateProtocol < Struct.new(
      :nfs,
      :smb)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the Server Message Block (SMB) protocol configuration that
    # DataSync uses to access your Amazon FSx for NetApp ONTAP file
    # system's storage virtual machine (SVM). For more information, see
    # [Providing DataSync access to FSx for ONTAP file systems][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html#create-ontap-location-access
    #
    # @!attribute [rw] domain
    #   Specifies the name of the Windows domain that your storage virtual
    #   machine (SVM) belongs to.
    #
    #   If you have multiple Active Directory domains in your environment,
    #   configuring this parameter makes sure that DataSync connects to the
    #   right SVM.
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
    #   Specifies a user that can mount and access the files, folders, and
    #   metadata in your SVM.
    #
    #   For information about choosing a user with the right level of access
    #   for your transfer, see [Using the SMB protocol][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html#create-ontap-location-smb
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/FsxUpdateProtocolSmb AWS API Documentation
    #
    class FsxUpdateProtocolSmb < Struct.new(
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
    #   Specifies the Amazon Resource Name (ARN) of the task that you want
    #   execution information about.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies how many results you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies an opaque string that indicates the position at which to
    #   begin the next list of results in the response.
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
    #   A list of the task's executions.
    #   @return [Array<Types::TaskExecutionListEntry>]
    #
    # @!attribute [rw] next_token
    #   The opaque string that indicates the position to begin the next list
    #   of results in the response.
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

    # Configures a manifest, which is a list of files or objects that you
    # want DataSync to transfer. For more information and configuration
    # examples, see [Specifying what DataSync transfers by using a
    # manifest][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html
    #
    # @!attribute [rw] action
    #   Specifies what DataSync uses the manifest for.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Specifies the file format of your manifest. For more information,
    #   see [Creating a manifest][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html#transferring-with-manifest-create
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Specifies the manifest that you want DataSync to use and where it's
    #   hosted.
    #
    #   <note markdown="1"> You must specify this parameter if you're configuring a new
    #   manifest on or after February 7, 2024.
    #
    #    If you don't, you'll get a 400 status code and
    #   `ValidationException` error stating that you're missing the IAM
    #   role for DataSync to access the S3 bucket where you're hosting your
    #   manifest. For more information, see [Providing DataSync access to
    #   your manifest][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html#transferring-with-manifest-access
    #   @return [Types::SourceManifestConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ManifestConfig AWS API Documentation
    #
    class ManifestConfig < Struct.new(
      :action,
      :format,
      :source)
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

    # The DataSync agents that can connect to your Network File System (NFS)
    # file server.
    #
    # @!attribute [rw] agent_arns
    #   The Amazon Resource Names (ARNs) of the DataSync agents that can
    #   connect to your NFS file server.
    #
    #   You can specify more than one agent. For more information, see
    #   [Using multiple DataSync agents][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/do-i-need-datasync-agent.html#multiple-agents
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
    # to configure any option before calling [StartTaskExecution][1].
    #
    # You also can override your task options for each task execution. For
    # example, you might want to adjust the `LogLevel` for an individual
    # execution.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html
    #
    # @!attribute [rw] verify_mode
    #   Specifies if and how DataSync checks the integrity of your data at
    #   the end of your transfer.
    #
    #   * `ONLY_FILES_TRANSFERRED` (recommended) - DataSync calculates the
    #     checksum of transferred data (including metadata) at the source
    #     location. At the end of the transfer, DataSync then compares this
    #     checksum to the checksum calculated on that data at the
    #     destination.
    #
    #     <note markdown="1"> This is the default option for [Enhanced mode tasks][1].
    #
    #      </note>
    #
    #     We recommend this option when transferring to S3 Glacier Flexible
    #     Retrieval or S3 Glacier Deep Archive storage classes. For more
    #     information, see [Storage class considerations with Amazon S3
    #     locations][2].
    #
    #   * `POINT_IN_TIME_CONSISTENT` - At the end of the transfer, DataSync
    #     checks the entire source and destination to verify that both
    #     locations are fully synchronized.
    #
    #     <note markdown="1"> The is the default option for [Basic mode tasks][1] and isn't
    #     currently supported with Enhanced mode tasks.
    #
    #      </note>
    #
    #     If you use a [manifest][3], DataSync only scans and verifies
    #     what's listed in the manifest.
    #
    #     You can't use this option when transferring to S3 Glacier
    #     Flexible Retrieval or S3 Glacier Deep Archive storage classes. For
    #     more information, see [Storage class considerations with Amazon S3
    #     locations][2].
    #
    #   * `NONE` - DataSync performs data integrity checks only during your
    #     transfer. Unlike other options, there's no additional
    #     verification at the end of your transfer.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes
    #   [3]: https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html
    #   @return [String]
    #
    # @!attribute [rw] overwrite_mode
    #   Specifies whether DataSync should modify or preserve data at the
    #   destination location.
    #
    #   * `ALWAYS` (default) - DataSync modifies data in the destination
    #     location when source data (including metadata) has changed.
    #
    #     If DataSync overwrites objects, you might incur additional charges
    #     for certain Amazon S3 storage classes (for example, for retrieval
    #     or early deletion). For more information, see [Storage class
    #     considerations with Amazon S3 transfers][1].
    #
    #   * `NEVER` - DataSync doesn't overwrite data in the destination
    #     location even if the source data has changed. You can use this
    #     option to protect against overwriting changes made to files or
    #     objects in the destination.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes
    #   @return [String]
    #
    # @!attribute [rw] atime
    #   Specifies whether to preserve metadata indicating the last time a
    #   file was read or written to.
    #
    #   <note markdown="1"> The behavior of `Atime` isn't fully standard across platforms, so
    #   DataSync can only do this on a best-effort basis.
    #
    #    </note>
    #
    #   * `BEST_EFFORT` (default) - DataSync attempts to preserve the
    #     original `Atime` attribute on all source files (that is, the
    #     version before the `PREPARING` steps of the task execution). This
    #     option is recommended.
    #
    #   * `NONE` - Ignores `Atime`.
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
    #   a file was written to before the `PREPARING` step of your task
    #   execution. This option is required when you need to run the a task
    #   more than once.
    #
    #   * `PRESERVE` (default) - Preserves original `Mtime`, which is
    #     recommended.
    #
    #   * `NONE` - Ignores `Mtime`.
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
    #   * `INT_VALUE` (default) - Preserves the integer value of UID and
    #     group ID (GID), which is recommended.
    #
    #   * `NONE` - Ignores UID and GID.
    #
    #   For more information, see [Metadata copied by DataSync][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/special-files.html#metadata-copied
    #   @return [String]
    #
    # @!attribute [rw] gid
    #   Specifies the POSIX group ID (GID) of the file's owners.
    #
    #   * `INT_VALUE` (default) - Preserves the integer value of user ID
    #     (UID) and GID, which is recommended.
    #
    #   * `NONE` - Ignores UID and GID.
    #
    #   For more information, see [Understanding how DataSync handles file
    #   and object metadata][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/metadata-copied.html
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
    #   * `PRESERVE` (default) - Ignores such destination files, which is
    #     recommended.
    #
    #   * `REMOVE` - Deletes destination files that aren’t present in the
    #     source.
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
    #   * `NONE` (default) - Ignores special devices (recommended).
    #
    #   * `PRESERVE` - Preserves character and block device metadata. This
    #     option currently isn't supported for Amazon EFS.
    #   @return [String]
    #
    # @!attribute [rw] posix_permissions
    #   Specifies which users or groups can access a file for a specific
    #   purpose such as reading, writing, or execution of the file.
    #
    #   For more information, see [Understanding how DataSync handles file
    #   and object metadata][1].
    #
    #   * `PRESERVE` (default) - Preserves POSIX-style permissions, which is
    #     recommended.
    #
    #   * `NONE` - Ignores POSIX-style permissions.
    #
    #   <note markdown="1"> DataSync can preserve extant permissions of a source location.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/metadata-copied.html
    #   @return [String]
    #
    # @!attribute [rw] bytes_per_second
    #   Limits the bandwidth used by a DataSync task. For example, if you
    #   want DataSync to use a maximum of 1 MB, set this value to `1048576`
    #   (`=1024*1024`).
    #
    #   <note markdown="1"> Not applicable to [Enhanced mode tasks][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html
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
    #   * `BASIC` - Publishes logs with only basic information (such as
    #     transfer errors).
    #
    #   * `TRANSFER` - Publishes logs for all files or objects that your
    #     DataSync task transfers and performs data-integrity checks on.
    #
    #   * `OFF` - No logs are published.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_CreateTask.html#DataSync-CreateTask-request-CloudWatchLogGroupArn
    #   @return [String]
    #
    # @!attribute [rw] transfer_mode
    #   Specifies whether DataSync transfers only the data (including
    #   metadata) that differs between locations following an initial copy
    #   or transfers all data every time you run the task. If you're
    #   planning on recurring transfers, you might only want to transfer
    #   what's changed since your previous task execution.
    #
    #   * `CHANGED` (default) - After your initial full transfer, DataSync
    #     copies only the data and metadata that differs between the source
    #     and destination location.
    #
    #   * `ALL` - DataSync copies everything in the source to the
    #     destination without comparing differences between the locations.
    #   @return [String]
    #
    # @!attribute [rw] security_descriptor_copy_flags
    #   Specifies which components of the SMB security descriptor are copied
    #   from source to destination objects.
    #
    #   This value is only used for transfers between SMB and Amazon FSx for
    #   Windows File Server locations or between two FSx for Windows File
    #   Server locations. For more information, see [Understanding how
    #   DataSync handles file and object metadata][1].
    #
    #   * `OWNER_DACL` (default) - For each copied object, DataSync copies
    #     the following metadata:
    #
    #     * The object owner.
    #
    #     * NTFS discretionary access control lists (DACLs), which determine
    #       whether to grant access to an object.
    #
    #       DataSync won't copy NTFS system access control lists (SACLs)
    #       with this option.
    #   * `OWNER_DACL_SACL` - For each copied object, DataSync copies the
    #     following metadata:
    #
    #     * The object owner.
    #
    #     * NTFS discretionary access control lists (DACLs), which determine
    #       whether to grant access to an object.
    #
    #     * SACLs, which are used by administrators to log attempts to
    #       access a secured object.
    #
    #       Copying SACLs requires granting additional permissions to the
    #       Windows user that DataSync uses to access your SMB location. For
    #       information about choosing a user with the right permissions,
    #       see required permissions for [SMB][2], [FSx for Windows File
    #       Server][3], or [FSx for ONTAP][4] (depending on the type of
    #       location in your transfer).
    #   * `NONE` - None of the SMB security descriptor components are
    #     copied. Destination objects are owned by the user that was
    #     provided for accessing the destination location. DACLs and SACLs
    #     are set based on the destination server’s configuration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/metadata-copied.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #   [3]: https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html#create-fsx-windows-location-permissions
    #   [4]: https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html#create-ontap-location-smb
    #   @return [String]
    #
    # @!attribute [rw] object_tags
    #   Specifies whether you want DataSync to `PRESERVE` object tags
    #   (default behavior) when transferring between object storage systems.
    #   If you want your DataSync task to ignore object tags, specify the
    #   `NONE` value.
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
    #   [1]: https://docs.aws.amazon.com/vpc/latest/privatelink/privatelink-share-your-services.html
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
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
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

    # Specifies the Amazon Resource Name (ARN) of the Identity and Access
    # Management (IAM) role that DataSync uses to access your S3 bucket.
    #
    # For more information, see [Providing DataSync access to S3
    # buckets][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-access
    #
    # @!attribute [rw] bucket_access_role_arn
    #   Specifies the ARN of the IAM role that DataSync uses to access your
    #   S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/S3Config AWS API Documentation
    #
    class S3Config < Struct.new(
      :bucket_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the S3 bucket where you're hosting the manifest that you
    # want DataSync to use. For more information and configuration examples,
    # see [Specifying what DataSync transfers by using a manifest][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html
    #
    # @!attribute [rw] manifest_object_path
    #   Specifies the Amazon S3 object key of your manifest. This can
    #   include a prefix (for example, `prefix/my-manifest.csv`).
    #   @return [String]
    #
    # @!attribute [rw] bucket_access_role_arn
    #   Specifies the Identity and Access Management (IAM) role that allows
    #   DataSync to access your manifest. For more information, see
    #   [Providing DataSync access to your manifest][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html#transferring-with-manifest-access
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_arn
    #   Specifies the Amazon Resource Name (ARN) of the S3 bucket where
    #   you're hosting your manifest.
    #   @return [String]
    #
    # @!attribute [rw] manifest_object_version_id
    #   Specifies the object version ID of the manifest that you want
    #   DataSync to use. If you don't set this, DataSync uses the latest
    #   version of the object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/S3ManifestConfig AWS API Documentation
    #
    class S3ManifestConfig < Struct.new(
      :manifest_object_path,
      :bucket_access_role_arn,
      :s3_bucket_arn,
      :manifest_object_version_id)
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

    # Specifies the manifest that you want DataSync to use and where it's
    # hosted. For more information and configuration examples, see
    # [Specifying what DataSync transfers by using a manifest][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html
    #
    # @!attribute [rw] s3
    #   Specifies the S3 bucket where you're hosting your manifest.
    #   @return [Types::S3ManifestConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/SourceManifestConfig AWS API Documentation
    #
    class SourceManifestConfig < Struct.new(
      :s3)
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
    #   to configure any option before calling [StartTaskExecution][1].
    #
    #   You also can override your task options for each task execution. For
    #   example, you might want to adjust the `LogLevel` for an individual
    #   execution.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html
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
    # @!attribute [rw] manifest_config
    #   Configures a manifest, which is a list of files or objects that you
    #   want DataSync to transfer. For more information and configuration
    #   examples, see [Specifying what DataSync transfers by using a
    #   manifest][1].
    #
    #   When using this parameter, your caller identity (the role that
    #   you're using DataSync with) must have the `iam:PassRole`
    #   permission. The [AWSDataSyncFullAccess][2] policy includes this
    #   permission.
    #
    #   To remove a manifest configuration, specify this parameter with an
    #   empty value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess
    #   @return [Types::ManifestConfig]
    #
    # @!attribute [rw] task_report_config
    #   Specifies how you want to configure a task report, which provides
    #   detailed information about your DataSync transfer. For more
    #   information, see [Monitoring your DataSync transfers with task
    #   reports][1].
    #
    #   When using this parameter, your caller identity (the role that
    #   you're using DataSync with) must have the `iam:PassRole`
    #   permission. The [AWSDataSyncFullAccess][2] policy includes this
    #   permission.
    #
    #   To remove a task report configuration, specify this parameter as
    #   empty.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess
    #   @return [Types::TaskReportConfig]
    #
    # @!attribute [rw] tags
    #   Specifies the tags that you want to apply to the Amazon Resource
    #   Name (ARN) representing the task execution.
    #
    #   *Tags* are key-value pairs that help you manage, filter, and search
    #   for your DataSync resources.
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/StartTaskExecutionRequest AWS API Documentation
    #
    class StartTaskExecutionRequest < Struct.new(
      :task_arn,
      :override_options,
      :includes,
      :excludes,
      :manifest_config,
      :task_report_config,
      :tags)
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

    # The number of objects that DataSync fails to prepare, transfer,
    # verify, and delete during your task execution.
    #
    # <note markdown="1"> Applies only to [Enhanced mode tasks][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html
    #
    # @!attribute [rw] prepare
    #   The number of objects that DataSync fails to prepare during your
    #   task execution.
    #   @return [Integer]
    #
    # @!attribute [rw] transfer
    #   The number of objects that DataSync fails to transfer during your
    #   task execution.
    #   @return [Integer]
    #
    # @!attribute [rw] verify
    #   The number of objects that DataSync fails to verify during your task
    #   execution.
    #   @return [Integer]
    #
    # @!attribute [rw] delete
    #   The number of objects that DataSync fails to delete during your task
    #   execution.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TaskExecutionFilesFailedDetail AWS API Documentation
    #
    class TaskExecutionFilesFailedDetail < Struct.new(
      :prepare,
      :transfer,
      :verify,
      :delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of objects that DataSync finds at your locations.
    #
    # <note markdown="1"> Applies only to [Enhanced mode tasks][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html
    #
    # @!attribute [rw] at_source
    #   The number of objects that DataSync finds at your source location.
    #
    #   * With a [manifest][1], DataSync lists only what's in your manifest
    #     (and not everything at your source location).
    #
    #   * With an include [filter][2], DataSync lists only what matches the
    #     filter at your source location.
    #
    #   * With an exclude filter, DataSync lists everything at your source
    #     location before applying the filter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #   @return [Integer]
    #
    # @!attribute [rw] at_destination_for_delete
    #   The number of objects that DataSync finds at your destination
    #   location. This counter is only applicable if you [configure your
    #   task][1] to delete data in the destination that isn't in the
    #   source.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/configure-metadata.html#task-option-file-object-handling
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TaskExecutionFilesListedDetail AWS API Documentation
    #
    class TaskExecutionFilesListedDetail < Struct.new(
      :at_source,
      :at_destination_for_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single entry in a list of DataSync task executions
    # that's returned with the [ListTaskExecutions][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_ListTaskExecutions.html
    #
    # @!attribute [rw] task_execution_arn
    #   The Amazon Resource Name (ARN) of a task execution.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a task execution. For more information, see [Task
    #   execution statuses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/understand-task-statuses.html#understand-task-execution-statuses
    #   @return [String]
    #
    # @!attribute [rw] task_mode
    #   The task mode that you're using. For more information, see
    #   [Choosing a task mode for your data transfer][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TaskExecutionListEntry AWS API Documentation
    #
    class TaskExecutionListEntry < Struct.new(
      :task_execution_arn,
      :status,
      :task_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides detailed information about the result of your DataSync task
    # execution.
    #
    # @!attribute [rw] prepare_duration
    #   The time in milliseconds that your task execution was in the
    #   `PREPARING` step. For more information, see [Task execution
    #   statuses][1].
    #
    #   For Enhanced mode tasks, the value is always `0`. For more
    #   information, see [How DataSync prepares your data transfer][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/run-task.html#understand-task-execution-statuses
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/how-datasync-transfer-works.html#how-datasync-prepares
    #   @return [Integer]
    #
    # @!attribute [rw] prepare_status
    #   The status of the `PREPARING` step for your task execution. For more
    #   information, see [Task execution statuses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/run-task.html#understand-task-execution-statuses
    #   @return [String]
    #
    # @!attribute [rw] total_duration
    #   The time in milliseconds that your task execution ran.
    #   @return [Integer]
    #
    # @!attribute [rw] transfer_duration
    #   The time in milliseconds that your task execution was in the
    #   `TRANSFERRING` step. For more information, see [Task execution
    #   statuses][1].
    #
    #   For Enhanced mode tasks, the value is always `0`. For more
    #   information, see [How DataSync transfers your data][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/run-task.html#understand-task-execution-statuses
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/how-datasync-transfer-works.html#how-datasync-transfers
    #   @return [Integer]
    #
    # @!attribute [rw] transfer_status
    #   The status of the `TRANSFERRING` step for your task execution. For
    #   more information, see [Task execution statuses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/run-task.html#understand-task-execution-statuses
    #   @return [String]
    #
    # @!attribute [rw] verify_duration
    #   The time in milliseconds that your task execution was in the
    #   `VERIFYING` step. For more information, see [Task execution
    #   statuses][1].
    #
    #   For Enhanced mode tasks, the value is always `0`. For more
    #   information, see [How DataSync verifies your data's integrity][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/run-task.html#understand-task-execution-statuses
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/how-datasync-transfer-works.html#how-verifying-works
    #   @return [Integer]
    #
    # @!attribute [rw] verify_status
    #   The status of the `VERIFYING` step for your task execution. For more
    #   information, see [Task execution statuses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/run-task.html#understand-task-execution-statuses
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   An error that DataSync encountered during your task execution. You
    #   can use this information to help [troubleshoot issues][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/troubleshooting-datasync-locations-tasks.html
    #   @return [String]
    #
    # @!attribute [rw] error_detail
    #   The detailed description of an error that DataSync encountered
    #   during your task execution. You can use this information to help
    #   [troubleshoot issues][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/troubleshooting-datasync-locations-tasks.html
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
    # @!attribute [rw] task_mode
    #   The task mode that you're using. For more information, see
    #   [Choosing a task mode for your data transfer][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TaskListEntry AWS API Documentation
    #
    class TaskListEntry < Struct.new(
      :task_arn,
      :status,
      :name,
      :task_mode)
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

    # Configures your DataSync task to run on a [schedule][1] (at a minimum
    # interval of 1 hour).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html
    #
    # @!attribute [rw] schedule_expression
    #   Specifies your task schedule by using a cron or rate expression.
    #
    #   Use cron expressions for task schedules that run on a specific time
    #   and day. For example, the following cron expression creates a task
    #   schedule that runs at 8 AM on the first Wednesday of every month:
    #
    #   `cron(0 8 * * 3#1)`
    #
    #   Use rate expressions for task schedules that run on a regular
    #   interval. For example, the following rate expression creates a task
    #   schedule that runs every 12 hours:
    #
    #   `rate(12 hours)`
    #
    #   For information about cron and rate expression syntax, see the [
    #   *Amazon EventBridge User Guide* ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-scheduled-rule-pattern.html
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies whether to enable or disable your task schedule. Your
    #   schedule is enabled by default, but there can be situations where
    #   you need to disable it. For example, you might need to pause a
    #   recurring transfer to fix an issue with your task or perform
    #   maintenance on your storage system.
    #
    #   DataSync might disable your schedule automatically if your task
    #   fails repeatedly with the same error. For more information, see
    #   [TaskScheduleDetails][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_TaskScheduleDetails.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TaskSchedule AWS API Documentation
    #
    class TaskSchedule < Struct.new(
      :schedule_expression,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about your DataSync [task schedule][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html
    #
    # @!attribute [rw] status_update_time
    #   Indicates the last time the status of your task schedule changed.
    #   For example, if DataSync automatically disables your schedule
    #   because of a repeated error, you can see when the schedule was
    #   disabled.
    #   @return [Time]
    #
    # @!attribute [rw] disabled_reason
    #   Provides a reason if the task schedule is disabled.
    #
    #   If your schedule is disabled by `USER`, you see a `Manually disabled
    #   by user.` message.
    #
    #   If your schedule is disabled by `SERVICE`, you see an error message
    #   to help you understand why the task keeps failing. For information
    #   on resolving DataSync errors, see [Troubleshooting issues with
    #   DataSync transfers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/troubleshooting-datasync-locations-tasks.html
    #   @return [String]
    #
    # @!attribute [rw] disabled_by
    #   Indicates how your task schedule was disabled.
    #
    #   * `USER` - Your schedule was manually disabled by using the
    #     [UpdateTask][1] operation or DataSync console.
    #
    #   * `SERVICE` - Your schedule was automatically disabled by DataSync
    #     because the task failed repeatedly with the same error.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_UpdateTask.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TaskScheduleDetails AWS API Documentation
    #
    class TaskScheduleDetails < Struct.new(
      :status_update_time,
      :disabled_reason,
      :disabled_by)
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
    #   Specifies the Amazon Resource Name (ARN) of the Amazon EFS transfer
    #   location that you're updating.
    #   @return [String]
    #
    # @!attribute [rw] subdirectory
    #   Specifies a mount path for your Amazon EFS file system. This is
    #   where DataSync reads or writes data on your file system (depending
    #   on if this is a source or destination location).
    #
    #   By default, DataSync uses the root directory (or [access point][1]
    #   if you provide one by using `AccessPointArn`). You can also include
    #   subdirectories using forward slashes (for example,
    #   `/path/to/folder`).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html
    #   @return [String]
    #
    # @!attribute [rw] access_point_arn
    #   Specifies the Amazon Resource Name (ARN) of the access point that
    #   DataSync uses to mount your Amazon EFS file system.
    #
    #   For more information, see [Accessing restricted Amazon EFS file
    #   systems][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-iam
    #   @return [String]
    #
    # @!attribute [rw] file_system_access_role_arn
    #   Specifies an Identity and Access Management (IAM) role that allows
    #   DataSync to access your Amazon EFS file system.
    #
    #   For information on creating this role, see [Creating a DataSync IAM
    #   role for Amazon EFS file system access][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-iam-role
    #   @return [String]
    #
    # @!attribute [rw] in_transit_encryption
    #   Specifies whether you want DataSync to use Transport Layer Security
    #   (TLS) 1.2 encryption when it transfers data to or from your Amazon
    #   EFS file system.
    #
    #   If you specify an access point using `AccessPointArn` or an IAM role
    #   using `FileSystemAccessRoleArn`, you must set this parameter to
    #   `TLS1_2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationEfsRequest AWS API Documentation
    #
    class UpdateLocationEfsRequest < Struct.new(
      :location_arn,
      :subdirectory,
      :access_point_arn,
      :file_system_access_role_arn,
      :in_transit_encryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationEfsResponse AWS API Documentation
    #
    class UpdateLocationEfsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] location_arn
    #   Specifies the Amazon Resource Name (ARN) of the FSx for Lustre
    #   transfer location that you're updating.
    #   @return [String]
    #
    # @!attribute [rw] subdirectory
    #   Specifies a mount path for your FSx for Lustre file system. The path
    #   can include subdirectories.
    #
    #   When the location is used as a source, DataSync reads data from the
    #   mount path. When the location is used as a destination, DataSync
    #   writes data to the mount path. If you don't include this parameter,
    #   DataSync uses the file system's root directory (`/`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationFsxLustreRequest AWS API Documentation
    #
    class UpdateLocationFsxLustreRequest < Struct.new(
      :location_arn,
      :subdirectory)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationFsxLustreResponse AWS API Documentation
    #
    class UpdateLocationFsxLustreResponse < Aws::EmptyStructure; end

    # @!attribute [rw] location_arn
    #   Specifies the Amazon Resource Name (ARN) of the FSx for ONTAP
    #   transfer location that you're updating.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   Specifies the data transfer protocol that DataSync uses to access
    #   your Amazon FSx file system.
    #   @return [Types::FsxUpdateProtocol]
    #
    # @!attribute [rw] subdirectory
    #   Specifies a path to the file share in the storage virtual machine
    #   (SVM) where you want to transfer data to or from.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationFsxOntapRequest AWS API Documentation
    #
    class UpdateLocationFsxOntapRequest < Struct.new(
      :location_arn,
      :protocol,
      :subdirectory)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationFsxOntapResponse AWS API Documentation
    #
    class UpdateLocationFsxOntapResponse < Aws::EmptyStructure; end

    # @!attribute [rw] location_arn
    #   Specifies the Amazon Resource Name (ARN) of the FSx for OpenZFS
    #   transfer location that you're updating.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   Specifies the data transfer protocol that DataSync uses to access
    #   your Amazon FSx file system.
    #   @return [Types::FsxProtocol]
    #
    # @!attribute [rw] subdirectory
    #   Specifies a subdirectory in the location's path that must begin
    #   with `/fsx`. DataSync uses this subdirectory to read or write data
    #   (depending on whether the file system is a source or destination
    #   location).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationFsxOpenZfsRequest AWS API Documentation
    #
    class UpdateLocationFsxOpenZfsRequest < Struct.new(
      :location_arn,
      :protocol,
      :subdirectory)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationFsxOpenZfsResponse AWS API Documentation
    #
    class UpdateLocationFsxOpenZfsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] location_arn
    #   Specifies the ARN of the FSx for Windows File Server transfer
    #   location that you're updating.
    #   @return [String]
    #
    # @!attribute [rw] subdirectory
    #   Specifies a mount path for your file system using forward slashes.
    #   DataSync uses this subdirectory to read or write data (depending on
    #   whether the file system is a source or destination location).
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   Specifies the name of the Windows domain that your FSx for Windows
    #   File Server file system belongs to.
    #
    #   If you have multiple Active Directory domains in your environment,
    #   configuring this parameter makes sure that DataSync connects to the
    #   right file system.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   Specifies the user with the permissions to mount and access the
    #   files, folders, and file metadata in your FSx for Windows File
    #   Server file system.
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
    # @!attribute [rw] password
    #   Specifies the password of the user with the permissions to mount and
    #   access the files, folders, and file metadata in your FSx for Windows
    #   File Server file system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationFsxWindowsRequest AWS API Documentation
    #
    class UpdateLocationFsxWindowsRequest < Struct.new(
      :location_arn,
      :subdirectory,
      :domain,
      :user,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationFsxWindowsResponse AWS API Documentation
    #
    class UpdateLocationFsxWindowsResponse < Aws::EmptyStructure; end

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
    #   The Amazon Resource Names (ARNs) of the DataSync agents that can
    #   connect to your HDFS cluster.
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
    # @!attribute [rw] server_hostname
    #   Specifies the DNS name or IP version 4 (IPv4) address of the NFS
    #   file server that your DataSync agent connects to.
    #   @return [String]
    #
    # @!attribute [rw] on_prem_config
    #   The DataSync agents that can connect to your Network File System
    #   (NFS) file server.
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
      :server_hostname,
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
    # @!attribute [rw] server_hostname
    #   Specifies the domain name or IP version 4 (IPv4) address of the
    #   object storage server that your DataSync agent connects to.
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
    #   that can connect with your object storage system.
    #   @return [Array<String>]
    #
    # @!attribute [rw] server_certificate
    #   Specifies a certificate chain for DataSync to authenticate with your
    #   object storage system if the system uses a private or self-signed
    #   certificate authority (CA). You must specify a single `.pem` file
    #   with a full certificate chain (for example,
    #   `file:///home/user/.ssh/object_storage_certificates.pem`).
    #
    #   The certificate chain might include:
    #
    #   * The object storage system's certificate
    #
    #   * All intermediate certificates (if there are any)
    #
    #   * The root certificate of the signing CA
    #
    #   You can concatenate your certificates into a `.pem` file (which can
    #   be up to 32768 bytes before base64 encoding). The following example
    #   `cat` command creates an `object_storage_certificates.pem` file that
    #   includes three certificates:
    #
    #   `cat object_server_certificate.pem intermediate_certificate.pem
    #   ca_root_certificate.pem > object_storage_certificates.pem`
    #
    #   To use this parameter, configure `ServerProtocol` to `HTTPS`.
    #
    #   Updating this parameter doesn't interfere with tasks that you have
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
      :server_hostname,
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
    #   Specifies the Amazon Resource Name (ARN) of the Amazon S3 transfer
    #   location that you're updating.
    #   @return [String]
    #
    # @!attribute [rw] subdirectory
    #   Specifies a prefix in the S3 bucket that DataSync reads from or
    #   writes to (depending on whether the bucket is a source or
    #   destination location).
    #
    #   <note markdown="1"> DataSync can't transfer objects with a prefix that begins with a
    #   slash (`/`) or includes `//`, `/./`, or `/../` patterns. For
    #   example:
    #
    #    * `/photos`
    #
    #   * `photos//2006/January`
    #
    #   * `photos/./2006/February`
    #
    #   * `photos/../2006/March`
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] s3_storage_class
    #   Specifies the storage class that you want your objects to use when
    #   Amazon S3 is a transfer destination.
    #
    #   For buckets in Amazon Web Services Regions, the storage class
    #   defaults to `STANDARD`. For buckets on Outposts, the storage class
    #   defaults to `OUTPOSTS`.
    #
    #   For more information, see [Storage class considerations with Amazon
    #   S3 transfers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes
    #   @return [String]
    #
    # @!attribute [rw] s3_config
    #   Specifies the Amazon Resource Name (ARN) of the Identity and Access
    #   Management (IAM) role that DataSync uses to access your S3 bucket.
    #
    #   For more information, see [Providing DataSync access to S3
    #   buckets][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-access
    #   @return [Types::S3Config]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationS3Request AWS API Documentation
    #
    class UpdateLocationS3Request < Struct.new(
      :location_arn,
      :subdirectory,
      :s3_storage_class,
      :s3_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationS3Response AWS API Documentation
    #
    class UpdateLocationS3Response < Aws::EmptyStructure; end

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
    #   information, see [Providing DataSync access to SMB file servers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #   @return [String]
    #
    # @!attribute [rw] server_hostname
    #   Specifies the domain name or IP address of the SMB file server that
    #   your DataSync agent connects to.
    #
    #   Remember the following when configuring this parameter:
    #
    #   * You can't specify an IP version 6 (IPv6) address.
    #
    #   * If you're using Kerberos authentication, you must specify a
    #     domain name.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   Specifies the user name that can mount your SMB file server and has
    #   permission to access the files and folders involved in your
    #   transfer. This parameter applies only if `AuthenticationType` is set
    #   to `NTLM`.
    #
    #   For information about choosing a user with the right level of access
    #   for your transfer, see [Providing DataSync access to SMB file
    #   servers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   Specifies the Windows domain name that your SMB file server belongs
    #   to. This parameter applies only if `AuthenticationType` is set to
    #   `NTLM`.
    #
    #   If you have multiple domains in your environment, configuring this
    #   parameter makes sure that DataSync connects to the right file
    #   server.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   Specifies the password of the user who can mount your SMB file
    #   server and has permission to access the files and folders involved
    #   in your transfer. This parameter applies only if
    #   `AuthenticationType` is set to `NTLM`.
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   Specifies the DataSync agent (or agents) that can connect to your
    #   SMB file server. You specify an agent by using its Amazon Resource
    #   Name (ARN).
    #   @return [Array<String>]
    #
    # @!attribute [rw] mount_options
    #   Specifies the version of the Server Message Block (SMB) protocol
    #   that DataSync uses to access an SMB file server.
    #   @return [Types::SmbMountOptions]
    #
    # @!attribute [rw] authentication_type
    #   Specifies the authentication protocol that DataSync uses to connect
    #   to your SMB file server. DataSync supports `NTLM` (default) and
    #   `KERBEROS` authentication.
    #
    #   For more information, see [Providing DataSync access to SMB file
    #   servers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #   @return [String]
    #
    # @!attribute [rw] dns_ip_addresses
    #   Specifies the IPv4 addresses for the DNS servers that your SMB file
    #   server belongs to. This parameter applies only if
    #   `AuthenticationType` is set to `KERBEROS`.
    #
    #   If you have multiple domains in your environment, configuring this
    #   parameter makes sure that DataSync connects to the right SMB file
    #   server.
    #   @return [Array<String>]
    #
    # @!attribute [rw] kerberos_principal
    #   Specifies a Kerberos prinicpal, which is an identity in your
    #   Kerberos realm that has permission to access the files, folders, and
    #   file metadata in your SMB file server.
    #
    #   A Kerberos principal might look like
    #   `HOST/kerberosuser@MYDOMAIN.ORG`.
    #
    #   Principal names are case sensitive. Your DataSync task execution
    #   will fail if the principal that you specify for this parameter
    #   doesn’t exactly match the principal that you use to create the
    #   keytab file.
    #   @return [String]
    #
    # @!attribute [rw] kerberos_keytab
    #   Specifies your Kerberos key table (keytab) file, which includes
    #   mappings between your Kerberos principal and encryption keys.
    #
    #   The file must be base64 encoded. If you're using the CLI, the
    #   encoding is done for you.
    #
    #   To avoid task execution errors, make sure that the Kerberos
    #   principal that you use to create the keytab file matches exactly
    #   what you specify for `KerberosPrincipal`.
    #   @return [String]
    #
    # @!attribute [rw] kerberos_krb_5_conf
    #   Specifies a Kerberos configuration file (`krb5.conf`) that defines
    #   your Kerberos realm configuration.
    #
    #   The file must be base64 encoded. If you're using the CLI, the
    #   encoding is done for you.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationSmbRequest AWS API Documentation
    #
    class UpdateLocationSmbRequest < Struct.new(
      :location_arn,
      :subdirectory,
      :server_hostname,
      :user,
      :domain,
      :password,
      :agent_arns,
      :mount_options,
      :authentication_type,
      :dns_ip_addresses,
      :kerberos_principal,
      :kerberos_keytab,
      :kerberos_krb_5_conf)
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
    #   to configure any option before calling [StartTaskExecution][1].
    #
    #   You also can override your task options for each task execution. For
    #   example, you might want to adjust the `LogLevel` for an individual
    #   execution.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html
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
    #   Specifies the ARN of the task that you want to update.
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
    #   to configure any option before calling [StartTaskExecution][1].
    #
    #   You also can override your task options for each task execution. For
    #   example, you might want to adjust the `LogLevel` for an individual
    #   execution.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html
    #   @return [Types::Options]
    #
    # @!attribute [rw] excludes
    #   Specifies exclude filters that define the files, objects, and
    #   folders in your source location that you don't want DataSync to
    #   transfer. For more information and examples, see [Specifying what
    #   DataSync transfers by using filters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] schedule
    #   Specifies a schedule for when you want your task to run. For more
    #   information, see [Scheduling your task][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html
    #   @return [Types::TaskSchedule]
    #
    # @!attribute [rw] name
    #   Specifies the name of your task.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_log_group_arn
    #   Specifies the Amazon Resource Name (ARN) of an Amazon CloudWatch log
    #   group for monitoring your task.
    #
    #   For Enhanced mode tasks, you must use `/aws/datasync` as your log
    #   group name. For example:
    #
    #   `arn:aws:logs:us-east-1:111222333444:log-group:/aws/datasync:*`
    #
    #   For more information, see [Monitoring data transfers with CloudWatch
    #   Logs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/configure-logging.html
    #   @return [String]
    #
    # @!attribute [rw] includes
    #   Specifies include filters define the files, objects, and folders in
    #   your source location that you want DataSync to transfer. For more
    #   information and examples, see [Specifying what DataSync transfers by
    #   using filters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] manifest_config
    #   Configures a manifest, which is a list of files or objects that you
    #   want DataSync to transfer. For more information and configuration
    #   examples, see [Specifying what DataSync transfers by using a
    #   manifest][1].
    #
    #   When using this parameter, your caller identity (the IAM role that
    #   you're using DataSync with) must have the `iam:PassRole`
    #   permission. The [AWSDataSyncFullAccess][2] policy includes this
    #   permission.
    #
    #   To remove a manifest configuration, specify this parameter as empty.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess
    #   @return [Types::ManifestConfig]
    #
    # @!attribute [rw] task_report_config
    #   Specifies how you want to configure a task report, which provides
    #   detailed information about your DataSync transfer. For more
    #   information, see [Monitoring your DataSync transfers with task
    #   reports][1].
    #
    #   When using this parameter, your caller identity (the IAM role that
    #   you're using DataSync with) must have the `iam:PassRole`
    #   permission. The [AWSDataSyncFullAccess][2] policy includes this
    #   permission.
    #
    #   To remove a task report configuration, specify this parameter as
    #   empty.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess
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
      :manifest_config,
      :task_report_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateTaskResponse AWS API Documentation
    #
    class UpdateTaskResponse < Aws::EmptyStructure; end

  end
end

