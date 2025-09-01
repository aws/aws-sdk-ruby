# frozen_string_literal: true

# This is generated code!

module Aws::Transfer
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AgreementStatusType
      ACTIVE = 'ACTIVE'
      INACTIVE = 'INACTIVE'
    end

    # <p>Contains the details for an AS2 connector object. The connector object is used for AS2 outbound processes, to connect the Transfer Family customer with the trading partner.</p>
    # @!attribute local_profile_id
    #   <p>A unique identifier for the AS2 local profile.</p>
    #   @return [String]
    # @!attribute partner_profile_id
    #   <p>A unique identifier for the partner profile for the connector.</p>
    #   @return [String]
    # @!attribute message_subject
    #   <p>Used as the <code>Subject</code> HTTP header attribute in AS2 messages that are being sent with the connector.</p>
    #   @return [String]
    # @!attribute compression
    #   <p>Specifies whether the AS2 file is compressed.</p>
    #   @return [String]
    # @!attribute encryption_algorithm
    #   <p>The algorithm that is used to encrypt the file.</p> <p>Note the following:</p> <ul> <li> <p>Do not use the <code>DES_EDE3_CBC</code> algorithm unless you must support a legacy client that requires it, as it is a weak encryption algorithm.</p> </li> <li> <p>You can only specify <code>NONE</code> if the URL for your connector uses HTTPS. Using HTTPS ensures that no traffic is sent in clear text.</p> </li> </ul>
    #   @return [String]
    # @!attribute signing_algorithm
    #   <p>The algorithm that is used to sign the AS2 messages sent with the connector.</p>
    #   @return [String]
    # @!attribute mdn_signing_algorithm
    #   <p>The signing algorithm for the MDN response.</p> <note> <p>If set to DEFAULT (or not set at all), the value for <code>SigningAlgorithm</code> is used.</p> </note>
    #   @return [String]
    # @!attribute mdn_response
    #   <p>Used for outbound requests (from an Transfer Family connector to a partner AS2 server) to determine whether the partner response for transfers is synchronous or asynchronous. Specify either of the following values:</p> <ul> <li> <p> <code>SYNC</code>: The system expects a synchronous MDN response, confirming that the file was transferred successfully (or not).</p> </li> <li> <p> <code>NONE</code>: Specifies that no MDN response is required.</p> </li> </ul>
    #   @return [String]
    # @!attribute basic_auth_secret_id
    #   <p>Provides Basic authentication support to the AS2 Connectors API. To use Basic authentication, you must provide the name or Amazon Resource Name (ARN) of a secret in Secrets Manager.</p> <p>The default value for this parameter is <code>null</code>, which indicates that Basic authentication is not enabled for the connector.</p> <p>If the connector should use Basic authentication, the secret needs to be in the following format:</p> <p> <code>{ "Username": "user-name", "Password": "user-password" }</code> </p> <p>Replace <code>user-name</code> and <code>user-password</code> with the credentials for the actual user that is being authenticated.</p> <p>Note the following:</p> <ul> <li> <p>You are storing these credentials in Secrets Manager, <i>not passing them directly</i> into this API.</p> </li> <li> <p>If you are using the API, SDKs, or CloudFormation to configure your connector, then you must create the secret before you can enable Basic authentication. However, if you are using the Amazon Web Services management console, you can have the system create the secret for you.</p> </li> </ul> <p>If you have previously enabled Basic authentication for a connector, you can disable it by using the <code>UpdateConnector</code> API call. For example, if you are using the CLI, you can run the following command to remove Basic authentication:</p> <p> <code>update-connector --connector-id my-connector-id --as2-config 'BasicAuthSecretId=""'</code> </p>
    #   @return [String]
    # @!attribute preserve_content_type
    #   <p>Allows you to use the Amazon S3 <code>Content-Type</code> that is associated with objects in S3 instead of having the content type mapped based on the file extension. This parameter is enabled by default when you create an AS2 connector from the console, but disabled by default when you create an AS2 connector by calling the API directly.</p>
    #   @return [String]
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
      :preserve_content_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module As2Transport
      HTTP = 'HTTP'
    end

    module CertificateStatusType
      ACTIVE = 'ACTIVE'
      PENDING_ROTATION = 'PENDING_ROTATION'
      INACTIVE = 'INACTIVE'
    end

    module CertificateType
      CERTIFICATE = 'CERTIFICATE'
      CERTIFICATE_WITH_PRIVATE_KEY = 'CERTIFICATE_WITH_PRIVATE_KEY'
    end

    module CertificateUsageType
      SIGNING = 'SIGNING'
      ENCRYPTION = 'ENCRYPTION'
      TLS = 'TLS'
    end

    module CompressionEnum
      ZLIB = 'ZLIB'
      DISABLED = 'DISABLED'
    end

    # <p>This exception is thrown when the <code>UpdateServer</code> is called for a file transfer protocol-enabled server that has VPC as the endpoint type and the server's <code>VpcEndpointID</code> is not in the available state.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure that contains the details for files transferred using an SFTP connector, during a single transfer.</p>
    # @!attribute file_path
    #   <p>The filename and path to where the file was sent to or retrieved from.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The current status for the transfer.</p>
    #   @return [String]
    # @!attribute failure_code
    #   <p>For transfers that fail, this parameter contains a code indicating the reason. For example, <code>RETRIEVE_FILE_NOT_FOUND</code> </p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>For transfers that fail, this parameter describes the reason for the failure.</p>
    #   @return [String]
    class ConnectorFileTransferResult < Struct.new(
      :file_path,
      :status_code,
      :failure_code,
      :failure_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Each step type has its own <code>StepDetails</code> structure.</p>
    # @!attribute name
    #   <p>The name of the step, used as an identifier.</p>
    #   @return [String]
    # @!attribute destination_file_location
    #   <p>Specifies the location for the file being copied. Use <code>${Transfer:UserName}</code> or <code>${Transfer:UploadDate}</code> in this field to parametrize the destination prefix by username or uploaded date.</p> <ul> <li> <p>Set the value of <code>DestinationFileLocation</code> to <code>${Transfer:UserName}</code> to copy uploaded files to an Amazon S3 bucket that is prefixed with the name of the Transfer Family user that uploaded the file.</p> </li> <li> <p>Set the value of <code>DestinationFileLocation</code> to <code>${Transfer:UploadDate}</code> to copy uploaded files to an Amazon S3 bucket that is prefixed with the date of the upload.</p> <note> <p>The system resolves <code>UploadDate</code> to a date format of <i>YYYY-MM-DD</i>, based on the date the file is uploaded in UTC.</p> </note> </li> </ul>
    #   @return [Types::InputFileLocation]
    # @!attribute overwrite_existing
    #   <p>A flag that indicates whether to overwrite an existing file of the same name. The default is <code>FALSE</code>.</p> <p>If the workflow is processing a file that has the same name as an existing file, the behavior is as follows:</p> <ul> <li> <p>If <code>OverwriteExisting</code> is <code>TRUE</code>, the existing file is replaced with the file being processed.</p> </li> <li> <p>If <code>OverwriteExisting</code> is <code>FALSE</code>, nothing happens, and the workflow processing stops.</p> </li> </ul>
    #   @return [String]
    # @!attribute source_file_location
    #   <p>Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow.</p> <ul> <li> <p>To use the previous file as the input, enter <code>${previous.file}</code>. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value.</p> </li> <li> <p>To use the originally uploaded file location as input for this step, enter <code>${original.file}</code>.</p> </li> </ul>
    #   @return [String]
    class CopyStepDetails < Struct.new(
      :name,
      :destination_file_location,
      :overwrite_existing,
      :source_file_location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p> <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p> <note> <p>You can use the <code>HomeDirectory</code> parameter for <code>HomeDirectoryType</code> when it is set to either <code>PATH</code> or <code>LOGICAL</code>.</p> </note>
    #   @return [String]
    # @!attribute home_directory_type
    #   <p>The type of landing directory (folder) that you want your users' home directory to be when they log in to the server. If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or Amazon EFS path as is in their file transfer protocol clients. If you set it to <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 or Amazon EFS paths visible to your users.</p> <note> <p>If <code>HomeDirectoryType</code> is <code>LOGICAL</code>, you must provide mappings, using the <code>HomeDirectoryMappings</code> parameter. If, on the other hand, <code>HomeDirectoryType</code> is <code>PATH</code>, you provide an absolute path using the <code>HomeDirectory</code> parameter. You cannot have both <code>HomeDirectory</code> and <code>HomeDirectoryMappings</code> in your template.</p> </note>
    #   @return [String]
    # @!attribute home_directory_mappings
    #   <p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should be visible to your user and how you want to make them visible. You must specify the <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you only specify a target, it is displayed as is. You also must ensure that your Identity and Access Management (IAM) role provides access to paths in <code>Target</code>. This value can be set only when <code>HomeDirectoryType</code> is set to <i>LOGICAL</i>.</p> <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p> <p> <code>[ { "Entry": "/directory1", "Target": "/bucket_name/home/mydirectory" } ]</code> </p> <p>In most cases, you can use this value instead of the session policy to lock down your user to the designated home directory ("<code>chroot</code>"). To do this, you can set <code>Entry</code> to <code>/</code> and set <code>Target</code> to the <code>HomeDirectory</code> parameter value.</p> <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p> <p> <code>[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]</code> </p>
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    # @!attribute policy
    #   <p>A session policy for your user so that you can use the same Identity and Access Management (IAM) role across multiple users. This policy scopes down a user's access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>, <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p> <note> <p>This policy applies only when the domain of <code>ServerId</code> is Amazon S3. Amazon EFS does not use session policies.</p> <p>For session policies, Transfer Family stores the policy as a JSON blob, instead of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass it in the <code>Policy</code> argument.</p> <p>For an example of a session policy, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html">Example session policy</a>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html">AssumeRole</a> in the <i>Security Token Service API Reference</i>.</p> </note>
    #   @return [String]
    # @!attribute posix_profile
    #   <p>The full POSIX identity, including user ID (<code>Uid</code>), group ID (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls your users' access to your Amazon EFS file systems. The POSIX permissions that are set on files and directories in your file system determine the level of access your users get when transferring files into and out of your Amazon EFS file systems.</p>
    #   @return [Types::PosixProfile]
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that controls your users' access to your Amazon S3 bucket or Amazon EFS file system. The policies attached to this role determine the level of access that you want to provide your users when transferring files into and out of your Amazon S3 bucket or Amazon EFS file system. The IAM role should also contain a trust relationship that allows the server to access your resources when servicing your users' transfer requests.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server instance. This is the specific server that you added your user to.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>A unique identifier that is required to identify specific groups within your directory. The users of the group that you associate have access to your Amazon S3 or Amazon EFS resources over the enabled protocols using Transfer Family. If you know the group name, you can view the SID values by running the following command using Windows PowerShell.</p> <p> <code>Get-ADGroup -Filter {samAccountName -like "<i>YourGroupName</i>*"} -Properties * | Select SamAccountName,ObjectSid</code> </p> <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p> <p>The regular expression used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-</p>
    #   @return [String]
    class CreateAccessRequest < Struct.new(
      :home_directory,
      :home_directory_type,
      :home_directory_mappings,
      :policy,
      :posix_profile,
      :role,
      :server_id,
      :external_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>The identifier of the server that the user is attached to.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external identifier of the group whose users have access to your Amazon S3 or Amazon EFS resources over the enabled protocols using Transfer Family.</p>
    #   @return [String]
    class CreateAccessResponse < Struct.new(
      :server_id,
      :external_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>A name or short description to identify the agreement. </p>
    #   @return [String]
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server instance. This is the specific server that the agreement uses.</p>
    #   @return [String]
    # @!attribute local_profile_id
    #   <p>A unique identifier for the AS2 local profile.</p>
    #   @return [String]
    # @!attribute partner_profile_id
    #   <p>A unique identifier for the partner profile used in the agreement.</p>
    #   @return [String]
    # @!attribute base_directory
    #   <p>The landing directory (folder) for files transferred by using the AS2 protocol.</p> <p>A <code>BaseDirectory</code> example is <code>/<i>amzn-s3-demo-bucket</i>/home/mydirectory</code>.</p>
    #   @return [String]
    # @!attribute access_role
    #   <p>Connectors are used to send files using either the AS2 or SFTP protocol. For the access role, provide the Amazon Resource Name (ARN) of the Identity and Access Management role to use.</p> <p> <b>For AS2 connectors</b> </p> <p>With AS2, you can send files by calling <code>StartFileTransfer</code> and specifying the file paths in the request parameter, <code>SendFilePaths</code>. We use the file’s parent directory (for example, for <code>--send-file-paths /bucket/dir/file.txt</code>, parent directory is <code>/bucket/dir/</code>) to temporarily store a processed AS2 message file, store the MDN when we receive them from the partner, and write a final JSON file containing relevant metadata of the transmission. So, the <code>AccessRole</code> needs to provide read and write access to the parent directory of the file location used in the <code>StartFileTransfer</code> request. Additionally, you need to provide read and write access to the parent directory of the files that you intend to send with <code>StartFileTransfer</code>.</p> <p>If you are using Basic authentication for your AS2 connector, the access role requires the <code>secretsmanager:GetSecretValue</code> permission for the secret. If the secret is encrypted using a customer-managed key instead of the Amazon Web Services managed key in Secrets Manager, then the role also needs the <code>kms:Decrypt</code> permission for that key.</p> <p> <b>For SFTP connectors</b> </p> <p>Make sure that the access role provides read and write access to the parent directory of the file location that's used in the <code>StartFileTransfer</code> request. Additionally, make sure that the role provides <code>secretsmanager:GetSecretValue</code> permission to Secrets Manager.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the agreement. The agreement can be either <code>ACTIVE</code> or <code>INACTIVE</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for agreements.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute preserve_filename
    #   <p> Determines whether or not Transfer Family appends a unique string of characters to the end of the AS2 message payload filename when saving it. </p> <ul> <li> <p> <code>ENABLED</code>: the filename provided by your trading parter is preserved when the file is saved.</p> </li> <li> <p> <code>DISABLED</code> (default value): when Transfer Family saves the file, the filename is adjusted, as described in <a href="https://docs.aws.amazon.com/transfer/latest/userguide/send-as2-messages.html#file-names-as2">File names and locations</a>.</p> </li> </ul>
    #   @return [String]
    # @!attribute enforce_message_signing
    #   <p> Determines whether or not unsigned messages from your trading partners will be accepted. </p> <ul> <li> <p> <code>ENABLED</code>: Transfer Family rejects unsigned messages from your trading partner.</p> </li> <li> <p> <code>DISABLED</code> (default value): Transfer Family accepts unsigned messages from your trading partner.</p> </li> </ul>
    #   @return [String]
    # @!attribute custom_directories
    #   <p>A <code>CustomDirectoriesType</code> structure. This structure specifies custom directories for storing various AS2 message files. You can specify directories for the following types of files.</p> <ul> <li> <p>Failed files</p> </li> <li> <p>MDN files</p> </li> <li> <p>Payload files</p> </li> <li> <p>Status files</p> </li> <li> <p>Temporary files</p> </li> </ul>
    #   @return [Types::CustomDirectoriesType]
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
      :custom_directories,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>The unique identifier for the agreement. Use this ID for deleting, or updating an agreement, as well as in any other API calls that require that you specify the agreement ID.</p>
    #   @return [String]
    class CreateAgreementResponse < Struct.new(
      :agreement_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute url
    #   <p>The URL of the partner's AS2 or SFTP endpoint.</p>
    #   @return [String]
    # @!attribute as2_config
    #   <p>A structure that contains the parameters for an AS2 connector object.</p>
    #   @return [Types::As2ConnectorConfig]
    # @!attribute access_role
    #   <p>Connectors are used to send files using either the AS2 or SFTP protocol. For the access role, provide the Amazon Resource Name (ARN) of the Identity and Access Management role to use.</p> <p> <b>For AS2 connectors</b> </p> <p>With AS2, you can send files by calling <code>StartFileTransfer</code> and specifying the file paths in the request parameter, <code>SendFilePaths</code>. We use the file’s parent directory (for example, for <code>--send-file-paths /bucket/dir/file.txt</code>, parent directory is <code>/bucket/dir/</code>) to temporarily store a processed AS2 message file, store the MDN when we receive them from the partner, and write a final JSON file containing relevant metadata of the transmission. So, the <code>AccessRole</code> needs to provide read and write access to the parent directory of the file location used in the <code>StartFileTransfer</code> request. Additionally, you need to provide read and write access to the parent directory of the files that you intend to send with <code>StartFileTransfer</code>.</p> <p>If you are using Basic authentication for your AS2 connector, the access role requires the <code>secretsmanager:GetSecretValue</code> permission for the secret. If the secret is encrypted using a customer-managed key instead of the Amazon Web Services managed key in Secrets Manager, then the role also needs the <code>kms:Decrypt</code> permission for that key.</p> <p> <b>For SFTP connectors</b> </p> <p>Make sure that the access role provides read and write access to the parent directory of the file location that's used in the <code>StartFileTransfer</code> request. Additionally, make sure that the role provides <code>secretsmanager:GetSecretValue</code> permission to Secrets Manager.</p>
    #   @return [String]
    # @!attribute logging_role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that allows a connector to turn on CloudWatch logging for Amazon S3 events. When set, you can view connector activity in your CloudWatch logs.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for connectors. Tags are metadata attached to connectors for any purpose.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute sftp_config
    #   <p>A structure that contains the parameters for an SFTP connector object.</p>
    #   @return [Types::SftpConnectorConfig]
    # @!attribute security_policy_name
    #   <p>Specifies the name of the security policy for the connector.</p>
    #   @return [String]
    class CreateConnectorRequest < Struct.new(
      :url,
      :as2_config,
      :access_role,
      :logging_role,
      :tags,
      :sftp_config,
      :security_policy_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>The unique identifier for the connector, returned after the API call succeeds.</p>
    #   @return [String]
    class CreateConnectorResponse < Struct.new(
      :connector_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute as2_id
    #   <p>The <code>As2Id</code> is the <i>AS2-name</i>, as defined in the <a href="https://datatracker.ietf.org/doc/html/rfc4130">RFC 4130</a>. For inbound transfers, this is the <code>AS2-From</code> header for the AS2 messages sent from the partner. For outbound connectors, this is the <code>AS2-To</code> header for the AS2 messages sent to the partner using the <code>StartFileTransfer</code> API operation. This ID cannot include spaces.</p>
    #   @return [String]
    # @!attribute profile_type
    #   <p>Determines the type of profile to create:</p> <ul> <li> <p>Specify <code>LOCAL</code> to create a local profile. A local profile represents the AS2-enabled Transfer Family server organization or party.</p> </li> <li> <p>Specify <code>PARTNER</code> to create a partner profile. A partner profile represents a remote organization, external to Transfer Family.</p> </li> </ul>
    #   @return [String]
    # @!attribute certificate_ids
    #   <p>An array of identifiers for the imported certificates. You use this identifier for working with profiles and partner profiles.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for AS2 profiles.</p>
    #   @return [Array<Types::Tag>]
    class CreateProfileRequest < Struct.new(
      :as2_id,
      :profile_type,
      :certificate_ids,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier for the AS2 profile, returned after the API call succeeds.</p>
    #   @return [String]
    class CreateProfileResponse < Struct.new(
      :profile_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute certificate
    #   <p>The Amazon Resource Name (ARN) of the Certificate Manager (ACM) certificate. Required when <code>Protocols</code> is set to <code>FTPS</code>.</p> <p>To request a new public certificate, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html">Request a public certificate</a> in the <i>Certificate Manager User Guide</i>.</p> <p>To import an existing certificate into ACM, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing certificates into ACM</a> in the <i>Certificate Manager User Guide</i>.</p> <p>To request a private certificate to use FTPS through private IP addresses, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html">Request a private certificate</a> in the <i>Certificate Manager User Guide</i>.</p> <p>Certificates with the following cryptographic algorithms and key sizes are supported:</p> <ul> <li> <p>2048-bit RSA (RSA_2048)</p> </li> <li> <p>4096-bit RSA (RSA_4096)</p> </li> <li> <p>Elliptic Prime Curve 256 bit (EC_prime256v1)</p> </li> <li> <p>Elliptic Prime Curve 384 bit (EC_secp384r1)</p> </li> <li> <p>Elliptic Prime Curve 521 bit (EC_secp521r1)</p> </li> </ul> <note> <p>The certificate must be a valid SSL/TLS X.509 version 3 certificate with FQDN or IP address specified and information about the issuer.</p> </note>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain of the storage system that is used for file transfers. There are two domains available: Amazon Simple Storage Service (Amazon S3) and Amazon Elastic File System (Amazon EFS). The default value is S3.</p> <note> <p>After the server is created, the domain cannot be changed.</p> </note>
    #   @return [String]
    # @!attribute endpoint_details
    #   <p>The virtual private cloud (VPC) endpoint settings that are configured for your server. When you host your endpoint within your VPC, you can make your endpoint accessible only to resources within your VPC, or you can attach Elastic IP addresses and make your endpoint accessible to clients over the internet. Your VPC's default security groups are automatically assigned to your endpoint.</p>
    #   @return [Types::EndpointDetails]
    # @!attribute endpoint_type
    #   <p>The type of endpoint that you want your server to use. You can choose to make your server's endpoint publicly accessible (PUBLIC) or host it inside your VPC. With an endpoint that is hosted in a VPC, you can restrict access to your server and resources only within your VPC or choose to make it internet facing by attaching Elastic IP addresses directly to it.</p> <note> <p> After May 19, 2021, you won't be able to create a server using <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Services account if your account hasn't already done so before May 19, 2021. If you have already created servers with <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Services account on or before May 19, 2021, you will not be affected. After this date, use <code>EndpointType</code>=<code>VPC</code>.</p> <p>For more information, see https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.</p> <p>It is recommended that you use <code>VPC</code> as the <code>EndpointType</code>. With this endpoint type, you have the option to directly associate up to three Elastic IPv4 addresses (BYO IP included) with your server's endpoint and use VPC security groups to restrict traffic by the client's public IP address. This is not possible with <code>EndpointType</code> set to <code>VPC_ENDPOINT</code>.</p> </note>
    #   @return [String]
    # @!attribute host_key
    #   <p>The RSA, ECDSA, or ED25519 private key to use for your SFTP-enabled server. You can add multiple host keys, in case you want to rotate keys, or have a set of active keys that use different algorithms.</p> <p>Use the following command to generate an RSA 2048 bit key with no passphrase:</p> <p> <code>ssh-keygen -t rsa -b 2048 -N "" -m PEM -f my-new-server-key</code>.</p> <p>Use a minimum value of 2048 for the <code>-b</code> option. You can create a stronger key by using 3072 or 4096.</p> <p>Use the following command to generate an ECDSA 256 bit key with no passphrase:</p> <p> <code>ssh-keygen -t ecdsa -b 256 -N "" -m PEM -f my-new-server-key</code>.</p> <p>Valid values for the <code>-b</code> option for ECDSA are 256, 384, and 521.</p> <p>Use the following command to generate an ED25519 key with no passphrase:</p> <p> <code>ssh-keygen -t ed25519 -N "" -f my-new-server-key</code>.</p> <p>For all of these commands, you can replace <i>my-new-server-key</i> with a string of your choice.</p> <important> <p>If you aren't planning to migrate existing users from an existing SFTP-enabled server to a new server, don't update the host key. Accidentally changing a server's host key can be disruptive.</p> </important> <p>For more information, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key">Manage host keys for your SFTP-enabled server</a> in the <i>Transfer Family User Guide</i>.</p>
    #   @return [String]
    # @!attribute identity_provider_details
    #   <p>Required when <code>IdentityProviderType</code> is set to <code>AWS_DIRECTORY_SERVICE</code>, <code>Amazon Web Services_LAMBDA</code> or <code>API_GATEWAY</code>. Accepts an array containing all of the information required to use a directory in <code>AWS_DIRECTORY_SERVICE</code> or invoke a customer-supplied authentication API, including the API Gateway URL. Cannot be specified when <code>IdentityProviderType</code> is set to <code>SERVICE_MANAGED</code>.</p>
    #   @return [Types::IdentityProviderDetails]
    # @!attribute identity_provider_type
    #   <p>The mode of authentication for a server. The default value is <code>SERVICE_MANAGED</code>, which allows you to store and access user credentials within the Transfer Family service.</p> <p>Use <code>AWS_DIRECTORY_SERVICE</code> to provide access to Active Directory groups in Directory Service for Microsoft Active Directory or Microsoft Active Directory in your on-premises environment or in Amazon Web Services using AD Connector. This option also requires you to provide a Directory ID by using the <code>IdentityProviderDetails</code> parameter.</p> <p>Use the <code>API_GATEWAY</code> value to integrate with an identity provider of your choosing. The <code>API_GATEWAY</code> setting requires you to provide an Amazon API Gateway endpoint URL to call for authentication by using the <code>IdentityProviderDetails</code> parameter.</p> <p>Use the <code>AWS_LAMBDA</code> value to directly use an Lambda function as your identity provider. If you choose this value, you must specify the ARN for the Lambda function in the <code>Function</code> parameter for the <code>IdentityProviderDetails</code> data type.</p>
    #   @return [String]
    # @!attribute logging_role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that allows a server to turn on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, you can view user activity in your CloudWatch logs.</p>
    #   @return [String]
    # @!attribute post_authentication_login_banner
    #   <p>Specifies a string to display when users connect to a server. This string is displayed after the user authenticates.</p> <note> <p>The SFTP protocol does not support post-authentication display banners.</p> </note>
    #   @return [String]
    # @!attribute pre_authentication_login_banner
    #   <p>Specifies a string to display when users connect to a server. This string is displayed before the user authenticates. For example, the following banner displays details about using the system:</p> <p> <code>This system is for the use of authorized users only. Individuals using this computer system without authority, or in excess of their authority, are subject to having all of their activities on this system monitored and recorded by system personnel.</code> </p>
    #   @return [String]
    # @!attribute protocols
    #   <p>Specifies the file transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint. The available protocols are:</p> <ul> <li> <p> <code>SFTP</code> (Secure Shell (SSH) File Transfer Protocol): File transfer over SSH</p> </li> <li> <p> <code>FTPS</code> (File Transfer Protocol Secure): File transfer with TLS encryption</p> </li> <li> <p> <code>FTP</code> (File Transfer Protocol): Unencrypted file transfer</p> </li> <li> <p> <code>AS2</code> (Applicability Statement 2): used for transporting structured business-to-business data</p> </li> </ul> <note> <ul> <li> <p>If you select <code>FTPS</code>, you must choose a certificate stored in Certificate Manager (ACM) which is used to identify your server when clients connect to it over FTPS.</p> </li> <li> <p>If <code>Protocol</code> includes either <code>FTP</code> or <code>FTPS</code>, then the <code>EndpointType</code> must be <code>VPC</code> and the <code>IdentityProviderType</code> must be either <code>AWS_DIRECTORY_SERVICE</code>, <code>AWS_LAMBDA</code>, or <code>API_GATEWAY</code>.</p> </li> <li> <p>If <code>Protocol</code> includes <code>FTP</code>, then <code>AddressAllocationIds</code> cannot be associated.</p> </li> <li> <p>If <code>Protocol</code> is set only to <code>SFTP</code>, the <code>EndpointType</code> can be set to <code>PUBLIC</code> and the <code>IdentityProviderType</code> can be set any of the supported identity types: <code>SERVICE_MANAGED</code>, <code>AWS_DIRECTORY_SERVICE</code>, <code>AWS_LAMBDA</code>, or <code>API_GATEWAY</code>.</p> </li> <li> <p>If <code>Protocol</code> includes <code>AS2</code>, then the <code>EndpointType</code> must be <code>VPC</code>, and domain must be Amazon S3.</p> </li> </ul> </note>
    #   @return [Array<String>]
    # @!attribute protocol_details
    #   <p>The protocol settings that are configured for your server.</p> <ul> <li> <p> To indicate passive mode (for FTP and FTPS protocols), use the <code>PassiveIp</code> parameter. Enter a single dotted-quad IPv4 address, such as the external IP address of a firewall, router, or load balancer. </p> </li> <li> <p>To ignore the error that is generated when the client attempts to use the <code>SETSTAT</code> command on a file that you are uploading to an Amazon S3 bucket, use the <code>SetStatOption</code> parameter. To have the Transfer Family server ignore the <code>SETSTAT</code> command and upload files without needing to make any changes to your SFTP client, set the value to <code>ENABLE_NO_OP</code>. If you set the <code>SetStatOption</code> parameter to <code>ENABLE_NO_OP</code>, Transfer Family generates a log entry to Amazon CloudWatch Logs, so that you can determine when the client is making a <code>SETSTAT</code> call.</p> </li> <li> <p>To determine whether your Transfer Family server resumes recent, negotiated sessions through a unique session ID, use the <code>TlsSessionResumptionMode</code> parameter.</p> </li> <li> <p> <code>As2Transports</code> indicates the transport method for the AS2 messages. Currently, only HTTP is supported.</p> </li> </ul>
    #   @return [Types::ProtocolDetails]
    # @!attribute security_policy_name
    #   <p>Specifies the name of the security policy for the server.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for servers.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute workflow_details
    #   <p>Specifies the workflow ID for the workflow to assign and the execution role that's used for executing the workflow.</p> <p>In addition to a workflow to execute when a file is uploaded completely, <code>WorkflowDetails</code> can also contain a workflow ID (and execution role) for a workflow to execute on partial upload. A partial upload occurs when the server session disconnects while the file is still being uploaded.</p>
    #   @return [Types::WorkflowDetails]
    # @!attribute structured_log_destinations
    #   <p>Specifies the log groups to which your server logs are sent.</p> <p>To specify a log group, you must provide the ARN for an existing log group. In this case, the format of the log group is as follows:</p> <p> <code>arn:aws:logs:region-name:amazon-account-id:log-group:log-group-name:*</code> </p> <p>For example, <code>arn:aws:logs:us-east-1:111122223333:log-group:mytestgroup:*</code> </p> <p>If you have previously specified a log group for a server, you can clear it, and in effect turn off structured logging, by providing an empty value for this parameter in an <code>update-server</code> call. For example:</p> <p> <code>update-server --server-id s-1234567890abcdef0 --structured-log-destinations</code> </p>
    #   @return [Array<String>]
    # @!attribute s3_storage_options
    #   <p>Specifies whether or not performance for your Amazon S3 directories is optimized. This is disabled by default.</p> <p>By default, home directory mappings have a <code>TYPE</code> of <code>DIRECTORY</code>. If you enable this option, you would then need to explicitly set the <code>HomeDirectoryMapEntry</code> <code>Type</code> to <code>FILE</code> if you want a mapping to have a file target.</p>
    #   @return [Types::S3StorageOptions]
    # @!attribute ip_address_type
    #   <p>Specifies whether to use IPv4 only, or to use dual-stack (IPv4 and IPv6) for your Transfer Family endpoint. The default value is <code>IPV4</code>.</p> <important> <p>The <code>IpAddressType</code> parameter has the following limitations:</p> <ul> <li> <p>It cannot be changed while the server is online. You must stop the server before modifying this parameter.</p> </li> <li> <p>It cannot be updated to <code>DUALSTACK</code> if the server has <code>AddressAllocationIds</code> specified.</p> </li> </ul> </important> <note> <p>When using <code>DUALSTACK</code> as the <code>IpAddressType</code>, you cannot set the <code>AddressAllocationIds</code> parameter for the <a href="https://docs.aws.amazon.com/transfer/latest/APIReference/API_EndpointDetails.html">EndpointDetails</a> for the server.</p> </note>
    #   @return [String]
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
      :ip_address_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>The service-assigned identifier of the server that is created.</p>
    #   @return [String]
    class CreateServerResponse < Struct.new(
      :server_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p> <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p> <note> <p>You can use the <code>HomeDirectory</code> parameter for <code>HomeDirectoryType</code> when it is set to either <code>PATH</code> or <code>LOGICAL</code>.</p> </note>
    #   @return [String]
    # @!attribute home_directory_type
    #   <p>The type of landing directory (folder) that you want your users' home directory to be when they log in to the server. If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or Amazon EFS path as is in their file transfer protocol clients. If you set it to <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 or Amazon EFS paths visible to your users.</p> <note> <p>If <code>HomeDirectoryType</code> is <code>LOGICAL</code>, you must provide mappings, using the <code>HomeDirectoryMappings</code> parameter. If, on the other hand, <code>HomeDirectoryType</code> is <code>PATH</code>, you provide an absolute path using the <code>HomeDirectory</code> parameter. You cannot have both <code>HomeDirectory</code> and <code>HomeDirectoryMappings</code> in your template.</p> </note>
    #   @return [String]
    # @!attribute home_directory_mappings
    #   <p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should be visible to your user and how you want to make them visible. You must specify the <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you only specify a target, it is displayed as is. You also must ensure that your Identity and Access Management (IAM) role provides access to paths in <code>Target</code>. This value can be set only when <code>HomeDirectoryType</code> is set to <i>LOGICAL</i>.</p> <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p> <p> <code>[ { "Entry": "/directory1", "Target": "/bucket_name/home/mydirectory" } ]</code> </p> <p>In most cases, you can use this value instead of the session policy to lock your user down to the designated home directory ("<code>chroot</code>"). To do this, you can set <code>Entry</code> to <code>/</code> and set <code>Target</code> to the value the user should see for their home directory when they log in.</p> <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p> <p> <code>[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]</code> </p>
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    # @!attribute policy
    #   <p>A session policy for your user so that you can use the same Identity and Access Management (IAM) role across multiple users. This policy scopes down a user's access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>, <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p> <note> <p>This policy applies only when the domain of <code>ServerId</code> is Amazon S3. Amazon EFS does not use session policies.</p> <p>For session policies, Transfer Family stores the policy as a JSON blob, instead of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass it in the <code>Policy</code> argument.</p> <p>For an example of a session policy, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html">Example session policy</a>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html">AssumeRole</a> in the <i>Amazon Web Services Security Token Service API Reference</i>.</p> </note>
    #   @return [String]
    # @!attribute posix_profile
    #   <p>Specifies the full POSIX identity, including user ID (<code>Uid</code>), group ID (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls your users' access to your Amazon EFS file systems. The POSIX permissions that are set on files and directories in Amazon EFS determine the level of access your users get when transferring files into and out of your Amazon EFS file systems.</p>
    #   @return [Types::PosixProfile]
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that controls your users' access to your Amazon S3 bucket or Amazon EFS file system. The policies attached to this role determine the level of access that you want to provide your users when transferring files into and out of your Amazon S3 bucket or Amazon EFS file system. The IAM role should also contain a trust relationship that allows the server to access your resources when servicing your users' transfer requests.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server instance. This is the specific server that you added your user to.</p>
    #   @return [String]
    # @!attribute ssh_public_key_body
    #   <p>The public portion of the Secure Shell (SSH) key used to authenticate the user to the server.</p> <p>The three standard SSH public key format elements are <code>&lt;key type&gt;</code>, <code>&lt;body base64&gt;</code>, and an optional <code>&lt;comment&gt;</code>, with spaces between each element.</p> <p>Transfer Family accepts RSA, ECDSA, and ED25519 keys.</p> <ul> <li> <p>For RSA keys, the key type is <code>ssh-rsa</code>.</p> </li> <li> <p>For ED25519 keys, the key type is <code>ssh-ed25519</code>.</p> </li> <li> <p>For ECDSA keys, the key type is either <code>ecdsa-sha2-nistp256</code>, <code>ecdsa-sha2-nistp384</code>, or <code>ecdsa-sha2-nistp521</code>, depending on the size of the key you generated.</p> </li> </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for users. Tags are metadata attached to users for any purpose.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute user_name
    #   <p>A unique string that identifies a user and is associated with a <code>ServerId</code>. This user name must be a minimum of 3 and a maximum of 100 characters long. The following are valid characters: a-z, A-Z, 0-9, underscore '_', hyphen '-', period '.', and at sign '@'. The user name can't start with a hyphen, period, or at sign.</p>
    #   @return [String]
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
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>The identifier of the server that the user is attached to.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>A unique string that identifies a Transfer Family user.</p>
    #   @return [String]
    class CreateUserResponse < Struct.new(
      :server_id,
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute identity_provider_details
    #   <p>You can provide a structure that contains the details for the identity provider to use with your web app.</p> <p>For more details about this parameter, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/webapp-identity-center.html">Configure your identity provider for Transfer Family web apps</a>.</p>
    #   @return [Types::WebAppIdentityProviderDetails]
    # @!attribute access_endpoint
    #   <p>The <code>AccessEndpoint</code> is the URL that you provide to your users for them to interact with the Transfer Family web app. You can specify a custom URL or use the default value.</p> <p>Before you enter a custom URL for this parameter, follow the steps described in <a href="https://docs.aws.amazon.com/transfer/latest/userguide/webapp-customize.html">Update your access endpoint with a custom URL</a>.</p>
    #   @return [String]
    # @!attribute web_app_units
    #   <p>A union that contains the value for number of concurrent connections or the user sessions on your web app.</p>
    #   @return [Types::WebAppUnits]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for web apps.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute web_app_endpoint_policy
    #   <p> Setting for the type of endpoint policy for the web app. The default value is <code>STANDARD</code>. </p> <p>If you are creating the web app in an Amazon Web Services GovCloud (US) Region, you can set this parameter to <code>FIPS</code>.</p>
    #   @return [String]
    class CreateWebAppRequest < Struct.new(
      :identity_provider_details,
      :access_endpoint,
      :web_app_units,
      :tags,
      :web_app_endpoint_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute web_app_id
    #   <p>Returns a unique identifier for the web app.</p>
    #   @return [String]
    class CreateWebAppResponse < Struct.new(
      :web_app_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>A textual description for the workflow.</p>
    #   @return [String]
    # @!attribute steps
    #   <p>Specifies the details for the steps that are in the specified workflow.</p> <p> The <code>TYPE</code> specifies which of the following actions is being taken for this step. </p> <ul> <li> <p> <b> <code>COPY</code> </b> - Copy the file to another location.</p> </li> <li> <p> <b> <code>CUSTOM</code> </b> - Perform a custom step with an Lambda function target.</p> </li> <li> <p> <b> <code>DECRYPT</code> </b> - Decrypt a file that was encrypted before it was uploaded.</p> </li> <li> <p> <b> <code>DELETE</code> </b> - Delete the file.</p> </li> <li> <p> <b> <code>TAG</code> </b> - Add a tag to the file.</p> </li> </ul> <note> <p> Currently, copying and tagging are supported only on S3. </p> </note> <p> For file location, you specify either the Amazon S3 bucket and key, or the Amazon EFS file system ID and path. </p>
    #   @return [Array<Types::WorkflowStep>]
    # @!attribute on_exception_steps
    #   <p>Specifies the steps (actions) to take if errors are encountered during execution of the workflow.</p> <note> <p>For custom steps, the Lambda function needs to send <code>FAILURE</code> to the call back API to kick off the exception steps. Additionally, if the Lambda does not send <code>SUCCESS</code> before it times out, the exception steps are executed.</p> </note>
    #   @return [Array<Types::WorkflowStep>]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for workflows. Tags are metadata attached to workflows for any purpose.</p>
    #   @return [Array<Types::Tag>]
    class CreateWorkflowRequest < Struct.new(
      :description,
      :steps,
      :on_exception_steps,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #   @return [String]
    class CreateWorkflowResponse < Struct.new(
      :workflow_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains Amazon S3 locations for storing specific types of AS2 message files.</p>
    # @!attribute failed_files_directory
    #   <p>Specifies a location to store failed AS2 message files.</p>
    #   @return [String]
    # @!attribute mdn_files_directory
    #   <p>Specifies a location to store MDN files.</p>
    #   @return [String]
    # @!attribute payload_files_directory
    #   <p>Specifies a location to store the payload for AS2 message files.</p>
    #   @return [String]
    # @!attribute status_files_directory
    #   <p>Specifies a location to store AS2 status messages.</p>
    #   @return [String]
    # @!attribute temporary_files_directory
    #   <p>Specifies a location to store temporary AS2 message files.</p>
    #   @return [String]
    class CustomDirectoriesType < Struct.new(
      :failed_files_directory,
      :mdn_files_directory,
      :payload_files_directory,
      :status_files_directory,
      :temporary_files_directory,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Each step type has its own <code>StepDetails</code> structure.</p>
    # @!attribute name
    #   <p>The name of the step, used as an identifier.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The ARN for the Lambda function that is being called.</p>
    #   @return [String]
    # @!attribute timeout_seconds
    #   <p>Timeout, in seconds, for the step.</p>
    #   @return [Integer]
    # @!attribute source_file_location
    #   <p>Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow.</p> <ul> <li> <p>To use the previous file as the input, enter <code>${previous.file}</code>. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value.</p> </li> <li> <p>To use the originally uploaded file location as input for this step, enter <code>${original.file}</code>.</p> </li> </ul>
    #   @return [String]
    class CustomStepDetails < Struct.new(
      :name,
      :target,
      :timeout_seconds,
      :source_file_location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CustomStepStatus
      SUCCESS = 'SUCCESS'
      FAILURE = 'FAILURE'
    end

    # <p>Each step type has its own <code>StepDetails</code> structure.</p>
    # @!attribute name
    #   <p>The name of the step, used as an identifier.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of encryption used. Currently, this value must be <code>PGP</code>.</p>
    #   @return [String]
    # @!attribute source_file_location
    #   <p>Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow.</p> <ul> <li> <p>To use the previous file as the input, enter <code>${previous.file}</code>. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value.</p> </li> <li> <p>To use the originally uploaded file location as input for this step, enter <code>${original.file}</code>.</p> </li> </ul>
    #   @return [String]
    # @!attribute overwrite_existing
    #   <p>A flag that indicates whether to overwrite an existing file of the same name. The default is <code>FALSE</code>.</p> <p>If the workflow is processing a file that has the same name as an existing file, the behavior is as follows:</p> <ul> <li> <p>If <code>OverwriteExisting</code> is <code>TRUE</code>, the existing file is replaced with the file being processed.</p> </li> <li> <p>If <code>OverwriteExisting</code> is <code>FALSE</code>, nothing happens, and the workflow processing stops.</p> </li> </ul>
    #   @return [String]
    # @!attribute destination_file_location
    #   <p>Specifies the location for the file being decrypted. Use <code>${Transfer:UserName}</code> or <code>${Transfer:UploadDate}</code> in this field to parametrize the destination prefix by username or uploaded date.</p> <ul> <li> <p>Set the value of <code>DestinationFileLocation</code> to <code>${Transfer:UserName}</code> to decrypt uploaded files to an Amazon S3 bucket that is prefixed with the name of the Transfer Family user that uploaded the file.</p> </li> <li> <p>Set the value of <code>DestinationFileLocation</code> to <code>${Transfer:UploadDate}</code> to decrypt uploaded files to an Amazon S3 bucket that is prefixed with the date of the upload.</p> <note> <p>The system resolves <code>UploadDate</code> to a date format of <i>YYYY-MM-DD</i>, based on the date the file is uploaded in UTC.</p> </note> </li> </ul>
    #   @return [Types::InputFileLocation]
    class DecryptStepDetails < Struct.new(
      :name,
      :type,
      :source_file_location,
      :overwrite_existing,
      :destination_file_location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that has this user assigned.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>A unique identifier that is required to identify specific groups within your directory. The users of the group that you associate have access to your Amazon S3 or Amazon EFS resources over the enabled protocols using Transfer Family. If you know the group name, you can view the SID values by running the following command using Windows PowerShell.</p> <p> <code>Get-ADGroup -Filter {samAccountName -like "<i>YourGroupName</i>*"} -Properties * | Select SamAccountName,ObjectSid</code> </p> <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p> <p>The regular expression used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-</p>
    #   @return [String]
    class DeleteAccessRequest < Struct.new(
      :server_id,
      :external_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>A unique identifier for the agreement. This identifier is returned when you create an agreement.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>The server identifier associated with the agreement that you are deleting.</p>
    #   @return [String]
    class DeleteAgreementRequest < Struct.new(
      :agreement_id,
      :server_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute certificate_id
    #   <p>The identifier of the certificate object that you are deleting.</p>
    #   @return [String]
    class DeleteCertificateRequest < Struct.new(
      :certificate_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>The unique identifier for the connector.</p>
    #   @return [String]
    class DeleteConnectorRequest < Struct.new(
      :connector_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>The identifier of the server that contains the host key that you are deleting.</p>
    #   @return [String]
    # @!attribute host_key_id
    #   <p>The identifier of the host key that you are deleting.</p>
    #   @return [String]
    class DeleteHostKeyRequest < Struct.new(
      :server_id,
      :host_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The identifier of the profile that you are deleting.</p>
    #   @return [String]
    class DeleteProfileRequest < Struct.new(
      :profile_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>A unique system-assigned identifier for a server instance.</p>
    #   @return [String]
    class DeleteServerRequest < Struct.new(
      :server_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a file transfer protocol-enabled server instance that has the user assigned to it.</p>
    #   @return [String]
    # @!attribute ssh_public_key_id
    #   <p>A unique identifier used to reference your user's specific SSH key.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>A unique string that identifies a user whose public key is being deleted.</p>
    #   @return [String]
    class DeleteSshPublicKeyRequest < Struct.new(
      :server_id,
      :ssh_public_key_id,
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The name of the step, used to identify the delete step.</p>
    # @!attribute name
    #   <p>The name of the step, used as an identifier.</p>
    #   @return [String]
    # @!attribute source_file_location
    #   <p>Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow.</p> <ul> <li> <p>To use the previous file as the input, enter <code>${previous.file}</code>. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value.</p> </li> <li> <p>To use the originally uploaded file location as input for this step, enter <code>${original.file}</code>.</p> </li> </ul>
    #   @return [String]
    class DeleteStepDetails < Struct.new(
      :name,
      :source_file_location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server instance that has the user assigned to it.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>A unique string that identifies a user that is being deleted from a server.</p>
    #   @return [String]
    class DeleteUserRequest < Struct.new(
      :server_id,
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute web_app_id
    #   <p>Provide the unique identifier for the web app that contains the customizations that you are deleting.</p>
    #   @return [String]
    class DeleteWebAppCustomizationRequest < Struct.new(
      :web_app_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute web_app_id
    #   <p>Provide the unique identifier for the web app that you are deleting.</p>
    #   @return [String]
    class DeleteWebAppRequest < Struct.new(
      :web_app_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #   @return [String]
    class DeleteWorkflowRequest < Struct.new(
      :workflow_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that has this access assigned.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>A unique identifier that is required to identify specific groups within your directory. The users of the group that you associate have access to your Amazon S3 or Amazon EFS resources over the enabled protocols using Transfer Family. If you know the group name, you can view the SID values by running the following command using Windows PowerShell.</p> <p> <code>Get-ADGroup -Filter {samAccountName -like "<i>YourGroupName</i>*"} -Properties * | Select SamAccountName,ObjectSid</code> </p> <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p> <p>The regular expression used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-</p>
    #   @return [String]
    class DescribeAccessRequest < Struct.new(
      :server_id,
      :external_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that has this access assigned.</p>
    #   @return [String]
    # @!attribute access
    #   <p>The external identifier of the server that the access is attached to.</p>
    #   @return [Types::DescribedAccess]
    class DescribeAccessResponse < Struct.new(
      :server_id,
      :access,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>A unique identifier for the agreement. This identifier is returned when you create an agreement.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>The server identifier that's associated with the agreement.</p>
    #   @return [String]
    class DescribeAgreementRequest < Struct.new(
      :agreement_id,
      :server_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute agreement
    #   <p>The details for the specified agreement, returned as a <code>DescribedAgreement</code> object.</p>
    #   @return [Types::DescribedAgreement]
    class DescribeAgreementResponse < Struct.new(
      :agreement,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute certificate_id
    #   <p>An array of identifiers for the imported certificates. You use this identifier for working with profiles and partner profiles.</p>
    #   @return [String]
    class DescribeCertificateRequest < Struct.new(
      :certificate_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute certificate
    #   <p>The details for the specified certificate, returned as an object.</p>
    #   @return [Types::DescribedCertificate]
    class DescribeCertificateResponse < Struct.new(
      :certificate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>The unique identifier for the connector.</p>
    #   @return [String]
    class DescribeConnectorRequest < Struct.new(
      :connector_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector
    #   <p>The structure that contains the details of the connector.</p>
    #   @return [Types::DescribedConnector]
    class DescribeConnectorResponse < Struct.new(
      :connector,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute execution_id
    #   <p>A unique identifier for the execution of a workflow.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #   @return [String]
    class DescribeExecutionRequest < Struct.new(
      :execution_id,
      :workflow_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #   @return [String]
    # @!attribute execution
    #   <p>The structure that contains the details of the workflow' execution.</p>
    #   @return [Types::DescribedExecution]
    class DescribeExecutionResponse < Struct.new(
      :workflow_id,
      :execution,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>The identifier of the server that contains the host key that you want described.</p>
    #   @return [String]
    # @!attribute host_key_id
    #   <p>The identifier of the host key that you want described.</p>
    #   @return [String]
    class DescribeHostKeyRequest < Struct.new(
      :server_id,
      :host_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute host_key
    #   <p>Returns the details for the specified host key.</p>
    #   @return [Types::DescribedHostKey]
    class DescribeHostKeyResponse < Struct.new(
      :host_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The identifier of the profile that you want described.</p>
    #   @return [String]
    class DescribeProfileRequest < Struct.new(
      :profile_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile
    #   <p>The details of the specified profile, returned as an object.</p>
    #   @return [Types::DescribedProfile]
    class DescribeProfileResponse < Struct.new(
      :profile,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute security_policy_name
    #   <p>Specify the text name of the security policy for which you want the details.</p>
    #   @return [String]
    class DescribeSecurityPolicyRequest < Struct.new(
      :security_policy_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute security_policy
    #   <p>An array containing the properties of the security policy.</p>
    #   @return [Types::DescribedSecurityPolicy]
    class DescribeSecurityPolicyResponse < Struct.new(
      :security_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server.</p>
    #   @return [String]
    class DescribeServerRequest < Struct.new(
      :server_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server
    #   <p>An array containing the properties of a server with the <code>ServerID</code> you specified.</p>
    #   @return [Types::DescribedServer]
    class DescribeServerResponse < Struct.new(
      :server,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that has this user assigned.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The name of the user assigned to one or more servers. User names are part of the sign-in credentials to use the Transfer Family service and perform file transfer tasks.</p>
    #   @return [String]
    class DescribeUserRequest < Struct.new(
      :server_id,
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that has this user assigned.</p>
    #   @return [String]
    # @!attribute user
    #   <p>An array containing the properties of the Transfer Family user for the <code>ServerID</code> value that you specified.</p>
    #   @return [Types::DescribedUser]
    class DescribeUserResponse < Struct.new(
      :server_id,
      :user,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute web_app_id
    #   <p>Provide the unique identifier for the web app.</p>
    #   @return [String]
    class DescribeWebAppCustomizationRequest < Struct.new(
      :web_app_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute web_app_customization
    #   <p>Returns a structure that contains the details of the web app customizations.</p>
    #   @return [Types::DescribedWebAppCustomization]
    class DescribeWebAppCustomizationResponse < Struct.new(
      :web_app_customization,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute web_app_id
    #   <p>Provide the unique identifier for the web app.</p>
    #   @return [String]
    class DescribeWebAppRequest < Struct.new(
      :web_app_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute web_app
    #   <p>Returns a structure that contains the details of the web app.</p>
    #   @return [Types::DescribedWebApp]
    class DescribeWebAppResponse < Struct.new(
      :web_app,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #   @return [String]
    class DescribeWorkflowRequest < Struct.new(
      :workflow_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workflow
    #   <p>The structure that contains the details of the workflow.</p>
    #   @return [Types::DescribedWorkflow]
    class DescribeWorkflowResponse < Struct.new(
      :workflow,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the properties of the access that was specified.</p>
    # @!attribute home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p> <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p> <note> <p>You can use the <code>HomeDirectory</code> parameter for <code>HomeDirectoryType</code> when it is set to either <code>PATH</code> or <code>LOGICAL</code>.</p> </note>
    #   @return [String]
    # @!attribute home_directory_mappings
    #   <p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should be visible to your user and how you want to make them visible. You must specify the <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you only specify a target, it is displayed as is. You also must ensure that your Identity and Access Management (IAM) role provides access to paths in <code>Target</code>. This value can be set only when <code>HomeDirectoryType</code> is set to <i>LOGICAL</i>.</p> <p>In most cases, you can use this value instead of the session policy to lock down the associated access to the designated home directory ("<code>chroot</code>"). To do this, you can set <code>Entry</code> to '/' and set <code>Target</code> to the <code>HomeDirectory</code> parameter value.</p>
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    # @!attribute home_directory_type
    #   <p>The type of landing directory (folder) that you want your users' home directory to be when they log in to the server. If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or Amazon EFS path as is in their file transfer protocol clients. If you set it to <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 or Amazon EFS paths visible to your users.</p> <note> <p>If <code>HomeDirectoryType</code> is <code>LOGICAL</code>, you must provide mappings, using the <code>HomeDirectoryMappings</code> parameter. If, on the other hand, <code>HomeDirectoryType</code> is <code>PATH</code>, you provide an absolute path using the <code>HomeDirectory</code> parameter. You cannot have both <code>HomeDirectory</code> and <code>HomeDirectoryMappings</code> in your template.</p> </note>
    #   @return [String]
    # @!attribute policy
    #   <p>A session policy for your user so that you can use the same Identity and Access Management (IAM) role across multiple users. This policy scopes down a user's access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>, <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>
    #   @return [String]
    # @!attribute posix_profile
    #   <p>The full POSIX identity, including user ID (<code>Uid</code>), group ID (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls your users' access to your Amazon EFS file systems. The POSIX permissions that are set on files and directories in your file system determine the level of access your users get when transferring files into and out of your Amazon EFS file systems.</p>
    #   @return [Types::PosixProfile]
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that controls your users' access to your Amazon S3 bucket or Amazon EFS file system. The policies attached to this role determine the level of access that you want to provide your users when transferring files into and out of your Amazon S3 bucket or Amazon EFS file system. The IAM role should also contain a trust relationship that allows the server to access your resources when servicing your users' transfer requests.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>A unique identifier that is required to identify specific groups within your directory. The users of the group that you associate have access to your Amazon S3 or Amazon EFS resources over the enabled protocols using Transfer Family. If you know the group name, you can view the SID values by running the following command using Windows PowerShell.</p> <p> <code>Get-ADGroup -Filter {samAccountName -like "<i>YourGroupName</i>*"} -Properties * | Select SamAccountName,ObjectSid</code> </p> <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p> <p>The regular expression used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-</p>
    #   @return [String]
    class DescribedAccess < Struct.new(
      :home_directory,
      :home_directory_mappings,
      :home_directory_type,
      :policy,
      :posix_profile,
      :role,
      :external_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the properties of an agreement.</p>
    # @!attribute arn
    #   <p>The unique Amazon Resource Name (ARN) for the agreement.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>A unique identifier for the agreement. This identifier is returned when you create an agreement.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The name or short description that's used to identify the agreement.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the agreement, either <code>ACTIVE</code> or <code>INACTIVE</code>.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server instance. This identifier indicates the specific server that the agreement uses.</p>
    #   @return [String]
    # @!attribute local_profile_id
    #   <p>A unique identifier for the AS2 local profile.</p>
    #   @return [String]
    # @!attribute partner_profile_id
    #   <p>A unique identifier for the partner profile used in the agreement.</p>
    #   @return [String]
    # @!attribute base_directory
    #   <p>The landing directory (folder) for files that are transferred by using the AS2 protocol.</p>
    #   @return [String]
    # @!attribute access_role
    #   <p>Connectors are used to send files using either the AS2 or SFTP protocol. For the access role, provide the Amazon Resource Name (ARN) of the Identity and Access Management role to use.</p> <p> <b>For AS2 connectors</b> </p> <p>With AS2, you can send files by calling <code>StartFileTransfer</code> and specifying the file paths in the request parameter, <code>SendFilePaths</code>. We use the file’s parent directory (for example, for <code>--send-file-paths /bucket/dir/file.txt</code>, parent directory is <code>/bucket/dir/</code>) to temporarily store a processed AS2 message file, store the MDN when we receive them from the partner, and write a final JSON file containing relevant metadata of the transmission. So, the <code>AccessRole</code> needs to provide read and write access to the parent directory of the file location used in the <code>StartFileTransfer</code> request. Additionally, you need to provide read and write access to the parent directory of the files that you intend to send with <code>StartFileTransfer</code>.</p> <p>If you are using Basic authentication for your AS2 connector, the access role requires the <code>secretsmanager:GetSecretValue</code> permission for the secret. If the secret is encrypted using a customer-managed key instead of the Amazon Web Services managed key in Secrets Manager, then the role also needs the <code>kms:Decrypt</code> permission for that key.</p> <p> <b>For SFTP connectors</b> </p> <p>Make sure that the access role provides read and write access to the parent directory of the file location that's used in the <code>StartFileTransfer</code> request. Additionally, make sure that the role provides <code>secretsmanager:GetSecretValue</code> permission to Secrets Manager.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for agreements.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute preserve_filename
    #   <p> Determines whether or not Transfer Family appends a unique string of characters to the end of the AS2 message payload filename when saving it. </p> <ul> <li> <p> <code>ENABLED</code>: the filename provided by your trading parter is preserved when the file is saved.</p> </li> <li> <p> <code>DISABLED</code> (default value): when Transfer Family saves the file, the filename is adjusted, as described in <a href="https://docs.aws.amazon.com/transfer/latest/userguide/send-as2-messages.html#file-names-as2">File names and locations</a>.</p> </li> </ul>
    #   @return [String]
    # @!attribute enforce_message_signing
    #   <p> Determines whether or not unsigned messages from your trading partners will be accepted. </p> <ul> <li> <p> <code>ENABLED</code>: Transfer Family rejects unsigned messages from your trading partner.</p> </li> <li> <p> <code>DISABLED</code> (default value): Transfer Family accepts unsigned messages from your trading partner.</p> </li> </ul>
    #   @return [String]
    # @!attribute custom_directories
    #   <p>A <code>CustomDirectoriesType</code> structure. This structure specifies custom directories for storing various AS2 message files. You can specify directories for the following types of files.</p> <ul> <li> <p>Failed files</p> </li> <li> <p>MDN files</p> </li> <li> <p>Payload files</p> </li> <li> <p>Status files</p> </li> <li> <p>Temporary files</p> </li> </ul>
    #   @return [Types::CustomDirectoriesType]
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
      :custom_directories,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the properties of a certificate.</p>
    # @!attribute arn
    #   <p>The unique Amazon Resource Name (ARN) for the certificate.</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>An array of identifiers for the imported certificates. You use this identifier for working with profiles and partner profiles.</p>
    #   @return [String]
    # @!attribute usage
    #   <p>Specifies how this certificate is used. It can be used in the following ways:</p> <ul> <li> <p> <code>SIGNING</code>: For signing AS2 messages</p> </li> <li> <p> <code>ENCRYPTION</code>: For encrypting AS2 messages</p> </li> <li> <p> <code>TLS</code>: For securing AS2 communications sent over HTTPS</p> </li> </ul>
    #   @return [String]
    # @!attribute status
    #   <p>A certificate's status can be either <code>ACTIVE</code> or <code>INACTIVE</code>.</p> <p>You can set <code>ActiveDate</code> and <code>InactiveDate</code> in the <code>UpdateCertificate</code> call. If you set values for these parameters, those values are used to determine whether the certificate has a status of <code>ACTIVE</code> or <code>INACTIVE</code>.</p> <p>If you don't set values for <code>ActiveDate</code> and <code>InactiveDate</code>, we use the <code>NotBefore</code> and <code>NotAfter</code> date as specified on the X509 certificate to determine when a certificate is active and when it is inactive.</p>
    #   @return [String]
    # @!attribute certificate
    #   <p>The file name for the certificate.</p>
    #   @return [String]
    # @!attribute certificate_chain
    #   <p>The list of certificates that make up the chain for the certificate.</p>
    #   @return [String]
    # @!attribute active_date
    #   <p>An optional date that specifies when the certificate becomes active. If you do not specify a value, <code>ActiveDate</code> takes the same value as <code>NotBeforeDate</code>, which is specified by the CA. </p>
    #   @return [Time]
    # @!attribute inactive_date
    #   <p>An optional date that specifies when the certificate becomes inactive. If you do not specify a value, <code>InactiveDate</code> takes the same value as <code>NotAfterDate</code>, which is specified by the CA.</p>
    #   @return [Time]
    # @!attribute serial
    #   <p>The serial number for the certificate.</p>
    #   @return [String]
    # @!attribute not_before_date
    #   <p>The earliest date that the certificate is valid.</p>
    #   @return [Time]
    # @!attribute not_after_date
    #   <p>The final date that the certificate is valid.</p>
    #   @return [Time]
    # @!attribute type
    #   <p>If a private key has been specified for the certificate, its type is <code>CERTIFICATE_WITH_PRIVATE_KEY</code>. If there is no private key, the type is <code>CERTIFICATE</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The name or description that's used to identity the certificate. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for certificates.</p>
    #   @return [Array<Types::Tag>]
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
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the parameters for the connector, as identified by the <code>ConnectorId</code>.</p>
    # @!attribute arn
    #   <p>The unique Amazon Resource Name (ARN) for the connector.</p>
    #   @return [String]
    # @!attribute connector_id
    #   <p>The unique identifier for the connector.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL of the partner's AS2 or SFTP endpoint.</p>
    #   @return [String]
    # @!attribute as2_config
    #   <p>A structure that contains the parameters for an AS2 connector object.</p>
    #   @return [Types::As2ConnectorConfig]
    # @!attribute access_role
    #   <p>Connectors are used to send files using either the AS2 or SFTP protocol. For the access role, provide the Amazon Resource Name (ARN) of the Identity and Access Management role to use.</p> <p> <b>For AS2 connectors</b> </p> <p>With AS2, you can send files by calling <code>StartFileTransfer</code> and specifying the file paths in the request parameter, <code>SendFilePaths</code>. We use the file’s parent directory (for example, for <code>--send-file-paths /bucket/dir/file.txt</code>, parent directory is <code>/bucket/dir/</code>) to temporarily store a processed AS2 message file, store the MDN when we receive them from the partner, and write a final JSON file containing relevant metadata of the transmission. So, the <code>AccessRole</code> needs to provide read and write access to the parent directory of the file location used in the <code>StartFileTransfer</code> request. Additionally, you need to provide read and write access to the parent directory of the files that you intend to send with <code>StartFileTransfer</code>.</p> <p>If you are using Basic authentication for your AS2 connector, the access role requires the <code>secretsmanager:GetSecretValue</code> permission for the secret. If the secret is encrypted using a customer-managed key instead of the Amazon Web Services managed key in Secrets Manager, then the role also needs the <code>kms:Decrypt</code> permission for that key.</p> <p> <b>For SFTP connectors</b> </p> <p>Make sure that the access role provides read and write access to the parent directory of the file location that's used in the <code>StartFileTransfer</code> request. Additionally, make sure that the role provides <code>secretsmanager:GetSecretValue</code> permission to Secrets Manager.</p>
    #   @return [String]
    # @!attribute logging_role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that allows a connector to turn on CloudWatch logging for Amazon S3 events. When set, you can view connector activity in your CloudWatch logs.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for connectors.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute sftp_config
    #   <p>A structure that contains the parameters for an SFTP connector object.</p>
    #   @return [Types::SftpConnectorConfig]
    # @!attribute service_managed_egress_ip_addresses
    #   <p>The list of egress IP addresses of this connector. These IP addresses are assigned automatically when you create the connector.</p>
    #   @return [Array<String>]
    # @!attribute security_policy_name
    #   <p>The text name of the security policy for the specified connector.</p>
    #   @return [String]
    class DescribedConnector < Struct.new(
      :arn,
      :connector_id,
      :url,
      :as2_config,
      :access_role,
      :logging_role,
      :tags,
      :sftp_config,
      :service_managed_egress_ip_addresses,
      :security_policy_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details for an execution object.</p>
    # @!attribute execution_id
    #   <p>A unique identifier for the execution of a workflow.</p>
    #   @return [String]
    # @!attribute initial_file_location
    #   <p>A structure that describes the Amazon S3 or EFS file location. This is the file location when the execution begins: if the file is being copied, this is the initial (as opposed to destination) file location.</p>
    #   @return [Types::FileLocation]
    # @!attribute service_metadata
    #   <p>A container object for the session details that are associated with a workflow.</p>
    #   @return [Types::ServiceMetadata]
    # @!attribute execution_role
    #   <p>The IAM role associated with the execution.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>The IAM logging role associated with the execution.</p>
    #   @return [Types::LoggingConfiguration]
    # @!attribute posix_profile
    #   <p>The full POSIX identity, including user ID (<code>Uid</code>), group ID (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls your users' access to your Amazon EFS file systems. The POSIX permissions that are set on files and directories in your file system determine the level of access your users get when transferring files into and out of your Amazon EFS file systems.</p>
    #   @return [Types::PosixProfile]
    # @!attribute status
    #   <p>The status is one of the execution. Can be in progress, completed, exception encountered, or handling the exception. </p>
    #   @return [String]
    # @!attribute results
    #   <p>A structure that describes the execution results. This includes a list of the steps along with the details of each step, error type and message (if any), and the <code>OnExceptionSteps</code> structure.</p>
    #   @return [Types::ExecutionResults]
    class DescribedExecution < Struct.new(
      :execution_id,
      :initial_file_location,
      :service_metadata,
      :execution_role,
      :logging_configuration,
      :posix_profile,
      :status,
      :results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details for a server host key.</p>
    # @!attribute arn
    #   <p>The unique Amazon Resource Name (ARN) for the host key.</p>
    #   @return [String]
    # @!attribute host_key_id
    #   <p>A unique identifier for the host key.</p>
    #   @return [String]
    # @!attribute host_key_fingerprint
    #   <p>The public key fingerprint, which is a short sequence of bytes used to identify the longer public key.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The text description for this host key.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The encryption algorithm that is used for the host key. The <code>Type</code> parameter is specified by using one of the following values:</p> <ul> <li> <p> <code>ssh-rsa</code> </p> </li> <li> <p> <code>ssh-ed25519</code> </p> </li> <li> <p> <code>ecdsa-sha2-nistp256</code> </p> </li> <li> <p> <code>ecdsa-sha2-nistp384</code> </p> </li> <li> <p> <code>ecdsa-sha2-nistp521</code> </p> </li> </ul>
    #   @return [String]
    # @!attribute date_imported
    #   <p>The date on which the host key was added to the server.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for host keys.</p>
    #   @return [Array<Types::Tag>]
    class DescribedHostKey < Struct.new(
      :arn,
      :host_key_id,
      :host_key_fingerprint,
      :description,
      :type,
      :date_imported,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure that contains the details of the IAM Identity Center used for your web app. Returned during a call to <code>DescribeWebApp</code>.</p>
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM Identity Center application: this value is set automatically when you create your web app.</p>
    #   @return [String]
    # @!attribute instance_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM Identity Center used for the web app.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The IAM role in IAM Identity Center used for the web app.</p>
    #   @return [String]
    class DescribedIdentityCenterConfig < Struct.new(
      :application_arn,
      :instance_arn,
      :role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details for a local or partner AS2 profile. </p>
    # @!attribute arn
    #   <p>The unique Amazon Resource Name (ARN) for the profile.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>A unique identifier for the local or partner AS2 profile.</p>
    #   @return [String]
    # @!attribute profile_type
    #   <p>Indicates whether to list only <code>LOCAL</code> type profiles or only <code>PARTNER</code> type profiles. If not supplied in the request, the command lists all types of profiles.</p>
    #   @return [String]
    # @!attribute as2_id
    #   <p>The <code>As2Id</code> is the <i>AS2-name</i>, as defined in the <a href="https://datatracker.ietf.org/doc/html/rfc4130">RFC 4130</a>. For inbound transfers, this is the <code>AS2-From</code> header for the AS2 messages sent from the partner. For outbound connectors, this is the <code>AS2-To</code> header for the AS2 messages sent to the partner using the <code>StartFileTransfer</code> API operation. This ID cannot include spaces.</p>
    #   @return [String]
    # @!attribute certificate_ids
    #   <p>An array of identifiers for the imported certificates. You use this identifier for working with profiles and partner profiles.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for profiles.</p>
    #   @return [Array<Types::Tag>]
    class DescribedProfile < Struct.new(
      :arn,
      :profile_id,
      :profile_type,
      :as2_id,
      :certificate_ids,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the properties of a security policy that you specify. For more information about security policies, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html">Working with security policies for servers</a> or <a href="https://docs.aws.amazon.com/transfer/latest/userguide/security-policies-connectors.html">Working with security policies for SFTP connectors</a>.</p>
    # @!attribute fips
    #   <p>Specifies whether this policy enables Federal Information Processing Standards (FIPS). This parameter applies to both server and connector security policies.</p>
    #   @return [Boolean]
    # @!attribute security_policy_name
    #   <p>The text name of the specified security policy.</p>
    #   @return [String]
    # @!attribute ssh_ciphers
    #   <p>Lists the enabled Secure Shell (SSH) cipher encryption algorithms in the security policy that is attached to the server or connector. This parameter applies to both server and connector security policies.</p>
    #   @return [Array<String>]
    # @!attribute ssh_kexs
    #   <p>Lists the enabled SSH key exchange (KEX) encryption algorithms in the security policy that is attached to the server or connector. This parameter applies to both server and connector security policies.</p>
    #   @return [Array<String>]
    # @!attribute ssh_macs
    #   <p>Lists the enabled SSH message authentication code (MAC) encryption algorithms in the security policy that is attached to the server or connector. This parameter applies to both server and connector security policies.</p>
    #   @return [Array<String>]
    # @!attribute tls_ciphers
    #   <p>Lists the enabled Transport Layer Security (TLS) cipher encryption algorithms in the security policy that is attached to the server.</p> <note> <p>This parameter only applies to security policies for servers.</p> </note>
    #   @return [Array<String>]
    # @!attribute ssh_host_key_algorithms
    #   <p>Lists the host key algorithms for the security policy.</p> <note> <p>This parameter only applies to security policies for connectors.</p> </note>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The resource type to which the security policy applies, either server or connector.</p>
    #   @return [String]
    # @!attribute protocols
    #   <p>Lists the file transfer protocols that the security policy applies to.</p>
    #   @return [Array<String>]
    class DescribedSecurityPolicy < Struct.new(
      :fips,
      :security_policy_name,
      :ssh_ciphers,
      :ssh_kexs,
      :ssh_macs,
      :tls_ciphers,
      :ssh_host_key_algorithms,
      :type,
      :protocols,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the properties of a file transfer protocol-enabled server that was specified.</p>
    # @!attribute arn
    #   <p>Specifies the unique Amazon Resource Name (ARN) of the server.</p>
    #   @return [String]
    # @!attribute certificate
    #   <p>Specifies the ARN of the Amazon Web ServicesCertificate Manager (ACM) certificate. Required when <code>Protocols</code> is set to <code>FTPS</code>.</p>
    #   @return [String]
    # @!attribute protocol_details
    #   <p>The protocol settings that are configured for your server.</p> <ul> <li> <p> To indicate passive mode (for FTP and FTPS protocols), use the <code>PassiveIp</code> parameter. Enter a single dotted-quad IPv4 address, such as the external IP address of a firewall, router, or load balancer. </p> </li> <li> <p>To ignore the error that is generated when the client attempts to use the <code>SETSTAT</code> command on a file that you are uploading to an Amazon S3 bucket, use the <code>SetStatOption</code> parameter. To have the Transfer Family server ignore the <code>SETSTAT</code> command and upload files without needing to make any changes to your SFTP client, set the value to <code>ENABLE_NO_OP</code>. If you set the <code>SetStatOption</code> parameter to <code>ENABLE_NO_OP</code>, Transfer Family generates a log entry to Amazon CloudWatch Logs, so that you can determine when the client is making a <code>SETSTAT</code> call.</p> </li> <li> <p>To determine whether your Transfer Family server resumes recent, negotiated sessions through a unique session ID, use the <code>TlsSessionResumptionMode</code> parameter.</p> </li> <li> <p> <code>As2Transports</code> indicates the transport method for the AS2 messages. Currently, only HTTP is supported.</p> </li> </ul>
    #   @return [Types::ProtocolDetails]
    # @!attribute domain
    #   <p>Specifies the domain of the storage system that is used for file transfers. There are two domains available: Amazon Simple Storage Service (Amazon S3) and Amazon Elastic File System (Amazon EFS). The default value is S3.</p>
    #   @return [String]
    # @!attribute endpoint_details
    #   <p>The virtual private cloud (VPC) endpoint settings that are configured for your server. When you host your endpoint within your VPC, you can make your endpoint accessible only to resources within your VPC, or you can attach Elastic IP addresses and make your endpoint accessible to clients over the internet. Your VPC's default security groups are automatically assigned to your endpoint.</p>
    #   @return [Types::EndpointDetails]
    # @!attribute endpoint_type
    #   <p>Defines the type of endpoint that your server is connected to. If your server is connected to a VPC endpoint, your server isn't accessible over the public internet.</p>
    #   @return [String]
    # @!attribute host_key_fingerprint
    #   <p>Specifies the Base64-encoded SHA256 fingerprint of the server's host key. This value is equivalent to the output of the <code>ssh-keygen -l -f my-new-server-key</code> command.</p>
    #   @return [String]
    # @!attribute identity_provider_details
    #   <p>Specifies information to call a customer-supplied authentication API. This field is not populated when the <code>IdentityProviderType</code> of a server is <code>AWS_DIRECTORY_SERVICE</code> or <code>SERVICE_MANAGED</code>.</p>
    #   @return [Types::IdentityProviderDetails]
    # @!attribute identity_provider_type
    #   <p>The mode of authentication for a server. The default value is <code>SERVICE_MANAGED</code>, which allows you to store and access user credentials within the Transfer Family service.</p> <p>Use <code>AWS_DIRECTORY_SERVICE</code> to provide access to Active Directory groups in Directory Service for Microsoft Active Directory or Microsoft Active Directory in your on-premises environment or in Amazon Web Services using AD Connector. This option also requires you to provide a Directory ID by using the <code>IdentityProviderDetails</code> parameter.</p> <p>Use the <code>API_GATEWAY</code> value to integrate with an identity provider of your choosing. The <code>API_GATEWAY</code> setting requires you to provide an Amazon API Gateway endpoint URL to call for authentication by using the <code>IdentityProviderDetails</code> parameter.</p> <p>Use the <code>AWS_LAMBDA</code> value to directly use an Lambda function as your identity provider. If you choose this value, you must specify the ARN for the Lambda function in the <code>Function</code> parameter for the <code>IdentityProviderDetails</code> data type.</p>
    #   @return [String]
    # @!attribute logging_role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that allows a server to turn on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, you can view user activity in your CloudWatch logs.</p>
    #   @return [String]
    # @!attribute post_authentication_login_banner
    #   <p>Specifies a string to display when users connect to a server. This string is displayed after the user authenticates.</p> <note> <p>The SFTP protocol does not support post-authentication display banners.</p> </note>
    #   @return [String]
    # @!attribute pre_authentication_login_banner
    #   <p>Specifies a string to display when users connect to a server. This string is displayed before the user authenticates. For example, the following banner displays details about using the system:</p> <p> <code>This system is for the use of authorized users only. Individuals using this computer system without authority, or in excess of their authority, are subject to having all of their activities on this system monitored and recorded by system personnel.</code> </p>
    #   @return [String]
    # @!attribute protocols
    #   <p>Specifies the file transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint. The available protocols are:</p> <ul> <li> <p> <code>SFTP</code> (Secure Shell (SSH) File Transfer Protocol): File transfer over SSH</p> </li> <li> <p> <code>FTPS</code> (File Transfer Protocol Secure): File transfer with TLS encryption</p> </li> <li> <p> <code>FTP</code> (File Transfer Protocol): Unencrypted file transfer</p> </li> <li> <p> <code>AS2</code> (Applicability Statement 2): used for transporting structured business-to-business data</p> </li> </ul> <note> <ul> <li> <p>If you select <code>FTPS</code>, you must choose a certificate stored in Certificate Manager (ACM) which is used to identify your server when clients connect to it over FTPS.</p> </li> <li> <p>If <code>Protocol</code> includes either <code>FTP</code> or <code>FTPS</code>, then the <code>EndpointType</code> must be <code>VPC</code> and the <code>IdentityProviderType</code> must be either <code>AWS_DIRECTORY_SERVICE</code>, <code>AWS_LAMBDA</code>, or <code>API_GATEWAY</code>.</p> </li> <li> <p>If <code>Protocol</code> includes <code>FTP</code>, then <code>AddressAllocationIds</code> cannot be associated.</p> </li> <li> <p>If <code>Protocol</code> is set only to <code>SFTP</code>, the <code>EndpointType</code> can be set to <code>PUBLIC</code> and the <code>IdentityProviderType</code> can be set any of the supported identity types: <code>SERVICE_MANAGED</code>, <code>AWS_DIRECTORY_SERVICE</code>, <code>AWS_LAMBDA</code>, or <code>API_GATEWAY</code>.</p> </li> <li> <p>If <code>Protocol</code> includes <code>AS2</code>, then the <code>EndpointType</code> must be <code>VPC</code>, and domain must be Amazon S3.</p> </li> </ul> </note>
    #   @return [Array<String>]
    # @!attribute security_policy_name
    #   <p>Specifies the name of the security policy for the server.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>Specifies the unique system-assigned identifier for a server that you instantiate.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The condition of the server that was described. A value of <code>ONLINE</code> indicates that the server can accept jobs and transfer files. A <code>State</code> value of <code>OFFLINE</code> means that the server cannot perform file transfer operations.</p> <p>The states of <code>STARTING</code> and <code>STOPPING</code> indicate that the server is in an intermediate state, either not fully able to respond, or not fully offline. The values of <code>START_FAILED</code> or <code>STOP_FAILED</code> can indicate an error condition.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Specifies the key-value pairs that you can use to search for and group servers that were assigned to the server that was described.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute user_count
    #   <p>Specifies the number of users that are assigned to a server you specified with the <code>ServerId</code>.</p>
    #   @return [Integer]
    # @!attribute workflow_details
    #   <p>Specifies the workflow ID for the workflow to assign and the execution role that's used for executing the workflow.</p> <p>In addition to a workflow to execute when a file is uploaded completely, <code>WorkflowDetails</code> can also contain a workflow ID (and execution role) for a workflow to execute on partial upload. A partial upload occurs when the server session disconnects while the file is still being uploaded.</p>
    #   @return [Types::WorkflowDetails]
    # @!attribute structured_log_destinations
    #   <p>Specifies the log groups to which your server logs are sent.</p> <p>To specify a log group, you must provide the ARN for an existing log group. In this case, the format of the log group is as follows:</p> <p> <code>arn:aws:logs:region-name:amazon-account-id:log-group:log-group-name:*</code> </p> <p>For example, <code>arn:aws:logs:us-east-1:111122223333:log-group:mytestgroup:*</code> </p> <p>If you have previously specified a log group for a server, you can clear it, and in effect turn off structured logging, by providing an empty value for this parameter in an <code>update-server</code> call. For example:</p> <p> <code>update-server --server-id s-1234567890abcdef0 --structured-log-destinations</code> </p>
    #   @return [Array<String>]
    # @!attribute s3_storage_options
    #   <p>Specifies whether or not performance for your Amazon S3 directories is optimized. This is disabled by default.</p> <p>By default, home directory mappings have a <code>TYPE</code> of <code>DIRECTORY</code>. If you enable this option, you would then need to explicitly set the <code>HomeDirectoryMapEntry</code> <code>Type</code> to <code>FILE</code> if you want a mapping to have a file target.</p>
    #   @return [Types::S3StorageOptions]
    # @!attribute as2_service_managed_egress_ip_addresses
    #   <p>The list of egress IP addresses of this server. These IP addresses are only relevant for servers that use the AS2 protocol. They are used for sending asynchronous MDNs.</p> <p>These IP addresses are assigned automatically when you create an AS2 server. Additionally, if you update an existing server and add the AS2 protocol, static IP addresses are assigned as well.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>Specifies whether to use IPv4 only, or to use dual-stack (IPv4 and IPv6) for your Transfer Family endpoint. The default value is <code>IPV4</code>.</p> <important> <p>The <code>IpAddressType</code> parameter has the following limitations:</p> <ul> <li> <p>It cannot be changed while the server is online. You must stop the server before modifying this parameter.</p> </li> <li> <p>It cannot be updated to <code>DUALSTACK</code> if the server has <code>AddressAllocationIds</code> specified.</p> </li> </ul> </important> <note> <p>When using <code>DUALSTACK</code> as the <code>IpAddressType</code>, you cannot set the <code>AddressAllocationIds</code> parameter for the <a href="https://docs.aws.amazon.com/transfer/latest/APIReference/API_EndpointDetails.html">EndpointDetails</a> for the server.</p> </note>
    #   @return [String]
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
      :as2_service_managed_egress_ip_addresses,
      :ip_address_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the properties of a user that was specified.</p>
    # @!attribute arn
    #   <p>Specifies the unique Amazon Resource Name (ARN) for the user that was requested to be described.</p>
    #   @return [String]
    # @!attribute home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p> <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p> <note> <p>You can use the <code>HomeDirectory</code> parameter for <code>HomeDirectoryType</code> when it is set to either <code>PATH</code> or <code>LOGICAL</code>.</p> </note>
    #   @return [String]
    # @!attribute home_directory_mappings
    #   <p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should be visible to your user and how you want to make them visible. You must specify the <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you only specify a target, it is displayed as is. You also must ensure that your Identity and Access Management (IAM) role provides access to paths in <code>Target</code>. This value can be set only when <code>HomeDirectoryType</code> is set to <i>LOGICAL</i>.</p> <p>In most cases, you can use this value instead of the session policy to lock your user down to the designated home directory ("<code>chroot</code>"). To do this, you can set <code>Entry</code> to '/' and set <code>Target</code> to the HomeDirectory parameter value.</p>
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    # @!attribute home_directory_type
    #   <p>The type of landing directory (folder) that you want your users' home directory to be when they log in to the server. If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or Amazon EFS path as is in their file transfer protocol clients. If you set it to <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 or Amazon EFS paths visible to your users.</p> <note> <p>If <code>HomeDirectoryType</code> is <code>LOGICAL</code>, you must provide mappings, using the <code>HomeDirectoryMappings</code> parameter. If, on the other hand, <code>HomeDirectoryType</code> is <code>PATH</code>, you provide an absolute path using the <code>HomeDirectory</code> parameter. You cannot have both <code>HomeDirectory</code> and <code>HomeDirectoryMappings</code> in your template.</p> </note>
    #   @return [String]
    # @!attribute policy
    #   <p>A session policy for your user so that you can use the same Identity and Access Management (IAM) role across multiple users. This policy scopes down a user's access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>, <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>
    #   @return [String]
    # @!attribute posix_profile
    #   <p>Specifies the full POSIX identity, including user ID (<code>Uid</code>), group ID (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls your users' access to your Amazon Elastic File System (Amazon EFS) file systems. The POSIX permissions that are set on files and directories in your file system determine the level of access your users get when transferring files into and out of your Amazon EFS file systems.</p>
    #   @return [Types::PosixProfile]
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that controls your users' access to your Amazon S3 bucket or Amazon EFS file system. The policies attached to this role determine the level of access that you want to provide your users when transferring files into and out of your Amazon S3 bucket or Amazon EFS file system. The IAM role should also contain a trust relationship that allows the server to access your resources when servicing your users' transfer requests.</p>
    #   @return [String]
    # @!attribute ssh_public_keys
    #   <p>Specifies the public key portion of the Secure Shell (SSH) keys stored for the described user.</p> <note> <p>To delete the public key body, set its value to zero keys, as shown here:</p> <p> <code>SshPublicKeys: []</code> </p> </note>
    #   @return [Array<Types::SshPublicKey>]
    # @!attribute tags
    #   <p>Specifies the key-value pairs for the user requested. Tag can be used to search for and group users for a variety of purposes.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute user_name
    #   <p>Specifies the name of the user that was requested to be described. User names are used for authentication purposes. This is the string that will be used by your user when they log in to your server.</p>
    #   @return [String]
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
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure that describes the parameters for the web app, as identified by the <code>WebAppId</code>.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the web app.</p>
    #   @return [String]
    # @!attribute web_app_id
    #   <p>The unique identifier for the web app.</p>
    #   @return [String]
    # @!attribute described_identity_provider_details
    #   <p>A structure that contains the details for the identity provider used by the web app.</p>
    #   @return [Types::DescribedWebAppIdentityProviderDetails]
    # @!attribute access_endpoint
    #   <p>The <code>AccessEndpoint</code> is the URL that you provide to your users for them to interact with the Transfer Family web app. You can specify a custom URL or use the default value.</p>
    #   @return [String]
    # @!attribute web_app_endpoint
    #   <p>The <code>WebAppEndpoint</code> is the unique URL for your Transfer Family web app. This is the value that you use when you configure <b>Origins</b> on CloudFront.</p>
    #   @return [String]
    # @!attribute web_app_units
    #   <p>A union that contains the value for number of concurrent connections or the user sessions on your web app.</p>
    #   @return [Types::WebAppUnits]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for web apps. Tags are metadata attached to web apps for any purpose.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute web_app_endpoint_policy
    #   <p> Setting for the type of endpoint policy for the web app. The default value is <code>STANDARD</code>. </p> <p>If your web app was created in an Amazon Web Services GovCloud (US) Region, the value of this parameter can be <code>FIPS</code>, which indicates the web app endpoint is FIPS-compliant.</p>
    #   @return [String]
    class DescribedWebApp < Struct.new(
      :arn,
      :web_app_id,
      :described_identity_provider_details,
      :access_endpoint,
      :web_app_endpoint,
      :web_app_units,
      :tags,
      :web_app_endpoint_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure that contains the customization fields for the web app. You can provide a title, logo, and icon to customize the appearance of your web app.</p>
    # @!attribute arn
    #   <p>Returns the Amazon Resource Name (ARN) for the web app.</p>
    #   @return [String]
    # @!attribute web_app_id
    #   <p>Returns the unique identifier for your web app.</p>
    #   @return [String]
    # @!attribute title
    #   <p>Returns the page title that you defined for your web app.</p>
    #   @return [String]
    # @!attribute logo_file
    #   <p>Returns a logo file data string (in base64 encoding).</p>
    #   @return [String]
    # @!attribute favicon_file
    #   <p>Returns an icon file data string (in base64 encoding).</p>
    #   @return [String]
    class DescribedWebAppCustomization < Struct.new(
      :arn,
      :web_app_id,
      :title,
      :logo_file,
      :favicon_file,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns a structure that contains the identity provider details for your web app.</p>
    # @!attribute identity_center_config
    #   <p>Returns a structure for your identity provider details. This structure contains the instance ARN and role being used for the web app.</p>
    #   @return [Types::DescribedIdentityCenterConfig]
    class DescribedWebAppIdentityProviderDetails < Struct.new(
      :identity_center_config,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class IdentityCenterConfig < DescribedWebAppIdentityProviderDetails; end
      class Unknown < DescribedWebAppIdentityProviderDetails; end
    end

    # <p>Describes the properties of the specified workflow</p>
    # @!attribute arn
    #   <p>Specifies the unique Amazon Resource Name (ARN) for the workflow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Specifies the text description for the workflow.</p>
    #   @return [String]
    # @!attribute steps
    #   <p>Specifies the details for the steps that are in the specified workflow.</p>
    #   @return [Array<Types::WorkflowStep>]
    # @!attribute on_exception_steps
    #   <p>Specifies the steps (actions) to take if errors are encountered during execution of the workflow.</p>
    #   @return [Array<Types::WorkflowStep>]
    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for workflows. Tags are metadata attached to workflows for any purpose.</p>
    #   @return [Array<Types::Tag>]
    class DescribedWorkflow < Struct.new(
      :arn,
      :description,
      :steps,
      :on_exception_steps,
      :workflow_id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Indicates whether optimization to directory listing on S3 servers is used. Disabled by default for compatibility.
    module DirectoryListingOptimization
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    module Domain
      S3 = 'S3'
      EFS = 'EFS'
    end

    # <p>Specifies the details for the file location for the file that's being used in the workflow. Only applicable if you are using Amazon Elastic File Systems (Amazon EFS) for storage.</p> <p> </p>
    # @!attribute file_system_id
    #   <p>The identifier of the file system, assigned by Amazon EFS.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The pathname for the folder being used by a workflow.</p>
    #   @return [String]
    class EfsFileLocation < Struct.new(
      :file_system_id,
      :path,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EncryptionAlg
      AES128_CBC = 'AES128_CBC'
      AES192_CBC = 'AES192_CBC'
      AES256_CBC = 'AES256_CBC'
      DES_EDE3_CBC = 'DES_EDE3_CBC'
      NONE = 'NONE'
    end

    module EncryptionType
      PGP = 'PGP'
    end

    # <p>The virtual private cloud (VPC) endpoint settings that are configured for your file transfer protocol-enabled server. With a VPC endpoint, you can restrict access to your server and resources only within your VPC. To control incoming internet traffic, invoke the <code>UpdateServer</code> API and attach an Elastic IP address to your server's endpoint.</p> <note> <p> After May 19, 2021, you won't be able to create a server using <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Services account if your account hasn't already done so before May 19, 2021. If you have already created servers with <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Services account on or before May 19, 2021, you will not be affected. After this date, use <code>EndpointType</code>=<code>VPC</code>.</p> <p>For more information, see https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.</p> <p>It is recommended that you use <code>VPC</code> as the <code>EndpointType</code>. With this endpoint type, you have the option to directly associate up to three Elastic IPv4 addresses (BYO IP included) with your server's endpoint and use VPC security groups to restrict traffic by the client's public IP address. This is not possible with <code>EndpointType</code> set to <code>VPC_ENDPOINT</code>.</p> </note>
    # @!attribute address_allocation_ids
    #   <p>A list of address allocation IDs that are required to attach an Elastic IP address to your server's endpoint.</p> <p>An address allocation ID corresponds to the allocation ID of an Elastic IP address. This value can be retrieved from the <code>allocationId</code> field from the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Address.html">Address</a> data type. One way to retrieve this value is by calling the EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAddresses.html">DescribeAddresses</a> API.</p> <p>This parameter is optional. Set this parameter if you want to make your VPC endpoint public-facing. For details, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#create-internet-facing-endpoint">Create an internet-facing endpoint for your server</a>.</p> <note> <p>This property can only be set as follows:</p> <ul> <li> <p> <code>EndpointType</code> must be set to <code>VPC</code> </p> </li> <li> <p>The Transfer Family server must be offline.</p> </li> <li> <p>You cannot set this parameter for Transfer Family servers that use the FTP protocol.</p> </li> <li> <p>The server must already have <code>SubnetIds</code> populated (<code>SubnetIds</code> and <code>AddressAllocationIds</code> cannot be updated simultaneously).</p> </li> <li> <p> <code>AddressAllocationIds</code> can't contain duplicates, and must be equal in length to <code>SubnetIds</code>. For example, if you have three subnet IDs, you must also specify three address allocation IDs.</p> </li> <li> <p>Call the <code>UpdateServer</code> API to set or change this parameter.</p> </li> <li> <p>You can't set address allocation IDs for servers that have an <code>IpAddressType</code> set to <code>DUALSTACK</code> You can only set this property if <code>IpAddressType</code> is set to <code>IPV4</code>.</p> </li> </ul> </note>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs that are required to host your server endpoint in your VPC.</p> <note> <p>This property can only be set when <code>EndpointType</code> is set to <code>VPC</code>.</p> </note>
    #   @return [Array<String>]
    # @!attribute vpc_endpoint_id
    #   <p>The identifier of the VPC endpoint.</p> <note> <p>This property can only be set when <code>EndpointType</code> is set to <code>VPC_ENDPOINT</code>.</p> <p>For more information, see https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.</p> </note>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC identifier of the VPC in which a server's endpoint will be hosted.</p> <note> <p>This property can only be set when <code>EndpointType</code> is set to <code>VPC</code>.</p> </note>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>A list of security groups IDs that are available to attach to your server's endpoint.</p> <note> <p>This property can only be set when <code>EndpointType</code> is set to <code>VPC</code>.</p> <p>You can edit the <code>SecurityGroupIds</code> property in the <a href="https://docs.aws.amazon.com/transfer/latest/userguide/API_UpdateServer.html">UpdateServer</a> API only if you are changing the <code>EndpointType</code> from <code>PUBLIC</code> or <code>VPC_ENDPOINT</code> to <code>VPC</code>. To change security groups associated with your server's VPC endpoint after creation, use the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyVpcEndpoint.html">ModifyVpcEndpoint</a> API.</p> </note>
    #   @return [Array<String>]
    class EndpointDetails < Struct.new(
      :address_allocation_ids,
      :subnet_ids,
      :vpc_endpoint_id,
      :vpc_id,
      :security_group_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EndpointType
      PUBLIC = 'PUBLIC'
      VPC = 'VPC'
      VPC_ENDPOINT = 'VPC_ENDPOINT'
    end

    module EnforceMessageSigningType
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>Specifies the error message and type, for an error that occurs during the execution of the workflow.</p>
    # @!attribute type
    #   <p>Specifies the error type.</p> <ul> <li> <p> <code>ALREADY_EXISTS</code>: occurs for a copy step, if the overwrite option is not selected and a file with the same name already exists in the target location.</p> </li> <li> <p> <code>BAD_REQUEST</code>: a general bad request: for example, a step that attempts to tag an EFS file returns <code>BAD_REQUEST</code>, as only S3 files can be tagged.</p> </li> <li> <p> <code>CUSTOM_STEP_FAILED</code>: occurs when the custom step provided a callback that indicates failure.</p> </li> <li> <p> <code>INTERNAL_SERVER_ERROR</code>: a catch-all error that can occur for a variety of reasons.</p> </li> <li> <p> <code>NOT_FOUND</code>: occurs when a requested entity, for example a source file for a copy step, does not exist.</p> </li> <li> <p> <code>PERMISSION_DENIED</code>: occurs if your policy does not contain the correct permissions to complete one or more of the steps in the workflow.</p> </li> <li> <p> <code>TIMEOUT</code>: occurs when the execution times out.</p> <note> <p> You can set the <code>TimeoutSeconds</code> for a custom step, anywhere from 1 second to 1800 seconds (30 minutes). </p> </note> </li> <li> <p> <code>THROTTLED</code>: occurs if you exceed the new execution refill rate of one workflow per second.</p> </li> </ul>
    #   @return [String]
    # @!attribute message
    #   <p>Specifies the descriptive message that corresponds to the <code>ErrorType</code>.</p>
    #   @return [String]
    class ExecutionError < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ExecutionErrorType
      PERMISSION_DENIED = 'PERMISSION_DENIED'
      CUSTOM_STEP_FAILED = 'CUSTOM_STEP_FAILED'
      THROTTLED = 'THROTTLED'
      ALREADY_EXISTS = 'ALREADY_EXISTS'
      NOT_FOUND = 'NOT_FOUND'
      BAD_REQUEST = 'BAD_REQUEST'
      TIMEOUT = 'TIMEOUT'
      INTERNAL_SERVER_ERROR = 'INTERNAL_SERVER_ERROR'
    end

    # <p>Specifies the steps in the workflow, as well as the steps to execute in case of any errors during workflow execution.</p>
    # @!attribute steps
    #   <p>Specifies the details for the steps that are in the specified workflow.</p>
    #   @return [Array<Types::ExecutionStepResult>]
    # @!attribute on_exception_steps
    #   <p>Specifies the steps (actions) to take if errors are encountered during execution of the workflow.</p>
    #   @return [Array<Types::ExecutionStepResult>]
    class ExecutionResults < Struct.new(
      :steps,
      :on_exception_steps,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ExecutionStatus
      IN_PROGRESS = 'IN_PROGRESS'
      COMPLETED = 'COMPLETED'
      EXCEPTION = 'EXCEPTION'
      HANDLING_EXCEPTION = 'HANDLING_EXCEPTION'
    end

    # <p>Specifies the following details for the step: error (if any), outputs (if any), and the step type.</p>
    # @!attribute step_type
    #   <p>One of the available step types.</p> <ul> <li> <p> <b> <code>COPY</code> </b> - Copy the file to another location.</p> </li> <li> <p> <b> <code>CUSTOM</code> </b> - Perform a custom step with an Lambda function target.</p> </li> <li> <p> <b> <code>DECRYPT</code> </b> - Decrypt a file that was encrypted before it was uploaded.</p> </li> <li> <p> <b> <code>DELETE</code> </b> - Delete the file.</p> </li> <li> <p> <b> <code>TAG</code> </b> - Add a tag to the file.</p> </li> </ul>
    #   @return [String]
    # @!attribute outputs
    #   <p>The values for the key/value pair applied as a tag to the file. Only applicable if the step type is <code>TAG</code>.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Specifies the details for an error, if it occurred during execution of the specified workflow step.</p>
    #   @return [Types::ExecutionError]
    class ExecutionStepResult < Struct.new(
      :step_type,
      :outputs,
      :error,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the Amazon S3 or EFS file details to be used in the step.</p>
    # @!attribute s3_file_location
    #   <p>Specifies the S3 details for the file being used, such as bucket, ETag, and so forth.</p>
    #   @return [Types::S3FileLocation]
    # @!attribute efs_file_location
    #   <p>Specifies the Amazon EFS identifier and the path for the file being used.</p>
    #   @return [Types::EfsFileLocation]
    class FileLocation < Struct.new(
      :s3_file_location,
      :efs_file_location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents an object that contains entries and targets for <code>HomeDirectoryMappings</code>.</p> <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p> <p> <code>[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]</code> </p>
    # @!attribute entry
    #   <p>Represents an entry for <code>HomeDirectoryMappings</code>.</p>
    #   @return [String]
    # @!attribute target
    #   <p>Represents the map target that is used in a <code>HomeDirectoryMapEntry</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies the type of mapping. Set the type to <code>FILE</code> if you want the mapping to point to a file, or <code>DIRECTORY</code> for the directory to point to a directory.</p> <note> <p>By default, home directory mappings have a <code>Type</code> of <code>DIRECTORY</code> when you create a Transfer Family server. You would need to explicitly set <code>Type</code> to <code>FILE</code> if you want a mapping to have a file target.</p> </note>
    #   @return [String]
    class HomeDirectoryMapEntry < Struct.new(
      :entry,
      :target,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module HomeDirectoryType
      PATH = 'PATH'
      LOGICAL = 'LOGICAL'
    end

    # <p>A structure that describes the values to use for the IAM Identity Center settings when you create or update a web app.</p>
    # @!attribute instance_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM Identity Center used for the web app.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The IAM role in IAM Identity Center used for the web app.</p>
    #   @return [String]
    class IdentityCenterConfig < Struct.new(
      :instance_arn,
      :role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns information related to the type of user authentication that is in use for a file transfer protocol-enabled server's users. A server can have only one method of authentication.</p>
    # @!attribute url
    #   <p>Provides the location of the service endpoint used to authenticate users.</p>
    #   @return [String]
    # @!attribute invocation_role
    #   <p>This parameter is only applicable if your <code>IdentityProviderType</code> is <code>API_GATEWAY</code>. Provides the type of <code>InvocationRole</code> used to authenticate the user account.</p>
    #   @return [String]
    # @!attribute directory_id
    #   <p>The identifier of the Directory Service directory that you want to use as your identity provider.</p>
    #   @return [String]
    # @!attribute function
    #   <p>The ARN for a Lambda function to use for the Identity provider.</p>
    #   @return [String]
    # @!attribute sftp_authentication_methods
    #   <p>For SFTP-enabled servers, and for custom identity providers <i>only</i>, you can specify whether to authenticate using a password, SSH key pair, or both.</p> <ul> <li> <p> <code>PASSWORD</code> - users must provide their password to connect.</p> </li> <li> <p> <code>PUBLIC_KEY</code> - users must provide their private key to connect.</p> </li> <li> <p> <code>PUBLIC_KEY_OR_PASSWORD</code> - users can authenticate with either their password or their key. This is the default value.</p> </li> <li> <p> <code>PUBLIC_KEY_AND_PASSWORD</code> - users must provide both their private key and their password to connect. The server checks the key first, and then if the key is valid, the system prompts for a password. If the private key provided does not match the public key that is stored, authentication fails.</p> </li> </ul>
    #   @return [String]
    class IdentityProviderDetails < Struct.new(
      :url,
      :invocation_role,
      :directory_id,
      :function,
      :sftp_authentication_methods,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The mode of authentication for a server. The default value is <code>SERVICE_MANAGED</code>, which allows you to store and access user credentials within the Transfer Family service.</p> <p>Use <code>AWS_DIRECTORY_SERVICE</code> to provide access to Active Directory groups in Directory Service for Microsoft Active Directory or Microsoft Active Directory in your on-premises environment or in Amazon Web Services using AD Connector. This option also requires you to provide a Directory ID by using the <code>IdentityProviderDetails</code> parameter.</p> <p>Use the <code>API_GATEWAY</code> value to integrate with an identity provider of your choosing. The <code>API_GATEWAY</code> setting requires you to provide an Amazon API Gateway endpoint URL to call for authentication by using the <code>IdentityProviderDetails</code> parameter.</p> <p>Use the <code>AWS_LAMBDA</code> value to directly use an Lambda function as your identity provider. If you choose this value, you must specify the ARN for the Lambda function in the <code>Function</code> parameter for the <code>IdentityProviderDetails</code> data type.</p>
    module IdentityProviderType
      SERVICE_MANAGED = 'SERVICE_MANAGED'
      API_GATEWAY = 'API_GATEWAY'
      AWS_DIRECTORY_SERVICE = 'AWS_DIRECTORY_SERVICE'
      AWS_LAMBDA = 'AWS_LAMBDA'
    end

    # @!attribute usage
    #   <p>Specifies how this certificate is used. It can be used in the following ways:</p> <ul> <li> <p> <code>SIGNING</code>: For signing AS2 messages</p> </li> <li> <p> <code>ENCRYPTION</code>: For encrypting AS2 messages</p> </li> <li> <p> <code>TLS</code>: For securing AS2 communications sent over HTTPS</p> </li> </ul>
    #   @return [String]
    # @!attribute certificate
    #   <ul> <li> <p>For the CLI, provide a file path for a certificate in URI format. For example, <code>--certificate file://encryption-cert.pem</code>. Alternatively, you can provide the raw content.</p> </li> <li> <p>For the SDK, specify the raw content of a certificate file. For example, <code>--certificate "`cat encryption-cert.pem`"</code>.</p> </li> </ul> <note> <p>You can provide both the certificate and its chain in this parameter, without needing to use the <code>CertificateChain</code> parameter. If you use this parameter for both the certificate and its chain, do not use the <code>CertificateChain</code> parameter.</p> </note>
    #   @return [String]
    # @!attribute certificate_chain
    #   <p>An optional list of certificates that make up the chain for the certificate that's being imported.</p>
    #   @return [String]
    # @!attribute private_key
    #   <ul> <li> <p>For the CLI, provide a file path for a private key in URI format. For example, <code>--private-key file://encryption-key.pem</code>. Alternatively, you can provide the raw content of the private key file.</p> </li> <li> <p>For the SDK, specify the raw content of a private key file. For example, <code>--private-key "`cat encryption-key.pem`"</code> </p> </li> </ul>
    #   @return [String]
    # @!attribute active_date
    #   <p>An optional date that specifies when the certificate becomes active. If you do not specify a value, <code>ActiveDate</code> takes the same value as <code>NotBeforeDate</code>, which is specified by the CA. </p>
    #   @return [Time]
    # @!attribute inactive_date
    #   <p>An optional date that specifies when the certificate becomes inactive. If you do not specify a value, <code>InactiveDate</code> takes the same value as <code>NotAfterDate</code>, which is specified by the CA.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>A short description that helps identify the certificate. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for certificates.</p>
    #   @return [Array<Types::Tag>]
    class ImportCertificateRequest < Struct.new(
      :usage,
      :certificate,
      :certificate_chain,
      :private_key,
      :active_date,
      :inactive_date,
      :description,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute certificate_id
    #   <p>An array of identifiers for the imported certificates. You use this identifier for working with profiles and partner profiles.</p>
    #   @return [String]
    class ImportCertificateResponse < Struct.new(
      :certificate_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>The identifier of the server that contains the host key that you are importing.</p>
    #   @return [String]
    # @!attribute host_key_body
    #   <p>The private key portion of an SSH key pair.</p> <p>Transfer Family accepts RSA, ECDSA, and ED25519 keys.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The text description that identifies this host key.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to group and search for host keys.</p>
    #   @return [Array<Types::Tag>]
    class ImportHostKeyRequest < Struct.new(
      :server_id,
      :host_key_body,
      :description,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>Returns the server identifier that contains the imported key.</p>
    #   @return [String]
    # @!attribute host_key_id
    #   <p>Returns the host key identifier for the imported key.</p>
    #   @return [String]
    class ImportHostKeyResponse < Struct.new(
      :server_id,
      :host_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server.</p>
    #   @return [String]
    # @!attribute ssh_public_key_body
    #   <p>The public key portion of an SSH key pair.</p> <p>Transfer Family accepts RSA, ECDSA, and ED25519 keys.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The name of the Transfer Family user that is assigned to one or more servers.</p>
    #   @return [String]
    class ImportSshPublicKeyRequest < Struct.new(
      :server_id,
      :ssh_public_key_body,
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Identifies the user, the server they belong to, and the identifier of the SSH public key associated with that user. A user can have more than one key on each server that they are associated with.</p>
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server.</p>
    #   @return [String]
    # @!attribute ssh_public_key_id
    #   <p>The name given to a public key by the system that was imported.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>A user name assigned to the <code>ServerID</code> value that you specified.</p>
    #   @return [String]
    class ImportSshPublicKeyResponse < Struct.new(
      :server_id,
      :ssh_public_key_id,
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the location for the file that's being processed.</p>
    # @!attribute s3_file_location
    #   <p>Specifies the details for the Amazon S3 file that's being copied or decrypted.</p>
    #   @return [Types::S3InputFileLocation]
    # @!attribute efs_file_location
    #   <p>Specifies the details for the Amazon Elastic File System (Amazon EFS) file that's being decrypted.</p>
    #   @return [Types::EfsFileLocation]
    class InputFileLocation < Struct.new(
      :s3_file_location,
      :efs_file_location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when an error occurs in the Transfer Family service.</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceError < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The <code>NextToken</code> parameter that was passed is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the client submits a malformed request.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module IpAddressType
      IPV4 = 'IPV4'
      DUALSTACK = 'DUALSTACK'
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When you can get additional results from the <code>ListAccesses</code> call, a <code>NextToken</code> parameter is returned in the output. You can then pass in a subsequent command to the <code>NextToken</code> parameter to continue listing additional accesses.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that has users assigned to it.</p>
    #   @return [String]
    class ListAccessesRequest < Struct.new(
      :max_results,
      :next_token,
      :server_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you can get additional results from the <code>ListAccesses</code> call, a <code>NextToken</code> parameter is returned in the output. You can then pass in a subsequent command to the <code>NextToken</code> parameter to continue listing additional accesses.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that has users assigned to it.</p>
    #   @return [String]
    # @!attribute accesses
    #   <p>Returns the accesses and their properties for the <code>ServerId</code> value that you specify.</p>
    #   @return [Array<Types::ListedAccess>]
    class ListAccessesResponse < Struct.new(
      :next_token,
      :server_id,
      :accesses,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When you can get additional results from the <code>ListAgreements</code> call, a <code>NextToken</code> parameter is returned in the output. You can then pass in a subsequent command to the <code>NextToken</code> parameter to continue listing additional agreements.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>The identifier of the server for which you want a list of agreements.</p>
    #   @return [String]
    class ListAgreementsRequest < Struct.new(
      :max_results,
      :next_token,
      :server_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Returns a token that you can use to call <code>ListAgreements</code> again and receive additional results, if there are any.</p>
    #   @return [String]
    # @!attribute agreements
    #   <p>Returns an array, where each item contains the details of an agreement.</p>
    #   @return [Array<Types::ListedAgreement>]
    class ListAgreementsResponse < Struct.new(
      :next_token,
      :agreements,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When you can get additional results from the <code>ListCertificates</code> call, a <code>NextToken</code> parameter is returned in the output. You can then pass in a subsequent command to the <code>NextToken</code> parameter to continue listing additional certificates.</p>
    #   @return [String]
    class ListCertificatesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Returns the next token, which you can use to list the next certificate.</p>
    #   @return [String]
    # @!attribute certificates
    #   <p>Returns an array of the certificates that are specified in the <code>ListCertificates</code> call.</p>
    #   @return [Array<Types::ListedCertificate>]
    class ListCertificatesResponse < Struct.new(
      :next_token,
      :certificates,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When you can get additional results from the <code>ListConnectors</code> call, a <code>NextToken</code> parameter is returned in the output. You can then pass in a subsequent command to the <code>NextToken</code> parameter to continue listing additional connectors.</p>
    #   @return [String]
    class ListConnectorsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Returns a token that you can use to call <code>ListConnectors</code> again and receive additional results, if there are any.</p>
    #   @return [String]
    # @!attribute connectors
    #   <p>Returns an array, where each item contains the details of a connector.</p>
    #   @return [Array<Types::ListedConnector>]
    class ListConnectorsResponse < Struct.new(
      :next_token,
      :connectors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> <code>ListExecutions</code> returns the <code>NextToken</code> parameter in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional executions.</p> <p> This is useful for pagination, for instance. If you have 100 executions for a workflow, you might only want to list first 10. If so, call the API by specifying the <code>max-results</code>: </p> <p> <code>aws transfer list-executions --max-results 10</code> </p> <p> This returns details for the first 10 executions, as well as the pointer (<code>NextToken</code>) to the eleventh execution. You can now call the API again, supplying the <code>NextToken</code> value you received: </p> <p> <code>aws transfer list-executions --max-results 10 --next-token $somePointerReturnedFromPreviousListResult</code> </p> <p> This call returns the next 10 executions, the 11th through the 20th. You can then repeat the call until the details for all 100 executions have been returned. </p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #   @return [String]
    class ListExecutionsRequest < Struct.new(
      :max_results,
      :next_token,
      :workflow_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> <code>ListExecutions</code> returns the <code>NextToken</code> parameter in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional executions.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #   @return [String]
    # @!attribute executions
    #   <p>Returns the details for each execution, in a <code>ListedExecution</code> array.</p>
    #   @return [Array<Types::ListedExecution>]
    class ListExecutionsResponse < Struct.new(
      :next_token,
      :workflow_id,
      :executions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>A unique identifier for a connector. This value should match the value supplied to the corresponding <code>StartFileTransfer</code> call.</p>
    #   @return [String]
    # @!attribute transfer_id
    #   <p>A unique identifier for a file transfer. This value should match the value supplied to the corresponding <code>StartFileTransfer</code> call.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If there are more file details than returned in this call, use this value for a subsequent call to <code>ListFileTransferResults</code> to retrieve them.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of files to return in a single page. Note that currently you can specify a maximum of 10 file paths in a single <a href="https://docs.aws.amazon.com/transfer/latest/APIReference/API_StartFileTransfer.html">StartFileTransfer</a> operation. Thus, the maximum number of file transfer results that can be returned in a single page is 10. </p>
    #   @return [Integer]
    class ListFileTransferResultsRequest < Struct.new(
      :connector_id,
      :transfer_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute file_transfer_results
    #   <p>Returns the details for the files transferred in the transfer identified by the <code>TransferId</code> and <code>ConnectorId</code> specified.</p> <ul> <li> <p> <code>FilePath</code>: the filename and path to where the file was sent to or retrieved from.</p> </li> <li> <p> <code>StatusCode</code>: current status for the transfer. The status returned is one of the following values:<code>QUEUED</code>, <code>IN_PROGRESS</code>, <code>COMPLETED</code>, or <code>FAILED</code> </p> </li> <li> <p> <code>FailureCode</code>: for transfers that fail, this parameter contains a code indicating the reason. For example, <code>RETRIEVE_FILE_NOT_FOUND</code> </p> </li> <li> <p> <code>FailureMessage</code>: for transfers that fail, this parameter describes the reason for the failure.</p> </li> </ul>
    #   @return [Array<Types::ConnectorFileTransferResult>]
    # @!attribute next_token
    #   <p>Returns a token that you can use to call <code>ListFileTransferResults</code> again and receive additional results, if there are any (against the same <code>TransferId</code>.</p>
    #   @return [String]
    class ListFileTransferResultsResponse < Struct.new(
      :file_transfer_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When there are additional results that were not returned, a <code>NextToken</code> parameter is returned. You can use that value for a subsequent call to <code>ListHostKeys</code> to continue listing results.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>The identifier of the server that contains the host keys that you want to view.</p>
    #   @return [String]
    class ListHostKeysRequest < Struct.new(
      :max_results,
      :next_token,
      :server_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Returns a token that you can use to call <code>ListHostKeys</code> again and receive additional results, if there are any.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>Returns the server identifier that contains the listed host keys.</p>
    #   @return [String]
    # @!attribute host_keys
    #   <p>Returns an array, where each item contains the details of a host key.</p>
    #   @return [Array<Types::ListedHostKey>]
    class ListHostKeysResponse < Struct.new(
      :next_token,
      :server_id,
      :host_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When there are additional results that were not returned, a <code>NextToken</code> parameter is returned. You can use that value for a subsequent call to <code>ListProfiles</code> to continue listing results.</p>
    #   @return [String]
    # @!attribute profile_type
    #   <p>Indicates whether to list only <code>LOCAL</code> type profiles or only <code>PARTNER</code> type profiles. If not supplied in the request, the command lists all types of profiles.</p>
    #   @return [String]
    class ListProfilesRequest < Struct.new(
      :max_results,
      :next_token,
      :profile_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Returns a token that you can use to call <code>ListProfiles</code> again and receive additional results, if there are any.</p>
    #   @return [String]
    # @!attribute profiles
    #   <p>Returns an array, where each item contains the details of a profile.</p>
    #   @return [Array<Types::ListedProfile>]
    class ListProfilesResponse < Struct.new(
      :next_token,
      :profiles,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Specifies the number of security policies to return as a response to the <code>ListSecurityPolicies</code> query.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When additional results are obtained from the <code>ListSecurityPolicies</code> command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional security policies.</p>
    #   @return [String]
    class ListSecurityPoliciesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you can get additional results from the <code>ListSecurityPolicies</code> operation, a <code>NextToken</code> parameter is returned in the output. In a following command, you can pass in the <code>NextToken</code> parameter to continue listing security policies.</p>
    #   @return [String]
    # @!attribute security_policy_names
    #   <p>An array of security policies that were listed.</p>
    #   @return [Array<String>]
    class ListSecurityPoliciesResponse < Struct.new(
      :next_token,
      :security_policy_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Specifies the number of servers to return as a response to the <code>ListServers</code> query.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When additional results are obtained from the <code>ListServers</code> command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional servers.</p>
    #   @return [String]
    class ListServersRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you can get additional results from the <code>ListServers</code> operation, a <code>NextToken</code> parameter is returned in the output. In a following command, you can pass in the <code>NextToken</code> parameter to continue listing additional servers.</p>
    #   @return [String]
    # @!attribute servers
    #   <p>An array of servers that were listed.</p>
    #   @return [Array<Types::ListedServer>]
    class ListServersResponse < Struct.new(
      :next_token,
      :servers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>Requests the tags associated with a particular Amazon Resource Name (ARN). An ARN is an identifier for a specific Amazon Web Services resource, such as a server, user, or role.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the number of tags to return as a response to the <code>ListTagsForResource</code> request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When you request additional results from the <code>ListTagsForResource</code> operation, a <code>NextToken</code> parameter is returned in the input. You can then pass in a subsequent command to the <code>NextToken</code> parameter to continue listing additional tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN you specified to list the tags of.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When you can get additional results from the <code>ListTagsForResource</code> call, a <code>NextToken</code> parameter is returned in the output. You can then pass in a subsequent command to the <code>NextToken</code> parameter to continue listing additional tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs that are assigned to a resource, usually for the purpose of grouping and searching for items. Tags are metadata that you define.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :arn,
      :next_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Specifies the number of users to return as a response to the <code>ListUsers</code> request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If there are additional results from the <code>ListUsers</code> call, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> to a subsequent <code>ListUsers</code> command, to continue listing additional users.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that has users assigned to it.</p>
    #   @return [String]
    class ListUsersRequest < Struct.new(
      :max_results,
      :next_token,
      :server_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you can get additional results from the <code>ListUsers</code> call, a <code>NextToken</code> parameter is returned in the output. You can then pass in a subsequent command to the <code>NextToken</code> parameter to continue listing additional users.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that the users are assigned to.</p>
    #   @return [String]
    # @!attribute users
    #   <p>Returns the Transfer Family users and their properties for the <code>ServerId</code> value that you specify.</p>
    #   @return [Array<Types::ListedUser>]
    class ListUsersResponse < Struct.new(
      :next_token,
      :server_id,
      :users,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Returns the <code>NextToken</code> parameter in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional web apps.</p>
    #   @return [String]
    class ListWebAppsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Provide this value for the <code>NextToken</code> parameter in a subsequent command to continue listing additional web apps.</p>
    #   @return [String]
    # @!attribute web_apps
    #   <p>Returns, for each listed web app, a structure that contains details for the web app.</p>
    #   @return [Array<Types::ListedWebApp>]
    class ListWebAppsResponse < Struct.new(
      :next_token,
      :web_apps,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> <code>ListWorkflows</code> returns the <code>NextToken</code> parameter in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional workflows.</p>
    #   @return [String]
    class ListWorkflowsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> <code>ListWorkflows</code> returns the <code>NextToken</code> parameter in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional workflows.</p>
    #   @return [String]
    # @!attribute workflows
    #   <p>Returns the <code>Arn</code>, <code>WorkflowId</code>, and <code>Description</code> for each workflow.</p>
    #   @return [Array<Types::ListedWorkflow>]
    class ListWorkflowsResponse < Struct.new(
      :next_token,
      :workflows,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lists the properties for one or more specified associated accesses.</p>
    # @!attribute home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p> <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p> <note> <p>You can use the <code>HomeDirectory</code> parameter for <code>HomeDirectoryType</code> when it is set to either <code>PATH</code> or <code>LOGICAL</code>.</p> </note>
    #   @return [String]
    # @!attribute home_directory_type
    #   <p>The type of landing directory (folder) that you want your users' home directory to be when they log in to the server. If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or Amazon EFS path as is in their file transfer protocol clients. If you set it to <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 or Amazon EFS paths visible to your users.</p> <note> <p>If <code>HomeDirectoryType</code> is <code>LOGICAL</code>, you must provide mappings, using the <code>HomeDirectoryMappings</code> parameter. If, on the other hand, <code>HomeDirectoryType</code> is <code>PATH</code>, you provide an absolute path using the <code>HomeDirectory</code> parameter. You cannot have both <code>HomeDirectory</code> and <code>HomeDirectoryMappings</code> in your template.</p> </note>
    #   @return [String]
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that controls your users' access to your Amazon S3 bucket or Amazon EFS file system. The policies attached to this role determine the level of access that you want to provide your users when transferring files into and out of your Amazon S3 bucket or Amazon EFS file system. The IAM role should also contain a trust relationship that allows the server to access your resources when servicing your users' transfer requests.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>A unique identifier that is required to identify specific groups within your directory. The users of the group that you associate have access to your Amazon S3 or Amazon EFS resources over the enabled protocols using Transfer Family. If you know the group name, you can view the SID values by running the following command using Windows PowerShell.</p> <p> <code>Get-ADGroup -Filter {samAccountName -like "<i>YourGroupName</i>*"} -Properties * | Select SamAccountName,ObjectSid</code> </p> <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p> <p>The regular expression used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-</p>
    #   @return [String]
    class ListedAccess < Struct.new(
      :home_directory,
      :home_directory_type,
      :role,
      :external_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the properties of an agreement.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the specified agreement.</p>
    #   @return [String]
    # @!attribute agreement_id
    #   <p>A unique identifier for the agreement. This identifier is returned when you create an agreement.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The current description for the agreement. You can change it by calling the <code>UpdateAgreement</code> operation and providing a new description. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The agreement can be either <code>ACTIVE</code> or <code>INACTIVE</code>.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>The unique identifier for the agreement.</p>
    #   @return [String]
    # @!attribute local_profile_id
    #   <p>A unique identifier for the AS2 local profile.</p>
    #   @return [String]
    # @!attribute partner_profile_id
    #   <p>A unique identifier for the partner profile.</p>
    #   @return [String]
    class ListedAgreement < Struct.new(
      :arn,
      :agreement_id,
      :description,
      :status,
      :server_id,
      :local_profile_id,
      :partner_profile_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the properties of a certificate.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the specified certificate.</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>An array of identifiers for the imported certificates. You use this identifier for working with profiles and partner profiles.</p>
    #   @return [String]
    # @!attribute usage
    #   <p>Specifies how this certificate is used. It can be used in the following ways:</p> <ul> <li> <p> <code>SIGNING</code>: For signing AS2 messages</p> </li> <li> <p> <code>ENCRYPTION</code>: For encrypting AS2 messages</p> </li> <li> <p> <code>TLS</code>: For securing AS2 communications sent over HTTPS</p> </li> </ul>
    #   @return [String]
    # @!attribute status
    #   <p>The certificate can be either <code>ACTIVE</code>, <code>PENDING_ROTATION</code>, or <code>INACTIVE</code>. <code>PENDING_ROTATION</code> means that this certificate will replace the current certificate when it expires.</p>
    #   @return [String]
    # @!attribute active_date
    #   <p>An optional date that specifies when the certificate becomes active. If you do not specify a value, <code>ActiveDate</code> takes the same value as <code>NotBeforeDate</code>, which is specified by the CA. </p>
    #   @return [Time]
    # @!attribute inactive_date
    #   <p>An optional date that specifies when the certificate becomes inactive. If you do not specify a value, <code>InactiveDate</code> takes the same value as <code>NotAfterDate</code>, which is specified by the CA.</p>
    #   @return [Time]
    # @!attribute type
    #   <p>The type for the certificate. If a private key has been specified for the certificate, its type is <code>CERTIFICATE_WITH_PRIVATE_KEY</code>. If there is no private key, the type is <code>CERTIFICATE</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The name or short description that's used to identify the certificate.</p>
    #   @return [String]
    class ListedCertificate < Struct.new(
      :arn,
      :certificate_id,
      :usage,
      :status,
      :active_date,
      :inactive_date,
      :type,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns details of the connector that is specified.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the specified connector.</p>
    #   @return [String]
    # @!attribute connector_id
    #   <p>The unique identifier for the connector.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL of the partner's AS2 or SFTP endpoint.</p>
    #   @return [String]
    class ListedConnector < Struct.new(
      :arn,
      :connector_id,
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns properties of the execution that is specified.</p>
    # @!attribute execution_id
    #   <p>A unique identifier for the execution of a workflow.</p>
    #   @return [String]
    # @!attribute initial_file_location
    #   <p>A structure that describes the Amazon S3 or EFS file location. This is the file location when the execution begins: if the file is being copied, this is the initial (as opposed to destination) file location.</p>
    #   @return [Types::FileLocation]
    # @!attribute service_metadata
    #   <p>A container object for the session details that are associated with a workflow.</p>
    #   @return [Types::ServiceMetadata]
    # @!attribute status
    #   <p>The status is one of the execution. Can be in progress, completed, exception encountered, or handling the exception.</p>
    #   @return [String]
    class ListedExecution < Struct.new(
      :execution_id,
      :initial_file_location,
      :service_metadata,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns properties of the host key that's specified.</p>
    # @!attribute arn
    #   <p>The unique Amazon Resource Name (ARN) of the host key.</p>
    #   @return [String]
    # @!attribute host_key_id
    #   <p>A unique identifier for the host key.</p>
    #   @return [String]
    # @!attribute fingerprint
    #   <p>The public key fingerprint, which is a short sequence of bytes used to identify the longer public key.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The current description for the host key. You can change it by calling the <code>UpdateHostKey</code> operation and providing a new description.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The encryption algorithm that is used for the host key. The <code>Type</code> parameter is specified by using one of the following values:</p> <ul> <li> <p> <code>ssh-rsa</code> </p> </li> <li> <p> <code>ssh-ed25519</code> </p> </li> <li> <p> <code>ecdsa-sha2-nistp256</code> </p> </li> <li> <p> <code>ecdsa-sha2-nistp384</code> </p> </li> <li> <p> <code>ecdsa-sha2-nistp521</code> </p> </li> </ul>
    #   @return [String]
    # @!attribute date_imported
    #   <p>The date on which the host key was added to the server.</p>
    #   @return [Time]
    class ListedHostKey < Struct.new(
      :arn,
      :host_key_id,
      :fingerprint,
      :description,
      :type,
      :date_imported,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the properties of the profile that was specified.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the specified profile.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>A unique identifier for the local or partner AS2 profile.</p>
    #   @return [String]
    # @!attribute as2_id
    #   <p>The <code>As2Id</code> is the <i>AS2-name</i>, as defined in the <a href="https://datatracker.ietf.org/doc/html/rfc4130">RFC 4130</a>. For inbound transfers, this is the <code>AS2-From</code> header for the AS2 messages sent from the partner. For outbound connectors, this is the <code>AS2-To</code> header for the AS2 messages sent to the partner using the <code>StartFileTransfer</code> API operation. This ID cannot include spaces.</p>
    #   @return [String]
    # @!attribute profile_type
    #   <p>Indicates whether to list only <code>LOCAL</code> type profiles or only <code>PARTNER</code> type profiles. If not supplied in the request, the command lists all types of profiles.</p>
    #   @return [String]
    class ListedProfile < Struct.new(
      :arn,
      :profile_id,
      :as2_id,
      :profile_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns properties of a file transfer protocol-enabled server that was specified.</p>
    # @!attribute arn
    #   <p>Specifies the unique Amazon Resource Name (ARN) for a server to be listed.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>Specifies the domain of the storage system that is used for file transfers. There are two domains available: Amazon Simple Storage Service (Amazon S3) and Amazon Elastic File System (Amazon EFS). The default value is S3.</p>
    #   @return [String]
    # @!attribute identity_provider_type
    #   <p>The mode of authentication for a server. The default value is <code>SERVICE_MANAGED</code>, which allows you to store and access user credentials within the Transfer Family service.</p> <p>Use <code>AWS_DIRECTORY_SERVICE</code> to provide access to Active Directory groups in Directory Service for Microsoft Active Directory or Microsoft Active Directory in your on-premises environment or in Amazon Web Services using AD Connector. This option also requires you to provide a Directory ID by using the <code>IdentityProviderDetails</code> parameter.</p> <p>Use the <code>API_GATEWAY</code> value to integrate with an identity provider of your choosing. The <code>API_GATEWAY</code> setting requires you to provide an Amazon API Gateway endpoint URL to call for authentication by using the <code>IdentityProviderDetails</code> parameter.</p> <p>Use the <code>AWS_LAMBDA</code> value to directly use an Lambda function as your identity provider. If you choose this value, you must specify the ARN for the Lambda function in the <code>Function</code> parameter for the <code>IdentityProviderDetails</code> data type.</p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>Specifies the type of VPC endpoint that your server is connected to. If your server is connected to a VPC endpoint, your server isn't accessible over the public internet.</p>
    #   @return [String]
    # @!attribute logging_role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that allows a server to turn on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, you can view user activity in your CloudWatch logs.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>Specifies the unique system assigned identifier for the servers that were listed.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The condition of the server that was described. A value of <code>ONLINE</code> indicates that the server can accept jobs and transfer files. A <code>State</code> value of <code>OFFLINE</code> means that the server cannot perform file transfer operations.</p> <p>The states of <code>STARTING</code> and <code>STOPPING</code> indicate that the server is in an intermediate state, either not fully able to respond, or not fully offline. The values of <code>START_FAILED</code> or <code>STOP_FAILED</code> can indicate an error condition.</p>
    #   @return [String]
    # @!attribute user_count
    #   <p>Specifies the number of users that are assigned to a server you specified with the <code>ServerId</code>.</p>
    #   @return [Integer]
    class ListedServer < Struct.new(
      :arn,
      :domain,
      :identity_provider_type,
      :endpoint_type,
      :logging_role,
      :server_id,
      :state,
      :user_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns properties of the user that you specify.</p>
    # @!attribute arn
    #   <p>Provides the unique Amazon Resource Name (ARN) for the user that you want to learn about.</p>
    #   @return [String]
    # @!attribute home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p> <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p> <note> <p>You can use the <code>HomeDirectory</code> parameter for <code>HomeDirectoryType</code> when it is set to either <code>PATH</code> or <code>LOGICAL</code>.</p> </note>
    #   @return [String]
    # @!attribute home_directory_type
    #   <p>The type of landing directory (folder) that you want your users' home directory to be when they log in to the server. If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or Amazon EFS path as is in their file transfer protocol clients. If you set it to <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 or Amazon EFS paths visible to your users.</p> <note> <p>If <code>HomeDirectoryType</code> is <code>LOGICAL</code>, you must provide mappings, using the <code>HomeDirectoryMappings</code> parameter. If, on the other hand, <code>HomeDirectoryType</code> is <code>PATH</code>, you provide an absolute path using the <code>HomeDirectory</code> parameter. You cannot have both <code>HomeDirectory</code> and <code>HomeDirectoryMappings</code> in your template.</p> </note>
    #   @return [String]
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that controls your users' access to your Amazon S3 bucket or Amazon EFS file system. The policies attached to this role determine the level of access that you want to provide your users when transferring files into and out of your Amazon S3 bucket or Amazon EFS file system. The IAM role should also contain a trust relationship that allows the server to access your resources when servicing your users' transfer requests.</p> <note> <p>The IAM role that controls your users' access to your Amazon S3 bucket for servers with <code>Domain=S3</code>, or your EFS file system for servers with <code>Domain=EFS</code>. </p> <p>The policies attached to this role determine the level of access you want to provide your users when transferring files into and out of your S3 buckets or EFS file systems.</p> </note>
    #   @return [String]
    # @!attribute ssh_public_key_count
    #   <p>Specifies the number of SSH public keys stored for the user you specified.</p>
    #   @return [Integer]
    # @!attribute user_name
    #   <p>Specifies the name of the user whose ARN was specified. User names are used for authentication purposes.</p>
    #   @return [String]
    class ListedUser < Struct.new(
      :arn,
      :home_directory,
      :home_directory_type,
      :role,
      :ssh_public_key_count,
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> a structure that contains details for the web app.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the web app.</p>
    #   @return [String]
    # @!attribute web_app_id
    #   <p>The unique identifier for the web app.</p>
    #   @return [String]
    # @!attribute access_endpoint
    #   <p>The <code>AccessEndpoint</code> is the URL that you provide to your users for them to interact with the Transfer Family web app. You can specify a custom URL or use the default value.</p>
    #   @return [String]
    # @!attribute web_app_endpoint
    #   <p>The <code>WebAppEndpoint</code> is the unique URL for your Transfer Family web app. This is the value that you use when you configure <b>Origins</b> on CloudFront.</p>
    #   @return [String]
    class ListedWebApp < Struct.new(
      :arn,
      :web_app_id,
      :access_endpoint,
      :web_app_endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the identifier, text description, and Amazon Resource Name (ARN) for the workflow.</p>
    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Specifies the text description for the workflow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Specifies the unique Amazon Resource Name (ARN) for the workflow.</p>
    #   @return [String]
    class ListedWorkflow < Struct.new(
      :workflow_id,
      :description,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Consists of the logging role and the log group name.</p>
    # @!attribute logging_role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that allows a server to turn on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, you can view user activity in your CloudWatch logs.</p>
    #   @return [String]
    # @!attribute log_group_name
    #   <p>The name of the CloudWatch logging group for the Transfer Family server to which this workflow belongs.</p>
    #   @return [String]
    class LoggingConfiguration < Struct.new(
      :logging_role,
      :log_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MapType
      FILE = 'FILE'
      DIRECTORY = 'DIRECTORY'
    end

    module MdnResponse
      SYNC = 'SYNC'
      NONE = 'NONE'
    end

    module MdnSigningAlg
      SHA256 = 'SHA256'
      SHA384 = 'SHA384'
      SHA512 = 'SHA512'
      SHA1 = 'SHA1'
      NONE = 'NONE'
      DEFAULT = 'DEFAULT'
    end

    module OverwriteExisting
      TRUE = 'TRUE'
      FALSE = 'FALSE'
    end

    # <p>The full POSIX identity, including user ID (<code>Uid</code>), group ID (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls your users' access to your Amazon EFS file systems. The POSIX permissions that are set on files and directories in your file system determine the level of access your users get when transferring files into and out of your Amazon EFS file systems.</p>
    # @!attribute uid
    #   <p>The POSIX user ID used for all EFS operations by this user.</p>
    #   @return [Integer]
    # @!attribute gid
    #   <p>The POSIX group ID used for all EFS operations by this user.</p>
    #   @return [Integer]
    # @!attribute secondary_gids
    #   <p>The secondary POSIX group IDs used for all EFS operations by this user.</p>
    #   @return [Array<Integer>]
    class PosixProfile < Struct.new(
      :uid,
      :gid,
      :secondary_gids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PreserveContentType
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    module PreserveFilenameType
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    module ProfileType
      LOCAL = 'LOCAL'
      PARTNER = 'PARTNER'
    end

    module Protocol
      SFTP = 'SFTP'
      FTP = 'FTP'
      FTPS = 'FTPS'
      AS2 = 'AS2'
    end

    # <p> The protocol settings that are configured for your server. </p>
    # @!attribute passive_ip
    #   <p> Indicates passive mode, for FTP and FTPS protocols. Enter a single IPv4 address, such as the public IP address of a firewall, router, or load balancer. For example: </p> <p> <code>aws transfer update-server --protocol-details PassiveIp=0.0.0.0</code> </p> <p>Replace <code>0.0.0.0</code> in the example above with the actual IP address you want to use.</p> <note> <p> If you change the <code>PassiveIp</code> value, you must stop and then restart your Transfer Family server for the change to take effect. For details on using passive mode (PASV) in a NAT environment, see <a href="http://aws.amazon.com/blogs/storage/configuring-your-ftps-server-behind-a-firewall-or-nat-with-aws-transfer-family/">Configuring your FTPS server behind a firewall or NAT with Transfer Family</a>. </p> </note> <p> <i>Special values</i> </p> <p>The <code>AUTO</code> and <code>0.0.0.0</code> are special values for the <code>PassiveIp</code> parameter. The value <code>PassiveIp=AUTO</code> is assigned by default to FTP and FTPS type servers. In this case, the server automatically responds with one of the endpoint IPs within the PASV response. <code>PassiveIp=0.0.0.0</code> has a more unique application for its usage. For example, if you have a High Availability (HA) Network Load Balancer (NLB) environment, where you have 3 subnets, you can only specify a single IP address using the <code>PassiveIp</code> parameter. This reduces the effectiveness of having High Availability. In this case, you can specify <code>PassiveIp=0.0.0.0</code>. This tells the client to use the same IP address as the Control connection and utilize all AZs for their connections. Note, however, that not all FTP clients support the <code>PassiveIp=0.0.0.0</code> response. FileZilla and WinSCP do support it. If you are using other clients, check to see if your client supports the <code>PassiveIp=0.0.0.0</code> response.</p>
    #   @return [String]
    # @!attribute tls_session_resumption_mode
    #   <p>A property used with Transfer Family servers that use the FTPS protocol. TLS Session Resumption provides a mechanism to resume or share a negotiated secret key between the control and data connection for an FTPS session. <code>TlsSessionResumptionMode</code> determines whether or not the server resumes recent, negotiated sessions through a unique session ID. This property is available during <code>CreateServer</code> and <code>UpdateServer</code> calls. If a <code>TlsSessionResumptionMode</code> value is not specified during <code>CreateServer</code>, it is set to <code>ENFORCED</code> by default.</p> <ul> <li> <p> <code>DISABLED</code>: the server does not process TLS session resumption client requests and creates a new TLS session for each request. </p> </li> <li> <p> <code>ENABLED</code>: the server processes and accepts clients that are performing TLS session resumption. The server doesn't reject client data connections that do not perform the TLS session resumption client processing.</p> </li> <li> <p> <code>ENFORCED</code>: the server processes and accepts clients that are performing TLS session resumption. The server rejects client data connections that do not perform the TLS session resumption client processing. Before you set the value to <code>ENFORCED</code>, test your clients.</p> <note> <p>Not all FTPS clients perform TLS session resumption. So, if you choose to enforce TLS session resumption, you prevent any connections from FTPS clients that don't perform the protocol negotiation. To determine whether or not you can use the <code>ENFORCED</code> value, you need to test your clients.</p> </note> </li> </ul>
    #   @return [String]
    # @!attribute set_stat_option
    #   <p>Use the <code>SetStatOption</code> to ignore the error that is generated when the client attempts to use <code>SETSTAT</code> on a file you are uploading to an S3 bucket.</p> <p>Some SFTP file transfer clients can attempt to change the attributes of remote files, including timestamp and permissions, using commands, such as <code>SETSTAT</code> when uploading the file. However, these commands are not compatible with object storage systems, such as Amazon S3. Due to this incompatibility, file uploads from these clients can result in errors even when the file is otherwise successfully uploaded.</p> <p>Set the value to <code>ENABLE_NO_OP</code> to have the Transfer Family server ignore the <code>SETSTAT</code> command, and upload files without needing to make any changes to your SFTP client. While the <code>SetStatOption</code> <code>ENABLE_NO_OP</code> setting ignores the error, it does generate a log entry in Amazon CloudWatch Logs, so you can determine when the client is making a <code>SETSTAT</code> call.</p> <note> <p>If you want to preserve the original timestamp for your file, and modify other file attributes using <code>SETSTAT</code>, you can use Amazon EFS as backend storage with Transfer Family.</p> </note>
    #   @return [String]
    # @!attribute as2_transports
    #   <p>Indicates the transport method for the AS2 messages. Currently, only HTTP is supported.</p>
    #   @return [Array<String>]
    class ProtocolDetails < Struct.new(
      :passive_ip,
      :tls_session_resumption_mode,
      :set_stat_option,
      :as2_transports,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The requested resource does not exist, or exists in a region other than the one specified for the command.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource
    #   @return [String]
    # @!attribute resource_type
    #   @return [String]
    class ResourceExistsException < Struct.new(
      :message,
      :resource,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a resource is not found by the Amazon Web ServicesTransfer Family service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource
    #   @return [String]
    # @!attribute resource_type
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the details for the file location for the file that's being used in the workflow. Only applicable if you are using S3 storage.</p>
    # @!attribute bucket
    #   <p>Specifies the S3 bucket that contains the file being used.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The name assigned to the file when it was created in Amazon S3. You use the object key to retrieve the object.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Specifies the file version.</p>
    #   @return [String]
    # @!attribute etag
    #   <p>The entity tag is a hash of the object. The ETag reflects changes only to the contents of an object, not its metadata.</p>
    #   @return [String]
    class S3FileLocation < Struct.new(
      :bucket,
      :key,
      :version_id,
      :etag,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the customer input Amazon S3 file location. If it is used inside <code>copyStepDetails.DestinationFileLocation</code>, it should be the S3 copy destination.</p> <p> You need to provide the bucket and key. The key can represent either a path or a file. This is determined by whether or not you end the key value with the forward slash (/) character. If the final character is "/", then your file is copied to the folder, and its name does not change. If, rather, the final character is alphanumeric, your uploaded file is renamed to the path value. In this case, if a file with that name already exists, it is overwritten. </p> <p>For example, if your path is <code>shared-files/bob/</code>, your uploaded files are copied to the <code>shared-files/bob/</code>, folder. If your path is <code>shared-files/today</code>, each uploaded file is copied to the <code>shared-files</code> folder and named <code>today</code>: each upload overwrites the previous version of the <i>bob</i> file.</p>
    # @!attribute bucket
    #   <p>Specifies the S3 bucket for the customer input file.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The name assigned to the file when it was created in Amazon S3. You use the object key to retrieve the object.</p>
    #   @return [String]
    class S3InputFileLocation < Struct.new(
      :bucket,
      :key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon S3 storage options that are configured for your server.</p>
    # @!attribute directory_listing_optimization
    #   <p>Specifies whether or not performance for your Amazon S3 directories is optimized. This is disabled by default.</p> <p>By default, home directory mappings have a <code>TYPE</code> of <code>DIRECTORY</code>. If you enable this option, you would then need to explicitly set the <code>HomeDirectoryMapEntry</code> <code>Type</code> to <code>FILE</code> if you want a mapping to have a file target.</p>
    #   @return [String]
    class S3StorageOptions < Struct.new(
      :directory_listing_optimization,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the key-value pair that are assigned to a file during the execution of a Tagging step.</p>
    # @!attribute key
    #   <p>The name assigned to the tag that you create.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that corresponds to the key.</p>
    #   @return [String]
    class S3Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SecurityPolicyProtocol
      SFTP = 'SFTP'
      FTPS = 'FTPS'
    end

    module SecurityPolicyResourceType
      SERVER = 'SERVER'
      CONNECTOR = 'CONNECTOR'
    end

    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>A unique identifier for the execution of a workflow.</p>
    #   @return [String]
    # @!attribute token
    #   <p>Used to distinguish between multiple callbacks for multiple Lambda steps within the same execution.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates whether the specified step succeeded or failed.</p>
    #   @return [String]
    class SendWorkflowStepStateRequest < Struct.new(
      :workflow_id,
      :execution_id,
      :token,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class SendWorkflowStepStateResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A container object for the session details that are associated with a workflow.</p>
    # @!attribute user_details
    #   <p>The Server ID (<code>ServerId</code>), Session ID (<code>SessionId</code>) and user (<code>UserName</code>) make up the <code>UserDetails</code>.</p>
    #   @return [Types::UserDetails]
    class ServiceMetadata < Struct.new(
      :user_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request has failed because the Amazon Web ServicesTransfer Family service is not available.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SetStatOption
      DEFAULT = 'DEFAULT'
      ENABLE_NO_OP = 'ENABLE_NO_OP'
    end

    module SftpAuthenticationMethods
      PASSWORD = 'PASSWORD'
      PUBLIC_KEY = 'PUBLIC_KEY'
      PUBLIC_KEY_OR_PASSWORD = 'PUBLIC_KEY_OR_PASSWORD'
      PUBLIC_KEY_AND_PASSWORD = 'PUBLIC_KEY_AND_PASSWORD'
    end

    # <p>Contains the details for an SFTP connector object. The connector object is used for transferring files to and from a partner's SFTP server.</p>
    # @!attribute user_secret_id
    #   <p>The identifier for the secret (in Amazon Web Services Secrets Manager) that contains the SFTP user's private key, password, or both. The identifier must be the Amazon Resource Name (ARN) of the secret.</p> <note> <ul> <li> <p>Required when creating an SFTP connector</p> </li> <li> <p>Optional when updating an existing SFTP connector</p> </li> </ul> </note>
    #   @return [String]
    # @!attribute trusted_host_keys
    #   <p>The public portion of the host key, or keys, that are used to identify the external server to which you are connecting. You can use the <code>ssh-keyscan</code> command against the SFTP server to retrieve the necessary key.</p> <note> <p> <code>TrustedHostKeys</code> is optional for <code>CreateConnector</code>. If not provided, you can use <code>TestConnection</code> to retrieve the server host key during the initial connection attempt, and subsequently update the connector with the observed host key.</p> </note> <p>The three standard SSH public key format elements are <code>&lt;key type&gt;</code>, <code>&lt;body base64&gt;</code>, and an optional <code>&lt;comment&gt;</code>, with spaces between each element. Specify only the <code>&lt;key type&gt;</code> and <code>&lt;body base64&gt;</code>: do not enter the <code>&lt;comment&gt;</code> portion of the key.</p> <p>For the trusted host key, Transfer Family accepts RSA and ECDSA keys.</p> <ul> <li> <p>For RSA keys, the <code>&lt;key type&gt;</code> string is <code>ssh-rsa</code>.</p> </li> <li> <p>For ECDSA keys, the <code>&lt;key type&gt;</code> string is either <code>ecdsa-sha2-nistp256</code>, <code>ecdsa-sha2-nistp384</code>, or <code>ecdsa-sha2-nistp521</code>, depending on the size of the key you generated.</p> </li> </ul> <p>Run this command to retrieve the SFTP server host key, where your SFTP server name is <code>ftp.host.com</code>.</p> <p> <code>ssh-keyscan ftp.host.com</code> </p> <p>This prints the public host key to standard output.</p> <p> <code>ftp.host.com ssh-rsa AAAAB3Nza...&lt;long-string-for-public-key</code> </p> <p>Copy and paste this string into the <code>TrustedHostKeys</code> field for the <code>create-connector</code> command or into the <b>Trusted host keys</b> field in the console.</p>
    #   @return [Array<String>]
    # @!attribute max_concurrent_connections
    #   <p>Specify the number of concurrent connections that your connector creates to the remote server. The default value is <code>5</code> (this is also the maximum value allowed).</p> <p>This parameter specifies the number of active connections that your connector can establish with the remote server at the same time. Increasing this value can enhance connector performance when transferring large file batches by enabling parallel operations.</p>
    #   @return [Integer]
    class SftpConnectorConfig < Struct.new(
      :user_secret_id,
      :trusted_host_keys,
      :max_concurrent_connections,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_concurrent_connections] = 1 unless options.key?(:max_concurrent_connections)
        super
      end
    end

    # <p>Contains the details for an SFTP connector connection.</p>
    # @!attribute host_key
    #   <p>The SSH public key of the remote SFTP server. This is returned during the initial connection attempt when you call <code>TestConnection</code>. It allows you to retrieve the valid server host key to update the connector when you are unable to obtain it in advance.</p>
    #   @return [String]
    class SftpConnectorConnectionDetails < Struct.new(
      :host_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SigningAlg
      SHA256 = 'SHA256'
      SHA384 = 'SHA384'
      SHA512 = 'SHA512'
      SHA1 = 'SHA1'
      NONE = 'NONE'
    end

    # <p>Provides information about the public Secure Shell (SSH) key that is associated with a Transfer Family user for the specific file transfer protocol-enabled server (as identified by <code>ServerId</code>). The information returned includes the date the key was imported, the public key contents, and the public key ID. A user can store more than one SSH public key associated with their user name on a specific server.</p>
    # @!attribute date_imported
    #   <p>Specifies the date that the public key was added to the Transfer Family user.</p>
    #   @return [Time]
    # @!attribute ssh_public_key_body
    #   <p>Specifies the content of the SSH public key as specified by the <code>PublicKeyId</code>.</p> <p>Transfer Family accepts RSA, ECDSA, and ED25519 keys.</p>
    #   @return [String]
    # @!attribute ssh_public_key_id
    #   <p>Specifies the <code>SshPublicKeyId</code> parameter contains the identifier of the public key.</p>
    #   @return [String]
    class SshPublicKey < Struct.new(
      :date_imported,
      :ssh_public_key_body,
      :ssh_public_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>The unique identifier for the connector.</p>
    #   @return [String]
    # @!attribute remote_directory_path
    #   <p>Specifies the directory on the remote SFTP server for which you want to list its contents.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>An optional parameter where you can specify the maximum number of file/directory names to retrieve. The default value is 1,000.</p>
    #   @return [Integer]
    # @!attribute output_directory_path
    #   <p>Specifies the path (bucket and prefix) in Amazon S3 storage to store the results of the directory listing.</p>
    #   @return [String]
    class StartDirectoryListingRequest < Struct.new(
      :connector_id,
      :remote_directory_path,
      :max_items,
      :output_directory_path,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute listing_id
    #   <p>Returns a unique identifier for the directory listing call.</p>
    #   @return [String]
    # @!attribute output_file_name
    #   <p>Returns the file name where the results are stored. This is a combination of the connector ID and the listing ID: <code>&lt;connector-id&gt;-&lt;listing-id&gt;.json</code>.</p>
    #   @return [String]
    class StartDirectoryListingResponse < Struct.new(
      :listing_id,
      :output_file_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>The unique identifier for the connector.</p>
    #   @return [String]
    # @!attribute send_file_paths
    #   <p>One or more source paths for the Amazon S3 storage. Each string represents a source file path for one outbound file transfer. For example, <code> <i>amzn-s3-demo-bucket</i>/<i>myfile.txt</i> </code>.</p> <note> <p>Replace <code> <i>amzn-s3-demo-bucket</i> </code> with one of your actual buckets.</p> </note>
    #   @return [Array<String>]
    # @!attribute retrieve_file_paths
    #   <p>One or more source paths for the partner's SFTP server. Each string represents a source file path for one inbound file transfer.</p>
    #   @return [Array<String>]
    # @!attribute local_directory_path
    #   <p>For an inbound transfer, the <code>LocaDirectoryPath</code> specifies the destination for one or more files that are transferred from the partner's SFTP server.</p>
    #   @return [String]
    # @!attribute remote_directory_path
    #   <p>For an outbound transfer, the <code>RemoteDirectoryPath</code> specifies the destination for one or more files that are transferred to the partner's SFTP server. If you don't specify a <code>RemoteDirectoryPath</code>, the destination for transferred files is the SFTP user's home directory.</p>
    #   @return [String]
    class StartFileTransferRequest < Struct.new(
      :connector_id,
      :send_file_paths,
      :retrieve_file_paths,
      :local_directory_path,
      :remote_directory_path,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute transfer_id
    #   <p>Returns the unique identifier for the file transfer.</p>
    #   @return [String]
    class StartFileTransferResponse < Struct.new(
      :transfer_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>The unique identifier for the connector.</p>
    #   @return [String]
    # @!attribute delete_path
    #   <p>The absolute path of the file or directory to delete. You can only specify one path per call to this operation.</p>
    #   @return [String]
    class StartRemoteDeleteRequest < Struct.new(
      :connector_id,
      :delete_path,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute delete_id
    #   <p>Returns a unique identifier for the delete operation.</p>
    #   @return [String]
    class StartRemoteDeleteResponse < Struct.new(
      :delete_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>The unique identifier for the connector.</p>
    #   @return [String]
    # @!attribute source_path
    #   <p>The absolute path of the file or directory to move or rename. You can only specify one path per call to this operation.</p>
    #   @return [String]
    # @!attribute target_path
    #   <p>The absolute path for the target of the move/rename operation.</p>
    #   @return [String]
    class StartRemoteMoveRequest < Struct.new(
      :connector_id,
      :source_path,
      :target_path,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute move_id
    #   <p>Returns a unique identifier for the move/rename operation.</p>
    #   @return [String]
    class StartRemoteMoveResponse < Struct.new(
      :move_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that you start.</p>
    #   @return [String]
    class StartServerRequest < Struct.new(
      :server_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the condition of a file transfer protocol-enabled server with respect to its ability to perform file operations. There are six possible states: <code>OFFLINE</code>, <code>ONLINE</code>, <code>STARTING</code>, <code>STOPPING</code>, <code>START_FAILED</code>, and <code>STOP_FAILED</code>.</p> <p> <code>OFFLINE</code> indicates that the server exists, but that it is not available for file operations. <code>ONLINE</code> indicates that the server is available to perform file operations. <code>STARTING</code> indicates that the server's was instantiated, but the server is not yet available to perform file operations. Under normal conditions, it can take a couple of minutes for the server to be completely operational. Both <code>START_FAILED</code> and <code>STOP_FAILED</code> are error conditions.</p>
    module State
      OFFLINE = 'OFFLINE'
      ONLINE = 'ONLINE'
      STARTING = 'STARTING'
      STOPPING = 'STOPPING'
      START_FAILED = 'START_FAILED'
      STOP_FAILED = 'STOP_FAILED'
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that you stopped.</p>
    #   @return [String]
    class StopServerRequest < Struct.new(
      :server_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Creates a key-value pair for a specific resource. Tags are metadata that you can use to search for and group a resource for various purposes. You can apply tags to servers, users, and roles. A tag key can take more than one value. For example, to group servers for accounting purposes, you might create a tag called <code>Group</code> and assign the values <code>Research</code> and <code>Accounting</code> to that group.</p>
    # @!attribute key
    #   <p>The name assigned to the tag that you create.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Contains one or more values that you assigned to the key name you create.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>An Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a server, user, or role.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs assigned to ARNs that you can use to group and search for resources by type. You can attach this metadata to resources (servers, users, workflows, and so on) for any purpose.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Each step type has its own <code>StepDetails</code> structure.</p> <p>The key/value pairs used to tag a file during the execution of a workflow step.</p>
    # @!attribute name
    #   <p>The name of the step, used as an identifier.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Array that contains from 1 to 10 key/value pairs.</p>
    #   @return [Array<Types::S3Tag>]
    # @!attribute source_file_location
    #   <p>Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow.</p> <ul> <li> <p>To use the previous file as the input, enter <code>${previous.file}</code>. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value.</p> </li> <li> <p>To use the originally uploaded file location as input for this step, enter <code>${original.file}</code>.</p> </li> </ul>
    #   @return [String]
    class TagStepDetails < Struct.new(
      :name,
      :tags,
      :source_file_location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>The unique identifier for the connector.</p>
    #   @return [String]
    class TestConnectionRequest < Struct.new(
      :connector_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>Returns the identifier of the connector object that you are testing.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Returns <code>OK</code> for successful test, or <code>ERROR</code> if the test fails.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Returns <code>Connection succeeded</code> if the test is successful. Or, returns a descriptive error message if the test fails. The following list provides troubleshooting details, depending on the error message that you receive.</p> <ul> <li> <p>Verify that your secret name aligns with the one in Transfer Role permissions.</p> </li> <li> <p>Verify the server URL in the connector configuration , and verify that the login credentials work successfully outside of the connector.</p> </li> <li> <p>Verify that the secret exists and is formatted correctly.</p> </li> <li> <p>Verify that the trusted host key in the connector configuration matches the <code>ssh-keyscan</code> output.</p> </li> </ul>
    #   @return [String]
    # @!attribute sftp_connection_details
    #   <p>Structure that contains the SFTP connector host key.</p>
    #   @return [Types::SftpConnectorConnectionDetails]
    class TestConnectionResponse < Struct.new(
      :connector_id,
      :status,
      :status_message,
      :sftp_connection_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned identifier for a specific server. That server's user authentication method is tested with a user name and password.</p>
    #   @return [String]
    # @!attribute server_protocol
    #   <p>The type of file transfer protocol to be tested.</p> <p>The available protocols are:</p> <ul> <li> <p>Secure Shell (SSH) File Transfer Protocol (SFTP)</p> </li> <li> <p>File Transfer Protocol Secure (FTPS)</p> </li> <li> <p>File Transfer Protocol (FTP)</p> </li> <li> <p>Applicability Statement 2 (AS2)</p> </li> </ul>
    #   @return [String]
    # @!attribute source_ip
    #   <p>The source IP address of the account to be tested.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The name of the account to be tested.</p>
    #   @return [String]
    # @!attribute user_password
    #   <p>The password of the account to be tested.</p>
    #   @return [String]
    class TestIdentityProviderRequest < Struct.new(
      :server_id,
      :server_protocol,
      :source_ip,
      :user_name,
      :user_password,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute response
    #   <p>The response that is returned from your API Gateway or your Lambda function.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The HTTP status code that is the response from your API Gateway or your Lambda function.</p>
    #   @return [Integer]
    # @!attribute message
    #   <p>A message that indicates whether the test was successful or not.</p> <note> <p>If an empty string is returned, the most likely cause is that the authentication failed due to an incorrect username or password.</p> </note>
    #   @return [String]
    # @!attribute url
    #   <p>The endpoint of the service used to authenticate a user.</p>
    #   @return [String]
    class TestIdentityProviderResponse < Struct.new(
      :response,
      :status_code,
      :message,
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:status_code] = 0 unless options.key?(:status_code)
        super
      end
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute retry_after_seconds
    #   @return [String]
    class ThrottlingException < Struct.new(
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TlsSessionResumptionMode
      DISABLED = 'DISABLED'
      ENABLED = 'ENABLED'
      ENFORCED = 'ENFORCED'
    end

    module TransferTableStatus
      QUEUED = 'QUEUED'
      IN_PROGRESS = 'IN_PROGRESS'
      COMPLETED = 'COMPLETED'
      FAILED = 'FAILED'
    end

    # @!attribute arn
    #   <p>The value of the resource that will have the tag removed. An Amazon Resource Name (ARN) is an identifier for a specific Amazon Web Services resource, such as a server, user, or role.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>TagKeys are key-value pairs assigned to ARNs that can be used to group and search for resources by type. This metadata can be attached to resources for any purpose.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p> <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p> <note> <p>You can use the <code>HomeDirectory</code> parameter for <code>HomeDirectoryType</code> when it is set to either <code>PATH</code> or <code>LOGICAL</code>.</p> </note>
    #   @return [String]
    # @!attribute home_directory_type
    #   <p>The type of landing directory (folder) that you want your users' home directory to be when they log in to the server. If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or Amazon EFS path as is in their file transfer protocol clients. If you set it to <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 or Amazon EFS paths visible to your users.</p> <note> <p>If <code>HomeDirectoryType</code> is <code>LOGICAL</code>, you must provide mappings, using the <code>HomeDirectoryMappings</code> parameter. If, on the other hand, <code>HomeDirectoryType</code> is <code>PATH</code>, you provide an absolute path using the <code>HomeDirectory</code> parameter. You cannot have both <code>HomeDirectory</code> and <code>HomeDirectoryMappings</code> in your template.</p> </note>
    #   @return [String]
    # @!attribute home_directory_mappings
    #   <p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should be visible to your user and how you want to make them visible. You must specify the <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you only specify a target, it is displayed as is. You also must ensure that your Identity and Access Management (IAM) role provides access to paths in <code>Target</code>. This value can be set only when <code>HomeDirectoryType</code> is set to <i>LOGICAL</i>.</p> <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p> <p> <code>[ { "Entry": "/directory1", "Target": "/bucket_name/home/mydirectory" } ]</code> </p> <p>In most cases, you can use this value instead of the session policy to lock down your user to the designated home directory ("<code>chroot</code>"). To do this, you can set <code>Entry</code> to <code>/</code> and set <code>Target</code> to the <code>HomeDirectory</code> parameter value.</p> <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p> <p> <code>[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]</code> </p>
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    # @!attribute policy
    #   <p>A session policy for your user so that you can use the same Identity and Access Management (IAM) role across multiple users. This policy scopes down a user's access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>, <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p> <note> <p>This policy applies only when the domain of <code>ServerId</code> is Amazon S3. Amazon EFS does not use session policies.</p> <p>For session policies, Transfer Family stores the policy as a JSON blob, instead of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass it in the <code>Policy</code> argument.</p> <p>For an example of a session policy, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html">Example session policy</a>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html">AssumeRole</a> in the <i>Amazon Web ServicesSecurity Token Service API Reference</i>.</p> </note>
    #   @return [String]
    # @!attribute posix_profile
    #   <p>The full POSIX identity, including user ID (<code>Uid</code>), group ID (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls your users' access to your Amazon EFS file systems. The POSIX permissions that are set on files and directories in your file system determine the level of access your users get when transferring files into and out of your Amazon EFS file systems.</p>
    #   @return [Types::PosixProfile]
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that controls your users' access to your Amazon S3 bucket or Amazon EFS file system. The policies attached to this role determine the level of access that you want to provide your users when transferring files into and out of your Amazon S3 bucket or Amazon EFS file system. The IAM role should also contain a trust relationship that allows the server to access your resources when servicing your users' transfer requests.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server instance. This is the specific server that you added your user to.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>A unique identifier that is required to identify specific groups within your directory. The users of the group that you associate have access to your Amazon S3 or Amazon EFS resources over the enabled protocols using Transfer Family. If you know the group name, you can view the SID values by running the following command using Windows PowerShell.</p> <p> <code>Get-ADGroup -Filter {samAccountName -like "<i>YourGroupName</i>*"} -Properties * | Select SamAccountName,ObjectSid</code> </p> <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p> <p>The regular expression used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-</p>
    #   @return [String]
    class UpdateAccessRequest < Struct.new(
      :home_directory,
      :home_directory_type,
      :home_directory_mappings,
      :policy,
      :posix_profile,
      :role,
      :server_id,
      :external_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>The identifier of the server that the user is attached to.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external identifier of the group whose users have access to your Amazon S3 or Amazon EFS resources over the enabled protocols using Amazon Web ServicesTransfer Family.</p>
    #   @return [String]
    class UpdateAccessResponse < Struct.new(
      :server_id,
      :external_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>A unique identifier for the agreement. This identifier is returned when you create an agreement.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server instance. This is the specific server that the agreement uses.</p>
    #   @return [String]
    # @!attribute description
    #   <p>To replace the existing description, provide a short description for the agreement. </p>
    #   @return [String]
    # @!attribute status
    #   <p>You can update the status for the agreement, either activating an inactive agreement or the reverse.</p>
    #   @return [String]
    # @!attribute local_profile_id
    #   <p>A unique identifier for the AS2 local profile.</p> <p>To change the local profile identifier, provide a new value here.</p>
    #   @return [String]
    # @!attribute partner_profile_id
    #   <p>A unique identifier for the partner profile. To change the partner profile identifier, provide a new value here.</p>
    #   @return [String]
    # @!attribute base_directory
    #   <p>To change the landing directory (folder) for files that are transferred, provide the bucket folder that you want to use; for example, <code>/<i>amzn-s3-demo-bucket</i>/<i>home</i>/<i>mydirectory</i> </code>.</p>
    #   @return [String]
    # @!attribute access_role
    #   <p>Connectors are used to send files using either the AS2 or SFTP protocol. For the access role, provide the Amazon Resource Name (ARN) of the Identity and Access Management role to use.</p> <p> <b>For AS2 connectors</b> </p> <p>With AS2, you can send files by calling <code>StartFileTransfer</code> and specifying the file paths in the request parameter, <code>SendFilePaths</code>. We use the file’s parent directory (for example, for <code>--send-file-paths /bucket/dir/file.txt</code>, parent directory is <code>/bucket/dir/</code>) to temporarily store a processed AS2 message file, store the MDN when we receive them from the partner, and write a final JSON file containing relevant metadata of the transmission. So, the <code>AccessRole</code> needs to provide read and write access to the parent directory of the file location used in the <code>StartFileTransfer</code> request. Additionally, you need to provide read and write access to the parent directory of the files that you intend to send with <code>StartFileTransfer</code>.</p> <p>If you are using Basic authentication for your AS2 connector, the access role requires the <code>secretsmanager:GetSecretValue</code> permission for the secret. If the secret is encrypted using a customer-managed key instead of the Amazon Web Services managed key in Secrets Manager, then the role also needs the <code>kms:Decrypt</code> permission for that key.</p> <p> <b>For SFTP connectors</b> </p> <p>Make sure that the access role provides read and write access to the parent directory of the file location that's used in the <code>StartFileTransfer</code> request. Additionally, make sure that the role provides <code>secretsmanager:GetSecretValue</code> permission to Secrets Manager.</p>
    #   @return [String]
    # @!attribute preserve_filename
    #   <p> Determines whether or not Transfer Family appends a unique string of characters to the end of the AS2 message payload filename when saving it. </p> <ul> <li> <p> <code>ENABLED</code>: the filename provided by your trading parter is preserved when the file is saved.</p> </li> <li> <p> <code>DISABLED</code> (default value): when Transfer Family saves the file, the filename is adjusted, as described in <a href="https://docs.aws.amazon.com/transfer/latest/userguide/send-as2-messages.html#file-names-as2">File names and locations</a>.</p> </li> </ul>
    #   @return [String]
    # @!attribute enforce_message_signing
    #   <p> Determines whether or not unsigned messages from your trading partners will be accepted. </p> <ul> <li> <p> <code>ENABLED</code>: Transfer Family rejects unsigned messages from your trading partner.</p> </li> <li> <p> <code>DISABLED</code> (default value): Transfer Family accepts unsigned messages from your trading partner.</p> </li> </ul>
    #   @return [String]
    # @!attribute custom_directories
    #   <p>A <code>CustomDirectoriesType</code> structure. This structure specifies custom directories for storing various AS2 message files. You can specify directories for the following types of files.</p> <ul> <li> <p>Failed files</p> </li> <li> <p>MDN files</p> </li> <li> <p>Payload files</p> </li> <li> <p>Status files</p> </li> <li> <p>Temporary files</p> </li> </ul>
    #   @return [Types::CustomDirectoriesType]
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
      :custom_directories,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute agreement_id
    #   <p>A unique identifier for the agreement. This identifier is returned when you create an agreement.</p>
    #   @return [String]
    class UpdateAgreementResponse < Struct.new(
      :agreement_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute certificate_id
    #   <p>The identifier of the certificate object that you are updating.</p>
    #   @return [String]
    # @!attribute active_date
    #   <p>An optional date that specifies when the certificate becomes active. If you do not specify a value, <code>ActiveDate</code> takes the same value as <code>NotBeforeDate</code>, which is specified by the CA. </p>
    #   @return [Time]
    # @!attribute inactive_date
    #   <p>An optional date that specifies when the certificate becomes inactive. If you do not specify a value, <code>InactiveDate</code> takes the same value as <code>NotAfterDate</code>, which is specified by the CA.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>A short description to help identify the certificate.</p>
    #   @return [String]
    class UpdateCertificateRequest < Struct.new(
      :certificate_id,
      :active_date,
      :inactive_date,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute certificate_id
    #   <p>Returns the identifier of the certificate object that you are updating.</p>
    #   @return [String]
    class UpdateCertificateResponse < Struct.new(
      :certificate_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>The unique identifier for the connector.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL of the partner's AS2 or SFTP endpoint.</p>
    #   @return [String]
    # @!attribute as2_config
    #   <p>A structure that contains the parameters for an AS2 connector object.</p>
    #   @return [Types::As2ConnectorConfig]
    # @!attribute access_role
    #   <p>Connectors are used to send files using either the AS2 or SFTP protocol. For the access role, provide the Amazon Resource Name (ARN) of the Identity and Access Management role to use.</p> <p> <b>For AS2 connectors</b> </p> <p>With AS2, you can send files by calling <code>StartFileTransfer</code> and specifying the file paths in the request parameter, <code>SendFilePaths</code>. We use the file’s parent directory (for example, for <code>--send-file-paths /bucket/dir/file.txt</code>, parent directory is <code>/bucket/dir/</code>) to temporarily store a processed AS2 message file, store the MDN when we receive them from the partner, and write a final JSON file containing relevant metadata of the transmission. So, the <code>AccessRole</code> needs to provide read and write access to the parent directory of the file location used in the <code>StartFileTransfer</code> request. Additionally, you need to provide read and write access to the parent directory of the files that you intend to send with <code>StartFileTransfer</code>.</p> <p>If you are using Basic authentication for your AS2 connector, the access role requires the <code>secretsmanager:GetSecretValue</code> permission for the secret. If the secret is encrypted using a customer-managed key instead of the Amazon Web Services managed key in Secrets Manager, then the role also needs the <code>kms:Decrypt</code> permission for that key.</p> <p> <b>For SFTP connectors</b> </p> <p>Make sure that the access role provides read and write access to the parent directory of the file location that's used in the <code>StartFileTransfer</code> request. Additionally, make sure that the role provides <code>secretsmanager:GetSecretValue</code> permission to Secrets Manager.</p>
    #   @return [String]
    # @!attribute logging_role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that allows a connector to turn on CloudWatch logging for Amazon S3 events. When set, you can view connector activity in your CloudWatch logs.</p>
    #   @return [String]
    # @!attribute sftp_config
    #   <p>A structure that contains the parameters for an SFTP connector object.</p>
    #   @return [Types::SftpConnectorConfig]
    # @!attribute security_policy_name
    #   <p>Specifies the name of the security policy for the connector.</p>
    #   @return [String]
    class UpdateConnectorRequest < Struct.new(
      :connector_id,
      :url,
      :as2_config,
      :access_role,
      :logging_role,
      :sftp_config,
      :security_policy_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>Returns the identifier of the connector object that you are updating.</p>
    #   @return [String]
    class UpdateConnectorResponse < Struct.new(
      :connector_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>The identifier of the server that contains the host key that you are updating.</p>
    #   @return [String]
    # @!attribute host_key_id
    #   <p>The identifier of the host key that you are updating.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An updated description for the host key.</p>
    #   @return [String]
    class UpdateHostKeyRequest < Struct.new(
      :server_id,
      :host_key_id,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>Returns the server identifier for the server that contains the updated host key.</p>
    #   @return [String]
    # @!attribute host_key_id
    #   <p>Returns the host key identifier for the updated host key.</p>
    #   @return [String]
    class UpdateHostKeyResponse < Struct.new(
      :server_id,
      :host_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The identifier of the profile object that you are updating.</p>
    #   @return [String]
    # @!attribute certificate_ids
    #   <p>An array of identifiers for the imported certificates. You use this identifier for working with profiles and partner profiles.</p>
    #   @return [Array<String>]
    class UpdateProfileRequest < Struct.new(
      :profile_id,
      :certificate_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>Returns the identifier for the profile that's being updated.</p>
    #   @return [String]
    class UpdateProfileResponse < Struct.new(
      :profile_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute certificate
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web ServicesCertificate Manager (ACM) certificate. Required when <code>Protocols</code> is set to <code>FTPS</code>.</p> <p>To request a new public certificate, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html">Request a public certificate</a> in the <i> Amazon Web ServicesCertificate Manager User Guide</i>.</p> <p>To import an existing certificate into ACM, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing certificates into ACM</a> in the <i> Amazon Web ServicesCertificate Manager User Guide</i>.</p> <p>To request a private certificate to use FTPS through private IP addresses, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html">Request a private certificate</a> in the <i> Amazon Web ServicesCertificate Manager User Guide</i>.</p> <p>Certificates with the following cryptographic algorithms and key sizes are supported:</p> <ul> <li> <p>2048-bit RSA (RSA_2048)</p> </li> <li> <p>4096-bit RSA (RSA_4096)</p> </li> <li> <p>Elliptic Prime Curve 256 bit (EC_prime256v1)</p> </li> <li> <p>Elliptic Prime Curve 384 bit (EC_secp384r1)</p> </li> <li> <p>Elliptic Prime Curve 521 bit (EC_secp521r1)</p> </li> </ul> <note> <p>The certificate must be a valid SSL/TLS X.509 version 3 certificate with FQDN or IP address specified and information about the issuer.</p> </note>
    #   @return [String]
    # @!attribute protocol_details
    #   <p>The protocol settings that are configured for your server.</p> <ul> <li> <p> To indicate passive mode (for FTP and FTPS protocols), use the <code>PassiveIp</code> parameter. Enter a single dotted-quad IPv4 address, such as the external IP address of a firewall, router, or load balancer. </p> </li> <li> <p>To ignore the error that is generated when the client attempts to use the <code>SETSTAT</code> command on a file that you are uploading to an Amazon S3 bucket, use the <code>SetStatOption</code> parameter. To have the Transfer Family server ignore the <code>SETSTAT</code> command and upload files without needing to make any changes to your SFTP client, set the value to <code>ENABLE_NO_OP</code>. If you set the <code>SetStatOption</code> parameter to <code>ENABLE_NO_OP</code>, Transfer Family generates a log entry to Amazon CloudWatch Logs, so that you can determine when the client is making a <code>SETSTAT</code> call.</p> </li> <li> <p>To determine whether your Transfer Family server resumes recent, negotiated sessions through a unique session ID, use the <code>TlsSessionResumptionMode</code> parameter.</p> </li> <li> <p> <code>As2Transports</code> indicates the transport method for the AS2 messages. Currently, only HTTP is supported.</p> </li> </ul>
    #   @return [Types::ProtocolDetails]
    # @!attribute endpoint_details
    #   <p>The virtual private cloud (VPC) endpoint settings that are configured for your server. When you host your endpoint within your VPC, you can make your endpoint accessible only to resources within your VPC, or you can attach Elastic IP addresses and make your endpoint accessible to clients over the internet. Your VPC's default security groups are automatically assigned to your endpoint.</p>
    #   @return [Types::EndpointDetails]
    # @!attribute endpoint_type
    #   <p>The type of endpoint that you want your server to use. You can choose to make your server's endpoint publicly accessible (PUBLIC) or host it inside your VPC. With an endpoint that is hosted in a VPC, you can restrict access to your server and resources only within your VPC or choose to make it internet facing by attaching Elastic IP addresses directly to it.</p> <note> <p> After May 19, 2021, you won't be able to create a server using <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Services account if your account hasn't already done so before May 19, 2021. If you have already created servers with <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Services account on or before May 19, 2021, you will not be affected. After this date, use <code>EndpointType</code>=<code>VPC</code>.</p> <p>For more information, see https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.</p> <p>It is recommended that you use <code>VPC</code> as the <code>EndpointType</code>. With this endpoint type, you have the option to directly associate up to three Elastic IPv4 addresses (BYO IP included) with your server's endpoint and use VPC security groups to restrict traffic by the client's public IP address. This is not possible with <code>EndpointType</code> set to <code>VPC_ENDPOINT</code>.</p> </note>
    #   @return [String]
    # @!attribute host_key
    #   <p>The RSA, ECDSA, or ED25519 private key to use for your SFTP-enabled server. You can add multiple host keys, in case you want to rotate keys, or have a set of active keys that use different algorithms.</p> <p>Use the following command to generate an RSA 2048 bit key with no passphrase:</p> <p> <code>ssh-keygen -t rsa -b 2048 -N "" -m PEM -f my-new-server-key</code>.</p> <p>Use a minimum value of 2048 for the <code>-b</code> option. You can create a stronger key by using 3072 or 4096.</p> <p>Use the following command to generate an ECDSA 256 bit key with no passphrase:</p> <p> <code>ssh-keygen -t ecdsa -b 256 -N "" -m PEM -f my-new-server-key</code>.</p> <p>Valid values for the <code>-b</code> option for ECDSA are 256, 384, and 521.</p> <p>Use the following command to generate an ED25519 key with no passphrase:</p> <p> <code>ssh-keygen -t ed25519 -N "" -f my-new-server-key</code>.</p> <p>For all of these commands, you can replace <i>my-new-server-key</i> with a string of your choice.</p> <important> <p>If you aren't planning to migrate existing users from an existing SFTP-enabled server to a new server, don't update the host key. Accidentally changing a server's host key can be disruptive.</p> </important> <p>For more information, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key">Manage host keys for your SFTP-enabled server</a> in the <i>Transfer Family User Guide</i>.</p>
    #   @return [String]
    # @!attribute identity_provider_details
    #   <p>An array containing all of the information required to call a customer's authentication API method.</p>
    #   @return [Types::IdentityProviderDetails]
    # @!attribute logging_role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that allows a server to turn on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, you can view user activity in your CloudWatch logs.</p>
    #   @return [String]
    # @!attribute post_authentication_login_banner
    #   <p>Specifies a string to display when users connect to a server. This string is displayed after the user authenticates.</p> <note> <p>The SFTP protocol does not support post-authentication display banners.</p> </note>
    #   @return [String]
    # @!attribute pre_authentication_login_banner
    #   <p>Specifies a string to display when users connect to a server. This string is displayed before the user authenticates. For example, the following banner displays details about using the system:</p> <p> <code>This system is for the use of authorized users only. Individuals using this computer system without authority, or in excess of their authority, are subject to having all of their activities on this system monitored and recorded by system personnel.</code> </p>
    #   @return [String]
    # @!attribute protocols
    #   <p>Specifies the file transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint. The available protocols are:</p> <ul> <li> <p> <code>SFTP</code> (Secure Shell (SSH) File Transfer Protocol): File transfer over SSH</p> </li> <li> <p> <code>FTPS</code> (File Transfer Protocol Secure): File transfer with TLS encryption</p> </li> <li> <p> <code>FTP</code> (File Transfer Protocol): Unencrypted file transfer</p> </li> <li> <p> <code>AS2</code> (Applicability Statement 2): used for transporting structured business-to-business data</p> </li> </ul> <note> <ul> <li> <p>If you select <code>FTPS</code>, you must choose a certificate stored in Certificate Manager (ACM) which is used to identify your server when clients connect to it over FTPS.</p> </li> <li> <p>If <code>Protocol</code> includes either <code>FTP</code> or <code>FTPS</code>, then the <code>EndpointType</code> must be <code>VPC</code> and the <code>IdentityProviderType</code> must be either <code>AWS_DIRECTORY_SERVICE</code>, <code>AWS_LAMBDA</code>, or <code>API_GATEWAY</code>.</p> </li> <li> <p>If <code>Protocol</code> includes <code>FTP</code>, then <code>AddressAllocationIds</code> cannot be associated.</p> </li> <li> <p>If <code>Protocol</code> is set only to <code>SFTP</code>, the <code>EndpointType</code> can be set to <code>PUBLIC</code> and the <code>IdentityProviderType</code> can be set any of the supported identity types: <code>SERVICE_MANAGED</code>, <code>AWS_DIRECTORY_SERVICE</code>, <code>AWS_LAMBDA</code>, or <code>API_GATEWAY</code>.</p> </li> <li> <p>If <code>Protocol</code> includes <code>AS2</code>, then the <code>EndpointType</code> must be <code>VPC</code>, and domain must be Amazon S3.</p> </li> </ul> </note>
    #   @return [Array<String>]
    # @!attribute security_policy_name
    #   <p>Specifies the name of the security policy for the server.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server instance that the Transfer Family user is assigned to.</p>
    #   @return [String]
    # @!attribute workflow_details
    #   <p>Specifies the workflow ID for the workflow to assign and the execution role that's used for executing the workflow.</p> <p>In addition to a workflow to execute when a file is uploaded completely, <code>WorkflowDetails</code> can also contain a workflow ID (and execution role) for a workflow to execute on partial upload. A partial upload occurs when the server session disconnects while the file is still being uploaded.</p> <p>To remove an associated workflow from a server, you can provide an empty <code>OnUpload</code> object, as in the following example.</p> <p> <code>aws transfer update-server --server-id s-01234567890abcdef --workflow-details '{"OnUpload":[]}'</code> </p>
    #   @return [Types::WorkflowDetails]
    # @!attribute structured_log_destinations
    #   <p>Specifies the log groups to which your server logs are sent.</p> <p>To specify a log group, you must provide the ARN for an existing log group. In this case, the format of the log group is as follows:</p> <p> <code>arn:aws:logs:region-name:amazon-account-id:log-group:log-group-name:*</code> </p> <p>For example, <code>arn:aws:logs:us-east-1:111122223333:log-group:mytestgroup:*</code> </p> <p>If you have previously specified a log group for a server, you can clear it, and in effect turn off structured logging, by providing an empty value for this parameter in an <code>update-server</code> call. For example:</p> <p> <code>update-server --server-id s-1234567890abcdef0 --structured-log-destinations</code> </p>
    #   @return [Array<String>]
    # @!attribute s3_storage_options
    #   <p>Specifies whether or not performance for your Amazon S3 directories is optimized. This is disabled by default.</p> <p>By default, home directory mappings have a <code>TYPE</code> of <code>DIRECTORY</code>. If you enable this option, you would then need to explicitly set the <code>HomeDirectoryMapEntry</code> <code>Type</code> to <code>FILE</code> if you want a mapping to have a file target.</p>
    #   @return [Types::S3StorageOptions]
    # @!attribute ip_address_type
    #   <p>Specifies whether to use IPv4 only, or to use dual-stack (IPv4 and IPv6) for your Transfer Family endpoint. The default value is <code>IPV4</code>.</p> <important> <p>The <code>IpAddressType</code> parameter has the following limitations:</p> <ul> <li> <p>It cannot be changed while the server is online. You must stop the server before modifying this parameter.</p> </li> <li> <p>It cannot be updated to <code>DUALSTACK</code> if the server has <code>AddressAllocationIds</code> specified.</p> </li> </ul> </important> <note> <p>When using <code>DUALSTACK</code> as the <code>IpAddressType</code>, you cannot set the <code>AddressAllocationIds</code> parameter for the <a href="https://docs.aws.amazon.com/transfer/latest/APIReference/API_EndpointDetails.html">EndpointDetails</a> for the server.</p> </note>
    #   @return [String]
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a server that the Transfer Family user is assigned to.</p>
    #   @return [String]
    class UpdateServerResponse < Struct.new(
      :server_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p> <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p> <note> <p>You can use the <code>HomeDirectory</code> parameter for <code>HomeDirectoryType</code> when it is set to either <code>PATH</code> or <code>LOGICAL</code>.</p> </note>
    #   @return [String]
    # @!attribute home_directory_type
    #   <p>The type of landing directory (folder) that you want your users' home directory to be when they log in to the server. If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or Amazon EFS path as is in their file transfer protocol clients. If you set it to <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 or Amazon EFS paths visible to your users.</p> <note> <p>If <code>HomeDirectoryType</code> is <code>LOGICAL</code>, you must provide mappings, using the <code>HomeDirectoryMappings</code> parameter. If, on the other hand, <code>HomeDirectoryType</code> is <code>PATH</code>, you provide an absolute path using the <code>HomeDirectory</code> parameter. You cannot have both <code>HomeDirectory</code> and <code>HomeDirectoryMappings</code> in your template.</p> </note>
    #   @return [String]
    # @!attribute home_directory_mappings
    #   <p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should be visible to your user and how you want to make them visible. You must specify the <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you only specify a target, it is displayed as is. You also must ensure that your Identity and Access Management (IAM) role provides access to paths in <code>Target</code>. This value can be set only when <code>HomeDirectoryType</code> is set to <i>LOGICAL</i>.</p> <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p> <p> <code>[ { "Entry": "/directory1", "Target": "/bucket_name/home/mydirectory" } ]</code> </p> <p>In most cases, you can use this value instead of the session policy to lock down your user to the designated home directory ("<code>chroot</code>"). To do this, you can set <code>Entry</code> to '/' and set <code>Target</code> to the HomeDirectory parameter value.</p> <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p> <p> <code>[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]</code> </p>
    #   @return [Array<Types::HomeDirectoryMapEntry>]
    # @!attribute policy
    #   <p>A session policy for your user so that you can use the same Identity and Access Management (IAM) role across multiple users. This policy scopes down a user's access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>, <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p> <note> <p>This policy applies only when the domain of <code>ServerId</code> is Amazon S3. Amazon EFS does not use session policies.</p> <p>For session policies, Transfer Family stores the policy as a JSON blob, instead of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass it in the <code>Policy</code> argument.</p> <p>For an example of a session policy, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/session-policy">Creating a session policy</a>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html">AssumeRole</a> in the <i>Amazon Web Services Security Token Service API Reference</i>.</p> </note>
    #   @return [String]
    # @!attribute posix_profile
    #   <p>Specifies the full POSIX identity, including user ID (<code>Uid</code>), group ID (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls your users' access to your Amazon Elastic File Systems (Amazon EFS). The POSIX permissions that are set on files and directories in your file system determines the level of access your users get when transferring files into and out of your Amazon EFS file systems.</p>
    #   @return [Types::PosixProfile]
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that controls your users' access to your Amazon S3 bucket or Amazon EFS file system. The policies attached to this role determine the level of access that you want to provide your users when transferring files into and out of your Amazon S3 bucket or Amazon EFS file system. The IAM role should also contain a trust relationship that allows the server to access your resources when servicing your users' transfer requests.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a Transfer Family server instance that the user is assigned to.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>A unique string that identifies a user and is associated with a server as specified by the <code>ServerId</code>. This user name must be a minimum of 3 and a maximum of 100 characters long. The following are valid characters: a-z, A-Z, 0-9, underscore '_', hyphen '-', period '.', and at sign '@'. The user name can't start with a hyphen, period, or at sign.</p>
    #   @return [String]
    class UpdateUserRequest < Struct.new(
      :home_directory,
      :home_directory_type,
      :home_directory_mappings,
      :policy,
      :posix_profile,
      :role,
      :server_id,
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> <code>UpdateUserResponse</code> returns the user name and identifier for the request to update a user's properties.</p>
    # @!attribute server_id
    #   <p>A system-assigned unique identifier for a Transfer Family server instance that the account is assigned to.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The unique identifier for a user that is assigned to a server instance that was specified in the request.</p>
    #   @return [String]
    class UpdateUserResponse < Struct.new(
      :server_id,
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute web_app_id
    #   <p>Provide the identifier of the web app that you are updating.</p>
    #   @return [String]
    # @!attribute title
    #   <p>Provide an updated title.</p>
    #   @return [String]
    # @!attribute logo_file
    #   <p>Specify logo file data string (in base64 encoding).</p>
    #   @return [String]
    # @!attribute favicon_file
    #   <p>Specify an icon file data string (in base64 encoding).</p>
    #   @return [String]
    class UpdateWebAppCustomizationRequest < Struct.new(
      :web_app_id,
      :title,
      :logo_file,
      :favicon_file,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute web_app_id
    #   <p>Returns the unique identifier for the web app being updated.</p>
    #   @return [String]
    class UpdateWebAppCustomizationResponse < Struct.new(
      :web_app_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure that describes the values to use for the IAM Identity Center settings when you update a web app.</p>
    # @!attribute role
    #   <p>The IAM role used to access IAM Identity Center.</p>
    #   @return [String]
    class UpdateWebAppIdentityCenterConfig < Struct.new(
      :role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A union that contains the <code>UpdateWebAppIdentityCenterConfig</code> object.</p>
    # @!attribute identity_center_config
    #   <p>A structure that describes the values to use for the IAM Identity Center settings when you update a web app.</p>
    #   @return [Types::UpdateWebAppIdentityCenterConfig]
    class UpdateWebAppIdentityProviderDetails < Struct.new(
      :identity_center_config,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class IdentityCenterConfig < UpdateWebAppIdentityProviderDetails; end
      class Unknown < UpdateWebAppIdentityProviderDetails; end
    end

    # @!attribute web_app_id
    #   <p>Provide the identifier of the web app that you are updating.</p>
    #   @return [String]
    # @!attribute identity_provider_details
    #   <p>Provide updated identity provider values in a <code>WebAppIdentityProviderDetails</code> object.</p>
    #   @return [Types::UpdateWebAppIdentityProviderDetails]
    # @!attribute access_endpoint
    #   <p>The <code>AccessEndpoint</code> is the URL that you provide to your users for them to interact with the Transfer Family web app. You can specify a custom URL or use the default value.</p>
    #   @return [String]
    # @!attribute web_app_units
    #   <p>A union that contains the value for number of concurrent connections or the user sessions on your web app.</p>
    #   @return [Types::WebAppUnits]
    class UpdateWebAppRequest < Struct.new(
      :web_app_id,
      :identity_provider_details,
      :access_endpoint,
      :web_app_units,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute web_app_id
    #   <p>Returns the unique identifier for the web app being updated.</p>
    #   @return [String]
    class UpdateWebAppResponse < Struct.new(
      :web_app_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the user name, server ID, and session ID for a workflow.</p>
    # @!attribute user_name
    #   <p>A unique string that identifies a Transfer Family user associated with a server.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>The system-assigned unique identifier for a Transfer server instance. </p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The system-assigned unique identifier for a session that corresponds to the workflow.</p>
    #   @return [String]
    class UserDetails < Struct.new(
      :user_name,
      :server_id,
      :session_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module WebAppEndpointPolicy
      FIPS = 'FIPS'
      STANDARD = 'STANDARD'
    end

    # <p>A union that contains the <code>IdentityCenterConfig</code> object.</p>
    # @!attribute identity_center_config
    #   <p>A structure that describes the values to use for the IAM Identity Center settings when you create a web app.</p>
    #   @return [Types::IdentityCenterConfig]
    class WebAppIdentityProviderDetails < Struct.new(
      :identity_center_config,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class IdentityCenterConfig < WebAppIdentityProviderDetails; end
      class Unknown < WebAppIdentityProviderDetails; end
    end

    # <p>Contains an integer value that represents the value for number of concurrent connections or the user sessions on your web app.</p>
    # @!attribute provisioned
    #   <p>An integer that represents the number of units for your desired number of concurrent connections, or the number of user sessions on your web app at the same time.</p> <p>Each increment allows an additional 250 concurrent sessions: a value of <code>1</code> sets the number of concurrent sessions to 250; <code>2</code> sets a value of 500, and so on. </p>
    #   @return [Integer]
    class WebAppUnits < Struct.new(
      :provisioned,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Provisioned < WebAppUnits; end
      class Unknown < WebAppUnits; end
    end

    # <p>Specifies the workflow ID for the workflow to assign and the execution role that's used for executing the workflow.</p> <p>In addition to a workflow to execute when a file is uploaded completely, <code>WorkflowDetails</code> can also contain a workflow ID (and execution role) for a workflow to execute on partial upload. A partial upload occurs when the server session disconnects while the file is still being uploaded.</p>
    # @!attribute workflow_id
    #   <p>A unique identifier for the workflow.</p>
    #   @return [String]
    # @!attribute execution_role
    #   <p>Includes the necessary permissions for S3, EFS, and Lambda operations that Transfer can assume, so that all workflow steps can operate on the required resources</p>
    #   @return [String]
    class WorkflowDetail < Struct.new(
      :workflow_id,
      :execution_role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Container for the <code>WorkflowDetail</code> data type. It is used by actions that trigger a workflow to begin execution.</p>
    # @!attribute on_upload
    #   <p>A trigger that starts a workflow: the workflow begins to execute after a file is uploaded.</p> <p>To remove an associated workflow from a server, you can provide an empty <code>OnUpload</code> object, as in the following example.</p> <p> <code>aws transfer update-server --server-id s-01234567890abcdef --workflow-details '{"OnUpload":[]}'</code> </p> <note> <p> <code>OnUpload</code> can contain a maximum of one <code>WorkflowDetail</code> object.</p> </note>
    #   @return [Array<Types::WorkflowDetail>]
    # @!attribute on_partial_upload
    #   <p>A trigger that starts a workflow if a file is only partially uploaded. You can attach a workflow to a server that executes whenever there is a partial upload.</p> <p>A <i>partial upload</i> occurs when a file is open when the session disconnects.</p> <note> <p> <code>OnPartialUpload</code> can contain a maximum of one <code>WorkflowDetail</code> object.</p> </note>
    #   @return [Array<Types::WorkflowDetail>]
    class WorkflowDetails < Struct.new(
      :on_upload,
      :on_partial_upload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The basic building block of a workflow.</p>
    # @!attribute type
    #   <p> Currently, the following step types are supported. </p> <ul> <li> <p> <b> <code>COPY</code> </b> - Copy the file to another location.</p> </li> <li> <p> <b> <code>CUSTOM</code> </b> - Perform a custom step with an Lambda function target.</p> </li> <li> <p> <b> <code>DECRYPT</code> </b> - Decrypt a file that was encrypted before it was uploaded.</p> </li> <li> <p> <b> <code>DELETE</code> </b> - Delete the file.</p> </li> <li> <p> <b> <code>TAG</code> </b> - Add a tag to the file.</p> </li> </ul>
    #   @return [String]
    # @!attribute copy_step_details
    #   <p>Details for a step that performs a file copy.</p> <p> Consists of the following values: </p> <ul> <li> <p>A description</p> </li> <li> <p>An Amazon S3 location for the destination of the file copy.</p> </li> <li> <p>A flag that indicates whether to overwrite an existing file of the same name. The default is <code>FALSE</code>.</p> </li> </ul>
    #   @return [Types::CopyStepDetails]
    # @!attribute custom_step_details
    #   <p>Details for a step that invokes an Lambda function.</p> <p>Consists of the Lambda function's name, target, and timeout (in seconds). </p>
    #   @return [Types::CustomStepDetails]
    # @!attribute delete_step_details
    #   <p>Details for a step that deletes the file.</p>
    #   @return [Types::DeleteStepDetails]
    # @!attribute tag_step_details
    #   <p>Details for a step that creates one or more tags.</p> <p>You specify one or more tags. Each tag contains a key-value pair.</p>
    #   @return [Types::TagStepDetails]
    # @!attribute decrypt_step_details
    #   <p>Details for a step that decrypts an encrypted file.</p> <p>Consists of the following values:</p> <ul> <li> <p>A descriptive name</p> </li> <li> <p>An Amazon S3 or Amazon Elastic File System (Amazon EFS) location for the source file to decrypt.</p> </li> <li> <p>An S3 or Amazon EFS location for the destination of the file decryption.</p> </li> <li> <p>A flag that indicates whether to overwrite an existing file of the same name. The default is <code>FALSE</code>.</p> </li> <li> <p>The type of encryption that's used. Currently, only PGP encryption is supported.</p> </li> </ul>
    #   @return [Types::DecryptStepDetails]
    class WorkflowStep < Struct.new(
      :type,
      :copy_step_details,
      :custom_step_details,
      :delete_step_details,
      :tag_step_details,
      :decrypt_step_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module WorkflowStepType
      COPY = 'COPY'
      CUSTOM = 'CUSTOM'
      TAG = 'TAG'
      DELETE = 'DELETE'
      DECRYPT = 'DECRYPT'
    end

  end
end
