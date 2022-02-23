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

    # Each step type has its own `StepDetails` structure.
    #
    # @note When making an API call, you may pass CopyStepDetails
    #   data as a hash:
    #
    #       {
    #         name: "WorkflowStepName",
    #         destination_file_location: {
    #           s3_file_location: {
    #             bucket: "S3Bucket",
    #             key: "S3Key",
    #           },
    #           efs_file_location: {
    #             file_system_id: "EfsFileSystemId",
    #             path: "EfsPath",
    #           },
    #         },
    #         overwrite_existing: "TRUE", # accepts TRUE, FALSE
    #         source_file_location: "SourceFileLocation",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the step, used as an identifier.
    #   @return [String]
    #
    # @!attribute [rw] destination_file_location
    #   Specifies the location for the file being copied. Only applicable
    #   for Copy type workflow steps. Use `$\{Transfer:username\}` in this
    #   field to parametrize the destination prefix by username.
    #   @return [Types::InputFileLocation]
    #
    # @!attribute [rw] overwrite_existing
    #   A flag that indicates whether or not to overwrite an existing file
    #   of the same name. The default is `FALSE`.
    #   @return [String]
    #
    # @!attribute [rw] source_file_location
    #   Specifies which file to use as input to the workflow step: either
    #   the output from the previous step, or the originally uploaded file
    #   for the workflow.
    #
    #   * Enter `$\{previous.file\}` to use the previous file as the input.
    #     In this case, this workflow step uses the output file from the
    #     previous workflow step as input. This is the default value.
    #
    #   * Enter `$\{original.file\}` to use the originally-uploaded file
    #     location as input for this step.
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

    # @note When making an API call, you may pass CreateAccessRequest
    #   data as a hash:
    #
    #       {
    #         home_directory: "HomeDirectory",
    #         home_directory_type: "PATH", # accepts PATH, LOGICAL
    #         home_directory_mappings: [
    #           {
    #             entry: "MapEntry", # required
    #             target: "MapTarget", # required
    #           },
    #         ],
    #         policy: "Policy",
    #         posix_profile: {
    #           uid: 1, # required
    #           gid: 1, # required
    #           secondary_gids: [1],
    #         },
    #         role: "Role", # required
    #         server_id: "ServerId", # required
    #         external_id: "ExternalId", # required
    #       }
    #
    # @!attribute [rw] home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using the client.
    #
    #   A `HomeDirectory` example is `/bucket_name/home/mydirectory`.
    #   @return [String]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) you want your users' home
    #   directory to be when they log into the server. If you set it to
    #   `PATH`, the user will see the absolute Amazon S3 bucket or EFS paths
    #   as is in their file transfer protocol clients. If you set it
    #   `LOGICAL`, you need to provide mappings in the
    #   `HomeDirectoryMappings` for how you want to make Amazon S3 or EFS
    #   paths visible to your users.
    #   @return [String]
    #
    # @!attribute [rw] home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 or Amazon EFS
    #   paths and keys should be visible to your user and how you want to
    #   make them visible. You must specify the `Entry` and `Target` pair,
    #   where `Entry` shows how the path is made visible and `Target` is the
    #   actual Amazon S3 or Amazon EFS path. If you only specify a target,
    #   it is displayed as is. You also must ensure that your Amazon Web
    #   Services Identity and Access Management (IAM) role provides access
    #   to paths in `Target`. This value can only be set when
    #   `HomeDirectoryType` is set to *LOGICAL*.
    #
    #   The following is an `Entry` and `Target` pair example.
    #
    #   `[ \{ "Entry": "/directory1", "Target":
    #   "/bucket_name/home/mydirectory" \} ]`
    #
    #   In most cases, you can use this value instead of the session policy
    #   to lock down your user to the designated home directory
    #   ("`chroot`"). To do this, you can set `Entry` to `/` and set
    #   `Target` to the `HomeDirectory` parameter value.
    #
    #   The following is an `Entry` and `Target` pair example for `chroot`.
    #
    #   `[ \{ "Entry:": "/", "Target": "/bucket_name/home/mydirectory" \} ]`
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    #
    # @!attribute [rw] policy
    #   A session policy for your user so that you can use the same IAM role
    #   across multiple users. This policy scopes down user access to
    #   portions of their Amazon S3 bucket. Variables that you can use
    #   inside this policy include `$\{Transfer:UserName\}`,
    #   `$\{Transfer:HomeDirectory\}`, and `$\{Transfer:HomeBucket\}`.
    #
    #   <note markdown="1"> This only applies when the domain of `ServerId` is S3. EFS does not
    #   use session policies.
    #
    #    For session policies, Amazon Web Services Transfer Family stores the
    #   policy as a JSON blob, instead of the Amazon Resource Name (ARN) of
    #   the policy. You save the policy as a JSON blob and pass it in the
    #   `Policy` argument.
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
    #   The full POSIX identity, including user ID (`Uid`), group ID
    #   (`Gid`), and any secondary groups IDs (`SecondaryGids`), that
    #   controls your users' access to your Amazon EFS file systems. The
    #   POSIX permissions that are set on files and directories in your file
    #   system determine the level of access your users get when
    #   transferring files into and out of your Amazon EFS file systems.
    #   @return [Types::PosixProfile]
    #
    # @!attribute [rw] role
    #   Specifies the Amazon Resource Name (ARN) of the IAM role that
    #   controls your users' access to your Amazon S3 bucket or EFS file
    #   system. The policies attached to this role determine the level of
    #   access that you want to provide your users when transferring files
    #   into and out of your Amazon S3 bucket or EFS file system. The IAM
    #   role should also contain a trust relationship that allows the server
    #   to access your resources when servicing your users' transfer
    #   requests.
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
    #   enabled protocols using Amazon Web Services Transfer Family. If you
    #   know the group name, you can view the SID values by running the
    #   following command using Windows PowerShell.
    #
    #   `Get-ADGroup -Filter \{samAccountName -like "YourGroupName*"\}
    #   -Properties * | Select SamAccountName,ObjectSid`
    #
    #   In that command, replace *YourGroupName* with the name of your
    #   Active Directory group.
    #
    #   The regex used to validate this parameter is a string of characters
    #   consisting of uppercase and lowercase alphanumeric characters with
    #   no spaces. You can also include underscores or any of the following
    #   characters: =,.@:/-
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
    #   The ID of the server that the user is attached to.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID of the group whose users have access to your Amazon
    #   S3 or Amazon EFS resources over the enabled protocols using Amazon
    #   Web Services Transfer Family.
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

    # @note When making an API call, you may pass CreateServerRequest
    #   data as a hash:
    #
    #       {
    #         certificate: "Certificate",
    #         domain: "S3", # accepts S3, EFS
    #         endpoint_details: {
    #           address_allocation_ids: ["AddressAllocationId"],
    #           subnet_ids: ["SubnetId"],
    #           vpc_endpoint_id: "VpcEndpointId",
    #           vpc_id: "VpcId",
    #           security_group_ids: ["SecurityGroupId"],
    #         },
    #         endpoint_type: "PUBLIC", # accepts PUBLIC, VPC, VPC_ENDPOINT
    #         host_key: "HostKey",
    #         identity_provider_details: {
    #           url: "Url",
    #           invocation_role: "Role",
    #           directory_id: "DirectoryId",
    #           function: "Function",
    #         },
    #         identity_provider_type: "SERVICE_MANAGED", # accepts SERVICE_MANAGED, API_GATEWAY, AWS_DIRECTORY_SERVICE, AWS_LAMBDA
    #         logging_role: "Role",
    #         post_authentication_login_banner: "PostAuthenticationLoginBanner",
    #         pre_authentication_login_banner: "PreAuthenticationLoginBanner",
    #         protocols: ["SFTP"], # accepts SFTP, FTP, FTPS
    #         protocol_details: {
    #           passive_ip: "PassiveIp",
    #           tls_session_resumption_mode: "DISABLED", # accepts DISABLED, ENABLED, ENFORCED
    #         },
    #         security_policy_name: "SecurityPolicyName",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         workflow_details: {
    #           on_upload: [ # required
    #             {
    #               workflow_id: "WorkflowId", # required
    #               execution_role: "Role", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] certificate
    #   The Amazon Resource Name (ARN) of the Amazon Web Services
    #   Certificate Manager (ACM) certificate. Required when `Protocols` is
    #   set to `FTPS`.
    #
    #   To request a new public certificate, see [Request a public
    #   certificate][1] in the <i> Amazon Web Services Certificate Manager
    #   User Guide</i>.
    #
    #   To import an existing certificate into ACM, see [Importing
    #   certificates into ACM][2] in the <i> Amazon Web Services Certificate
    #   Manager User Guide</i>.
    #
    #   To request a private certificate to use FTPS through private IP
    #   addresses, see [Request a private certificate][3] in the <i> Amazon
    #   Web Services Certificate Manager User Guide</i>.
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
    #   VPC, you can make it accessible only to resources within your VPC,
    #   or you can attach Elastic IP addresses and make it accessible to
    #   clients over the internet. Your VPC's default security groups are
    #   automatically assigned to your endpoint.
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
    #   The RSA private key as generated by the `ssh-keygen -N "" -m PEM -f
    #   my-new-server-key` command.
    #
    #   If you aren't planning to migrate existing users from an existing
    #   SFTP-enabled server to a new server, don't update the host key.
    #   Accidentally changing a server's host key can be disruptive.
    #
    #   For more information, see [Change the host key for your SFTP-enabled
    #   server][1] in the *Amazon Web Services Transfer Family User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_details
    #   Required when `IdentityProviderType` is set to
    #   `AWS_DIRECTORY_SERVICE` or `API_GATEWAY`. Accepts an array
    #   containing all of the information required to use a directory in
    #   `AWS_DIRECTORY_SERVICE` or invoke a customer-supplied authentication
    #   API, including the API Gateway URL. Not required when
    #   `IdentityProviderType` is set to `SERVICE_MANAGED`.
    #   @return [Types::IdentityProviderDetails]
    #
    # @!attribute [rw] identity_provider_type
    #   Specifies the mode of authentication for a server. The default value
    #   is `SERVICE_MANAGED`, which allows you to store and access user
    #   credentials within the Amazon Web Services Transfer Family service.
    #
    #   Use `AWS_DIRECTORY_SERVICE` to provide access to Active Directory
    #   groups in Amazon Web Services Managed Active Directory or Microsoft
    #   Active Directory in your on-premises environment or in Amazon Web
    #   Services using AD Connectors. This option also requires you to
    #   provide a Directory ID using the `IdentityProviderDetails`
    #   parameter.
    #
    #   Use the `API_GATEWAY` value to integrate with an identity provider
    #   of your choosing. The `API_GATEWAY` setting requires you to provide
    #   an API Gateway endpoint URL to call for authentication using the
    #   `IdentityProviderDetails` parameter.
    #
    #   Use the `AWS_LAMBDA` value to directly use a Lambda function as your
    #   identity provider. If you choose this value, you must specify the
    #   ARN for the lambda function in the `Function` parameter for the
    #   `IdentityProviderDetails` data type.
    #   @return [String]
    #
    # @!attribute [rw] logging_role
    #   Specifies the Amazon Resource Name (ARN) of the Amazon Web Services
    #   Identity and Access Management (IAM) role that allows a server to
    #   turn on Amazon CloudWatch logging for Amazon S3 or Amazon EFS
    #   events. When set, user activity can be viewed in your CloudWatch
    #   logs.
    #   @return [String]
    #
    # @!attribute [rw] post_authentication_login_banner
    #   @return [String]
    #
    # @!attribute [rw] pre_authentication_login_banner
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
    #   <note markdown="1"> If you select `FTPS`, you must choose a certificate stored in Amazon
    #   Web Services Certificate Manager (ACM) which is used to identify
    #   your server when clients connect to it over FTPS.
    #
    #    If `Protocol` includes either `FTP` or `FTPS`, then the
    #   `EndpointType` must be `VPC` and the `IdentityProviderType` must be
    #   `AWS_DIRECTORY_SERVICE` or `API_GATEWAY`.
    #
    #    If `Protocol` includes `FTP`, then `AddressAllocationIds` cannot be
    #   associated.
    #
    #    If `Protocol` is set only to `SFTP`, the `EndpointType` can be set
    #   to `PUBLIC` and the `IdentityProviderType` can be set to
    #   `SERVICE_MANAGED`.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] protocol_details
    #   The protocol settings that are configured for your server.
    #
    #   Use the `PassiveIp` parameter to indicate passive mode (for FTP and
    #   FTPS protocols). Enter a single dotted-quad IPv4 address, such as
    #   the external IP address of a firewall, router, or load balancer.
    #
    #   Use the `TlsSessionResumptionMode` parameter to determine whether or
    #   not your Transfer server resumes recent, negotiated sessions through
    #   a unique session ID.
    #   @return [Types::ProtocolDetails]
    #
    # @!attribute [rw] security_policy_name
    #   Specifies the name of the security policy that is attached to the
    #   server.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for servers.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] workflow_details
    #   Specifies the workflow ID for the workflow to assign and the
    #   execution role used for executing the workflow.
    #   @return [Types::WorkflowDetails]
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
      :workflow_details)
      SENSITIVE = [:host_key]
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   The service-assigned ID of the server that is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateServerResponse AWS API Documentation
    #
    class CreateServerResponse < Struct.new(
      :server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateUserRequest
    #   data as a hash:
    #
    #       {
    #         home_directory: "HomeDirectory",
    #         home_directory_type: "PATH", # accepts PATH, LOGICAL
    #         home_directory_mappings: [
    #           {
    #             entry: "MapEntry", # required
    #             target: "MapTarget", # required
    #           },
    #         ],
    #         policy: "Policy",
    #         posix_profile: {
    #           uid: 1, # required
    #           gid: 1, # required
    #           secondary_gids: [1],
    #         },
    #         role: "Role", # required
    #         server_id: "ServerId", # required
    #         ssh_public_key_body: "SshPublicKeyBody",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         user_name: "UserName", # required
    #       }
    #
    # @!attribute [rw] home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using the client.
    #
    #   A `HomeDirectory` example is `/bucket_name/home/mydirectory`.
    #   @return [String]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) you want your users' home
    #   directory to be when they log into the server. If you set it to
    #   `PATH`, the user will see the absolute Amazon S3 bucket or EFS paths
    #   as is in their file transfer protocol clients. If you set it
    #   `LOGICAL`, you need to provide mappings in the
    #   `HomeDirectoryMappings` for how you want to make Amazon S3 or EFS
    #   paths visible to your users.
    #   @return [String]
    #
    # @!attribute [rw] home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 or Amazon EFS
    #   paths and keys should be visible to your user and how you want to
    #   make them visible. You must specify the `Entry` and `Target` pair,
    #   where `Entry` shows how the path is made visible and `Target` is the
    #   actual Amazon S3 or Amazon EFS path. If you only specify a target,
    #   it is displayed as is. You also must ensure that your Amazon Web
    #   Services Identity and Access Management (IAM) role provides access
    #   to paths in `Target`. This value can only be set when
    #   `HomeDirectoryType` is set to *LOGICAL*.
    #
    #   The following is an `Entry` and `Target` pair example.
    #
    #   `[ \{ "Entry": "/directory1", "Target":
    #   "/bucket_name/home/mydirectory" \} ]`
    #
    #   In most cases, you can use this value instead of the session policy
    #   to lock your user down to the designated home directory
    #   ("`chroot`"). To do this, you can set `Entry` to `/` and set
    #   `Target` to the HomeDirectory parameter value.
    #
    #   The following is an `Entry` and `Target` pair example for `chroot`.
    #
    #   `[ \{ "Entry:": "/", "Target": "/bucket_name/home/mydirectory" \} ]`
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    #
    # @!attribute [rw] policy
    #   A session policy for your user so that you can use the same IAM role
    #   across multiple users. This policy scopes down user access to
    #   portions of their Amazon S3 bucket. Variables that you can use
    #   inside this policy include `$\{Transfer:UserName\}`,
    #   `$\{Transfer:HomeDirectory\}`, and `$\{Transfer:HomeBucket\}`.
    #
    #   <note markdown="1"> This only applies when the domain of `ServerId` is S3. EFS does not
    #   use session policies.
    #
    #    For session policies, Amazon Web Services Transfer Family stores the
    #   policy as a JSON blob, instead of the Amazon Resource Name (ARN) of
    #   the policy. You save the policy as a JSON blob and pass it in the
    #   `Policy` argument.
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
    #   Specifies the Amazon Resource Name (ARN) of the IAM role that
    #   controls your users' access to your Amazon S3 bucket or EFS file
    #   system. The policies attached to this role determine the level of
    #   access that you want to provide your users when transferring files
    #   into and out of your Amazon S3 bucket or EFS file system. The IAM
    #   role should also contain a trust relationship that allows the server
    #   to access your resources when servicing your users' transfer
    #   requests.
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
    #   <note markdown="1"> Currently, Transfer Family does not accept elliptical curve keys
    #   (keys beginning with `ecdsa`).
    #
    #    </note>
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
    #   The ID of the server that the user is attached to.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   A unique string that identifies a user account associated with a
    #   server.
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

    # @note When making an API call, you may pass CreateWorkflowRequest
    #   data as a hash:
    #
    #       {
    #         description: "WorkflowDescription",
    #         steps: [ # required
    #           {
    #             type: "COPY", # accepts COPY, CUSTOM, TAG, DELETE
    #             copy_step_details: {
    #               name: "WorkflowStepName",
    #               destination_file_location: {
    #                 s3_file_location: {
    #                   bucket: "S3Bucket",
    #                   key: "S3Key",
    #                 },
    #                 efs_file_location: {
    #                   file_system_id: "EfsFileSystemId",
    #                   path: "EfsPath",
    #                 },
    #               },
    #               overwrite_existing: "TRUE", # accepts TRUE, FALSE
    #               source_file_location: "SourceFileLocation",
    #             },
    #             custom_step_details: {
    #               name: "WorkflowStepName",
    #               target: "CustomStepTarget",
    #               timeout_seconds: 1,
    #               source_file_location: "SourceFileLocation",
    #             },
    #             delete_step_details: {
    #               name: "WorkflowStepName",
    #               source_file_location: "SourceFileLocation",
    #             },
    #             tag_step_details: {
    #               name: "WorkflowStepName",
    #               tags: [
    #                 {
    #                   key: "S3TagKey", # required
    #                   value: "S3TagValue", # required
    #                 },
    #               ],
    #               source_file_location: "SourceFileLocation",
    #             },
    #           },
    #         ],
    #         on_exception_steps: [
    #           {
    #             type: "COPY", # accepts COPY, CUSTOM, TAG, DELETE
    #             copy_step_details: {
    #               name: "WorkflowStepName",
    #               destination_file_location: {
    #                 s3_file_location: {
    #                   bucket: "S3Bucket",
    #                   key: "S3Key",
    #                 },
    #                 efs_file_location: {
    #                   file_system_id: "EfsFileSystemId",
    #                   path: "EfsPath",
    #                 },
    #               },
    #               overwrite_existing: "TRUE", # accepts TRUE, FALSE
    #               source_file_location: "SourceFileLocation",
    #             },
    #             custom_step_details: {
    #               name: "WorkflowStepName",
    #               target: "CustomStepTarget",
    #               timeout_seconds: 1,
    #               source_file_location: "SourceFileLocation",
    #             },
    #             delete_step_details: {
    #               name: "WorkflowStepName",
    #               source_file_location: "SourceFileLocation",
    #             },
    #             tag_step_details: {
    #               name: "WorkflowStepName",
    #               tags: [
    #                 {
    #                   key: "S3TagKey", # required
    #                   value: "S3TagValue", # required
    #                 },
    #               ],
    #               source_file_location: "SourceFileLocation",
    #             },
    #           },
    #         ],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
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
    #   * *Copy*\: copy the file to another location
    #
    #   * *Custom*\: custom step with a lambda target
    #
    #   * *Delete*\: delete the file
    #
    #   * *Tag*\: add a tag to the file
    #
    #   <note markdown="1"> Currently, copying and tagging are supported only on S3.
    #
    #    </note>
    #
    #   For file location, you specify either the S3 bucket and key, or the
    #   EFS filesystem ID and path.
    #   @return [Array<Types::WorkflowStep>]
    #
    # @!attribute [rw] on_exception_steps
    #   Specifies the steps (actions) to take if errors are encountered
    #   during execution of the workflow.
    #
    #   <note markdown="1"> For custom steps, the lambda function needs to send `FAILURE` to the
    #   call back API to kick off the exception steps. Additionally, if the
    #   lambda does not send `SUCCESS` before it times out, the exception
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

    # Each step type has its own `StepDetails` structure.
    #
    # @note When making an API call, you may pass CustomStepDetails
    #   data as a hash:
    #
    #       {
    #         name: "WorkflowStepName",
    #         target: "CustomStepTarget",
    #         timeout_seconds: 1,
    #         source_file_location: "SourceFileLocation",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the step, used as an identifier.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The ARN for the lambda function that is being called.
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
    #   * Enter `$\{previous.file\}` to use the previous file as the input.
    #     In this case, this workflow step uses the output file from the
    #     previous workflow step as input. This is the default value.
    #
    #   * Enter `$\{original.file\}` to use the originally-uploaded file
    #     location as input for this step.
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

    # @note When making an API call, you may pass DeleteAccessRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #         external_id: "ExternalId", # required
    #       }
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server that has this user
    #   assigned.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   A unique identifier that is required to identify specific groups
    #   within your directory. The users of the group that you associate
    #   have access to your Amazon S3 or Amazon EFS resources over the
    #   enabled protocols using Amazon Web Services Transfer Family. If you
    #   know the group name, you can view the SID values by running the
    #   following command using Windows PowerShell.
    #
    #   `Get-ADGroup -Filter \{samAccountName -like "YourGroupName*"\}
    #   -Properties * | Select SamAccountName,ObjectSid`
    #
    #   In that command, replace *YourGroupName* with the name of your
    #   Active Directory group.
    #
    #   The regex used to validate this parameter is a string of characters
    #   consisting of uppercase and lowercase alphanumeric characters with
    #   no spaces. You can also include underscores or any of the following
    #   characters: =,.@:/-
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

    # @note When making an API call, you may pass DeleteServerRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteSshPublicKeyRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #         ssh_public_key_id: "SshPublicKeyId", # required
    #         user_name: "UserName", # required
    #       }
    #
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
    # @note When making an API call, you may pass DeleteStepDetails
    #   data as a hash:
    #
    #       {
    #         name: "WorkflowStepName",
    #         source_file_location: "SourceFileLocation",
    #       }
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
    #   * Enter `$\{previous.file\}` to use the previous file as the input.
    #     In this case, this workflow step uses the output file from the
    #     previous workflow step as input. This is the default value.
    #
    #   * Enter `$\{original.file\}` to use the originally-uploaded file
    #     location as input for this step.
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

    # @note When making an API call, you may pass DeleteUserRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #         user_name: "UserName", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteWorkflowRequest
    #   data as a hash:
    #
    #       {
    #         workflow_id: "WorkflowId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DescribeAccessRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #         external_id: "ExternalId", # required
    #       }
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server that has this
    #   access assigned.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   A unique identifier that is required to identify specific groups
    #   within your directory. The users of the group that you associate
    #   have access to your Amazon S3 or Amazon EFS resources over the
    #   enabled protocols using Amazon Web Services Transfer Family. If you
    #   know the group name, you can view the SID values by running the
    #   following command using Windows PowerShell.
    #
    #   `Get-ADGroup -Filter \{samAccountName -like "YourGroupName*"\}
    #   -Properties * | Select SamAccountName,ObjectSid`
    #
    #   In that command, replace *YourGroupName* with the name of your
    #   Active Directory group.
    #
    #   The regex used to validate this parameter is a string of characters
    #   consisting of uppercase and lowercase alphanumeric characters with
    #   no spaces. You can also include underscores or any of the following
    #   characters: =,.@:/-
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
    #   The external ID of the server that the access is attached to.
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

    # @note When making an API call, you may pass DescribeExecutionRequest
    #   data as a hash:
    #
    #       {
    #         execution_id: "ExecutionId", # required
    #         workflow_id: "WorkflowId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DescribeSecurityPolicyRequest
    #   data as a hash:
    #
    #       {
    #         security_policy_name: "SecurityPolicyName", # required
    #       }
    #
    # @!attribute [rw] security_policy_name
    #   Specifies the name of the security policy that is attached to the
    #   server.
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

    # @note When making an API call, you may pass DescribeServerRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DescribeUserRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #         user_name: "UserName", # required
    #       }
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server that has this user
    #   assigned.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user assigned to one or more servers. User names are
    #   part of the sign-in credentials to use the Amazon Web Services
    #   Transfer Family service and perform file transfer tasks.
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
    #   An array containing the properties of the user account for the
    #   `ServerID` value that you specified.
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

    # @note When making an API call, you may pass DescribeWorkflowRequest
    #   data as a hash:
    #
    #       {
    #         workflow_id: "WorkflowId", # required
    #       }
    #
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
    #   @return [String]
    #
    # @!attribute [rw] home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 or Amazon EFS
    #   paths and keys should be visible to your user and how you want to
    #   make them visible. You must specify the `Entry` and `Target` pair,
    #   where `Entry` shows how the path is made visible and `Target` is the
    #   actual Amazon S3 or Amazon EFS path. If you only specify a target,
    #   it is displayed as is. You also must ensure that your Amazon Web
    #   Services Identity and Access Management (IAM) role provides access
    #   to paths in `Target`. This value can only be set when
    #   `HomeDirectoryType` is set to *LOGICAL*.
    #
    #   In most cases, you can use this value instead of the session policy
    #   to lock down the associated access to the designated home directory
    #   ("`chroot`"). To do this, you can set `Entry` to '/' and set
    #   `Target` to the `HomeDirectory` parameter value.
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) you want your users' home
    #   directory to be when they log into the server. If you set it to
    #   `PATH`, the user will see the absolute Amazon S3 bucket or EFS paths
    #   as is in their file transfer protocol clients. If you set it
    #   `LOGICAL`, you need to provide mappings in the
    #   `HomeDirectoryMappings` for how you want to make Amazon S3 or EFS
    #   paths visible to your users.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   A session policy for your user so that you can use the same IAM role
    #   across multiple users. This policy scopes down user access to
    #   portions of their Amazon S3 bucket. Variables that you can use
    #   inside this policy include `$\{Transfer:UserName\}`,
    #   `$\{Transfer:HomeDirectory\}`, and `$\{Transfer:HomeBucket\}`.
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
    #   Specifies the Amazon Resource Name (ARN) of the IAM role that
    #   controls your users' access to your Amazon S3 bucket or EFS file
    #   system. The policies attached to this role determine the level of
    #   access that you want to provide your users when transferring files
    #   into and out of your Amazon S3 bucket or EFS file system. The IAM
    #   role should also contain a trust relationship that allows the server
    #   to access your resources when servicing your users' transfer
    #   requests.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   A unique identifier that is required to identify specific groups
    #   within your directory. The users of the group that you associate
    #   have access to your Amazon S3 or Amazon EFS resources over the
    #   enabled protocols using Amazon Web Services Transfer Family. If you
    #   know the group name, you can view the SID values by running the
    #   following command using Windows PowerShell.
    #
    #   `Get-ADGroup -Filter \{samAccountName -like "YourGroupName*"\}
    #   -Properties * | Select SamAccountName,ObjectSid`
    #
    #   In that command, replace *YourGroupName* with the name of your
    #   Active Directory group.
    #
    #   The regex used to validate this parameter is a string of characters
    #   consisting of uppercase and lowercase alphanumeric characters with
    #   no spaces. You can also include underscores or any of the following
    #   characters: =,.@:/-
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
    #   A container object for the session details associated with a
    #   workflow.
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

    # Describes the properties of a security policy that was specified. For
    # more information about security policies, see [Working with security
    # policies][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html
    #
    # @!attribute [rw] fips
    #   Specifies whether this policy enables Federal Information Processing
    #   Standards (FIPS).
    #   @return [Boolean]
    #
    # @!attribute [rw] security_policy_name
    #   Specifies the name of the security policy that is attached to the
    #   server.
    #   @return [String]
    #
    # @!attribute [rw] ssh_ciphers
    #   Specifies the enabled Secure Shell (SSH) cipher encryption
    #   algorithms in the security policy that is attached to the server.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ssh_kexs
    #   Specifies the enabled SSH key exchange (KEX) encryption algorithms
    #   in the security policy that is attached to the server.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ssh_macs
    #   Specifies the enabled SSH message authentication code (MAC)
    #   encryption algorithms in the security policy that is attached to the
    #   server.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tls_ciphers
    #   Specifies the enabled Transport Layer Security (TLS) cipher
    #   encryption algorithms in the security policy that is attached to the
    #   server.
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
      :tls_ciphers)
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
    #   Use the `PassiveIp` parameter to indicate passive mode. Enter a
    #   single dotted-quad IPv4 address, such as the external IP address of
    #   a firewall, router, or load balancer.
    #   @return [Types::ProtocolDetails]
    #
    # @!attribute [rw] domain
    #   Specifies the domain of the storage system that is used for file
    #   transfers.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_details
    #   The virtual private cloud (VPC) endpoint settings that are
    #   configured for your server. When you host your endpoint within your
    #   VPC, you can make it accessible only to resources within your VPC,
    #   or you can attach Elastic IP addresses and make it accessible to
    #   clients over the internet. Your VPC's default security groups are
    #   automatically assigned to your endpoint.
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
    #   Specifies the mode of authentication for a server. The default value
    #   is `SERVICE_MANAGED`, which allows you to store and access user
    #   credentials within the Amazon Web Services Transfer Family service.
    #
    #   Use `AWS_DIRECTORY_SERVICE` to provide access to Active Directory
    #   groups in Amazon Web Services Managed Active Directory or Microsoft
    #   Active Directory in your on-premises environment or in Amazon Web
    #   Services using AD Connectors. This option also requires you to
    #   provide a Directory ID using the `IdentityProviderDetails`
    #   parameter.
    #
    #   Use the `API_GATEWAY` value to integrate with an identity provider
    #   of your choosing. The `API_GATEWAY` setting requires you to provide
    #   an API Gateway endpoint URL to call for authentication using the
    #   `IdentityProviderDetails` parameter.
    #
    #   Use the `AWS_LAMBDA` value to directly use a Lambda function as your
    #   identity provider. If you choose this value, you must specify the
    #   ARN for the lambda function in the `Function` parameter for the
    #   `IdentityProviderDetails` data type.
    #   @return [String]
    #
    # @!attribute [rw] logging_role
    #   Specifies the Amazon Resource Name (ARN) of the Amazon Web Services
    #   Identity and Access Management (IAM) role that allows a server to
    #   turn on Amazon CloudWatch logging for Amazon S3 or Amazon EFS
    #   events. When set, user activity can be viewed in your CloudWatch
    #   logs.
    #   @return [String]
    #
    # @!attribute [rw] post_authentication_login_banner
    #   @return [String]
    #
    # @!attribute [rw] pre_authentication_login_banner
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
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_policy_name
    #   Specifies the name of the security policy that is attached to the
    #   server.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   Specifies the unique system-assigned identifier for a server that
    #   you instantiate.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Specifies the condition of a server for the server that was
    #   described. A value of `ONLINE` indicates that the server can accept
    #   jobs and transfer files. A `State` value of `OFFLINE` means that the
    #   server cannot perform file transfer operations.
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
    #   execution role used for executing the workflow.
    #   @return [Types::WorkflowDetails]
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
      :workflow_details)
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
    #   @return [String]
    #
    # @!attribute [rw] home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 or Amazon EFS
    #   paths and keys should be visible to your user and how you want to
    #   make them visible. You must specify the `Entry` and `Target` pair,
    #   where `Entry` shows how the path is made visible and `Target` is the
    #   actual Amazon S3 or Amazon EFS path. If you only specify a target,
    #   it is displayed as is. You also must ensure that your Amazon Web
    #   Services Identity and Access Management (IAM) role provides access
    #   to paths in `Target`. This value can only be set when
    #   `HomeDirectoryType` is set to *LOGICAL*.
    #
    #   In most cases, you can use this value instead of the session policy
    #   to lock your user down to the designated home directory
    #   ("`chroot`"). To do this, you can set `Entry` to '/' and set
    #   `Target` to the HomeDirectory parameter value.
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) you want your users' home
    #   directory to be when they log into the server. If you set it to
    #   `PATH`, the user will see the absolute Amazon S3 bucket or EFS paths
    #   as is in their file transfer protocol clients. If you set it
    #   `LOGICAL`, you need to provide mappings in the
    #   `HomeDirectoryMappings` for how you want to make Amazon S3 or EFS
    #   paths visible to your users.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   A session policy for your user so that you can use the same IAM role
    #   across multiple users. This policy scopes down user access to
    #   portions of their Amazon S3 bucket. Variables that you can use
    #   inside this policy include `$\{Transfer:UserName\}`,
    #   `$\{Transfer:HomeDirectory\}`, and `$\{Transfer:HomeBucket\}`.
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
    #   Specifies the Amazon Resource Name (ARN) of the IAM role that
    #   controls your users' access to your Amazon S3 bucket or EFS file
    #   system. The policies attached to this role determine the level of
    #   access that you want to provide your users when transferring files
    #   into and out of your Amazon S3 bucket or EFS file system. The IAM
    #   role should also contain a trust relationship that allows the server
    #   to access your resources when servicing your users' transfer
    #   requests.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_keys
    #   Specifies the public key portion of the Secure Shell (SSH) keys
    #   stored for the described user.
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

    # Reserved for future use.
    #
    # @note When making an API call, you may pass EfsFileLocation
    #   data as a hash:
    #
    #       {
    #         file_system_id: "EfsFileSystemId",
    #         path: "EfsPath",
    #       }
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system, assigned by Amazon EFS.
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
    # `EndpointType=VPC_ENDPOINT` in your Amazon Web Servicesaccount if your
    # account hasn't already done so before May 19, 2021. If you have
    # already created servers with `EndpointType=VPC_ENDPOINT` in your
    # Amazon Web Servicesaccount on or before May 19, 2021, you will not be
    # affected. After this date, use `EndpointType`=`VPC`.
    #
    #  For more information, see
    # https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.
    #
    #  </note>
    #
    # @note When making an API call, you may pass EndpointDetails
    #   data as a hash:
    #
    #       {
    #         address_allocation_ids: ["AddressAllocationId"],
    #         subnet_ids: ["SubnetId"],
    #         vpc_endpoint_id: "VpcEndpointId",
    #         vpc_id: "VpcId",
    #         security_group_ids: ["SecurityGroupId"],
    #       }
    #
    # @!attribute [rw] address_allocation_ids
    #   A list of address allocation IDs that are required to attach an
    #   Elastic IP address to your server's endpoint.
    #
    #   <note markdown="1"> This property can only be set when `EndpointType` is set to `VPC`
    #   and it is only valid in the `UpdateServer` API.
    #
    #    </note>
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
    #   The ID of the VPC endpoint.
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
    #   The VPC ID of the VPC in which a server's endpoint will be hosted.
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
    #   <note markdown="1"> This property can only be set when `EndpointType` is set to `VPC`.
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
    #   Specifies the error type: currently, the only valid value is
    #   `PERMISSION_DENIED`, which occurs if your policy does not contain
    #   the correct permissions to complete one or more of the steps in the
    #   workflow.
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
    #   * *Copy*\: copy the file to another location
    #
    #   * *Custom*\: custom step with a lambda target
    #
    #   * *Delete*\: delete the file
    #
    #   * *Tag*\: add a tag to the file
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The values for the key/value pair applied as a tag to the file. Only
    #   applicable if the step type is `TAG`.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Specifies the details for an error, if it occurred during execution
    #   of the specified workfow step.
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
    #   Etag, and so forth.
    #   @return [Types::S3FileLocation]
    #
    # @!attribute [rw] efs_file_location
    #   Specifies the Amazon EFS ID and the path for the file being used.
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
    # `[ \{ "Entry:": "/", "Target": "/bucket_name/home/mydirectory" \} ]`
    #
    # @note When making an API call, you may pass HomeDirectoryMapEntry
    #   data as a hash:
    #
    #       {
    #         entry: "MapEntry", # required
    #         target: "MapTarget", # required
    #       }
    #
    # @!attribute [rw] entry
    #   Represents an entry for `HomeDirectoryMappings`.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   Represents the map target that is used in a `HomeDirectorymapEntry`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/HomeDirectoryMapEntry AWS API Documentation
    #
    class HomeDirectoryMapEntry < Struct.new(
      :entry,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information related to the type of user authentication that is
    # in use for a file transfer protocol-enabled server's users. A server
    # can have only one method of authentication.
    #
    # @note When making an API call, you may pass IdentityProviderDetails
    #   data as a hash:
    #
    #       {
    #         url: "Url",
    #         invocation_role: "Role",
    #         directory_id: "DirectoryId",
    #         function: "Function",
    #       }
    #
    # @!attribute [rw] url
    #   Provides the location of the service endpoint used to authenticate
    #   users.
    #   @return [String]
    #
    # @!attribute [rw] invocation_role
    #   Provides the type of `InvocationRole` used to authenticate the user
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The identifier of the Amazon Web Services Directory Service
    #   directory that you want to stop sharing.
    #   @return [String]
    #
    # @!attribute [rw] function
    #   The ARN for a lambda function to use for the Identity provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/IdentityProviderDetails AWS API Documentation
    #
    class IdentityProviderDetails < Struct.new(
      :url,
      :invocation_role,
      :directory_id,
      :function)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportSshPublicKeyRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #         ssh_public_key_body: "SshPublicKeyBody", # required
    #         user_name: "UserName", # required
    #       }
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_body
    #   The public key portion of an SSH key pair.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user account that is assigned to one or more
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

    # Specifies the location for the file being copied. Only applicable for
    # the Copy type of workflow steps.
    #
    # @note When making an API call, you may pass InputFileLocation
    #   data as a hash:
    #
    #       {
    #         s3_file_location: {
    #           bucket: "S3Bucket",
    #           key: "S3Key",
    #         },
    #         efs_file_location: {
    #           file_system_id: "EfsFileSystemId",
    #           path: "EfsPath",
    #         },
    #       }
    #
    # @!attribute [rw] s3_file_location
    #   Specifies the details for the S3 file being copied.
    #   @return [Types::S3InputFileLocation]
    #
    # @!attribute [rw] efs_file_location
    #   Reserved for future use.
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

    # This exception is thrown when an error occurs in the Amazon Web
    # ServicesTransfer Family service.
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

    # @note When making an API call, you may pass ListAccessesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         server_id: "ServerId", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of access SIDs to return.
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

    # @note When making an API call, you may pass ListExecutionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         workflow_id: "WorkflowId", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   Specifies the aximum number of executions to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   `ListExecutions` returns the `NextToken` parameter in the output.
    #   You can then pass the `NextToken` parameter in a subsequent command
    #   to continue listing additional executions.
    #
    #   This is useful for pagination, for instance. If you have 100
    #   executions for a workflow, you might only want to list first 10. If
    #   so, callthe API by specifing the `max-results`\:
    #
    #   `aws transfer list-executions --max-results 10`
    #
    #   This returns details for the first 10 executions, as well as the
    #   pointer (`NextToken`) to the eleventh execution. You can now call
    #   the API again, suppling the `NextToken` value you received:
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
    #   Returns the details for each execution.
    #
    #   * **NextToken**\: returned from a call to several APIs, you can use
    #     pass it to a subsequent command to continue listing additional
    #     executions.
    #
    #   * **StartTime**\: timestamp indicating when the execution began.
    #
    #   * **Executions**\: details of the execution, including the execution
    #     ID, initial file location, and Service metadata.
    #
    #   * **Status**\: one of the following values: `IN_PROGRESS`,
    #     `COMPLETED`, `EXCEPTION`, `HANDLING_EXEPTION`.
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

    # @note When making an API call, you may pass ListSecurityPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
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

    # @note When making an API call, you may pass ListServersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
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

    # @note When making an API call, you may pass ListUsersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         server_id: "ServerId", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   Specifies the number of users to return as a response to the
    #   `ListUsers` request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When you can get additional results from the `ListUsers` call, a
    #   `NextToken` parameter is returned in the output. You can then pass
    #   in a subsequent command to the `NextToken` parameter to continue
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
    #   Returns the user accounts and their properties for the `ServerId`
    #   value that you specify.
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

    # @note When making an API call, you may pass ListWorkflowsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of workflows to return.
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
    #   @return [String]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) you want your users' home
    #   directory to be when they log into the server. If you set it to
    #   `PATH`, the user will see the absolute Amazon S3 bucket or EFS paths
    #   as is in their file transfer protocol clients. If you set it
    #   `LOGICAL`, you need to provide mappings in the
    #   `HomeDirectoryMappings` for how you want to make Amazon S3 or EFS
    #   paths visible to your users.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   Specifies the Amazon Resource Name (ARN) of the IAM role that
    #   controls your users' access to your Amazon S3 bucket or EFS file
    #   system. The policies attached to this role determine the level of
    #   access that you want to provide your users when transferring files
    #   into and out of your Amazon S3 bucket or EFS file system. The IAM
    #   role should also contain a trust relationship that allows the server
    #   to access your resources when servicing your users' transfer
    #   requests.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   A unique identifier that is required to identify specific groups
    #   within your directory. The users of the group that you associate
    #   have access to your Amazon S3 or Amazon EFS resources over the
    #   enabled protocols using Amazon Web Services Transfer Family. If you
    #   know the group name, you can view the SID values by running the
    #   following command using Windows PowerShell.
    #
    #   `Get-ADGroup -Filter \{samAccountName -like "YourGroupName*"\}
    #   -Properties * | Select SamAccountName,ObjectSid`
    #
    #   In that command, replace *YourGroupName* with the name of your
    #   Active Directory group.
    #
    #   The regex used to validate this parameter is a string of characters
    #   consisting of uppercase and lowercase alphanumeric characters with
    #   no spaces. You can also include underscores or any of the following
    #   characters: =,.@:/-
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
    #   A container object for the session details associated with a
    #   workflow.
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
    #   transfers.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_type
    #   Specifies the mode of authentication for a server. The default value
    #   is `SERVICE_MANAGED`, which allows you to store and access user
    #   credentials within the Amazon Web Services Transfer Family service.
    #
    #   Use `AWS_DIRECTORY_SERVICE` to provide access to Active Directory
    #   groups in Amazon Web Services Managed Active Directory or Microsoft
    #   Active Directory in your on-premises environment or in Amazon Web
    #   Services using AD Connectors. This option also requires you to
    #   provide a Directory ID using the `IdentityProviderDetails`
    #   parameter.
    #
    #   Use the `API_GATEWAY` value to integrate with an identity provider
    #   of your choosing. The `API_GATEWAY` setting requires you to provide
    #   an API Gateway endpoint URL to call for authentication using the
    #   `IdentityProviderDetails` parameter.
    #
    #   Use the `AWS_LAMBDA` value to directly use a Lambda function as your
    #   identity provider. If you choose this value, you must specify the
    #   ARN for the lambda function in the `Function` parameter for the
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
    #   Specifies the Amazon Resource Name (ARN) of the Amazon Web Services
    #   Identity and Access Management (IAM) role that allows a server to
    #   turn on Amazon CloudWatch logging for Amazon S3 or Amazon EFS
    #   events. When set, user activity can be viewed in your CloudWatch
    #   logs.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   Specifies the unique system assigned identifier for the servers that
    #   were listed.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Specifies the condition of a server for the server that was
    #   described. A value of `ONLINE` indicates that the server can accept
    #   jobs and transfer files. A `State` value of `OFFLINE` means that the
    #   server cannot perform file transfer operations.
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
    #   @return [String]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) you want your users' home
    #   directory to be when they log into the server. If you set it to
    #   `PATH`, the user will see the absolute Amazon S3 bucket or EFS paths
    #   as is in their file transfer protocol clients. If you set it
    #   `LOGICAL`, you need to provide mappings in the
    #   `HomeDirectoryMappings` for how you want to make Amazon S3 or EFS
    #   paths visible to your users.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   Specifies the Amazon Resource Name (ARN) of the IAM role that
    #   controls your users' access to your Amazon S3 bucket or EFS file
    #   system. The policies attached to this role determine the level of
    #   access that you want to provide your users when transferring files
    #   into and out of your Amazon S3 bucket or EFS file system. The IAM
    #   role should also contain a trust relationship that allows the server
    #   to access your resources when servicing your users' transfer
    #   requests.
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

    # Contains the ID, text description, and Amazon Resource Name (ARN) for
    # the workflow.
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
    #   Specifies the Amazon Resource Name (ARN) of the Amazon Web Services
    #   Identity and Access Management (IAM) role that allows a server to
    #   turn on Amazon CloudWatch logging for Amazon S3 or Amazon EFS
    #   events. When set, user activity can be viewed in your CloudWatch
    #   logs.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The name of the CloudWatch logging group for the Amazon Web Services
    #   Transfer server to which this workflow belongs.
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
    # @note When making an API call, you may pass PosixProfile
    #   data as a hash:
    #
    #       {
    #         uid: 1, # required
    #         gid: 1, # required
    #         secondary_gids: [1],
    #       }
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
    # @note When making an API call, you may pass ProtocolDetails
    #   data as a hash:
    #
    #       {
    #         passive_ip: "PassiveIp",
    #         tls_session_resumption_mode: "DISABLED", # accepts DISABLED, ENABLED, ENFORCED
    #       }
    #
    # @!attribute [rw] passive_ip
    #   Indicates passive mode, for FTP and FTPS protocols. Enter a single
    #   dotted-quad IPv4 address, such as the external IP address of a
    #   firewall, router, or load balancer. For example:
    #
    #   ` aws transfer update-server --protocol-details PassiveIp=0.0.0.0 `
    #
    #   Replace ` 0.0.0.0 ` in the example above with the actual IP address
    #   you want to use.
    #
    #   <note markdown="1"> If you change the `PassiveIp` value, you must stop and then restart
    #   your Transfer server for the change to take effect. For details on
    #   using Passive IP (PASV) in a NAT environment, see [Configuring your
    #   FTPS server behind a firewall or NAT with Amazon Web Services
    #   Transfer Family][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: http://aws.amazon.com/blogs/storage/configuring-your-ftps-server-behind-a-firewall-or-nat-with-aws-transfer-family/
    #   @return [String]
    #
    # @!attribute [rw] tls_session_resumption_mode
    #   A property used with Transfer servers that use the FTPS protocol.
    #   TLS Session Resumption provides a mechanism to resume or share a
    #   negotiated secret key between the control and data connection for an
    #   FTPS session. `TlsSessionResumptionMode` determines whether or not
    #   the server resumes recent, negotiated sessions through a unique
    #   session ID. This property is available during `CreateServer` and
    #   `UpdateServer` calls. If a `TlsSessionResumptionMode` value is not
    #   specified during CreateServer, it is set to `ENFORCED` by default.
    #
    #   * `DISABLED`\: the server does not process TLS session resumption
    #     client requests and creates a new TLS session for each request.
    #
    #   * `ENABLED`\: the server processes and accepts clients that are
    #     performing TLS session resumption. The server doesn't reject
    #     client data connections that do not perform the TLS session
    #     resumption client processing.
    #
    #   * `ENFORCED`\: the server processes and accepts clients that are
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ProtocolDetails AWS API Documentation
    #
    class ProtocolDetails < Struct.new(
      :passive_ip,
      :tls_session_resumption_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource does not exist.
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

    # Specifies the details for the file location for the file being used in
    # the workflow. Only applicable if you are using S3 storage.
    #
    # @!attribute [rw] bucket
    #   Specifies the S3 bucket that contains the file being used.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The name assigned to the file when it was created in S3. You use the
    #   object key to retrieve the object.
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

    # Specifies the customer input S3 file location. If it is used inside
    # `copyStepDetails.DestinationFileLocation`, it should be the S3 copy
    # destination.
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
    # `shared-files` folder and named `today`\: each upload overwrites the
    # previous version of the *bob* file.
    #
    # @note When making an API call, you may pass S3InputFileLocation
    #   data as a hash:
    #
    #       {
    #         bucket: "S3Bucket",
    #         key: "S3Key",
    #       }
    #
    # @!attribute [rw] bucket
    #   Specifies the S3 bucket for the customer input file.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The name assigned to the file when it was created in S3. You use the
    #   object key to retrieve the object.
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

    # Specifies the key-value pair that are assigned to a file during the
    # execution of a Tagging step.
    #
    # @note When making an API call, you may pass S3Tag
    #   data as a hash:
    #
    #       {
    #         key: "S3TagKey", # required
    #         value: "S3TagValue", # required
    #       }
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

    # @note When making an API call, you may pass SendWorkflowStepStateRequest
    #   data as a hash:
    #
    #       {
    #         workflow_id: "WorkflowId", # required
    #         execution_id: "ExecutionId", # required
    #         token: "CallbackToken", # required
    #         status: "SUCCESS", # required, accepts SUCCESS, FAILURE
    #       }
    #
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

    # A container object for the session details associated with a workflow.
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

    # Provides information about the public Secure Shell (SSH) key that is
    # associated with a user account for the specific file transfer
    # protocol-enabled server (as identified by `ServerId`). The information
    # returned includes the date the key was imported, the public key
    # contents, and the public key ID. A user can store more than one SSH
    # public key associated with their user name on a specific server.
    #
    # @!attribute [rw] date_imported
    #   Specifies the date that the public key was added to the user
    #   account.
    #   @return [Time]
    #
    # @!attribute [rw] ssh_public_key_body
    #   Specifies the content of the SSH public key as specified by the
    #   `PublicKeyId`.
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

    # @note When making an API call, you may pass StartServerRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #       }
    #
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

    # @note When making an API call, you may pass StopServerRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #       }
    #
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
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] arn
    #   An Amazon Resource Name (ARN) for a specific Amazon Web Services
    #   resource, such as a server, user, or role.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs assigned to ARNs that you can use to group and
    #   search for resources by type. You can attach this metadata to user
    #   accounts for any purpose.
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
    # @note When making an API call, you may pass TagStepDetails
    #   data as a hash:
    #
    #       {
    #         name: "WorkflowStepName",
    #         tags: [
    #           {
    #             key: "S3TagKey", # required
    #             value: "S3TagValue", # required
    #           },
    #         ],
    #         source_file_location: "SourceFileLocation",
    #       }
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
    #   * Enter `$\{previous.file\}` to use the previous file as the input.
    #     In this case, this workflow step uses the output file from the
    #     previous workflow step as input. This is the default value.
    #
    #   * Enter `$\{original.file\}` to use the originally-uploaded file
    #     location as input for this step.
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

    # @note When making an API call, you may pass TestIdentityProviderRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #         server_protocol: "SFTP", # accepts SFTP, FTP, FTPS
    #         source_ip: "SourceIp",
    #         user_name: "UserName", # required
    #         user_password: "UserPassword",
    #       }
    #
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
    #   @return [String]
    #
    # @!attribute [rw] source_ip
    #   The source IP address of the user account to be tested.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user account to be tested.
    #   @return [String]
    #
    # @!attribute [rw] user_password
    #   The password of the user account to be tested.
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
    #   The response that is returned from your API Gateway.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The HTTP status code that is the response from your API Gateway.
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
    # HTTP Status Code: 400
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
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

    # @note When making an API call, you may pass UpdateAccessRequest
    #   data as a hash:
    #
    #       {
    #         home_directory: "HomeDirectory",
    #         home_directory_type: "PATH", # accepts PATH, LOGICAL
    #         home_directory_mappings: [
    #           {
    #             entry: "MapEntry", # required
    #             target: "MapTarget", # required
    #           },
    #         ],
    #         policy: "Policy",
    #         posix_profile: {
    #           uid: 1, # required
    #           gid: 1, # required
    #           secondary_gids: [1],
    #         },
    #         role: "Role",
    #         server_id: "ServerId", # required
    #         external_id: "ExternalId", # required
    #       }
    #
    # @!attribute [rw] home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using the client.
    #
    #   A `HomeDirectory` example is `/bucket_name/home/mydirectory`.
    #   @return [String]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) you want your users' home
    #   directory to be when they log into the server. If you set it to
    #   `PATH`, the user will see the absolute Amazon S3 bucket or EFS paths
    #   as is in their file transfer protocol clients. If you set it
    #   `LOGICAL`, you need to provide mappings in the
    #   `HomeDirectoryMappings` for how you want to make Amazon S3 or EFS
    #   paths visible to your users.
    #   @return [String]
    #
    # @!attribute [rw] home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 or Amazon EFS
    #   paths and keys should be visible to your user and how you want to
    #   make them visible. You must specify the `Entry` and `Target` pair,
    #   where `Entry` shows how the path is made visible and `Target` is the
    #   actual Amazon S3 or Amazon EFS path. If you only specify a target,
    #   it is displayed as is. You also must ensure that your Amazon Web
    #   Services Identity and Access Management (IAM) role provides access
    #   to paths in `Target`. This value can only be set when
    #   `HomeDirectoryType` is set to *LOGICAL*.
    #
    #   The following is an `Entry` and `Target` pair example.
    #
    #   `[ \{ "Entry": "/directory1", "Target":
    #   "/bucket_name/home/mydirectory" \} ]`
    #
    #   In most cases, you can use this value instead of the session policy
    #   to lock down your user to the designated home directory
    #   ("`chroot`"). To do this, you can set `Entry` to `/` and set
    #   `Target` to the `HomeDirectory` parameter value.
    #
    #   The following is an `Entry` and `Target` pair example for `chroot`.
    #
    #   `[ \{ "Entry:": "/", "Target": "/bucket_name/home/mydirectory" \} ]`
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    #
    # @!attribute [rw] policy
    #   A session policy for your user so that you can use the same IAM role
    #   across multiple users. This policy scopes down user access to
    #   portions of their Amazon S3 bucket. Variables that you can use
    #   inside this policy include `$\{Transfer:UserName\}`,
    #   `$\{Transfer:HomeDirectory\}`, and `$\{Transfer:HomeBucket\}`.
    #
    #   <note markdown="1"> This only applies when the domain of `ServerId` is S3. EFS does not
    #   use session policies.
    #
    #    For session policies, Amazon Web Services Transfer Family stores the
    #   policy as a JSON blob, instead of the Amazon Resource Name (ARN) of
    #   the policy. You save the policy as a JSON blob and pass it in the
    #   `Policy` argument.
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
    #   Specifies the Amazon Resource Name (ARN) of the IAM role that
    #   controls your users' access to your Amazon S3 bucket or EFS file
    #   system. The policies attached to this role determine the level of
    #   access that you want to provide your users when transferring files
    #   into and out of your Amazon S3 bucket or EFS file system. The IAM
    #   role should also contain a trust relationship that allows the server
    #   to access your resources when servicing your users' transfer
    #   requests.
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
    #   enabled protocols using Amazon Web Services Transfer Family. If you
    #   know the group name, you can view the SID values by running the
    #   following command using Windows PowerShell.
    #
    #   `Get-ADGroup -Filter \{samAccountName -like "YourGroupName*"\}
    #   -Properties * | Select SamAccountName,ObjectSid`
    #
    #   In that command, replace *YourGroupName* with the name of your
    #   Active Directory group.
    #
    #   The regex used to validate this parameter is a string of characters
    #   consisting of uppercase and lowercase alphanumeric characters with
    #   no spaces. You can also include underscores or any of the following
    #   characters: =,.@:/-
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
    #   The ID of the server that the user is attached to.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID of the group whose users have access to your Amazon
    #   S3 or Amazon EFS resources over the enabled protocols using Amazon
    #   Web ServicesTransfer Family.
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

    # @note When making an API call, you may pass UpdateServerRequest
    #   data as a hash:
    #
    #       {
    #         certificate: "Certificate",
    #         protocol_details: {
    #           passive_ip: "PassiveIp",
    #           tls_session_resumption_mode: "DISABLED", # accepts DISABLED, ENABLED, ENFORCED
    #         },
    #         endpoint_details: {
    #           address_allocation_ids: ["AddressAllocationId"],
    #           subnet_ids: ["SubnetId"],
    #           vpc_endpoint_id: "VpcEndpointId",
    #           vpc_id: "VpcId",
    #           security_group_ids: ["SecurityGroupId"],
    #         },
    #         endpoint_type: "PUBLIC", # accepts PUBLIC, VPC, VPC_ENDPOINT
    #         host_key: "HostKey",
    #         identity_provider_details: {
    #           url: "Url",
    #           invocation_role: "Role",
    #           directory_id: "DirectoryId",
    #           function: "Function",
    #         },
    #         logging_role: "NullableRole",
    #         post_authentication_login_banner: "PostAuthenticationLoginBanner",
    #         pre_authentication_login_banner: "PreAuthenticationLoginBanner",
    #         protocols: ["SFTP"], # accepts SFTP, FTP, FTPS
    #         security_policy_name: "SecurityPolicyName",
    #         server_id: "ServerId", # required
    #         workflow_details: {
    #           on_upload: [ # required
    #             {
    #               workflow_id: "WorkflowId", # required
    #               execution_role: "Role", # required
    #             },
    #           ],
    #         },
    #       }
    #
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
    #   Use the `PassiveIp` parameter to indicate passive mode (for FTP and
    #   FTPS protocols). Enter a single dotted-quad IPv4 address, such as
    #   the external IP address of a firewall, router, or load balancer.
    #
    #   Use the `TlsSessionResumptionMode` parameter to determine whether or
    #   not your Transfer server resumes recent, negotiated sessions through
    #   a unique session ID.
    #   @return [Types::ProtocolDetails]
    #
    # @!attribute [rw] endpoint_details
    #   The virtual private cloud (VPC) endpoint settings that are
    #   configured for your server. When you host your endpoint within your
    #   VPC, you can make it accessible only to resources within your VPC,
    #   or you can attach Elastic IP addresses and make it accessible to
    #   clients over the internet. Your VPC's default security groups are
    #   automatically assigned to your endpoint.
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
    #   `EndpointType=VPC_ENDPOINT` in your Amazon Web Servicesaccount if
    #   your account hasn't already done so before May 19, 2021. If you
    #   have already created servers with `EndpointType=VPC_ENDPOINT` in
    #   your Amazon Web Servicesaccount on or before May 19, 2021, you will
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
    #   The RSA private key as generated by `ssh-keygen -N "" -m PEM -f
    #   my-new-server-key`.
    #
    #   If you aren't planning to migrate existing users from an existing
    #   server to a new server, don't update the host key. Accidentally
    #   changing a server's host key can be disruptive.
    #
    #   For more information, see [Change the host key for your SFTP-enabled
    #   server][1] in the *Amazon Web ServicesTransfer Family User Guide*.
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
    #   Specifies the Amazon Resource Name (ARN) of the Amazon Web Services
    #   Identity and Access Management (IAM) role that allows a server to
    #   turn on Amazon CloudWatch logging for Amazon S3 or Amazon EFS
    #   events. When set, user activity can be viewed in your CloudWatch
    #   logs.
    #   @return [String]
    #
    # @!attribute [rw] post_authentication_login_banner
    #   @return [String]
    #
    # @!attribute [rw] pre_authentication_login_banner
    #   @return [String]
    #
    # @!attribute [rw] protocols
    #   Specifies the file transfer protocol or protocols over which your
    #   file transfer protocol client can connect to your server's
    #   endpoint. The available protocols are:
    #
    #   * Secure Shell (SSH) File Transfer Protocol (SFTP): File transfer
    #     over SSH
    #
    #   * File Transfer Protocol Secure (FTPS): File transfer with TLS
    #     encryption
    #
    #   * File Transfer Protocol (FTP): Unencrypted file transfer
    #
    #   <note markdown="1"> If you select `FTPS`, you must choose a certificate stored in Amazon
    #   Web ServicesCertificate Manager (ACM) which will be used to identify
    #   your server when clients connect to it over FTPS.
    #
    #    If `Protocol` includes either `FTP` or `FTPS`, then the
    #   `EndpointType` must be `VPC` and the `IdentityProviderType` must be
    #   `AWS_DIRECTORY_SERVICE` or `API_GATEWAY`.
    #
    #    If `Protocol` includes `FTP`, then `AddressAllocationIds` cannot be
    #   associated.
    #
    #    If `Protocol` is set only to `SFTP`, the `EndpointType` can be set
    #   to `PUBLIC` and the `IdentityProviderType` can be set to
    #   `SERVICE_MANAGED`.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_policy_name
    #   Specifies the name of the security policy that is attached to the
    #   server.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server instance that the
    #   user account is assigned to.
    #   @return [String]
    #
    # @!attribute [rw] workflow_details
    #   Specifies the workflow ID for the workflow to assign and the
    #   execution role used for executing the workflow.
    #   @return [Types::WorkflowDetails]
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
      :workflow_details)
      SENSITIVE = [:host_key]
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server that the user
    #   account is assigned to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateServerResponse AWS API Documentation
    #
    class UpdateServerResponse < Struct.new(
      :server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserRequest
    #   data as a hash:
    #
    #       {
    #         home_directory: "HomeDirectory",
    #         home_directory_type: "PATH", # accepts PATH, LOGICAL
    #         home_directory_mappings: [
    #           {
    #             entry: "MapEntry", # required
    #             target: "MapTarget", # required
    #           },
    #         ],
    #         policy: "Policy",
    #         posix_profile: {
    #           uid: 1, # required
    #           gid: 1, # required
    #           secondary_gids: [1],
    #         },
    #         role: "Role",
    #         server_id: "ServerId", # required
    #         user_name: "UserName", # required
    #       }
    #
    # @!attribute [rw] home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using the client.
    #
    #   A `HomeDirectory` example is `/bucket_name/home/mydirectory`.
    #   @return [String]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) you want your users' home
    #   directory to be when they log into the server. If you set it to
    #   `PATH`, the user will see the absolute Amazon S3 bucket or EFS paths
    #   as is in their file transfer protocol clients. If you set it
    #   `LOGICAL`, you need to provide mappings in the
    #   `HomeDirectoryMappings` for how you want to make Amazon S3 or EFS
    #   paths visible to your users.
    #   @return [String]
    #
    # @!attribute [rw] home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 or Amazon EFS
    #   paths and keys should be visible to your user and how you want to
    #   make them visible. You must specify the `Entry` and `Target` pair,
    #   where `Entry` shows how the path is made visible and `Target` is the
    #   actual Amazon S3 or Amazon EFS path. If you only specify a target,
    #   it is displayed as is. You also must ensure that your Amazon Web
    #   Services Identity and Access Management (IAM) role provides access
    #   to paths in `Target`. This value can only be set when
    #   `HomeDirectoryType` is set to *LOGICAL*.
    #
    #   The following is an `Entry` and `Target` pair example.
    #
    #   `[ \{ "Entry": "/directory1", "Target":
    #   "/bucket_name/home/mydirectory" \} ]`
    #
    #   In most cases, you can use this value instead of the session policy
    #   to lock down your user to the designated home directory
    #   ("`chroot`"). To do this, you can set `Entry` to '/' and set
    #   `Target` to the HomeDirectory parameter value.
    #
    #   The following is an `Entry` and `Target` pair example for `chroot`.
    #
    #   `[ \{ "Entry:": "/", "Target": "/bucket_name/home/mydirectory" \} ]`
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    #
    # @!attribute [rw] policy
    #   A session policy for your user so that you can use the same IAM role
    #   across multiple users. This policy scopes down user access to
    #   portions of their Amazon S3 bucket. Variables that you can use
    #   inside this policy include `$\{Transfer:UserName\}`,
    #   `$\{Transfer:HomeDirectory\}`, and `$\{Transfer:HomeBucket\}`.
    #
    #   <note markdown="1"> This only applies when the domain of `ServerId` is S3. EFS does not
    #   use session policies.
    #
    #    For session policies, Amazon Web Services Transfer Family stores the
    #   policy as a JSON blob, instead of the Amazon Resource Name (ARN) of
    #   the policy. You save the policy as a JSON blob and pass it in the
    #   `Policy` argument.
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
    #   Specifies the Amazon Resource Name (ARN) of the IAM role that
    #   controls your users' access to your Amazon S3 bucket or EFS file
    #   system. The policies attached to this role determine the level of
    #   access that you want to provide your users when transferring files
    #   into and out of your Amazon S3 bucket or EFS file system. The IAM
    #   role should also contain a trust relationship that allows the server
    #   to access your resources when servicing your users' transfer
    #   requests.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a server instance that the
    #   user account is assigned to.
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
    #   A system-assigned unique identifier for a server instance that the
    #   user account is assigned to.
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

    # Specifies the user name, server ID, and session ID for a workflow.
    #
    # @!attribute [rw] user_name
    #   A unique string that identifies a user account associated with a
    #   server.
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

    # Specifies the workflow ID for the workflow to assign and the execution
    # role used for executing the workflow.
    #
    # @note When making an API call, you may pass WorkflowDetail
    #   data as a hash:
    #
    #       {
    #         workflow_id: "WorkflowId", # required
    #         execution_role: "Role", # required
    #       }
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
    # @note When making an API call, you may pass WorkflowDetails
    #   data as a hash:
    #
    #       {
    #         on_upload: [ # required
    #           {
    #             workflow_id: "WorkflowId", # required
    #             execution_role: "Role", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] on_upload
    #   A trigger that starts a workflow: the workflow begins to execute
    #   after a file is uploaded.
    #   @return [Array<Types::WorkflowDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/WorkflowDetails AWS API Documentation
    #
    class WorkflowDetails < Struct.new(
      :on_upload)
      SENSITIVE = []
      include Aws::Structure
    end

    # The basic building block of a workflow.
    #
    # @note When making an API call, you may pass WorkflowStep
    #   data as a hash:
    #
    #       {
    #         type: "COPY", # accepts COPY, CUSTOM, TAG, DELETE
    #         copy_step_details: {
    #           name: "WorkflowStepName",
    #           destination_file_location: {
    #             s3_file_location: {
    #               bucket: "S3Bucket",
    #               key: "S3Key",
    #             },
    #             efs_file_location: {
    #               file_system_id: "EfsFileSystemId",
    #               path: "EfsPath",
    #             },
    #           },
    #           overwrite_existing: "TRUE", # accepts TRUE, FALSE
    #           source_file_location: "SourceFileLocation",
    #         },
    #         custom_step_details: {
    #           name: "WorkflowStepName",
    #           target: "CustomStepTarget",
    #           timeout_seconds: 1,
    #           source_file_location: "SourceFileLocation",
    #         },
    #         delete_step_details: {
    #           name: "WorkflowStepName",
    #           source_file_location: "SourceFileLocation",
    #         },
    #         tag_step_details: {
    #           name: "WorkflowStepName",
    #           tags: [
    #             {
    #               key: "S3TagKey", # required
    #               value: "S3TagValue", # required
    #             },
    #           ],
    #           source_file_location: "SourceFileLocation",
    #         },
    #       }
    #
    # @!attribute [rw] type
    #   Currently, the following step types are supported.
    #
    #   * *Copy*\: copy the file to another location
    #
    #   * *Custom*\: custom step with a lambda target
    #
    #   * *Delete*\: delete the file
    #
    #   * *Tag*\: add a tag to the file
    #   @return [String]
    #
    # @!attribute [rw] copy_step_details
    #   Details for a step that performs a file copy.
    #
    #   Consists of the following values:
    #
    #   * A description
    #
    #   * An S3 location for the destination of the file copy.
    #
    #   * A flag that indicates whether or not to overwrite an existing file
    #     of the same name. The default is `FALSE`.
    #   @return [Types::CopyStepDetails]
    #
    # @!attribute [rw] custom_step_details
    #   Details for a step that invokes a lambda function.
    #
    #   Consists of the lambda function name, target, and timeout (in
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
    #   You specify one or more tags: each tag contains a key/value pair.
    #   @return [Types::TagStepDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/WorkflowStep AWS API Documentation
    #
    class WorkflowStep < Struct.new(
      :type,
      :copy_step_details,
      :custom_step_details,
      :delete_step_details,
      :tag_step_details)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
