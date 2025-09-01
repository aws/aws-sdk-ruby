# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc'

module Aws::Transfer
  # An API client for Aws::Transfer.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::TransferService

    add_plugin(::Aws::Transfer::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpc)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::Transfer::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  TODO
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Used by administrators to choose which groups in the directory should have access to upload and download files over the enabled protocols using Transfer Family. For example, a Microsoft Active Directory might contain 50,000 users, but only a small fraction might need the ability to transfer files to the server. An administrator can use <code>CreateAccess</code> to limit the access to the correct set of users who need this ability.</p>
    # @param [Hash, Types::CreateAccessRequest] params
    # @option params [String] :home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p> <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p> <note> <p>You can use the <code>HomeDirectory</code> parameter for <code>HomeDirectoryType</code> when it is set to either <code>PATH</code> or <code>LOGICAL</code>.</p> </note>
    # @option params [String] :home_directory_type
    #   <p>The type of landing directory (folder) that you want your users' home directory to be when they log in to the server. If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or Amazon EFS path as is in their file transfer protocol clients. If you set it to <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 or Amazon EFS paths visible to your users.</p> <note> <p>If <code>HomeDirectoryType</code> is <code>LOGICAL</code>, you must provide mappings, using the <code>HomeDirectoryMappings</code> parameter. If, on the other hand, <code>HomeDirectoryType</code> is <code>PATH</code>, you provide an absolute path using the <code>HomeDirectory</code> parameter. You cannot have both <code>HomeDirectory</code> and <code>HomeDirectoryMappings</code> in your template.</p> </note>
    # @option params [Array<Types::HomeDirectoryMapEntry>] :home_directory_mappings
    #   <p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should be visible to your user and how you want to make them visible. You must specify the <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you only specify a target, it is displayed as is. You also must ensure that your Identity and Access Management (IAM) role provides access to paths in <code>Target</code>. This value can be set only when <code>HomeDirectoryType</code> is set to <i>LOGICAL</i>.</p> <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p> <p> <code>[ { "Entry": "/directory1", "Target": "/bucket_name/home/mydirectory" } ]</code> </p> <p>In most cases, you can use this value instead of the session policy to lock down your user to the designated home directory ("<code>chroot</code>"). To do this, you can set <code>Entry</code> to <code>/</code> and set <code>Target</code> to the <code>HomeDirectory</code> parameter value.</p> <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p> <p> <code>[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]</code> </p>
    # @option params [String] :policy
    #   <p>A session policy for your user so that you can use the same Identity and Access Management (IAM) role across multiple users. This policy scopes down a user's access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>, <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p> <note> <p>This policy applies only when the domain of <code>ServerId</code> is Amazon S3. Amazon EFS does not use session policies.</p> <p>For session policies, Transfer Family stores the policy as a JSON blob, instead of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass it in the <code>Policy</code> argument.</p> <p>For an example of a session policy, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html">Example session policy</a>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html">AssumeRole</a> in the <i>Security Token Service API Reference</i>.</p> </note>
    # @option params [Types::PosixProfile] :posix_profile
    #   <p>The full POSIX identity, including user ID (<code>Uid</code>), group ID (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls your users' access to your Amazon EFS file systems. The POSIX permissions that are set on files and directories in your file system determine the level of access your users get when transferring files into and out of your Amazon EFS file systems.</p>
    # @option params [String] :role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that controls your users' access to your Amazon S3 bucket or Amazon EFS file system. The policies attached to this role determine the level of access that you want to provide your users when transferring files into and out of your Amazon S3 bucket or Amazon EFS file system. The IAM role should also contain a trust relationship that allows the server to access your resources when servicing your users' transfer requests.</p>
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server instance. This is the specific server that you added your user to.</p>
    # @option params [String] :external_id
    #   <p>A unique identifier that is required to identify specific groups within your directory. The users of the group that you associate have access to your Amazon S3 or Amazon EFS resources over the enabled protocols using Transfer Family. If you know the group name, you can view the SID values by running the following command using Windows PowerShell.</p> <p> <code>Get-ADGroup -Filter {samAccountName -like "<i>YourGroupName</i>*"} -Properties * | Select SamAccountName,ObjectSid</code> </p> <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p> <p>The regular expression used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     home_directory: "HomeDirectory",
    #     home_directory_type: "PATH" # One of: ["PATH", "LOGICAL"],
    #     home_directory_mappings: [
    #       {
    #         entry: "MapEntry", # required
    #         target: "MapTarget", # required
    #         type: "FILE" # One of: ["FILE", "DIRECTORY"]
    #       }
    #     ],
    #     policy: "Policy",
    #     posix_profile: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [1]
    #     },
    #     role: "Role", # required
    #     server_id: "ServerId", # required
    #     external_id: "ExternalId", # required
    #   }
    #   options = {}
    #   response = client.create_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_id: "ServerId", # required
    #     external_id: "ExternalId", # required
    #   }
    # @return [Types::CreateAccessResponse]
    def create_access(params = {}, options = {})
      request = build_request(:create_access, params)
      request.send_request(options)
    end

    # <p>Creates an agreement. An agreement is a bilateral trading partner agreement, or partnership, between an Transfer Family server and an AS2 process. The agreement defines the file and message transfer relationship between the server and the AS2 process. To define an agreement, Transfer Family combines a server, local profile, partner profile, certificate, and other attributes.</p> <p>The partner is identified with the <code>PartnerProfileId</code>, and the AS2 process is identified with the <code>LocalProfileId</code>.</p> <note> <p>Specify <i>either</i> <code>BaseDirectory</code> or <code>CustomDirectories</code>, but not both. Specifying both causes the command to fail.</p> </note>
    # @param [Hash, Types::CreateAgreementRequest] params
    # @option params [String] :description
    #   <p>A name or short description to identify the agreement. </p>
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server instance. This is the specific server that the agreement uses.</p>
    # @option params [String] :local_profile_id
    #   <p>A unique identifier for the AS2 local profile.</p>
    # @option params [String] :partner_profile_id
    #   <p>A unique identifier for the partner profile used in the agreement.</p>
    # @option params [String] :base_directory
    #   <p>The landing directory (folder) for files transferred by using the AS2 protocol.</p> <p>A <code>BaseDirectory</code> example is <code>/<i>amzn-s3-demo-bucket</i>/home/mydirectory</code>.</p>
    # @option params [String] :access_role
    #   <p>Connectors are used to send files using either the AS2 or SFTP protocol. For the access role, provide the Amazon Resource Name (ARN) of the Identity and Access Management role to use.</p> <p> <b>For AS2 connectors</b> </p> <p>With AS2, you can send files by calling <code>StartFileTransfer</code> and specifying the file paths in the request parameter, <code>SendFilePaths</code>. We use the file’s parent directory (for example, for <code>--send-file-paths /bucket/dir/file.txt</code>, parent directory is <code>/bucket/dir/</code>) to temporarily store a processed AS2 message file, store the MDN when we receive them from the partner, and write a final JSON file containing relevant metadata of the transmission. So, the <code>AccessRole</code> needs to provide read and write access to the parent directory of the file location used in the <code>StartFileTransfer</code> request. Additionally, you need to provide read and write access to the parent directory of the files that you intend to send with <code>StartFileTransfer</code>.</p> <p>If you are using Basic authentication for your AS2 connector, the access role requires the <code>secretsmanager:GetSecretValue</code> permission for the secret. If the secret is encrypted using a customer-managed key instead of the Amazon Web Services managed key in Secrets Manager, then the role also needs the <code>kms:Decrypt</code> permission for that key.</p> <p> <b>For SFTP connectors</b> </p> <p>Make sure that the access role provides read and write access to the parent directory of the file location that's used in the <code>StartFileTransfer</code> request. Additionally, make sure that the role provides <code>secretsmanager:GetSecretValue</code> permission to Secrets Manager.</p>
    # @option params [String] :status
    #   <p>The status of the agreement. The agreement can be either <code>ACTIVE</code> or <code>INACTIVE</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs that can be used to group and search for agreements.</p>
    # @option params [String] :preserve_filename
    #   <p> Determines whether or not Transfer Family appends a unique string of characters to the end of the AS2 message payload filename when saving it. </p> <ul> <li> <p> <code>ENABLED</code>: the filename provided by your trading parter is preserved when the file is saved.</p> </li> <li> <p> <code>DISABLED</code> (default value): when Transfer Family saves the file, the filename is adjusted, as described in <a href="https://docs.aws.amazon.com/transfer/latest/userguide/send-as2-messages.html#file-names-as2">File names and locations</a>.</p> </li> </ul>
    # @option params [String] :enforce_message_signing
    #   <p> Determines whether or not unsigned messages from your trading partners will be accepted. </p> <ul> <li> <p> <code>ENABLED</code>: Transfer Family rejects unsigned messages from your trading partner.</p> </li> <li> <p> <code>DISABLED</code> (default value): Transfer Family accepts unsigned messages from your trading partner.</p> </li> </ul>
    # @option params [Types::CustomDirectoriesType] :custom_directories
    #   <p>A <code>CustomDirectoriesType</code> structure. This structure specifies custom directories for storing various AS2 message files. You can specify directories for the following types of files.</p> <ul> <li> <p>Failed files</p> </li> <li> <p>MDN files</p> </li> <li> <p>Payload files</p> </li> <li> <p>Status files</p> </li> <li> <p>Temporary files</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "Description",
    #     server_id: "ServerId", # required
    #     local_profile_id: "ProfileId", # required
    #     partner_profile_id: "ProfileId", # required
    #     base_directory: "HomeDirectory",
    #     access_role: "Role", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     preserve_filename: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     enforce_message_signing: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     custom_directories: {
    #       failed_files_directory: "HomeDirectory", # required
    #       mdn_files_directory: "HomeDirectory", # required
    #       payload_files_directory: "HomeDirectory", # required
    #       status_files_directory: "HomeDirectory", # required
    #       temporary_files_directory: "HomeDirectory", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_agreement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agreement_id: "AgreementId", # required
    #   }
    # @return [Types::CreateAgreementResponse]
    def create_agreement(params = {}, options = {})
      request = build_request(:create_agreement, params)
      request.send_request(options)
    end

    # <p>Creates the connector, which captures the parameters for a connection for the AS2 or SFTP protocol. For AS2, the connector is required for sending files to an externally hosted AS2 server. For SFTP, the connector is required when sending files to an SFTP server or receiving files from an SFTP server. For more details about connectors, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/configure-as2-connector.html">Configure AS2 connectors</a> and <a href="https://docs.aws.amazon.com/transfer/latest/userguide/configure-sftp-connector.html">Create SFTP connectors</a>.</p> <note> <p>You must specify exactly one configuration object: either for AS2 (<code>As2Config</code>) or SFTP (<code>SftpConfig</code>).</p> </note>
    # @param [Hash, Types::CreateConnectorRequest] params
    # @option params [String] :url
    #   <p>The URL of the partner's AS2 or SFTP endpoint.</p>
    # @option params [Types::As2ConnectorConfig] :as2_config
    #   <p>A structure that contains the parameters for an AS2 connector object.</p>
    # @option params [String] :access_role
    #   <p>Connectors are used to send files using either the AS2 or SFTP protocol. For the access role, provide the Amazon Resource Name (ARN) of the Identity and Access Management role to use.</p> <p> <b>For AS2 connectors</b> </p> <p>With AS2, you can send files by calling <code>StartFileTransfer</code> and specifying the file paths in the request parameter, <code>SendFilePaths</code>. We use the file’s parent directory (for example, for <code>--send-file-paths /bucket/dir/file.txt</code>, parent directory is <code>/bucket/dir/</code>) to temporarily store a processed AS2 message file, store the MDN when we receive them from the partner, and write a final JSON file containing relevant metadata of the transmission. So, the <code>AccessRole</code> needs to provide read and write access to the parent directory of the file location used in the <code>StartFileTransfer</code> request. Additionally, you need to provide read and write access to the parent directory of the files that you intend to send with <code>StartFileTransfer</code>.</p> <p>If you are using Basic authentication for your AS2 connector, the access role requires the <code>secretsmanager:GetSecretValue</code> permission for the secret. If the secret is encrypted using a customer-managed key instead of the Amazon Web Services managed key in Secrets Manager, then the role also needs the <code>kms:Decrypt</code> permission for that key.</p> <p> <b>For SFTP connectors</b> </p> <p>Make sure that the access role provides read and write access to the parent directory of the file location that's used in the <code>StartFileTransfer</code> request. Additionally, make sure that the role provides <code>secretsmanager:GetSecretValue</code> permission to Secrets Manager.</p>
    # @option params [String] :logging_role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that allows a connector to turn on CloudWatch logging for Amazon S3 events. When set, you can view connector activity in your CloudWatch logs.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs that can be used to group and search for connectors. Tags are metadata attached to connectors for any purpose.</p>
    # @option params [Types::SftpConnectorConfig] :sftp_config
    #   <p>A structure that contains the parameters for an SFTP connector object.</p>
    # @option params [String] :security_policy_name
    #   <p>Specifies the name of the security policy for the connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     url: "Url", # required
    #     as2_config: {
    #       local_profile_id: "ProfileId",
    #       partner_profile_id: "ProfileId",
    #       message_subject: "MessageSubject",
    #       compression: "ZLIB" # One of: ["ZLIB", "DISABLED"],
    #       encryption_algorithm: "AES128_CBC" # One of: ["AES128_CBC", "AES192_CBC", "AES256_CBC", "DES_EDE3_CBC", "NONE"],
    #       signing_algorithm: "SHA256" # One of: ["SHA256", "SHA384", "SHA512", "SHA1", "NONE"],
    #       mdn_signing_algorithm: "SHA256" # One of: ["SHA256", "SHA384", "SHA512", "SHA1", "NONE", "DEFAULT"],
    #       mdn_response: "SYNC" # One of: ["SYNC", "NONE"],
    #       basic_auth_secret_id: "As2ConnectorSecretId",
    #       preserve_content_type: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     access_role: "Role", # required
    #     logging_role: "Role",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     sftp_config: {
    #       user_secret_id: "SecretId",
    #       trusted_host_keys: ["SftpConnectorTrustedHostKey"],
    #       max_concurrent_connections: 1
    #     },
    #     security_policy_name: "ConnectorSecurityPolicyName"
    #   }
    #   options = {}
    #   response = client.create_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_id: "ConnectorId", # required
    #   }
    # @return [Types::CreateConnectorResponse]
    def create_connector(params = {}, options = {})
      request = build_request(:create_connector, params)
      request.send_request(options)
    end

    # <p>Creates the local or partner profile to use for AS2 transfers.</p>
    # @param [Hash, Types::CreateProfileRequest] params
    # @option params [String] :as2_id
    #   <p>The <code>As2Id</code> is the <i>AS2-name</i>, as defined in the <a href="https://datatracker.ietf.org/doc/html/rfc4130">RFC 4130</a>. For inbound transfers, this is the <code>AS2-From</code> header for the AS2 messages sent from the partner. For outbound connectors, this is the <code>AS2-To</code> header for the AS2 messages sent to the partner using the <code>StartFileTransfer</code> API operation. This ID cannot include spaces.</p>
    # @option params [String] :profile_type
    #   <p>Determines the type of profile to create:</p> <ul> <li> <p>Specify <code>LOCAL</code> to create a local profile. A local profile represents the AS2-enabled Transfer Family server organization or party.</p> </li> <li> <p>Specify <code>PARTNER</code> to create a partner profile. A partner profile represents a remote organization, external to Transfer Family.</p> </li> </ul>
    # @option params [Array<String>] :certificate_ids
    #   <p>An array of identifiers for the imported certificates. You use this identifier for working with profiles and partner profiles.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs that can be used to group and search for AS2 profiles.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     as2_id: "As2Id", # required
    #     profile_type: "LOCAL" # One of: ["LOCAL", "PARTNER"], # required
    #     certificate_ids: ["CertificateId"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "ProfileId", # required
    #   }
    # @return [Types::CreateProfileResponse]
    def create_profile(params = {}, options = {})
      request = build_request(:create_profile, params)
      request.send_request(options)
    end

    # <p>Instantiates an auto-scaling virtual server based on the selected file transfer protocol in Amazon Web Services. When you make updates to your file transfer protocol-enabled server or when you work with users, use the service-generated <code>ServerId</code> property that is assigned to the newly created server.</p>
    # @param [Hash, Types::CreateServerRequest] params
    # @option params [String] :certificate
    #   <p>The Amazon Resource Name (ARN) of the Certificate Manager (ACM) certificate. Required when <code>Protocols</code> is set to <code>FTPS</code>.</p> <p>To request a new public certificate, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html">Request a public certificate</a> in the <i>Certificate Manager User Guide</i>.</p> <p>To import an existing certificate into ACM, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing certificates into ACM</a> in the <i>Certificate Manager User Guide</i>.</p> <p>To request a private certificate to use FTPS through private IP addresses, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html">Request a private certificate</a> in the <i>Certificate Manager User Guide</i>.</p> <p>Certificates with the following cryptographic algorithms and key sizes are supported:</p> <ul> <li> <p>2048-bit RSA (RSA_2048)</p> </li> <li> <p>4096-bit RSA (RSA_4096)</p> </li> <li> <p>Elliptic Prime Curve 256 bit (EC_prime256v1)</p> </li> <li> <p>Elliptic Prime Curve 384 bit (EC_secp384r1)</p> </li> <li> <p>Elliptic Prime Curve 521 bit (EC_secp521r1)</p> </li> </ul> <note> <p>The certificate must be a valid SSL/TLS X.509 version 3 certificate with FQDN or IP address specified and information about the issuer.</p> </note>
    # @option params [String] :domain
    #   <p>The domain of the storage system that is used for file transfers. There are two domains available: Amazon Simple Storage Service (Amazon S3) and Amazon Elastic File System (Amazon EFS). The default value is S3.</p> <note> <p>After the server is created, the domain cannot be changed.</p> </note>
    # @option params [Types::EndpointDetails] :endpoint_details
    #   <p>The virtual private cloud (VPC) endpoint settings that are configured for your server. When you host your endpoint within your VPC, you can make your endpoint accessible only to resources within your VPC, or you can attach Elastic IP addresses and make your endpoint accessible to clients over the internet. Your VPC's default security groups are automatically assigned to your endpoint.</p>
    # @option params [String] :endpoint_type
    #   <p>The type of endpoint that you want your server to use. You can choose to make your server's endpoint publicly accessible (PUBLIC) or host it inside your VPC. With an endpoint that is hosted in a VPC, you can restrict access to your server and resources only within your VPC or choose to make it internet facing by attaching Elastic IP addresses directly to it.</p> <note> <p> After May 19, 2021, you won't be able to create a server using <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Services account if your account hasn't already done so before May 19, 2021. If you have already created servers with <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Services account on or before May 19, 2021, you will not be affected. After this date, use <code>EndpointType</code>=<code>VPC</code>.</p> <p>For more information, see https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.</p> <p>It is recommended that you use <code>VPC</code> as the <code>EndpointType</code>. With this endpoint type, you have the option to directly associate up to three Elastic IPv4 addresses (BYO IP included) with your server's endpoint and use VPC security groups to restrict traffic by the client's public IP address. This is not possible with <code>EndpointType</code> set to <code>VPC_ENDPOINT</code>.</p> </note>
    # @option params [String] :host_key
    #   <p>The RSA, ECDSA, or ED25519 private key to use for your SFTP-enabled server. You can add multiple host keys, in case you want to rotate keys, or have a set of active keys that use different algorithms.</p> <p>Use the following command to generate an RSA 2048 bit key with no passphrase:</p> <p> <code>ssh-keygen -t rsa -b 2048 -N "" -m PEM -f my-new-server-key</code>.</p> <p>Use a minimum value of 2048 for the <code>-b</code> option. You can create a stronger key by using 3072 or 4096.</p> <p>Use the following command to generate an ECDSA 256 bit key with no passphrase:</p> <p> <code>ssh-keygen -t ecdsa -b 256 -N "" -m PEM -f my-new-server-key</code>.</p> <p>Valid values for the <code>-b</code> option for ECDSA are 256, 384, and 521.</p> <p>Use the following command to generate an ED25519 key with no passphrase:</p> <p> <code>ssh-keygen -t ed25519 -N "" -f my-new-server-key</code>.</p> <p>For all of these commands, you can replace <i>my-new-server-key</i> with a string of your choice.</p> <important> <p>If you aren't planning to migrate existing users from an existing SFTP-enabled server to a new server, don't update the host key. Accidentally changing a server's host key can be disruptive.</p> </important> <p>For more information, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key">Manage host keys for your SFTP-enabled server</a> in the <i>Transfer Family User Guide</i>.</p>
    # @option params [Types::IdentityProviderDetails] :identity_provider_details
    #   <p>Required when <code>IdentityProviderType</code> is set to <code>AWS_DIRECTORY_SERVICE</code>, <code>Amazon Web Services_LAMBDA</code> or <code>API_GATEWAY</code>. Accepts an array containing all of the information required to use a directory in <code>AWS_DIRECTORY_SERVICE</code> or invoke a customer-supplied authentication API, including the API Gateway URL. Cannot be specified when <code>IdentityProviderType</code> is set to <code>SERVICE_MANAGED</code>.</p>
    # @option params [String] :identity_provider_type
    #   <p>The mode of authentication for a server. The default value is <code>SERVICE_MANAGED</code>, which allows you to store and access user credentials within the Transfer Family service.</p> <p>Use <code>AWS_DIRECTORY_SERVICE</code> to provide access to Active Directory groups in Directory Service for Microsoft Active Directory or Microsoft Active Directory in your on-premises environment or in Amazon Web Services using AD Connector. This option also requires you to provide a Directory ID by using the <code>IdentityProviderDetails</code> parameter.</p> <p>Use the <code>API_GATEWAY</code> value to integrate with an identity provider of your choosing. The <code>API_GATEWAY</code> setting requires you to provide an Amazon API Gateway endpoint URL to call for authentication by using the <code>IdentityProviderDetails</code> parameter.</p> <p>Use the <code>AWS_LAMBDA</code> value to directly use an Lambda function as your identity provider. If you choose this value, you must specify the ARN for the Lambda function in the <code>Function</code> parameter for the <code>IdentityProviderDetails</code> data type.</p>
    # @option params [String] :logging_role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that allows a server to turn on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, you can view user activity in your CloudWatch logs.</p>
    # @option params [String] :post_authentication_login_banner
    #   <p>Specifies a string to display when users connect to a server. This string is displayed after the user authenticates.</p> <note> <p>The SFTP protocol does not support post-authentication display banners.</p> </note>
    # @option params [String] :pre_authentication_login_banner
    #   <p>Specifies a string to display when users connect to a server. This string is displayed before the user authenticates. For example, the following banner displays details about using the system:</p> <p> <code>This system is for the use of authorized users only. Individuals using this computer system without authority, or in excess of their authority, are subject to having all of their activities on this system monitored and recorded by system personnel.</code> </p>
    # @option params [Array<String>] :protocols
    #   <p>Specifies the file transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint. The available protocols are:</p> <ul> <li> <p> <code>SFTP</code> (Secure Shell (SSH) File Transfer Protocol): File transfer over SSH</p> </li> <li> <p> <code>FTPS</code> (File Transfer Protocol Secure): File transfer with TLS encryption</p> </li> <li> <p> <code>FTP</code> (File Transfer Protocol): Unencrypted file transfer</p> </li> <li> <p> <code>AS2</code> (Applicability Statement 2): used for transporting structured business-to-business data</p> </li> </ul> <note> <ul> <li> <p>If you select <code>FTPS</code>, you must choose a certificate stored in Certificate Manager (ACM) which is used to identify your server when clients connect to it over FTPS.</p> </li> <li> <p>If <code>Protocol</code> includes either <code>FTP</code> or <code>FTPS</code>, then the <code>EndpointType</code> must be <code>VPC</code> and the <code>IdentityProviderType</code> must be either <code>AWS_DIRECTORY_SERVICE</code>, <code>AWS_LAMBDA</code>, or <code>API_GATEWAY</code>.</p> </li> <li> <p>If <code>Protocol</code> includes <code>FTP</code>, then <code>AddressAllocationIds</code> cannot be associated.</p> </li> <li> <p>If <code>Protocol</code> is set only to <code>SFTP</code>, the <code>EndpointType</code> can be set to <code>PUBLIC</code> and the <code>IdentityProviderType</code> can be set any of the supported identity types: <code>SERVICE_MANAGED</code>, <code>AWS_DIRECTORY_SERVICE</code>, <code>AWS_LAMBDA</code>, or <code>API_GATEWAY</code>.</p> </li> <li> <p>If <code>Protocol</code> includes <code>AS2</code>, then the <code>EndpointType</code> must be <code>VPC</code>, and domain must be Amazon S3.</p> </li> </ul> </note>
    # @option params [Types::ProtocolDetails] :protocol_details
    #   <p>The protocol settings that are configured for your server.</p> <ul> <li> <p> To indicate passive mode (for FTP and FTPS protocols), use the <code>PassiveIp</code> parameter. Enter a single dotted-quad IPv4 address, such as the external IP address of a firewall, router, or load balancer. </p> </li> <li> <p>To ignore the error that is generated when the client attempts to use the <code>SETSTAT</code> command on a file that you are uploading to an Amazon S3 bucket, use the <code>SetStatOption</code> parameter. To have the Transfer Family server ignore the <code>SETSTAT</code> command and upload files without needing to make any changes to your SFTP client, set the value to <code>ENABLE_NO_OP</code>. If you set the <code>SetStatOption</code> parameter to <code>ENABLE_NO_OP</code>, Transfer Family generates a log entry to Amazon CloudWatch Logs, so that you can determine when the client is making a <code>SETSTAT</code> call.</p> </li> <li> <p>To determine whether your Transfer Family server resumes recent, negotiated sessions through a unique session ID, use the <code>TlsSessionResumptionMode</code> parameter.</p> </li> <li> <p> <code>As2Transports</code> indicates the transport method for the AS2 messages. Currently, only HTTP is supported.</p> </li> </ul>
    # @option params [String] :security_policy_name
    #   <p>Specifies the name of the security policy for the server.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs that can be used to group and search for servers.</p>
    # @option params [Types::WorkflowDetails] :workflow_details
    #   <p>Specifies the workflow ID for the workflow to assign and the execution role that's used for executing the workflow.</p> <p>In addition to a workflow to execute when a file is uploaded completely, <code>WorkflowDetails</code> can also contain a workflow ID (and execution role) for a workflow to execute on partial upload. A partial upload occurs when the server session disconnects while the file is still being uploaded.</p>
    # @option params [Array<String>] :structured_log_destinations
    #   <p>Specifies the log groups to which your server logs are sent.</p> <p>To specify a log group, you must provide the ARN for an existing log group. In this case, the format of the log group is as follows:</p> <p> <code>arn:aws:logs:region-name:amazon-account-id:log-group:log-group-name:*</code> </p> <p>For example, <code>arn:aws:logs:us-east-1:111122223333:log-group:mytestgroup:*</code> </p> <p>If you have previously specified a log group for a server, you can clear it, and in effect turn off structured logging, by providing an empty value for this parameter in an <code>update-server</code> call. For example:</p> <p> <code>update-server --server-id s-1234567890abcdef0 --structured-log-destinations</code> </p>
    # @option params [Types::S3StorageOptions] :s3_storage_options
    #   <p>Specifies whether or not performance for your Amazon S3 directories is optimized. This is disabled by default.</p> <p>By default, home directory mappings have a <code>TYPE</code> of <code>DIRECTORY</code>. If you enable this option, you would then need to explicitly set the <code>HomeDirectoryMapEntry</code> <code>Type</code> to <code>FILE</code> if you want a mapping to have a file target.</p>
    # @option params [String] :ip_address_type
    #   <p>Specifies whether to use IPv4 only, or to use dual-stack (IPv4 and IPv6) for your Transfer Family endpoint. The default value is <code>IPV4</code>.</p> <important> <p>The <code>IpAddressType</code> parameter has the following limitations:</p> <ul> <li> <p>It cannot be changed while the server is online. You must stop the server before modifying this parameter.</p> </li> <li> <p>It cannot be updated to <code>DUALSTACK</code> if the server has <code>AddressAllocationIds</code> specified.</p> </li> </ul> </important> <note> <p>When using <code>DUALSTACK</code> as the <code>IpAddressType</code>, you cannot set the <code>AddressAllocationIds</code> parameter for the <a href="https://docs.aws.amazon.com/transfer/latest/APIReference/API_EndpointDetails.html">EndpointDetails</a> for the server.</p> </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate: "Certificate",
    #     domain: "S3" # One of: ["S3", "EFS"],
    #     endpoint_details: {
    #       address_allocation_ids: ["AddressAllocationId"],
    #       subnet_ids: ["SubnetId"],
    #       vpc_endpoint_id: "VpcEndpointId",
    #       vpc_id: "VpcId",
    #       security_group_ids: ["SecurityGroupId"]
    #     },
    #     endpoint_type: "PUBLIC" # One of: ["PUBLIC", "VPC", "VPC_ENDPOINT"],
    #     host_key: "HostKey",
    #     identity_provider_details: {
    #       url: "Url",
    #       invocation_role: "Role",
    #       directory_id: "DirectoryId",
    #       function: "Function",
    #       sftp_authentication_methods: "PASSWORD" # One of: ["PASSWORD", "PUBLIC_KEY", "PUBLIC_KEY_OR_PASSWORD", "PUBLIC_KEY_AND_PASSWORD"]
    #     },
    #     identity_provider_type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "API_GATEWAY", "AWS_DIRECTORY_SERVICE", "AWS_LAMBDA"],
    #     logging_role: "NullableRole",
    #     post_authentication_login_banner: "PostAuthenticationLoginBanner",
    #     pre_authentication_login_banner: "PreAuthenticationLoginBanner",
    #     protocols: ["SFTP" # One of: ["SFTP", "FTP", "FTPS", "AS2"]],
    #     protocol_details: {
    #       passive_ip: "PassiveIp",
    #       tls_session_resumption_mode: "DISABLED" # One of: ["DISABLED", "ENABLED", "ENFORCED"],
    #       set_stat_option: "DEFAULT" # One of: ["DEFAULT", "ENABLE_NO_OP"],
    #       as2_transports: ["HTTP" # One of: ["HTTP"]]
    #     },
    #     security_policy_name: "SecurityPolicyName",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     workflow_details: {
    #       on_upload: [
    #         {
    #           workflow_id: "WorkflowId", # required
    #           execution_role: "Role", # required
    #         }
    #       ],
    #       on_partial_upload: [
    #         {
    #           workflow_id: "WorkflowId", # required
    #           execution_role: "Role", # required
    #         }
    #       ]
    #     },
    #     structured_log_destinations: ["Arn"],
    #     s3_storage_options: {
    #       directory_listing_optimization: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     ip_address_type: "IPV4" # One of: ["IPV4", "DUALSTACK"]
    #   }
    #   options = {}
    #   response = client.create_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_id: "ServerId", # required
    #   }
    # @return [Types::CreateServerResponse]
    def create_server(params = {}, options = {})
      request = build_request(:create_server, params)
      request.send_request(options)
    end

    # <p>Creates a user and associates them with an existing file transfer protocol-enabled server. You can only create and associate users with servers that have the <code>IdentityProviderType</code> set to <code>SERVICE_MANAGED</code>. Using parameters for <code>CreateUser</code>, you can specify the user name, set the home directory, store the user's public key, and assign the user's Identity and Access Management (IAM) role. You can also optionally add a session policy, and assign metadata with tags that can be used to group and search for users.</p>
    # @param [Hash, Types::CreateUserRequest] params
    # @option params [String] :home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p> <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p> <note> <p>You can use the <code>HomeDirectory</code> parameter for <code>HomeDirectoryType</code> when it is set to either <code>PATH</code> or <code>LOGICAL</code>.</p> </note>
    # @option params [String] :home_directory_type
    #   <p>The type of landing directory (folder) that you want your users' home directory to be when they log in to the server. If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or Amazon EFS path as is in their file transfer protocol clients. If you set it to <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 or Amazon EFS paths visible to your users.</p> <note> <p>If <code>HomeDirectoryType</code> is <code>LOGICAL</code>, you must provide mappings, using the <code>HomeDirectoryMappings</code> parameter. If, on the other hand, <code>HomeDirectoryType</code> is <code>PATH</code>, you provide an absolute path using the <code>HomeDirectory</code> parameter. You cannot have both <code>HomeDirectory</code> and <code>HomeDirectoryMappings</code> in your template.</p> </note>
    # @option params [Array<Types::HomeDirectoryMapEntry>] :home_directory_mappings
    #   <p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should be visible to your user and how you want to make them visible. You must specify the <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you only specify a target, it is displayed as is. You also must ensure that your Identity and Access Management (IAM) role provides access to paths in <code>Target</code>. This value can be set only when <code>HomeDirectoryType</code> is set to <i>LOGICAL</i>.</p> <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p> <p> <code>[ { "Entry": "/directory1", "Target": "/bucket_name/home/mydirectory" } ]</code> </p> <p>In most cases, you can use this value instead of the session policy to lock your user down to the designated home directory ("<code>chroot</code>"). To do this, you can set <code>Entry</code> to <code>/</code> and set <code>Target</code> to the value the user should see for their home directory when they log in.</p> <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p> <p> <code>[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]</code> </p>
    # @option params [String] :policy
    #   <p>A session policy for your user so that you can use the same Identity and Access Management (IAM) role across multiple users. This policy scopes down a user's access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>, <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p> <note> <p>This policy applies only when the domain of <code>ServerId</code> is Amazon S3. Amazon EFS does not use session policies.</p> <p>For session policies, Transfer Family stores the policy as a JSON blob, instead of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass it in the <code>Policy</code> argument.</p> <p>For an example of a session policy, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html">Example session policy</a>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html">AssumeRole</a> in the <i>Amazon Web Services Security Token Service API Reference</i>.</p> </note>
    # @option params [Types::PosixProfile] :posix_profile
    #   <p>Specifies the full POSIX identity, including user ID (<code>Uid</code>), group ID (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls your users' access to your Amazon EFS file systems. The POSIX permissions that are set on files and directories in Amazon EFS determine the level of access your users get when transferring files into and out of your Amazon EFS file systems.</p>
    # @option params [String] :role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that controls your users' access to your Amazon S3 bucket or Amazon EFS file system. The policies attached to this role determine the level of access that you want to provide your users when transferring files into and out of your Amazon S3 bucket or Amazon EFS file system. The IAM role should also contain a trust relationship that allows the server to access your resources when servicing your users' transfer requests.</p>
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server instance. This is the specific server that you added your user to.</p>
    # @option params [String] :ssh_public_key_body
    #   <p>The public portion of the Secure Shell (SSH) key used to authenticate the user to the server.</p> <p>The three standard SSH public key format elements are <code>&lt;key type&gt;</code>, <code>&lt;body base64&gt;</code>, and an optional <code>&lt;comment&gt;</code>, with spaces between each element.</p> <p>Transfer Family accepts RSA, ECDSA, and ED25519 keys.</p> <ul> <li> <p>For RSA keys, the key type is <code>ssh-rsa</code>.</p> </li> <li> <p>For ED25519 keys, the key type is <code>ssh-ed25519</code>.</p> </li> <li> <p>For ECDSA keys, the key type is either <code>ecdsa-sha2-nistp256</code>, <code>ecdsa-sha2-nistp384</code>, or <code>ecdsa-sha2-nistp521</code>, depending on the size of the key you generated.</p> </li> </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs that can be used to group and search for users. Tags are metadata attached to users for any purpose.</p>
    # @option params [String] :user_name
    #   <p>A unique string that identifies a user and is associated with a <code>ServerId</code>. This user name must be a minimum of 3 and a maximum of 100 characters long. The following are valid characters: a-z, A-Z, 0-9, underscore '_', hyphen '-', period '.', and at sign '@'. The user name can't start with a hyphen, period, or at sign.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     home_directory: "HomeDirectory",
    #     home_directory_type: "PATH" # One of: ["PATH", "LOGICAL"],
    #     home_directory_mappings: [
    #       {
    #         entry: "MapEntry", # required
    #         target: "MapTarget", # required
    #         type: "FILE" # One of: ["FILE", "DIRECTORY"]
    #       }
    #     ],
    #     policy: "Policy",
    #     posix_profile: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [1]
    #     },
    #     role: "Role", # required
    #     server_id: "ServerId", # required
    #     ssh_public_key_body: "SshPublicKeyBody",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     user_name: "UserName", # required
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_id: "ServerId", # required
    #     user_name: "UserName", # required
    #   }
    # @return [Types::CreateUserResponse]
    def create_user(params = {}, options = {})
      request = build_request(:create_user, params)
      request.send_request(options)
    end

    # <p>Creates a web app based on specified parameters, and returns the ID for the new web app.</p>
    # @param [Hash, Types::CreateWebAppRequest] params
    # @option params [Types::WebAppIdentityProviderDetails] :identity_provider_details
    #   <p>You can provide a structure that contains the details for the identity provider to use with your web app.</p> <p>For more details about this parameter, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/webapp-identity-center.html">Configure your identity provider for Transfer Family web apps</a>.</p>
    # @option params [String] :access_endpoint
    #   <p>The <code>AccessEndpoint</code> is the URL that you provide to your users for them to interact with the Transfer Family web app. You can specify a custom URL or use the default value.</p> <p>Before you enter a custom URL for this parameter, follow the steps described in <a href="https://docs.aws.amazon.com/transfer/latest/userguide/webapp-customize.html">Update your access endpoint with a custom URL</a>.</p>
    # @option params [Types::WebAppUnits] :web_app_units
    #   <p>A union that contains the value for number of concurrent connections or the user sessions on your web app.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs that can be used to group and search for web apps.</p>
    # @option params [String] :web_app_endpoint_policy
    #   <p> Setting for the type of endpoint policy for the web app. The default value is <code>STANDARD</code>. </p> <p>If you are creating the web app in an Amazon Web Services GovCloud (US) Region, you can set this parameter to <code>FIPS</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_provider_details: { # required
    #       # One of:
    #       identity_center_config: {
    #         instance_arn: "IdentityCenterInstanceArn",
    #         role: "Role"
    #       }
    #     },
    #     access_endpoint: "WebAppAccessEndpoint",
    #     web_app_units: {
    #       # One of:
    #       provisioned: 1
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     web_app_endpoint_policy: "FIPS" # One of: ["FIPS", "STANDARD"]
    #   }
    #   options = {}
    #   response = client.create_web_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     web_app_id: "WebAppId", # required
    #   }
    # @return [Types::CreateWebAppResponse]
    def create_web_app(params = {}, options = {})
      request = build_request(:create_web_app, params)
      request.send_request(options)
    end

    # <p> Allows you to create a workflow with specified steps and step details the workflow invokes after file transfer completes. After creating a workflow, you can associate the workflow created with any transfer servers by specifying the <code>workflow-details</code> field in <code>CreateServer</code> and <code>UpdateServer</code> operations. </p>
    # @param [Hash, Types::CreateWorkflowRequest] params
    # @option params [String] :description
    #   <p>A textual description for the workflow.</p>
    # @option params [Array<Types::WorkflowStep>] :steps
    #   <p>Specifies the details for the steps that are in the specified workflow.</p> <p> The <code>TYPE</code> specifies which of the following actions is being taken for this step. </p> <ul> <li> <p> <b> <code>COPY</code> </b> - Copy the file to another location.</p> </li> <li> <p> <b> <code>CUSTOM</code> </b> - Perform a custom step with an Lambda function target.</p> </li> <li> <p> <b> <code>DECRYPT</code> </b> - Decrypt a file that was encrypted before it was uploaded.</p> </li> <li> <p> <b> <code>DELETE</code> </b> - Delete the file.</p> </li> <li> <p> <b> <code>TAG</code> </b> - Add a tag to the file.</p> </li> </ul> <note> <p> Currently, copying and tagging are supported only on S3. </p> </note> <p> For file location, you specify either the Amazon S3 bucket and key, or the Amazon EFS file system ID and path. </p>
    # @option params [Array<Types::WorkflowStep>] :on_exception_steps
    #   <p>Specifies the steps (actions) to take if errors are encountered during execution of the workflow.</p> <note> <p>For custom steps, the Lambda function needs to send <code>FAILURE</code> to the call back API to kick off the exception steps. Additionally, if the Lambda does not send <code>SUCCESS</code> before it times out, the exception steps are executed.</p> </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs that can be used to group and search for workflows. Tags are metadata attached to workflows for any purpose.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "WorkflowDescription",
    #     steps: [ # required
    #       {
    #         type: "COPY" # One of: ["COPY", "CUSTOM", "TAG", "DELETE", "DECRYPT"],
    #         copy_step_details: {
    #           name: "WorkflowStepName",
    #           destination_file_location: {
    #             s3_file_location: {
    #               bucket: "S3Bucket",
    #               key: "S3Key"
    #             },
    #             efs_file_location: {
    #               file_system_id: "EfsFileSystemId",
    #               path: "EfsPath"
    #             }
    #           },
    #           overwrite_existing: "TRUE" # One of: ["TRUE", "FALSE"],
    #           source_file_location: "SourceFileLocation"
    #         },
    #         custom_step_details: {
    #           name: "WorkflowStepName",
    #           target: "CustomStepTarget",
    #           timeout_seconds: 1,
    #           source_file_location: "SourceFileLocation"
    #         },
    #         delete_step_details: {
    #           name: "WorkflowStepName",
    #           source_file_location: "SourceFileLocation"
    #         },
    #         tag_step_details: {
    #           name: "WorkflowStepName",
    #           tags: [
    #             {
    #               key: "S3TagKey", # required
    #               value: "S3TagValue", # required
    #             }
    #           ],
    #           source_file_location: "SourceFileLocation"
    #         },
    #         decrypt_step_details: {
    #           name: "WorkflowStepName",
    #           type: "PGP" # One of: ["PGP"], # required
    #           source_file_location: "SourceFileLocation",
    #           overwrite_existing: "TRUE" # One of: ["TRUE", "FALSE"],
    #           destination_file_location: { # required
    #             s3_file_location: {
    #               bucket: "S3Bucket",
    #               key: "S3Key"
    #             },
    #             efs_file_location: {
    #               file_system_id: "EfsFileSystemId",
    #               path: "EfsPath"
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     on_exception_steps: [
    #       {
    #         type: "COPY" # One of: ["COPY", "CUSTOM", "TAG", "DELETE", "DECRYPT"],
    #         copy_step_details: {
    #           name: "WorkflowStepName",
    #           destination_file_location: {
    #             s3_file_location: {
    #               bucket: "S3Bucket",
    #               key: "S3Key"
    #             },
    #             efs_file_location: {
    #               file_system_id: "EfsFileSystemId",
    #               path: "EfsPath"
    #             }
    #           },
    #           overwrite_existing: "TRUE" # One of: ["TRUE", "FALSE"],
    #           source_file_location: "SourceFileLocation"
    #         },
    #         custom_step_details: {
    #           name: "WorkflowStepName",
    #           target: "CustomStepTarget",
    #           timeout_seconds: 1,
    #           source_file_location: "SourceFileLocation"
    #         },
    #         delete_step_details: {
    #           name: "WorkflowStepName",
    #           source_file_location: "SourceFileLocation"
    #         },
    #         tag_step_details: {
    #           name: "WorkflowStepName",
    #           tags: [
    #             {
    #               key: "S3TagKey", # required
    #               value: "S3TagValue", # required
    #             }
    #           ],
    #           source_file_location: "SourceFileLocation"
    #         },
    #         decrypt_step_details: {
    #           name: "WorkflowStepName",
    #           type: "PGP" # One of: ["PGP"], # required
    #           source_file_location: "SourceFileLocation",
    #           overwrite_existing: "TRUE" # One of: ["TRUE", "FALSE"],
    #           destination_file_location: { # required
    #             s3_file_location: {
    #               bucket: "S3Bucket",
    #               key: "S3Key"
    #             },
    #             efs_file_location: {
    #               file_system_id: "EfsFileSystemId",
    #               path: "EfsPath"
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_id: "WorkflowId", # required
    #   }
    # @return [Types::CreateWorkflowResponse]
    def create_workflow(params = {}, options = {})
      request = build_request(:create_workflow, params)
      request.send_request(options)
    end

    # <p>Allows you to delete the access specified in the <code>ServerID</code> and <code>ExternalID</code> parameters.</p>
    # @param [Hash, Types::DeleteAccessRequest] params
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server that has this user assigned.</p>
    # @option params [String] :external_id
    #   <p>A unique identifier that is required to identify specific groups within your directory. The users of the group that you associate have access to your Amazon S3 or Amazon EFS resources over the enabled protocols using Transfer Family. If you know the group name, you can view the SID values by running the following command using Windows PowerShell.</p> <p> <code>Get-ADGroup -Filter {samAccountName -like "<i>YourGroupName</i>*"} -Properties * | Select SamAccountName,ObjectSid</code> </p> <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p> <p>The regular expression used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #     external_id: "ExternalId", # required
    #   }
    #   options = {}
    #   response = client.delete_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_access(params = {}, options = {})
      request = build_request(:delete_access, params)
      request.send_request(options)
    end

    # <p>Delete the agreement that's specified in the provided <code>AgreementId</code>.</p>
    # @param [Hash, Types::DeleteAgreementRequest] params
    # @option params [String] :agreement_id
    #   <p>A unique identifier for the agreement. This identifier is returned when you create an agreement.</p>
    # @option params [String] :server_id
    #   <p>The server identifier associated with the agreement that you are deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agreement_id: "AgreementId", # required
    #     server_id: "ServerId", # required
    #   }
    #   options = {}
    #   response = client.delete_agreement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_agreement(params = {}, options = {})
      request = build_request(:delete_agreement, params)
      request.send_request(options)
    end

    # <p>Deletes the certificate that's specified in the <code>CertificateId</code> parameter.</p>
    # @param [Hash, Types::DeleteCertificateRequest] params
    # @option params [String] :certificate_id
    #   <p>The identifier of the certificate object that you are deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_id: "CertificateId", # required
    #   }
    #   options = {}
    #   response = client.delete_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_certificate(params = {}, options = {})
      request = build_request(:delete_certificate, params)
      request.send_request(options)
    end

    # <p>Deletes the connector that's specified in the provided <code>ConnectorId</code>.</p>
    # @param [Hash, Types::DeleteConnectorRequest] params
    # @option params [String] :connector_id
    #   <p>The unique identifier for the connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_id: "ConnectorId", # required
    #   }
    #   options = {}
    #   response = client.delete_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_connector(params = {}, options = {})
      request = build_request(:delete_connector, params)
      request.send_request(options)
    end

    # <p>Deletes the host key that's specified in the <code>HostKeyId</code> parameter.</p>
    # @param [Hash, Types::DeleteHostKeyRequest] params
    # @option params [String] :server_id
    #   <p>The identifier of the server that contains the host key that you are deleting.</p>
    # @option params [String] :host_key_id
    #   <p>The identifier of the host key that you are deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #     host_key_id: "HostKeyId", # required
    #   }
    #   options = {}
    #   response = client.delete_host_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_host_key(params = {}, options = {})
      request = build_request(:delete_host_key, params)
      request.send_request(options)
    end

    # <p>Deletes the profile that's specified in the <code>ProfileId</code> parameter.</p>
    # @param [Hash, Types::DeleteProfileRequest] params
    # @option params [String] :profile_id
    #   <p>The identifier of the profile that you are deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ProfileId", # required
    #   }
    #   options = {}
    #   response = client.delete_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_profile(params = {}, options = {})
      request = build_request(:delete_profile, params)
      request.send_request(options)
    end

    # <p>Deletes the file transfer protocol-enabled server that you specify.</p> <p>No response returns from this operation.</p>
    # @param [Hash, Types::DeleteServerRequest] params
    # @option params [String] :server_id
    #   <p>A unique system-assigned identifier for a server instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #   }
    #   options = {}
    #   response = client.delete_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_server(params = {}, options = {})
      request = build_request(:delete_server, params)
      request.send_request(options)
    end

    # <p>Deletes a user's Secure Shell (SSH) public key.</p>
    # @param [Hash, Types::DeleteSshPublicKeyRequest] params
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a file transfer protocol-enabled server instance that has the user assigned to it.</p>
    # @option params [String] :ssh_public_key_id
    #   <p>A unique identifier used to reference your user's specific SSH key.</p>
    # @option params [String] :user_name
    #   <p>A unique string that identifies a user whose public key is being deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #     ssh_public_key_id: "SshPublicKeyId", # required
    #     user_name: "UserName", # required
    #   }
    #   options = {}
    #   response = client.delete_ssh_public_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_ssh_public_key(params = {}, options = {})
      request = build_request(:delete_ssh_public_key, params)
      request.send_request(options)
    end

    # <p>Deletes the user belonging to a file transfer protocol-enabled server you specify.</p> <p>No response returns from this operation.</p> <note> <p>When you delete a user from a server, the user's information is lost.</p> </note>
    # @param [Hash, Types::DeleteUserRequest] params
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server instance that has the user assigned to it.</p>
    # @option params [String] :user_name
    #   <p>A unique string that identifies a user that is being deleted from a server.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #     user_name: "UserName", # required
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_user(params = {}, options = {})
      request = build_request(:delete_user, params)
      request.send_request(options)
    end

    # <p>Deletes the specified web app.</p>
    # @param [Hash, Types::DeleteWebAppRequest] params
    # @option params [String] :web_app_id
    #   <p>Provide the unique identifier for the web app that you are deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     web_app_id: "WebAppId", # required
    #   }
    #   options = {}
    #   response = client.delete_web_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_web_app(params = {}, options = {})
      request = build_request(:delete_web_app, params)
      request.send_request(options)
    end

    # <p>Deletes the <code>WebAppCustomization</code> object that corresponds to the web app ID specified.</p>
    # @param [Hash, Types::DeleteWebAppCustomizationRequest] params
    # @option params [String] :web_app_id
    #   <p>Provide the unique identifier for the web app that contains the customizations that you are deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     web_app_id: "WebAppId", # required
    #   }
    #   options = {}
    #   response = client.delete_web_app_customization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_web_app_customization(params = {}, options = {})
      request = build_request(:delete_web_app_customization, params)
      request.send_request(options)
    end

    # <p>Deletes the specified workflow.</p>
    # @param [Hash, Types::DeleteWorkflowRequest] params
    # @option params [String] :workflow_id
    #   <p>A unique identifier for the workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_id: "WorkflowId", # required
    #   }
    #   options = {}
    #   response = client.delete_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_workflow(params = {}, options = {})
      request = build_request(:delete_workflow, params)
      request.send_request(options)
    end

    # <p>Describes the access that is assigned to the specific file transfer protocol-enabled server, as identified by its <code>ServerId</code> property and its <code>ExternalId</code>.</p> <p>The response from this call returns the properties of the access that is associated with the <code>ServerId</code> value that was specified.</p>
    # @param [Hash, Types::DescribeAccessRequest] params
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server that has this access assigned.</p>
    # @option params [String] :external_id
    #   <p>A unique identifier that is required to identify specific groups within your directory. The users of the group that you associate have access to your Amazon S3 or Amazon EFS resources over the enabled protocols using Transfer Family. If you know the group name, you can view the SID values by running the following command using Windows PowerShell.</p> <p> <code>Get-ADGroup -Filter {samAccountName -like "<i>YourGroupName</i>*"} -Properties * | Select SamAccountName,ObjectSid</code> </p> <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p> <p>The regular expression used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #     external_id: "ExternalId", # required
    #   }
    #   options = {}
    #   response = client.describe_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_id: "ServerId", # required
    #     access: { # required
    #       home_directory: "HomeDirectory",
    #       home_directory_mappings: [
    #         {
    #           entry: "MapEntry", # required
    #           target: "MapTarget", # required
    #           type: "FILE" # One of: ["FILE", "DIRECTORY"]
    #         }
    #       ],
    #       home_directory_type: "PATH" # One of: ["PATH", "LOGICAL"],
    #       policy: "Policy",
    #       posix_profile: {
    #         uid: 1, # required
    #         gid: 1, # required
    #         secondary_gids: [1]
    #       },
    #       role: "Role",
    #       external_id: "ExternalId"
    #     }
    #   }
    # @return [Types::DescribeAccessResponse]
    def describe_access(params = {}, options = {})
      request = build_request(:describe_access, params)
      request.send_request(options)
    end

    # <p>Describes the agreement that's identified by the <code>AgreementId</code>.</p>
    # @param [Hash, Types::DescribeAgreementRequest] params
    # @option params [String] :agreement_id
    #   <p>A unique identifier for the agreement. This identifier is returned when you create an agreement.</p>
    # @option params [String] :server_id
    #   <p>The server identifier that's associated with the agreement.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agreement_id: "AgreementId", # required
    #     server_id: "ServerId", # required
    #   }
    #   options = {}
    #   response = client.describe_agreement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agreement: { # required
    #       arn: "Arn", # required
    #       agreement_id: "AgreementId",
    #       description: "Description",
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       server_id: "ServerId",
    #       local_profile_id: "ProfileId",
    #       partner_profile_id: "ProfileId",
    #       base_directory: "HomeDirectory",
    #       access_role: "Role",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       preserve_filename: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       enforce_message_signing: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       custom_directories: {
    #         failed_files_directory: "HomeDirectory", # required
    #         mdn_files_directory: "HomeDirectory", # required
    #         payload_files_directory: "HomeDirectory", # required
    #         status_files_directory: "HomeDirectory", # required
    #         temporary_files_directory: "HomeDirectory", # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeAgreementResponse]
    def describe_agreement(params = {}, options = {})
      request = build_request(:describe_agreement, params)
      request.send_request(options)
    end

    # <p>Describes the certificate that's identified by the <code>CertificateId</code>.</p>
    # @param [Hash, Types::DescribeCertificateRequest] params
    # @option params [String] :certificate_id
    #   <p>An array of identifiers for the imported certificates. You use this identifier for working with profiles and partner profiles.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_id: "CertificateId", # required
    #   }
    #   options = {}
    #   response = client.describe_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate: { # required
    #       arn: "Arn", # required
    #       certificate_id: "CertificateId",
    #       usage: "SIGNING" # One of: ["SIGNING", "ENCRYPTION", "TLS"],
    #       status: "ACTIVE" # One of: ["ACTIVE", "PENDING_ROTATION", "INACTIVE"],
    #       certificate: "CertificateBodyType",
    #       certificate_chain: "CertificateChainType",
    #       active_date: Time.now,
    #       inactive_date: Time.now,
    #       serial: "CertSerial",
    #       not_before_date: Time.now,
    #       not_after_date: Time.now,
    #       type: "CERTIFICATE" # One of: ["CERTIFICATE", "CERTIFICATE_WITH_PRIVATE_KEY"],
    #       description: "Description",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeCertificateResponse]
    def describe_certificate(params = {}, options = {})
      request = build_request(:describe_certificate, params)
      request.send_request(options)
    end

    # <p>Describes the connector that's identified by the <code>ConnectorId.</code> </p>
    # @param [Hash, Types::DescribeConnectorRequest] params
    # @option params [String] :connector_id
    #   <p>The unique identifier for the connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_id: "ConnectorId", # required
    #   }
    #   options = {}
    #   response = client.describe_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector: { # required
    #       arn: "Arn", # required
    #       connector_id: "ConnectorId",
    #       url: "Url",
    #       as2_config: {
    #         local_profile_id: "ProfileId",
    #         partner_profile_id: "ProfileId",
    #         message_subject: "MessageSubject",
    #         compression: "ZLIB" # One of: ["ZLIB", "DISABLED"],
    #         encryption_algorithm: "AES128_CBC" # One of: ["AES128_CBC", "AES192_CBC", "AES256_CBC", "DES_EDE3_CBC", "NONE"],
    #         signing_algorithm: "SHA256" # One of: ["SHA256", "SHA384", "SHA512", "SHA1", "NONE"],
    #         mdn_signing_algorithm: "SHA256" # One of: ["SHA256", "SHA384", "SHA512", "SHA1", "NONE", "DEFAULT"],
    #         mdn_response: "SYNC" # One of: ["SYNC", "NONE"],
    #         basic_auth_secret_id: "As2ConnectorSecretId",
    #         preserve_content_type: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       access_role: "Role",
    #       logging_role: "Role",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       sftp_config: {
    #         user_secret_id: "SecretId",
    #         trusted_host_keys: ["SftpConnectorTrustedHostKey"],
    #         max_concurrent_connections: 1
    #       },
    #       service_managed_egress_ip_addresses: ["ServiceManagedEgressIpAddress"],
    #       security_policy_name: "ConnectorSecurityPolicyName"
    #     }
    #   }
    # @return [Types::DescribeConnectorResponse]
    def describe_connector(params = {}, options = {})
      request = build_request(:describe_connector, params)
      request.send_request(options)
    end

    # <p>You can use <code>DescribeExecution</code> to check the details of the execution of the specified workflow.</p> <note> <p>This API call only returns details for in-progress workflows.</p> <p> If you provide an ID for an execution that is not in progress, or if the execution doesn't match the specified workflow ID, you receive a <code>ResourceNotFound</code> exception.</p> </note>
    # @param [Hash, Types::DescribeExecutionRequest] params
    # @option params [String] :execution_id
    #   <p>A unique identifier for the execution of a workflow.</p>
    # @option params [String] :workflow_id
    #   <p>A unique identifier for the workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     execution_id: "ExecutionId", # required
    #     workflow_id: "WorkflowId", # required
    #   }
    #   options = {}
    #   response = client.describe_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_id: "WorkflowId", # required
    #     execution: { # required
    #       execution_id: "ExecutionId",
    #       initial_file_location: {
    #         s3_file_location: {
    #           bucket: "S3Bucket",
    #           key: "S3Key",
    #           version_id: "S3VersionId",
    #           etag: "S3Etag"
    #         },
    #         efs_file_location: {
    #           file_system_id: "EfsFileSystemId",
    #           path: "EfsPath"
    #         }
    #       },
    #       service_metadata: {
    #         user_details: { # required
    #           user_name: "UserName", # required
    #           server_id: "ServerId", # required
    #           session_id: "SessionId"
    #         }
    #       },
    #       execution_role: "Role",
    #       logging_configuration: {
    #         logging_role: "Role",
    #         log_group_name: "LogGroupName"
    #       },
    #       posix_profile: {
    #         uid: 1, # required
    #         gid: 1, # required
    #         secondary_gids: [1]
    #       },
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "EXCEPTION", "HANDLING_EXCEPTION"],
    #       results: {
    #         steps: [
    #           {
    #             step_type: "COPY" # One of: ["COPY", "CUSTOM", "TAG", "DELETE", "DECRYPT"],
    #             outputs: "StepResultOutputsJson",
    #             error: {
    #               type: "PERMISSION_DENIED" # One of: ["PERMISSION_DENIED", "CUSTOM_STEP_FAILED", "THROTTLED", "ALREADY_EXISTS", "NOT_FOUND", "BAD_REQUEST", "TIMEOUT", "INTERNAL_SERVER_ERROR"], # required
    #               message: "ExecutionErrorMessage", # required
    #             }
    #           }
    #         ],
    #         on_exception_steps: [
    #           {
    #             step_type: "COPY" # One of: ["COPY", "CUSTOM", "TAG", "DELETE", "DECRYPT"],
    #             outputs: "StepResultOutputsJson",
    #             error: {
    #               type: "PERMISSION_DENIED" # One of: ["PERMISSION_DENIED", "CUSTOM_STEP_FAILED", "THROTTLED", "ALREADY_EXISTS", "NOT_FOUND", "BAD_REQUEST", "TIMEOUT", "INTERNAL_SERVER_ERROR"], # required
    #               message: "ExecutionErrorMessage", # required
    #             }
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DescribeExecutionResponse]
    def describe_execution(params = {}, options = {})
      request = build_request(:describe_execution, params)
      request.send_request(options)
    end

    # <p>Returns the details of the host key that's specified by the <code>HostKeyId</code> and <code>ServerId</code>.</p>
    # @param [Hash, Types::DescribeHostKeyRequest] params
    # @option params [String] :server_id
    #   <p>The identifier of the server that contains the host key that you want described.</p>
    # @option params [String] :host_key_id
    #   <p>The identifier of the host key that you want described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #     host_key_id: "HostKeyId", # required
    #   }
    #   options = {}
    #   response = client.describe_host_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     host_key: { # required
    #       arn: "Arn", # required
    #       host_key_id: "HostKeyId",
    #       host_key_fingerprint: "HostKeyFingerprint",
    #       description: "HostKeyDescription",
    #       type: "HostKeyType",
    #       date_imported: Time.now,
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeHostKeyResponse]
    def describe_host_key(params = {}, options = {})
      request = build_request(:describe_host_key, params)
      request.send_request(options)
    end

    # <p>Returns the details of the profile that's specified by the <code>ProfileId</code>.</p>
    # @param [Hash, Types::DescribeProfileRequest] params
    # @option params [String] :profile_id
    #   <p>The identifier of the profile that you want described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ProfileId", # required
    #   }
    #   options = {}
    #   response = client.describe_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile: { # required
    #       arn: "Arn", # required
    #       profile_id: "ProfileId",
    #       profile_type: "LOCAL" # One of: ["LOCAL", "PARTNER"],
    #       as2_id: "As2Id",
    #       certificate_ids: ["CertificateId"],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeProfileResponse]
    def describe_profile(params = {}, options = {})
      request = build_request(:describe_profile, params)
      request.send_request(options)
    end

    # <p>Describes the security policy that is attached to your server or SFTP connector. The response contains a description of the security policy's properties. For more information about security policies, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html">Working with security policies for servers</a> or <a href="https://docs.aws.amazon.com/transfer/latest/userguide/security-policies-connectors.html">Working with security policies for SFTP connectors</a>.</p>
    # @param [Hash, Types::DescribeSecurityPolicyRequest] params
    # @option params [String] :security_policy_name
    #   <p>Specify the text name of the security policy for which you want the details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     security_policy_name: "SecurityPolicyName", # required
    #   }
    #   options = {}
    #   response = client.describe_security_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_policy: { # required
    #       fips: false,
    #       security_policy_name: "SecurityPolicyName", # required
    #       ssh_ciphers: ["SecurityPolicyOption"],
    #       ssh_kexs: ["SecurityPolicyOption"],
    #       ssh_macs: ["SecurityPolicyOption"],
    #       tls_ciphers: ["SecurityPolicyOption"],
    #       ssh_host_key_algorithms: ["SecurityPolicyOption"],
    #       type: "SERVER" # One of: ["SERVER", "CONNECTOR"],
    #       protocols: ["SFTP" # One of: ["SFTP", "FTPS"]]
    #     }
    #   }
    # @return [Types::DescribeSecurityPolicyResponse]
    def describe_security_policy(params = {}, options = {})
      request = build_request(:describe_security_policy, params)
      request.send_request(options)
    end

    # <p>Describes a file transfer protocol-enabled server that you specify by passing the <code>ServerId</code> parameter.</p> <p>The response contains a description of a server's properties. When you set <code>EndpointType</code> to VPC, the response will contain the <code>EndpointDetails</code>.</p>
    # @param [Hash, Types::DescribeServerRequest] params
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #   }
    #   options = {}
    #   response = client.describe_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server: { # required
    #       arn: "Arn", # required
    #       certificate: "Certificate",
    #       protocol_details: {
    #         passive_ip: "PassiveIp",
    #         tls_session_resumption_mode: "DISABLED" # One of: ["DISABLED", "ENABLED", "ENFORCED"],
    #         set_stat_option: "DEFAULT" # One of: ["DEFAULT", "ENABLE_NO_OP"],
    #         as2_transports: ["HTTP" # One of: ["HTTP"]]
    #       },
    #       domain: "S3" # One of: ["S3", "EFS"],
    #       endpoint_details: {
    #         address_allocation_ids: ["AddressAllocationId"],
    #         subnet_ids: ["SubnetId"],
    #         vpc_endpoint_id: "VpcEndpointId",
    #         vpc_id: "VpcId",
    #         security_group_ids: ["SecurityGroupId"]
    #       },
    #       endpoint_type: "PUBLIC" # One of: ["PUBLIC", "VPC", "VPC_ENDPOINT"],
    #       host_key_fingerprint: "HostKeyFingerprint",
    #       identity_provider_details: {
    #         url: "Url",
    #         invocation_role: "Role",
    #         directory_id: "DirectoryId",
    #         function: "Function",
    #         sftp_authentication_methods: "PASSWORD" # One of: ["PASSWORD", "PUBLIC_KEY", "PUBLIC_KEY_OR_PASSWORD", "PUBLIC_KEY_AND_PASSWORD"]
    #       },
    #       identity_provider_type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "API_GATEWAY", "AWS_DIRECTORY_SERVICE", "AWS_LAMBDA"],
    #       logging_role: "NullableRole",
    #       post_authentication_login_banner: "PostAuthenticationLoginBanner",
    #       pre_authentication_login_banner: "PreAuthenticationLoginBanner",
    #       protocols: ["SFTP" # One of: ["SFTP", "FTP", "FTPS", "AS2"]],
    #       security_policy_name: "SecurityPolicyName",
    #       server_id: "ServerId",
    #       state: "OFFLINE" # One of: ["OFFLINE", "ONLINE", "STARTING", "STOPPING", "START_FAILED", "STOP_FAILED"],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       user_count: 1,
    #       workflow_details: {
    #         on_upload: [
    #           {
    #             workflow_id: "WorkflowId", # required
    #             execution_role: "Role", # required
    #           }
    #         ],
    #         on_partial_upload: [
    #           {
    #             workflow_id: "WorkflowId", # required
    #             execution_role: "Role", # required
    #           }
    #         ]
    #       },
    #       structured_log_destinations: ["Arn"],
    #       s3_storage_options: {
    #         directory_listing_optimization: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       as2_service_managed_egress_ip_addresses: ["ServiceManagedEgressIpAddress"],
    #       ip_address_type: "IPV4" # One of: ["IPV4", "DUALSTACK"]
    #     }
    #   }
    # @return [Types::DescribeServerResponse]
    def describe_server(params = {}, options = {})
      request = build_request(:describe_server, params)
      request.send_request(options)
    end

    # <p>Describes the user assigned to the specific file transfer protocol-enabled server, as identified by its <code>ServerId</code> property.</p> <p>The response from this call returns the properties of the user associated with the <code>ServerId</code> value that was specified.</p>
    # @param [Hash, Types::DescribeUserRequest] params
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server that has this user assigned.</p>
    # @option params [String] :user_name
    #   <p>The name of the user assigned to one or more servers. User names are part of the sign-in credentials to use the Transfer Family service and perform file transfer tasks.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #     user_name: "UserName", # required
    #   }
    #   options = {}
    #   response = client.describe_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_id: "ServerId", # required
    #     user: { # required
    #       arn: "Arn", # required
    #       home_directory: "HomeDirectory",
    #       home_directory_mappings: [
    #         {
    #           entry: "MapEntry", # required
    #           target: "MapTarget", # required
    #           type: "FILE" # One of: ["FILE", "DIRECTORY"]
    #         }
    #       ],
    #       home_directory_type: "PATH" # One of: ["PATH", "LOGICAL"],
    #       policy: "Policy",
    #       posix_profile: {
    #         uid: 1, # required
    #         gid: 1, # required
    #         secondary_gids: [1]
    #       },
    #       role: "Role",
    #       ssh_public_keys: [
    #         {
    #           date_imported: Time.now, # required
    #           ssh_public_key_body: "SshPublicKeyBody", # required
    #           ssh_public_key_id: "SshPublicKeyId", # required
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       user_name: "UserName"
    #     }
    #   }
    # @return [Types::DescribeUserResponse]
    def describe_user(params = {}, options = {})
      request = build_request(:describe_user, params)
      request.send_request(options)
    end

    # <p>Describes the web app that's identified by <code>WebAppId</code>.</p>
    # @param [Hash, Types::DescribeWebAppRequest] params
    # @option params [String] :web_app_id
    #   <p>Provide the unique identifier for the web app.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     web_app_id: "WebAppId", # required
    #   }
    #   options = {}
    #   response = client.describe_web_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     web_app: { # required
    #       arn: "Arn", # required
    #       web_app_id: "WebAppId", # required
    #       described_identity_provider_details: {
    #         # One of:
    #         identity_center_config: {
    #           application_arn: "IdentityCenterApplicationArn",
    #           instance_arn: "IdentityCenterInstanceArn",
    #           role: "Role"
    #         }
    #       },
    #       access_endpoint: "WebAppAccessEndpoint",
    #       web_app_endpoint: "WebAppEndpoint",
    #       web_app_units: {
    #         # One of:
    #         provisioned: 1
    #       },
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       web_app_endpoint_policy: "FIPS" # One of: ["FIPS", "STANDARD"]
    #     }
    #   }
    # @return [Types::DescribeWebAppResponse]
    def describe_web_app(params = {}, options = {})
      request = build_request(:describe_web_app, params)
      request.send_request(options)
    end

    # <p>Describes the web app customization object that's identified by <code>WebAppId</code>.</p>
    # @param [Hash, Types::DescribeWebAppCustomizationRequest] params
    # @option params [String] :web_app_id
    #   <p>Provide the unique identifier for the web app.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     web_app_id: "WebAppId", # required
    #   }
    #   options = {}
    #   response = client.describe_web_app_customization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     web_app_customization: { # required
    #       arn: "Arn", # required
    #       web_app_id: "WebAppId", # required
    #       title: "WebAppTitle",
    #       logo_file: "data",
    #       favicon_file: "data"
    #     }
    #   }
    # @return [Types::DescribeWebAppCustomizationResponse]
    def describe_web_app_customization(params = {}, options = {})
      request = build_request(:describe_web_app_customization, params)
      request.send_request(options)
    end

    # <p>Describes the specified workflow.</p>
    # @param [Hash, Types::DescribeWorkflowRequest] params
    # @option params [String] :workflow_id
    #   <p>A unique identifier for the workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_id: "WorkflowId", # required
    #   }
    #   options = {}
    #   response = client.describe_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow: { # required
    #       arn: "Arn", # required
    #       description: "WorkflowDescription",
    #       steps: [
    #         {
    #           type: "COPY" # One of: ["COPY", "CUSTOM", "TAG", "DELETE", "DECRYPT"],
    #           copy_step_details: {
    #             name: "WorkflowStepName",
    #             destination_file_location: {
    #               s3_file_location: {
    #                 bucket: "S3Bucket",
    #                 key: "S3Key"
    #               },
    #               efs_file_location: {
    #                 file_system_id: "EfsFileSystemId",
    #                 path: "EfsPath"
    #               }
    #             },
    #             overwrite_existing: "TRUE" # One of: ["TRUE", "FALSE"],
    #             source_file_location: "SourceFileLocation"
    #           },
    #           custom_step_details: {
    #             name: "WorkflowStepName",
    #             target: "CustomStepTarget",
    #             timeout_seconds: 1,
    #             source_file_location: "SourceFileLocation"
    #           },
    #           delete_step_details: {
    #             name: "WorkflowStepName",
    #             source_file_location: "SourceFileLocation"
    #           },
    #           tag_step_details: {
    #             name: "WorkflowStepName",
    #             tags: [
    #               {
    #                 key: "S3TagKey", # required
    #                 value: "S3TagValue", # required
    #               }
    #             ],
    #             source_file_location: "SourceFileLocation"
    #           },
    #           decrypt_step_details: {
    #             name: "WorkflowStepName",
    #             type: "PGP" # One of: ["PGP"], # required
    #             source_file_location: "SourceFileLocation",
    #             overwrite_existing: "TRUE" # One of: ["TRUE", "FALSE"],
    #             destination_file_location: { # required
    #               s3_file_location: {
    #                 bucket: "S3Bucket",
    #                 key: "S3Key"
    #               },
    #               efs_file_location: {
    #                 file_system_id: "EfsFileSystemId",
    #                 path: "EfsPath"
    #               }
    #             }
    #           }
    #         }
    #       ],
    #       on_exception_steps: [
    #         {
    #           type: "COPY" # One of: ["COPY", "CUSTOM", "TAG", "DELETE", "DECRYPT"],
    #           copy_step_details: {
    #             name: "WorkflowStepName",
    #             destination_file_location: {
    #               s3_file_location: {
    #                 bucket: "S3Bucket",
    #                 key: "S3Key"
    #               },
    #               efs_file_location: {
    #                 file_system_id: "EfsFileSystemId",
    #                 path: "EfsPath"
    #               }
    #             },
    #             overwrite_existing: "TRUE" # One of: ["TRUE", "FALSE"],
    #             source_file_location: "SourceFileLocation"
    #           },
    #           custom_step_details: {
    #             name: "WorkflowStepName",
    #             target: "CustomStepTarget",
    #             timeout_seconds: 1,
    #             source_file_location: "SourceFileLocation"
    #           },
    #           delete_step_details: {
    #             name: "WorkflowStepName",
    #             source_file_location: "SourceFileLocation"
    #           },
    #           tag_step_details: {
    #             name: "WorkflowStepName",
    #             tags: [
    #               {
    #                 key: "S3TagKey", # required
    #                 value: "S3TagValue", # required
    #               }
    #             ],
    #             source_file_location: "SourceFileLocation"
    #           },
    #           decrypt_step_details: {
    #             name: "WorkflowStepName",
    #             type: "PGP" # One of: ["PGP"], # required
    #             source_file_location: "SourceFileLocation",
    #             overwrite_existing: "TRUE" # One of: ["TRUE", "FALSE"],
    #             destination_file_location: { # required
    #               s3_file_location: {
    #                 bucket: "S3Bucket",
    #                 key: "S3Key"
    #               },
    #               efs_file_location: {
    #                 file_system_id: "EfsFileSystemId",
    #                 path: "EfsPath"
    #               }
    #             }
    #           }
    #         }
    #       ],
    #       workflow_id: "WorkflowId",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeWorkflowResponse]
    def describe_workflow(params = {}, options = {})
      request = build_request(:describe_workflow, params)
      request.send_request(options)
    end

    # <p>Imports the signing and encryption certificates that you need to create local (AS2) profiles and partner profiles.</p> <p>You can import both the certificate and its chain in the <code>Certificate</code> parameter.</p> <note> <p>If you use the <code>Certificate</code> parameter to upload both the certificate and its chain, don't use the <code>CertificateChain</code> parameter.</p> </note>
    # @param [Hash, Types::ImportCertificateRequest] params
    # @option params [String] :usage
    #   <p>Specifies how this certificate is used. It can be used in the following ways:</p> <ul> <li> <p> <code>SIGNING</code>: For signing AS2 messages</p> </li> <li> <p> <code>ENCRYPTION</code>: For encrypting AS2 messages</p> </li> <li> <p> <code>TLS</code>: For securing AS2 communications sent over HTTPS</p> </li> </ul>
    # @option params [String] :certificate
    #   <ul> <li> <p>For the CLI, provide a file path for a certificate in URI format. For example, <code>--certificate file://encryption-cert.pem</code>. Alternatively, you can provide the raw content.</p> </li> <li> <p>For the SDK, specify the raw content of a certificate file. For example, <code>--certificate "`cat encryption-cert.pem`"</code>.</p> </li> </ul> <note> <p>You can provide both the certificate and its chain in this parameter, without needing to use the <code>CertificateChain</code> parameter. If you use this parameter for both the certificate and its chain, do not use the <code>CertificateChain</code> parameter.</p> </note>
    # @option params [String] :certificate_chain
    #   <p>An optional list of certificates that make up the chain for the certificate that's being imported.</p>
    # @option params [String] :private_key
    #   <ul> <li> <p>For the CLI, provide a file path for a private key in URI format. For example, <code>--private-key file://encryption-key.pem</code>. Alternatively, you can provide the raw content of the private key file.</p> </li> <li> <p>For the SDK, specify the raw content of a private key file. For example, <code>--private-key "`cat encryption-key.pem`"</code> </p> </li> </ul>
    # @option params [Time] :active_date
    #   <p>An optional date that specifies when the certificate becomes active. If you do not specify a value, <code>ActiveDate</code> takes the same value as <code>NotBeforeDate</code>, which is specified by the CA. </p>
    # @option params [Time] :inactive_date
    #   <p>An optional date that specifies when the certificate becomes inactive. If you do not specify a value, <code>InactiveDate</code> takes the same value as <code>NotAfterDate</code>, which is specified by the CA.</p>
    # @option params [String] :description
    #   <p>A short description that helps identify the certificate. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs that can be used to group and search for certificates.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     usage: "SIGNING" # One of: ["SIGNING", "ENCRYPTION", "TLS"], # required
    #     certificate: "CertificateBodyType", # required
    #     certificate_chain: "CertificateChainType",
    #     private_key: "PrivateKeyType",
    #     active_date: Time.now,
    #     inactive_date: Time.now,
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.import_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_id: "CertificateId", # required
    #   }
    # @return [Types::ImportCertificateResponse]
    def import_certificate(params = {}, options = {})
      request = build_request(:import_certificate, params)
      request.send_request(options)
    end

    # <p>Adds a host key to the server that's specified by the <code>ServerId</code> parameter.</p>
    # @param [Hash, Types::ImportHostKeyRequest] params
    # @option params [String] :server_id
    #   <p>The identifier of the server that contains the host key that you are importing.</p>
    # @option params [String] :host_key_body
    #   <p>The private key portion of an SSH key pair.</p> <p>Transfer Family accepts RSA, ECDSA, and ED25519 keys.</p>
    # @option params [String] :description
    #   <p>The text description that identifies this host key.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs that can be used to group and search for host keys.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #     host_key_body: "HostKey", # required
    #     description: "HostKeyDescription",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.import_host_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_id: "ServerId", # required
    #     host_key_id: "HostKeyId", # required
    #   }
    # @return [Types::ImportHostKeyResponse]
    def import_host_key(params = {}, options = {})
      request = build_request(:import_host_key, params)
      request.send_request(options)
    end

    # <p>Adds a Secure Shell (SSH) public key to a Transfer Family user identified by a <code>UserName</code> value assigned to the specific file transfer protocol-enabled server, identified by <code>ServerId</code>.</p> <p>The response returns the <code>UserName</code> value, the <code>ServerId</code> value, and the name of the <code>SshPublicKeyId</code>.</p>
    # @param [Hash, Types::ImportSshPublicKeyRequest] params
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server.</p>
    # @option params [String] :ssh_public_key_body
    #   <p>The public key portion of an SSH key pair.</p> <p>Transfer Family accepts RSA, ECDSA, and ED25519 keys.</p>
    # @option params [String] :user_name
    #   <p>The name of the Transfer Family user that is assigned to one or more servers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #     ssh_public_key_body: "SshPublicKeyBody", # required
    #     user_name: "UserName", # required
    #   }
    #   options = {}
    #   response = client.import_ssh_public_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_id: "ServerId", # required
    #     ssh_public_key_id: "SshPublicKeyId", # required
    #     user_name: "UserName", # required
    #   }
    # @return [Types::ImportSshPublicKeyResponse]
    def import_ssh_public_key(params = {}, options = {})
      request = build_request(:import_ssh_public_key, params)
      request.send_request(options)
    end

    # <p>Lists the details for all the accesses you have on your server.</p>
    # @param [Hash, Types::ListAccessesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    # @option params [String] :next_token
    #   <p>When you can get additional results from the <code>ListAccesses</code> call, a <code>NextToken</code> parameter is returned in the output. You can then pass in a subsequent command to the <code>NextToken</code> parameter to continue listing additional accesses.</p>
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server that has users assigned to it.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     server_id: "ServerId", # required
    #   }
    #   options = {}
    #   response = client.list_accesses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     server_id: "ServerId", # required
    #     accesses: [ # required
    #       {
    #         home_directory: "HomeDirectory",
    #         home_directory_type: "PATH" # One of: ["PATH", "LOGICAL"],
    #         role: "Role",
    #         external_id: "ExternalId"
    #       }
    #     ]
    #   }
    # @return [Types::ListAccessesResponse]
    def list_accesses(params = {}, options = {})
      request = build_request(:list_accesses, params)
      request.send_request(options)
    end

    # <p>Returns a list of the agreements for the server that's identified by the <code>ServerId</code> that you supply. If you want to limit the results to a certain number, supply a value for the <code>MaxResults</code> parameter. If you ran the command previously and received a value for <code>NextToken</code>, you can supply that value to continue listing agreements from where you left off.</p>
    # @param [Hash, Types::ListAgreementsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    # @option params [String] :next_token
    #   <p>When you can get additional results from the <code>ListAgreements</code> call, a <code>NextToken</code> parameter is returned in the output. You can then pass in a subsequent command to the <code>NextToken</code> parameter to continue listing additional agreements.</p>
    # @option params [String] :server_id
    #   <p>The identifier of the server for which you want a list of agreements.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     server_id: "ServerId", # required
    #   }
    #   options = {}
    #   response = client.list_agreements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     agreements: [ # required
    #       {
    #         arn: "Arn",
    #         agreement_id: "AgreementId",
    #         description: "Description",
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         server_id: "ServerId",
    #         local_profile_id: "ProfileId",
    #         partner_profile_id: "ProfileId"
    #       }
    #     ]
    #   }
    # @return [Types::ListAgreementsResponse]
    def list_agreements(params = {}, options = {})
      request = build_request(:list_agreements, params)
      request.send_request(options)
    end

    # <p>Returns a list of the current certificates that have been imported into Transfer Family. If you want to limit the results to a certain number, supply a value for the <code>MaxResults</code> parameter. If you ran the command previously and received a value for the <code>NextToken</code> parameter, you can supply that value to continue listing certificates from where you left off.</p>
    # @param [Hash, Types::ListCertificatesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    # @option params [String] :next_token
    #   <p>When you can get additional results from the <code>ListCertificates</code> call, a <code>NextToken</code> parameter is returned in the output. You can then pass in a subsequent command to the <code>NextToken</code> parameter to continue listing additional certificates.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     certificates: [ # required
    #       {
    #         arn: "Arn",
    #         certificate_id: "CertificateId",
    #         usage: "SIGNING" # One of: ["SIGNING", "ENCRYPTION", "TLS"],
    #         status: "ACTIVE" # One of: ["ACTIVE", "PENDING_ROTATION", "INACTIVE"],
    #         active_date: Time.now,
    #         inactive_date: Time.now,
    #         type: "CERTIFICATE" # One of: ["CERTIFICATE", "CERTIFICATE_WITH_PRIVATE_KEY"],
    #         description: "Description"
    #       }
    #     ]
    #   }
    # @return [Types::ListCertificatesResponse]
    def list_certificates(params = {}, options = {})
      request = build_request(:list_certificates, params)
      request.send_request(options)
    end

    # <p>Lists the connectors for the specified Region.</p>
    # @param [Hash, Types::ListConnectorsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    # @option params [String] :next_token
    #   <p>When you can get additional results from the <code>ListConnectors</code> call, a <code>NextToken</code> parameter is returned in the output. You can then pass in a subsequent command to the <code>NextToken</code> parameter to continue listing additional connectors.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_connectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     connectors: [ # required
    #       {
    #         arn: "Arn",
    #         connector_id: "ConnectorId",
    #         url: "Url"
    #       }
    #     ]
    #   }
    # @return [Types::ListConnectorsResponse]
    def list_connectors(params = {}, options = {})
      request = build_request(:list_connectors, params)
      request.send_request(options)
    end

    # <p>Lists all in-progress executions for the specified workflow.</p> <note> <p>If the specified workflow ID cannot be found, <code>ListExecutions</code> returns a <code>ResourceNotFound</code> exception.</p> </note>
    # @param [Hash, Types::ListExecutionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    # @option params [String] :next_token
    #   <p> <code>ListExecutions</code> returns the <code>NextToken</code> parameter in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional executions.</p> <p> This is useful for pagination, for instance. If you have 100 executions for a workflow, you might only want to list first 10. If so, call the API by specifying the <code>max-results</code>: </p> <p> <code>aws transfer list-executions --max-results 10</code> </p> <p> This returns details for the first 10 executions, as well as the pointer (<code>NextToken</code>) to the eleventh execution. You can now call the API again, supplying the <code>NextToken</code> value you received: </p> <p> <code>aws transfer list-executions --max-results 10 --next-token $somePointerReturnedFromPreviousListResult</code> </p> <p> This call returns the next 10 executions, the 11th through the 20th. You can then repeat the call until the details for all 100 executions have been returned. </p>
    # @option params [String] :workflow_id
    #   <p>A unique identifier for the workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     workflow_id: "WorkflowId", # required
    #   }
    #   options = {}
    #   response = client.list_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     workflow_id: "WorkflowId", # required
    #     executions: [ # required
    #       {
    #         execution_id: "ExecutionId",
    #         initial_file_location: {
    #           s3_file_location: {
    #             bucket: "S3Bucket",
    #             key: "S3Key",
    #             version_id: "S3VersionId",
    #             etag: "S3Etag"
    #           },
    #           efs_file_location: {
    #             file_system_id: "EfsFileSystemId",
    #             path: "EfsPath"
    #           }
    #         },
    #         service_metadata: {
    #           user_details: { # required
    #             user_name: "UserName", # required
    #             server_id: "ServerId", # required
    #             session_id: "SessionId"
    #           }
    #         },
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "EXCEPTION", "HANDLING_EXCEPTION"]
    #       }
    #     ]
    #   }
    # @return [Types::ListExecutionsResponse]
    def list_executions(params = {}, options = {})
      request = build_request(:list_executions, params)
      request.send_request(options)
    end

    # <p> Returns real-time updates and detailed information on the status of each individual file being transferred in a specific file transfer operation. You specify the file transfer by providing its <code>ConnectorId</code> and its <code>TransferId</code>.</p> <note> <p>File transfer results are available up to 7 days after an operation has been requested.</p> </note>
    # @param [Hash, Types::ListFileTransferResultsRequest] params
    # @option params [String] :connector_id
    #   <p>A unique identifier for a connector. This value should match the value supplied to the corresponding <code>StartFileTransfer</code> call.</p>
    # @option params [String] :transfer_id
    #   <p>A unique identifier for a file transfer. This value should match the value supplied to the corresponding <code>StartFileTransfer</code> call.</p>
    # @option params [String] :next_token
    #   <p>If there are more file details than returned in this call, use this value for a subsequent call to <code>ListFileTransferResults</code> to retrieve them.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of files to return in a single page. Note that currently you can specify a maximum of 10 file paths in a single <a href="https://docs.aws.amazon.com/transfer/latest/APIReference/API_StartFileTransfer.html">StartFileTransfer</a> operation. Thus, the maximum number of file transfer results that can be returned in a single page is 10. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_id: "ConnectorId", # required
    #     transfer_id: "TransferId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_file_transfer_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_transfer_results: [ # required
    #       {
    #         file_path: "FilePath", # required
    #         status_code: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "COMPLETED", "FAILED"], # required
    #         failure_code: "FailureCode",
    #         failure_message: "Message"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFileTransferResultsResponse]
    def list_file_transfer_results(params = {}, options = {})
      request = build_request(:list_file_transfer_results, params)
      request.send_request(options)
    end

    # <p>Returns a list of host keys for the server that's specified by the <code>ServerId</code> parameter.</p>
    # @param [Hash, Types::ListHostKeysRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    # @option params [String] :next_token
    #   <p>When there are additional results that were not returned, a <code>NextToken</code> parameter is returned. You can use that value for a subsequent call to <code>ListHostKeys</code> to continue listing results.</p>
    # @option params [String] :server_id
    #   <p>The identifier of the server that contains the host keys that you want to view.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     server_id: "ServerId", # required
    #   }
    #   options = {}
    #   response = client.list_host_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     server_id: "ServerId", # required
    #     host_keys: [ # required
    #       {
    #         arn: "Arn", # required
    #         host_key_id: "HostKeyId",
    #         fingerprint: "HostKeyFingerprint",
    #         description: "HostKeyDescription",
    #         type: "HostKeyType",
    #         date_imported: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListHostKeysResponse]
    def list_host_keys(params = {}, options = {})
      request = build_request(:list_host_keys, params)
      request.send_request(options)
    end

    # <p>Returns a list of the profiles for your system. If you want to limit the results to a certain number, supply a value for the <code>MaxResults</code> parameter. If you ran the command previously and received a value for <code>NextToken</code>, you can supply that value to continue listing profiles from where you left off.</p>
    # @param [Hash, Types::ListProfilesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    # @option params [String] :next_token
    #   <p>When there are additional results that were not returned, a <code>NextToken</code> parameter is returned. You can use that value for a subsequent call to <code>ListProfiles</code> to continue listing results.</p>
    # @option params [String] :profile_type
    #   <p>Indicates whether to list only <code>LOCAL</code> type profiles or only <code>PARTNER</code> type profiles. If not supplied in the request, the command lists all types of profiles.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     profile_type: "LOCAL" # One of: ["LOCAL", "PARTNER"]
    #   }
    #   options = {}
    #   response = client.list_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     profiles: [ # required
    #       {
    #         arn: "Arn",
    #         profile_id: "ProfileId",
    #         as2_id: "As2Id",
    #         profile_type: "LOCAL" # One of: ["LOCAL", "PARTNER"]
    #       }
    #     ]
    #   }
    # @return [Types::ListProfilesResponse]
    def list_profiles(params = {}, options = {})
      request = build_request(:list_profiles, params)
      request.send_request(options)
    end

    # <p>Lists the security policies that are attached to your servers and SFTP connectors. For more information about security policies, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html">Working with security policies for servers</a> or <a href="https://docs.aws.amazon.com/transfer/latest/userguide/security-policies-connectors.html">Working with security policies for SFTP connectors</a>.</p>
    # @param [Hash, Types::ListSecurityPoliciesRequest] params
    # @option params [Integer] :max_results
    #   <p>Specifies the number of security policies to return as a response to the <code>ListSecurityPolicies</code> query.</p>
    # @option params [String] :next_token
    #   <p>When additional results are obtained from the <code>ListSecurityPolicies</code> command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional security policies.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_security_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     security_policy_names: ["SecurityPolicyName"], # required
    #   }
    # @return [Types::ListSecurityPoliciesResponse]
    def list_security_policies(params = {}, options = {})
      request = build_request(:list_security_policies, params)
      request.send_request(options)
    end

    # <p>Lists the file transfer protocol-enabled servers that are associated with your Amazon Web Services account.</p>
    # @param [Hash, Types::ListServersRequest] params
    # @option params [Integer] :max_results
    #   <p>Specifies the number of servers to return as a response to the <code>ListServers</code> query.</p>
    # @option params [String] :next_token
    #   <p>When additional results are obtained from the <code>ListServers</code> command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional servers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_servers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     servers: [ # required
    #       {
    #         arn: "Arn", # required
    #         domain: "S3" # One of: ["S3", "EFS"],
    #         identity_provider_type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "API_GATEWAY", "AWS_DIRECTORY_SERVICE", "AWS_LAMBDA"],
    #         endpoint_type: "PUBLIC" # One of: ["PUBLIC", "VPC", "VPC_ENDPOINT"],
    #         logging_role: "Role",
    #         server_id: "ServerId",
    #         state: "OFFLINE" # One of: ["OFFLINE", "ONLINE", "STARTING", "STOPPING", "START_FAILED", "STOP_FAILED"],
    #         user_count: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListServersResponse]
    def list_servers(params = {}, options = {})
      request = build_request(:list_servers, params)
      request.send_request(options)
    end

    # <p>Lists all of the tags associated with the Amazon Resource Name (ARN) that you specify. The resource can be a user, server, or role.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :arn
    #   <p>Requests the tags associated with a particular Amazon Resource Name (ARN). An ARN is an identifier for a specific Amazon Web Services resource, such as a server, user, or role.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the number of tags to return as a response to the <code>ListTagsForResource</code> request.</p>
    # @option params [String] :next_token
    #   <p>When you request additional results from the <code>ListTagsForResource</code> operation, a <code>NextToken</code> parameter is returned in the input. You can then pass in a subsequent command to the <code>NextToken</code> parameter to continue listing additional tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     next_token: "NextToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists the users for a file transfer protocol-enabled server that you specify by passing the <code>ServerId</code> parameter.</p>
    # @param [Hash, Types::ListUsersRequest] params
    # @option params [Integer] :max_results
    #   <p>Specifies the number of users to return as a response to the <code>ListUsers</code> request.</p>
    # @option params [String] :next_token
    #   <p>If there are additional results from the <code>ListUsers</code> call, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> to a subsequent <code>ListUsers</code> command, to continue listing additional users.</p>
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server that has users assigned to it.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     server_id: "ServerId", # required
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     server_id: "ServerId", # required
    #     users: [ # required
    #       {
    #         arn: "Arn", # required
    #         home_directory: "HomeDirectory",
    #         home_directory_type: "PATH" # One of: ["PATH", "LOGICAL"],
    #         role: "Role",
    #         ssh_public_key_count: 1,
    #         user_name: "UserName"
    #       }
    #     ]
    #   }
    # @return [Types::ListUsersResponse]
    def list_users(params = {}, options = {})
      request = build_request(:list_users, params)
      request.send_request(options)
    end

    # <p>Lists all web apps associated with your Amazon Web Services account for your current region.</p>
    # @param [Hash, Types::ListWebAppsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    # @option params [String] :next_token
    #   <p>Returns the <code>NextToken</code> parameter in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional web apps.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_web_apps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     web_apps: [ # required
    #       {
    #         arn: "Arn", # required
    #         web_app_id: "WebAppId", # required
    #         access_endpoint: "WebAppAccessEndpoint",
    #         web_app_endpoint: "WebAppEndpoint"
    #       }
    #     ]
    #   }
    # @return [Types::ListWebAppsResponse]
    def list_web_apps(params = {}, options = {})
      request = build_request(:list_web_apps, params)
      request.send_request(options)
    end

    # <p>Lists all workflows associated with your Amazon Web Services account for your current region.</p>
    # @param [Hash, Types::ListWorkflowsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    # @option params [String] :next_token
    #   <p> <code>ListWorkflows</code> returns the <code>NextToken</code> parameter in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional workflows.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_workflows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     workflows: [ # required
    #       {
    #         workflow_id: "WorkflowId",
    #         description: "WorkflowDescription",
    #         arn: "Arn"
    #       }
    #     ]
    #   }
    # @return [Types::ListWorkflowsResponse]
    def list_workflows(params = {}, options = {})
      request = build_request(:list_workflows, params)
      request.send_request(options)
    end

    # <p>Sends a callback for asynchronous custom steps.</p> <p> The <code>ExecutionId</code>, <code>WorkflowId</code>, and <code>Token</code> are passed to the target resource during execution of a custom step of a workflow. You must include those with their callback as well as providing a status. </p>
    # @param [Hash, Types::SendWorkflowStepStateRequest] params
    # @option params [String] :workflow_id
    #   <p>A unique identifier for the workflow.</p>
    # @option params [String] :execution_id
    #   <p>A unique identifier for the execution of a workflow.</p>
    # @option params [String] :token
    #   <p>Used to distinguish between multiple callbacks for multiple Lambda steps within the same execution.</p>
    # @option params [String] :status
    #   <p>Indicates whether the specified step succeeded or failed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_id: "WorkflowId", # required
    #     execution_id: "ExecutionId", # required
    #     token: "CallbackToken", # required
    #     status: "SUCCESS" # One of: ["SUCCESS", "FAILURE"], # required
    #   }
    #   options = {}
    #   response = client.send_workflow_step_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendWorkflowStepStateResponse]
    def send_workflow_step_state(params = {}, options = {})
      request = build_request(:send_workflow_step_state, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of the contents of a directory from a remote SFTP server. You specify the connector ID, the output path, and the remote directory path. You can also specify the optional <code>MaxItems</code> value to control the maximum number of items that are listed from the remote directory. This API returns a list of all files and directories in the remote directory (up to the maximum value), but does not return files or folders in sub-directories. That is, it only returns a list of files and directories one-level deep.</p> <p>After you receive the listing file, you can provide the files that you want to transfer to the <code>RetrieveFilePaths</code> parameter of the <code>StartFileTransfer</code> API call.</p> <p>The naming convention for the output file is <code> <i>connector-ID</i>-<i>listing-ID</i>.json</code>. The output file contains the following information:</p> <ul> <li> <p> <code>filePath</code>: the complete path of a remote file, relative to the directory of the listing request for your SFTP connector on the remote server.</p> </li> <li> <p> <code>modifiedTimestamp</code>: the last time the file was modified, in UTC time format. This field is optional. If the remote file attributes don't contain a timestamp, it is omitted from the file listing.</p> </li> <li> <p> <code>size</code>: the size of the file, in bytes. This field is optional. If the remote file attributes don't contain a file size, it is omitted from the file listing.</p> </li> <li> <p> <code>path</code>: the complete path of a remote directory, relative to the directory of the listing request for your SFTP connector on the remote server.</p> </li> <li> <p> <code>truncated</code>: a flag indicating whether the list output contains all of the items contained in the remote directory or not. If your <code>Truncated</code> output value is true, you can increase the value provided in the optional <code>max-items</code> input attribute to be able to list more items (up to the maximum allowed list size of 10,000 items).</p> </li> </ul>
    # @param [Hash, Types::StartDirectoryListingRequest] params
    # @option params [String] :connector_id
    #   <p>The unique identifier for the connector.</p>
    # @option params [String] :remote_directory_path
    #   <p>Specifies the directory on the remote SFTP server for which you want to list its contents.</p>
    # @option params [Integer] :max_items
    #   <p>An optional parameter where you can specify the maximum number of file/directory names to retrieve. The default value is 1,000.</p>
    # @option params [String] :output_directory_path
    #   <p>Specifies the path (bucket and prefix) in Amazon S3 storage to store the results of the directory listing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_id: "ConnectorId", # required
    #     remote_directory_path: "FilePath", # required
    #     max_items: 1,
    #     output_directory_path: "FilePath", # required
    #   }
    #   options = {}
    #   response = client.start_directory_listing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     listing_id: "ListingId", # required
    #     output_file_name: "OutputFileName", # required
    #   }
    # @return [Types::StartDirectoryListingResponse]
    def start_directory_listing(params = {}, options = {})
      request = build_request(:start_directory_listing, params)
      request.send_request(options)
    end

    # <p>Begins a file transfer between local Amazon Web Services storage and a remote AS2 or SFTP server.</p> <ul> <li> <p>For an AS2 connector, you specify the <code>ConnectorId</code> and one or more <code>SendFilePaths</code> to identify the files you want to transfer.</p> </li> <li> <p>For an SFTP connector, the file transfer can be either outbound or inbound. In both cases, you specify the <code>ConnectorId</code>. Depending on the direction of the transfer, you also specify the following items:</p> <ul> <li> <p>If you are transferring file from a partner's SFTP server to Amazon Web Services storage, you specify one or more <code>RetrieveFilePaths</code> to identify the files you want to transfer, and a <code>LocalDirectoryPath</code> to specify the destination folder.</p> </li> <li> <p>If you are transferring file to a partner's SFTP server from Amazon Web Services storage, you specify one or more <code>SendFilePaths</code> to identify the files you want to transfer, and a <code>RemoteDirectoryPath</code> to specify the destination folder.</p> </li> </ul> </li> </ul>
    # @param [Hash, Types::StartFileTransferRequest] params
    # @option params [String] :connector_id
    #   <p>The unique identifier for the connector.</p>
    # @option params [Array<String>] :send_file_paths
    #   <p>One or more source paths for the Amazon S3 storage. Each string represents a source file path for one outbound file transfer. For example, <code> <i>amzn-s3-demo-bucket</i>/<i>myfile.txt</i> </code>.</p> <note> <p>Replace <code> <i>amzn-s3-demo-bucket</i> </code> with one of your actual buckets.</p> </note>
    # @option params [Array<String>] :retrieve_file_paths
    #   <p>One or more source paths for the partner's SFTP server. Each string represents a source file path for one inbound file transfer.</p>
    # @option params [String] :local_directory_path
    #   <p>For an inbound transfer, the <code>LocaDirectoryPath</code> specifies the destination for one or more files that are transferred from the partner's SFTP server.</p>
    # @option params [String] :remote_directory_path
    #   <p>For an outbound transfer, the <code>RemoteDirectoryPath</code> specifies the destination for one or more files that are transferred to the partner's SFTP server. If you don't specify a <code>RemoteDirectoryPath</code>, the destination for transferred files is the SFTP user's home directory.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_id: "ConnectorId", # required
    #     send_file_paths: ["FilePath"],
    #     retrieve_file_paths: ["FilePath"],
    #     local_directory_path: "FilePath",
    #     remote_directory_path: "FilePath"
    #   }
    #   options = {}
    #   response = client.start_file_transfer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transfer_id: "TransferId", # required
    #   }
    # @return [Types::StartFileTransferResponse]
    def start_file_transfer(params = {}, options = {})
      request = build_request(:start_file_transfer, params)
      request.send_request(options)
    end

    # <p>Deletes a file or directory on the remote SFTP server.</p>
    # @param [Hash, Types::StartRemoteDeleteRequest] params
    # @option params [String] :connector_id
    #   <p>The unique identifier for the connector.</p>
    # @option params [String] :delete_path
    #   <p>The absolute path of the file or directory to delete. You can only specify one path per call to this operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_id: "ConnectorId", # required
    #     delete_path: "FilePath", # required
    #   }
    #   options = {}
    #   response = client.start_remote_delete(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delete_id: "DeleteId", # required
    #   }
    # @return [Types::StartRemoteDeleteResponse]
    def start_remote_delete(params = {}, options = {})
      request = build_request(:start_remote_delete, params)
      request.send_request(options)
    end

    # <p>Moves or renames a file or directory on the remote SFTP server.</p>
    # @param [Hash, Types::StartRemoteMoveRequest] params
    # @option params [String] :connector_id
    #   <p>The unique identifier for the connector.</p>
    # @option params [String] :source_path
    #   <p>The absolute path of the file or directory to move or rename. You can only specify one path per call to this operation.</p>
    # @option params [String] :target_path
    #   <p>The absolute path for the target of the move/rename operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_id: "ConnectorId", # required
    #     source_path: "FilePath", # required
    #     target_path: "FilePath", # required
    #   }
    #   options = {}
    #   response = client.start_remote_move(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     move_id: "MoveId", # required
    #   }
    # @return [Types::StartRemoteMoveResponse]
    def start_remote_move(params = {}, options = {})
      request = build_request(:start_remote_move, params)
      request.send_request(options)
    end

    # <p>Changes the state of a file transfer protocol-enabled server from <code>OFFLINE</code> to <code>ONLINE</code>. It has no impact on a server that is already <code>ONLINE</code>. An <code>ONLINE</code> server can accept and process file transfer jobs.</p> <p>The state of <code>STARTING</code> indicates that the server is in an intermediate state, either not fully able to respond, or not fully online. The values of <code>START_FAILED</code> can indicate an error condition.</p> <p>No response is returned from this call.</p>
    # @param [Hash, Types::StartServerRequest] params
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server that you start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #   }
    #   options = {}
    #   response = client.start_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def start_server(params = {}, options = {})
      request = build_request(:start_server, params)
      request.send_request(options)
    end

    # <p>Changes the state of a file transfer protocol-enabled server from <code>ONLINE</code> to <code>OFFLINE</code>. An <code>OFFLINE</code> server cannot accept and process file transfer jobs. Information tied to your server, such as server and user properties, are not affected by stopping your server.</p> <note> <p>Stopping the server does not reduce or impact your file transfer protocol endpoint billing; you must delete the server to stop being billed.</p> </note> <p>The state of <code>STOPPING</code> indicates that the server is in an intermediate state, either not fully able to respond, or not fully offline. The values of <code>STOP_FAILED</code> can indicate an error condition.</p> <p>No response is returned from this call.</p>
    # @param [Hash, Types::StopServerRequest] params
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server that you stopped.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #   }
    #   options = {}
    #   response = client.stop_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_server(params = {}, options = {})
      request = build_request(:stop_server, params)
      request.send_request(options)
    end

    # <p>Attaches a key-value pair to a resource, as identified by its Amazon Resource Name (ARN). Resources are users, servers, roles, and other entities.</p> <p>There is no response returned from this call.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :arn
    #   <p>An Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a server, user, or role.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs assigned to ARNs that you can use to group and search for resources by type. You can attach this metadata to resources (servers, users, workflows, and so on) for any purpose.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Tests whether your SFTP connector is set up successfully. We highly recommend that you call this operation to test your ability to transfer files between local Amazon Web Services storage and a trading partner's SFTP server.</p>
    # @param [Hash, Types::TestConnectionRequest] params
    # @option params [String] :connector_id
    #   <p>The unique identifier for the connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_id: "ConnectorId", # required
    #   }
    #   options = {}
    #   response = client.test_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_id: "ConnectorId",
    #     status: "Status",
    #     status_message: "Message",
    #     sftp_connection_details: {
    #       host_key: "SftpConnectorHostKey"
    #     }
    #   }
    # @return [Types::TestConnectionResponse]
    def test_connection(params = {}, options = {})
      request = build_request(:test_connection, params)
      request.send_request(options)
    end

    # <p>If the <code>IdentityProviderType</code> of a file transfer protocol-enabled server is <code>AWS_DIRECTORY_SERVICE</code> or <code>API_Gateway</code>, tests whether your identity provider is set up successfully. We highly recommend that you call this operation to test your authentication method as soon as you create your server. By doing so, you can troubleshoot issues with the identity provider integration to ensure that your users can successfully use the service.</p> <p> The <code>ServerId</code> and <code>UserName</code> parameters are required. The <code>ServerProtocol</code>, <code>SourceIp</code>, and <code>UserPassword</code> are all optional. </p> <p>Note the following:</p> <ul> <li> <p> You cannot use <code>TestIdentityProvider</code> if the <code>IdentityProviderType</code> of your server is <code>SERVICE_MANAGED</code>.</p> </li> <li> <p> <code>TestIdentityProvider</code> does not work with keys: it only accepts passwords.</p> </li> <li> <p> <code>TestIdentityProvider</code> can test the password operation for a custom Identity Provider that handles keys and passwords.</p> </li> <li> <p> If you provide any incorrect values for any parameters, the <code>Response</code> field is empty. </p> </li> <li> <p> If you provide a server ID for a server that uses service-managed users, you get an error: </p> <p> <code> An error occurred (InvalidRequestException) when calling the TestIdentityProvider operation: s-<i>server-ID</i> not configured for external auth </code> </p> </li> <li> <p> If you enter a Server ID for the <code>--server-id</code> parameter that does not identify an actual Transfer server, you receive the following error: </p> <p> <code>An error occurred (ResourceNotFoundException) when calling the TestIdentityProvider operation: Unknown server</code>. </p> <p>It is possible your sever is in a different region. You can specify a region by adding the following: <code>--region region-code</code>, such as <code>--region us-east-2</code> to specify a server in <b>US East (Ohio)</b>.</p> </li> </ul>
    # @param [Hash, Types::TestIdentityProviderRequest] params
    # @option params [String] :server_id
    #   <p>A system-assigned identifier for a specific server. That server's user authentication method is tested with a user name and password.</p>
    # @option params [String] :server_protocol
    #   <p>The type of file transfer protocol to be tested.</p> <p>The available protocols are:</p> <ul> <li> <p>Secure Shell (SSH) File Transfer Protocol (SFTP)</p> </li> <li> <p>File Transfer Protocol Secure (FTPS)</p> </li> <li> <p>File Transfer Protocol (FTP)</p> </li> <li> <p>Applicability Statement 2 (AS2)</p> </li> </ul>
    # @option params [String] :source_ip
    #   <p>The source IP address of the account to be tested.</p>
    # @option params [String] :user_name
    #   <p>The name of the account to be tested.</p>
    # @option params [String] :user_password
    #   <p>The password of the account to be tested.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #     server_protocol: "SFTP" # One of: ["SFTP", "FTP", "FTPS", "AS2"],
    #     source_ip: "SourceIp",
    #     user_name: "UserName", # required
    #     user_password: "UserPassword"
    #   }
    #   options = {}
    #   response = client.test_identity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     response: "Response",
    #     status_code: 1, # required
    #     message: "Message",
    #     url: "Url", # required
    #   }
    # @return [Types::TestIdentityProviderResponse]
    def test_identity_provider(params = {}, options = {})
      request = build_request(:test_identity_provider, params)
      request.send_request(options)
    end

    # <p>Detaches a key-value pair from a resource, as identified by its Amazon Resource Name (ARN). Resources are users, servers, roles, and other entities.</p> <p>No response is returned from this call.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :arn
    #   <p>The value of the resource that will have the tag removed. An Amazon Resource Name (ARN) is an identifier for a specific Amazon Web Services resource, such as a server, user, or role.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>TagKeys are key-value pairs assigned to ARNs that can be used to group and search for resources by type. This metadata can be attached to resources for any purpose.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Allows you to update parameters for the access specified in the <code>ServerID</code> and <code>ExternalID</code> parameters.</p>
    # @param [Hash, Types::UpdateAccessRequest] params
    # @option params [String] :home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p> <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p> <note> <p>You can use the <code>HomeDirectory</code> parameter for <code>HomeDirectoryType</code> when it is set to either <code>PATH</code> or <code>LOGICAL</code>.</p> </note>
    # @option params [String] :home_directory_type
    #   <p>The type of landing directory (folder) that you want your users' home directory to be when they log in to the server. If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or Amazon EFS path as is in their file transfer protocol clients. If you set it to <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 or Amazon EFS paths visible to your users.</p> <note> <p>If <code>HomeDirectoryType</code> is <code>LOGICAL</code>, you must provide mappings, using the <code>HomeDirectoryMappings</code> parameter. If, on the other hand, <code>HomeDirectoryType</code> is <code>PATH</code>, you provide an absolute path using the <code>HomeDirectory</code> parameter. You cannot have both <code>HomeDirectory</code> and <code>HomeDirectoryMappings</code> in your template.</p> </note>
    # @option params [Array<Types::HomeDirectoryMapEntry>] :home_directory_mappings
    #   <p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should be visible to your user and how you want to make them visible. You must specify the <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you only specify a target, it is displayed as is. You also must ensure that your Identity and Access Management (IAM) role provides access to paths in <code>Target</code>. This value can be set only when <code>HomeDirectoryType</code> is set to <i>LOGICAL</i>.</p> <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p> <p> <code>[ { "Entry": "/directory1", "Target": "/bucket_name/home/mydirectory" } ]</code> </p> <p>In most cases, you can use this value instead of the session policy to lock down your user to the designated home directory ("<code>chroot</code>"). To do this, you can set <code>Entry</code> to <code>/</code> and set <code>Target</code> to the <code>HomeDirectory</code> parameter value.</p> <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p> <p> <code>[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]</code> </p>
    # @option params [String] :policy
    #   <p>A session policy for your user so that you can use the same Identity and Access Management (IAM) role across multiple users. This policy scopes down a user's access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>, <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p> <note> <p>This policy applies only when the domain of <code>ServerId</code> is Amazon S3. Amazon EFS does not use session policies.</p> <p>For session policies, Transfer Family stores the policy as a JSON blob, instead of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass it in the <code>Policy</code> argument.</p> <p>For an example of a session policy, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html">Example session policy</a>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html">AssumeRole</a> in the <i>Amazon Web ServicesSecurity Token Service API Reference</i>.</p> </note>
    # @option params [Types::PosixProfile] :posix_profile
    #   <p>The full POSIX identity, including user ID (<code>Uid</code>), group ID (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls your users' access to your Amazon EFS file systems. The POSIX permissions that are set on files and directories in your file system determine the level of access your users get when transferring files into and out of your Amazon EFS file systems.</p>
    # @option params [String] :role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that controls your users' access to your Amazon S3 bucket or Amazon EFS file system. The policies attached to this role determine the level of access that you want to provide your users when transferring files into and out of your Amazon S3 bucket or Amazon EFS file system. The IAM role should also contain a trust relationship that allows the server to access your resources when servicing your users' transfer requests.</p>
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server instance. This is the specific server that you added your user to.</p>
    # @option params [String] :external_id
    #   <p>A unique identifier that is required to identify specific groups within your directory. The users of the group that you associate have access to your Amazon S3 or Amazon EFS resources over the enabled protocols using Transfer Family. If you know the group name, you can view the SID values by running the following command using Windows PowerShell.</p> <p> <code>Get-ADGroup -Filter {samAccountName -like "<i>YourGroupName</i>*"} -Properties * | Select SamAccountName,ObjectSid</code> </p> <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p> <p>The regular expression used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     home_directory: "HomeDirectory",
    #     home_directory_type: "PATH" # One of: ["PATH", "LOGICAL"],
    #     home_directory_mappings: [
    #       {
    #         entry: "MapEntry", # required
    #         target: "MapTarget", # required
    #         type: "FILE" # One of: ["FILE", "DIRECTORY"]
    #       }
    #     ],
    #     policy: "Policy",
    #     posix_profile: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [1]
    #     },
    #     role: "Role",
    #     server_id: "ServerId", # required
    #     external_id: "ExternalId", # required
    #   }
    #   options = {}
    #   response = client.update_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_id: "ServerId", # required
    #     external_id: "ExternalId", # required
    #   }
    # @return [Types::UpdateAccessResponse]
    def update_access(params = {}, options = {})
      request = build_request(:update_access, params)
      request.send_request(options)
    end

    # <p>Updates some of the parameters for an existing agreement. Provide the <code>AgreementId</code> and the <code>ServerId</code> for the agreement that you want to update, along with the new values for the parameters to update.</p> <note> <p>Specify <i>either</i> <code>BaseDirectory</code> or <code>CustomDirectories</code>, but not both. Specifying both causes the command to fail.</p> <p>If you update an agreement from using base directory to custom directories, the base directory is no longer used. Similarly, if you change from custom directories to a base directory, the custom directories are no longer used.</p> </note>
    # @param [Hash, Types::UpdateAgreementRequest] params
    # @option params [String] :agreement_id
    #   <p>A unique identifier for the agreement. This identifier is returned when you create an agreement.</p>
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server instance. This is the specific server that the agreement uses.</p>
    # @option params [String] :description
    #   <p>To replace the existing description, provide a short description for the agreement. </p>
    # @option params [String] :status
    #   <p>You can update the status for the agreement, either activating an inactive agreement or the reverse.</p>
    # @option params [String] :local_profile_id
    #   <p>A unique identifier for the AS2 local profile.</p> <p>To change the local profile identifier, provide a new value here.</p>
    # @option params [String] :partner_profile_id
    #   <p>A unique identifier for the partner profile. To change the partner profile identifier, provide a new value here.</p>
    # @option params [String] :base_directory
    #   <p>To change the landing directory (folder) for files that are transferred, provide the bucket folder that you want to use; for example, <code>/<i>amzn-s3-demo-bucket</i>/<i>home</i>/<i>mydirectory</i> </code>.</p>
    # @option params [String] :access_role
    #   <p>Connectors are used to send files using either the AS2 or SFTP protocol. For the access role, provide the Amazon Resource Name (ARN) of the Identity and Access Management role to use.</p> <p> <b>For AS2 connectors</b> </p> <p>With AS2, you can send files by calling <code>StartFileTransfer</code> and specifying the file paths in the request parameter, <code>SendFilePaths</code>. We use the file’s parent directory (for example, for <code>--send-file-paths /bucket/dir/file.txt</code>, parent directory is <code>/bucket/dir/</code>) to temporarily store a processed AS2 message file, store the MDN when we receive them from the partner, and write a final JSON file containing relevant metadata of the transmission. So, the <code>AccessRole</code> needs to provide read and write access to the parent directory of the file location used in the <code>StartFileTransfer</code> request. Additionally, you need to provide read and write access to the parent directory of the files that you intend to send with <code>StartFileTransfer</code>.</p> <p>If you are using Basic authentication for your AS2 connector, the access role requires the <code>secretsmanager:GetSecretValue</code> permission for the secret. If the secret is encrypted using a customer-managed key instead of the Amazon Web Services managed key in Secrets Manager, then the role also needs the <code>kms:Decrypt</code> permission for that key.</p> <p> <b>For SFTP connectors</b> </p> <p>Make sure that the access role provides read and write access to the parent directory of the file location that's used in the <code>StartFileTransfer</code> request. Additionally, make sure that the role provides <code>secretsmanager:GetSecretValue</code> permission to Secrets Manager.</p>
    # @option params [String] :preserve_filename
    #   <p> Determines whether or not Transfer Family appends a unique string of characters to the end of the AS2 message payload filename when saving it. </p> <ul> <li> <p> <code>ENABLED</code>: the filename provided by your trading parter is preserved when the file is saved.</p> </li> <li> <p> <code>DISABLED</code> (default value): when Transfer Family saves the file, the filename is adjusted, as described in <a href="https://docs.aws.amazon.com/transfer/latest/userguide/send-as2-messages.html#file-names-as2">File names and locations</a>.</p> </li> </ul>
    # @option params [String] :enforce_message_signing
    #   <p> Determines whether or not unsigned messages from your trading partners will be accepted. </p> <ul> <li> <p> <code>ENABLED</code>: Transfer Family rejects unsigned messages from your trading partner.</p> </li> <li> <p> <code>DISABLED</code> (default value): Transfer Family accepts unsigned messages from your trading partner.</p> </li> </ul>
    # @option params [Types::CustomDirectoriesType] :custom_directories
    #   <p>A <code>CustomDirectoriesType</code> structure. This structure specifies custom directories for storing various AS2 message files. You can specify directories for the following types of files.</p> <ul> <li> <p>Failed files</p> </li> <li> <p>MDN files</p> </li> <li> <p>Payload files</p> </li> <li> <p>Status files</p> </li> <li> <p>Temporary files</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     agreement_id: "AgreementId", # required
    #     server_id: "ServerId", # required
    #     description: "Description",
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     local_profile_id: "ProfileId",
    #     partner_profile_id: "ProfileId",
    #     base_directory: "HomeDirectory",
    #     access_role: "Role",
    #     preserve_filename: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     enforce_message_signing: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     custom_directories: {
    #       failed_files_directory: "HomeDirectory", # required
    #       mdn_files_directory: "HomeDirectory", # required
    #       payload_files_directory: "HomeDirectory", # required
    #       status_files_directory: "HomeDirectory", # required
    #       temporary_files_directory: "HomeDirectory", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_agreement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agreement_id: "AgreementId", # required
    #   }
    # @return [Types::UpdateAgreementResponse]
    def update_agreement(params = {}, options = {})
      request = build_request(:update_agreement, params)
      request.send_request(options)
    end

    # <p>Updates the active and inactive dates for a certificate.</p>
    # @param [Hash, Types::UpdateCertificateRequest] params
    # @option params [String] :certificate_id
    #   <p>The identifier of the certificate object that you are updating.</p>
    # @option params [Time] :active_date
    #   <p>An optional date that specifies when the certificate becomes active. If you do not specify a value, <code>ActiveDate</code> takes the same value as <code>NotBeforeDate</code>, which is specified by the CA. </p>
    # @option params [Time] :inactive_date
    #   <p>An optional date that specifies when the certificate becomes inactive. If you do not specify a value, <code>InactiveDate</code> takes the same value as <code>NotAfterDate</code>, which is specified by the CA.</p>
    # @option params [String] :description
    #   <p>A short description to help identify the certificate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_id: "CertificateId", # required
    #     active_date: Time.now,
    #     inactive_date: Time.now,
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_id: "CertificateId", # required
    #   }
    # @return [Types::UpdateCertificateResponse]
    def update_certificate(params = {}, options = {})
      request = build_request(:update_certificate, params)
      request.send_request(options)
    end

    # <p>Updates some of the parameters for an existing connector. Provide the <code>ConnectorId</code> for the connector that you want to update, along with the new values for the parameters to update.</p>
    # @param [Hash, Types::UpdateConnectorRequest] params
    # @option params [String] :connector_id
    #   <p>The unique identifier for the connector.</p>
    # @option params [String] :url
    #   <p>The URL of the partner's AS2 or SFTP endpoint.</p>
    # @option params [Types::As2ConnectorConfig] :as2_config
    #   <p>A structure that contains the parameters for an AS2 connector object.</p>
    # @option params [String] :access_role
    #   <p>Connectors are used to send files using either the AS2 or SFTP protocol. For the access role, provide the Amazon Resource Name (ARN) of the Identity and Access Management role to use.</p> <p> <b>For AS2 connectors</b> </p> <p>With AS2, you can send files by calling <code>StartFileTransfer</code> and specifying the file paths in the request parameter, <code>SendFilePaths</code>. We use the file’s parent directory (for example, for <code>--send-file-paths /bucket/dir/file.txt</code>, parent directory is <code>/bucket/dir/</code>) to temporarily store a processed AS2 message file, store the MDN when we receive them from the partner, and write a final JSON file containing relevant metadata of the transmission. So, the <code>AccessRole</code> needs to provide read and write access to the parent directory of the file location used in the <code>StartFileTransfer</code> request. Additionally, you need to provide read and write access to the parent directory of the files that you intend to send with <code>StartFileTransfer</code>.</p> <p>If you are using Basic authentication for your AS2 connector, the access role requires the <code>secretsmanager:GetSecretValue</code> permission for the secret. If the secret is encrypted using a customer-managed key instead of the Amazon Web Services managed key in Secrets Manager, then the role also needs the <code>kms:Decrypt</code> permission for that key.</p> <p> <b>For SFTP connectors</b> </p> <p>Make sure that the access role provides read and write access to the parent directory of the file location that's used in the <code>StartFileTransfer</code> request. Additionally, make sure that the role provides <code>secretsmanager:GetSecretValue</code> permission to Secrets Manager.</p>
    # @option params [String] :logging_role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that allows a connector to turn on CloudWatch logging for Amazon S3 events. When set, you can view connector activity in your CloudWatch logs.</p>
    # @option params [Types::SftpConnectorConfig] :sftp_config
    #   <p>A structure that contains the parameters for an SFTP connector object.</p>
    # @option params [String] :security_policy_name
    #   <p>Specifies the name of the security policy for the connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_id: "ConnectorId", # required
    #     url: "Url",
    #     as2_config: {
    #       local_profile_id: "ProfileId",
    #       partner_profile_id: "ProfileId",
    #       message_subject: "MessageSubject",
    #       compression: "ZLIB" # One of: ["ZLIB", "DISABLED"],
    #       encryption_algorithm: "AES128_CBC" # One of: ["AES128_CBC", "AES192_CBC", "AES256_CBC", "DES_EDE3_CBC", "NONE"],
    #       signing_algorithm: "SHA256" # One of: ["SHA256", "SHA384", "SHA512", "SHA1", "NONE"],
    #       mdn_signing_algorithm: "SHA256" # One of: ["SHA256", "SHA384", "SHA512", "SHA1", "NONE", "DEFAULT"],
    #       mdn_response: "SYNC" # One of: ["SYNC", "NONE"],
    #       basic_auth_secret_id: "As2ConnectorSecretId",
    #       preserve_content_type: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     access_role: "Role",
    #     logging_role: "Role",
    #     sftp_config: {
    #       user_secret_id: "SecretId",
    #       trusted_host_keys: ["SftpConnectorTrustedHostKey"],
    #       max_concurrent_connections: 1
    #     },
    #     security_policy_name: "ConnectorSecurityPolicyName"
    #   }
    #   options = {}
    #   response = client.update_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_id: "ConnectorId", # required
    #   }
    # @return [Types::UpdateConnectorResponse]
    def update_connector(params = {}, options = {})
      request = build_request(:update_connector, params)
      request.send_request(options)
    end

    # <p>Updates the description for the host key that's specified by the <code>ServerId</code> and <code>HostKeyId</code> parameters.</p>
    # @param [Hash, Types::UpdateHostKeyRequest] params
    # @option params [String] :server_id
    #   <p>The identifier of the server that contains the host key that you are updating.</p>
    # @option params [String] :host_key_id
    #   <p>The identifier of the host key that you are updating.</p>
    # @option params [String] :description
    #   <p>An updated description for the host key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #     host_key_id: "HostKeyId", # required
    #     description: "HostKeyDescription", # required
    #   }
    #   options = {}
    #   response = client.update_host_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_id: "ServerId", # required
    #     host_key_id: "HostKeyId", # required
    #   }
    # @return [Types::UpdateHostKeyResponse]
    def update_host_key(params = {}, options = {})
      request = build_request(:update_host_key, params)
      request.send_request(options)
    end

    # <p>Updates some of the parameters for an existing profile. Provide the <code>ProfileId</code> for the profile that you want to update, along with the new values for the parameters to update.</p>
    # @param [Hash, Types::UpdateProfileRequest] params
    # @option params [String] :profile_id
    #   <p>The identifier of the profile object that you are updating.</p>
    # @option params [Array<String>] :certificate_ids
    #   <p>An array of identifiers for the imported certificates. You use this identifier for working with profiles and partner profiles.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ProfileId", # required
    #     certificate_ids: ["CertificateId"]
    #   }
    #   options = {}
    #   response = client.update_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "ProfileId", # required
    #   }
    # @return [Types::UpdateProfileResponse]
    def update_profile(params = {}, options = {})
      request = build_request(:update_profile, params)
      request.send_request(options)
    end

    # <p>Updates the file transfer protocol-enabled server's properties after that server has been created.</p> <p>The <code>UpdateServer</code> call returns the <code>ServerId</code> of the server you updated.</p>
    # @param [Hash, Types::UpdateServerRequest] params
    # @option params [String] :certificate
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web ServicesCertificate Manager (ACM) certificate. Required when <code>Protocols</code> is set to <code>FTPS</code>.</p> <p>To request a new public certificate, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html">Request a public certificate</a> in the <i> Amazon Web ServicesCertificate Manager User Guide</i>.</p> <p>To import an existing certificate into ACM, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing certificates into ACM</a> in the <i> Amazon Web ServicesCertificate Manager User Guide</i>.</p> <p>To request a private certificate to use FTPS through private IP addresses, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html">Request a private certificate</a> in the <i> Amazon Web ServicesCertificate Manager User Guide</i>.</p> <p>Certificates with the following cryptographic algorithms and key sizes are supported:</p> <ul> <li> <p>2048-bit RSA (RSA_2048)</p> </li> <li> <p>4096-bit RSA (RSA_4096)</p> </li> <li> <p>Elliptic Prime Curve 256 bit (EC_prime256v1)</p> </li> <li> <p>Elliptic Prime Curve 384 bit (EC_secp384r1)</p> </li> <li> <p>Elliptic Prime Curve 521 bit (EC_secp521r1)</p> </li> </ul> <note> <p>The certificate must be a valid SSL/TLS X.509 version 3 certificate with FQDN or IP address specified and information about the issuer.</p> </note>
    # @option params [Types::ProtocolDetails] :protocol_details
    #   <p>The protocol settings that are configured for your server.</p> <ul> <li> <p> To indicate passive mode (for FTP and FTPS protocols), use the <code>PassiveIp</code> parameter. Enter a single dotted-quad IPv4 address, such as the external IP address of a firewall, router, or load balancer. </p> </li> <li> <p>To ignore the error that is generated when the client attempts to use the <code>SETSTAT</code> command on a file that you are uploading to an Amazon S3 bucket, use the <code>SetStatOption</code> parameter. To have the Transfer Family server ignore the <code>SETSTAT</code> command and upload files without needing to make any changes to your SFTP client, set the value to <code>ENABLE_NO_OP</code>. If you set the <code>SetStatOption</code> parameter to <code>ENABLE_NO_OP</code>, Transfer Family generates a log entry to Amazon CloudWatch Logs, so that you can determine when the client is making a <code>SETSTAT</code> call.</p> </li> <li> <p>To determine whether your Transfer Family server resumes recent, negotiated sessions through a unique session ID, use the <code>TlsSessionResumptionMode</code> parameter.</p> </li> <li> <p> <code>As2Transports</code> indicates the transport method for the AS2 messages. Currently, only HTTP is supported.</p> </li> </ul>
    # @option params [Types::EndpointDetails] :endpoint_details
    #   <p>The virtual private cloud (VPC) endpoint settings that are configured for your server. When you host your endpoint within your VPC, you can make your endpoint accessible only to resources within your VPC, or you can attach Elastic IP addresses and make your endpoint accessible to clients over the internet. Your VPC's default security groups are automatically assigned to your endpoint.</p>
    # @option params [String] :endpoint_type
    #   <p>The type of endpoint that you want your server to use. You can choose to make your server's endpoint publicly accessible (PUBLIC) or host it inside your VPC. With an endpoint that is hosted in a VPC, you can restrict access to your server and resources only within your VPC or choose to make it internet facing by attaching Elastic IP addresses directly to it.</p> <note> <p> After May 19, 2021, you won't be able to create a server using <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Services account if your account hasn't already done so before May 19, 2021. If you have already created servers with <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Services account on or before May 19, 2021, you will not be affected. After this date, use <code>EndpointType</code>=<code>VPC</code>.</p> <p>For more information, see https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.</p> <p>It is recommended that you use <code>VPC</code> as the <code>EndpointType</code>. With this endpoint type, you have the option to directly associate up to three Elastic IPv4 addresses (BYO IP included) with your server's endpoint and use VPC security groups to restrict traffic by the client's public IP address. This is not possible with <code>EndpointType</code> set to <code>VPC_ENDPOINT</code>.</p> </note>
    # @option params [String] :host_key
    #   <p>The RSA, ECDSA, or ED25519 private key to use for your SFTP-enabled server. You can add multiple host keys, in case you want to rotate keys, or have a set of active keys that use different algorithms.</p> <p>Use the following command to generate an RSA 2048 bit key with no passphrase:</p> <p> <code>ssh-keygen -t rsa -b 2048 -N "" -m PEM -f my-new-server-key</code>.</p> <p>Use a minimum value of 2048 for the <code>-b</code> option. You can create a stronger key by using 3072 or 4096.</p> <p>Use the following command to generate an ECDSA 256 bit key with no passphrase:</p> <p> <code>ssh-keygen -t ecdsa -b 256 -N "" -m PEM -f my-new-server-key</code>.</p> <p>Valid values for the <code>-b</code> option for ECDSA are 256, 384, and 521.</p> <p>Use the following command to generate an ED25519 key with no passphrase:</p> <p> <code>ssh-keygen -t ed25519 -N "" -f my-new-server-key</code>.</p> <p>For all of these commands, you can replace <i>my-new-server-key</i> with a string of your choice.</p> <important> <p>If you aren't planning to migrate existing users from an existing SFTP-enabled server to a new server, don't update the host key. Accidentally changing a server's host key can be disruptive.</p> </important> <p>For more information, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key">Manage host keys for your SFTP-enabled server</a> in the <i>Transfer Family User Guide</i>.</p>
    # @option params [Types::IdentityProviderDetails] :identity_provider_details
    #   <p>An array containing all of the information required to call a customer's authentication API method.</p>
    # @option params [String] :logging_role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that allows a server to turn on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, you can view user activity in your CloudWatch logs.</p>
    # @option params [String] :post_authentication_login_banner
    #   <p>Specifies a string to display when users connect to a server. This string is displayed after the user authenticates.</p> <note> <p>The SFTP protocol does not support post-authentication display banners.</p> </note>
    # @option params [String] :pre_authentication_login_banner
    #   <p>Specifies a string to display when users connect to a server. This string is displayed before the user authenticates. For example, the following banner displays details about using the system:</p> <p> <code>This system is for the use of authorized users only. Individuals using this computer system without authority, or in excess of their authority, are subject to having all of their activities on this system monitored and recorded by system personnel.</code> </p>
    # @option params [Array<String>] :protocols
    #   <p>Specifies the file transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint. The available protocols are:</p> <ul> <li> <p> <code>SFTP</code> (Secure Shell (SSH) File Transfer Protocol): File transfer over SSH</p> </li> <li> <p> <code>FTPS</code> (File Transfer Protocol Secure): File transfer with TLS encryption</p> </li> <li> <p> <code>FTP</code> (File Transfer Protocol): Unencrypted file transfer</p> </li> <li> <p> <code>AS2</code> (Applicability Statement 2): used for transporting structured business-to-business data</p> </li> </ul> <note> <ul> <li> <p>If you select <code>FTPS</code>, you must choose a certificate stored in Certificate Manager (ACM) which is used to identify your server when clients connect to it over FTPS.</p> </li> <li> <p>If <code>Protocol</code> includes either <code>FTP</code> or <code>FTPS</code>, then the <code>EndpointType</code> must be <code>VPC</code> and the <code>IdentityProviderType</code> must be either <code>AWS_DIRECTORY_SERVICE</code>, <code>AWS_LAMBDA</code>, or <code>API_GATEWAY</code>.</p> </li> <li> <p>If <code>Protocol</code> includes <code>FTP</code>, then <code>AddressAllocationIds</code> cannot be associated.</p> </li> <li> <p>If <code>Protocol</code> is set only to <code>SFTP</code>, the <code>EndpointType</code> can be set to <code>PUBLIC</code> and the <code>IdentityProviderType</code> can be set any of the supported identity types: <code>SERVICE_MANAGED</code>, <code>AWS_DIRECTORY_SERVICE</code>, <code>AWS_LAMBDA</code>, or <code>API_GATEWAY</code>.</p> </li> <li> <p>If <code>Protocol</code> includes <code>AS2</code>, then the <code>EndpointType</code> must be <code>VPC</code>, and domain must be Amazon S3.</p> </li> </ul> </note>
    # @option params [String] :security_policy_name
    #   <p>Specifies the name of the security policy for the server.</p>
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a server instance that the Transfer Family user is assigned to.</p>
    # @option params [Types::WorkflowDetails] :workflow_details
    #   <p>Specifies the workflow ID for the workflow to assign and the execution role that's used for executing the workflow.</p> <p>In addition to a workflow to execute when a file is uploaded completely, <code>WorkflowDetails</code> can also contain a workflow ID (and execution role) for a workflow to execute on partial upload. A partial upload occurs when the server session disconnects while the file is still being uploaded.</p> <p>To remove an associated workflow from a server, you can provide an empty <code>OnUpload</code> object, as in the following example.</p> <p> <code>aws transfer update-server --server-id s-01234567890abcdef --workflow-details '{"OnUpload":[]}'</code> </p>
    # @option params [Array<String>] :structured_log_destinations
    #   <p>Specifies the log groups to which your server logs are sent.</p> <p>To specify a log group, you must provide the ARN for an existing log group. In this case, the format of the log group is as follows:</p> <p> <code>arn:aws:logs:region-name:amazon-account-id:log-group:log-group-name:*</code> </p> <p>For example, <code>arn:aws:logs:us-east-1:111122223333:log-group:mytestgroup:*</code> </p> <p>If you have previously specified a log group for a server, you can clear it, and in effect turn off structured logging, by providing an empty value for this parameter in an <code>update-server</code> call. For example:</p> <p> <code>update-server --server-id s-1234567890abcdef0 --structured-log-destinations</code> </p>
    # @option params [Types::S3StorageOptions] :s3_storage_options
    #   <p>Specifies whether or not performance for your Amazon S3 directories is optimized. This is disabled by default.</p> <p>By default, home directory mappings have a <code>TYPE</code> of <code>DIRECTORY</code>. If you enable this option, you would then need to explicitly set the <code>HomeDirectoryMapEntry</code> <code>Type</code> to <code>FILE</code> if you want a mapping to have a file target.</p>
    # @option params [String] :ip_address_type
    #   <p>Specifies whether to use IPv4 only, or to use dual-stack (IPv4 and IPv6) for your Transfer Family endpoint. The default value is <code>IPV4</code>.</p> <important> <p>The <code>IpAddressType</code> parameter has the following limitations:</p> <ul> <li> <p>It cannot be changed while the server is online. You must stop the server before modifying this parameter.</p> </li> <li> <p>It cannot be updated to <code>DUALSTACK</code> if the server has <code>AddressAllocationIds</code> specified.</p> </li> </ul> </important> <note> <p>When using <code>DUALSTACK</code> as the <code>IpAddressType</code>, you cannot set the <code>AddressAllocationIds</code> parameter for the <a href="https://docs.aws.amazon.com/transfer/latest/APIReference/API_EndpointDetails.html">EndpointDetails</a> for the server.</p> </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate: "Certificate",
    #     protocol_details: {
    #       passive_ip: "PassiveIp",
    #       tls_session_resumption_mode: "DISABLED" # One of: ["DISABLED", "ENABLED", "ENFORCED"],
    #       set_stat_option: "DEFAULT" # One of: ["DEFAULT", "ENABLE_NO_OP"],
    #       as2_transports: ["HTTP" # One of: ["HTTP"]]
    #     },
    #     endpoint_details: {
    #       address_allocation_ids: ["AddressAllocationId"],
    #       subnet_ids: ["SubnetId"],
    #       vpc_endpoint_id: "VpcEndpointId",
    #       vpc_id: "VpcId",
    #       security_group_ids: ["SecurityGroupId"]
    #     },
    #     endpoint_type: "PUBLIC" # One of: ["PUBLIC", "VPC", "VPC_ENDPOINT"],
    #     host_key: "HostKey",
    #     identity_provider_details: {
    #       url: "Url",
    #       invocation_role: "Role",
    #       directory_id: "DirectoryId",
    #       function: "Function",
    #       sftp_authentication_methods: "PASSWORD" # One of: ["PASSWORD", "PUBLIC_KEY", "PUBLIC_KEY_OR_PASSWORD", "PUBLIC_KEY_AND_PASSWORD"]
    #     },
    #     logging_role: "NullableRole",
    #     post_authentication_login_banner: "PostAuthenticationLoginBanner",
    #     pre_authentication_login_banner: "PreAuthenticationLoginBanner",
    #     protocols: ["SFTP" # One of: ["SFTP", "FTP", "FTPS", "AS2"]],
    #     security_policy_name: "SecurityPolicyName",
    #     server_id: "ServerId", # required
    #     workflow_details: {
    #       on_upload: [
    #         {
    #           workflow_id: "WorkflowId", # required
    #           execution_role: "Role", # required
    #         }
    #       ],
    #       on_partial_upload: [
    #         {
    #           workflow_id: "WorkflowId", # required
    #           execution_role: "Role", # required
    #         }
    #       ]
    #     },
    #     structured_log_destinations: ["Arn"],
    #     s3_storage_options: {
    #       directory_listing_optimization: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     ip_address_type: "IPV4" # One of: ["IPV4", "DUALSTACK"]
    #   }
    #   options = {}
    #   response = client.update_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_id: "ServerId", # required
    #   }
    # @return [Types::UpdateServerResponse]
    def update_server(params = {}, options = {})
      request = build_request(:update_server, params)
      request.send_request(options)
    end

    # <p>Assigns new properties to a user. Parameters you pass modify any or all of the following: the home directory, role, and policy for the <code>UserName</code> and <code>ServerId</code> you specify.</p> <p>The response returns the <code>ServerId</code> and the <code>UserName</code> for the updated user.</p> <p>In the console, you can select <i>Restricted</i> when you create or update a user. This ensures that the user can't access anything outside of their home directory. The programmatic way to configure this behavior is to update the user. Set their <code>HomeDirectoryType</code> to <code>LOGICAL</code>, and specify <code>HomeDirectoryMappings</code> with <code>Entry</code> as root (<code>/</code>) and <code>Target</code> as their home directory.</p> <p>For example, if the user's home directory is <code>/test/admin-user</code>, the following command updates the user so that their configuration in the console shows the <i>Restricted</i> flag as selected.</p> <p> <code> aws transfer update-user --server-id &lt;server-id&gt; --user-name admin-user --home-directory-type LOGICAL --home-directory-mappings "[{\"Entry\":\"/\", \"Target\":\"/test/admin-user\"}]"</code> </p>
    # @param [Hash, Types::UpdateUserRequest] params
    # @option params [String] :home_directory
    #   <p>The landing directory (folder) for a user when they log in to the server using the client.</p> <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p> <note> <p>You can use the <code>HomeDirectory</code> parameter for <code>HomeDirectoryType</code> when it is set to either <code>PATH</code> or <code>LOGICAL</code>.</p> </note>
    # @option params [String] :home_directory_type
    #   <p>The type of landing directory (folder) that you want your users' home directory to be when they log in to the server. If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or Amazon EFS path as is in their file transfer protocol clients. If you set it to <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 or Amazon EFS paths visible to your users.</p> <note> <p>If <code>HomeDirectoryType</code> is <code>LOGICAL</code>, you must provide mappings, using the <code>HomeDirectoryMappings</code> parameter. If, on the other hand, <code>HomeDirectoryType</code> is <code>PATH</code>, you provide an absolute path using the <code>HomeDirectory</code> parameter. You cannot have both <code>HomeDirectory</code> and <code>HomeDirectoryMappings</code> in your template.</p> </note>
    # @option params [Array<Types::HomeDirectoryMapEntry>] :home_directory_mappings
    #   <p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should be visible to your user and how you want to make them visible. You must specify the <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you only specify a target, it is displayed as is. You also must ensure that your Identity and Access Management (IAM) role provides access to paths in <code>Target</code>. This value can be set only when <code>HomeDirectoryType</code> is set to <i>LOGICAL</i>.</p> <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p> <p> <code>[ { "Entry": "/directory1", "Target": "/bucket_name/home/mydirectory" } ]</code> </p> <p>In most cases, you can use this value instead of the session policy to lock down your user to the designated home directory ("<code>chroot</code>"). To do this, you can set <code>Entry</code> to '/' and set <code>Target</code> to the HomeDirectory parameter value.</p> <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p> <p> <code>[ { "Entry": "/", "Target": "/bucket_name/home/mydirectory" } ]</code> </p>
    # @option params [String] :policy
    #   <p>A session policy for your user so that you can use the same Identity and Access Management (IAM) role across multiple users. This policy scopes down a user's access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>, <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p> <note> <p>This policy applies only when the domain of <code>ServerId</code> is Amazon S3. Amazon EFS does not use session policies.</p> <p>For session policies, Transfer Family stores the policy as a JSON blob, instead of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass it in the <code>Policy</code> argument.</p> <p>For an example of a session policy, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/session-policy">Creating a session policy</a>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html">AssumeRole</a> in the <i>Amazon Web Services Security Token Service API Reference</i>.</p> </note>
    # @option params [Types::PosixProfile] :posix_profile
    #   <p>Specifies the full POSIX identity, including user ID (<code>Uid</code>), group ID (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls your users' access to your Amazon Elastic File Systems (Amazon EFS). The POSIX permissions that are set on files and directories in your file system determines the level of access your users get when transferring files into and out of your Amazon EFS file systems.</p>
    # @option params [String] :role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that controls your users' access to your Amazon S3 bucket or Amazon EFS file system. The policies attached to this role determine the level of access that you want to provide your users when transferring files into and out of your Amazon S3 bucket or Amazon EFS file system. The IAM role should also contain a trust relationship that allows the server to access your resources when servicing your users' transfer requests.</p>
    # @option params [String] :server_id
    #   <p>A system-assigned unique identifier for a Transfer Family server instance that the user is assigned to.</p>
    # @option params [String] :user_name
    #   <p>A unique string that identifies a user and is associated with a server as specified by the <code>ServerId</code>. This user name must be a minimum of 3 and a maximum of 100 characters long. The following are valid characters: a-z, A-Z, 0-9, underscore '_', hyphen '-', period '.', and at sign '@'. The user name can't start with a hyphen, period, or at sign.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     home_directory: "HomeDirectory",
    #     home_directory_type: "PATH" # One of: ["PATH", "LOGICAL"],
    #     home_directory_mappings: [
    #       {
    #         entry: "MapEntry", # required
    #         target: "MapTarget", # required
    #         type: "FILE" # One of: ["FILE", "DIRECTORY"]
    #       }
    #     ],
    #     policy: "Policy",
    #     posix_profile: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [1]
    #     },
    #     role: "Role",
    #     server_id: "ServerId", # required
    #     user_name: "UserName", # required
    #   }
    #   options = {}
    #   response = client.update_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_id: "ServerId", # required
    #     user_name: "UserName", # required
    #   }
    # @return [Types::UpdateUserResponse]
    def update_user(params = {}, options = {})
      request = build_request(:update_user, params)
      request.send_request(options)
    end

    # <p>Assigns new properties to a web app. You can modify the access point, identity provider details, and the web app units.</p>
    # @param [Hash, Types::UpdateWebAppRequest] params
    # @option params [String] :web_app_id
    #   <p>Provide the identifier of the web app that you are updating.</p>
    # @option params [Types::UpdateWebAppIdentityProviderDetails] :identity_provider_details
    #   <p>Provide updated identity provider values in a <code>WebAppIdentityProviderDetails</code> object.</p>
    # @option params [String] :access_endpoint
    #   <p>The <code>AccessEndpoint</code> is the URL that you provide to your users for them to interact with the Transfer Family web app. You can specify a custom URL or use the default value.</p>
    # @option params [Types::WebAppUnits] :web_app_units
    #   <p>A union that contains the value for number of concurrent connections or the user sessions on your web app.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     web_app_id: "WebAppId", # required
    #     identity_provider_details: {
    #       # One of:
    #       identity_center_config: {
    #         role: "Role"
    #       }
    #     },
    #     access_endpoint: "WebAppAccessEndpoint",
    #     web_app_units: {
    #       # One of:
    #       provisioned: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_web_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     web_app_id: "WebAppId", # required
    #   }
    # @return [Types::UpdateWebAppResponse]
    def update_web_app(params = {}, options = {})
      request = build_request(:update_web_app, params)
      request.send_request(options)
    end

    # <p>Assigns new customization properties to a web app. You can modify the icon file, logo file, and title.</p>
    # @param [Hash, Types::UpdateWebAppCustomizationRequest] params
    # @option params [String] :web_app_id
    #   <p>Provide the identifier of the web app that you are updating.</p>
    # @option params [String] :title
    #   <p>Provide an updated title.</p>
    # @option params [String] :logo_file
    #   <p>Specify logo file data string (in base64 encoding).</p>
    # @option params [String] :favicon_file
    #   <p>Specify an icon file data string (in base64 encoding).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     web_app_id: "WebAppId", # required
    #     title: "WebAppTitle",
    #     logo_file: "data",
    #     favicon_file: "data"
    #   }
    #   options = {}
    #   response = client.update_web_app_customization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     web_app_id: "WebAppId", # required
    #   }
    # @return [Types::UpdateWebAppCustomizationResponse]
    def update_web_app_customization(params = {}, options = {})
      request = build_request(:update_web_app_customization, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-transfer'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        server_offline: Waiters::ServerOffline,
        server_online: Waiters::ServerOnline
      }
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
