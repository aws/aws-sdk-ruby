# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DataSync
  module Types

    # Represents a single entry in a list of agents. `AgentListEntry`
    # returns an array that contains a list of agents when the ListAgents
    # operation is called.
    #
    # @!attribute [rw] agent_arn
    #   The Amazon Resource Name (ARN) of the agent.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the agent.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/AgentListEntry AWS API Documentation
    #
    class AgentListEntry < Struct.new(
      :agent_arn,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # CancelTaskExecutionRequest
    #
    # @note When making an API call, you may pass CancelTaskExecutionRequest
    #   data as a hash:
    #
    #       {
    #         task_execution_arn: "TaskExecutionArn", # required
    #       }
    #
    # @!attribute [rw] task_execution_arn
    #   The Amazon Resource Name (ARN) of the task execution to cancel.
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

    # CreateAgentRequest
    #
    # @note When making an API call, you may pass CreateAgentRequest
    #   data as a hash:
    #
    #       {
    #         activation_key: "ActivationKey", # required
    #         agent_name: "TagValue",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         vpc_endpoint_id: "VpcEndpointId",
    #         subnet_arns: ["Ec2SubnetArn"],
    #         security_group_arns: ["Ec2SecurityGroupArn"],
    #       }
    #
    # @!attribute [rw] activation_key
    #   Your agent activation key. You can get the activation key either by
    #   sending an HTTP GET request with redirects that enable you to get
    #   the agent IP address (port 80). Alternatively, you can get it from
    #   the AWS DataSync console.
    #
    #   The redirect URL returned in the response provides you the
    #   activation key for your agent in the query string parameter
    #   `activationKey`. It might also include other activation-related
    #   parameters; however, these are merely defaults. The arguments you
    #   pass to this API call determine the actual configuration of your
    #   agent.
    #
    #   For more information, see Activating an Agent in the *AWS DataSync
    #   User Guide.*
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   The name you configured for your agent. This value is a text
    #   reference that is used to identify the agent in the console.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents the tag that you want to
    #   associate with the agent. The value can be an empty string. This
    #   value helps you manage, filter, and search for your agents.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters:
    #   + - = . \_ : / @.
    #
    #    </note>
    #   @return [Array<Types::TagListEntry>]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The ID of the VPC (virtual private cloud) endpoint that the agent
    #   has access to. This is the client-side VPC endpoint, also called a
    #   PrivateLink. If you don't have a PrivateLink VPC endpoint, see
    #   [Creating a VPC Endpoint Service Configuration][1] in the Amazon VPC
    #   User Guide.
    #
    #   VPC endpoint ID looks like this: `vpce-01234d5aff67890e1`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html#create-endpoint-service
    #   @return [String]
    #
    # @!attribute [rw] subnet_arns
    #   The Amazon Resource Names (ARNs) of the subnets in which DataSync
    #   will create elastic network interfaces for each data transfer task.
    #   The agent that runs a task must be private. When you start a task
    #   that is associated with an agent created in a VPC, or one that has
    #   access to an IP address in a VPC, then the task is also private. In
    #   this case, DataSync creates four network interfaces for each task in
    #   your subnet. For a data transfer to work, the agent must be able to
    #   route to all these four network interfaces.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_arns
    #   The ARNs of the security groups used to protect your data transfer
    #   task subnets. See CreateAgentRequest$SubnetArns.
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
    #   The Amazon Resource Name (ARN) of the agent. Use the `ListAgents`
    #   operation to return a list of agents for your account and AWS
    #   Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateAgentResponse AWS API Documentation
    #
    class CreateAgentResponse < Struct.new(
      :agent_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateLocationEfsRequest
    #
    # @note When making an API call, you may pass CreateLocationEfsRequest
    #   data as a hash:
    #
    #       {
    #         subdirectory: "EfsSubdirectory",
    #         efs_filesystem_arn: "EfsFilesystemArn", # required
    #         ec2_config: { # required
    #           subnet_arn: "Ec2SubnetArn", # required
    #           security_group_arns: ["Ec2SecurityGroupArn"], # required
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] subdirectory
    #   A subdirectory in the location’s path. This subdirectory in the EFS
    #   file system is used to read data from the EFS source location or
    #   write data to the EFS destination. By default, AWS DataSync uses the
    #   root directory.
    #
    #   <note markdown="1"> `Subdirectory` must be specified with forward slashes. For example,
    #   `/path/to/folder`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] efs_filesystem_arn
    #   The Amazon Resource Name (ARN) for the Amazon EFS file system.
    #   @return [String]
    #
    # @!attribute [rw] ec2_config
    #   The subnet and security group that the Amazon EFS file system uses.
    #   The security group that you provide needs to be able to communicate
    #   with the security group on the mount target in the subnet specified.
    #
    #   The exact relationship between security group M (of the mount
    #   target) and security group S (which you provide for DataSync to use
    #   at this stage) is as follows:
    #
    #   * Security group M (which you associate with the mount target) must
    #     allow inbound access for the Transmission Control Protocol (TCP)
    #     on the NFS port (2049) from security group S. You can enable
    #     inbound connections either by IP address (CIDR range) or security
    #     group.
    #
    #   * Security group S (provided to DataSync to access EFS) should have
    #     a rule that enables outbound connections to the NFS port on one of
    #     the file system’s mount targets. You can enable outbound
    #     connections either by IP address (CIDR range) or security group.
    #
    #     For information about security groups and mount targets, see
    #     Security Groups for Amazon EC2 Instances and Mount Targets in the
    #     *Amazon EFS User Guide.*
    #   @return [Types::Ec2Config]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents a tag that you want to add to the
    #   resource. The value can be an empty string. This value helps you
    #   manage, filter, and search for your resources. We recommend that you
    #   create a name tag for your location.
    #   @return [Array<Types::TagListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationEfsRequest AWS API Documentation
    #
    class CreateLocationEfsRequest < Struct.new(
      :subdirectory,
      :efs_filesystem_arn,
      :ec2_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateLocationEfs
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the Amazon EFS file system
    #   location that is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationEfsResponse AWS API Documentation
    #
    class CreateLocationEfsResponse < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLocationFsxWindowsRequest
    #   data as a hash:
    #
    #       {
    #         subdirectory: "FsxWindowsSubdirectory",
    #         fsx_filesystem_arn: "FsxFilesystemArn", # required
    #         security_group_arns: ["Ec2SecurityGroupArn"], # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         user: "SmbUser", # required
    #         domain: "SmbDomain",
    #         password: "SmbPassword", # required
    #       }
    #
    # @!attribute [rw] subdirectory
    #   A subdirectory in the location’s path. This subdirectory in the
    #   Amazon FSx for Windows file system is used to read data from the
    #   Amazon FSx for Windows source location or write data to the FSx for
    #   Windows destination.
    #   @return [String]
    #
    # @!attribute [rw] fsx_filesystem_arn
    #   The Amazon Resource Name (ARN) for the FSx for Windows file system.
    #   @return [String]
    #
    # @!attribute [rw] security_group_arns
    #   The Amazon Resource Names (ARNs) of the security groups that are to
    #   use to configure the FSx for Windows file system.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents a tag that you want to add to the
    #   resource. The value can be an empty string. This value helps you
    #   manage, filter, and search for your resources. We recommend that you
    #   create a name tag for your location.
    #   @return [Array<Types::TagListEntry>]
    #
    # @!attribute [rw] user
    #   The user who has the permissions to access files and folders in the
    #   FSx for Windows file system.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The name of the Windows domain that the FSx for Windows server
    #   belongs to.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password of the user who has the permissions to access files and
    #   folders in the FSx for Windows file system.
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
    #   The Amazon Resource Name (ARN) of the FSx for Windows file system
    #   location that is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationFsxWindowsResponse AWS API Documentation
    #
    class CreateLocationFsxWindowsResponse < Struct.new(
      :location_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateLocationNfsRequest
    #
    # @note When making an API call, you may pass CreateLocationNfsRequest
    #   data as a hash:
    #
    #       {
    #         subdirectory: "NfsSubdirectory", # required
    #         server_hostname: "ServerHostname", # required
    #         on_prem_config: { # required
    #           agent_arns: ["AgentArn"], # required
    #         },
    #         mount_options: {
    #           version: "AUTOMATIC", # accepts AUTOMATIC, NFS3, NFS4_0, NFS4_1
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] subdirectory
    #   The subdirectory in the NFS file system that is used to read data
    #   from the NFS source location or write data to the NFS destination.
    #   The NFS path should be a path that's exported by the NFS server, or
    #   a subdirectory of that path. The path should be such that it can be
    #   mounted by other NFS clients in your network.
    #
    #   To see all the paths exported by your NFS server. run "`showmount
    #   -e nfs-server-name`" from an NFS client that has access to your
    #   server. You can specify any directory that appears in the results,
    #   and any subdirectory of that directory. Ensure that the NFS export
    #   is accessible without Kerberos authentication.
    #
    #   To transfer all the data in the folder you specified, DataSync needs
    #   to have permissions to read all the data. To ensure this, either
    #   configure the NFS export with `no_root_squash,` or ensure that the
    #   permissions for all of the files that you want DataSync allow read
    #   access for all users. Doing either enables the agent to read the
    #   files. For the agent to access directories, you must additionally
    #   enable all execute access.
    #
    #   If you are copying data to or from your AWS Snowcone device, see
    #   [NFS Server on AWS Snowcone][1] for more information.
    #
    #   For information about NFS export configuration, see 18.7. The
    #   /etc/exports Configuration File in the Red Hat Enterprise Linux
    #   documentation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone
    #   @return [String]
    #
    # @!attribute [rw] server_hostname
    #   The name of the NFS server. This value is the IP address or Domain
    #   Name Service (DNS) name of the NFS server. An agent that is
    #   installed on-premises uses this host name to mount the NFS server in
    #   a network.
    #
    #   If you are copying data to or from your AWS Snowcone device, see
    #   [NFS Server on AWS Snowcone][1] for more information.
    #
    #   <note markdown="1"> This name must either be DNS-compliant or must be an IP version 4
    #   (IPv4) address.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone
    #   @return [String]
    #
    # @!attribute [rw] on_prem_config
    #   Contains a list of Amazon Resource Names (ARNs) of agents that are
    #   used to connect to an NFS server.
    #
    #   If you are copying data to or from your AWS Snowcone device, see
    #   [NFS Server on AWS Snowcone][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone
    #   @return [Types::OnPremConfig]
    #
    # @!attribute [rw] mount_options
    #   The NFS mount options that DataSync can use to mount your NFS share.
    #   @return [Types::NfsMountOptions]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents the tag that you want to add to
    #   the location. The value can be an empty string. We recommend using
    #   tags to name your resources.
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
    #   The Amazon Resource Name (ARN) of the source NFS file system
    #   location that is created.
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
    # @note When making an API call, you may pass CreateLocationObjectStorageRequest
    #   data as a hash:
    #
    #       {
    #         server_hostname: "ServerHostname", # required
    #         server_port: 1,
    #         server_protocol: "HTTPS", # accepts HTTPS, HTTP
    #         subdirectory: "S3Subdirectory",
    #         bucket_name: "ObjectStorageBucketName", # required
    #         access_key: "ObjectStorageAccessKey",
    #         secret_key: "ObjectStorageSecretKey",
    #         agent_arns: ["AgentArn"], # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] server_hostname
    #   The name of the self-managed object storage server. This value is
    #   the IP address or Domain Name Service (DNS) name of the object
    #   storage server. An agent uses this host name to mount the object
    #   storage server in a network.
    #   @return [String]
    #
    # @!attribute [rw] server_port
    #   The port that your self-managed object storage server accepts
    #   inbound network traffic on. The server port is set by default to TCP
    #   80 (HTTP) or TCP 443 (HTTPS). You can specify a custom port if your
    #   self-managed object storage server requires one.
    #   @return [Integer]
    #
    # @!attribute [rw] server_protocol
    #   The protocol that the object storage server uses to communicate.
    #   Valid values are HTTP or HTTPS.
    #   @return [String]
    #
    # @!attribute [rw] subdirectory
    #   The subdirectory in the self-managed object storage server that is
    #   used to read data from.
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   The bucket on the self-managed object storage server that is used to
    #   read data from.
    #   @return [String]
    #
    # @!attribute [rw] access_key
    #   Optional. The access key is used if credentials are required to
    #   access the self-managed object storage server. If your object
    #   storage requires a user name and password to authenticate, use
    #   `AccessKey` and `SecretKey` to provide the user name and password,
    #   respectively.
    #   @return [String]
    #
    # @!attribute [rw] secret_key
    #   Optional. The secret key is used if credentials are required to
    #   access the self-managed object storage server. If your object
    #   storage requires a user name and password to authenticate, use
    #   `AccessKey` and `SecretKey` to provide the user name and password,
    #   respectively.
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   The Amazon Resource Name (ARN) of the agents associated with the
    #   self-managed object storage server location.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents the tag that you want to add to
    #   the location. The value can be an empty string. We recommend using
    #   tags to name your resources.
    #   @return [Array<Types::TagListEntry>]
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
      :tags)
      SENSITIVE = [:secret_key]
      include Aws::Structure
    end

    # CreateLocationObjectStorageResponse
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the agents associated with the
    #   self-managed object storage server location.
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
    # @note When making an API call, you may pass CreateLocationS3Request
    #   data as a hash:
    #
    #       {
    #         subdirectory: "S3Subdirectory",
    #         s3_bucket_arn: "S3BucketArn", # required
    #         s3_storage_class: "STANDARD", # accepts STANDARD, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, DEEP_ARCHIVE, OUTPOSTS
    #         s3_config: { # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #         },
    #         agent_arns: ["AgentArn"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] subdirectory
    #   A subdirectory in the Amazon S3 bucket. This subdirectory in Amazon
    #   S3 is used to read data from the S3 source location or write data to
    #   the S3 destination.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 bucket. If the
    #   bucket is on an AWS Outpost, this must be an access point ARN.
    #   @return [String]
    #
    # @!attribute [rw] s3_storage_class
    #   The Amazon S3 storage class that you want to store your files in
    #   when this location is used as a task destination. For buckets in AWS
    #   Regions, the storage class defaults to Standard. For buckets on AWS
    #   Outposts, the storage class defaults to AWS S3 Outposts.
    #
    #   For more information about S3 storage classes, see [Amazon S3
    #   Storage Classes][1] in the *Amazon Simple Storage Service Developer
    #   Guide*. Some storage classes have behaviors that can affect your S3
    #   storage cost. For detailed information, see using-storage-classes.
    #
    #
    #
    #   [1]: https://aws.amazon.com/s3/storage-classes/
    #   @return [String]
    #
    # @!attribute [rw] s3_config
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that is used to access an Amazon S3 bucket.
    #
    #   For detailed information about using such a role, see Creating a
    #   Location for Amazon S3 in the *AWS DataSync User Guide*.
    #   @return [Types::S3Config]
    #
    # @!attribute [rw] agent_arns
    #   If you are using DataSync on an AWS Outpost, specify the Amazon
    #   Resource Names (ARNs) of the DataSync agents deployed on your AWS
    #   Outpost. For more information about launching a DataSync agent on an
    #   Amazon Outpost, see outposts-agent.
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
    # @note When making an API call, you may pass CreateLocationSmbRequest
    #   data as a hash:
    #
    #       {
    #         subdirectory: "SmbSubdirectory", # required
    #         server_hostname: "ServerHostname", # required
    #         user: "SmbUser", # required
    #         domain: "SmbDomain",
    #         password: "SmbPassword", # required
    #         agent_arns: ["AgentArn"], # required
    #         mount_options: {
    #           version: "AUTOMATIC", # accepts AUTOMATIC, SMB2, SMB3
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] subdirectory
    #   The subdirectory in the SMB file system that is used to read data
    #   from the SMB source location or write data to the SMB destination.
    #   The SMB path should be a path that's exported by the SMB server, or
    #   a subdirectory of that path. The path should be such that it can be
    #   mounted by other SMB clients in your network.
    #
    #   <note markdown="1"> `Subdirectory` must be specified with forward slashes. For example,
    #   `/path/to/folder`.
    #
    #    </note>
    #
    #   To transfer all the data in the folder you specified, DataSync needs
    #   to have permissions to mount the SMB share, as well as to access all
    #   the data in that share. To ensure this, either ensure that the
    #   user/password specified belongs to the user who can mount the share,
    #   and who has the appropriate permissions for all of the files and
    #   directories that you want DataSync to access, or use credentials of
    #   a member of the Backup Operators group to mount the share. Doing
    #   either enables the agent to access the data. For the agent to access
    #   directories, you must additionally enable all execute access.
    #   @return [String]
    #
    # @!attribute [rw] server_hostname
    #   The name of the SMB server. This value is the IP address or Domain
    #   Name Service (DNS) name of the SMB server. An agent that is
    #   installed on-premises uses this hostname to mount the SMB server in
    #   a network.
    #
    #   <note markdown="1"> This name must either be DNS-compliant or must be an IP version 4
    #   (IPv4) address.
    #
    #    </note>
    #   @return [String]
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
    # @!attribute [rw] password
    #   The password of the user who can mount the share, has the
    #   permissions to access files and folders in the SMB share.
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   The Amazon Resource Names (ARNs) of agents to use for a Simple
    #   Message Block (SMB) location.
    #   @return [Array<String>]
    #
    # @!attribute [rw] mount_options
    #   The mount options used by DataSync to access the SMB server.
    #   @return [Types::SmbMountOptions]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents the tag that you want to add to
    #   the location. The value can be an empty string. We recommend using
    #   tags to name your resources.
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
    #   The Amazon Resource Name (ARN) of the source SMB file system
    #   location that is created.
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
    # @note When making an API call, you may pass CreateTaskRequest
    #   data as a hash:
    #
    #       {
    #         source_location_arn: "LocationArn", # required
    #         destination_location_arn: "LocationArn", # required
    #         cloud_watch_log_group_arn: "LogGroupArn",
    #         name: "TagValue",
    #         options: {
    #           verify_mode: "POINT_IN_TIME_CONSISTENT", # accepts POINT_IN_TIME_CONSISTENT, ONLY_FILES_TRANSFERRED, NONE
    #           overwrite_mode: "ALWAYS", # accepts ALWAYS, NEVER
    #           atime: "NONE", # accepts NONE, BEST_EFFORT
    #           mtime: "NONE", # accepts NONE, PRESERVE
    #           uid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #           gid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #           preserve_deleted_files: "PRESERVE", # accepts PRESERVE, REMOVE
    #           preserve_devices: "NONE", # accepts NONE, PRESERVE
    #           posix_permissions: "NONE", # accepts NONE, PRESERVE
    #           bytes_per_second: 1,
    #           task_queueing: "ENABLED", # accepts ENABLED, DISABLED
    #           log_level: "OFF", # accepts OFF, BASIC, TRANSFER
    #           transfer_mode: "CHANGED", # accepts CHANGED, ALL
    #         },
    #         excludes: [
    #           {
    #             filter_type: "SIMPLE_PATTERN", # accepts SIMPLE_PATTERN
    #             value: "FilterValue",
    #           },
    #         ],
    #         schedule: {
    #           schedule_expression: "ScheduleExpressionCron", # required
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] source_location_arn
    #   The Amazon Resource Name (ARN) of the source location for the task.
    #   @return [String]
    #
    # @!attribute [rw] destination_location_arn
    #   The Amazon Resource Name (ARN) of an AWS storage resource's
    #   location.
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
    #   The set of configuration options that control the behavior of a
    #   single execution of the task that occurs when you call
    #   `StartTaskExecution`. You can configure these options to preserve
    #   metadata such as user ID (UID) and group ID (GID), file permissions,
    #   data integrity verification, and so on.
    #
    #   For each individual task execution, you can override these options
    #   by specifying the `OverrideOptions` before starting the task
    #   execution. For more information, see the operation.
    #   @return [Types::Options]
    #
    # @!attribute [rw] excludes
    #   A list of filter rules that determines which files to exclude from a
    #   task. The list should contain a single filter string that consists
    #   of the patterns to exclude. The patterns are delimited by "\|"
    #   (that is, a pipe), for example, `"/folder1|/folder2"`
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] schedule
    #   Specifies a schedule used to periodically transfer files from a
    #   source to a destination location. The schedule should be specified
    #   in UTC time. For more information, see task-scheduling.
    #   @return [Types::TaskSchedule]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents the tag that you want to add to
    #   the resource. The value can be an empty string.
    #   @return [Array<Types::TagListEntry>]
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
      :tags)
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

    # DeleteAgentRequest
    #
    # @note When making an API call, you may pass DeleteAgentRequest
    #   data as a hash:
    #
    #       {
    #         agent_arn: "AgentArn", # required
    #       }
    #
    # @!attribute [rw] agent_arn
    #   The Amazon Resource Name (ARN) of the agent to delete. Use the
    #   `ListAgents` operation to return a list of agents for your account
    #   and AWS Region.
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
    # @note When making an API call, you may pass DeleteLocationRequest
    #   data as a hash:
    #
    #       {
    #         location_arn: "LocationArn", # required
    #       }
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
    # @note When making an API call, you may pass DeleteTaskRequest
    #   data as a hash:
    #
    #       {
    #         task_arn: "TaskArn", # required
    #       }
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task to delete.
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
    # @note When making an API call, you may pass DescribeAgentRequest
    #   data as a hash:
    #
    #       {
    #         agent_arn: "AgentArn", # required
    #       }
    #
    # @!attribute [rw] agent_arn
    #   The Amazon Resource Name (ARN) of the agent to describe.
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
    #   The Amazon Resource Name (ARN) of the agent.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the agent.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the agent. If the status is ONLINE, then the agent is
    #   configured properly and is available to use. The Running status is
    #   the normal running status for an agent. If the status is OFFLINE,
    #   the agent's VM is turned off or the agent is in an unhealthy state.
    #   When the issue that caused the unhealthy state is resolved, the
    #   agent returns to ONLINE status.
    #   @return [String]
    #
    # @!attribute [rw] last_connection_time
    #   The time that the agent last connected to DataSyc.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   The time that the agent was activated (that is, created in your
    #   account).
    #   @return [Time]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint that your agent is connected to. If the
    #   endpoint is a VPC endpoint, the agent is not accessible over the
    #   public internet.
    #   @return [String]
    #
    # @!attribute [rw] private_link_config
    #   The subnet and the security group that DataSync used to access a VPC
    #   endpoint.
    #   @return [Types::PrivateLinkConfig]
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
      :private_link_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeLocationEfsRequest
    #
    # @note When making an API call, you may pass DescribeLocationEfsRequest
    #   data as a hash:
    #
    #       {
    #         location_arn: "LocationArn", # required
    #       }
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the EFS location to describe.
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
    #   The Amazon Resource Name (ARN) of the EFS location that was
    #   described.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URL of the EFS location that was described.
    #   @return [String]
    #
    # @!attribute [rw] ec2_config
    #   The subnet and the security group that DataSync uses to access
    #   target EFS file system. The subnet must have at least one mount
    #   target for that file system. The security group that you provide
    #   needs to be able to communicate with the security group on the mount
    #   target in the subnet specified.
    #   @return [Types::Ec2Config]
    #
    # @!attribute [rw] creation_time
    #   The time that the EFS location was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationEfsResponse AWS API Documentation
    #
    class DescribeLocationEfsResponse < Struct.new(
      :location_arn,
      :location_uri,
      :ec2_config,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeLocationFsxWindowsRequest
    #   data as a hash:
    #
    #       {
    #         location_arn: "LocationArn", # required
    #       }
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the FSx for Windows location to
    #   describe.
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
    #   The Amazon Resource Name (ARN) of the FSx for Windows location that
    #   was described.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URL of the FSx for Windows location that was described.
    #   @return [String]
    #
    # @!attribute [rw] security_group_arns
    #   The Amazon Resource Names (ARNs) of the security groups that are
    #   configured for the FSx for Windows file system.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_time
    #   The time that the FSx for Windows location was created.
    #   @return [Time]
    #
    # @!attribute [rw] user
    #   The user who has the permissions to access files and folders in the
    #   FSx for Windows file system.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The name of the Windows domain that the FSx for Windows server
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

    # DescribeLocationNfsRequest
    #
    # @note When making an API call, you may pass DescribeLocationNfsRequest
    #   data as a hash:
    #
    #       {
    #         location_arn: "LocationArn", # required
    #       }
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the NFS location to describe.
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
    #   The Amazon Resource Name (ARN) of the NFS location that was
    #   described.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URL of the source NFS location that was described.
    #   @return [String]
    #
    # @!attribute [rw] on_prem_config
    #   A list of Amazon Resource Names (ARNs) of agents to use for a
    #   Network File System (NFS) location.
    #   @return [Types::OnPremConfig]
    #
    # @!attribute [rw] mount_options
    #   The NFS mount options that DataSync used to mount your NFS share.
    #   @return [Types::NfsMountOptions]
    #
    # @!attribute [rw] creation_time
    #   The time that the NFS location was created.
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
    # @note When making an API call, you may pass DescribeLocationObjectStorageRequest
    #   data as a hash:
    #
    #       {
    #         location_arn: "LocationArn", # required
    #       }
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the self-managed object storage
    #   server location that was described.
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
    #   The Amazon Resource Name (ARN) of the self-managed object storage
    #   server location to describe.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The URL of the source self-managed object storage server location
    #   that was described.
    #   @return [String]
    #
    # @!attribute [rw] access_key
    #   Optional. The access key is used if credentials are required to
    #   access the self-managed object storage server. If your object
    #   storage requires a user name and password to authenticate, use
    #   `AccessKey` and `SecretKey` to provide the user name and password,
    #   respectively.
    #   @return [String]
    #
    # @!attribute [rw] server_port
    #   The port that your self-managed object storage server accepts
    #   inbound network traffic on. The server port is set by default to TCP
    #   80 (HTTP) or TCP 443 (HTTPS).
    #   @return [Integer]
    #
    # @!attribute [rw] server_protocol
    #   The protocol that the object storage server uses to communicate.
    #   Valid values are HTTP or HTTPS.
    #   @return [String]
    #
    # @!attribute [rw] agent_arns
    #   The Amazon Resource Name (ARN) of the agents associated with the
    #   self-managed object storage server location.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_time
    #   The time that the self-managed object storage server agent was
    #   created.
    #   @return [Time]
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
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeLocationS3Request
    #
    # @note When making an API call, you may pass DescribeLocationS3Request
    #   data as a hash:
    #
    #       {
    #         location_arn: "LocationArn", # required
    #       }
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
    #   Classes][1] in the *Amazon Simple Storage Service Developer Guide*.
    #   Some storage classes have behaviors that can affect your S3 storage
    #   cost. For detailed information, see using-storage-classes.
    #
    #
    #
    #   [1]: https://aws.amazon.com/s3/storage-classes/
    #   @return [String]
    #
    # @!attribute [rw] s3_config
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that is used to access an Amazon S3 bucket.
    #
    #   For detailed information about using such a role, see Creating a
    #   Location for Amazon S3 in the *AWS DataSync User Guide*.
    #   @return [Types::S3Config]
    #
    # @!attribute [rw] agent_arns
    #   If you are using DataSync on an Amazon Outpost, the Amazon Resource
    #   Name (ARNs) of the EC2 agents deployed on your AWS Outpost. For more
    #   information about launching a DataSync agent on an Amazon Outpost,
    #   see outposts-agent.
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
    # @note When making an API call, you may pass DescribeLocationSmbRequest
    #   data as a hash:
    #
    #       {
    #         location_arn: "LocationArn", # required
    #       }
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
    #   The URL of the source SBM location that was described.
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

    # DescribeTaskExecutionRequest
    #
    # @note When making an API call, you may pass DescribeTaskExecutionRequest
    #   data as a hash:
    #
    #       {
    #         task_execution_arn: "TaskExecutionArn", # required
    #       }
    #
    # @!attribute [rw] task_execution_arn
    #   The Amazon Resource Name (ARN) of the task that is being executed.
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
    #   The Amazon Resource Name (ARN) of the task execution that was
    #   described. `TaskExecutionArn` is hierarchical and includes `TaskArn`
    #   for the task that was executed.
    #
    #   For example, a `TaskExecution` value with the ARN
    #   `arn:aws:datasync:us-east-1:111222333444:task/task-0208075f79cedf4a2/execution/exec-08ef1e88ec491019b`
    #   executed the task with the ARN
    #   `arn:aws:datasync:us-east-1:111222333444:task/task-0208075f79cedf4a2`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the task execution.
    #
    #   For detailed information about task execution statuses, see
    #   Understanding Task Statuses in the *AWS DataSync User Guide.*
    #   @return [String]
    #
    # @!attribute [rw] options
    #   Represents the options that are available to control the behavior of
    #   a StartTaskExecution operation. Behavior includes preserving
    #   metadata such as user ID (UID), group ID (GID), and file
    #   permissions, and also overwriting files in the destination, data
    #   integrity verification, and so on.
    #
    #   A task has a set of default options associated with it. If you
    #   don't specify an option in StartTaskExecution, the default value is
    #   used. You can override the defaults options on each task execution
    #   by specifying an overriding `Options` value to StartTaskExecution.
    #   @return [Types::Options]
    #
    # @!attribute [rw] excludes
    #   A list of filter rules that determines which files to exclude from a
    #   task. The list should contain a single filter string that consists
    #   of the patterns to exclude. The patterns are delimited by "\|"
    #   (that is, a pipe), for example: `"/folder1|/folder2"`
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] includes
    #   A list of filter rules that determines which files to include when
    #   running a task. The list should contain a single filter string that
    #   consists of the patterns to include. The patterns are delimited by
    #   "\|" (that is, a pipe), for example: `"/folder1|/folder2"`
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] start_time
    #   The time that the task execution was started.
    #   @return [Time]
    #
    # @!attribute [rw] estimated_files_to_transfer
    #   The expected number of files that is to be transferred over the
    #   network. This value is calculated during the PREPARING phase, before
    #   the TRANSFERRING phase. This value is the expected number of files
    #   to be transferred. It's calculated based on comparing the content
    #   of the source and destination locations and finding the delta that
    #   needs to be transferred.
    #   @return [Integer]
    #
    # @!attribute [rw] estimated_bytes_to_transfer
    #   The estimated physical number of bytes that is to be transferred
    #   over the network.
    #   @return [Integer]
    #
    # @!attribute [rw] files_transferred
    #   The actual number of files that was transferred over the network.
    #   This value is calculated and updated on an ongoing basis during the
    #   TRANSFERRING phase. It's updated periodically when each file is
    #   read from the source and sent over the network.
    #
    #   If failures occur during a transfer, this value can be less than
    #   `EstimatedFilesToTransfer`. This value can also be greater than
    #   `EstimatedFilesTransferred` in some cases. This element is
    #   implementation-specific for some location types, so don't use it as
    #   an indicator for a correct file number or to monitor your task
    #   execution.
    #   @return [Integer]
    #
    # @!attribute [rw] bytes_written
    #   The number of logical bytes written to the destination AWS storage
    #   resource.
    #   @return [Integer]
    #
    # @!attribute [rw] bytes_transferred
    #   The physical number of bytes transferred over the network.
    #   @return [Integer]
    #
    # @!attribute [rw] result
    #   The result of the task execution.
    #   @return [Types::TaskExecutionResultDetail]
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
      :result)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeTaskRequest
    #
    # @note When making an API call, you may pass DescribeTaskRequest
    #   data as a hash:
    #
    #       {
    #         task_arn: "TaskArn", # required
    #       }
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task to describe.
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
    #   Understanding Task Statuses in the *AWS DataSync User Guide.*
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the task that was described.
    #   @return [String]
    #
    # @!attribute [rw] current_task_execution_arn
    #   The Amazon Resource Name (ARN) of the task execution that is syncing
    #   files.
    #   @return [String]
    #
    # @!attribute [rw] source_location_arn
    #   The Amazon Resource Name (ARN) of the source file system's
    #   location.
    #   @return [String]
    #
    # @!attribute [rw] destination_location_arn
    #   The Amazon Resource Name (ARN) of the AWS storage resource's
    #   location.
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
    #   The Amazon Resource Name (ARN) of the source ENIs (Elastic Network
    #   Interface) that was created for your subnet.
    #   @return [Array<String>]
    #
    # @!attribute [rw] destination_network_interface_arns
    #   The Amazon Resource Name (ARN) of the destination ENIs (Elastic
    #   Network Interface) that was created for your subnet.
    #   @return [Array<String>]
    #
    # @!attribute [rw] options
    #   The set of configuration options that control the behavior of a
    #   single execution of the task that occurs when you call
    #   `StartTaskExecution`. You can configure these options to preserve
    #   metadata such as user ID (UID) and group (GID), file permissions,
    #   data integrity verification, and so on.
    #
    #   For each individual task execution, you can override these options
    #   by specifying the overriding `OverrideOptions` value to operation.
    #   @return [Types::Options]
    #
    # @!attribute [rw] excludes
    #   A list of filter rules that determines which files to exclude from a
    #   task. The list should contain a single filter string that consists
    #   of the patterns to exclude. The patterns are delimited by "\|"
    #   (that is, a pipe), for example: `"/folder1|/folder2"`
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] schedule
    #   The schedule used to periodically transfer files from a source to a
    #   destination location.
    #   @return [Types::TaskSchedule]
    #
    # @!attribute [rw] error_code
    #   Errors that AWS DataSync encountered during execution of the task.
    #   You can use this error code to help troubleshoot issues.
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
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The subnet and the security group that DataSync uses to access target
    # EFS file system. The subnet must have at least one mount target for
    # that file system. The security group that you provide needs to be able
    # to communicate with the security group on the mount target in the
    # subnet specified.
    #
    # @note When making an API call, you may pass Ec2Config
    #   data as a hash:
    #
    #       {
    #         subnet_arn: "Ec2SubnetArn", # required
    #         security_group_arns: ["Ec2SecurityGroupArn"], # required
    #       }
    #
    # @!attribute [rw] subnet_arn
    #   The ARN of the subnet and the security group that DataSync uses to
    #   access the target EFS file system.
    #   @return [String]
    #
    # @!attribute [rw] security_group_arns
    #   The Amazon Resource Names (ARNs) of the security groups that are
    #   configured for the Amazon EC2 resource.
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

    # Specifies which files, folders and objects to include or exclude when
    # transferring files from source to destination.
    #
    # @note When making an API call, you may pass FilterRule
    #   data as a hash:
    #
    #       {
    #         filter_type: "SIMPLE_PATTERN", # accepts SIMPLE_PATTERN
    #         value: "FilterValue",
    #       }
    #
    # @!attribute [rw] filter_type
    #   The type of filter rule to apply. AWS DataSync only supports the
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

    # This exception is thrown when an error occurs in the AWS DataSync
    # service.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListAgentsRequest
    #
    # @note When making an API call, you may pass ListAgentsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of agents to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin the
    #   next list of agents.
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
    #   A list of agents in your account.
    #   @return [Array<Types::AgentListEntry>]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin
    #   returning the next list of agents.
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

    # ListLocationsRequest
    #
    # @note When making an API call, you may pass ListLocationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         filters: [
    #           {
    #             name: "LocationUri", # required, accepts LocationUri, LocationType, CreationTime
    #             values: ["FilterAttributeValue"], # required
    #             operator: "Equals", # required, accepts Equals, NotEquals, In, LessThanOrEqual, LessThan, GreaterThanOrEqual, GreaterThan, Contains, NotContains, BeginsWith
    #           },
    #         ],
    #       }
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

    # ListTagsForResourceRequest
    #
    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "TaggableResourceArn", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags to list.
    #   @return [String]
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
    #   Array of resource tags.
    #   @return [Array<Types::TagListEntry>]
    #
    # @!attribute [rw] next_token
    #   An opaque string that indicates the position at which to begin
    #   returning the next list of resource tags.
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
    # @note When making an API call, you may pass ListTaskExecutionsRequest
    #   data as a hash:
    #
    #       {
    #         task_arn: "TaskArn",
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
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
    # @note When making an API call, you may pass ListTasksRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         filters: [
    #           {
    #             name: "LocationId", # required, accepts LocationId, CreationTime
    #             values: ["FilterAttributeValue"], # required
    #             operator: "Equals", # required, accepts Equals, NotEquals, In, LessThanOrEqual, LessThan, GreaterThanOrEqual, GreaterThan, Contains, NotContains, BeginsWith
    #           },
    #         ],
    #       }
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

    # You can use API filters to narrow down the list of resources returned
    # by `ListLocations`. For example, to retrieve all your Amazon S3
    # locations, you can use `ListLocations` with filter name `LocationType
    # S3` and `Operator Equals`.
    #
    # @note When making an API call, you may pass LocationFilter
    #   data as a hash:
    #
    #       {
    #         name: "LocationUri", # required, accepts LocationUri, LocationType, CreationTime
    #         values: ["FilterAttributeValue"], # required
    #         operator: "Equals", # required, accepts Equals, NotEquals, In, LessThanOrEqual, LessThan, GreaterThanOrEqual, GreaterThan, Contains, NotContains, BeginsWith
    #       }
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
    #   `Equals` or `Contains`). For more about API filtering operators, see
    #   query-resources.
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
    # ListLocations operation is called.
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the location. For Network File
    #   System (NFS) or Amazon EFS, the location is the export path. For
    #   Amazon S3, the location is the prefix path that you want to mount
    #   and use as the root of the location.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   Represents a list of URLs of a location. `LocationUri` returns an
    #   array that contains a list of locations when the ListLocations
    #   operation is called.
    #
    #   Format: `TYPE://GLOBAL_ID/SUBDIR`.
    #
    #   TYPE designates the type of location. Valid values: NFS \| EFS \|
    #   S3.
    #
    #   GLOBAL\_ID is the globally unique identifier of the resource that
    #   backs the location. An example for EFS is `us-east-2.fs-abcd1234`.
    #   An example for Amazon S3 is the bucket name, such as `myBucket`. An
    #   example for NFS is a valid IPv4 address or a host name compliant
    #   with Domain Name Service (DNS).
    #
    #   SUBDIR is a valid file system path, delimited by forward slashes as
    #   is the *nix convention. For NFS and Amazon EFS, it's the export
    #   path to mount the location. For Amazon S3, it's the prefix path
    #   that you mount to and treat as the root of the location.
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

    # Represents the mount options that are available for DataSync to access
    # an NFS location.
    #
    # @note When making an API call, you may pass NfsMountOptions
    #   data as a hash:
    #
    #       {
    #         version: "AUTOMATIC", # accepts AUTOMATIC, NFS3, NFS4_0, NFS4_1
    #       }
    #
    # @!attribute [rw] version
    #   The specific NFS version that you want DataSync to use to mount your
    #   NFS share. If the server refuses to use the version specified, the
    #   sync will fail. If you don't specify a version, DataSync defaults
    #   to `AUTOMATIC`. That is, DataSync automatically selects a version
    #   based on negotiation with the NFS server.
    #
    #   You can specify the following NFS versions:
    #
    #   * <b> <a href="https://tools.ietf.org/html/rfc1813">NFSv3</a> </b> -
    #     stateless protocol version that allows for asynchronous writes on
    #     the server.
    #
    #   * <b> <a href="https://tools.ietf.org/html/rfc3530">NFSv4.0</a> </b>
    #     - stateful, firewall-friendly protocol version that supports
    #     delegations and pseudo filesystems.
    #
    #   * <b> <a href="https://tools.ietf.org/html/rfc5661">NFSv4.1</a> </b>
    #     - stateful protocol version that supports sessions, directory
    #     delegations, and parallel data processing. Version 4.1 also
    #     includes all features available in version 4.0.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/NfsMountOptions AWS API Documentation
    #
    class NfsMountOptions < Struct.new(
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of Amazon Resource Names (ARNs) of agents to use for a Network
    # File System (NFS) location.
    #
    # @note When making an API call, you may pass OnPremConfig
    #   data as a hash:
    #
    #       {
    #         agent_arns: ["AgentArn"], # required
    #       }
    #
    # @!attribute [rw] agent_arns
    #   ARNs of the agents to use for an NFS location.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/OnPremConfig AWS API Documentation
    #
    class OnPremConfig < Struct.new(
      :agent_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the options that are available to control the behavior of a
    # StartTaskExecution operation. Behavior includes preserving metadata
    # such as user ID (UID), group ID (GID), and file permissions, and also
    # overwriting files in the destination, data integrity verification, and
    # so on.
    #
    # A task has a set of default options associated with it. If you don't
    # specify an option in StartTaskExecution, the default value is used.
    # You can override the defaults options on each task execution by
    # specifying an overriding `Options` value to StartTaskExecution.
    #
    # @note When making an API call, you may pass Options
    #   data as a hash:
    #
    #       {
    #         verify_mode: "POINT_IN_TIME_CONSISTENT", # accepts POINT_IN_TIME_CONSISTENT, ONLY_FILES_TRANSFERRED, NONE
    #         overwrite_mode: "ALWAYS", # accepts ALWAYS, NEVER
    #         atime: "NONE", # accepts NONE, BEST_EFFORT
    #         mtime: "NONE", # accepts NONE, PRESERVE
    #         uid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #         gid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #         preserve_deleted_files: "PRESERVE", # accepts PRESERVE, REMOVE
    #         preserve_devices: "NONE", # accepts NONE, PRESERVE
    #         posix_permissions: "NONE", # accepts NONE, PRESERVE
    #         bytes_per_second: 1,
    #         task_queueing: "ENABLED", # accepts ENABLED, DISABLED
    #         log_level: "OFF", # accepts OFF, BASIC, TRANSFER
    #         transfer_mode: "CHANGED", # accepts CHANGED, ALL
    #       }
    #
    # @!attribute [rw] verify_mode
    #   A value that determines whether a data integrity verification should
    #   be performed at the end of a task execution after all data and
    #   metadata have been transferred. For more information, see
    #   create-task
    #
    #   Default value: POINT\_IN\_TIME\_CONSISTENT.
    #
    #   ONLY\_FILES\_TRANSFERRED (recommended): Perform verification only on
    #   files that were transferred.
    #
    #   POINT\_IN\_TIME\_CONSISTENT: Scan the entire source and entire
    #   destination at the end of the transfer to verify that source and
    #   destination are fully synchronized. This option isn't supported
    #   when transferring to S3 Glacier or S3 Glacier Deep Archive storage
    #   classes.
    #
    #   NONE: No additional verification is done at the end of the transfer,
    #   but all data transmissions are integrity-checked with checksum
    #   verification during the transfer.
    #   @return [String]
    #
    # @!attribute [rw] overwrite_mode
    #   A value that determines whether files at the destination should be
    #   overwritten or preserved when copying files. If set to `NEVER` a
    #   destination file will not be replaced by a source file, even if the
    #   destination file differs from the source file. If you modify files
    #   in the destination and you sync the files, you can use this value to
    #   protect against overwriting those changes.
    #
    #   Some storage classes have specific behaviors that can affect your S3
    #   storage cost. For detailed information, see using-storage-classes in
    #   the *AWS DataSync User Guide*.
    #   @return [String]
    #
    # @!attribute [rw] atime
    #   A file metadata value that shows the last time a file was accessed
    #   (that is, when the file was read or written to). If you set `Atime`
    #   to BEST\_EFFORT, DataSync attempts to preserve the original `Atime`
    #   attribute on all source files (that is, the version before the
    #   PREPARING phase). However, `Atime`'s behavior is not fully standard
    #   across platforms, so AWS DataSync can only do this on a best-effort
    #   basis.
    #
    #   Default value: BEST\_EFFORT.
    #
    #   BEST\_EFFORT: Attempt to preserve the per-file `Atime` value
    #   (recommended).
    #
    #   NONE: Ignore `Atime`.
    #
    #   <note markdown="1"> If `Atime` is set to BEST\_EFFORT, `Mtime` must be set to PRESERVE.
    #
    #    If `Atime` is set to NONE, `Mtime` must also be NONE.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] mtime
    #   A value that indicates the last time that a file was modified (that
    #   is, a file was written to) before the PREPARING phase.
    #
    #   Default value: PRESERVE.
    #
    #   PRESERVE: Preserve original `Mtime` (recommended)
    #
    #   NONE: Ignore `Mtime`.
    #
    #   <note markdown="1"> If `Mtime` is set to PRESERVE, `Atime` must be set to BEST\_EFFORT.
    #
    #    If `Mtime` is set to NONE, `Atime` must also be set to NONE.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] uid
    #   The user ID (UID) of the file's owner.
    #
    #   Default value: INT\_VALUE. This preserves the integer value of the
    #   ID.
    #
    #   INT\_VALUE: Preserve the integer value of UID and group ID (GID)
    #   (recommended).
    #
    #   NONE: Ignore UID and GID.
    #   @return [String]
    #
    # @!attribute [rw] gid
    #   The group ID (GID) of the file's owners.
    #
    #   Default value: INT\_VALUE. This preserves the integer value of the
    #   ID.
    #
    #   INT\_VALUE: Preserve the integer value of user ID (UID) and GID
    #   (recommended).
    #
    #   NONE: Ignore UID and GID.
    #   @return [String]
    #
    # @!attribute [rw] preserve_deleted_files
    #   A value that specifies whether files in the destination that don't
    #   exist in the source file system should be preserved. This option can
    #   affect your storage cost. If your task deletes objects, you might
    #   incur minimum storage duration charges for certain storage classes.
    #   For detailed information, see using-storage-classes in the *AWS
    #   DataSync User Guide*.
    #
    #   Default value: PRESERVE.
    #
    #   PRESERVE: Ignore such destination files (recommended).
    #
    #   REMOVE: Delete destination files that aren’t present in the source.
    #   @return [String]
    #
    # @!attribute [rw] preserve_devices
    #   A value that determines whether AWS DataSync should preserve the
    #   metadata of block and character devices in the source file system,
    #   and recreate the files with that device name and metadata on the
    #   destination.
    #
    #   <note markdown="1"> AWS DataSync can't sync the actual contents of such devices,
    #   because they are nonterminal and don't return an end-of-file (EOF)
    #   marker.
    #
    #    </note>
    #
    #   Default value: NONE.
    #
    #   NONE: Ignore special devices (recommended).
    #
    #   PRESERVE: Preserve character and block device metadata. This option
    #   isn't currently supported for Amazon EFS.
    #   @return [String]
    #
    # @!attribute [rw] posix_permissions
    #   A value that determines which users or groups can access a file for
    #   a specific purpose such as reading, writing, or execution of the
    #   file.
    #
    #   Default value: PRESERVE.
    #
    #   PRESERVE: Preserve POSIX-style permissions (recommended).
    #
    #   NONE: Ignore permissions.
    #
    #   <note markdown="1"> AWS DataSync can preserve extant permissions of a source location.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] bytes_per_second
    #   A value that limits the bandwidth used by AWS DataSync. For example,
    #   if you want AWS DataSync to use a maximum of 1 MB, set this value to
    #   `1048576` (`=1024*1024`).
    #   @return [Integer]
    #
    # @!attribute [rw] task_queueing
    #   A value that determines whether tasks should be queued before
    #   executing the tasks. If set to `ENABLED`, the tasks will be queued.
    #   The default is `ENABLED`.
    #
    #   If you use the same agent to run multiple tasks, you can enable the
    #   tasks to run in series. For more information, see
    #   queue-task-execution.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   A value that determines the type of logs that DataSync publishes to
    #   a log stream in the Amazon CloudWatch log group that you provide.
    #   For more information about providing a log group for DataSync, see
    #   [CloudWatchLogGroupArn][1]. If set to `OFF`, no logs are published.
    #   `BASIC` publishes logs on errors for individual files transferred,
    #   and `TRANSFER` publishes logs for every file or object that is
    #   transferred and integrity checked.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_CreateTask.html#DataSync-CreateTask-request-CloudWatchLogGroupArn
    #   @return [String]
    #
    # @!attribute [rw] transfer_mode
    #   A value that determines whether DataSync transfers only the data and
    #   metadata that differ between the source and the destination
    #   location, or whether DataSync transfers all the content from the
    #   source, without comparing to the destination location.
    #
    #   CHANGED: DataSync copies only data or metadata that is new or
    #   different content from the source location to the destination
    #   location.
    #
    #   ALL: DataSync copies all source location content to the destination,
    #   without comparing to existing content on the destination.
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
      :transfer_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC endpoint, subnet, and security group that an agent uses to
    # access IP addresses in a VPC (Virtual Private Cloud).
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The ID of the VPC endpoint that is configured for an agent. An agent
    #   that is configured with a VPC endpoint will not be accessible over
    #   the public internet.
    #   @return [String]
    #
    # @!attribute [rw] private_link_endpoint
    #   The private endpoint that is configured for an agent that has access
    #   to IP addresses in a [PrivateLink][1]. An agent that is configured
    #   with this endpoint will not be accessible over the public internet.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html
    #   @return [String]
    #
    # @!attribute [rw] subnet_arns
    #   The Amazon Resource Names (ARNs) of the subnets that are configured
    #   for an agent activated in a VPC or an agent that has access to a VPC
    #   endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_arns
    #   The Amazon Resource Names (ARNs) of the security groups that are
    #   configured for the EC2 resource that hosts an agent activated in a
    #   VPC or an agent that has access to a VPC endpoint.
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

    # The Amazon Resource Name (ARN) of the AWS Identity and Access
    # Management (IAM) role that is used to access an Amazon S3 bucket.
    #
    # For detailed information about using such a role, see Creating a
    # Location for Amazon S3 in the *AWS DataSync User Guide*.
    #
    # @note When making an API call, you may pass S3Config
    #   data as a hash:
    #
    #       {
    #         bucket_access_role_arn: "IamRoleArn", # required
    #       }
    #
    # @!attribute [rw] bucket_access_role_arn
    #   The Amazon S3 bucket to access. This bucket is used as a parameter
    #   in the CreateLocationS3 operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/S3Config AWS API Documentation
    #
    class S3Config < Struct.new(
      :bucket_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the mount options that are available for DataSync to access
    # an SMB location.
    #
    # @note When making an API call, you may pass SmbMountOptions
    #   data as a hash:
    #
    #       {
    #         version: "AUTOMATIC", # accepts AUTOMATIC, SMB2, SMB3
    #       }
    #
    # @!attribute [rw] version
    #   The specific SMB version that you want DataSync to use to mount your
    #   SMB share. If you don't specify a version, DataSync defaults to
    #   `AUTOMATIC`. That is, DataSync automatically selects a version based
    #   on negotiation with the SMB server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/SmbMountOptions AWS API Documentation
    #
    class SmbMountOptions < Struct.new(
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # StartTaskExecutionRequest
    #
    # @note When making an API call, you may pass StartTaskExecutionRequest
    #   data as a hash:
    #
    #       {
    #         task_arn: "TaskArn", # required
    #         override_options: {
    #           verify_mode: "POINT_IN_TIME_CONSISTENT", # accepts POINT_IN_TIME_CONSISTENT, ONLY_FILES_TRANSFERRED, NONE
    #           overwrite_mode: "ALWAYS", # accepts ALWAYS, NEVER
    #           atime: "NONE", # accepts NONE, BEST_EFFORT
    #           mtime: "NONE", # accepts NONE, PRESERVE
    #           uid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #           gid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #           preserve_deleted_files: "PRESERVE", # accepts PRESERVE, REMOVE
    #           preserve_devices: "NONE", # accepts NONE, PRESERVE
    #           posix_permissions: "NONE", # accepts NONE, PRESERVE
    #           bytes_per_second: 1,
    #           task_queueing: "ENABLED", # accepts ENABLED, DISABLED
    #           log_level: "OFF", # accepts OFF, BASIC, TRANSFER
    #           transfer_mode: "CHANGED", # accepts CHANGED, ALL
    #         },
    #         includes: [
    #           {
    #             filter_type: "SIMPLE_PATTERN", # accepts SIMPLE_PATTERN
    #             value: "FilterValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task to start.
    #   @return [String]
    #
    # @!attribute [rw] override_options
    #   Represents the options that are available to control the behavior of
    #   a StartTaskExecution operation. Behavior includes preserving
    #   metadata such as user ID (UID), group ID (GID), and file
    #   permissions, and also overwriting files in the destination, data
    #   integrity verification, and so on.
    #
    #   A task has a set of default options associated with it. If you
    #   don't specify an option in StartTaskExecution, the default value is
    #   used. You can override the defaults options on each task execution
    #   by specifying an overriding `Options` value to StartTaskExecution.
    #   @return [Types::Options]
    #
    # @!attribute [rw] includes
    #   A list of filter rules that determines which files to include when
    #   running a task. The pattern should contain a single filter string
    #   that consists of the patterns to include. The patterns are delimited
    #   by "\|" (that is, a pipe). For example: `"/folder1|/folder2"`
    #   @return [Array<Types::FilterRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/StartTaskExecutionRequest AWS API Documentation
    #
    class StartTaskExecutionRequest < Struct.new(
      :task_arn,
      :override_options,
      :includes)
      SENSITIVE = []
      include Aws::Structure
    end

    # StartTaskExecutionResponse
    #
    # @!attribute [rw] task_execution_arn
    #   The Amazon Resource Name (ARN) of the specific task execution that
    #   was started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/StartTaskExecutionResponse AWS API Documentation
    #
    class StartTaskExecutionResponse < Struct.new(
      :task_execution_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single entry in a list of AWS resource tags.
    # `TagListEntry` returns an array that contains a list of tasks when the
    # ListTagsForResource operation is called.
    #
    # @note When making an API call, you may pass TagListEntry
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   The key for an AWS resource tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for an AWS resource tag.
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
    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "TaggableResourceArn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to apply the tag to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply.
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
    # specific invocations of a task when ListTaskExecutions operation is
    # called.
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
    #   The total time in milliseconds that AWS DataSync spent in the
    #   PREPARING phase.
    #   @return [Integer]
    #
    # @!attribute [rw] prepare_status
    #   The status of the PREPARING phase.
    #   @return [String]
    #
    # @!attribute [rw] total_duration
    #   The total time in milliseconds that AWS DataSync took to transfer
    #   the file from the source to the destination location.
    #   @return [Integer]
    #
    # @!attribute [rw] transfer_duration
    #   The total time in milliseconds that AWS DataSync spent in the
    #   TRANSFERRING phase.
    #   @return [Integer]
    #
    # @!attribute [rw] transfer_status
    #   The status of the TRANSFERRING Phase.
    #   @return [String]
    #
    # @!attribute [rw] verify_duration
    #   The total time in milliseconds that AWS DataSync spent in the
    #   VERIFYING phase.
    #   @return [Integer]
    #
    # @!attribute [rw] verify_status
    #   The status of the VERIFYING Phase.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   Errors that AWS DataSync encountered during execution of the task.
    #   You can use this error code to help troubleshoot issues.
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
    # @note When making an API call, you may pass TaskFilter
    #   data as a hash:
    #
    #       {
    #         name: "LocationId", # required, accepts LocationId, CreationTime
    #         values: ["FilterAttributeValue"], # required
    #         operator: "Equals", # required, accepts Equals, NotEquals, In, LessThanOrEqual, LessThan, GreaterThanOrEqual, GreaterThan, Contains, NotContains, BeginsWith
    #       }
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
    #   `Equals` or `Contains`). For more about API filtering operators, see
    #   query-resources.
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
    # an array that contains a list of tasks when the ListTasks operation is
    # called. A task includes the source and destination file systems to
    # sync and the options to use for the tasks.
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

    # Specifies the schedule you want your task to use for repeated
    # executions. For more information, see [Schedule Expressions for
    # Rules][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html
    #
    # @note When making an API call, you may pass TaskSchedule
    #   data as a hash:
    #
    #       {
    #         schedule_expression: "ScheduleExpressionCron", # required
    #       }
    #
    # @!attribute [rw] schedule_expression
    #   A cron expression that specifies when AWS DataSync initiates a
    #   scheduled transfer from a source to a destination location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TaskSchedule AWS API Documentation
    #
    class TaskSchedule < Struct.new(
      :schedule_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # UntagResourceRequest
    #
    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "TaggableResourceArn", # required
    #         keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove the tag
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] keys
    #   The keys in the key-value pair in the tag to remove.
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
    # @note When making an API call, you may pass UpdateAgentRequest
    #   data as a hash:
    #
    #       {
    #         agent_arn: "AgentArn", # required
    #         name: "TagValue",
    #       }
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

    # UpdateTaskResponse
    #
    # @note When making an API call, you may pass UpdateTaskRequest
    #   data as a hash:
    #
    #       {
    #         task_arn: "TaskArn", # required
    #         options: {
    #           verify_mode: "POINT_IN_TIME_CONSISTENT", # accepts POINT_IN_TIME_CONSISTENT, ONLY_FILES_TRANSFERRED, NONE
    #           overwrite_mode: "ALWAYS", # accepts ALWAYS, NEVER
    #           atime: "NONE", # accepts NONE, BEST_EFFORT
    #           mtime: "NONE", # accepts NONE, PRESERVE
    #           uid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #           gid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #           preserve_deleted_files: "PRESERVE", # accepts PRESERVE, REMOVE
    #           preserve_devices: "NONE", # accepts NONE, PRESERVE
    #           posix_permissions: "NONE", # accepts NONE, PRESERVE
    #           bytes_per_second: 1,
    #           task_queueing: "ENABLED", # accepts ENABLED, DISABLED
    #           log_level: "OFF", # accepts OFF, BASIC, TRANSFER
    #           transfer_mode: "CHANGED", # accepts CHANGED, ALL
    #         },
    #         excludes: [
    #           {
    #             filter_type: "SIMPLE_PATTERN", # accepts SIMPLE_PATTERN
    #             value: "FilterValue",
    #           },
    #         ],
    #         schedule: {
    #           schedule_expression: "ScheduleExpressionCron", # required
    #         },
    #         name: "TagValue",
    #         cloud_watch_log_group_arn: "LogGroupArn",
    #       }
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the resource name of the task to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   Represents the options that are available to control the behavior of
    #   a StartTaskExecution operation. Behavior includes preserving
    #   metadata such as user ID (UID), group ID (GID), and file
    #   permissions, and also overwriting files in the destination, data
    #   integrity verification, and so on.
    #
    #   A task has a set of default options associated with it. If you
    #   don't specify an option in StartTaskExecution, the default value is
    #   used. You can override the defaults options on each task execution
    #   by specifying an overriding `Options` value to StartTaskExecution.
    #   @return [Types::Options]
    #
    # @!attribute [rw] excludes
    #   A list of filter rules that determines which files to exclude from a
    #   task. The list should contain a single filter string that consists
    #   of the patterns to exclude. The patterns are delimited by "\|"
    #   (that is, a pipe), for example: `"/folder1|/folder2"`
    #   @return [Array<Types::FilterRule>]
    #
    # @!attribute [rw] schedule
    #   Specifies a schedule used to periodically transfer files from a
    #   source to a destination location. You can configure your task to
    #   execute hourly, daily, weekly or on specific days of the week. You
    #   control when in the day or hour you want the task to execute. The
    #   time you specify is UTC time. For more information, see
    #   task-scheduling.
    #   @return [Types::TaskSchedule]
    #
    # @!attribute [rw] name
    #   The name of the task to update.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_log_group_arn
    #   The Amazon Resource Name (ARN) of the resource name of the
    #   CloudWatch LogGroup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateTaskRequest AWS API Documentation
    #
    class UpdateTaskRequest < Struct.new(
      :task_arn,
      :options,
      :excludes,
      :schedule,
      :name,
      :cloud_watch_log_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateTaskResponse AWS API Documentation
    #
    class UpdateTaskResponse < Aws::EmptyStructure; end

  end
end
