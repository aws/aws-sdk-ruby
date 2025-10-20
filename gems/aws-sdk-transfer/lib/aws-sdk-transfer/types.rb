# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Transfer
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details for an AS2 connector object. The connector object
    # is used for AS2 outbound processes, to connect the Transfer Family
    # customer with the trading partner.
    #
    # @!attribute [rw] local_profile_id
    #   A unique identifier for the AS2 local profile.
    #   @return [String]
    #
    # @!attribute [rw] partner_profile_id
    #   A unique identifier for the partner profile for the connector.
    #   @return [String]
    #
    # @!attribute [rw] message_subject
    #   Used as the `Subject` HTTP header attribute in AS2 messages that are
    #   being sent with the connector.
    #   @return [String]
    #
    # @!attribute [rw] compression
    #   Specifies whether the AS2 file is compressed.
    #   @return [String]
    #
    # @!attribute [rw] encryption_algorithm
    #   The algorithm that is used to encrypt the file.
    #
    #   Note the following:
    #
    #   * Do not use the `DES_EDE3_CBC` algorithm unless you must support a
    #     legacy client that requires it, as it is a weak encryption
    #     algorithm.
    #
    #   * You can only specify `NONE` if the URL for your connector uses
    #     HTTPS. Using HTTPS ensures that no traffic is sent in clear text.
    #   @return [String]
    #
    # @!attribute [rw] signing_algorithm
    #   The algorithm that is used to sign the AS2 messages sent with the
    #   connector.
    #   @return [String]
    #
    # @!attribute [rw] mdn_signing_algorithm
    #   The signing algorithm for the MDN response.
    #
    #   <note markdown="1"> If set to DEFAULT (or not set at all), the value for
    #   `SigningAlgorithm` is used.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] mdn_response
    #   Used for outbound requests (from an Transfer Family connector to a
    #   partner AS2 server) to determine whether the partner response for
    #   transfers is synchronous or asynchronous. Specify either of the
    #   following values:
    #
    #   * `SYNC`: The system expects a synchronous MDN response, confirming
    #     that the file was transferred successfully (or not).
    #
    #   * `NONE`: Specifies that no MDN response is required.
    #   @return [String]
    #
    # @!attribute [rw] basic_auth_secret_id
    #   Provides Basic authentication support to the AS2 Connectors API. To
    #   use Basic authentication, you must provide the name or Amazon
    #   Resource Name (ARN) of a secret in Secrets Manager.
    #
    #   The default value for this parameter is `null`, which indicates that
    #   Basic authentication is not enabled for the connector.
    #
    #   If the connector should use Basic authentication, the secret needs
    #   to be in the following format:
    #
    #   `{ "Username": "user-name", "Password": "user-password" }`
    #
    #   Replace `user-name` and `user-password` with the credentials for the
    #   actual user that is being authenticated.
    #
    #   Note the following:
    #
    #   * You are storing these credentials in Secrets Manager, *not passing
    #     them directly* into this API.
    #
    #   * If you are using the API, SDKs, or CloudFormation to configure
    #     your connector, then you must create the secret before you can
    #     enable Basic authentication. However, if you are using the Amazon
    #     Web Services management console, you can have the system create
    #     the secret for you.
    #
    #   If you have previously enabled Basic authentication for a connector,
    #   you can disable it by using the `UpdateConnector` API call. For
    #   example, if you are using the CLI, you can run the following command
    #   to remove Basic authentication:
    #
    #   `update-connector --connector-id my-connector-id --as2-config
    #   'BasicAuthSecretId=""'`
    #   @return [String]
    #
    # @!attribute [rw] preserve_content_type
    #   Allows you to use the Amazon S3 `Content-Type` that is associated
    #   with objects in S3 instead of having the content type mapped based
    #   on the file extension. This parameter is enabled by default when you
    #   create an AS2 connector from the console, but disabled by default
    #   when you create an AS2 connector by calling the API directly.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/As2ConnectorConfig AWS API Documentation
    #
    class As2ConnectorConfig < Struct.new(
      :local_profile_id,
      :partner_profile_id,
      :message_subject,
      :compression,
      :encryption_algorithm,
      :signing_algorithm,
      :mdn_signing_algorithm,
      :mdn_response,
      :basic_auth_secret_id,
      :preserve_content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the `UpdateServer` is called for a file
    # transfer protocol-enabled server that has VPC as the endpoint type and
    # the server's `VpcEndpointID` is not in the available state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration structure that defines how traffic is routed from the
    # connector to the SFTP server. Contains VPC Lattice settings when using
    # VPC\_LATTICE egress type for private connectivity through customer
    # VPCs.
    #
    # @note ConnectorEgressConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] vpc_lattice
    #   VPC\_LATTICE configuration for routing connector traffic through
    #   customer VPCs. Enables private connectivity to SFTP servers without
    #   requiring public internet access or complex network configurations.
    #   @return [Types::ConnectorVpcLatticeEgressConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ConnectorEgressConfig AWS API Documentation
    #
    class ConnectorEgressConfig < Struct.new(
      :vpc_lattice,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class VpcLattice < ConnectorEgressConfig; end
      class Unknown < ConnectorEgressConfig; end
    end

    # A structure that contains the details for files transferred using an
    # SFTP connector, during a single transfer.
    #
    # @!attribute [rw] file_path
    #   The filename and path to where the file was sent to or retrieved
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The current status for the transfer.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   For transfers that fail, this parameter contains a code indicating
    #   the reason. For example, `RETRIEVE_FILE_NOT_FOUND`
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   For transfers that fail, this parameter describes the reason for the
    #   failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ConnectorFileTransferResult AWS API Documentation
    #
    class ConnectorFileTransferResult < Struct.new(
      :file_path,
      :status_code,
      :failure_code,
      :failure_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # VPC\_LATTICE egress configuration that specifies the Resource
    # Configuration ARN and port for connecting to SFTP servers through
    # customer VPCs. Requires a valid Resource Configuration with
    # appropriate network access.
    #
    # @!attribute [rw] resource_configuration_arn
    #   ARN of the VPC\_LATTICE Resource Configuration that defines the
    #   target SFTP server location. Must point to a valid Resource
    #   Configuration in the customer's VPC with appropriate network
    #   connectivity to the SFTP server.
    #   @return [String]
    #
    # @!attribute [rw] port_number
    #   Port number for connecting to the SFTP server through VPC\_LATTICE.
    #   Defaults to 22 if not specified. Must match the port on which the
    #   target SFTP server is listening.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ConnectorVpcLatticeEgressConfig AWS API Documentation
    #
    class ConnectorVpcLatticeEgressConfig < Struct.new(
      :resource_configuration_arn,
      :port_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Each step type has its own `StepDetails` structure.
    #
    # @!attribute [rw] name
    #   The name of the step, used as an identifier.
    #   @return [String]
    #
    # @!attribute [rw] destination_file_location
    #   Specifies the location for the file being copied. Use
    #   `${Transfer:UserName}` or `${Transfer:UploadDate}` in this field to
    #   parametrize the destination prefix by username or uploaded date.
    #
    #   * Set the value of `DestinationFileLocation` to
    #     `${Transfer:UserName}` to copy uploaded files to an Amazon S3
    #     bucket that is prefixed with the name of the Transfer Family user
    #     that uploaded the file.
    #
    #   * Set the value of `DestinationFileLocation` to
    #     `${Transfer:UploadDate}` to copy uploaded files to an Amazon S3
    #     bucket that is prefixed with the date of the upload.
    #
    #     <note markdown="1"> The system resolves `UploadDate` to a date format of *YYYY-MM-DD*,
    #     based on the date the file is uploaded in UTC.
    #
    #      </note>
    #   @return [Types::InputFileLocation]
    #
    # @!attribute [rw] overwrite_existing
    #   A flag that indicates whether to overwrite an existing file of the
    #   same name. The default is `FALSE`.
    #
    #   If the workflow is processing a file that has the same name as an
    #   existing file, the behavior is as follows:
    #
    #   * If `OverwriteExisting` is `TRUE`, the existing file is replaced
    #     with the file being processed.
    #
    #   * If `OverwriteExisting` is `FALSE`, nothing happens, and the
    #     workflow processing stops.
    #   @return [String]
    #
    # @!attribute [rw] source_file_location
    #   Specifies which file to use as input to the workflow step: either
    #   the output from the previous step, or the originally uploaded file
    #   for the workflow.
    #
    #   * To use the previous file as the input, enter `${previous.file}`.
    #     In this case, this workflow step uses the output file from the
    #     previous workflow step as input. This is the default value.
    #
    #   * To use the originally uploaded file location as input for this
    #     step, enter `${original.file}`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CopyStepDetails AWS API Documentation
    #
    class CopyStepDetails < Struct.new(
      :name,
      :destination_file_location,
      :overwrite_existing,
      :source_file_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using the client.
    #
    #   A `HomeDirectory` example is `/bucket_name/home/mydirectory`.
    #
    #   <note markdown="1"> You can use the `HomeDirectory` parameter for `HomeDirectoryType`
    #   when it is set to either `PATH` or `LOGICAL`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) that you want your users'
    #   home directory to be when they log in to the server. If you set it
    #   to `PATH`, the user will see the absolute Amazon S3 bucket or Amazon
    #   EFS path as is in their file transfer protocol clients. If you set
    #   it to `LOGICAL`, you need to provide mappings in the
    #   `HomeDirectoryMappings` for how you want to make Amazon S3 or Amazon
    #   EFS paths visible to your users.
    #
    #   <note markdown="1"> If `HomeDirectoryType` is `LOGICAL`, you must provide mappings,
    #   using the `HomeDirectoryMappings` parameter. If, on the other hand,
    #   `HomeDirectoryType` is `PATH`, you provide an absolute path using
    #   the `HomeDirectory` parameter. You cannot have both `HomeDirectory`
    #   and `HomeDirectoryMappings` in your template.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 or Amazon EFS
    #   paths and keys should be visible to your user and how you want to
    #   make them visible. You must specify the `Entry` and `Target` pair,
    #   where `Entry` shows how the path is made visible and `Target` is the
    #   actual Amazon S3 or Amazon EFS path. If you only specify a target,
    #   it is displayed as is. You also must ensure that your Identity and
    #   Access Management (IAM) role provides access to paths in `Target`.
    #   This value can be set only when `HomeDirectoryType` is set to
    #   *LOGICAL*.
    #
    #   The following is an `Entry` and `Target` pair example.
    #
    #   `[ { "Entry": "/directory1", "Target":
    #   "/bucket_name/home/mydirectory" } ]`
    #
    #   In most cases, you can use this value instead of the session policy
    #   to lock down your user to the designated home directory
    #   ("`chroot`"). To do this, you can set `Entry` to `/` and set
    #   `Target` to the `HomeDirectory` parameter value.
    #
    #   The following is an `Entry` and `Target` pair example for `chroot`.
    #
    #   `[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]`
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    #
    # @!attribute [rw] policy
    #   A session policy for your user so that you can use the same Identity
    #   and Access Management (IAM) role across multiple users. This policy
    #   scopes down a user's access to portions of their Amazon S3 bucket.
    #   Variables that you can use inside this policy include
    #   `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and
    #   `${Transfer:HomeBucket}`.
    #
    #   <note markdown="1"> This policy applies only when the domain of `ServerId` is Amazon S3.
    #   Amazon EFS does not use session policies.
    #
    #    For session policies, Transfer Family stores the policy as a JSON
    #   blob, instead of the Amazon Resource Name (ARN) of the policy. You
    #   save the policy as a JSON blob and pass it in the `Policy` argument.
    #
    #    For an example of a session policy, see [Example session policy][1].
    #
    #    For more information, see [AssumeRole][2] in the *Security Token
    #   Service API Reference*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html
    #   [2]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html
    #   @return [String]
    #
    # @!attribute [rw] posix_profile
    #   The full POSIX identity, including user ID (`Uid`), group ID
    #   (`Gid`), and any secondary groups IDs (`SecondaryGids`), that
    #   controls your users' access to your Amazon EFS file systems. The
    #   POSIX permissions that are set on files and directories in your file
    #   system determine the level of access your users get when
    #   transferring files into and out of your Amazon EFS file systems.
    #   @return [Types::PosixProfile]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that controls your users' access to your Amazon S3
    #   bucket or Amazon EFS file system. The policies attached to this role
    #   determine the level of access that you want to provide your users
    #   when transferring files into and out of your Amazon S3 bucket or
    #   Amazon EFS file system. The IAM role should also contain a trust
    #   relationship that allows the server to access your resources when
    #   servicing your users' transfer requests.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server instance. This is
    #   the specific server that you added your user to.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   A unique identifier that is required to identify specific groups
    #   within your directory. The users of the group that you associate
    #   have access to your Amazon S3 or Amazon EFS resources over the
    #   enabled protocols using Transfer Family. If you know the group name,
    #   you can view the SID values by running the following command using
    #   Windows PowerShell.
    #
    #   `Get-ADGroup -Filter {samAccountName -like "YourGroupName*"}
    #   -Properties * | Select SamAccountName,ObjectSid`
    #
    #   In that command, replace *YourGroupName* with the name of your
    #   Active Directory group.
    #
    #   The regular expression used to validate this parameter is a string
    #   of characters consisting of uppercase and lowercase alphanumeric
    #   characters with no spaces. You can also include underscores or any
    #   of the following characters: =,.@:/-
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateAccessRequest AWS API Documentation
    #
    class CreateAccessRequest < Struct.new(
      :home_directory,
      :home_directory_type,
      :home_directory_mappings,
      :policy,
      :posix_profile,
      :role,
      :server_id,
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   The identifier of the server that the user is attached to.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external identifier of the group whose users have access to your
    #   Amazon S3 or Amazon EFS resources over the enabled protocols using
    #   Transfer Family.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateAccessResponse AWS API Documentation
    #
    class CreateAccessResponse < Struct.new(
      :server_id,
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A name or short description to identify the agreement.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server instance. This is
    #   the specific server that the agreement uses.
    #   @return [String]
    #
    # @!attribute [rw] local_profile_id
    #   A unique identifier for the AS2 local profile.
    #   @return [String]
    #
    # @!attribute [rw] partner_profile_id
    #   A unique identifier for the partner profile used in the agreement.
    #   @return [String]
    #
    # @!attribute [rw] base_directory
    #   The landing directory (folder) for files transferred by using the
    #   AS2 protocol.
    #
    #   A `BaseDirectory` example is
    #   `/amzn-s3-demo-bucket/home/mydirectory`.
    #   @return [String]
    #
    # @!attribute [rw] access_role
    #   Connectors are used to send files using either the AS2 or SFTP
    #   protocol. For the access role, provide the Amazon Resource Name
    #   (ARN) of the Identity and Access Management role to use.
    #
    #   **For AS2 connectors**
    #
    #   With AS2, you can send files by calling `StartFileTransfer` and
    #   specifying the file paths in the request parameter, `SendFilePaths`.
    #   We use the file’s parent directory (for example, for
    #   `--send-file-paths /bucket/dir/file.txt`, parent directory is
    #   `/bucket/dir/`) to temporarily store a processed AS2 message file,
    #   store the MDN when we receive them from the partner, and write a
    #   final JSON file containing relevant metadata of the transmission.
    #   So, the `AccessRole` needs to provide read and write access to the
    #   parent directory of the file location used in the
    #   `StartFileTransfer` request. Additionally, you need to provide read
    #   and write access to the parent directory of the files that you
    #   intend to send with `StartFileTransfer`.
    #
    #   If you are using Basic authentication for your AS2 connector, the
    #   access role requires the `secretsmanager:GetSecretValue` permission
    #   for the secret. If the secret is encrypted using a customer-managed
    #   key instead of the Amazon Web Services managed key in Secrets
    #   Manager, then the role also needs the `kms:Decrypt` permission for
    #   that key.
    #
    #   **For SFTP connectors**
    #
    #   Make sure that the access role provides read and write access to the
    #   parent directory of the file location that's used in the
    #   `StartFileTransfer` request. Additionally, make sure that the role
    #   provides `secretsmanager:GetSecretValue` permission to Secrets
    #   Manager.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the agreement. The agreement can be either `ACTIVE` or
    #   `INACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for agreements.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] preserve_filename
    #   Determines whether or not Transfer Family appends a unique string of
    #   characters to the end of the AS2 message payload filename when
    #   saving it.
    #
    #   * `ENABLED`: the filename provided by your trading parter is
    #     preserved when the file is saved.
    #
    #   * `DISABLED` (default value): when Transfer Family saves the file,
    #     the filename is adjusted, as described in [File names and
    #     locations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/send-as2-messages.html#file-names-as2
    #   @return [String]
    #
    # @!attribute [rw] enforce_message_signing
    #   Determines whether or not unsigned messages from your trading
    #   partners will be accepted.
    #
    #   * `ENABLED`: Transfer Family rejects unsigned messages from your
    #     trading partner.
    #
    #   * `DISABLED` (default value): Transfer Family accepts unsigned
    #     messages from your trading partner.
    #   @return [String]
    #
    # @!attribute [rw] custom_directories
    #   A `CustomDirectoriesType` structure. This structure specifies custom
    #   directories for storing various AS2 message files. You can specify
    #   directories for the following types of files.
    #
    #   * Failed files
    #
    #   * MDN files
    #
    #   * Payload files
    #
    #   * Status files
    #
    #   * Temporary files
    #   @return [Types::CustomDirectoriesType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateAgreementRequest AWS API Documentation
    #
    class CreateAgreementRequest < Struct.new(
      :description,
      :server_id,
      :local_profile_id,
      :partner_profile_id,
      :base_directory,
      :access_role,
      :status,
      :tags,
      :preserve_filename,
      :enforce_message_signing,
      :custom_directories)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   The unique identifier for the agreement. Use this ID for deleting,
    #   or updating an agreement, as well as in any other API calls that
    #   require that you specify the agreement ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateAgreementResponse AWS API Documentation
    #
    class CreateAgreementResponse < Struct.new(
      :agreement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] url
    #   The URL of the partner's AS2 or SFTP endpoint.
    #
    #   When creating AS2 connectors or service-managed SFTP connectors
    #   (connectors without egress configuration), you must provide a URL to
    #   specify the remote server endpoint. For VPC Lattice type connectors,
    #   the URL must be null.
    #   @return [String]
    #
    # @!attribute [rw] as_2_config
    #   A structure that contains the parameters for an AS2 connector
    #   object.
    #   @return [Types::As2ConnectorConfig]
    #
    # @!attribute [rw] access_role
    #   Connectors are used to send files using either the AS2 or SFTP
    #   protocol. For the access role, provide the Amazon Resource Name
    #   (ARN) of the Identity and Access Management role to use.
    #
    #   **For AS2 connectors**
    #
    #   With AS2, you can send files by calling `StartFileTransfer` and
    #   specifying the file paths in the request parameter, `SendFilePaths`.
    #   We use the file’s parent directory (for example, for
    #   `--send-file-paths /bucket/dir/file.txt`, parent directory is
    #   `/bucket/dir/`) to temporarily store a processed AS2 message file,
    #   store the MDN when we receive them from the partner, and write a
    #   final JSON file containing relevant metadata of the transmission.
    #   So, the `AccessRole` needs to provide read and write access to the
    #   parent directory of the file location used in the
    #   `StartFileTransfer` request. Additionally, you need to provide read
    #   and write access to the parent directory of the files that you
    #   intend to send with `StartFileTransfer`.
    #
    #   If you are using Basic authentication for your AS2 connector, the
    #   access role requires the `secretsmanager:GetSecretValue` permission
    #   for the secret. If the secret is encrypted using a customer-managed
    #   key instead of the Amazon Web Services managed key in Secrets
    #   Manager, then the role also needs the `kms:Decrypt` permission for
    #   that key.
    #
    #   **For SFTP connectors**
    #
    #   Make sure that the access role provides read and write access to the
    #   parent directory of the file location that's used in the
    #   `StartFileTransfer` request. Additionally, make sure that the role
    #   provides `secretsmanager:GetSecretValue` permission to Secrets
    #   Manager.
    #   @return [String]
    #
    # @!attribute [rw] logging_role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that allows a connector to turn on CloudWatch logging for
    #   Amazon S3 events. When set, you can view connector activity in your
    #   CloudWatch logs.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for connectors.
    #   Tags are metadata attached to connectors for any purpose.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] sftp_config
    #   A structure that contains the parameters for an SFTP connector
    #   object.
    #   @return [Types::SftpConnectorConfig]
    #
    # @!attribute [rw] security_policy_name
    #   Specifies the name of the security policy for the connector.
    #   @return [String]
    #
    # @!attribute [rw] egress_config
    #   Specifies the egress configuration for the connector, which
    #   determines how traffic is routed from the connector to the SFTP
    #   server. When set to VPC, enables routing through customer VPCs using
    #   VPC\_LATTICE for private connectivity.
    #   @return [Types::ConnectorEgressConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateConnectorRequest AWS API Documentation
    #
    class CreateConnectorRequest < Struct.new(
      :url,
      :as_2_config,
      :access_role,
      :logging_role,
      :tags,
      :sftp_config,
      :security_policy_name,
      :egress_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_id
    #   The unique identifier for the connector, returned after the API call
    #   succeeds.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateConnectorResponse AWS API Documentation
    #
    class CreateConnectorResponse < Struct.new(
      :connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] as_2_id
    #   The `As2Id` is the *AS2-name*, as defined in the [RFC 4130][1]. For
    #   inbound transfers, this is the `AS2-From` header for the AS2
    #   messages sent from the partner. For outbound connectors, this is the
    #   `AS2-To` header for the AS2 messages sent to the partner using the
    #   `StartFileTransfer` API operation. This ID cannot include spaces.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc4130
    #   @return [String]
    #
    # @!attribute [rw] profile_type
    #   Determines the type of profile to create:
    #
    #   * Specify `LOCAL` to create a local profile. A local profile
    #     represents the AS2-enabled Transfer Family server organization or
    #     party.
    #
    #   * Specify `PARTNER` to create a partner profile. A partner profile
    #     represents a remote organization, external to Transfer Family.
    #   @return [String]
    #
    # @!attribute [rw] certificate_ids
    #   An array of identifiers for the imported certificates. You use this
    #   identifier for working with profiles and partner profiles.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for AS2
    #   profiles.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateProfileRequest AWS API Documentation
    #
    class CreateProfileRequest < Struct.new(
      :as_2_id,
      :profile_type,
      :certificate_ids,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The unique identifier for the AS2 profile, returned after the API
    #   call succeeds.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateProfileResponse AWS API Documentation
    #
    class CreateProfileResponse < Struct.new(
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   The Amazon Resource Name (ARN) of the Certificate Manager (ACM)
    #   certificate. Required when `Protocols` is set to `FTPS`.
    #
    #   To request a new public certificate, see [Request a public
    #   certificate][1] in the *Certificate Manager User Guide*.
    #
    #   To import an existing certificate into ACM, see [Importing
    #   certificates into ACM][2] in the *Certificate Manager User Guide*.
    #
    #   To request a private certificate to use FTPS through private IP
    #   addresses, see [Request a private certificate][3] in the
    #   *Certificate Manager User Guide*.
    #
    #   Certificates with the following cryptographic algorithms and key
    #   sizes are supported:
    #
    #   * 2048-bit RSA (RSA\_2048)
    #
    #   * 4096-bit RSA (RSA\_4096)
    #
    #   * Elliptic Prime Curve 256 bit (EC\_prime256v1)
    #
    #   * Elliptic Prime Curve 384 bit (EC\_secp384r1)
    #
    #   * Elliptic Prime Curve 521 bit (EC\_secp521r1)
    #
    #   <note markdown="1"> The certificate must be a valid SSL/TLS X.509 version 3 certificate
    #   with FQDN or IP address specified and information about the issuer.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html
    #   [2]: https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html
    #   [3]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain of the storage system that is used for file transfers.
    #   There are two domains available: Amazon Simple Storage Service
    #   (Amazon S3) and Amazon Elastic File System (Amazon EFS). The default
    #   value is S3.
    #
    #   <note markdown="1"> After the server is created, the domain cannot be changed.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] endpoint_details
    #   The virtual private cloud (VPC) endpoint settings that are
    #   configured for your server. When you host your endpoint within your
    #   VPC, you can make your endpoint accessible only to resources within
    #   your VPC, or you can attach Elastic IP addresses and make your
    #   endpoint accessible to clients over the internet. Your VPC's
    #   default security groups are automatically assigned to your endpoint.
    #   @return [Types::EndpointDetails]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint that you want your server to use. You can
    #   choose to make your server's endpoint publicly accessible (PUBLIC)
    #   or host it inside your VPC. With an endpoint that is hosted in a
    #   VPC, you can restrict access to your server and resources only
    #   within your VPC or choose to make it internet facing by attaching
    #   Elastic IP addresses directly to it.
    #
    #   <note markdown="1"> After May 19, 2021, you won't be able to create a server using
    #   `EndpointType=VPC_ENDPOINT` in your Amazon Web Services account if
    #   your account hasn't already done so before May 19, 2021. If you
    #   have already created servers with `EndpointType=VPC_ENDPOINT` in
    #   your Amazon Web Services account on or before May 19, 2021, you will
    #   not be affected. After this date, use `EndpointType`=`VPC`.
    #
    #    For more information, see
    #   https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.
    #
    #    It is recommended that you use `VPC` as the `EndpointType`. With
    #   this endpoint type, you have the option to directly associate up to
    #   three Elastic IPv4 addresses (BYO IP included) with your server's
    #   endpoint and use VPC security groups to restrict traffic by the
    #   client's public IP address. This is not possible with
    #   `EndpointType` set to `VPC_ENDPOINT`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] host_key
    #   The RSA, ECDSA, or ED25519 private key to use for your SFTP-enabled
    #   server. You can add multiple host keys, in case you want to rotate
    #   keys, or have a set of active keys that use different algorithms.
    #
    #   Use the following command to generate an RSA 2048 bit key with no
    #   passphrase:
    #
    #   `ssh-keygen -t rsa -b 2048 -N "" -m PEM -f my-new-server-key`.
    #
    #   Use a minimum value of 2048 for the `-b` option. You can create a
    #   stronger key by using 3072 or 4096.
    #
    #   Use the following command to generate an ECDSA 256 bit key with no
    #   passphrase:
    #
    #   `ssh-keygen -t ecdsa -b 256 -N "" -m PEM -f my-new-server-key`.
    #
    #   Valid values for the `-b` option for ECDSA are 256, 384, and 521.
    #
    #   Use the following command to generate an ED25519 key with no
    #   passphrase:
    #
    #   `ssh-keygen -t ed25519 -N "" -f my-new-server-key`.
    #
    #   For all of these commands, you can replace *my-new-server-key* with
    #   a string of your choice.
    #
    #   If you aren't planning to migrate existing users from an existing
    #   SFTP-enabled server to a new server, don't update the host key.
    #   Accidentally changing a server's host key can be disruptive.
    #
    #   For more information, see [Manage host keys for your SFTP-enabled
    #   server][1] in the *Transfer Family User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_details
    #   Required when `IdentityProviderType` is set to
    #   `AWS_DIRECTORY_SERVICE`, `Amazon Web Services_LAMBDA` or
    #   `API_GATEWAY`. Accepts an array containing all of the information
    #   required to use a directory in `AWS_DIRECTORY_SERVICE` or invoke a
    #   customer-supplied authentication API, including the API Gateway URL.
    #   Cannot be specified when `IdentityProviderType` is set to
    #   `SERVICE_MANAGED`.
    #   @return [Types::IdentityProviderDetails]
    #
    # @!attribute [rw] identity_provider_type
    #   The mode of authentication for a server. The default value is
    #   `SERVICE_MANAGED`, which allows you to store and access user
    #   credentials within the Transfer Family service.
    #
    #   Use `AWS_DIRECTORY_SERVICE` to provide access to Active Directory
    #   groups in Directory Service for Microsoft Active Directory or
    #   Microsoft Active Directory in your on-premises environment or in
    #   Amazon Web Services using AD Connector. This option also requires
    #   you to provide a Directory ID by using the `IdentityProviderDetails`
    #   parameter.
    #
    #   Use the `API_GATEWAY` value to integrate with an identity provider
    #   of your choosing. The `API_GATEWAY` setting requires you to provide
    #   an Amazon API Gateway endpoint URL to call for authentication by
    #   using the `IdentityProviderDetails` parameter.
    #
    #   Use the `AWS_LAMBDA` value to directly use an Lambda function as
    #   your identity provider. If you choose this value, you must specify
    #   the ARN for the Lambda function in the `Function` parameter for the
    #   `IdentityProviderDetails` data type.
    #   @return [String]
    #
    # @!attribute [rw] logging_role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that allows a server to turn on Amazon CloudWatch logging
    #   for Amazon S3 or Amazon EFS events. When set, you can view user
    #   activity in your CloudWatch logs.
    #   @return [String]
    #
    # @!attribute [rw] post_authentication_login_banner
    #   Specifies a string to display when users connect to a server. This
    #   string is displayed after the user authenticates.
    #
    #   <note markdown="1"> The SFTP protocol does not support post-authentication display
    #   banners.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] pre_authentication_login_banner
    #   Specifies a string to display when users connect to a server. This
    #   string is displayed before the user authenticates. For example, the
    #   following banner displays details about using the system:
    #
    #   `This system is for the use of authorized users only. Individuals
    #   using this computer system without authority, or in excess of their
    #   authority, are subject to having all of their activities on this
    #   system monitored and recorded by system personnel.`
    #   @return [String]
    #
    # @!attribute [rw] protocols
    #   Specifies the file transfer protocol or protocols over which your
    #   file transfer protocol client can connect to your server's
    #   endpoint. The available protocols are:
    #
    #   * `SFTP` (Secure Shell (SSH) File Transfer Protocol): File transfer
    #     over SSH
    #
    #   * `FTPS` (File Transfer Protocol Secure): File transfer with TLS
    #     encryption
    #
    #   * `FTP` (File Transfer Protocol): Unencrypted file transfer
    #
    #   * `AS2` (Applicability Statement 2): used for transporting
    #     structured business-to-business data
    #
    #   <note markdown="1"> * If you select `FTPS`, you must choose a certificate stored in
    #     Certificate Manager (ACM) which is used to identify your server
    #     when clients connect to it over FTPS.
    #
    #   * If `Protocol` includes either `FTP` or `FTPS`, then the
    #     `EndpointType` must be `VPC` and the `IdentityProviderType` must
    #     be either `AWS_DIRECTORY_SERVICE`, `AWS_LAMBDA`, or `API_GATEWAY`.
    #
    #   * If `Protocol` includes `FTP`, then `AddressAllocationIds` cannot
    #     be associated.
    #
    #   * If `Protocol` is set only to `SFTP`, the `EndpointType` can be set
    #     to `PUBLIC` and the `IdentityProviderType` can be set any of the
    #     supported identity types: `SERVICE_MANAGED`,
    #     `AWS_DIRECTORY_SERVICE`, `AWS_LAMBDA`, or `API_GATEWAY`.
    #
    #   * If `Protocol` includes `AS2`, then the `EndpointType` must be
    #     `VPC`, and domain must be Amazon S3.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] protocol_details
    #   The protocol settings that are configured for your server.
    #
    #   <note markdown="1"> Avoid placing Network Load Balancers (NLBs) or NAT gateways in front
    #   of Transfer Family servers, as this increases costs and can cause
    #   performance issues, including reduced connection limits for FTPS.
    #   For more details, see [ Avoid placing NLBs and NATs in front of
    #   Transfer Family][1].
    #
    #    </note>
    #
    #   * To indicate passive mode (for FTP and FTPS protocols), use the
    #     `PassiveIp` parameter. Enter a single dotted-quad IPv4 address,
    #     such as the external IP address of a firewall, router, or load
    #     balancer.
    #
    #   * To ignore the error that is generated when the client attempts to
    #     use the `SETSTAT` command on a file that you are uploading to an
    #     Amazon S3 bucket, use the `SetStatOption` parameter. To have the
    #     Transfer Family server ignore the `SETSTAT` command and upload
    #     files without needing to make any changes to your SFTP client, set
    #     the value to `ENABLE_NO_OP`. If you set the `SetStatOption`
    #     parameter to `ENABLE_NO_OP`, Transfer Family generates a log entry
    #     to Amazon CloudWatch Logs, so that you can determine when the
    #     client is making a `SETSTAT` call.
    #
    #   * To determine whether your Transfer Family server resumes recent,
    #     negotiated sessions through a unique session ID, use the
    #     `TlsSessionResumptionMode` parameter.
    #
    #   * `As2Transports` indicates the transport method for the AS2
    #     messages. Currently, only HTTP is supported.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/infrastructure-security.html#nlb-considerations
    #   @return [Types::ProtocolDetails]
    #
    # @!attribute [rw] security_policy_name
    #   Specifies the name of the security policy for the server.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for servers.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] workflow_details
    #   Specifies the workflow ID for the workflow to assign and the
    #   execution role that's used for executing the workflow.
    #
    #   In addition to a workflow to execute when a file is uploaded
    #   completely, `WorkflowDetails` can also contain a workflow ID (and
    #   execution role) for a workflow to execute on partial upload. A
    #   partial upload occurs when the server session disconnects while the
    #   file is still being uploaded.
    #   @return [Types::WorkflowDetails]
    #
    # @!attribute [rw] structured_log_destinations
    #   Specifies the log groups to which your server logs are sent.
    #
    #   To specify a log group, you must provide the ARN for an existing log
    #   group. In this case, the format of the log group is as follows:
    #
    #   `arn:aws:logs:region-name:amazon-account-id:log-group:log-group-name:*`
    #
    #   For example,
    #   `arn:aws:logs:us-east-1:111122223333:log-group:mytestgroup:*`
    #
    #   If you have previously specified a log group for a server, you can
    #   clear it, and in effect turn off structured logging, by providing an
    #   empty value for this parameter in an `update-server` call. For
    #   example:
    #
    #   `update-server --server-id s-1234567890abcdef0
    #   --structured-log-destinations`
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_storage_options
    #   Specifies whether or not performance for your Amazon S3 directories
    #   is optimized.
    #
    #   * If using the console, this is enabled by default.
    #
    #   * If using the API or CLI, this is disabled by default.
    #
    #   By default, home directory mappings have a `TYPE` of `DIRECTORY`. If
    #   you enable this option, you would then need to explicitly set the
    #   `HomeDirectoryMapEntry` `Type` to `FILE` if you want a mapping to
    #   have a file target.
    #   @return [Types::S3StorageOptions]
    #
    # @!attribute [rw] ip_address_type
    #   Specifies whether to use IPv4 only, or to use dual-stack (IPv4 and
    #   IPv6) for your Transfer Family endpoint. The default value is
    #   `IPV4`.
    #
    #   The `IpAddressType` parameter has the following limitations:
    #
    #    * It cannot be changed while the server is online. You must stop
    #   the
    #     server before modifying this parameter.
    #
    #   * It cannot be updated to `DUALSTACK` if the server has
    #     `AddressAllocationIds` specified.
    #
    #   <note markdown="1"> When using `DUALSTACK` as the `IpAddressType`, you cannot set the
    #   `AddressAllocationIds` parameter for the [EndpointDetails][1] for
    #   the server.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/APIReference/API_EndpointDetails.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateServerRequest AWS API Documentation
    #
    class CreateServerRequest < Struct.new(
      :certificate,
      :domain,
      :endpoint_details,
      :endpoint_type,
      :host_key,
      :identity_provider_details,
      :identity_provider_type,
      :logging_role,
      :post_authentication_login_banner,
      :pre_authentication_login_banner,
      :protocols,
      :protocol_details,
      :security_policy_name,
      :tags,
      :workflow_details,
      :structured_log_destinations,
      :s3_storage_options,
      :ip_address_type)
      SENSITIVE = [:host_key]
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   The service-assigned identifier of the server that is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateServerResponse AWS API Documentation
    #
    class CreateServerResponse < Struct.new(
      :server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using the client.
    #
    #   A `HomeDirectory` example is `/bucket_name/home/mydirectory`.
    #
    #   <note markdown="1"> You can use the `HomeDirectory` parameter for `HomeDirectoryType`
    #   when it is set to either `PATH` or `LOGICAL`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) that you want your users'
    #   home directory to be when they log in to the server. If you set it
    #   to `PATH`, the user will see the absolute Amazon S3 bucket or Amazon
    #   EFS path as is in their file transfer protocol clients. If you set
    #   it to `LOGICAL`, you need to provide mappings in the
    #   `HomeDirectoryMappings` for how you want to make Amazon S3 or Amazon
    #   EFS paths visible to your users.
    #
    #   <note markdown="1"> If `HomeDirectoryType` is `LOGICAL`, you must provide mappings,
    #   using the `HomeDirectoryMappings` parameter. If, on the other hand,
    #   `HomeDirectoryType` is `PATH`, you provide an absolute path using
    #   the `HomeDirectory` parameter. You cannot have both `HomeDirectory`
    #   and `HomeDirectoryMappings` in your template.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 or Amazon EFS
    #   paths and keys should be visible to your user and how you want to
    #   make them visible. You must specify the `Entry` and `Target` pair,
    #   where `Entry` shows how the path is made visible and `Target` is the
    #   actual Amazon S3 or Amazon EFS path. If you only specify a target,
    #   it is displayed as is. You also must ensure that your Identity and
    #   Access Management (IAM) role provides access to paths in `Target`.
    #   This value can be set only when `HomeDirectoryType` is set to
    #   *LOGICAL*.
    #
    #   The following is an `Entry` and `Target` pair example.
    #
    #   `[ { "Entry": "/directory1", "Target":
    #   "/bucket_name/home/mydirectory" } ]`
    #
    #   In most cases, you can use this value instead of the session policy
    #   to lock your user down to the designated home directory
    #   ("`chroot`"). To do this, you can set `Entry` to `/` and set
    #   `Target` to the value the user should see for their home directory
    #   when they log in.
    #
    #   The following is an `Entry` and `Target` pair example for `chroot`.
    #
    #   `[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]`
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    #
    # @!attribute [rw] policy
    #   A session policy for your user so that you can use the same Identity
    #   and Access Management (IAM) role across multiple users. This policy
    #   scopes down a user's access to portions of their Amazon S3 bucket.
    #   Variables that you can use inside this policy include
    #   `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and
    #   `${Transfer:HomeBucket}`.
    #
    #   <note markdown="1"> This policy applies only when the domain of `ServerId` is Amazon S3.
    #   Amazon EFS does not use session policies.
    #
    #    For session policies, Transfer Family stores the policy as a JSON
    #   blob, instead of the Amazon Resource Name (ARN) of the policy. You
    #   save the policy as a JSON blob and pass it in the `Policy` argument.
    #
    #    For an example of a session policy, see [Example session policy][1].
    #
    #    For more information, see [AssumeRole][2] in the *Amazon Web
    #   Services Security Token Service API Reference*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html
    #   [2]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html
    #   @return [String]
    #
    # @!attribute [rw] posix_profile
    #   Specifies the full POSIX identity, including user ID (`Uid`), group
    #   ID (`Gid`), and any secondary groups IDs (`SecondaryGids`), that
    #   controls your users' access to your Amazon EFS file systems. The
    #   POSIX permissions that are set on files and directories in Amazon
    #   EFS determine the level of access your users get when transferring
    #   files into and out of your Amazon EFS file systems.
    #   @return [Types::PosixProfile]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that controls your users' access to your Amazon S3
    #   bucket or Amazon EFS file system. The policies attached to this role
    #   determine the level of access that you want to provide your users
    #   when transferring files into and out of your Amazon S3 bucket or
    #   Amazon EFS file system. The IAM role should also contain a trust
    #   relationship that allows the server to access your resources when
    #   servicing your users' transfer requests.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server instance. This is
    #   the specific server that you added your user to.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_body
    #   The public portion of the Secure Shell (SSH) key used to
    #   authenticate the user to the server.
    #
    #   The three standard SSH public key format elements are `<key type>`,
    #   `<body base64>`, and an optional `<comment>`, with spaces between
    #   each element.
    #
    #   Transfer Family accepts RSA, ECDSA, and ED25519 keys.
    #
    #   * For RSA keys, the key type is `ssh-rsa`.
    #
    #   * For ED25519 keys, the key type is `ssh-ed25519`.
    #
    #   * For ECDSA keys, the key type is either `ecdsa-sha2-nistp256`,
    #     `ecdsa-sha2-nistp384`, or `ecdsa-sha2-nistp521`, depending on the
    #     size of the key you generated.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for users. Tags
    #   are metadata attached to users for any purpose.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] user_name
    #   A unique string that identifies a user and is associated with a
    #   `ServerId`. This user name must be a minimum of 3 and a maximum of
    #   100 characters long. The following are valid characters: a-z, A-Z,
    #   0-9, underscore '\_', hyphen '-', period '.', and at sign
    #   '@'. The user name can't start with a hyphen, period, or at sign.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :home_directory,
      :home_directory_type,
      :home_directory_mappings,
      :policy,
      :posix_profile,
      :role,
      :server_id,
      :ssh_public_key_body,
      :tags,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   The identifier of the server that the user is attached to.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   A unique string that identifies a Transfer Family user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateUserResponse AWS API Documentation
    #
    class CreateUserResponse < Struct.new(
      :server_id,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider_details
    #   You can provide a structure that contains the details for the
    #   identity provider to use with your web app.
    #
    #   For more details about this parameter, see [Configure your identity
    #   provider for Transfer Family web apps][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/webapp-identity-center.html
    #   @return [Types::WebAppIdentityProviderDetails]
    #
    # @!attribute [rw] access_endpoint
    #   The `AccessEndpoint` is the URL that you provide to your users for
    #   them to interact with the Transfer Family web app. You can specify a
    #   custom URL or use the default value.
    #
    #   Before you enter a custom URL for this parameter, follow the steps
    #   described in [Update your access endpoint with a custom URL][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/webapp-customize.html
    #   @return [String]
    #
    # @!attribute [rw] web_app_units
    #   A union that contains the value for number of concurrent connections
    #   or the user sessions on your web app.
    #   @return [Types::WebAppUnits]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for web apps.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] web_app_endpoint_policy
    #   Setting for the type of endpoint policy for the web app. The default
    #   value is `STANDARD`.
    #
    #   If you are creating the web app in an Amazon Web Services GovCloud
    #   (US) Region, you can set this parameter to `FIPS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateWebAppRequest AWS API Documentation
    #
    class CreateWebAppRequest < Struct.new(
      :identity_provider_details,
      :access_endpoint,
      :web_app_units,
      :tags,
      :web_app_endpoint_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] web_app_id
    #   Returns a unique identifier for the web app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateWebAppResponse AWS API Documentation
    #
    class CreateWebAppResponse < Struct.new(
      :web_app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A textual description for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] steps
    #   Specifies the details for the steps that are in the specified
    #   workflow.
    #
    #   The `TYPE` specifies which of the following actions is being taken
    #   for this step.
    #
    #   * <b> <code>COPY</code> </b> - Copy the file to another location.
    #
    #   * <b> <code>CUSTOM</code> </b> - Perform a custom step with an
    #     Lambda function target.
    #
    #   * <b> <code>DECRYPT</code> </b> - Decrypt a file that was encrypted
    #     before it was uploaded.
    #
    #   * <b> <code>DELETE</code> </b> - Delete the file.
    #
    #   * <b> <code>TAG</code> </b> - Add a tag to the file.
    #
    #   <note markdown="1"> Currently, copying and tagging are supported only on S3.
    #
    #    </note>
    #
    #   For file location, you specify either the Amazon S3 bucket and key,
    #   or the Amazon EFS file system ID and path.
    #   @return [Array<Types::WorkflowStep>]
    #
    # @!attribute [rw] on_exception_steps
    #   Specifies the steps (actions) to take if errors are encountered
    #   during execution of the workflow.
    #
    #   <note markdown="1"> For custom steps, the Lambda function needs to send `FAILURE` to the
    #   call back API to kick off the exception steps. Additionally, if the
    #   Lambda does not send `SUCCESS` before it times out, the exception
    #   steps are executed.
    #
    #    </note>
    #   @return [Array<Types::WorkflowStep>]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for workflows.
    #   Tags are metadata attached to workflows for any purpose.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateWorkflowRequest AWS API Documentation
    #
    class CreateWorkflowRequest < Struct.new(
      :description,
      :steps,
      :on_exception_steps,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   A unique identifier for the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateWorkflowResponse AWS API Documentation
    #
    class CreateWorkflowResponse < Struct.new(
      :workflow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains Amazon S3 locations for storing specific types of AS2 message
    # files.
    #
    # @!attribute [rw] failed_files_directory
    #   Specifies a location to store failed AS2 message files.
    #   @return [String]
    #
    # @!attribute [rw] mdn_files_directory
    #   Specifies a location to store MDN files.
    #   @return [String]
    #
    # @!attribute [rw] payload_files_directory
    #   Specifies a location to store the payload for AS2 message files.
    #   @return [String]
    #
    # @!attribute [rw] status_files_directory
    #   Specifies a location to store AS2 status messages.
    #   @return [String]
    #
    # @!attribute [rw] temporary_files_directory
    #   Specifies a location to store temporary AS2 message files.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CustomDirectoriesType AWS API Documentation
    #
    class CustomDirectoriesType < Struct.new(
      :failed_files_directory,
      :mdn_files_directory,
      :payload_files_directory,
      :status_files_directory,
      :temporary_files_directory)
      SENSITIVE = []
      include Aws::Structure
    end

    # Each step type has its own `StepDetails` structure.
    #
    # @!attribute [rw] name
    #   The name of the step, used as an identifier.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The ARN for the Lambda function that is being called.
    #   @return [String]
    #
    # @!attribute [rw] timeout_seconds
    #   Timeout, in seconds, for the step.
    #   @return [Integer]
    #
    # @!attribute [rw] source_file_location
    #   Specifies which file to use as input to the workflow step: either
    #   the output from the previous step, or the originally uploaded file
    #   for the workflow.
    #
    #   * To use the previous file as the input, enter `${previous.file}`.
    #     In this case, this workflow step uses the output file from the
    #     previous workflow step as input. This is the default value.
    #
    #   * To use the originally uploaded file location as input for this
    #     step, enter `${original.file}`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CustomStepDetails AWS API Documentation
    #
    class CustomStepDetails < Struct.new(
      :name,
      :target,
      :timeout_seconds,
      :source_file_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Each step type has its own `StepDetails` structure.
    #
    # @!attribute [rw] name
    #   The name of the step, used as an identifier.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of encryption used. Currently, this value must be `PGP`.
    #   @return [String]
    #
    # @!attribute [rw] source_file_location
    #   Specifies which file to use as input to the workflow step: either
    #   the output from the previous step, or the originally uploaded file
    #   for the workflow.
    #
    #   * To use the previous file as the input, enter `${previous.file}`.
    #     In this case, this workflow step uses the output file from the
    #     previous workflow step as input. This is the default value.
    #
    #   * To use the originally uploaded file location as input for this
    #     step, enter `${original.file}`.
    #   @return [String]
    #
    # @!attribute [rw] overwrite_existing
    #   A flag that indicates whether to overwrite an existing file of the
    #   same name. The default is `FALSE`.
    #
    #   If the workflow is processing a file that has the same name as an
    #   existing file, the behavior is as follows:
    #
    #   * If `OverwriteExisting` is `TRUE`, the existing file is replaced
    #     with the file being processed.
    #
    #   * If `OverwriteExisting` is `FALSE`, nothing happens, and the
    #     workflow processing stops.
    #   @return [String]
    #
    # @!attribute [rw] destination_file_location
    #   Specifies the location for the file being decrypted. Use
    #   `${Transfer:UserName}` or `${Transfer:UploadDate}` in this field to
    #   parametrize the destination prefix by username or uploaded date.
    #
    #   * Set the value of `DestinationFileLocation` to
    #     `${Transfer:UserName}` to decrypt uploaded files to an Amazon S3
    #     bucket that is prefixed with the name of the Transfer Family user
    #     that uploaded the file.
    #
    #   * Set the value of `DestinationFileLocation` to
    #     `${Transfer:UploadDate}` to decrypt uploaded files to an Amazon S3
    #     bucket that is prefixed with the date of the upload.
    #
    #     <note markdown="1"> The system resolves `UploadDate` to a date format of *YYYY-MM-DD*,
    #     based on the date the file is uploaded in UTC.
    #
    #      </note>
    #   @return [Types::InputFileLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DecryptStepDetails AWS API Documentation
    #
    class DecryptStepDetails < Struct.new(
      :name,
      :type,
      :source_file_location,
      :overwrite_existing,
      :destination_file_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server that has this user
    #   assigned.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   A unique identifier that is required to identify specific groups
    #   within your directory. The users of the group that you associate
    #   have access to your Amazon S3 or Amazon EFS resources over the
    #   enabled protocols using Transfer Family. If you know the group name,
    #   you can view the SID values by running the following command using
    #   Windows PowerShell.
    #
    #   `Get-ADGroup -Filter {samAccountName -like "YourGroupName*"}
    #   -Properties * | Select SamAccountName,ObjectSid`
    #
    #   In that command, replace *YourGroupName* with the name of your
    #   Active Directory group.
    #
    #   The regular expression used to validate this parameter is a string
    #   of characters consisting of uppercase and lowercase alphanumeric
    #   characters with no spaces. You can also include underscores or any
    #   of the following characters: =,.@:/-
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteAccessRequest AWS API Documentation
    #
    class DeleteAccessRequest < Struct.new(
      :server_id,
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   A unique identifier for the agreement. This identifier is returned
    #   when you create an agreement.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   The server identifier associated with the agreement that you are
    #   deleting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteAgreementRequest AWS API Documentation
    #
    class DeleteAgreementRequest < Struct.new(
      :agreement_id,
      :server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_id
    #   The identifier of the certificate object that you are deleting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteCertificateRequest AWS API Documentation
    #
    class DeleteCertificateRequest < Struct.new(
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_id
    #   The unique identifier for the connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteConnectorRequest AWS API Documentation
    #
    class DeleteConnectorRequest < Struct.new(
      :connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   The identifier of the server that contains the host key that you are
    #   deleting.
    #   @return [String]
    #
    # @!attribute [rw] host_key_id
    #   The identifier of the host key that you are deleting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteHostKeyRequest AWS API Documentation
    #
    class DeleteHostKeyRequest < Struct.new(
      :server_id,
      :host_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The identifier of the profile that you are deleting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteProfileRequest AWS API Documentation
    #
    class DeleteProfileRequest < Struct.new(
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   A unique system-assigned identifier for a server instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteServerRequest AWS API Documentation
    #
    class DeleteServerRequest < Struct.new(
      :server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a file transfer
    #   protocol-enabled server instance that has the user assigned to it.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_id
    #   A unique identifier used to reference your user's specific SSH key.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   A unique string that identifies a user whose public key is being
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteSshPublicKeyRequest AWS API Documentation
    #
    class DeleteSshPublicKeyRequest < Struct.new(
      :server_id,
      :ssh_public_key_id,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name of the step, used to identify the delete step.
    #
    # @!attribute [rw] name
    #   The name of the step, used as an identifier.
    #   @return [String]
    #
    # @!attribute [rw] source_file_location
    #   Specifies which file to use as input to the workflow step: either
    #   the output from the previous step, or the originally uploaded file
    #   for the workflow.
    #
    #   * To use the previous file as the input, enter `${previous.file}`.
    #     In this case, this workflow step uses the output file from the
    #     previous workflow step as input. This is the default value.
    #
    #   * To use the originally uploaded file location as input for this
    #     step, enter `${original.file}`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteStepDetails AWS API Documentation
    #
    class DeleteStepDetails < Struct.new(
      :name,
      :source_file_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server instance that has
    #   the user assigned to it.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   A unique string that identifies a user that is being deleted from a
    #   server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :server_id,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] web_app_id
    #   Provide the unique identifier for the web app that contains the
    #   customizations that you are deleting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteWebAppCustomizationRequest AWS API Documentation
    #
    class DeleteWebAppCustomizationRequest < Struct.new(
      :web_app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] web_app_id
    #   Provide the unique identifier for the web app that you are deleting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteWebAppRequest AWS API Documentation
    #
    class DeleteWebAppRequest < Struct.new(
      :web_app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   A unique identifier for the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteWorkflowRequest AWS API Documentation
    #
    class DeleteWorkflowRequest < Struct.new(
      :workflow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server that has this
    #   access assigned.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   A unique identifier that is required to identify specific groups
    #   within your directory. The users of the group that you associate
    #   have access to your Amazon S3 or Amazon EFS resources over the
    #   enabled protocols using Transfer Family. If you know the group name,
    #   you can view the SID values by running the following command using
    #   Windows PowerShell.
    #
    #   `Get-ADGroup -Filter {samAccountName -like "YourGroupName*"}
    #   -Properties * | Select SamAccountName,ObjectSid`
    #
    #   In that command, replace *YourGroupName* with the name of your
    #   Active Directory group.
    #
    #   The regular expression used to validate this parameter is a string
    #   of characters consisting of uppercase and lowercase alphanumeric
    #   characters with no spaces. You can also include underscores or any
    #   of the following characters: =,.@:/-
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeAccessRequest AWS API Documentation
    #
    class DescribeAccessRequest < Struct.new(
      :server_id,
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server that has this
    #   access assigned.
    #   @return [String]
    #
    # @!attribute [rw] access
    #   The external identifier of the server that the access is attached
    #   to.
    #   @return [Types::DescribedAccess]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeAccessResponse AWS API Documentation
    #
    class DescribeAccessResponse < Struct.new(
      :server_id,
      :access)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   A unique identifier for the agreement. This identifier is returned
    #   when you create an agreement.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   The server identifier that's associated with the agreement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeAgreementRequest AWS API Documentation
    #
    class DescribeAgreementRequest < Struct.new(
      :agreement_id,
      :server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement
    #   The details for the specified agreement, returned as a
    #   `DescribedAgreement` object.
    #   @return [Types::DescribedAgreement]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeAgreementResponse AWS API Documentation
    #
    class DescribeAgreementResponse < Struct.new(
      :agreement)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_id
    #   An array of identifiers for the imported certificates. You use this
    #   identifier for working with profiles and partner profiles.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeCertificateRequest AWS API Documentation
    #
    class DescribeCertificateRequest < Struct.new(
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   The details for the specified certificate, returned as an object.
    #   @return [Types::DescribedCertificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeCertificateResponse AWS API Documentation
    #
    class DescribeCertificateResponse < Struct.new(
      :certificate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_id
    #   The unique identifier for the connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeConnectorRequest AWS API Documentation
    #
    class DescribeConnectorRequest < Struct.new(
      :connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector
    #   The structure that contains the details of the connector.
    #   @return [Types::DescribedConnector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeConnectorResponse AWS API Documentation
    #
    class DescribeConnectorResponse < Struct.new(
      :connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_id
    #   A unique identifier for the execution of a workflow.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   A unique identifier for the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeExecutionRequest AWS API Documentation
    #
    class DescribeExecutionRequest < Struct.new(
      :execution_id,
      :workflow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   A unique identifier for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] execution
    #   The structure that contains the details of the workflow' execution.
    #   @return [Types::DescribedExecution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeExecutionResponse AWS API Documentation
    #
    class DescribeExecutionResponse < Struct.new(
      :workflow_id,
      :execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   The identifier of the server that contains the host key that you
    #   want described.
    #   @return [String]
    #
    # @!attribute [rw] host_key_id
    #   The identifier of the host key that you want described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeHostKeyRequest AWS API Documentation
    #
    class DescribeHostKeyRequest < Struct.new(
      :server_id,
      :host_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] host_key
    #   Returns the details for the specified host key.
    #   @return [Types::DescribedHostKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeHostKeyResponse AWS API Documentation
    #
    class DescribeHostKeyResponse < Struct.new(
      :host_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The identifier of the profile that you want described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeProfileRequest AWS API Documentation
    #
    class DescribeProfileRequest < Struct.new(
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile
    #   The details of the specified profile, returned as an object.
    #   @return [Types::DescribedProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeProfileResponse AWS API Documentation
    #
    class DescribeProfileResponse < Struct.new(
      :profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_policy_name
    #   Specify the text name of the security policy for which you want the
    #   details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeSecurityPolicyRequest AWS API Documentation
    #
    class DescribeSecurityPolicyRequest < Struct.new(
      :security_policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_policy
    #   An array containing the properties of the security policy.
    #   @return [Types::DescribedSecurityPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeSecurityPolicyResponse AWS API Documentation
    #
    class DescribeSecurityPolicyResponse < Struct.new(
      :security_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeServerRequest AWS API Documentation
    #
    class DescribeServerRequest < Struct.new(
      :server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server
    #   An array containing the properties of a server with the `ServerID`
    #   you specified.
    #   @return [Types::DescribedServer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeServerResponse AWS API Documentation
    #
    class DescribeServerResponse < Struct.new(
      :server)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server that has this user
    #   assigned.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user assigned to one or more servers. User names are
    #   part of the sign-in credentials to use the Transfer Family service
    #   and perform file transfer tasks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeUserRequest AWS API Documentation
    #
    class DescribeUserRequest < Struct.new(
      :server_id,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server that has this user
    #   assigned.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   An array containing the properties of the Transfer Family user for
    #   the `ServerID` value that you specified.
    #   @return [Types::DescribedUser]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeUserResponse AWS API Documentation
    #
    class DescribeUserResponse < Struct.new(
      :server_id,
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] web_app_id
    #   Provide the unique identifier for the web app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeWebAppCustomizationRequest AWS API Documentation
    #
    class DescribeWebAppCustomizationRequest < Struct.new(
      :web_app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] web_app_customization
    #   Returns a structure that contains the details of the web app
    #   customizations.
    #   @return [Types::DescribedWebAppCustomization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeWebAppCustomizationResponse AWS API Documentation
    #
    class DescribeWebAppCustomizationResponse < Struct.new(
      :web_app_customization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] web_app_id
    #   Provide the unique identifier for the web app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeWebAppRequest AWS API Documentation
    #
    class DescribeWebAppRequest < Struct.new(
      :web_app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] web_app
    #   Returns a structure that contains the details of the web app.
    #   @return [Types::DescribedWebApp]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeWebAppResponse AWS API Documentation
    #
    class DescribeWebAppResponse < Struct.new(
      :web_app)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   A unique identifier for the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeWorkflowRequest AWS API Documentation
    #
    class DescribeWorkflowRequest < Struct.new(
      :workflow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow
    #   The structure that contains the details of the workflow.
    #   @return [Types::DescribedWorkflow]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeWorkflowResponse AWS API Documentation
    #
    class DescribeWorkflowResponse < Struct.new(
      :workflow)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the properties of the access that was specified.
    #
    # @!attribute [rw] home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using the client.
    #
    #   A `HomeDirectory` example is `/bucket_name/home/mydirectory`.
    #
    #   <note markdown="1"> You can use the `HomeDirectory` parameter for `HomeDirectoryType`
    #   when it is set to either `PATH` or `LOGICAL`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 or Amazon EFS
    #   paths and keys should be visible to your user and how you want to
    #   make them visible. You must specify the `Entry` and `Target` pair,
    #   where `Entry` shows how the path is made visible and `Target` is the
    #   actual Amazon S3 or Amazon EFS path. If you only specify a target,
    #   it is displayed as is. You also must ensure that your Identity and
    #   Access Management (IAM) role provides access to paths in `Target`.
    #   This value can be set only when `HomeDirectoryType` is set to
    #   *LOGICAL*.
    #
    #   In most cases, you can use this value instead of the session policy
    #   to lock down the associated access to the designated home directory
    #   ("`chroot`"). To do this, you can set `Entry` to '/' and set
    #   `Target` to the `HomeDirectory` parameter value.
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) that you want your users'
    #   home directory to be when they log in to the server. If you set it
    #   to `PATH`, the user will see the absolute Amazon S3 bucket or Amazon
    #   EFS path as is in their file transfer protocol clients. If you set
    #   it to `LOGICAL`, you need to provide mappings in the
    #   `HomeDirectoryMappings` for how you want to make Amazon S3 or Amazon
    #   EFS paths visible to your users.
    #
    #   <note markdown="1"> If `HomeDirectoryType` is `LOGICAL`, you must provide mappings,
    #   using the `HomeDirectoryMappings` parameter. If, on the other hand,
    #   `HomeDirectoryType` is `PATH`, you provide an absolute path using
    #   the `HomeDirectory` parameter. You cannot have both `HomeDirectory`
    #   and `HomeDirectoryMappings` in your template.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   A session policy for your user so that you can use the same Identity
    #   and Access Management (IAM) role across multiple users. This policy
    #   scopes down a user's access to portions of their Amazon S3 bucket.
    #   Variables that you can use inside this policy include
    #   `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and
    #   `${Transfer:HomeBucket}`.
    #   @return [String]
    #
    # @!attribute [rw] posix_profile
    #   The full POSIX identity, including user ID (`Uid`), group ID
    #   (`Gid`), and any secondary groups IDs (`SecondaryGids`), that
    #   controls your users' access to your Amazon EFS file systems. The
    #   POSIX permissions that are set on files and directories in your file
    #   system determine the level of access your users get when
    #   transferring files into and out of your Amazon EFS file systems.
    #   @return [Types::PosixProfile]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that controls your users' access to your Amazon S3
    #   bucket or Amazon EFS file system. The policies attached to this role
    #   determine the level of access that you want to provide your users
    #   when transferring files into and out of your Amazon S3 bucket or
    #   Amazon EFS file system. The IAM role should also contain a trust
    #   relationship that allows the server to access your resources when
    #   servicing your users' transfer requests.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   A unique identifier that is required to identify specific groups
    #   within your directory. The users of the group that you associate
    #   have access to your Amazon S3 or Amazon EFS resources over the
    #   enabled protocols using Transfer Family. If you know the group name,
    #   you can view the SID values by running the following command using
    #   Windows PowerShell.
    #
    #   `Get-ADGroup -Filter {samAccountName -like "YourGroupName*"}
    #   -Properties * | Select SamAccountName,ObjectSid`
    #
    #   In that command, replace *YourGroupName* with the name of your
    #   Active Directory group.
    #
    #   The regular expression used to validate this parameter is a string
    #   of characters consisting of uppercase and lowercase alphanumeric
    #   characters with no spaces. You can also include underscores or any
    #   of the following characters: =,.@:/-
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedAccess AWS API Documentation
    #
    class DescribedAccess < Struct.new(
      :home_directory,
      :home_directory_mappings,
      :home_directory_type,
      :policy,
      :posix_profile,
      :role,
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the properties of an agreement.
    #
    # @!attribute [rw] arn
    #   The unique Amazon Resource Name (ARN) for the agreement.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   A unique identifier for the agreement. This identifier is returned
    #   when you create an agreement.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The name or short description that's used to identify the
    #   agreement.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the agreement, either `ACTIVE` or `INACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server instance. This
    #   identifier indicates the specific server that the agreement uses.
    #   @return [String]
    #
    # @!attribute [rw] local_profile_id
    #   A unique identifier for the AS2 local profile.
    #   @return [String]
    #
    # @!attribute [rw] partner_profile_id
    #   A unique identifier for the partner profile used in the agreement.
    #   @return [String]
    #
    # @!attribute [rw] base_directory
    #   The landing directory (folder) for files that are transferred by
    #   using the AS2 protocol.
    #   @return [String]
    #
    # @!attribute [rw] access_role
    #   Connectors are used to send files using either the AS2 or SFTP
    #   protocol. For the access role, provide the Amazon Resource Name
    #   (ARN) of the Identity and Access Management role to use.
    #
    #   **For AS2 connectors**
    #
    #   With AS2, you can send files by calling `StartFileTransfer` and
    #   specifying the file paths in the request parameter, `SendFilePaths`.
    #   We use the file’s parent directory (for example, for
    #   `--send-file-paths /bucket/dir/file.txt`, parent directory is
    #   `/bucket/dir/`) to temporarily store a processed AS2 message file,
    #   store the MDN when we receive them from the partner, and write a
    #   final JSON file containing relevant metadata of the transmission.
    #   So, the `AccessRole` needs to provide read and write access to the
    #   parent directory of the file location used in the
    #   `StartFileTransfer` request. Additionally, you need to provide read
    #   and write access to the parent directory of the files that you
    #   intend to send with `StartFileTransfer`.
    #
    #   If you are using Basic authentication for your AS2 connector, the
    #   access role requires the `secretsmanager:GetSecretValue` permission
    #   for the secret. If the secret is encrypted using a customer-managed
    #   key instead of the Amazon Web Services managed key in Secrets
    #   Manager, then the role also needs the `kms:Decrypt` permission for
    #   that key.
    #
    #   **For SFTP connectors**
    #
    #   Make sure that the access role provides read and write access to the
    #   parent directory of the file location that's used in the
    #   `StartFileTransfer` request. Additionally, make sure that the role
    #   provides `secretsmanager:GetSecretValue` permission to Secrets
    #   Manager.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for agreements.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] preserve_filename
    #   Determines whether or not Transfer Family appends a unique string of
    #   characters to the end of the AS2 message payload filename when
    #   saving it.
    #
    #   * `ENABLED`: the filename provided by your trading parter is
    #     preserved when the file is saved.
    #
    #   * `DISABLED` (default value): when Transfer Family saves the file,
    #     the filename is adjusted, as described in [File names and
    #     locations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/send-as2-messages.html#file-names-as2
    #   @return [String]
    #
    # @!attribute [rw] enforce_message_signing
    #   Determines whether or not unsigned messages from your trading
    #   partners will be accepted.
    #
    #   * `ENABLED`: Transfer Family rejects unsigned messages from your
    #     trading partner.
    #
    #   * `DISABLED` (default value): Transfer Family accepts unsigned
    #     messages from your trading partner.
    #   @return [String]
    #
    # @!attribute [rw] custom_directories
    #   A `CustomDirectoriesType` structure. This structure specifies custom
    #   directories for storing various AS2 message files. You can specify
    #   directories for the following types of files.
    #
    #   * Failed files
    #
    #   * MDN files
    #
    #   * Payload files
    #
    #   * Status files
    #
    #   * Temporary files
    #   @return [Types::CustomDirectoriesType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedAgreement AWS API Documentation
    #
    class DescribedAgreement < Struct.new(
      :arn,
      :agreement_id,
      :description,
      :status,
      :server_id,
      :local_profile_id,
      :partner_profile_id,
      :base_directory,
      :access_role,
      :tags,
      :preserve_filename,
      :enforce_message_signing,
      :custom_directories)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the properties of a certificate.
    #
    # @!attribute [rw] arn
    #   The unique Amazon Resource Name (ARN) for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   An array of identifiers for the imported certificates. You use this
    #   identifier for working with profiles and partner profiles.
    #   @return [String]
    #
    # @!attribute [rw] usage
    #   Specifies how this certificate is used. It can be used in the
    #   following ways:
    #
    #   * `SIGNING`: For signing AS2 messages
    #
    #   * `ENCRYPTION`: For encrypting AS2 messages
    #
    #   * `TLS`: For securing AS2 communications sent over HTTPS
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A certificate's status can be either `ACTIVE` or `INACTIVE`.
    #
    #   You can set `ActiveDate` and `InactiveDate` in the
    #   `UpdateCertificate` call. If you set values for these parameters,
    #   those values are used to determine whether the certificate has a
    #   status of `ACTIVE` or `INACTIVE`.
    #
    #   If you don't set values for `ActiveDate` and `InactiveDate`, we use
    #   the `NotBefore` and `NotAfter` date as specified on the X509
    #   certificate to determine when a certificate is active and when it is
    #   inactive.
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The file name for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_chain
    #   The list of certificates that make up the chain for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] active_date
    #   An optional date that specifies when the certificate becomes active.
    #   If you do not specify a value, `ActiveDate` takes the same value as
    #   `NotBeforeDate`, which is specified by the CA.
    #   @return [Time]
    #
    # @!attribute [rw] inactive_date
    #   An optional date that specifies when the certificate becomes
    #   inactive. If you do not specify a value, `InactiveDate` takes the
    #   same value as `NotAfterDate`, which is specified by the CA.
    #   @return [Time]
    #
    # @!attribute [rw] serial
    #   The serial number for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] not_before_date
    #   The earliest date that the certificate is valid.
    #   @return [Time]
    #
    # @!attribute [rw] not_after_date
    #   The final date that the certificate is valid.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   If a private key has been specified for the certificate, its type is
    #   `CERTIFICATE_WITH_PRIVATE_KEY`. If there is no private key, the type
    #   is `CERTIFICATE`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The name or description that's used to identity the certificate.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for
    #   certificates.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedCertificate AWS API Documentation
    #
    class DescribedCertificate < Struct.new(
      :arn,
      :certificate_id,
      :usage,
      :status,
      :certificate,
      :certificate_chain,
      :active_date,
      :inactive_date,
      :serial,
      :not_before_date,
      :not_after_date,
      :type,
      :description,
      :tags)
      SENSITIVE = [:certificate, :certificate_chain]
      include Aws::Structure
    end

    # Describes the parameters for the connector, as identified by the
    # `ConnectorId`.
    #
    # @!attribute [rw] arn
    #   The unique Amazon Resource Name (ARN) for the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_id
    #   The unique identifier for the connector.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of the partner's AS2 or SFTP endpoint.
    #
    #   When creating AS2 connectors or service-managed SFTP connectors
    #   (connectors without egress configuration), you must provide a URL to
    #   specify the remote server endpoint. For VPC Lattice type connectors,
    #   the URL must be null.
    #   @return [String]
    #
    # @!attribute [rw] as_2_config
    #   A structure that contains the parameters for an AS2 connector
    #   object.
    #   @return [Types::As2ConnectorConfig]
    #
    # @!attribute [rw] access_role
    #   Connectors are used to send files using either the AS2 or SFTP
    #   protocol. For the access role, provide the Amazon Resource Name
    #   (ARN) of the Identity and Access Management role to use.
    #
    #   **For AS2 connectors**
    #
    #   With AS2, you can send files by calling `StartFileTransfer` and
    #   specifying the file paths in the request parameter, `SendFilePaths`.
    #   We use the file’s parent directory (for example, for
    #   `--send-file-paths /bucket/dir/file.txt`, parent directory is
    #   `/bucket/dir/`) to temporarily store a processed AS2 message file,
    #   store the MDN when we receive them from the partner, and write a
    #   final JSON file containing relevant metadata of the transmission.
    #   So, the `AccessRole` needs to provide read and write access to the
    #   parent directory of the file location used in the
    #   `StartFileTransfer` request. Additionally, you need to provide read
    #   and write access to the parent directory of the files that you
    #   intend to send with `StartFileTransfer`.
    #
    #   If you are using Basic authentication for your AS2 connector, the
    #   access role requires the `secretsmanager:GetSecretValue` permission
    #   for the secret. If the secret is encrypted using a customer-managed
    #   key instead of the Amazon Web Services managed key in Secrets
    #   Manager, then the role also needs the `kms:Decrypt` permission for
    #   that key.
    #
    #   **For SFTP connectors**
    #
    #   Make sure that the access role provides read and write access to the
    #   parent directory of the file location that's used in the
    #   `StartFileTransfer` request. Additionally, make sure that the role
    #   provides `secretsmanager:GetSecretValue` permission to Secrets
    #   Manager.
    #   @return [String]
    #
    # @!attribute [rw] logging_role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that allows a connector to turn on CloudWatch logging for
    #   Amazon S3 events. When set, you can view connector activity in your
    #   CloudWatch logs.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for connectors.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] sftp_config
    #   A structure that contains the parameters for an SFTP connector
    #   object.
    #   @return [Types::SftpConnectorConfig]
    #
    # @!attribute [rw] service_managed_egress_ip_addresses
    #   The list of egress IP addresses of this connector. These IP
    #   addresses are assigned automatically when you create the connector.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_policy_name
    #   The text name of the security policy for the specified connector.
    #   @return [String]
    #
    # @!attribute [rw] egress_config
    #   Current egress configuration of the connector, showing how traffic
    #   is routed to the SFTP server. Contains VPC Lattice settings when
    #   using VPC\_LATTICE egress type.
    #
    #   When using the VPC\_LATTICE egress type, Transfer Family uses a
    #   managed Service Network to simplify the resource sharing process.
    #   @return [Types::DescribedConnectorEgressConfig]
    #
    # @!attribute [rw] egress_type
    #   Type of egress configuration for the connector. SERVICE\_MANAGED
    #   uses Transfer Family managed NAT gateways, while VPC\_LATTICE routes
    #   traffic through customer VPCs using VPC Lattice.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Error message providing details when the connector is in ERRORED
    #   status. Contains information to help troubleshoot connector creation
    #   or operation failures.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the connector. PENDING indicates creation/update
    #   in progress, ACTIVE means ready for operations, and ERRORED
    #   indicates a failure requiring attention.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedConnector AWS API Documentation
    #
    class DescribedConnector < Struct.new(
      :arn,
      :connector_id,
      :url,
      :as_2_config,
      :access_role,
      :logging_role,
      :tags,
      :sftp_config,
      :service_managed_egress_ip_addresses,
      :security_policy_name,
      :egress_config,
      :egress_type,
      :error_message,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure containing the current egress configuration details
    # for the connector. Shows how traffic is currently routed from the
    # connector to the SFTP server.
    #
    # @note DescribedConnectorEgressConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DescribedConnectorEgressConfig corresponding to the set member.
    #
    # @!attribute [rw] vpc_lattice
    #   VPC\_LATTICE configuration details in the response, showing the
    #   current Resource Configuration ARN and port settings for VPC-based
    #   connectivity.
    #   @return [Types::DescribedConnectorVpcLatticeEgressConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedConnectorEgressConfig AWS API Documentation
    #
    class DescribedConnectorEgressConfig < Struct.new(
      :vpc_lattice,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class VpcLattice < DescribedConnectorEgressConfig; end
      class Unknown < DescribedConnectorEgressConfig; end
    end

    # VPC\_LATTICE egress configuration details in the response, containing
    # the Resource Configuration ARN and port number currently configured
    # for the connector.
    #
    # @!attribute [rw] resource_configuration_arn
    #   ARN of the VPC\_LATTICE Resource Configuration currently used by the
    #   connector. This Resource Configuration defines the network path to
    #   the SFTP server through the customer's VPC.
    #   @return [String]
    #
    # @!attribute [rw] port_number
    #   Port number currently configured for SFTP connections through
    #   VPC\_LATTICE. Shows the port on which the connector attempts to
    #   connect to the target SFTP server.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedConnectorVpcLatticeEgressConfig AWS API Documentation
    #
    class DescribedConnectorVpcLatticeEgressConfig < Struct.new(
      :resource_configuration_arn,
      :port_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for an execution object.
    #
    # @!attribute [rw] execution_id
    #   A unique identifier for the execution of a workflow.
    #   @return [String]
    #
    # @!attribute [rw] initial_file_location
    #   A structure that describes the Amazon S3 or EFS file location. This
    #   is the file location when the execution begins: if the file is being
    #   copied, this is the initial (as opposed to destination) file
    #   location.
    #   @return [Types::FileLocation]
    #
    # @!attribute [rw] service_metadata
    #   A container object for the session details that are associated with
    #   a workflow.
    #   @return [Types::ServiceMetadata]
    #
    # @!attribute [rw] execution_role
    #   The IAM role associated with the execution.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   The IAM logging role associated with the execution.
    #   @return [Types::LoggingConfiguration]
    #
    # @!attribute [rw] posix_profile
    #   The full POSIX identity, including user ID (`Uid`), group ID
    #   (`Gid`), and any secondary groups IDs (`SecondaryGids`), that
    #   controls your users' access to your Amazon EFS file systems. The
    #   POSIX permissions that are set on files and directories in your file
    #   system determine the level of access your users get when
    #   transferring files into and out of your Amazon EFS file systems.
    #   @return [Types::PosixProfile]
    #
    # @!attribute [rw] status
    #   The status is one of the execution. Can be in progress, completed,
    #   exception encountered, or handling the exception.
    #   @return [String]
    #
    # @!attribute [rw] results
    #   A structure that describes the execution results. This includes a
    #   list of the steps along with the details of each step, error type
    #   and message (if any), and the `OnExceptionSteps` structure.
    #   @return [Types::ExecutionResults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedExecution AWS API Documentation
    #
    class DescribedExecution < Struct.new(
      :execution_id,
      :initial_file_location,
      :service_metadata,
      :execution_role,
      :logging_configuration,
      :posix_profile,
      :status,
      :results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for a server host key.
    #
    # @!attribute [rw] arn
    #   The unique Amazon Resource Name (ARN) for the host key.
    #   @return [String]
    #
    # @!attribute [rw] host_key_id
    #   A unique identifier for the host key.
    #   @return [String]
    #
    # @!attribute [rw] host_key_fingerprint
    #   The public key fingerprint, which is a short sequence of bytes used
    #   to identify the longer public key.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The text description for this host key.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The encryption algorithm that is used for the host key. The `Type`
    #   parameter is specified by using one of the following values:
    #
    #   * `ssh-rsa`
    #
    #   * `ssh-ed25519`
    #
    #   * `ecdsa-sha2-nistp256`
    #
    #   * `ecdsa-sha2-nistp384`
    #
    #   * `ecdsa-sha2-nistp521`
    #   @return [String]
    #
    # @!attribute [rw] date_imported
    #   The date on which the host key was added to the server.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for host keys.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedHostKey AWS API Documentation
    #
    class DescribedHostKey < Struct.new(
      :arn,
      :host_key_id,
      :host_key_fingerprint,
      :description,
      :type,
      :date_imported,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the details of the IAM Identity Center used
    # for your web app. Returned during a call to `DescribeWebApp`.
    #
    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) for the IAM Identity Center
    #   application: this value is set automatically when you create your
    #   web app.
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   The Amazon Resource Name (ARN) for the IAM Identity Center used for
    #   the web app.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The IAM role in IAM Identity Center used for the web app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedIdentityCenterConfig AWS API Documentation
    #
    class DescribedIdentityCenterConfig < Struct.new(
      :application_arn,
      :instance_arn,
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for a local or partner AS2 profile.
    #
    # @!attribute [rw] arn
    #   The unique Amazon Resource Name (ARN) for the profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   A unique identifier for the local or partner AS2 profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_type
    #   Indicates whether to list only `LOCAL` type profiles or only
    #   `PARTNER` type profiles. If not supplied in the request, the command
    #   lists all types of profiles.
    #   @return [String]
    #
    # @!attribute [rw] as_2_id
    #   The `As2Id` is the *AS2-name*, as defined in the [RFC 4130][1]. For
    #   inbound transfers, this is the `AS2-From` header for the AS2
    #   messages sent from the partner. For outbound connectors, this is the
    #   `AS2-To` header for the AS2 messages sent to the partner using the
    #   `StartFileTransfer` API operation. This ID cannot include spaces.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc4130
    #   @return [String]
    #
    # @!attribute [rw] certificate_ids
    #   An array of identifiers for the imported certificates. You use this
    #   identifier for working with profiles and partner profiles.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for profiles.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedProfile AWS API Documentation
    #
    class DescribedProfile < Struct.new(
      :arn,
      :profile_id,
      :profile_type,
      :as_2_id,
      :certificate_ids,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the properties of a security policy that you specify. For
    # more information about security policies, see [Working with security
    # policies for servers][1] or [Working with security policies for SFTP
    # connectors][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html
    # [2]: https://docs.aws.amazon.com/transfer/latest/userguide/security-policies-connectors.html
    #
    # @!attribute [rw] fips
    #   Specifies whether this policy enables Federal Information Processing
    #   Standards (FIPS). This parameter applies to both server and
    #   connector security policies.
    #   @return [Boolean]
    #
    # @!attribute [rw] security_policy_name
    #   The text name of the specified security policy.
    #   @return [String]
    #
    # @!attribute [rw] ssh_ciphers
    #   Lists the enabled Secure Shell (SSH) cipher encryption algorithms in
    #   the security policy that is attached to the server or connector.
    #   This parameter applies to both server and connector security
    #   policies.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ssh_kexs
    #   Lists the enabled SSH key exchange (KEX) encryption algorithms in
    #   the security policy that is attached to the server or connector.
    #   This parameter applies to both server and connector security
    #   policies.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ssh_macs
    #   Lists the enabled SSH message authentication code (MAC) encryption
    #   algorithms in the security policy that is attached to the server or
    #   connector. This parameter applies to both server and connector
    #   security policies.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tls_ciphers
    #   Lists the enabled Transport Layer Security (TLS) cipher encryption
    #   algorithms in the security policy that is attached to the server.
    #
    #   <note markdown="1"> This parameter only applies to security policies for servers.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] ssh_host_key_algorithms
    #   Lists the host key algorithms for the security policy.
    #
    #   <note markdown="1"> This parameter only applies to security policies for connectors.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The resource type to which the security policy applies, either
    #   server or connector.
    #   @return [String]
    #
    # @!attribute [rw] protocols
    #   Lists the file transfer protocols that the security policy applies
    #   to.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedSecurityPolicy AWS API Documentation
    #
    class DescribedSecurityPolicy < Struct.new(
      :fips,
      :security_policy_name,
      :ssh_ciphers,
      :ssh_kexs,
      :ssh_macs,
      :tls_ciphers,
      :ssh_host_key_algorithms,
      :type,
      :protocols)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the properties of a file transfer protocol-enabled server
    # that was specified.
    #
    # @!attribute [rw] arn
    #   Specifies the unique Amazon Resource Name (ARN) of the server.
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   Specifies the ARN of the Amazon Web ServicesCertificate Manager
    #   (ACM) certificate. Required when `Protocols` is set to `FTPS`.
    #   @return [String]
    #
    # @!attribute [rw] protocol_details
    #   The protocol settings that are configured for your server.
    #
    #   <note markdown="1"> Avoid placing Network Load Balancers (NLBs) or NAT gateways in front
    #   of Transfer Family servers, as this increases costs and can cause
    #   performance issues, including reduced connection limits for FTPS.
    #   For more details, see [ Avoid placing NLBs and NATs in front of
    #   Transfer Family][1].
    #
    #    </note>
    #
    #   * To indicate passive mode (for FTP and FTPS protocols), use the
    #     `PassiveIp` parameter. Enter a single dotted-quad IPv4 address,
    #     such as the external IP address of a firewall, router, or load
    #     balancer.
    #
    #   * To ignore the error that is generated when the client attempts to
    #     use the `SETSTAT` command on a file that you are uploading to an
    #     Amazon S3 bucket, use the `SetStatOption` parameter. To have the
    #     Transfer Family server ignore the `SETSTAT` command and upload
    #     files without needing to make any changes to your SFTP client, set
    #     the value to `ENABLE_NO_OP`. If you set the `SetStatOption`
    #     parameter to `ENABLE_NO_OP`, Transfer Family generates a log entry
    #     to Amazon CloudWatch Logs, so that you can determine when the
    #     client is making a `SETSTAT` call.
    #
    #   * To determine whether your Transfer Family server resumes recent,
    #     negotiated sessions through a unique session ID, use the
    #     `TlsSessionResumptionMode` parameter.
    #
    #   * `As2Transports` indicates the transport method for the AS2
    #     messages. Currently, only HTTP is supported.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/infrastructure-security.html#nlb-considerations
    #   @return [Types::ProtocolDetails]
    #
    # @!attribute [rw] domain
    #   Specifies the domain of the storage system that is used for file
    #   transfers. There are two domains available: Amazon Simple Storage
    #   Service (Amazon S3) and Amazon Elastic File System (Amazon EFS). The
    #   default value is S3.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_details
    #   The virtual private cloud (VPC) endpoint settings that are
    #   configured for your server. When you host your endpoint within your
    #   VPC, you can make your endpoint accessible only to resources within
    #   your VPC, or you can attach Elastic IP addresses and make your
    #   endpoint accessible to clients over the internet. Your VPC's
    #   default security groups are automatically assigned to your endpoint.
    #   @return [Types::EndpointDetails]
    #
    # @!attribute [rw] endpoint_type
    #   Defines the type of endpoint that your server is connected to. If
    #   your server is connected to a VPC endpoint, your server isn't
    #   accessible over the public internet.
    #   @return [String]
    #
    # @!attribute [rw] host_key_fingerprint
    #   Specifies the Base64-encoded SHA256 fingerprint of the server's
    #   host key. This value is equivalent to the output of the `ssh-keygen
    #   -l -f my-new-server-key` command.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_details
    #   Specifies information to call a customer-supplied authentication
    #   API. This field is not populated when the `IdentityProviderType` of
    #   a server is `AWS_DIRECTORY_SERVICE` or `SERVICE_MANAGED`.
    #   @return [Types::IdentityProviderDetails]
    #
    # @!attribute [rw] identity_provider_type
    #   The mode of authentication for a server. The default value is
    #   `SERVICE_MANAGED`, which allows you to store and access user
    #   credentials within the Transfer Family service.
    #
    #   Use `AWS_DIRECTORY_SERVICE` to provide access to Active Directory
    #   groups in Directory Service for Microsoft Active Directory or
    #   Microsoft Active Directory in your on-premises environment or in
    #   Amazon Web Services using AD Connector. This option also requires
    #   you to provide a Directory ID by using the `IdentityProviderDetails`
    #   parameter.
    #
    #   Use the `API_GATEWAY` value to integrate with an identity provider
    #   of your choosing. The `API_GATEWAY` setting requires you to provide
    #   an Amazon API Gateway endpoint URL to call for authentication by
    #   using the `IdentityProviderDetails` parameter.
    #
    #   Use the `AWS_LAMBDA` value to directly use an Lambda function as
    #   your identity provider. If you choose this value, you must specify
    #   the ARN for the Lambda function in the `Function` parameter for the
    #   `IdentityProviderDetails` data type.
    #   @return [String]
    #
    # @!attribute [rw] logging_role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that allows a server to turn on Amazon CloudWatch logging
    #   for Amazon S3 or Amazon EFS events. When set, you can view user
    #   activity in your CloudWatch logs.
    #   @return [String]
    #
    # @!attribute [rw] post_authentication_login_banner
    #   Specifies a string to display when users connect to a server. This
    #   string is displayed after the user authenticates.
    #
    #   <note markdown="1"> The SFTP protocol does not support post-authentication display
    #   banners.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] pre_authentication_login_banner
    #   Specifies a string to display when users connect to a server. This
    #   string is displayed before the user authenticates. For example, the
    #   following banner displays details about using the system:
    #
    #   `This system is for the use of authorized users only. Individuals
    #   using this computer system without authority, or in excess of their
    #   authority, are subject to having all of their activities on this
    #   system monitored and recorded by system personnel.`
    #   @return [String]
    #
    # @!attribute [rw] protocols
    #   Specifies the file transfer protocol or protocols over which your
    #   file transfer protocol client can connect to your server's
    #   endpoint. The available protocols are:
    #
    #   * `SFTP` (Secure Shell (SSH) File Transfer Protocol): File transfer
    #     over SSH
    #
    #   * `FTPS` (File Transfer Protocol Secure): File transfer with TLS
    #     encryption
    #
    #   * `FTP` (File Transfer Protocol): Unencrypted file transfer
    #
    #   * `AS2` (Applicability Statement 2): used for transporting
    #     structured business-to-business data
    #
    #   <note markdown="1"> * If you select `FTPS`, you must choose a certificate stored in
    #     Certificate Manager (ACM) which is used to identify your server
    #     when clients connect to it over FTPS.
    #
    #   * If `Protocol` includes either `FTP` or `FTPS`, then the
    #     `EndpointType` must be `VPC` and the `IdentityProviderType` must
    #     be either `AWS_DIRECTORY_SERVICE`, `AWS_LAMBDA`, or `API_GATEWAY`.
    #
    #   * If `Protocol` includes `FTP`, then `AddressAllocationIds` cannot
    #     be associated.
    #
    #   * If `Protocol` is set only to `SFTP`, the `EndpointType` can be set
    #     to `PUBLIC` and the `IdentityProviderType` can be set any of the
    #     supported identity types: `SERVICE_MANAGED`,
    #     `AWS_DIRECTORY_SERVICE`, `AWS_LAMBDA`, or `API_GATEWAY`.
    #
    #   * If `Protocol` includes `AS2`, then the `EndpointType` must be
    #     `VPC`, and domain must be Amazon S3.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_policy_name
    #   Specifies the name of the security policy for the server.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   Specifies the unique system-assigned identifier for a server that
    #   you instantiate.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The condition of the server that was described. A value of `ONLINE`
    #   indicates that the server can accept jobs and transfer files. A
    #   `State` value of `OFFLINE` means that the server cannot perform file
    #   transfer operations.
    #
    #   The states of `STARTING` and `STOPPING` indicate that the server is
    #   in an intermediate state, either not fully able to respond, or not
    #   fully offline. The values of `START_FAILED` or `STOP_FAILED` can
    #   indicate an error condition.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies the key-value pairs that you can use to search for and
    #   group servers that were assigned to the server that was described.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] user_count
    #   Specifies the number of users that are assigned to a server you
    #   specified with the `ServerId`.
    #   @return [Integer]
    #
    # @!attribute [rw] workflow_details
    #   Specifies the workflow ID for the workflow to assign and the
    #   execution role that's used for executing the workflow.
    #
    #   In addition to a workflow to execute when a file is uploaded
    #   completely, `WorkflowDetails` can also contain a workflow ID (and
    #   execution role) for a workflow to execute on partial upload. A
    #   partial upload occurs when the server session disconnects while the
    #   file is still being uploaded.
    #   @return [Types::WorkflowDetails]
    #
    # @!attribute [rw] structured_log_destinations
    #   Specifies the log groups to which your server logs are sent.
    #
    #   To specify a log group, you must provide the ARN for an existing log
    #   group. In this case, the format of the log group is as follows:
    #
    #   `arn:aws:logs:region-name:amazon-account-id:log-group:log-group-name:*`
    #
    #   For example,
    #   `arn:aws:logs:us-east-1:111122223333:log-group:mytestgroup:*`
    #
    #   If you have previously specified a log group for a server, you can
    #   clear it, and in effect turn off structured logging, by providing an
    #   empty value for this parameter in an `update-server` call. For
    #   example:
    #
    #   `update-server --server-id s-1234567890abcdef0
    #   --structured-log-destinations`
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_storage_options
    #   Specifies whether or not performance for your Amazon S3 directories
    #   is optimized.
    #
    #   * If using the console, this is enabled by default.
    #
    #   * If using the API or CLI, this is disabled by default.
    #
    #   By default, home directory mappings have a `TYPE` of `DIRECTORY`. If
    #   you enable this option, you would then need to explicitly set the
    #   `HomeDirectoryMapEntry` `Type` to `FILE` if you want a mapping to
    #   have a file target.
    #   @return [Types::S3StorageOptions]
    #
    # @!attribute [rw] as_2_service_managed_egress_ip_addresses
    #   The list of egress IP addresses of this server. These IP addresses
    #   are only relevant for servers that use the AS2 protocol. They are
    #   used for sending asynchronous MDNs.
    #
    #   These IP addresses are assigned automatically when you create an AS2
    #   server. Additionally, if you update an existing server and add the
    #   AS2 protocol, static IP addresses are assigned as well.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_address_type
    #   Specifies whether to use IPv4 only, or to use dual-stack (IPv4 and
    #   IPv6) for your Transfer Family endpoint. The default value is
    #   `IPV4`.
    #
    #   The `IpAddressType` parameter has the following limitations:
    #
    #    * It cannot be changed while the server is online. You must stop
    #   the
    #     server before modifying this parameter.
    #
    #   * It cannot be updated to `DUALSTACK` if the server has
    #     `AddressAllocationIds` specified.
    #
    #   <note markdown="1"> When using `DUALSTACK` as the `IpAddressType`, you cannot set the
    #   `AddressAllocationIds` parameter for the [EndpointDetails][1] for
    #   the server.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/APIReference/API_EndpointDetails.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedServer AWS API Documentation
    #
    class DescribedServer < Struct.new(
      :arn,
      :certificate,
      :protocol_details,
      :domain,
      :endpoint_details,
      :endpoint_type,
      :host_key_fingerprint,
      :identity_provider_details,
      :identity_provider_type,
      :logging_role,
      :post_authentication_login_banner,
      :pre_authentication_login_banner,
      :protocols,
      :security_policy_name,
      :server_id,
      :state,
      :tags,
      :user_count,
      :workflow_details,
      :structured_log_destinations,
      :s3_storage_options,
      :as_2_service_managed_egress_ip_addresses,
      :ip_address_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the properties of a user that was specified.
    #
    # @!attribute [rw] arn
    #   Specifies the unique Amazon Resource Name (ARN) for the user that
    #   was requested to be described.
    #   @return [String]
    #
    # @!attribute [rw] home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using the client.
    #
    #   A `HomeDirectory` example is `/bucket_name/home/mydirectory`.
    #
    #   <note markdown="1"> You can use the `HomeDirectory` parameter for `HomeDirectoryType`
    #   when it is set to either `PATH` or `LOGICAL`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 or Amazon EFS
    #   paths and keys should be visible to your user and how you want to
    #   make them visible. You must specify the `Entry` and `Target` pair,
    #   where `Entry` shows how the path is made visible and `Target` is the
    #   actual Amazon S3 or Amazon EFS path. If you only specify a target,
    #   it is displayed as is. You also must ensure that your Identity and
    #   Access Management (IAM) role provides access to paths in `Target`.
    #   This value can be set only when `HomeDirectoryType` is set to
    #   *LOGICAL*.
    #
    #   In most cases, you can use this value instead of the session policy
    #   to lock your user down to the designated home directory
    #   ("`chroot`"). To do this, you can set `Entry` to '/' and set
    #   `Target` to the HomeDirectory parameter value.
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) that you want your users'
    #   home directory to be when they log in to the server. If you set it
    #   to `PATH`, the user will see the absolute Amazon S3 bucket or Amazon
    #   EFS path as is in their file transfer protocol clients. If you set
    #   it to `LOGICAL`, you need to provide mappings in the
    #   `HomeDirectoryMappings` for how you want to make Amazon S3 or Amazon
    #   EFS paths visible to your users.
    #
    #   <note markdown="1"> If `HomeDirectoryType` is `LOGICAL`, you must provide mappings,
    #   using the `HomeDirectoryMappings` parameter. If, on the other hand,
    #   `HomeDirectoryType` is `PATH`, you provide an absolute path using
    #   the `HomeDirectory` parameter. You cannot have both `HomeDirectory`
    #   and `HomeDirectoryMappings` in your template.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   A session policy for your user so that you can use the same Identity
    #   and Access Management (IAM) role across multiple users. This policy
    #   scopes down a user's access to portions of their Amazon S3 bucket.
    #   Variables that you can use inside this policy include
    #   `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and
    #   `${Transfer:HomeBucket}`.
    #   @return [String]
    #
    # @!attribute [rw] posix_profile
    #   Specifies the full POSIX identity, including user ID (`Uid`), group
    #   ID (`Gid`), and any secondary groups IDs (`SecondaryGids`), that
    #   controls your users' access to your Amazon Elastic File System
    #   (Amazon EFS) file systems. The POSIX permissions that are set on
    #   files and directories in your file system determine the level of
    #   access your users get when transferring files into and out of your
    #   Amazon EFS file systems.
    #   @return [Types::PosixProfile]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that controls your users' access to your Amazon S3
    #   bucket or Amazon EFS file system. The policies attached to this role
    #   determine the level of access that you want to provide your users
    #   when transferring files into and out of your Amazon S3 bucket or
    #   Amazon EFS file system. The IAM role should also contain a trust
    #   relationship that allows the server to access your resources when
    #   servicing your users' transfer requests.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_keys
    #   Specifies the public key portion of the Secure Shell (SSH) keys
    #   stored for the described user.
    #
    #   <note markdown="1"> To delete the public key body, set its value to zero keys, as shown
    #   here:
    #
    #    `SshPublicKeys: []`
    #
    #    </note>
    #   @return [Array<Types::SshPublicKey>]
    #
    # @!attribute [rw] tags
    #   Specifies the key-value pairs for the user requested. Tag can be
    #   used to search for and group users for a variety of purposes.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] user_name
    #   Specifies the name of the user that was requested to be described.
    #   User names are used for authentication purposes. This is the string
    #   that will be used by your user when they log in to your server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedUser AWS API Documentation
    #
    class DescribedUser < Struct.new(
      :arn,
      :home_directory,
      :home_directory_mappings,
      :home_directory_type,
      :policy,
      :posix_profile,
      :role,
      :ssh_public_keys,
      :tags,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes the parameters for the web app, as
    # identified by the `WebAppId`.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the web app.
    #   @return [String]
    #
    # @!attribute [rw] web_app_id
    #   The unique identifier for the web app.
    #   @return [String]
    #
    # @!attribute [rw] described_identity_provider_details
    #   A structure that contains the details for the identity provider used
    #   by the web app.
    #   @return [Types::DescribedWebAppIdentityProviderDetails]
    #
    # @!attribute [rw] access_endpoint
    #   The `AccessEndpoint` is the URL that you provide to your users for
    #   them to interact with the Transfer Family web app. You can specify a
    #   custom URL or use the default value.
    #   @return [String]
    #
    # @!attribute [rw] web_app_endpoint
    #   The `WebAppEndpoint` is the unique URL for your Transfer Family web
    #   app. This is the value that you use when you configure **Origins**
    #   on CloudFront.
    #   @return [String]
    #
    # @!attribute [rw] web_app_units
    #   A union that contains the value for number of concurrent connections
    #   or the user sessions on your web app.
    #   @return [Types::WebAppUnits]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for web apps.
    #   Tags are metadata attached to web apps for any purpose.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] web_app_endpoint_policy
    #   Setting for the type of endpoint policy for the web app. The default
    #   value is `STANDARD`.
    #
    #   If your web app was created in an Amazon Web Services GovCloud (US)
    #   Region, the value of this parameter can be `FIPS`, which indicates
    #   the web app endpoint is FIPS-compliant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedWebApp AWS API Documentation
    #
    class DescribedWebApp < Struct.new(
      :arn,
      :web_app_id,
      :described_identity_provider_details,
      :access_endpoint,
      :web_app_endpoint,
      :web_app_units,
      :tags,
      :web_app_endpoint_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the customization fields for the web app.
    # You can provide a title, logo, and icon to customize the appearance of
    # your web app.
    #
    # @!attribute [rw] arn
    #   Returns the Amazon Resource Name (ARN) for the web app.
    #   @return [String]
    #
    # @!attribute [rw] web_app_id
    #   Returns the unique identifier for your web app.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Returns the page title that you defined for your web app.
    #   @return [String]
    #
    # @!attribute [rw] logo_file
    #   Returns a logo file data string (in base64 encoding).
    #   @return [String]
    #
    # @!attribute [rw] favicon_file
    #   Returns an icon file data string (in base64 encoding).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedWebAppCustomization AWS API Documentation
    #
    class DescribedWebAppCustomization < Struct.new(
      :arn,
      :web_app_id,
      :title,
      :logo_file,
      :favicon_file)
      SENSITIVE = [:logo_file, :favicon_file]
      include Aws::Structure
    end

    # Returns a structure that contains the identity provider details for
    # your web app.
    #
    # @note DescribedWebAppIdentityProviderDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DescribedWebAppIdentityProviderDetails corresponding to the set member.
    #
    # @!attribute [rw] identity_center_config
    #   Returns a structure for your identity provider details. This
    #   structure contains the instance ARN and role being used for the web
    #   app.
    #   @return [Types::DescribedIdentityCenterConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedWebAppIdentityProviderDetails AWS API Documentation
    #
    class DescribedWebAppIdentityProviderDetails < Struct.new(
      :identity_center_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IdentityCenterConfig < DescribedWebAppIdentityProviderDetails; end
      class Unknown < DescribedWebAppIdentityProviderDetails; end
    end

    # Describes the properties of the specified workflow
    #
    # @!attribute [rw] arn
    #   Specifies the unique Amazon Resource Name (ARN) for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Specifies the text description for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] steps
    #   Specifies the details for the steps that are in the specified
    #   workflow.
    #   @return [Array<Types::WorkflowStep>]
    #
    # @!attribute [rw] on_exception_steps
    #   Specifies the steps (actions) to take if errors are encountered
    #   during execution of the workflow.
    #   @return [Array<Types::WorkflowStep>]
    #
    # @!attribute [rw] workflow_id
    #   A unique identifier for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for workflows.
    #   Tags are metadata attached to workflows for any purpose.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedWorkflow AWS API Documentation
    #
    class DescribedWorkflow < Struct.new(
      :arn,
      :description,
      :steps,
      :on_exception_steps,
      :workflow_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the details for the file location for the file that's being
    # used in the workflow. Only applicable if you are using Amazon Elastic
    # File Systems (Amazon EFS) for storage.
    #
    # @!attribute [rw] file_system_id
    #   The identifier of the file system, assigned by Amazon EFS.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The pathname for the folder being used by a workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/EfsFileLocation AWS API Documentation
    #
    class EfsFileLocation < Struct.new(
      :file_system_id,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The virtual private cloud (VPC) endpoint settings that are configured
    # for your file transfer protocol-enabled server. With a VPC endpoint,
    # you can restrict access to your server and resources only within your
    # VPC. To control incoming internet traffic, invoke the `UpdateServer`
    # API and attach an Elastic IP address to your server's endpoint.
    #
    # <note markdown="1"> After May 19, 2021, you won't be able to create a server using
    # `EndpointType=VPC_ENDPOINT` in your Amazon Web Services account if
    # your account hasn't already done so before May 19, 2021. If you have
    # already created servers with `EndpointType=VPC_ENDPOINT` in your
    # Amazon Web Services account on or before May 19, 2021, you will not be
    # affected. After this date, use `EndpointType`=`VPC`.
    #
    #  For more information, see
    # https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.
    #
    #  It is recommended that you use `VPC` as the `EndpointType`. With this
    # endpoint type, you have the option to directly associate up to three
    # Elastic IPv4 addresses (BYO IP included) with your server's endpoint
    # and use VPC security groups to restrict traffic by the client's
    # public IP address. This is not possible with `EndpointType` set to
    # `VPC_ENDPOINT`.
    #
    #  </note>
    #
    # @!attribute [rw] address_allocation_ids
    #   A list of address allocation IDs that are required to attach an
    #   Elastic IP address to your server's endpoint.
    #
    #   An address allocation ID corresponds to the allocation ID of an
    #   Elastic IP address. This value can be retrieved from the
    #   `allocationId` field from the Amazon EC2 [Address][1] data type. One
    #   way to retrieve this value is by calling the EC2
    #   [DescribeAddresses][2] API.
    #
    #   This parameter is optional. Set this parameter if you want to make
    #   your VPC endpoint public-facing. For details, see [Create an
    #   internet-facing endpoint for your server][3].
    #
    #   <note markdown="1"> This property can only be set as follows:
    #
    #    * `EndpointType` must be set to `VPC`
    #
    #   * The Transfer Family server must be offline.
    #
    #   * You cannot set this parameter for Transfer Family servers that use
    #     the FTP protocol.
    #
    #   * The server must already have `SubnetIds` populated (`SubnetIds`
    #     and `AddressAllocationIds` cannot be updated simultaneously).
    #
    #   * `AddressAllocationIds` can't contain duplicates, and must be
    #     equal in length to `SubnetIds`. For example, if you have three
    #     subnet IDs, you must also specify three address allocation IDs.
    #
    #   * Call the `UpdateServer` API to set or change this parameter.
    #
    #   * You can't set address allocation IDs for servers that have an
    #     `IpAddressType` set to `DUALSTACK` You can only set this property
    #     if `IpAddressType` is set to `IPV4`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Address.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAddresses.html
    #   [3]: https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#create-internet-facing-endpoint
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs that are required to host your server endpoint
    #   in your VPC.
    #
    #   <note markdown="1"> This property can only be set when `EndpointType` is set to `VPC`.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The identifier of the VPC endpoint.
    #
    #   <note markdown="1"> This property can only be set when `EndpointType` is set to
    #   `VPC_ENDPOINT`.
    #
    #    For more information, see
    #   https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC identifier of the VPC in which a server's endpoint will be
    #   hosted.
    #
    #   <note markdown="1"> This property can only be set when `EndpointType` is set to `VPC`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security groups IDs that are available to attach to your
    #   server's endpoint.
    #
    #   <note markdown="1"> While `SecurityGroupIds` appears in the response syntax for
    #   consistency with `CreateServer` and `UpdateServer` operations, this
    #   field is not populated in `DescribeServer` responses. Security
    #   groups are managed at the VPC endpoint level and can be modified
    #   outside of the Transfer Family service. To retrieve current security
    #   group information, use the EC2 `DescribeVpcEndpoints` API with the
    #   `VpcEndpointId` returned in the response.
    #
    #    This property can only be set when `EndpointType` is set to `VPC`.
    #
    #    You can edit the `SecurityGroupIds` property in the
    #   [UpdateServer][1] API only if you are changing the `EndpointType`
    #   from `PUBLIC` or `VPC_ENDPOINT` to `VPC`. To change security groups
    #   associated with your server's VPC endpoint after creation, use the
    #   Amazon EC2 [ModifyVpcEndpoint][2] API.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/API_UpdateServer.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyVpcEndpoint.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/EndpointDetails AWS API Documentation
    #
    class EndpointDetails < Struct.new(
      :address_allocation_ids,
      :subnet_ids,
      :vpc_endpoint_id,
      :vpc_id,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the error message and type, for an error that occurs during
    # the execution of the workflow.
    #
    # @!attribute [rw] type
    #   Specifies the error type.
    #
    #   * `ALREADY_EXISTS`: occurs for a copy step, if the overwrite option
    #     is not selected and a file with the same name already exists in
    #     the target location.
    #
    #   * `BAD_REQUEST`: a general bad request: for example, a step that
    #     attempts to tag an EFS file returns `BAD_REQUEST`, as only S3
    #     files can be tagged.
    #
    #   * `CUSTOM_STEP_FAILED`: occurs when the custom step provided a
    #     callback that indicates failure.
    #
    #   * `INTERNAL_SERVER_ERROR`: a catch-all error that can occur for a
    #     variety of reasons.
    #
    #   * `NOT_FOUND`: occurs when a requested entity, for example a source
    #     file for a copy step, does not exist.
    #
    #   * `PERMISSION_DENIED`: occurs if your policy does not contain the
    #     correct permissions to complete one or more of the steps in the
    #     workflow.
    #
    #   * `TIMEOUT`: occurs when the execution times out.
    #
    #     <note markdown="1"> You can set the `TimeoutSeconds` for a custom step, anywhere from
    #     1 second to 1800 seconds (30 minutes).
    #
    #      </note>
    #
    #   * `THROTTLED`: occurs if you exceed the new execution refill rate of
    #     one workflow per second.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Specifies the descriptive message that corresponds to the
    #   `ErrorType`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ExecutionError AWS API Documentation
    #
    class ExecutionError < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the steps in the workflow, as well as the steps to execute
    # in case of any errors during workflow execution.
    #
    # @!attribute [rw] steps
    #   Specifies the details for the steps that are in the specified
    #   workflow.
    #   @return [Array<Types::ExecutionStepResult>]
    #
    # @!attribute [rw] on_exception_steps
    #   Specifies the steps (actions) to take if errors are encountered
    #   during execution of the workflow.
    #   @return [Array<Types::ExecutionStepResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ExecutionResults AWS API Documentation
    #
    class ExecutionResults < Struct.new(
      :steps,
      :on_exception_steps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the following details for the step: error (if any), outputs
    # (if any), and the step type.
    #
    # @!attribute [rw] step_type
    #   One of the available step types.
    #
    #   * <b> <code>COPY</code> </b> - Copy the file to another location.
    #
    #   * <b> <code>CUSTOM</code> </b> - Perform a custom step with an
    #     Lambda function target.
    #
    #   * <b> <code>DECRYPT</code> </b> - Decrypt a file that was encrypted
    #     before it was uploaded.
    #
    #   * <b> <code>DELETE</code> </b> - Delete the file.
    #
    #   * <b> <code>TAG</code> </b> - Add a tag to the file.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The values for the key/value pair applied as a tag to the file. Only
    #   applicable if the step type is `TAG`.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Specifies the details for an error, if it occurred during execution
    #   of the specified workflow step.
    #   @return [Types::ExecutionError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ExecutionStepResult AWS API Documentation
    #
    class ExecutionStepResult < Struct.new(
      :step_type,
      :outputs,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the Amazon S3 or EFS file details to be used in the step.
    #
    # @!attribute [rw] s3_file_location
    #   Specifies the S3 details for the file being used, such as bucket,
    #   ETag, and so forth.
    #   @return [Types::S3FileLocation]
    #
    # @!attribute [rw] efs_file_location
    #   Specifies the Amazon EFS identifier and the path for the file being
    #   used.
    #   @return [Types::EfsFileLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/FileLocation AWS API Documentation
    #
    class FileLocation < Struct.new(
      :s3_file_location,
      :efs_file_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an object that contains entries and targets for
    # `HomeDirectoryMappings`.
    #
    # The following is an `Entry` and `Target` pair example for `chroot`.
    #
    # `[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]`
    #
    # @!attribute [rw] entry
    #   Represents an entry for `HomeDirectoryMappings`.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   Represents the map target that is used in a `HomeDirectoryMapEntry`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies the type of mapping. Set the type to `FILE` if you want
    #   the mapping to point to a file, or `DIRECTORY` for the directory to
    #   point to a directory.
    #
    #   <note markdown="1"> By default, home directory mappings have a `Type` of `DIRECTORY`
    #   when you create a Transfer Family server. You would need to
    #   explicitly set `Type` to `FILE` if you want a mapping to have a file
    #   target.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/HomeDirectoryMapEntry AWS API Documentation
    #
    class HomeDirectoryMapEntry < Struct.new(
      :entry,
      :target,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes the values to use for the IAM Identity
    # Center settings when you create or update a web app.
    #
    # @!attribute [rw] instance_arn
    #   The Amazon Resource Name (ARN) for the IAM Identity Center used for
    #   the web app.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The IAM role in IAM Identity Center used for the web app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/IdentityCenterConfig AWS API Documentation
    #
    class IdentityCenterConfig < Struct.new(
      :instance_arn,
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information related to the type of user authentication that is
    # in use for a file transfer protocol-enabled server's users. A server
    # can have only one method of authentication.
    #
    # @!attribute [rw] url
    #   Provides the location of the service endpoint used to authenticate
    #   users.
    #   @return [String]
    #
    # @!attribute [rw] invocation_role
    #   This parameter is only applicable if your `IdentityProviderType` is
    #   `API_GATEWAY`. Provides the type of `InvocationRole` used to
    #   authenticate the user account.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The identifier of the Directory Service directory that you want to
    #   use as your identity provider.
    #   @return [String]
    #
    # @!attribute [rw] function
    #   The ARN for a Lambda function to use for the Identity provider.
    #   @return [String]
    #
    # @!attribute [rw] sftp_authentication_methods
    #   For SFTP-enabled servers, and for custom identity providers *only*,
    #   you can specify whether to authenticate using a password, SSH key
    #   pair, or both.
    #
    #   * `PASSWORD` - users must provide their password to connect.
    #
    #   * `PUBLIC_KEY` - users must provide their private key to connect.
    #
    #   * `PUBLIC_KEY_OR_PASSWORD` - users can authenticate with either
    #     their password or their key. This is the default value.
    #
    #   * `PUBLIC_KEY_AND_PASSWORD` - users must provide both their private
    #     key and their password to connect. The server checks the key
    #     first, and then if the key is valid, the system prompts for a
    #     password. If the private key provided does not match the public
    #     key that is stored, authentication fails.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/IdentityProviderDetails AWS API Documentation
    #
    class IdentityProviderDetails < Struct.new(
      :url,
      :invocation_role,
      :directory_id,
      :function,
      :sftp_authentication_methods)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] usage
    #   Specifies how this certificate is used. It can be used in the
    #   following ways:
    #
    #   * `SIGNING`: For signing AS2 messages
    #
    #   * `ENCRYPTION`: For encrypting AS2 messages
    #
    #   * `TLS`: For securing AS2 communications sent over HTTPS
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   * For the CLI, provide a file path for a certificate in URI format.
    #     For example, `--certificate file://encryption-cert.pem`.
    #     Alternatively, you can provide the raw content.
    #
    #   * For the SDK, specify the raw content of a certificate file. For
    #     example, `` --certificate "`cat encryption-cert.pem`" ``.
    #
    #   <note markdown="1"> You can provide both the certificate and its chain in this
    #   parameter, without needing to use the `CertificateChain` parameter.
    #   If you use this parameter for both the certificate and its chain, do
    #   not use the `CertificateChain` parameter.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] certificate_chain
    #   An optional list of certificates that make up the chain for the
    #   certificate that's being imported.
    #   @return [String]
    #
    # @!attribute [rw] private_key
    #   * For the CLI, provide a file path for a private key in URI format.
    #     For example, `--private-key file://encryption-key.pem`.
    #     Alternatively, you can provide the raw content of the private key
    #     file.
    #
    #   * For the SDK, specify the raw content of a private key file. For
    #     example, `` --private-key "`cat encryption-key.pem`" ``
    #   @return [String]
    #
    # @!attribute [rw] active_date
    #   An optional date that specifies when the certificate becomes active.
    #   If you do not specify a value, `ActiveDate` takes the same value as
    #   `NotBeforeDate`, which is specified by the CA.
    #   @return [Time]
    #
    # @!attribute [rw] inactive_date
    #   An optional date that specifies when the certificate becomes
    #   inactive. If you do not specify a value, `InactiveDate` takes the
    #   same value as `NotAfterDate`, which is specified by the CA.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A short description that helps identify the certificate.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for
    #   certificates.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ImportCertificateRequest AWS API Documentation
    #
    class ImportCertificateRequest < Struct.new(
      :usage,
      :certificate,
      :certificate_chain,
      :private_key,
      :active_date,
      :inactive_date,
      :description,
      :tags)
      SENSITIVE = [:certificate, :certificate_chain, :private_key]
      include Aws::Structure
    end

    # @!attribute [rw] certificate_id
    #   An array of identifiers for the imported certificates. You use this
    #   identifier for working with profiles and partner profiles.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ImportCertificateResponse AWS API Documentation
    #
    class ImportCertificateResponse < Struct.new(
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   The identifier of the server that contains the host key that you are
    #   importing.
    #   @return [String]
    #
    # @!attribute [rw] host_key_body
    #   The private key portion of an SSH key pair.
    #
    #   Transfer Family accepts RSA, ECDSA, and ED25519 keys.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The text description that identifies this host key.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for host keys.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ImportHostKeyRequest AWS API Documentation
    #
    class ImportHostKeyRequest < Struct.new(
      :server_id,
      :host_key_body,
      :description,
      :tags)
      SENSITIVE = [:host_key_body]
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   Returns the server identifier that contains the imported key.
    #   @return [String]
    #
    # @!attribute [rw] host_key_id
    #   Returns the host key identifier for the imported key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ImportHostKeyResponse AWS API Documentation
    #
    class ImportHostKeyResponse < Struct.new(
      :server_id,
      :host_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_body
    #   The public key portion of an SSH key pair.
    #
    #   Transfer Family accepts RSA, ECDSA, and ED25519 keys.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the Transfer Family user that is assigned to one or more
    #   servers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ImportSshPublicKeyRequest AWS API Documentation
    #
    class ImportSshPublicKeyRequest < Struct.new(
      :server_id,
      :ssh_public_key_body,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the user, the server they belong to, and the identifier of
    # the SSH public key associated with that user. A user can have more
    # than one key on each server that they are associated with.
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_id
    #   The name given to a public key by the system that was imported.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   A user name assigned to the `ServerID` value that you specified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ImportSshPublicKeyResponse AWS API Documentation
    #
    class ImportSshPublicKeyResponse < Struct.new(
      :server_id,
      :ssh_public_key_id,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the location for the file that's being processed.
    #
    # @!attribute [rw] s3_file_location
    #   Specifies the details for the Amazon S3 file that's being copied or
    #   decrypted.
    #   @return [Types::S3InputFileLocation]
    #
    # @!attribute [rw] efs_file_location
    #   Specifies the details for the Amazon Elastic File System (Amazon
    #   EFS) file that's being decrypted.
    #   @return [Types::EfsFileLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/InputFileLocation AWS API Documentation
    #
    class InputFileLocation < Struct.new(
      :s3_file_location,
      :efs_file_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when an error occurs in the Transfer Family
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/InternalServiceError AWS API Documentation
    #
    class InternalServiceError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `NextToken` parameter that was passed is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the client submits a malformed request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When you can get additional results from the `ListAccesses` call, a
    #   `NextToken` parameter is returned in the output. You can then pass
    #   in a subsequent command to the `NextToken` parameter to continue
    #   listing additional accesses.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server that has users
    #   assigned to it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListAccessesRequest AWS API Documentation
    #
    class ListAccessesRequest < Struct.new(
      :max_results,
      :next_token,
      :server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you can get additional results from the `ListAccesses` call, a
    #   `NextToken` parameter is returned in the output. You can then pass
    #   in a subsequent command to the `NextToken` parameter to continue
    #   listing additional accesses.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server that has users
    #   assigned to it.
    #   @return [String]
    #
    # @!attribute [rw] accesses
    #   Returns the accesses and their properties for the `ServerId` value
    #   that you specify.
    #   @return [Array<Types::ListedAccess>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListAccessesResponse AWS API Documentation
    #
    class ListAccessesResponse < Struct.new(
      :next_token,
      :server_id,
      :accesses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When you can get additional results from the `ListAgreements` call,
    #   a `NextToken` parameter is returned in the output. You can then pass
    #   in a subsequent command to the `NextToken` parameter to continue
    #   listing additional agreements.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   The identifier of the server for which you want a list of
    #   agreements.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListAgreementsRequest AWS API Documentation
    #
    class ListAgreementsRequest < Struct.new(
      :max_results,
      :next_token,
      :server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Returns a token that you can use to call `ListAgreements` again and
    #   receive additional results, if there are any.
    #   @return [String]
    #
    # @!attribute [rw] agreements
    #   Returns an array, where each item contains the details of an
    #   agreement.
    #   @return [Array<Types::ListedAgreement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListAgreementsResponse AWS API Documentation
    #
    class ListAgreementsResponse < Struct.new(
      :next_token,
      :agreements)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When you can get additional results from the `ListCertificates`
    #   call, a `NextToken` parameter is returned in the output. You can
    #   then pass in a subsequent command to the `NextToken` parameter to
    #   continue listing additional certificates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListCertificatesRequest AWS API Documentation
    #
    class ListCertificatesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Returns the next token, which you can use to list the next
    #   certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificates
    #   Returns an array of the certificates that are specified in the
    #   `ListCertificates` call.
    #   @return [Array<Types::ListedCertificate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListCertificatesResponse AWS API Documentation
    #
    class ListCertificatesResponse < Struct.new(
      :next_token,
      :certificates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When you can get additional results from the `ListConnectors` call,
    #   a `NextToken` parameter is returned in the output. You can then pass
    #   in a subsequent command to the `NextToken` parameter to continue
    #   listing additional connectors.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListConnectorsRequest AWS API Documentation
    #
    class ListConnectorsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Returns a token that you can use to call `ListConnectors` again and
    #   receive additional results, if there are any.
    #   @return [String]
    #
    # @!attribute [rw] connectors
    #   Returns an array, where each item contains the details of a
    #   connector.
    #   @return [Array<Types::ListedConnector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListConnectorsResponse AWS API Documentation
    #
    class ListConnectorsResponse < Struct.new(
      :next_token,
      :connectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   `ListExecutions` returns the `NextToken` parameter in the output.
    #   You can then pass the `NextToken` parameter in a subsequent command
    #   to continue listing additional executions.
    #
    #   This is useful for pagination, for instance. If you have 100
    #   executions for a workflow, you might only want to list first 10. If
    #   so, call the API by specifying the `max-results`:
    #
    #   `aws transfer list-executions --max-results 10`
    #
    #   This returns details for the first 10 executions, as well as the
    #   pointer (`NextToken`) to the eleventh execution. You can now call
    #   the API again, supplying the `NextToken` value you received:
    #
    #   `aws transfer list-executions --max-results 10 --next-token
    #   $somePointerReturnedFromPreviousListResult`
    #
    #   This call returns the next 10 executions, the 11th through the 20th.
    #   You can then repeat the call until the details for all 100
    #   executions have been returned.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   A unique identifier for the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListExecutionsRequest AWS API Documentation
    #
    class ListExecutionsRequest < Struct.new(
      :max_results,
      :next_token,
      :workflow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   `ListExecutions` returns the `NextToken` parameter in the output.
    #   You can then pass the `NextToken` parameter in a subsequent command
    #   to continue listing additional executions.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   A unique identifier for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] executions
    #   Returns the details for each execution, in a `ListedExecution`
    #   array.
    #   @return [Array<Types::ListedExecution>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListExecutionsResponse AWS API Documentation
    #
    class ListExecutionsResponse < Struct.new(
      :next_token,
      :workflow_id,
      :executions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_id
    #   A unique identifier for a connector. This value should match the
    #   value supplied to the corresponding `StartFileTransfer` call.
    #   @return [String]
    #
    # @!attribute [rw] transfer_id
    #   A unique identifier for a file transfer. This value should match the
    #   value supplied to the corresponding `StartFileTransfer` call.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If there are more file details than returned in this call, use this
    #   value for a subsequent call to `ListFileTransferResults` to retrieve
    #   them.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of files to return in a single page. Note that
    #   currently you can specify a maximum of 10 file paths in a single
    #   [StartFileTransfer][1] operation. Thus, the maximum number of file
    #   transfer results that can be returned in a single page is 10.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/APIReference/API_StartFileTransfer.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListFileTransferResultsRequest AWS API Documentation
    #
    class ListFileTransferResultsRequest < Struct.new(
      :connector_id,
      :transfer_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_transfer_results
    #   Returns the details for the files transferred in the transfer
    #   identified by the `TransferId` and `ConnectorId` specified.
    #
    #   * `FilePath`: the filename and path to where the file was sent to or
    #     retrieved from.
    #
    #   * `StatusCode`: current status for the transfer. The status returned
    #     is one of the following values:`QUEUED`, `IN_PROGRESS`,
    #     `COMPLETED`, or `FAILED`
    #
    #   * `FailureCode`: for transfers that fail, this parameter contains a
    #     code indicating the reason. For example, `RETRIEVE_FILE_NOT_FOUND`
    #
    #   * `FailureMessage`: for transfers that fail, this parameter
    #     describes the reason for the failure.
    #   @return [Array<Types::ConnectorFileTransferResult>]
    #
    # @!attribute [rw] next_token
    #   Returns a token that you can use to call `ListFileTransferResults`
    #   again and receive additional results, if there are any (against the
    #   same `TransferId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListFileTransferResultsResponse AWS API Documentation
    #
    class ListFileTransferResultsResponse < Struct.new(
      :file_transfer_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When there are additional results that were not returned, a
    #   `NextToken` parameter is returned. You can use that value for a
    #   subsequent call to `ListHostKeys` to continue listing results.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   The identifier of the server that contains the host keys that you
    #   want to view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListHostKeysRequest AWS API Documentation
    #
    class ListHostKeysRequest < Struct.new(
      :max_results,
      :next_token,
      :server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Returns a token that you can use to call `ListHostKeys` again and
    #   receive additional results, if there are any.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   Returns the server identifier that contains the listed host keys.
    #   @return [String]
    #
    # @!attribute [rw] host_keys
    #   Returns an array, where each item contains the details of a host
    #   key.
    #   @return [Array<Types::ListedHostKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListHostKeysResponse AWS API Documentation
    #
    class ListHostKeysResponse < Struct.new(
      :next_token,
      :server_id,
      :host_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When there are additional results that were not returned, a
    #   `NextToken` parameter is returned. You can use that value for a
    #   subsequent call to `ListProfiles` to continue listing results.
    #   @return [String]
    #
    # @!attribute [rw] profile_type
    #   Indicates whether to list only `LOCAL` type profiles or only
    #   `PARTNER` type profiles. If not supplied in the request, the command
    #   lists all types of profiles.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListProfilesRequest AWS API Documentation
    #
    class ListProfilesRequest < Struct.new(
      :max_results,
      :next_token,
      :profile_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Returns a token that you can use to call `ListProfiles` again and
    #   receive additional results, if there are any.
    #   @return [String]
    #
    # @!attribute [rw] profiles
    #   Returns an array, where each item contains the details of a profile.
    #   @return [Array<Types::ListedProfile>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListProfilesResponse AWS API Documentation
    #
    class ListProfilesResponse < Struct.new(
      :next_token,
      :profiles)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Specifies the number of security policies to return as a response to
    #   the `ListSecurityPolicies` query.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When additional results are obtained from the `ListSecurityPolicies`
    #   command, a `NextToken` parameter is returned in the output. You can
    #   then pass the `NextToken` parameter in a subsequent command to
    #   continue listing additional security policies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListSecurityPoliciesRequest AWS API Documentation
    #
    class ListSecurityPoliciesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you can get additional results from the `ListSecurityPolicies`
    #   operation, a `NextToken` parameter is returned in the output. In a
    #   following command, you can pass in the `NextToken` parameter to
    #   continue listing security policies.
    #   @return [String]
    #
    # @!attribute [rw] security_policy_names
    #   An array of security policies that were listed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListSecurityPoliciesResponse AWS API Documentation
    #
    class ListSecurityPoliciesResponse < Struct.new(
      :next_token,
      :security_policy_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Specifies the number of servers to return as a response to the
    #   `ListServers` query.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When additional results are obtained from the `ListServers` command,
    #   a `NextToken` parameter is returned in the output. You can then pass
    #   the `NextToken` parameter in a subsequent command to continue
    #   listing additional servers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListServersRequest AWS API Documentation
    #
    class ListServersRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you can get additional results from the `ListServers`
    #   operation, a `NextToken` parameter is returned in the output. In a
    #   following command, you can pass in the `NextToken` parameter to
    #   continue listing additional servers.
    #   @return [String]
    #
    # @!attribute [rw] servers
    #   An array of servers that were listed.
    #   @return [Array<Types::ListedServer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListServersResponse AWS API Documentation
    #
    class ListServersResponse < Struct.new(
      :next_token,
      :servers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Requests the tags associated with a particular Amazon Resource Name
    #   (ARN). An ARN is an identifier for a specific Amazon Web Services
    #   resource, such as a server, user, or role.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the number of tags to return as a response to the
    #   `ListTagsForResource` request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When you request additional results from the `ListTagsForResource`
    #   operation, a `NextToken` parameter is returned in the input. You can
    #   then pass in a subsequent command to the `NextToken` parameter to
    #   continue listing additional tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN you specified to list the tags of.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   When you can get additional results from the `ListTagsForResource`
    #   call, a `NextToken` parameter is returned in the output. You can
    #   then pass in a subsequent command to the `NextToken` parameter to
    #   continue listing additional tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that are assigned to a resource, usually for the
    #   purpose of grouping and searching for items. Tags are metadata that
    #   you define.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :arn,
      :next_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Specifies the number of users to return as a response to the
    #   `ListUsers` request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If there are additional results from the `ListUsers` call, a
    #   `NextToken` parameter is returned in the output. You can then pass
    #   the `NextToken` to a subsequent `ListUsers` command, to continue
    #   listing additional users.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server that has users
    #   assigned to it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListUsersRequest AWS API Documentation
    #
    class ListUsersRequest < Struct.new(
      :max_results,
      :next_token,
      :server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you can get additional results from the `ListUsers` call, a
    #   `NextToken` parameter is returned in the output. You can then pass
    #   in a subsequent command to the `NextToken` parameter to continue
    #   listing additional users.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server that the users are
    #   assigned to.
    #   @return [String]
    #
    # @!attribute [rw] users
    #   Returns the Transfer Family users and their properties for the
    #   `ServerId` value that you specify.
    #   @return [Array<Types::ListedUser>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListUsersResponse AWS API Documentation
    #
    class ListUsersResponse < Struct.new(
      :next_token,
      :server_id,
      :users)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Returns the `NextToken` parameter in the output. You can then pass
    #   the `NextToken` parameter in a subsequent command to continue
    #   listing additional web apps.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListWebAppsRequest AWS API Documentation
    #
    class ListWebAppsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Provide this value for the `NextToken` parameter in a subsequent
    #   command to continue listing additional web apps.
    #   @return [String]
    #
    # @!attribute [rw] web_apps
    #   Returns, for each listed web app, a structure that contains details
    #   for the web app.
    #   @return [Array<Types::ListedWebApp>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListWebAppsResponse AWS API Documentation
    #
    class ListWebAppsResponse < Struct.new(
      :next_token,
      :web_apps)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   `ListWorkflows` returns the `NextToken` parameter in the output. You
    #   can then pass the `NextToken` parameter in a subsequent command to
    #   continue listing additional workflows.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListWorkflowsRequest AWS API Documentation
    #
    class ListWorkflowsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   `ListWorkflows` returns the `NextToken` parameter in the output. You
    #   can then pass the `NextToken` parameter in a subsequent command to
    #   continue listing additional workflows.
    #   @return [String]
    #
    # @!attribute [rw] workflows
    #   Returns the `Arn`, `WorkflowId`, and `Description` for each
    #   workflow.
    #   @return [Array<Types::ListedWorkflow>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListWorkflowsResponse AWS API Documentation
    #
    class ListWorkflowsResponse < Struct.new(
      :next_token,
      :workflows)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lists the properties for one or more specified associated accesses.
    #
    # @!attribute [rw] home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using the client.
    #
    #   A `HomeDirectory` example is `/bucket_name/home/mydirectory`.
    #
    #   <note markdown="1"> You can use the `HomeDirectory` parameter for `HomeDirectoryType`
    #   when it is set to either `PATH` or `LOGICAL`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) that you want your users'
    #   home directory to be when they log in to the server. If you set it
    #   to `PATH`, the user will see the absolute Amazon S3 bucket or Amazon
    #   EFS path as is in their file transfer protocol clients. If you set
    #   it to `LOGICAL`, you need to provide mappings in the
    #   `HomeDirectoryMappings` for how you want to make Amazon S3 or Amazon
    #   EFS paths visible to your users.
    #
    #   <note markdown="1"> If `HomeDirectoryType` is `LOGICAL`, you must provide mappings,
    #   using the `HomeDirectoryMappings` parameter. If, on the other hand,
    #   `HomeDirectoryType` is `PATH`, you provide an absolute path using
    #   the `HomeDirectory` parameter. You cannot have both `HomeDirectory`
    #   and `HomeDirectoryMappings` in your template.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that controls your users' access to your Amazon S3
    #   bucket or Amazon EFS file system. The policies attached to this role
    #   determine the level of access that you want to provide your users
    #   when transferring files into and out of your Amazon S3 bucket or
    #   Amazon EFS file system. The IAM role should also contain a trust
    #   relationship that allows the server to access your resources when
    #   servicing your users' transfer requests.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   A unique identifier that is required to identify specific groups
    #   within your directory. The users of the group that you associate
    #   have access to your Amazon S3 or Amazon EFS resources over the
    #   enabled protocols using Transfer Family. If you know the group name,
    #   you can view the SID values by running the following command using
    #   Windows PowerShell.
    #
    #   `Get-ADGroup -Filter {samAccountName -like "YourGroupName*"}
    #   -Properties * | Select SamAccountName,ObjectSid`
    #
    #   In that command, replace *YourGroupName* with the name of your
    #   Active Directory group.
    #
    #   The regular expression used to validate this parameter is a string
    #   of characters consisting of uppercase and lowercase alphanumeric
    #   characters with no spaces. You can also include underscores or any
    #   of the following characters: =,.@:/-
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListedAccess AWS API Documentation
    #
    class ListedAccess < Struct.new(
      :home_directory,
      :home_directory_type,
      :role,
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the properties of an agreement.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the specified agreement.
    #   @return [String]
    #
    # @!attribute [rw] agreement_id
    #   A unique identifier for the agreement. This identifier is returned
    #   when you create an agreement.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The current description for the agreement. You can change it by
    #   calling the `UpdateAgreement` operation and providing a new
    #   description.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The agreement can be either `ACTIVE` or `INACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   The unique identifier for the agreement.
    #   @return [String]
    #
    # @!attribute [rw] local_profile_id
    #   A unique identifier for the AS2 local profile.
    #   @return [String]
    #
    # @!attribute [rw] partner_profile_id
    #   A unique identifier for the partner profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListedAgreement AWS API Documentation
    #
    class ListedAgreement < Struct.new(
      :arn,
      :agreement_id,
      :description,
      :status,
      :server_id,
      :local_profile_id,
      :partner_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the properties of a certificate.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the specified certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   An array of identifiers for the imported certificates. You use this
    #   identifier for working with profiles and partner profiles.
    #   @return [String]
    #
    # @!attribute [rw] usage
    #   Specifies how this certificate is used. It can be used in the
    #   following ways:
    #
    #   * `SIGNING`: For signing AS2 messages
    #
    #   * `ENCRYPTION`: For encrypting AS2 messages
    #
    #   * `TLS`: For securing AS2 communications sent over HTTPS
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The certificate can be either `ACTIVE`, `PENDING_ROTATION`, or
    #   `INACTIVE`. `PENDING_ROTATION` means that this certificate will
    #   replace the current certificate when it expires.
    #   @return [String]
    #
    # @!attribute [rw] active_date
    #   An optional date that specifies when the certificate becomes active.
    #   If you do not specify a value, `ActiveDate` takes the same value as
    #   `NotBeforeDate`, which is specified by the CA.
    #   @return [Time]
    #
    # @!attribute [rw] inactive_date
    #   An optional date that specifies when the certificate becomes
    #   inactive. If you do not specify a value, `InactiveDate` takes the
    #   same value as `NotAfterDate`, which is specified by the CA.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type for the certificate. If a private key has been specified
    #   for the certificate, its type is `CERTIFICATE_WITH_PRIVATE_KEY`. If
    #   there is no private key, the type is `CERTIFICATE`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The name or short description that's used to identify the
    #   certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListedCertificate AWS API Documentation
    #
    class ListedCertificate < Struct.new(
      :arn,
      :certificate_id,
      :usage,
      :status,
      :active_date,
      :inactive_date,
      :type,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns details of the connector that is specified.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the specified connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_id
    #   The unique identifier for the connector.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of the partner's AS2 or SFTP endpoint.
    #
    #   When creating AS2 connectors or service-managed SFTP connectors
    #   (connectors without egress configuration), you must provide a URL to
    #   specify the remote server endpoint. For VPC Lattice type connectors,
    #   the URL must be null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListedConnector AWS API Documentation
    #
    class ListedConnector < Struct.new(
      :arn,
      :connector_id,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns properties of the execution that is specified.
    #
    # @!attribute [rw] execution_id
    #   A unique identifier for the execution of a workflow.
    #   @return [String]
    #
    # @!attribute [rw] initial_file_location
    #   A structure that describes the Amazon S3 or EFS file location. This
    #   is the file location when the execution begins: if the file is being
    #   copied, this is the initial (as opposed to destination) file
    #   location.
    #   @return [Types::FileLocation]
    #
    # @!attribute [rw] service_metadata
    #   A container object for the session details that are associated with
    #   a workflow.
    #   @return [Types::ServiceMetadata]
    #
    # @!attribute [rw] status
    #   The status is one of the execution. Can be in progress, completed,
    #   exception encountered, or handling the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListedExecution AWS API Documentation
    #
    class ListedExecution < Struct.new(
      :execution_id,
      :initial_file_location,
      :service_metadata,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns properties of the host key that's specified.
    #
    # @!attribute [rw] arn
    #   The unique Amazon Resource Name (ARN) of the host key.
    #   @return [String]
    #
    # @!attribute [rw] host_key_id
    #   A unique identifier for the host key.
    #   @return [String]
    #
    # @!attribute [rw] fingerprint
    #   The public key fingerprint, which is a short sequence of bytes used
    #   to identify the longer public key.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The current description for the host key. You can change it by
    #   calling the `UpdateHostKey` operation and providing a new
    #   description.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The encryption algorithm that is used for the host key. The `Type`
    #   parameter is specified by using one of the following values:
    #
    #   * `ssh-rsa`
    #
    #   * `ssh-ed25519`
    #
    #   * `ecdsa-sha2-nistp256`
    #
    #   * `ecdsa-sha2-nistp384`
    #
    #   * `ecdsa-sha2-nistp521`
    #   @return [String]
    #
    # @!attribute [rw] date_imported
    #   The date on which the host key was added to the server.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListedHostKey AWS API Documentation
    #
    class ListedHostKey < Struct.new(
      :arn,
      :host_key_id,
      :fingerprint,
      :description,
      :type,
      :date_imported)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the properties of the profile that was specified.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the specified profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   A unique identifier for the local or partner AS2 profile.
    #   @return [String]
    #
    # @!attribute [rw] as_2_id
    #   The `As2Id` is the *AS2-name*, as defined in the [RFC 4130][1]. For
    #   inbound transfers, this is the `AS2-From` header for the AS2
    #   messages sent from the partner. For outbound connectors, this is the
    #   `AS2-To` header for the AS2 messages sent to the partner using the
    #   `StartFileTransfer` API operation. This ID cannot include spaces.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc4130
    #   @return [String]
    #
    # @!attribute [rw] profile_type
    #   Indicates whether to list only `LOCAL` type profiles or only
    #   `PARTNER` type profiles. If not supplied in the request, the command
    #   lists all types of profiles.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListedProfile AWS API Documentation
    #
    class ListedProfile < Struct.new(
      :arn,
      :profile_id,
      :as_2_id,
      :profile_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns properties of a file transfer protocol-enabled server that was
    # specified.
    #
    # @!attribute [rw] arn
    #   Specifies the unique Amazon Resource Name (ARN) for a server to be
    #   listed.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   Specifies the domain of the storage system that is used for file
    #   transfers. There are two domains available: Amazon Simple Storage
    #   Service (Amazon S3) and Amazon Elastic File System (Amazon EFS). The
    #   default value is S3.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_type
    #   The mode of authentication for a server. The default value is
    #   `SERVICE_MANAGED`, which allows you to store and access user
    #   credentials within the Transfer Family service.
    #
    #   Use `AWS_DIRECTORY_SERVICE` to provide access to Active Directory
    #   groups in Directory Service for Microsoft Active Directory or
    #   Microsoft Active Directory in your on-premises environment or in
    #   Amazon Web Services using AD Connector. This option also requires
    #   you to provide a Directory ID by using the `IdentityProviderDetails`
    #   parameter.
    #
    #   Use the `API_GATEWAY` value to integrate with an identity provider
    #   of your choosing. The `API_GATEWAY` setting requires you to provide
    #   an Amazon API Gateway endpoint URL to call for authentication by
    #   using the `IdentityProviderDetails` parameter.
    #
    #   Use the `AWS_LAMBDA` value to directly use an Lambda function as
    #   your identity provider. If you choose this value, you must specify
    #   the ARN for the Lambda function in the `Function` parameter for the
    #   `IdentityProviderDetails` data type.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   Specifies the type of VPC endpoint that your server is connected to.
    #   If your server is connected to a VPC endpoint, your server isn't
    #   accessible over the public internet.
    #   @return [String]
    #
    # @!attribute [rw] logging_role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that allows a server to turn on Amazon CloudWatch logging
    #   for Amazon S3 or Amazon EFS events. When set, you can view user
    #   activity in your CloudWatch logs.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   Specifies the unique system assigned identifier for the servers that
    #   were listed.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The condition of the server that was described. A value of `ONLINE`
    #   indicates that the server can accept jobs and transfer files. A
    #   `State` value of `OFFLINE` means that the server cannot perform file
    #   transfer operations.
    #
    #   The states of `STARTING` and `STOPPING` indicate that the server is
    #   in an intermediate state, either not fully able to respond, or not
    #   fully offline. The values of `START_FAILED` or `STOP_FAILED` can
    #   indicate an error condition.
    #   @return [String]
    #
    # @!attribute [rw] user_count
    #   Specifies the number of users that are assigned to a server you
    #   specified with the `ServerId`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListedServer AWS API Documentation
    #
    class ListedServer < Struct.new(
      :arn,
      :domain,
      :identity_provider_type,
      :endpoint_type,
      :logging_role,
      :server_id,
      :state,
      :user_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns properties of the user that you specify.
    #
    # @!attribute [rw] arn
    #   Provides the unique Amazon Resource Name (ARN) for the user that you
    #   want to learn about.
    #   @return [String]
    #
    # @!attribute [rw] home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using the client.
    #
    #   A `HomeDirectory` example is `/bucket_name/home/mydirectory`.
    #
    #   <note markdown="1"> You can use the `HomeDirectory` parameter for `HomeDirectoryType`
    #   when it is set to either `PATH` or `LOGICAL`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) that you want your users'
    #   home directory to be when they log in to the server. If you set it
    #   to `PATH`, the user will see the absolute Amazon S3 bucket or Amazon
    #   EFS path as is in their file transfer protocol clients. If you set
    #   it to `LOGICAL`, you need to provide mappings in the
    #   `HomeDirectoryMappings` for how you want to make Amazon S3 or Amazon
    #   EFS paths visible to your users.
    #
    #   <note markdown="1"> If `HomeDirectoryType` is `LOGICAL`, you must provide mappings,
    #   using the `HomeDirectoryMappings` parameter. If, on the other hand,
    #   `HomeDirectoryType` is `PATH`, you provide an absolute path using
    #   the `HomeDirectory` parameter. You cannot have both `HomeDirectory`
    #   and `HomeDirectoryMappings` in your template.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that controls your users' access to your Amazon S3
    #   bucket or Amazon EFS file system. The policies attached to this role
    #   determine the level of access that you want to provide your users
    #   when transferring files into and out of your Amazon S3 bucket or
    #   Amazon EFS file system. The IAM role should also contain a trust
    #   relationship that allows the server to access your resources when
    #   servicing your users' transfer requests.
    #
    #   <note markdown="1"> The IAM role that controls your users' access to your Amazon S3
    #   bucket for servers with `Domain=S3`, or your EFS file system for
    #   servers with `Domain=EFS`.
    #
    #    The policies attached to this role determine the level of access you
    #   want to provide your users when transferring files into and out of
    #   your S3 buckets or EFS file systems.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_count
    #   Specifies the number of SSH public keys stored for the user you
    #   specified.
    #   @return [Integer]
    #
    # @!attribute [rw] user_name
    #   Specifies the name of the user whose ARN was specified. User names
    #   are used for authentication purposes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListedUser AWS API Documentation
    #
    class ListedUser < Struct.new(
      :arn,
      :home_directory,
      :home_directory_type,
      :role,
      :ssh_public_key_count,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # a structure that contains details for the web app.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the web app.
    #   @return [String]
    #
    # @!attribute [rw] web_app_id
    #   The unique identifier for the web app.
    #   @return [String]
    #
    # @!attribute [rw] access_endpoint
    #   The `AccessEndpoint` is the URL that you provide to your users for
    #   them to interact with the Transfer Family web app. You can specify a
    #   custom URL or use the default value.
    #   @return [String]
    #
    # @!attribute [rw] web_app_endpoint
    #   The `WebAppEndpoint` is the unique URL for your Transfer Family web
    #   app. This is the value that you use when you configure **Origins**
    #   on CloudFront.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListedWebApp AWS API Documentation
    #
    class ListedWebApp < Struct.new(
      :arn,
      :web_app_id,
      :access_endpoint,
      :web_app_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the identifier, text description, and Amazon Resource Name
    # (ARN) for the workflow.
    #
    # @!attribute [rw] workflow_id
    #   A unique identifier for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Specifies the text description for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Specifies the unique Amazon Resource Name (ARN) for the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListedWorkflow AWS API Documentation
    #
    class ListedWorkflow < Struct.new(
      :workflow_id,
      :description,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Consists of the logging role and the log group name.
    #
    # @!attribute [rw] logging_role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that allows a server to turn on Amazon CloudWatch logging
    #   for Amazon S3 or Amazon EFS events. When set, you can view user
    #   activity in your CloudWatch logs.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The name of the CloudWatch logging group for the Transfer Family
    #   server to which this workflow belongs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/LoggingConfiguration AWS API Documentation
    #
    class LoggingConfiguration < Struct.new(
      :logging_role,
      :log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The full POSIX identity, including user ID (`Uid`), group ID (`Gid`),
    # and any secondary groups IDs (`SecondaryGids`), that controls your
    # users' access to your Amazon EFS file systems. The POSIX permissions
    # that are set on files and directories in your file system determine
    # the level of access your users get when transferring files into and
    # out of your Amazon EFS file systems.
    #
    # @!attribute [rw] uid
    #   The POSIX user ID used for all EFS operations by this user.
    #   @return [Integer]
    #
    # @!attribute [rw] gid
    #   The POSIX group ID used for all EFS operations by this user.
    #   @return [Integer]
    #
    # @!attribute [rw] secondary_gids
    #   The secondary POSIX group IDs used for all EFS operations by this
    #   user.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/PosixProfile AWS API Documentation
    #
    class PosixProfile < Struct.new(
      :uid,
      :gid,
      :secondary_gids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The protocol settings that are configured for your server.
    #
    # @!attribute [rw] passive_ip
    #   Indicates passive mode, for FTP and FTPS protocols. Enter a single
    #   IPv4 address, such as the public IP address of a firewall, router,
    #   or load balancer. For example:
    #
    #   `aws transfer update-server --protocol-details PassiveIp=0.0.0.0`
    #
    #   Replace `0.0.0.0` in the example above with the actual IP address
    #   you want to use.
    #
    #   <note markdown="1"> If you change the `PassiveIp` value, you must stop and then restart
    #   your Transfer Family server for the change to take effect. For
    #   details on using passive mode (PASV) in a NAT environment, see
    #   [Configuring your FTPS server behind a firewall or NAT with Transfer
    #   Family][1].
    #
    #    Additionally, avoid placing Network Load Balancers (NLBs) or NAT
    #   gateways in front of Transfer Family servers. This configuration
    #   increases costs and can cause performance issues. When NLBs or NATs
    #   are in the communication path, Transfer Family cannot accurately
    #   recognize client IP addresses, which impacts connection sharding and
    #   limits FTPS servers to only 300 simultaneous connections instead of
    #   10,000. If you must use an NLB, use port 21 for health checks and
    #   enable TLS session resumption by setting `TlsSessionResumptionMode =
    #   ENFORCED`. For optimal performance, migrate to VPC endpoints with
    #   Elastic IP addresses instead of using NLBs. For more details, see [
    #   Avoid placing NLBs and NATs in front of Transfer Family][2].
    #
    #    </note>
    #
    #   *Special values*
    #
    #   The `AUTO` and `0.0.0.0` are special values for the `PassiveIp`
    #   parameter. The value `PassiveIp=AUTO` is assigned by default to FTP
    #   and FTPS type servers. In this case, the server automatically
    #   responds with one of the endpoint IPs within the PASV response.
    #   `PassiveIp=0.0.0.0` has a more unique application for its usage. For
    #   example, if you have a High Availability (HA) Network Load Balancer
    #   (NLB) environment, where you have 3 subnets, you can only specify a
    #   single IP address using the `PassiveIp` parameter. This reduces the
    #   effectiveness of having High Availability. In this case, you can
    #   specify `PassiveIp=0.0.0.0`. This tells the client to use the same
    #   IP address as the Control connection and utilize all AZs for their
    #   connections. Note, however, that not all FTP clients support the
    #   `PassiveIp=0.0.0.0` response. FileZilla and WinSCP do support it. If
    #   you are using other clients, check to see if your client supports
    #   the `PassiveIp=0.0.0.0` response.
    #
    #
    #
    #   [1]: http://aws.amazon.com/blogs/storage/configuring-your-ftps-server-behind-a-firewall-or-nat-with-aws-transfer-family/
    #   [2]: https://docs.aws.amazon.com/transfer/latest/userguide/infrastructure-security.html#nlb-considerations
    #   @return [String]
    #
    # @!attribute [rw] tls_session_resumption_mode
    #   A property used with Transfer Family servers that use the FTPS
    #   protocol. TLS Session Resumption provides a mechanism to resume or
    #   share a negotiated secret key between the control and data
    #   connection for an FTPS session. `TlsSessionResumptionMode`
    #   determines whether or not the server resumes recent, negotiated
    #   sessions through a unique session ID. This property is available
    #   during `CreateServer` and `UpdateServer` calls. If a
    #   `TlsSessionResumptionMode` value is not specified during
    #   `CreateServer`, it is set to `ENFORCED` by default.
    #
    #   * `DISABLED`: the server does not process TLS session resumption
    #     client requests and creates a new TLS session for each request.
    #
    #   * `ENABLED`: the server processes and accepts clients that are
    #     performing TLS session resumption. The server doesn't reject
    #     client data connections that do not perform the TLS session
    #     resumption client processing.
    #
    #   * `ENFORCED`: the server processes and accepts clients that are
    #     performing TLS session resumption. The server rejects client data
    #     connections that do not perform the TLS session resumption client
    #     processing. Before you set the value to `ENFORCED`, test your
    #     clients.
    #
    #     <note markdown="1"> Not all FTPS clients perform TLS session resumption. So, if you
    #     choose to enforce TLS session resumption, you prevent any
    #     connections from FTPS clients that don't perform the protocol
    #     negotiation. To determine whether or not you can use the
    #     `ENFORCED` value, you need to test your clients.
    #
    #      </note>
    #   @return [String]
    #
    # @!attribute [rw] set_stat_option
    #   Use the `SetStatOption` to ignore the error that is generated when
    #   the client attempts to use `SETSTAT` on a file you are uploading to
    #   an S3 bucket.
    #
    #   Some SFTP file transfer clients can attempt to change the attributes
    #   of remote files, including timestamp and permissions, using
    #   commands, such as `SETSTAT` when uploading the file. However, these
    #   commands are not compatible with object storage systems, such as
    #   Amazon S3. Due to this incompatibility, file uploads from these
    #   clients can result in errors even when the file is otherwise
    #   successfully uploaded.
    #
    #   Set the value to `ENABLE_NO_OP` to have the Transfer Family server
    #   ignore the `SETSTAT` command, and upload files without needing to
    #   make any changes to your SFTP client. While the `SetStatOption`
    #   `ENABLE_NO_OP` setting ignores the error, it does generate a log
    #   entry in Amazon CloudWatch Logs, so you can determine when the
    #   client is making a `SETSTAT` call.
    #
    #   <note markdown="1"> If you want to preserve the original timestamp for your file, and
    #   modify other file attributes using `SETSTAT`, you can use Amazon EFS
    #   as backend storage with Transfer Family.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] as_2_transports
    #   Indicates the transport method for the AS2 messages. Currently, only
    #   HTTP is supported.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ProtocolDetails AWS API Documentation
    #
    class ProtocolDetails < Struct.new(
      :passive_ip,
      :tls_session_resumption_mode,
      :set_stat_option,
      :as_2_transports)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource does not exist, or exists in a region other
    # than the one specified for the command.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ResourceExistsException AWS API Documentation
    #
    class ResourceExistsException < Struct.new(
      :message,
      :resource,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a resource is not found by the Amazon
    # Web ServicesTransfer Family service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the details for the file location for the file that's being
    # used in the workflow. Only applicable if you are using S3 storage.
    #
    # @!attribute [rw] bucket
    #   Specifies the S3 bucket that contains the file being used.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The name assigned to the file when it was created in Amazon S3. You
    #   use the object key to retrieve the object.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Specifies the file version.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The entity tag is a hash of the object. The ETag reflects changes
    #   only to the contents of an object, not its metadata.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/S3FileLocation AWS API Documentation
    #
    class S3FileLocation < Struct.new(
      :bucket,
      :key,
      :version_id,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the customer input Amazon S3 file location. If it is used
    # inside `copyStepDetails.DestinationFileLocation`, it should be the S3
    # copy destination.
    #
    # You need to provide the bucket and key. The key can represent either a
    # path or a file. This is determined by whether or not you end the key
    # value with the forward slash (/) character. If the final character is
    # "/", then your file is copied to the folder, and its name does not
    # change. If, rather, the final character is alphanumeric, your uploaded
    # file is renamed to the path value. In this case, if a file with that
    # name already exists, it is overwritten.
    #
    # For example, if your path is `shared-files/bob/`, your uploaded files
    # are copied to the `shared-files/bob/`, folder. If your path is
    # `shared-files/today`, each uploaded file is copied to the
    # `shared-files` folder and named `today`: each upload overwrites the
    # previous version of the *bob* file.
    #
    # @!attribute [rw] bucket
    #   Specifies the S3 bucket for the customer input file.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The name assigned to the file when it was created in Amazon S3. You
    #   use the object key to retrieve the object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/S3InputFileLocation AWS API Documentation
    #
    class S3InputFileLocation < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 storage options that are configured for your server.
    #
    # @!attribute [rw] directory_listing_optimization
    #   Specifies whether or not performance for your Amazon S3 directories
    #   is optimized.
    #
    #   * If using the console, this is enabled by default.
    #
    #   * If using the API or CLI, this is disabled by default.
    #
    #   By default, home directory mappings have a `TYPE` of `DIRECTORY`. If
    #   you enable this option, you would then need to explicitly set the
    #   `HomeDirectoryMapEntry` `Type` to `FILE` if you want a mapping to
    #   have a file target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/S3StorageOptions AWS API Documentation
    #
    class S3StorageOptions < Struct.new(
      :directory_listing_optimization)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the key-value pair that are assigned to a file during the
    # execution of a Tagging step.
    #
    # @!attribute [rw] key
    #   The name assigned to the tag that you create.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that corresponds to the key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/S3Tag AWS API Documentation
    #
    class S3Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   A unique identifier for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   A unique identifier for the execution of a workflow.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   Used to distinguish between multiple callbacks for multiple Lambda
    #   steps within the same execution.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates whether the specified step succeeded or failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/SendWorkflowStepStateRequest AWS API Documentation
    #
    class SendWorkflowStepStateRequest < Struct.new(
      :workflow_id,
      :execution_id,
      :token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/SendWorkflowStepStateResponse AWS API Documentation
    #
    class SendWorkflowStepStateResponse < Aws::EmptyStructure; end

    # A container object for the session details that are associated with a
    # workflow.
    #
    # @!attribute [rw] user_details
    #   The Server ID (`ServerId`), Session ID (`SessionId`) and user
    #   (`UserName`) make up the `UserDetails`.
    #   @return [Types::UserDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ServiceMetadata AWS API Documentation
    #
    class ServiceMetadata < Struct.new(
      :user_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has failed because the Amazon Web ServicesTransfer Family
    # service is not available.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details for an SFTP connector object. The connector
    # object is used for transferring files to and from a partner's SFTP
    # server.
    #
    # @!attribute [rw] user_secret_id
    #   The identifier for the secret (in Amazon Web Services Secrets
    #   Manager) that contains the SFTP user's private key, password, or
    #   both. The identifier must be the Amazon Resource Name (ARN) of the
    #   secret.
    #
    #   <note markdown="1"> * Required when creating an SFTP connector
    #
    #   * Optional when updating an existing SFTP connector
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] trusted_host_keys
    #   The public portion of the host key, or keys, that are used to
    #   identify the external server to which you are connecting. You can
    #   use the `ssh-keyscan` command against the SFTP server to retrieve
    #   the necessary key.
    #
    #   <note markdown="1"> `TrustedHostKeys` is optional for `CreateConnector`. If not
    #   provided, you can use `TestConnection` to retrieve the server host
    #   key during the initial connection attempt, and subsequently update
    #   the connector with the observed host key.
    #
    #    </note>
    #
    #   When creating connectors with egress config (VPC\_LATTICE type
    #   connectors), since host name is not something we can verify, the
    #   only accepted trusted host key format is `key-type key-body` without
    #   the host name. For example: `ssh-rsa
    #   AAAAB3Nza...<long-string-for-public-key>`
    #
    #   The three standard SSH public key format elements are `<key type>`,
    #   `<body base64>`, and an optional `<comment>`, with spaces between
    #   each element. Specify only the `<key type>` and `<body base64>`: do
    #   not enter the `<comment>` portion of the key.
    #
    #   For the trusted host key, Transfer Family accepts RSA and ECDSA
    #   keys.
    #
    #   * For RSA keys, the `<key type>` string is `ssh-rsa`.
    #
    #   * For ECDSA keys, the `<key type>` string is either
    #     `ecdsa-sha2-nistp256`, `ecdsa-sha2-nistp384`, or
    #     `ecdsa-sha2-nistp521`, depending on the size of the key you
    #     generated.
    #
    #   Run this command to retrieve the SFTP server host key, where your
    #   SFTP server name is `ftp.host.com`.
    #
    #   `ssh-keyscan ftp.host.com`
    #
    #   This prints the public host key to standard output.
    #
    #   `ftp.host.com ssh-rsa AAAAB3Nza...<long-string-for-public-key>`
    #
    #   Copy and paste this string into the `TrustedHostKeys` field for the
    #   `create-connector` command or into the **Trusted host keys** field
    #   in the console.
    #
    #   For VPC Lattice type connectors (VPC\_LATTICE), remove the hostname
    #   from the key and use only the `key-type key-body` format. In this
    #   example, it should be: `ssh-rsa
    #   AAAAB3Nza...<long-string-for-public-key>`
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_concurrent_connections
    #   Specify the number of concurrent connections that your connector
    #   creates to the remote server. The default value is `1`. The maximum
    #   values is `5`.
    #
    #   <note markdown="1"> If you are using the Amazon Web Services Management Console, the
    #   default value is `5`.
    #
    #    </note>
    #
    #   This parameter specifies the number of active connections that your
    #   connector can establish with the remote server at the same time.
    #   Increasing this value can enhance connector performance when
    #   transferring large file batches by enabling parallel operations.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/SftpConnectorConfig AWS API Documentation
    #
    class SftpConnectorConfig < Struct.new(
      :user_secret_id,
      :trusted_host_keys,
      :max_concurrent_connections)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details for an SFTP connector connection.
    #
    # @!attribute [rw] host_key
    #   The SSH public key of the remote SFTP server. This is returned
    #   during the initial connection attempt when you call
    #   `TestConnection`. It allows you to retrieve the valid server host
    #   key to update the connector when you are unable to obtain it in
    #   advance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/SftpConnectorConnectionDetails AWS API Documentation
    #
    class SftpConnectorConnectionDetails < Struct.new(
      :host_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the public Secure Shell (SSH) key that is
    # associated with a Transfer Family user for the specific file transfer
    # protocol-enabled server (as identified by `ServerId`). The information
    # returned includes the date the key was imported, the public key
    # contents, and the public key ID. A user can store more than one SSH
    # public key associated with their user name on a specific server.
    #
    # @!attribute [rw] date_imported
    #   Specifies the date that the public key was added to the Transfer
    #   Family user.
    #   @return [Time]
    #
    # @!attribute [rw] ssh_public_key_body
    #   Specifies the content of the SSH public key as specified by the
    #   `PublicKeyId`.
    #
    #   Transfer Family accepts RSA, ECDSA, and ED25519 keys.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_id
    #   Specifies the `SshPublicKeyId` parameter contains the identifier of
    #   the public key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/SshPublicKey AWS API Documentation
    #
    class SshPublicKey < Struct.new(
      :date_imported,
      :ssh_public_key_body,
      :ssh_public_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_id
    #   The unique identifier for the connector.
    #   @return [String]
    #
    # @!attribute [rw] remote_directory_path
    #   Specifies the directory on the remote SFTP server for which you want
    #   to list its contents.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   An optional parameter where you can specify the maximum number of
    #   file/directory names to retrieve. The default value is 1,000.
    #   @return [Integer]
    #
    # @!attribute [rw] output_directory_path
    #   Specifies the path (bucket and prefix) in Amazon S3 storage to store
    #   the results of the directory listing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/StartDirectoryListingRequest AWS API Documentation
    #
    class StartDirectoryListingRequest < Struct.new(
      :connector_id,
      :remote_directory_path,
      :max_items,
      :output_directory_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listing_id
    #   Returns a unique identifier for the directory listing call.
    #   @return [String]
    #
    # @!attribute [rw] output_file_name
    #   Returns the file name where the results are stored. This is a
    #   combination of the connector ID and the listing ID:
    #   `<connector-id>-<listing-id>.json`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/StartDirectoryListingResponse AWS API Documentation
    #
    class StartDirectoryListingResponse < Struct.new(
      :listing_id,
      :output_file_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_id
    #   The unique identifier for the connector.
    #   @return [String]
    #
    # @!attribute [rw] send_file_paths
    #   One or more source paths for the Amazon S3 storage. Each string
    #   represents a source file path for one outbound file transfer. For
    #   example, ` amzn-s3-demo-bucket/myfile.txt `.
    #
    #   <note markdown="1"> Replace ` amzn-s3-demo-bucket ` with one of your actual buckets.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] retrieve_file_paths
    #   One or more source paths for the partner's SFTP server. Each string
    #   represents a source file path for one inbound file transfer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] local_directory_path
    #   For an inbound transfer, the `LocaDirectoryPath` specifies the
    #   destination for one or more files that are transferred from the
    #   partner's SFTP server.
    #   @return [String]
    #
    # @!attribute [rw] remote_directory_path
    #   For an outbound transfer, the `RemoteDirectoryPath` specifies the
    #   destination for one or more files that are transferred to the
    #   partner's SFTP server. If you don't specify a
    #   `RemoteDirectoryPath`, the destination for transferred files is the
    #   SFTP user's home directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/StartFileTransferRequest AWS API Documentation
    #
    class StartFileTransferRequest < Struct.new(
      :connector_id,
      :send_file_paths,
      :retrieve_file_paths,
      :local_directory_path,
      :remote_directory_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transfer_id
    #   Returns the unique identifier for the file transfer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/StartFileTransferResponse AWS API Documentation
    #
    class StartFileTransferResponse < Struct.new(
      :transfer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_id
    #   The unique identifier for the connector.
    #   @return [String]
    #
    # @!attribute [rw] delete_path
    #   The absolute path of the file or directory to delete. You can only
    #   specify one path per call to this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/StartRemoteDeleteRequest AWS API Documentation
    #
    class StartRemoteDeleteRequest < Struct.new(
      :connector_id,
      :delete_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delete_id
    #   Returns a unique identifier for the delete operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/StartRemoteDeleteResponse AWS API Documentation
    #
    class StartRemoteDeleteResponse < Struct.new(
      :delete_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_id
    #   The unique identifier for the connector.
    #   @return [String]
    #
    # @!attribute [rw] source_path
    #   The absolute path of the file or directory to move or rename. You
    #   can only specify one path per call to this operation.
    #   @return [String]
    #
    # @!attribute [rw] target_path
    #   The absolute path for the target of the move/rename operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/StartRemoteMoveRequest AWS API Documentation
    #
    class StartRemoteMoveRequest < Struct.new(
      :connector_id,
      :source_path,
      :target_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] move_id
    #   Returns a unique identifier for the move/rename operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/StartRemoteMoveResponse AWS API Documentation
    #
    class StartRemoteMoveResponse < Struct.new(
      :move_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server that you start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/StartServerRequest AWS API Documentation
    #
    class StartServerRequest < Struct.new(
      :server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server that you stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/StopServerRequest AWS API Documentation
    #
    class StopServerRequest < Struct.new(
      :server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a key-value pair for a specific resource. Tags are metadata
    # that you can use to search for and group a resource for various
    # purposes. You can apply tags to servers, users, and roles. A tag key
    # can take more than one value. For example, to group servers for
    # accounting purposes, you might create a tag called `Group` and assign
    # the values `Research` and `Accounting` to that group.
    #
    # @!attribute [rw] key
    #   The name assigned to the tag that you create.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Contains one or more values that you assigned to the key name you
    #   create.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   An Amazon Resource Name (ARN) for a specific Amazon Web Services
    #   resource, such as a server, user, or role.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs assigned to ARNs that you can use to group and
    #   search for resources by type. You can attach this metadata to
    #   resources (servers, users, workflows, and so on) for any purpose.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Each step type has its own `StepDetails` structure.
    #
    # The key/value pairs used to tag a file during the execution of a
    # workflow step.
    #
    # @!attribute [rw] name
    #   The name of the step, used as an identifier.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Array that contains from 1 to 10 key/value pairs.
    #   @return [Array<Types::S3Tag>]
    #
    # @!attribute [rw] source_file_location
    #   Specifies which file to use as input to the workflow step: either
    #   the output from the previous step, or the originally uploaded file
    #   for the workflow.
    #
    #   * To use the previous file as the input, enter `${previous.file}`.
    #     In this case, this workflow step uses the output file from the
    #     previous workflow step as input. This is the default value.
    #
    #   * To use the originally uploaded file location as input for this
    #     step, enter `${original.file}`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/TagStepDetails AWS API Documentation
    #
    class TagStepDetails < Struct.new(
      :name,
      :tags,
      :source_file_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_id
    #   The unique identifier for the connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/TestConnectionRequest AWS API Documentation
    #
    class TestConnectionRequest < Struct.new(
      :connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_id
    #   Returns the identifier of the connector object that you are testing.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Returns `OK` for successful test, or `ERROR` if the test fails.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Returns `Connection succeeded` if the test is successful. Or,
    #   returns a descriptive error message if the test fails. The following
    #   list provides troubleshooting details, depending on the error
    #   message that you receive.
    #
    #   * Verify that your secret name aligns with the one in Transfer Role
    #     permissions.
    #
    #   * Verify the server URL in the connector configuration , and verify
    #     that the login credentials work successfully outside of the
    #     connector.
    #
    #   * Verify that the secret exists and is formatted correctly.
    #
    #   * Verify that the trusted host key in the connector configuration
    #     matches the `ssh-keyscan` output.
    #   @return [String]
    #
    # @!attribute [rw] sftp_connection_details
    #   Structure that contains the SFTP connector host key.
    #   @return [Types::SftpConnectorConnectionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/TestConnectionResponse AWS API Documentation
    #
    class TestConnectionResponse < Struct.new(
      :connector_id,
      :status,
      :status_message,
      :sftp_connection_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   A system-assigned identifier for a specific server. That server's
    #   user authentication method is tested with a user name and password.
    #   @return [String]
    #
    # @!attribute [rw] server_protocol
    #   The type of file transfer protocol to be tested.
    #
    #   The available protocols are:
    #
    #   * Secure Shell (SSH) File Transfer Protocol (SFTP)
    #
    #   * File Transfer Protocol Secure (FTPS)
    #
    #   * File Transfer Protocol (FTP)
    #
    #   * Applicability Statement 2 (AS2)
    #   @return [String]
    #
    # @!attribute [rw] source_ip
    #   The source IP address of the account to be tested.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the account to be tested.
    #   @return [String]
    #
    # @!attribute [rw] user_password
    #   The password of the account to be tested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/TestIdentityProviderRequest AWS API Documentation
    #
    class TestIdentityProviderRequest < Struct.new(
      :server_id,
      :server_protocol,
      :source_ip,
      :user_name,
      :user_password)
      SENSITIVE = [:user_password]
      include Aws::Structure
    end

    # @!attribute [rw] response
    #   The response that is returned from your API Gateway or your Lambda
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The HTTP status code that is the response from your API Gateway or
    #   your Lambda function.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   A message that indicates whether the test was successful or not.
    #
    #   <note markdown="1"> If an empty string is returned, the most likely cause is that the
    #   authentication failed due to an incorrect username or password.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The endpoint of the service used to authenticate a user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/TestIdentityProviderResponse AWS API Documentation
    #
    class TestIdentityProviderResponse < Struct.new(
      :response,
      :status_code,
      :message,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] retry_after_seconds
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The value of the resource that will have the tag removed. An Amazon
    #   Resource Name (ARN) is an identifier for a specific Amazon Web
    #   Services resource, such as a server, user, or role.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   TagKeys are key-value pairs assigned to ARNs that can be used to
    #   group and search for resources by type. This metadata can be
    #   attached to resources for any purpose.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using the client.
    #
    #   A `HomeDirectory` example is `/bucket_name/home/mydirectory`.
    #
    #   <note markdown="1"> You can use the `HomeDirectory` parameter for `HomeDirectoryType`
    #   when it is set to either `PATH` or `LOGICAL`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) that you want your users'
    #   home directory to be when they log in to the server. If you set it
    #   to `PATH`, the user will see the absolute Amazon S3 bucket or Amazon
    #   EFS path as is in their file transfer protocol clients. If you set
    #   it to `LOGICAL`, you need to provide mappings in the
    #   `HomeDirectoryMappings` for how you want to make Amazon S3 or Amazon
    #   EFS paths visible to your users.
    #
    #   <note markdown="1"> If `HomeDirectoryType` is `LOGICAL`, you must provide mappings,
    #   using the `HomeDirectoryMappings` parameter. If, on the other hand,
    #   `HomeDirectoryType` is `PATH`, you provide an absolute path using
    #   the `HomeDirectory` parameter. You cannot have both `HomeDirectory`
    #   and `HomeDirectoryMappings` in your template.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 or Amazon EFS
    #   paths and keys should be visible to your user and how you want to
    #   make them visible. You must specify the `Entry` and `Target` pair,
    #   where `Entry` shows how the path is made visible and `Target` is the
    #   actual Amazon S3 or Amazon EFS path. If you only specify a target,
    #   it is displayed as is. You also must ensure that your Identity and
    #   Access Management (IAM) role provides access to paths in `Target`.
    #   This value can be set only when `HomeDirectoryType` is set to
    #   *LOGICAL*.
    #
    #   The following is an `Entry` and `Target` pair example.
    #
    #   `[ { "Entry": "/directory1", "Target":
    #   "/bucket_name/home/mydirectory" } ]`
    #
    #   In most cases, you can use this value instead of the session policy
    #   to lock down your user to the designated home directory
    #   ("`chroot`"). To do this, you can set `Entry` to `/` and set
    #   `Target` to the `HomeDirectory` parameter value.
    #
    #   The following is an `Entry` and `Target` pair example for `chroot`.
    #
    #   `[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]`
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    #
    # @!attribute [rw] policy
    #   A session policy for your user so that you can use the same Identity
    #   and Access Management (IAM) role across multiple users. This policy
    #   scopes down a user's access to portions of their Amazon S3 bucket.
    #   Variables that you can use inside this policy include
    #   `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and
    #   `${Transfer:HomeBucket}`.
    #
    #   <note markdown="1"> This policy applies only when the domain of `ServerId` is Amazon S3.
    #   Amazon EFS does not use session policies.
    #
    #    For session policies, Transfer Family stores the policy as a JSON
    #   blob, instead of the Amazon Resource Name (ARN) of the policy. You
    #   save the policy as a JSON blob and pass it in the `Policy` argument.
    #
    #    For an example of a session policy, see [Example session policy][1].
    #
    #    For more information, see [AssumeRole][2] in the *Amazon Web
    #   ServicesSecurity Token Service API Reference*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html
    #   [2]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html
    #   @return [String]
    #
    # @!attribute [rw] posix_profile
    #   The full POSIX identity, including user ID (`Uid`), group ID
    #   (`Gid`), and any secondary groups IDs (`SecondaryGids`), that
    #   controls your users' access to your Amazon EFS file systems. The
    #   POSIX permissions that are set on files and directories in your file
    #   system determine the level of access your users get when
    #   transferring files into and out of your Amazon EFS file systems.
    #   @return [Types::PosixProfile]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that controls your users' access to your Amazon S3
    #   bucket or Amazon EFS file system. The policies attached to this role
    #   determine the level of access that you want to provide your users
    #   when transferring files into and out of your Amazon S3 bucket or
    #   Amazon EFS file system. The IAM role should also contain a trust
    #   relationship that allows the server to access your resources when
    #   servicing your users' transfer requests.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server instance. This is
    #   the specific server that you added your user to.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   A unique identifier that is required to identify specific groups
    #   within your directory. The users of the group that you associate
    #   have access to your Amazon S3 or Amazon EFS resources over the
    #   enabled protocols using Transfer Family. If you know the group name,
    #   you can view the SID values by running the following command using
    #   Windows PowerShell.
    #
    #   `Get-ADGroup -Filter {samAccountName -like "YourGroupName*"}
    #   -Properties * | Select SamAccountName,ObjectSid`
    #
    #   In that command, replace *YourGroupName* with the name of your
    #   Active Directory group.
    #
    #   The regular expression used to validate this parameter is a string
    #   of characters consisting of uppercase and lowercase alphanumeric
    #   characters with no spaces. You can also include underscores or any
    #   of the following characters: =,.@:/-
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateAccessRequest AWS API Documentation
    #
    class UpdateAccessRequest < Struct.new(
      :home_directory,
      :home_directory_type,
      :home_directory_mappings,
      :policy,
      :posix_profile,
      :role,
      :server_id,
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   The identifier of the server that the user is attached to.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external identifier of the group whose users have access to your
    #   Amazon S3 or Amazon EFS resources over the enabled protocols using
    #   Amazon Web ServicesTransfer Family.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateAccessResponse AWS API Documentation
    #
    class UpdateAccessResponse < Struct.new(
      :server_id,
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   A unique identifier for the agreement. This identifier is returned
    #   when you create an agreement.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server instance. This is
    #   the specific server that the agreement uses.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   To replace the existing description, provide a short description for
    #   the agreement.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   You can update the status for the agreement, either activating an
    #   inactive agreement or the reverse.
    #   @return [String]
    #
    # @!attribute [rw] local_profile_id
    #   A unique identifier for the AS2 local profile.
    #
    #   To change the local profile identifier, provide a new value here.
    #   @return [String]
    #
    # @!attribute [rw] partner_profile_id
    #   A unique identifier for the partner profile. To change the partner
    #   profile identifier, provide a new value here.
    #   @return [String]
    #
    # @!attribute [rw] base_directory
    #   To change the landing directory (folder) for files that are
    #   transferred, provide the bucket folder that you want to use; for
    #   example, `/amzn-s3-demo-bucket/home/mydirectory `.
    #   @return [String]
    #
    # @!attribute [rw] access_role
    #   Connectors are used to send files using either the AS2 or SFTP
    #   protocol. For the access role, provide the Amazon Resource Name
    #   (ARN) of the Identity and Access Management role to use.
    #
    #   **For AS2 connectors**
    #
    #   With AS2, you can send files by calling `StartFileTransfer` and
    #   specifying the file paths in the request parameter, `SendFilePaths`.
    #   We use the file’s parent directory (for example, for
    #   `--send-file-paths /bucket/dir/file.txt`, parent directory is
    #   `/bucket/dir/`) to temporarily store a processed AS2 message file,
    #   store the MDN when we receive them from the partner, and write a
    #   final JSON file containing relevant metadata of the transmission.
    #   So, the `AccessRole` needs to provide read and write access to the
    #   parent directory of the file location used in the
    #   `StartFileTransfer` request. Additionally, you need to provide read
    #   and write access to the parent directory of the files that you
    #   intend to send with `StartFileTransfer`.
    #
    #   If you are using Basic authentication for your AS2 connector, the
    #   access role requires the `secretsmanager:GetSecretValue` permission
    #   for the secret. If the secret is encrypted using a customer-managed
    #   key instead of the Amazon Web Services managed key in Secrets
    #   Manager, then the role also needs the `kms:Decrypt` permission for
    #   that key.
    #
    #   **For SFTP connectors**
    #
    #   Make sure that the access role provides read and write access to the
    #   parent directory of the file location that's used in the
    #   `StartFileTransfer` request. Additionally, make sure that the role
    #   provides `secretsmanager:GetSecretValue` permission to Secrets
    #   Manager.
    #   @return [String]
    #
    # @!attribute [rw] preserve_filename
    #   Determines whether or not Transfer Family appends a unique string of
    #   characters to the end of the AS2 message payload filename when
    #   saving it.
    #
    #   * `ENABLED`: the filename provided by your trading parter is
    #     preserved when the file is saved.
    #
    #   * `DISABLED` (default value): when Transfer Family saves the file,
    #     the filename is adjusted, as described in [File names and
    #     locations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/send-as2-messages.html#file-names-as2
    #   @return [String]
    #
    # @!attribute [rw] enforce_message_signing
    #   Determines whether or not unsigned messages from your trading
    #   partners will be accepted.
    #
    #   * `ENABLED`: Transfer Family rejects unsigned messages from your
    #     trading partner.
    #
    #   * `DISABLED` (default value): Transfer Family accepts unsigned
    #     messages from your trading partner.
    #   @return [String]
    #
    # @!attribute [rw] custom_directories
    #   A `CustomDirectoriesType` structure. This structure specifies custom
    #   directories for storing various AS2 message files. You can specify
    #   directories for the following types of files.
    #
    #   * Failed files
    #
    #   * MDN files
    #
    #   * Payload files
    #
    #   * Status files
    #
    #   * Temporary files
    #   @return [Types::CustomDirectoriesType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateAgreementRequest AWS API Documentation
    #
    class UpdateAgreementRequest < Struct.new(
      :agreement_id,
      :server_id,
      :description,
      :status,
      :local_profile_id,
      :partner_profile_id,
      :base_directory,
      :access_role,
      :preserve_filename,
      :enforce_message_signing,
      :custom_directories)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agreement_id
    #   A unique identifier for the agreement. This identifier is returned
    #   when you create an agreement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateAgreementResponse AWS API Documentation
    #
    class UpdateAgreementResponse < Struct.new(
      :agreement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_id
    #   The identifier of the certificate object that you are updating.
    #   @return [String]
    #
    # @!attribute [rw] active_date
    #   An optional date that specifies when the certificate becomes active.
    #   If you do not specify a value, `ActiveDate` takes the same value as
    #   `NotBeforeDate`, which is specified by the CA.
    #   @return [Time]
    #
    # @!attribute [rw] inactive_date
    #   An optional date that specifies when the certificate becomes
    #   inactive. If you do not specify a value, `InactiveDate` takes the
    #   same value as `NotAfterDate`, which is specified by the CA.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A short description to help identify the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateCertificateRequest AWS API Documentation
    #
    class UpdateCertificateRequest < Struct.new(
      :certificate_id,
      :active_date,
      :inactive_date,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_id
    #   Returns the identifier of the certificate object that you are
    #   updating.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateCertificateResponse AWS API Documentation
    #
    class UpdateCertificateResponse < Struct.new(
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure for updating the egress configuration of an existing
    # connector. Allows modification of how traffic is routed from the
    # connector to the SFTP server, including VPC\_LATTICE settings.
    #
    # @note UpdateConnectorEgressConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] vpc_lattice
    #   VPC\_LATTICE configuration updates for the connector. Use this to
    #   modify the Resource Configuration ARN or port number for VPC-based
    #   connectivity.
    #   @return [Types::UpdateConnectorVpcLatticeEgressConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateConnectorEgressConfig AWS API Documentation
    #
    class UpdateConnectorEgressConfig < Struct.new(
      :vpc_lattice,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class VpcLattice < UpdateConnectorEgressConfig; end
      class Unknown < UpdateConnectorEgressConfig; end
    end

    # @!attribute [rw] connector_id
    #   The unique identifier for the connector.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of the partner's AS2 or SFTP endpoint.
    #
    #   When creating AS2 connectors or service-managed SFTP connectors
    #   (connectors without egress configuration), you must provide a URL to
    #   specify the remote server endpoint. For VPC Lattice type connectors,
    #   the URL must be null.
    #   @return [String]
    #
    # @!attribute [rw] as_2_config
    #   A structure that contains the parameters for an AS2 connector
    #   object.
    #   @return [Types::As2ConnectorConfig]
    #
    # @!attribute [rw] access_role
    #   Connectors are used to send files using either the AS2 or SFTP
    #   protocol. For the access role, provide the Amazon Resource Name
    #   (ARN) of the Identity and Access Management role to use.
    #
    #   **For AS2 connectors**
    #
    #   With AS2, you can send files by calling `StartFileTransfer` and
    #   specifying the file paths in the request parameter, `SendFilePaths`.
    #   We use the file’s parent directory (for example, for
    #   `--send-file-paths /bucket/dir/file.txt`, parent directory is
    #   `/bucket/dir/`) to temporarily store a processed AS2 message file,
    #   store the MDN when we receive them from the partner, and write a
    #   final JSON file containing relevant metadata of the transmission.
    #   So, the `AccessRole` needs to provide read and write access to the
    #   parent directory of the file location used in the
    #   `StartFileTransfer` request. Additionally, you need to provide read
    #   and write access to the parent directory of the files that you
    #   intend to send with `StartFileTransfer`.
    #
    #   If you are using Basic authentication for your AS2 connector, the
    #   access role requires the `secretsmanager:GetSecretValue` permission
    #   for the secret. If the secret is encrypted using a customer-managed
    #   key instead of the Amazon Web Services managed key in Secrets
    #   Manager, then the role also needs the `kms:Decrypt` permission for
    #   that key.
    #
    #   **For SFTP connectors**
    #
    #   Make sure that the access role provides read and write access to the
    #   parent directory of the file location that's used in the
    #   `StartFileTransfer` request. Additionally, make sure that the role
    #   provides `secretsmanager:GetSecretValue` permission to Secrets
    #   Manager.
    #   @return [String]
    #
    # @!attribute [rw] logging_role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that allows a connector to turn on CloudWatch logging for
    #   Amazon S3 events. When set, you can view connector activity in your
    #   CloudWatch logs.
    #   @return [String]
    #
    # @!attribute [rw] sftp_config
    #   A structure that contains the parameters for an SFTP connector
    #   object.
    #   @return [Types::SftpConnectorConfig]
    #
    # @!attribute [rw] security_policy_name
    #   Specifies the name of the security policy for the connector.
    #   @return [String]
    #
    # @!attribute [rw] egress_config
    #   Updates the egress configuration for the connector, allowing you to
    #   modify how traffic is routed from the connector to the SFTP server.
    #   Changes to VPC configuration may require connector restart.
    #   @return [Types::UpdateConnectorEgressConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateConnectorRequest AWS API Documentation
    #
    class UpdateConnectorRequest < Struct.new(
      :connector_id,
      :url,
      :as_2_config,
      :access_role,
      :logging_role,
      :sftp_config,
      :security_policy_name,
      :egress_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_id
    #   Returns the identifier of the connector object that you are
    #   updating.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateConnectorResponse AWS API Documentation
    #
    class UpdateConnectorResponse < Struct.new(
      :connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # VPC\_LATTICE egress configuration updates for modifying how the
    # connector routes traffic through customer VPCs. Changes to these
    # settings may require connector restart to take effect.
    #
    # @!attribute [rw] resource_configuration_arn
    #   Updated ARN of the VPC\_LATTICE Resource Configuration. Use this to
    #   change the target SFTP server location or modify the network path
    #   through the customer's VPC infrastructure.
    #   @return [String]
    #
    # @!attribute [rw] port_number
    #   Updated port number for SFTP connections through VPC\_LATTICE.
    #   Change this if the target SFTP server port has been modified or if
    #   connecting to a different server endpoint.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateConnectorVpcLatticeEgressConfig AWS API Documentation
    #
    class UpdateConnectorVpcLatticeEgressConfig < Struct.new(
      :resource_configuration_arn,
      :port_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   The identifier of the server that contains the host key that you are
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] host_key_id
    #   The identifier of the host key that you are updating.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An updated description for the host key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateHostKeyRequest AWS API Documentation
    #
    class UpdateHostKeyRequest < Struct.new(
      :server_id,
      :host_key_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   Returns the server identifier for the server that contains the
    #   updated host key.
    #   @return [String]
    #
    # @!attribute [rw] host_key_id
    #   Returns the host key identifier for the updated host key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateHostKeyResponse AWS API Documentation
    #
    class UpdateHostKeyResponse < Struct.new(
      :server_id,
      :host_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The identifier of the profile object that you are updating.
    #   @return [String]
    #
    # @!attribute [rw] certificate_ids
    #   An array of identifiers for the imported certificates. You use this
    #   identifier for working with profiles and partner profiles.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateProfileRequest AWS API Documentation
    #
    class UpdateProfileRequest < Struct.new(
      :profile_id,
      :certificate_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   Returns the identifier for the profile that's being updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateProfileResponse AWS API Documentation
    #
    class UpdateProfileResponse < Struct.new(
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   The Amazon Resource Name (ARN) of the Amazon Web ServicesCertificate
    #   Manager (ACM) certificate. Required when `Protocols` is set to
    #   `FTPS`.
    #
    #   To request a new public certificate, see [Request a public
    #   certificate][1] in the <i> Amazon Web ServicesCertificate Manager
    #   User Guide</i>.
    #
    #   To import an existing certificate into ACM, see [Importing
    #   certificates into ACM][2] in the <i> Amazon Web ServicesCertificate
    #   Manager User Guide</i>.
    #
    #   To request a private certificate to use FTPS through private IP
    #   addresses, see [Request a private certificate][3] in the <i> Amazon
    #   Web ServicesCertificate Manager User Guide</i>.
    #
    #   Certificates with the following cryptographic algorithms and key
    #   sizes are supported:
    #
    #   * 2048-bit RSA (RSA\_2048)
    #
    #   * 4096-bit RSA (RSA\_4096)
    #
    #   * Elliptic Prime Curve 256 bit (EC\_prime256v1)
    #
    #   * Elliptic Prime Curve 384 bit (EC\_secp384r1)
    #
    #   * Elliptic Prime Curve 521 bit (EC\_secp521r1)
    #
    #   <note markdown="1"> The certificate must be a valid SSL/TLS X.509 version 3 certificate
    #   with FQDN or IP address specified and information about the issuer.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html
    #   [2]: https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html
    #   [3]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html
    #   @return [String]
    #
    # @!attribute [rw] protocol_details
    #   The protocol settings that are configured for your server.
    #
    #   <note markdown="1"> Avoid placing Network Load Balancers (NLBs) or NAT gateways in front
    #   of Transfer Family servers, as this increases costs and can cause
    #   performance issues, including reduced connection limits for FTPS.
    #   For more details, see [ Avoid placing NLBs and NATs in front of
    #   Transfer Family][1].
    #
    #    </note>
    #
    #   * To indicate passive mode (for FTP and FTPS protocols), use the
    #     `PassiveIp` parameter. Enter a single dotted-quad IPv4 address,
    #     such as the external IP address of a firewall, router, or load
    #     balancer.
    #
    #   * To ignore the error that is generated when the client attempts to
    #     use the `SETSTAT` command on a file that you are uploading to an
    #     Amazon S3 bucket, use the `SetStatOption` parameter. To have the
    #     Transfer Family server ignore the `SETSTAT` command and upload
    #     files without needing to make any changes to your SFTP client, set
    #     the value to `ENABLE_NO_OP`. If you set the `SetStatOption`
    #     parameter to `ENABLE_NO_OP`, Transfer Family generates a log entry
    #     to Amazon CloudWatch Logs, so that you can determine when the
    #     client is making a `SETSTAT` call.
    #
    #   * To determine whether your Transfer Family server resumes recent,
    #     negotiated sessions through a unique session ID, use the
    #     `TlsSessionResumptionMode` parameter.
    #
    #   * `As2Transports` indicates the transport method for the AS2
    #     messages. Currently, only HTTP is supported.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/infrastructure-security.html#nlb-considerations
    #   @return [Types::ProtocolDetails]
    #
    # @!attribute [rw] endpoint_details
    #   The virtual private cloud (VPC) endpoint settings that are
    #   configured for your server. When you host your endpoint within your
    #   VPC, you can make your endpoint accessible only to resources within
    #   your VPC, or you can attach Elastic IP addresses and make your
    #   endpoint accessible to clients over the internet. Your VPC's
    #   default security groups are automatically assigned to your endpoint.
    #   @return [Types::EndpointDetails]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint that you want your server to use. You can
    #   choose to make your server's endpoint publicly accessible (PUBLIC)
    #   or host it inside your VPC. With an endpoint that is hosted in a
    #   VPC, you can restrict access to your server and resources only
    #   within your VPC or choose to make it internet facing by attaching
    #   Elastic IP addresses directly to it.
    #
    #   <note markdown="1"> After May 19, 2021, you won't be able to create a server using
    #   `EndpointType=VPC_ENDPOINT` in your Amazon Web Services account if
    #   your account hasn't already done so before May 19, 2021. If you
    #   have already created servers with `EndpointType=VPC_ENDPOINT` in
    #   your Amazon Web Services account on or before May 19, 2021, you will
    #   not be affected. After this date, use `EndpointType`=`VPC`.
    #
    #    For more information, see
    #   https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.
    #
    #    It is recommended that you use `VPC` as the `EndpointType`. With
    #   this endpoint type, you have the option to directly associate up to
    #   three Elastic IPv4 addresses (BYO IP included) with your server's
    #   endpoint and use VPC security groups to restrict traffic by the
    #   client's public IP address. This is not possible with
    #   `EndpointType` set to `VPC_ENDPOINT`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] host_key
    #   The RSA, ECDSA, or ED25519 private key to use for your SFTP-enabled
    #   server. You can add multiple host keys, in case you want to rotate
    #   keys, or have a set of active keys that use different algorithms.
    #
    #   Use the following command to generate an RSA 2048 bit key with no
    #   passphrase:
    #
    #   `ssh-keygen -t rsa -b 2048 -N "" -m PEM -f my-new-server-key`.
    #
    #   Use a minimum value of 2048 for the `-b` option. You can create a
    #   stronger key by using 3072 or 4096.
    #
    #   Use the following command to generate an ECDSA 256 bit key with no
    #   passphrase:
    #
    #   `ssh-keygen -t ecdsa -b 256 -N "" -m PEM -f my-new-server-key`.
    #
    #   Valid values for the `-b` option for ECDSA are 256, 384, and 521.
    #
    #   Use the following command to generate an ED25519 key with no
    #   passphrase:
    #
    #   `ssh-keygen -t ed25519 -N "" -f my-new-server-key`.
    #
    #   For all of these commands, you can replace *my-new-server-key* with
    #   a string of your choice.
    #
    #   If you aren't planning to migrate existing users from an existing
    #   SFTP-enabled server to a new server, don't update the host key.
    #   Accidentally changing a server's host key can be disruptive.
    #
    #   For more information, see [Manage host keys for your SFTP-enabled
    #   server][1] in the *Transfer Family User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_details
    #   An array containing all of the information required to call a
    #   customer's authentication API method.
    #   @return [Types::IdentityProviderDetails]
    #
    # @!attribute [rw] logging_role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that allows a server to turn on Amazon CloudWatch logging
    #   for Amazon S3 or Amazon EFS events. When set, you can view user
    #   activity in your CloudWatch logs.
    #   @return [String]
    #
    # @!attribute [rw] post_authentication_login_banner
    #   Specifies a string to display when users connect to a server. This
    #   string is displayed after the user authenticates.
    #
    #   <note markdown="1"> The SFTP protocol does not support post-authentication display
    #   banners.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] pre_authentication_login_banner
    #   Specifies a string to display when users connect to a server. This
    #   string is displayed before the user authenticates. For example, the
    #   following banner displays details about using the system:
    #
    #   `This system is for the use of authorized users only. Individuals
    #   using this computer system without authority, or in excess of their
    #   authority, are subject to having all of their activities on this
    #   system monitored and recorded by system personnel.`
    #   @return [String]
    #
    # @!attribute [rw] protocols
    #   Specifies the file transfer protocol or protocols over which your
    #   file transfer protocol client can connect to your server's
    #   endpoint. The available protocols are:
    #
    #   * `SFTP` (Secure Shell (SSH) File Transfer Protocol): File transfer
    #     over SSH
    #
    #   * `FTPS` (File Transfer Protocol Secure): File transfer with TLS
    #     encryption
    #
    #   * `FTP` (File Transfer Protocol): Unencrypted file transfer
    #
    #   * `AS2` (Applicability Statement 2): used for transporting
    #     structured business-to-business data
    #
    #   <note markdown="1"> * If you select `FTPS`, you must choose a certificate stored in
    #     Certificate Manager (ACM) which is used to identify your server
    #     when clients connect to it over FTPS.
    #
    #   * If `Protocol` includes either `FTP` or `FTPS`, then the
    #     `EndpointType` must be `VPC` and the `IdentityProviderType` must
    #     be either `AWS_DIRECTORY_SERVICE`, `AWS_LAMBDA`, or `API_GATEWAY`.
    #
    #   * If `Protocol` includes `FTP`, then `AddressAllocationIds` cannot
    #     be associated.
    #
    #   * If `Protocol` is set only to `SFTP`, the `EndpointType` can be set
    #     to `PUBLIC` and the `IdentityProviderType` can be set any of the
    #     supported identity types: `SERVICE_MANAGED`,
    #     `AWS_DIRECTORY_SERVICE`, `AWS_LAMBDA`, or `API_GATEWAY`.
    #
    #   * If `Protocol` includes `AS2`, then the `EndpointType` must be
    #     `VPC`, and domain must be Amazon S3.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_policy_name
    #   Specifies the name of the security policy for the server.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server instance that the
    #   Transfer Family user is assigned to.
    #   @return [String]
    #
    # @!attribute [rw] workflow_details
    #   Specifies the workflow ID for the workflow to assign and the
    #   execution role that's used for executing the workflow.
    #
    #   In addition to a workflow to execute when a file is uploaded
    #   completely, `WorkflowDetails` can also contain a workflow ID (and
    #   execution role) for a workflow to execute on partial upload. A
    #   partial upload occurs when the server session disconnects while the
    #   file is still being uploaded.
    #
    #   To remove an associated workflow from a server, you can provide an
    #   empty `OnUpload` object, as in the following example.
    #
    #   `aws transfer update-server --server-id s-01234567890abcdef
    #   --workflow-details '{"OnUpload":[]}'`
    #   @return [Types::WorkflowDetails]
    #
    # @!attribute [rw] structured_log_destinations
    #   Specifies the log groups to which your server logs are sent.
    #
    #   To specify a log group, you must provide the ARN for an existing log
    #   group. In this case, the format of the log group is as follows:
    #
    #   `arn:aws:logs:region-name:amazon-account-id:log-group:log-group-name:*`
    #
    #   For example,
    #   `arn:aws:logs:us-east-1:111122223333:log-group:mytestgroup:*`
    #
    #   If you have previously specified a log group for a server, you can
    #   clear it, and in effect turn off structured logging, by providing an
    #   empty value for this parameter in an `update-server` call. For
    #   example:
    #
    #   `update-server --server-id s-1234567890abcdef0
    #   --structured-log-destinations`
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_storage_options
    #   Specifies whether or not performance for your Amazon S3 directories
    #   is optimized.
    #
    #   * If using the console, this is enabled by default.
    #
    #   * If using the API or CLI, this is disabled by default.
    #
    #   By default, home directory mappings have a `TYPE` of `DIRECTORY`. If
    #   you enable this option, you would then need to explicitly set the
    #   `HomeDirectoryMapEntry` `Type` to `FILE` if you want a mapping to
    #   have a file target.
    #   @return [Types::S3StorageOptions]
    #
    # @!attribute [rw] ip_address_type
    #   Specifies whether to use IPv4 only, or to use dual-stack (IPv4 and
    #   IPv6) for your Transfer Family endpoint. The default value is
    #   `IPV4`.
    #
    #   The `IpAddressType` parameter has the following limitations:
    #
    #    * It cannot be changed while the server is online. You must stop
    #   the
    #     server before modifying this parameter.
    #
    #   * It cannot be updated to `DUALSTACK` if the server has
    #     `AddressAllocationIds` specified.
    #
    #   <note markdown="1"> When using `DUALSTACK` as the `IpAddressType`, you cannot set the
    #   `AddressAllocationIds` parameter for the [EndpointDetails][1] for
    #   the server.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/APIReference/API_EndpointDetails.html
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_type
    #   The mode of authentication for a server. The default value is
    #   `SERVICE_MANAGED`, which allows you to store and access user
    #   credentials within the Transfer Family service.
    #
    #   Use `AWS_DIRECTORY_SERVICE` to provide access to Active Directory
    #   groups in Directory Service for Microsoft Active Directory or
    #   Microsoft Active Directory in your on-premises environment or in
    #   Amazon Web Services using AD Connector. This option also requires
    #   you to provide a Directory ID by using the `IdentityProviderDetails`
    #   parameter.
    #
    #   Use the `API_GATEWAY` value to integrate with an identity provider
    #   of your choosing. The `API_GATEWAY` setting requires you to provide
    #   an Amazon API Gateway endpoint URL to call for authentication by
    #   using the `IdentityProviderDetails` parameter.
    #
    #   Use the `AWS_LAMBDA` value to directly use an Lambda function as
    #   your identity provider. If you choose this value, you must specify
    #   the ARN for the Lambda function in the `Function` parameter for the
    #   `IdentityProviderDetails` data type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateServerRequest AWS API Documentation
    #
    class UpdateServerRequest < Struct.new(
      :certificate,
      :protocol_details,
      :endpoint_details,
      :endpoint_type,
      :host_key,
      :identity_provider_details,
      :logging_role,
      :post_authentication_login_banner,
      :pre_authentication_login_banner,
      :protocols,
      :security_policy_name,
      :server_id,
      :workflow_details,
      :structured_log_destinations,
      :s3_storage_options,
      :ip_address_type,
      :identity_provider_type)
      SENSITIVE = [:host_key]
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server that the Transfer
    #   Family user is assigned to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateServerResponse AWS API Documentation
    #
    class UpdateServerResponse < Struct.new(
      :server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using the client.
    #
    #   A `HomeDirectory` example is `/bucket_name/home/mydirectory`.
    #
    #   <note markdown="1"> You can use the `HomeDirectory` parameter for `HomeDirectoryType`
    #   when it is set to either `PATH` or `LOGICAL`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) that you want your users'
    #   home directory to be when they log in to the server. If you set it
    #   to `PATH`, the user will see the absolute Amazon S3 bucket or Amazon
    #   EFS path as is in their file transfer protocol clients. If you set
    #   it to `LOGICAL`, you need to provide mappings in the
    #   `HomeDirectoryMappings` for how you want to make Amazon S3 or Amazon
    #   EFS paths visible to your users.
    #
    #   <note markdown="1"> If `HomeDirectoryType` is `LOGICAL`, you must provide mappings,
    #   using the `HomeDirectoryMappings` parameter. If, on the other hand,
    #   `HomeDirectoryType` is `PATH`, you provide an absolute path using
    #   the `HomeDirectory` parameter. You cannot have both `HomeDirectory`
    #   and `HomeDirectoryMappings` in your template.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 or Amazon EFS
    #   paths and keys should be visible to your user and how you want to
    #   make them visible. You must specify the `Entry` and `Target` pair,
    #   where `Entry` shows how the path is made visible and `Target` is the
    #   actual Amazon S3 or Amazon EFS path. If you only specify a target,
    #   it is displayed as is. You also must ensure that your Identity and
    #   Access Management (IAM) role provides access to paths in `Target`.
    #   This value can be set only when `HomeDirectoryType` is set to
    #   *LOGICAL*.
    #
    #   The following is an `Entry` and `Target` pair example.
    #
    #   `[ { "Entry": "/directory1", "Target":
    #   "/bucket_name/home/mydirectory" } ]`
    #
    #   In most cases, you can use this value instead of the session policy
    #   to lock down your user to the designated home directory
    #   ("`chroot`"). To do this, you can set `Entry` to '/' and set
    #   `Target` to the HomeDirectory parameter value.
    #
    #   The following is an `Entry` and `Target` pair example for `chroot`.
    #
    #   `[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]`
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    #
    # @!attribute [rw] policy
    #   A session policy for your user so that you can use the same Identity
    #   and Access Management (IAM) role across multiple users. This policy
    #   scopes down a user's access to portions of their Amazon S3 bucket.
    #   Variables that you can use inside this policy include
    #   `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and
    #   `${Transfer:HomeBucket}`.
    #
    #   <note markdown="1"> This policy applies only when the domain of `ServerId` is Amazon S3.
    #   Amazon EFS does not use session policies.
    #
    #    For session policies, Transfer Family stores the policy as a JSON
    #   blob, instead of the Amazon Resource Name (ARN) of the policy. You
    #   save the policy as a JSON blob and pass it in the `Policy` argument.
    #
    #    For an example of a session policy, see [Creating a session
    #   policy][1].
    #
    #    For more information, see [AssumeRole][2] in the *Amazon Web
    #   Services Security Token Service API Reference*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/session-policy
    #   [2]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html
    #   @return [String]
    #
    # @!attribute [rw] posix_profile
    #   Specifies the full POSIX identity, including user ID (`Uid`), group
    #   ID (`Gid`), and any secondary groups IDs (`SecondaryGids`), that
    #   controls your users' access to your Amazon Elastic File Systems
    #   (Amazon EFS). The POSIX permissions that are set on files and
    #   directories in your file system determines the level of access your
    #   users get when transferring files into and out of your Amazon EFS
    #   file systems.
    #   @return [Types::PosixProfile]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that controls your users' access to your Amazon S3
    #   bucket or Amazon EFS file system. The policies attached to this role
    #   determine the level of access that you want to provide your users
    #   when transferring files into and out of your Amazon S3 bucket or
    #   Amazon EFS file system. The IAM role should also contain a trust
    #   relationship that allows the server to access your resources when
    #   servicing your users' transfer requests.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a Transfer Family server
    #   instance that the user is assigned to.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   A unique string that identifies a user and is associated with a
    #   server as specified by the `ServerId`. This user name must be a
    #   minimum of 3 and a maximum of 100 characters long. The following are
    #   valid characters: a-z, A-Z, 0-9, underscore '\_', hyphen '-',
    #   period '.', and at sign '@'. The user name can't start with a
    #   hyphen, period, or at sign.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :home_directory,
      :home_directory_type,
      :home_directory_mappings,
      :policy,
      :posix_profile,
      :role,
      :server_id,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # `UpdateUserResponse` returns the user name and identifier for the
    # request to update a user's properties.
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a Transfer Family server
    #   instance that the account is assigned to.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The unique identifier for a user that is assigned to a server
    #   instance that was specified in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateUserResponse AWS API Documentation
    #
    class UpdateUserResponse < Struct.new(
      :server_id,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] web_app_id
    #   Provide the identifier of the web app that you are updating.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Provide an updated title.
    #   @return [String]
    #
    # @!attribute [rw] logo_file
    #   Specify logo file data string (in base64 encoding).
    #   @return [String]
    #
    # @!attribute [rw] favicon_file
    #   Specify an icon file data string (in base64 encoding).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateWebAppCustomizationRequest AWS API Documentation
    #
    class UpdateWebAppCustomizationRequest < Struct.new(
      :web_app_id,
      :title,
      :logo_file,
      :favicon_file)
      SENSITIVE = [:logo_file, :favicon_file]
      include Aws::Structure
    end

    # @!attribute [rw] web_app_id
    #   Returns the unique identifier for the web app being updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateWebAppCustomizationResponse AWS API Documentation
    #
    class UpdateWebAppCustomizationResponse < Struct.new(
      :web_app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes the values to use for the IAM Identity
    # Center settings when you update a web app.
    #
    # @!attribute [rw] role
    #   The IAM role used to access IAM Identity Center.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateWebAppIdentityCenterConfig AWS API Documentation
    #
    class UpdateWebAppIdentityCenterConfig < Struct.new(
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # A union that contains the `UpdateWebAppIdentityCenterConfig` object.
    #
    # @note UpdateWebAppIdentityProviderDetails is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] identity_center_config
    #   A structure that describes the values to use for the IAM Identity
    #   Center settings when you update a web app.
    #   @return [Types::UpdateWebAppIdentityCenterConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateWebAppIdentityProviderDetails AWS API Documentation
    #
    class UpdateWebAppIdentityProviderDetails < Struct.new(
      :identity_center_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IdentityCenterConfig < UpdateWebAppIdentityProviderDetails; end
      class Unknown < UpdateWebAppIdentityProviderDetails; end
    end

    # @!attribute [rw] web_app_id
    #   Provide the identifier of the web app that you are updating.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_details
    #   Provide updated identity provider values in a
    #   `WebAppIdentityProviderDetails` object.
    #   @return [Types::UpdateWebAppIdentityProviderDetails]
    #
    # @!attribute [rw] access_endpoint
    #   The `AccessEndpoint` is the URL that you provide to your users for
    #   them to interact with the Transfer Family web app. You can specify a
    #   custom URL or use the default value.
    #   @return [String]
    #
    # @!attribute [rw] web_app_units
    #   A union that contains the value for number of concurrent connections
    #   or the user sessions on your web app.
    #   @return [Types::WebAppUnits]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateWebAppRequest AWS API Documentation
    #
    class UpdateWebAppRequest < Struct.new(
      :web_app_id,
      :identity_provider_details,
      :access_endpoint,
      :web_app_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] web_app_id
    #   Returns the unique identifier for the web app being updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateWebAppResponse AWS API Documentation
    #
    class UpdateWebAppResponse < Struct.new(
      :web_app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the user name, server ID, and session ID for a workflow.
    #
    # @!attribute [rw] user_name
    #   A unique string that identifies a Transfer Family user associated
    #   with a server.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   The system-assigned unique identifier for a Transfer server
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The system-assigned unique identifier for a session that corresponds
    #   to the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UserDetails AWS API Documentation
    #
    class UserDetails < Struct.new(
      :user_name,
      :server_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A union that contains the `IdentityCenterConfig` object.
    #
    # @note WebAppIdentityProviderDetails is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] identity_center_config
    #   A structure that describes the values to use for the IAM Identity
    #   Center settings when you create a web app.
    #   @return [Types::IdentityCenterConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/WebAppIdentityProviderDetails AWS API Documentation
    #
    class WebAppIdentityProviderDetails < Struct.new(
      :identity_center_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IdentityCenterConfig < WebAppIdentityProviderDetails; end
      class Unknown < WebAppIdentityProviderDetails; end
    end

    # Contains an integer value that represents the value for number of
    # concurrent connections or the user sessions on your web app.
    #
    # @note WebAppUnits is a union - when making an API calls you must set exactly one of the members.
    #
    # @note WebAppUnits is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of WebAppUnits corresponding to the set member.
    #
    # @!attribute [rw] provisioned
    #   An integer that represents the number of units for your desired
    #   number of concurrent connections, or the number of user sessions on
    #   your web app at the same time.
    #
    #   Each increment allows an additional 250 concurrent sessions: a value
    #   of `1` sets the number of concurrent sessions to 250; `2` sets a
    #   value of 500, and so on.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/WebAppUnits AWS API Documentation
    #
    class WebAppUnits < Struct.new(
      :provisioned,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Provisioned < WebAppUnits; end
      class Unknown < WebAppUnits; end
    end

    # Specifies the workflow ID for the workflow to assign and the execution
    # role that's used for executing the workflow.
    #
    # In addition to a workflow to execute when a file is uploaded
    # completely, `WorkflowDetails` can also contain a workflow ID (and
    # execution role) for a workflow to execute on partial upload. A partial
    # upload occurs when the server session disconnects while the file is
    # still being uploaded.
    #
    # @!attribute [rw] workflow_id
    #   A unique identifier for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] execution_role
    #   Includes the necessary permissions for S3, EFS, and Lambda
    #   operations that Transfer can assume, so that all workflow steps can
    #   operate on the required resources
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/WorkflowDetail AWS API Documentation
    #
    class WorkflowDetail < Struct.new(
      :workflow_id,
      :execution_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the `WorkflowDetail` data type. It is used by actions
    # that trigger a workflow to begin execution.
    #
    # @!attribute [rw] on_upload
    #   A trigger that starts a workflow: the workflow begins to execute
    #   after a file is uploaded.
    #
    #   To remove an associated workflow from a server, you can provide an
    #   empty `OnUpload` object, as in the following example.
    #
    #   `aws transfer update-server --server-id s-01234567890abcdef
    #   --workflow-details '{"OnUpload":[]}'`
    #
    #   <note markdown="1"> `OnUpload` can contain a maximum of one `WorkflowDetail` object.
    #
    #    </note>
    #   @return [Array<Types::WorkflowDetail>]
    #
    # @!attribute [rw] on_partial_upload
    #   A trigger that starts a workflow if a file is only partially
    #   uploaded. You can attach a workflow to a server that executes
    #   whenever there is a partial upload.
    #
    #   A *partial upload* occurs when a file is open when the session
    #   disconnects.
    #
    #   <note markdown="1"> `OnPartialUpload` can contain a maximum of one `WorkflowDetail`
    #   object.
    #
    #    </note>
    #   @return [Array<Types::WorkflowDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/WorkflowDetails AWS API Documentation
    #
    class WorkflowDetails < Struct.new(
      :on_upload,
      :on_partial_upload)
      SENSITIVE = []
      include Aws::Structure
    end

    # The basic building block of a workflow.
    #
    # @!attribute [rw] type
    #   Currently, the following step types are supported.
    #
    #   * <b> <code>COPY</code> </b> - Copy the file to another location.
    #
    #   * <b> <code>CUSTOM</code> </b> - Perform a custom step with an
    #     Lambda function target.
    #
    #   * <b> <code>DECRYPT</code> </b> - Decrypt a file that was encrypted
    #     before it was uploaded.
    #
    #   * <b> <code>DELETE</code> </b> - Delete the file.
    #
    #   * <b> <code>TAG</code> </b> - Add a tag to the file.
    #   @return [String]
    #
    # @!attribute [rw] copy_step_details
    #   Details for a step that performs a file copy.
    #
    #   Consists of the following values:
    #
    #   * A description
    #
    #   * An Amazon S3 location for the destination of the file copy.
    #
    #   * A flag that indicates whether to overwrite an existing file of the
    #     same name. The default is `FALSE`.
    #   @return [Types::CopyStepDetails]
    #
    # @!attribute [rw] custom_step_details
    #   Details for a step that invokes an Lambda function.
    #
    #   Consists of the Lambda function's name, target, and timeout (in
    #   seconds).
    #   @return [Types::CustomStepDetails]
    #
    # @!attribute [rw] delete_step_details
    #   Details for a step that deletes the file.
    #   @return [Types::DeleteStepDetails]
    #
    # @!attribute [rw] tag_step_details
    #   Details for a step that creates one or more tags.
    #
    #   You specify one or more tags. Each tag contains a key-value pair.
    #   @return [Types::TagStepDetails]
    #
    # @!attribute [rw] decrypt_step_details
    #   Details for a step that decrypts an encrypted file.
    #
    #   Consists of the following values:
    #
    #   * A descriptive name
    #
    #   * An Amazon S3 or Amazon Elastic File System (Amazon EFS) location
    #     for the source file to decrypt.
    #
    #   * An S3 or Amazon EFS location for the destination of the file
    #     decryption.
    #
    #   * A flag that indicates whether to overwrite an existing file of the
    #     same name. The default is `FALSE`.
    #
    #   * The type of encryption that's used. Currently, only PGP
    #     encryption is supported.
    #   @return [Types::DecryptStepDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/WorkflowStep AWS API Documentation
    #
    class WorkflowStep < Struct.new(
      :type,
      :copy_step_details,
      :custom_step_details,
      :delete_step_details,
      :tag_step_details,
      :decrypt_step_details)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

