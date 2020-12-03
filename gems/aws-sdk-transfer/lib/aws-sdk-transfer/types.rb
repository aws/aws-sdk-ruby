# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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

    # This exception is thrown when the `UpdatServer` is called for a file
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

    # @note When making an API call, you may pass CreateServerRequest
    #   data as a hash:
    #
    #       {
    #         certificate: "Certificate",
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
    #         },
    #         identity_provider_type: "SERVICE_MANAGED", # accepts SERVICE_MANAGED, API_GATEWAY
    #         logging_role: "Role",
    #         protocols: ["SFTP"], # accepts SFTP, FTP, FTPS
    #         security_policy_name: "SecurityPolicyName",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] certificate
    #   The Amazon Resource Name (ARN) of the AWS Certificate Manager (ACM)
    #   certificate. Required when `Protocols` is set to `FTPS`.
    #
    #   To request a new public certificate, see [Request a public
    #   certificate][1] in the <i> AWS Certificate Manager User Guide</i>.
    #
    #   To import an existing certificate into ACM, see [Importing
    #   certificates into ACM][2] in the <i> AWS Certificate Manager User
    #   Guide</i>.
    #
    #   To request a private certificate to use FTPS through private IP
    #   addresses, see [Request a private certificate][3] in the <i> AWS
    #   Certificate Manager User Guide</i>.
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
    # @!attribute [rw] endpoint_details
    #   The virtual private cloud (VPC) endpoint settings that are
    #   configured for your server. When you host your endpoint within your
    #   VPC, you can make it accessible only to resources within your VPC,
    #   or you can attach Elastic IPs and make it accessible to clients over
    #   the internet. Your VPC's default security groups are automatically
    #   assigned to your endpoint.
    #   @return [Types::EndpointDetails]
    #
    # @!attribute [rw] endpoint_type
    #   The type of VPC endpoint that you want your server to connect to.
    #   You can choose to connect to the public internet or a VPC endpoint.
    #   With a VPC endpoint, you can restrict access to your server and
    #   resources only within your VPC.
    #
    #   <note markdown="1"> It is recommended that you use `VPC` as the `EndpointType`. With
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
    #   server][1] in the *AWS Transfer Family User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_details
    #   Required when `IdentityProviderType` is set to `API_GATEWAY`.
    #   Accepts an array containing all of the information required to call
    #   a customer-supplied authentication API, including the API Gateway
    #   URL. Not required when `IdentityProviderType` is set to
    #   `SERVICE_MANAGED`.
    #   @return [Types::IdentityProviderDetails]
    #
    # @!attribute [rw] identity_provider_type
    #   Specifies the mode of authentication for a server. The default value
    #   is `SERVICE_MANAGED`, which allows you to store and access user
    #   credentials within the AWS Transfer Family service. Use the
    #   `API_GATEWAY` value to integrate with an identity provider of your
    #   choosing. The `API_GATEWAY` setting requires you to provide an API
    #   Gateway endpoint URL to call for authentication using the
    #   `IdentityProviderDetails` parameter.
    #   @return [String]
    #
    # @!attribute [rw] logging_role
    #   Allows the service to write your users' activity to your Amazon
    #   CloudWatch logs for monitoring and auditing purposes.
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
    #   <note markdown="1"> If you select `FTPS`, you must choose a certificate stored in AWS
    #   Certificate Manager (ACM) which will be used to identify your server
    #   when clients connect to it over FTPS.
    #
    #    If `Protocol` includes either `FTP` or `FTPS`, then the
    #   `EndpointType` must be `VPC` and the `IdentityProviderType` must be
    #   `API_GATEWAY`.
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
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for servers.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateServerRequest AWS API Documentation
    #
    class CreateServerRequest < Struct.new(
      :certificate,
      :endpoint_details,
      :endpoint_type,
      :host_key,
      :identity_provider_details,
      :identity_provider_type,
      :logging_role,
      :protocols,
      :security_policy_name,
      :tags)
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
    #   An example is <i>
    #   <code>your-Amazon-S3-bucket-name&gt;/home/username</code> </i>.
    #   @return [String]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) you want your users' home
    #   directory to be when they log into the server. If you set it to
    #   `PATH`, the user will see the absolute Amazon S3 bucket paths as is
    #   in their file transfer protocol clients. If you set it `LOGICAL`,
    #   you will need to provide mappings in the `HomeDirectoryMappings` for
    #   how you want to make Amazon S3 paths visible to your users.
    #   @return [String]
    #
    # @!attribute [rw] home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 paths and
    #   keys should be visible to your user and how you want to make them
    #   visible. You will need to specify the "`Entry`" and "`Target`"
    #   pair, where `Entry` shows how the path is made visible and `Target`
    #   is the actual Amazon S3 path. If you only specify a target, it will
    #   be displayed as is. You will need to also make sure that your IAM
    #   role provides access to paths in `Target`. The following is an
    #   example.
    #
    #   `'[ "/bucket2/documentation", \{ "Entry":
    #   "your-personal-report.pdf", "Target":
    #   "/bucket3/customized-reports/$\{transfer:UserName\}.pdf" \} ]'`
    #
    #   In most cases, you can use this value instead of the scope-down
    #   policy to lock your user down to the designated home directory
    #   ("chroot"). To do this, you can set `Entry` to '/' and set
    #   `Target` to the HomeDirectory parameter value.
    #
    #   <note markdown="1"> If the target of a logical directory entry does not exist in Amazon
    #   S3, the entry will be ignored. As a workaround, you can use the
    #   Amazon S3 API to create 0 byte objects as place holders for your
    #   directory. If using the CLI, use the `s3api` call instead of `s3` so
    #   you can use the put-object operation. For example, you use the
    #   following: `aws s3api put-object --bucket bucketname --key
    #   path/to/folder/`. Make sure that the end of the key name ends in a
    #   '/' for it to be considered a folder.
    #
    #    </note>
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    #
    # @!attribute [rw] policy
    #   A scope-down policy for your user so you can use the same IAM role
    #   across multiple users. This policy scopes down user access to
    #   portions of their Amazon S3 bucket. Variables that you can use
    #   inside this policy include `$\{Transfer:UserName\}`,
    #   `$\{Transfer:HomeDirectory\}`, and `$\{Transfer:HomeBucket\}`.
    #
    #   <note markdown="1"> For scope-down policies, AWS Transfer Family stores the policy as a
    #   JSON blob, instead of the Amazon Resource Name (ARN) of the policy.
    #   You save the policy as a JSON blob and pass it in the `Policy`
    #   argument.
    #
    #    For an example of a scope-down policy, see [Creating a scope-down
    #   policy][1].
    #
    #    For more information, see [AssumeRole][2] in the *AWS Security Token
    #   Service API Reference*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/users.html#users-policies-scope-down
    #   [2]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The IAM role that controls your users' access to your Amazon S3
    #   bucket. The policies attached to this role will determine the level
    #   of access you want to provide your users when transferring files
    #   into and out of your Amazon S3 bucket or buckets. The IAM role
    #   should also contain a trust relationship that allows the server to
    #   access your resources when servicing your users' transfer requests.
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
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for users. Tags
    #   are metadata attached to users for any purpose.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] user_name
    #   A unique string that identifies a user and is associated with a as
    #   specified by the `ServerId`. This user name must be a minimum of 3
    #   and a maximum of 100 characters long. The following are valid
    #   characters: a-z, A-Z, 0-9, underscore '\_', hyphen '-', period
    #   '.', and at sign '@'. The user name can't start with a hyphen,
    #   period, or at sign.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :home_directory,
      :home_directory_type,
      :home_directory_mappings,
      :policy,
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
    #   part of the sign-in credentials to use the AWS Transfer Family
    #   service and perform file transfer tasks.
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
    #   Specifies the ARN of the AWS Certificate Manager (ACM) certificate.
    #   Required when `Protocols` is set to `FTPS`.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_details
    #   Specifies the virtual private cloud (VPC) endpoint settings that you
    #   configured for your server.
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
    #   a server is `SERVICE_MANAGED`.
    #   @return [Types::IdentityProviderDetails]
    #
    # @!attribute [rw] identity_provider_type
    #   Specifies the mode of authentication method enabled for this
    #   service. A value of `SERVICE_MANAGED` means that you are using this
    #   server to store and access user credentials within the service. A
    #   value of `API_GATEWAY` indicates that you have integrated an API
    #   Gateway endpoint that will be invoked for authenticating your user
    #   into the service.
    #   @return [String]
    #
    # @!attribute [rw] logging_role
    #   Specifies the AWS Identity and Access Management (IAM) role that
    #   allows a server to turn on Amazon CloudWatch logging for Amazon S3
    #   events. When set, user activity can be viewed in your CloudWatch
    #   logs.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedServer AWS API Documentation
    #
    class DescribedServer < Struct.new(
      :arn,
      :certificate,
      :endpoint_details,
      :endpoint_type,
      :host_key_fingerprint,
      :identity_provider_details,
      :identity_provider_type,
      :logging_role,
      :protocols,
      :security_policy_name,
      :server_id,
      :state,
      :tags,
      :user_count)
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
    #   Specifies the landing directory (or folder), which is the location
    #   that files are written to or read from in an Amazon S3 bucket, for
    #   the described user. An example is <i>
    #   <code>your-Amazon-S3-bucket-name&gt;/home/username</code> </i>.
    #   @return [String]
    #
    # @!attribute [rw] home_directory_mappings
    #   Specifies the logical directory mappings that specify what Amazon S3
    #   paths and keys should be visible to your user and how you want to
    #   make them visible. You will need to specify the "`Entry`" and
    #   "`Target`" pair, where `Entry` shows how the path is made visible
    #   and `Target` is the actual Amazon S3 path. If you only specify a
    #   target, it will be displayed as is. You will need to also make sure
    #   that your AWS Identity and Access Management (IAM) role provides
    #   access to paths in `Target`.
    #
    #   In most cases, you can use this value instead of the scope-down
    #   policy to lock your user down to the designated home directory
    #   ("chroot"). To do this, you can set `Entry` to '/' and set
    #   `Target` to the HomeDirectory parameter value.
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    #
    # @!attribute [rw] home_directory_type
    #   Specifies the type of landing directory (folder) you mapped for your
    #   users to see when they log into the file transfer protocol-enabled
    #   server. If you set it to `PATH`, the user will see the absolute
    #   Amazon S3 bucket paths as is in their file transfer protocol
    #   clients. If you set it `LOGICAL`, you will need to provide mappings
    #   in the `HomeDirectoryMappings` for how you want to make Amazon S3
    #   paths visible to your users.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   Specifies the name of the policy in use for the described user.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   Specifies the IAM role that controls your users' access to your
    #   Amazon S3 bucket. The policies attached to this role will determine
    #   the level of access you want to provide your users when transferring
    #   files into and out of your Amazon S3 bucket or buckets. The IAM role
    #   should also contain a trust relationship that allows a server to
    #   access your resources when servicing your users' transfer requests.
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
      :role,
      :ssh_public_keys,
      :tags,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The virtual private cloud (VPC) endpoint settings that are configured
    # for your file transfer protocol-enabled server. With a VPC endpoint,
    # you can restrict access to your server and resources only within your
    # VPC. To control incoming internet traffic, invoke the `UpdateServer`
    # API and attach an Elastic IP to your server's endpoint.
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
    #    You can only edit the `SecurityGroupIds` property in the
    #   `UpdateServer` API and only if you are changing the `EndpointType`
    #   from `PUBLIC` or `VPC_ENDPOINT` to `VPC`.
    #
    #    </note>
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

    # Represents an object that contains entries and targets for
    # `HomeDirectoryMappings`.
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
    #   Represents an entry and a target for `HomeDirectoryMappings`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/IdentityProviderDetails AWS API Documentation
    #
    class IdentityProviderDetails < Struct.new(
      :url,
      :invocation_role)
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

    # This exception is thrown when an error occurs in the AWS Transfer
    # Family service.
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
    #   (ARN). An ARN is an identifier for a specific AWS resource, such as
    #   a server, user, or role.
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

    # Returns properties of a file transfer protocol-enabled server that was
    # specified.
    #
    # @!attribute [rw] arn
    #   Specifies the unique Amazon Resource Name (ARN) for a server to be
    #   listed.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_type
    #   Specifies the authentication method used to validate a user for a
    #   server that was specified. This can include Secure Shell (SSH), user
    #   name and password combinations, or your own custom authentication
    #   method. Valid values include `SERVICE_MANAGED` or `API_GATEWAY`.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   Specifies the type of VPC endpoint that your server is connected to.
    #   If your server is connected to a VPC endpoint, your server isn't
    #   accessible over the public internet.
    #   @return [String]
    #
    # @!attribute [rw] logging_role
    #   Specifies the AWS Identity and Access Management (IAM) role that
    #   allows a server to turn on Amazon CloudWatch logging.
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
    #   Specifies the location that files are written to or read from an
    #   Amazon S3 bucket for the user you specify by their ARN.
    #   @return [String]
    #
    # @!attribute [rw] home_directory_type
    #   Specifies the type of landing directory (folder) you mapped for your
    #   users' home directory. If you set it to `PATH`, the user will see
    #   the absolute Amazon S3 bucket paths as is in their file transfer
    #   protocol clients. If you set it `LOGICAL`, you will need to provide
    #   mappings in the `HomeDirectoryMappings` for how you want to make
    #   Amazon S3 paths visible to your users.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   Specifies the role that is in use by this user. A *role* is an AWS
    #   Identity and Access Management (IAM) entity that, in this case,
    #   allows a file transfer protocol-enabled server to act on a user's
    #   behalf. It allows the server to inherit the trust relationship that
    #   enables that user to perform file operations to their Amazon S3
    #   bucket.
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

    # This exception is thrown when a resource is not found by the AWS
    # Transfer Family service.
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

    # The request has failed because the AWS Transfer Family service is not
    # available.
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
    #   An Amazon Resource Name (ARN) for a specific AWS resource, such as a
    #   server, user, or role.
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
    #   Resource Name (ARN) is an identifier for a specific AWS resource,
    #   such as a server, user, or role.
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

    # @note When making an API call, you may pass UpdateServerRequest
    #   data as a hash:
    #
    #       {
    #         certificate: "Certificate",
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
    #         },
    #         logging_role: "NullableRole",
    #         protocols: ["SFTP"], # accepts SFTP, FTP, FTPS
    #         security_policy_name: "SecurityPolicyName",
    #         server_id: "ServerId", # required
    #       }
    #
    # @!attribute [rw] certificate
    #   The Amazon Resource Name (ARN) of the AWS Certificate Manager (ACM)
    #   certificate. Required when `Protocols` is set to `FTPS`.
    #
    #   To request a new public certificate, see [Request a public
    #   certificate][1] in the <i> AWS Certificate Manager User Guide</i>.
    #
    #   To import an existing certificate into ACM, see [Importing
    #   certificates into ACM][2] in the <i> AWS Certificate Manager User
    #   Guide</i>.
    #
    #   To request a private certificate to use FTPS through private IP
    #   addresses, see [Request a private certificate][3] in the <i> AWS
    #   Certificate Manager User Guide</i>.
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
    # @!attribute [rw] endpoint_details
    #   The virtual private cloud (VPC) endpoint settings that are
    #   configured for your server. With a VPC endpoint, you can restrict
    #   access to your server to resources only within your VPC. To control
    #   incoming internet traffic, you will need to associate one or more
    #   Elastic IP addresses with your server's endpoint.
    #   @return [Types::EndpointDetails]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint that you want your server to connect to. You
    #   can choose to connect to the public internet or a VPC endpoint. With
    #   a VPC endpoint, you can restrict access to your server and resources
    #   only within your VPC.
    #
    #   <note markdown="1"> It is recommended that you use `VPC` as the `EndpointType`. With
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
    #   server][1] in the *AWS Transfer Family User Guide*.
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
    #   Changes the AWS Identity and Access Management (IAM) role that
    #   allows Amazon S3 events to be logged in Amazon CloudWatch, turning
    #   logging on or off.
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
    #   <note markdown="1"> If you select `FTPS`, you must choose a certificate stored in AWS
    #   Certificate Manager (ACM) which will be used to identify your server
    #   when clients connect to it over FTPS.
    #
    #    If `Protocol` includes either `FTP` or `FTPS`, then the
    #   `EndpointType` must be `VPC` and the `IdentityProviderType` must be
    #   `API_GATEWAY`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateServerRequest AWS API Documentation
    #
    class UpdateServerRequest < Struct.new(
      :certificate,
      :endpoint_details,
      :endpoint_type,
      :host_key,
      :identity_provider_details,
      :logging_role,
      :protocols,
      :security_policy_name,
      :server_id)
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
    #         role: "Role",
    #         server_id: "ServerId", # required
    #         user_name: "UserName", # required
    #       }
    #
    # @!attribute [rw] home_directory
    #   Specifies the landing directory (folder) for a user when they log in
    #   to the server using their file transfer protocol client.
    #
    #   An example is `your-Amazon-S3-bucket-name>/home/username`.
    #   @return [String]
    #
    # @!attribute [rw] home_directory_type
    #   The type of landing directory (folder) you want your users' home
    #   directory to be when they log into the server. If you set it to
    #   `PATH`, the user will see the absolute Amazon S3 bucket paths as is
    #   in their file transfer protocol clients. If you set it `LOGICAL`,
    #   you will need to provide mappings in the `HomeDirectoryMappings` for
    #   how you want to make Amazon S3 paths visible to your users.
    #   @return [String]
    #
    # @!attribute [rw] home_directory_mappings
    #   Logical directory mappings that specify what Amazon S3 paths and
    #   keys should be visible to your user and how you want to make them
    #   visible. You will need to specify the "`Entry`" and "`Target`"
    #   pair, where `Entry` shows how the path is made visible and `Target`
    #   is the actual Amazon S3 path. If you only specify a target, it will
    #   be displayed as is. You will need to also make sure that your IAM
    #   role provides access to paths in `Target`. The following is an
    #   example.
    #
    #   `'[ "/bucket2/documentation", \{ "Entry":
    #   "your-personal-report.pdf", "Target":
    #   "/bucket3/customized-reports/$\{transfer:UserName\}.pdf" \} ]'`
    #
    #   In most cases, you can use this value instead of the scope-down
    #   policy to lock your user down to the designated home directory
    #   ("chroot"). To do this, you can set `Entry` to '/' and set
    #   `Target` to the HomeDirectory parameter value.
    #
    #   <note markdown="1"> If the target of a logical directory entry does not exist in Amazon
    #   S3, the entry will be ignored. As a workaround, you can use the
    #   Amazon S3 API to create 0 byte objects as place holders for your
    #   directory. If using the CLI, use the `s3api` call instead of `s3` so
    #   you can use the put-object operation. For example, you use the
    #   following: `aws s3api put-object --bucket bucketname --key
    #   path/to/folder/`. Make sure that the end of the key name ends in a /
    #   for it to be considered a folder.
    #
    #    </note>
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    #
    # @!attribute [rw] policy
    #   Allows you to supply a scope-down policy for your user so you can
    #   use the same IAM role across multiple users. The policy scopes down
    #   user access to portions of your Amazon S3 bucket. Variables you can
    #   use inside this policy include `$\{Transfer:UserName\}`,
    #   `$\{Transfer:HomeDirectory\}`, and `$\{Transfer:HomeBucket\}`.
    #
    #   <note markdown="1"> For scope-down policies, AWS Transfer Family stores the policy as a
    #   JSON blob, instead of the Amazon Resource Name (ARN) of the policy.
    #   You save the policy as a JSON blob and pass it in the `Policy`
    #   argument.
    #
    #    For an example of a scope-down policy, see [Creating a scope-down
    #   policy][1].
    #
    #    For more information, see [AssumeRole][2] in the *AWS Security Token
    #   Service API Reference*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transfer/latest/userguide/users.html#users-policies-scope-down
    #   [2]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The IAM role that controls your users' access to your Amazon S3
    #   bucket. The policies attached to this role will determine the level
    #   of access you want to provide your users when transferring files
    #   into and out of your Amazon S3 bucket or buckets. The IAM role
    #   should also contain a trust relationship that allows the server to
    #   access your resources when servicing your users' transfer requests.
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

  end
end
