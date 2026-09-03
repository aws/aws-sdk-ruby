# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:fsx)

module Aws::FSx
  # An API client for Aws::FSx.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSSimbaAPIServiceV20180301
    @identifier = :fsx

    add_plugin(::Aws::FSx::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::FSx::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Use this action to associate one or more Domain Name Server (DNS) aliases with an existing Amazon FSx for Windows File Server file system. 
    #         A file system can have a maximum of 50 DNS aliases associated with it at any one time. If you try to 
    #         associate a DNS alias that is already associated with the file system, FSx takes no action on that alias in the request. 
    #         For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html">Working with DNS Aliases</a> and 
    #             <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/walkthrough05-file-system-custom-CNAME.html">Walkthrough 5: Using DNS aliases to access your file system</a>, including
    #              additional steps you must take to be able to access your file system using a DNS alias.</p>
    #          <p>The system response shows the DNS aliases that 
    #             Amazon FSx is attempting to associate with the file system. 
    #             Use the  API 
    #             operation to monitor the status of the aliases Amazon FSx is 
    #             associating with the file system.</p>
    # @param [Hash, Types::AssociateFileSystemAliasesRequest] params
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :file_system_id
    #   <p>Specifies the file system with which you want to associate one or more DNS aliases.</p>
    # @option params [Array<String>] :aliases
    #   <p>An array of one or more DNS alias names to associate with the file system. 
    #               The alias name has to comply with the following formatting requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Formatted as a fully-qualified domain name (FQDN), <i>
    #                        <code>hostname.domain</code>
    #                     </i>, 
    #                       for example, <code>accounting.corp.example.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Can contain alphanumeric characters and the hyphen (-).</p>
    #               </li>
    #               <li>
    #                  <p>Cannot start or end with a hyphen.</p>
    #               </li>
    #               <li>
    #                  <p>Can start with a numeric.</p>
    #               </li>
    #            </ul>
    #            <p>For DNS alias names, Amazon FSx stores alphabetic characters as lowercase letters (a-z), regardless of how you specify them: 
    #               as uppercase letters, lowercase letters, or the corresponding letters in escape codes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     file_system_id: "FileSystemId", # required
    #     aliases: ["AlternateDNSName"], # required
    #   }
    #   options = {}
    #   response = client.associate_file_system_aliases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aliases: [
    #       {
    #         name: "AlternateDNSName",
    #         lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #       }
    #     ]
    #   }
    # @return [Types::AssociateFileSystemAliasesResponse]
    def associate_file_system_aliases(params = {}, options = {})
      request = build_request(:associate_file_system_aliases, params)
      request.send_request(options)
    end

    # <p>Cancels an existing Amazon FSx for Lustre data repository task if that task is in either the 
    #             <code>PENDING</code> or <code>EXECUTING</code> state. When you cancel an export task, Amazon FSx
    #             does the following.</p>
    #          <ul>
    #             <li>
    #                <p>Any files that FSx has already exported are not reverted.</p>
    #             </li>
    #             <li>
    #                <p>FSx continues to export any files that are in-flight when the cancel operation is received.</p>
    #             </li>
    #             <li>
    #                <p>FSx does not export any files that have not yet been exported.</p>
    #             </li>
    #          </ul>
    #          <p>For a release task, Amazon FSx will stop releasing files upon cancellation. Any files that
    #             have already been released will remain in the released state.</p>
    # @param [Hash, Types::CancelDataRepositoryTaskRequest] params
    # @option params [String] :task_id
    #   <p>Specifies the data repository task to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "TaskId", # required
    #   }
    #   options = {}
    #   response = client.cancel_data_repository_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle: "PENDING" # One of: ["PENDING", "EXECUTING", "FAILED", "SUCCEEDED", "CANCELED", "CANCELING"],
    #     task_id: "TaskId"
    #   }
    # @return [Types::CancelDataRepositoryTaskResponse]
    def cancel_data_repository_task(params = {}, options = {})
      request = build_request(:cancel_data_repository_task, params)
      request.send_request(options)
    end

    # <p>Copies an existing backup within the same Amazon Web Services account to another Amazon Web Services Region
    #          (cross-Region copy) or within the same Amazon Web Services Region (in-Region copy). You can have up to five
    #          backup copy requests in progress to a single destination Region per account.</p>
    #          <p>You can use cross-Region backup copies for cross-Region disaster recovery. You can
    #          periodically take backups and copy them to another Region so that in the event of a
    #          disaster in the primary Region, you can restore from backup and recover availability
    #          quickly in the other Region. You can make cross-Region copies only within your Amazon Web Services partition. A partition is a grouping of Regions. Amazon Web Services currently
    #          has three partitions: <code>aws</code> (Standard Regions), <code>aws-cn</code> (China
    #          Regions), and <code>aws-us-gov</code> (Amazon Web Services GovCloud [US] Regions).</p>
    #          <p>You can also use backup copies to clone your file dataset to another Region or within
    #          the same Region.</p>
    #          <p>You can use the <code>SourceRegion</code> parameter to specify the Amazon Web Services Region
    #          from which the backup will be copied. For example, if you make the call from the
    #          <code>us-west-1</code> Region and want to copy a backup from the <code>us-east-2</code>
    #          Region, you specify <code>us-east-2</code> in the <code>SourceRegion</code> parameter
    #          to make a cross-Region copy. If you don't specify a Region, the backup copy is
    #          created in the same Region where the request is sent from (in-Region copy).</p>
    #          <p>For more information about creating backup copies, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html#copy-backups"> Copying backups</a>
    #          in the <i>Amazon FSx for Windows User Guide</i>, <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html#copy-backups">Copying backups</a> in the <i>Amazon FSx for Lustre User
    #             Guide</i>, and <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/using-backups.html#copy-backups">Copying backups</a> in the <i>Amazon FSx for OpenZFS User
    #             Guide</i>.</p>
    # @param [Hash, Types::CopyBackupRequest] params
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :source_backup_id
    #   <p>The ID of the source backup. Specifies the ID of the backup that's being copied.</p>
    # @option params [String] :source_region
    #   <p>The source Amazon Web Services Region of the backup. Specifies the Amazon Web Services Region from which the backup is being copied. The source and destination
    #            Regions must be in the same Amazon Web Services partition. If you don't specify a
    #            Region, <code>SourceRegion</code> defaults to the Region where the request is sent from
    #            (in-Region copy).</p>
    # @option params [String] :kms_key_id
    #   <p>Specifies the ID of the Key Management Service (KMS) key to use for encrypting data on
    #                Amazon FSx file systems, as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon FSx for Lustre <code>PERSISTENT_1</code>
    #                   and <code>PERSISTENT_2</code> deployment types only.</p>
    #                  <p>
    #                     <code>SCRATCH_1</code> and <code>SCRATCH_2</code> types are encrypted using 
    #                       the Amazon FSx service KMS key for your account.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for NetApp ONTAP</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for OpenZFS</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for Windows File Server</p>
    #               </li>
    #            </ul>
    #            <p>If a <code>KmsKeyId</code> isn't specified, the Amazon FSx-managed KMS key for your account is used.
    #               For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html">Encrypt</a> in the
    #               <i>Key Management Service API Reference</i>.</p>
    # @option params [Boolean] :copy_tags
    #   <p>A Boolean flag indicating whether tags from the source backup should be copied to the
    #            backup copy. This value defaults to <code>false</code>.</p>
    #            <p>If you set <code>CopyTags</code> to <code>true</code> and the source backup has existing
    #            tags, you can use the <code>Tags</code> parameter to create new tags, provided that the sum
    #            of the source backup tags and the new tags doesn't exceed 50. Both sets of tags are
    #            merged. If there are tag conflicts (for example, two tags with the same key but different
    #            values), the tags created with the <code>Tags</code> parameter take precedence.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    # @example To copy a backup
    #   # This operation copies an Amazon FSx backup.
    #   params = {
    #     source_backup_id: "backup-03e3c82e0183b7b6b",
    #     source_region: "us-east-2"
    #   }
    #   options = {}
    #   response = client.copy_backup(params, options)
    #   response.to_h #=>
    #   {
    #     backup: {
    #       backup_id: "backup-0a3364eded1014b28",
    #       owner_id: "123456789012",
    #       lifecycle: COPYING,
    #       type: USER_INITIATED,
    #       creation_time: Time.parse(1617954808.068),
    #       kms_key_id: "arn:aws:fsx:us-east-1:012345678912:key/d1234e22-543a-12b7-a98f-e12c2b54001a",
    #       resource_arn: "arn:aws:fsx:us-east-1:012345678912:backup/backup-0a3364eded1014b28",
    #       tags: [
    #         {
    #           key: "Name",
    #           value: "MyBackup"
    #         }
    #       ],
    #       file_system: {
    #         file_system_id: "fs-0498eed5fe91001ec",
    #         file_system_type: LUSTRE,
    #         storage_capacity: 2400,
    #         storage_type: SSD,
    #         resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0f5179e395f597e66",
    #         lustre_configuration: {
    #           weekly_maintenance_start_time: "1:05:00",
    #           deployment_type: PERSISTENT_1,
    #           per_unit_storage_throughput: 50,
    #           automatic_backup_retention_days: 0
    #         }
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     source_backup_id: "SourceBackupId", # required
    #     source_region: "Region",
    #     kms_key_id: "KmsKeyId",
    #     copy_tags: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.copy_backup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup: {
    #       backup_id: "BackupId", # required
    #       lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "TRANSFERRING", "DELETED", "FAILED", "PENDING", "COPYING"], # required
    #       failure_details: {
    #         message: "ErrorMessage"
    #       },
    #       type: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_INITIATED", "AWS_BACKUP"], # required
    #       progress_percent: 1,
    #       creation_time: Time.now, # required
    #       kms_key_id: "KmsKeyId",
    #       resource_arn: "ResourceARN",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       file_system: { # required
    #         owner_id: "AWSAccountId",
    #         creation_time: Time.now,
    #         file_system_id: "FileSystemId",
    #         file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #         lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #         failure_details: {
    #           message: "ErrorMessage"
    #         },
    #         storage_capacity: 1,
    #         storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #         vpc_id: "VpcId",
    #         subnet_ids: ["SubnetId"],
    #         network_interface_ids: ["NetworkInterfaceId"],
    #         dns_name: "DNSName",
    #         kms_key_id: "KmsKeyId",
    #         resource_arn: "ResourceARN",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         windows_configuration: {
    #           active_directory_id: "DirectoryId",
    #           self_managed_active_directory_configuration: {
    #             domain_name: "ActiveDirectoryFullyQualifiedName",
    #             organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #             file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #             user_name: "DirectoryUserName",
    #             dns_ips: ["IpAddress"]
    #           },
    #           deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #           remote_administration_endpoint: "DNSName",
    #           preferred_subnet_id: "SubnetId",
    #           preferred_file_server_ip: "IpAddress",
    #           throughput_capacity: 1,
    #           maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           daily_automatic_backup_start_time: "DailyTime",
    #           automatic_backup_retention_days: 1,
    #           copy_tags_to_backups: false,
    #           aliases: [
    #             {
    #               name: "AlternateDNSName",
    #               lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #             }
    #           ],
    #           audit_log_configuration: {
    #             file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #             file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #             audit_log_destination: "GeneralARN"
    #           },
    #           disk_iops_configuration: {
    #             mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #             iops: 1
    #           },
    #           preferred_file_server_ipv6: "IpAddress"
    #         },
    #         lustre_configuration: {
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           data_repository_configuration: {
    #             lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #             import_path: "ArchivePath",
    #             export_path: "ArchivePath",
    #             imported_file_chunk_size: 1,
    #             auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #             failure_details: {
    #               message: "ErrorMessage"
    #             }
    #           },
    #           deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #           per_unit_storage_throughput: 1,
    #           mount_name: "LustreFileSystemMountName",
    #           daily_automatic_backup_start_time: "DailyTime",
    #           automatic_backup_retention_days: 1,
    #           copy_tags_to_backups: false,
    #           drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #           data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #           log_configuration: {
    #             level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #             destination: "GeneralARN"
    #           },
    #           root_squash_configuration: {
    #             root_squash: "LustreRootSquash",
    #             no_squash_nids: ["LustreNoSquashNid"]
    #           },
    #           metadata_configuration: {
    #             iops: 1,
    #             mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #           },
    #           efa_enabled: false,
    #           throughput_capacity: 1,
    #           data_read_cache_configuration: {
    #             sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #             size_gi_b: 1
    #           }
    #         },
    #         administrative_actions: [
    #           {
    #             administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #             progress_percent: 1,
    #             request_time: Time.now,
    #             status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #             target_file_system_values: {
    #               # recursive FileSystem
    #             },
    #             failure_details: {
    #               message: "ErrorMessage"
    #             },
    #             target_volume_values: {
    #               creation_time: Time.now,
    #               file_system_id: "FileSystemId",
    #               lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #               name: "VolumeName",
    #               ontap_configuration: {
    #                 flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #                 junction_path: "JunctionPath",
    #                 security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #                 size_in_megabytes: 1,
    #                 storage_efficiency_enabled: false,
    #                 storage_virtual_machine_id: "StorageVirtualMachineId",
    #                 storage_virtual_machine_root: false,
    #                 tiering_policy: {
    #                   cooling_period: 1,
    #                   name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #                 },
    #                 uuid: "UUID",
    #                 ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #                 snapshot_policy: "SnapshotPolicy",
    #                 copy_tags_to_backups: false,
    #                 snaplock_configuration: {
    #                   audit_log_volume: false,
    #                   autocommit_period: {
    #                     type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #                     value: 1
    #                   },
    #                   privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #                   retention_period: {
    #                     default_retention: { # required
    #                       type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                       value: 1
    #                     },
    #                     minimum_retention: { # required
    #                       type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                       value: 1
    #                     },
    #                     maximum_retention: { # required
    #                       type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                       value: 1
    #                     }
    #                   },
    #                   snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #                   volume_append_mode_enabled: false
    #                 },
    #                 volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #                 aggregate_configuration: {
    #                   aggregates: ["Aggregate"],
    #                   total_constituents: 1
    #                 },
    #                 size_in_bytes: 1
    #               },
    #               resource_arn: "ResourceARN",
    #               tags: [
    #                 {
    #                   key: "TagKey", # required
    #                   value: "TagValue", # required
    #                 }
    #               ],
    #               volume_id: "VolumeId",
    #               volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #               lifecycle_transition_reason: {
    #                 message: "ErrorMessage"
    #               },
    #               administrative_actions: {
    #                 # recursive AdministrativeActions
    #               },
    #               open_zfs_configuration: {
    #                 parent_volume_id: "VolumeId",
    #                 volume_path: "VolumePath",
    #                 storage_capacity_reservation_gi_b: 1,
    #                 storage_capacity_quota_gi_b: 1,
    #                 record_size_ki_b: 1,
    #                 data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #                 copy_tags_to_snapshots: false,
    #                 origin_snapshot: {
    #                   snapshot_arn: "ResourceARN",
    #                   copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #                 },
    #                 read_only: false,
    #                 nfs_exports: [
    #                   {
    #                     client_configurations: [ # required
    #                       {
    #                         clients: "OpenZFSClients", # required
    #                         options: ["OpenZFSNfsExportOption"], # required
    #                       }
    #                     ]
    #                   }
    #                 ],
    #                 user_and_group_quotas: [
    #                   {
    #                     type: "USER" # One of: ["USER", "GROUP"], # required
    #                     id: 1, # required
    #                     storage_capacity_quota_gi_b: 1, # required
    #                   }
    #                 ],
    #                 restore_to_snapshot: "SnapshotId",
    #                 delete_intermediate_snaphots: false,
    #                 delete_cloned_volumes: false,
    #                 delete_intermediate_data: false,
    #                 source_snapshot_arn: "ResourceARN",
    #                 destination_snapshot: "SnapshotId",
    #                 copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #               }
    #             },
    #             target_snapshot_values: {
    #               resource_arn: "ResourceARN",
    #               snapshot_id: "SnapshotId",
    #               name: "SnapshotName",
    #               volume_id: "VolumeId",
    #               creation_time: Time.now,
    #               lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #               lifecycle_transition_reason: {
    #                 message: "ErrorMessage"
    #               },
    #               tags: [
    #                 {
    #                   key: "TagKey", # required
    #                   value: "TagValue", # required
    #                 }
    #               ],
    #               administrative_actions: {
    #                 # recursive AdministrativeActions
    #               }
    #             },
    #             total_transfer_bytes: 1,
    #             remaining_transfer_bytes: 1,
    #             message: "ErrorMessage"
    #           }
    #         ],
    #         ontap_configuration: {
    #           automatic_backup_retention_days: 1,
    #           daily_automatic_backup_start_time: "DailyTime",
    #           deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #           endpoint_ip_address_range: "IpAddressRange",
    #           endpoints: {
    #             intercluster: {
    #               dns_name: "DNSName",
    #               ip_addresses: ["IpAddress"],
    #               ipv6_addresses: ["IpAddress"]
    #             },
    #             management: {
    #               dns_name: "DNSName",
    #               ip_addresses: ["IpAddress"],
    #               ipv6_addresses: ["IpAddress"]
    #             }
    #           },
    #           disk_iops_configuration: {
    #             mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #             iops: 1
    #           },
    #           preferred_subnet_id: "SubnetId",
    #           route_table_ids: ["RouteTableId"],
    #           throughput_capacity: 1,
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           fsx_admin_password: "AdminPassword",
    #           ha_pairs: 1,
    #           throughput_capacity_per_ha_pair: 1,
    #           endpoint_ipv6_address_range: "Ipv6AddressRange"
    #         },
    #         file_system_type_version: "FileSystemTypeVersion",
    #         open_zfs_configuration: {
    #           automatic_backup_retention_days: 1,
    #           copy_tags_to_backups: false,
    #           copy_tags_to_volumes: false,
    #           daily_automatic_backup_start_time: "DailyTime",
    #           deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #           throughput_capacity: 1,
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           disk_iops_configuration: {
    #             mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #             iops: 1
    #           },
    #           root_volume_id: "VolumeId",
    #           preferred_subnet_id: "SubnetId",
    #           endpoint_ip_address_range: "IpAddressRange",
    #           endpoint_ipv6_address_range: "Ipv6AddressRange",
    #           route_table_ids: ["RouteTableId"],
    #           endpoint_ip_address: "IpAddress",
    #           endpoint_ipv6_address: "IpAddress",
    #           read_cache_configuration: {
    #             sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #             size_gi_b: 1
    #           }
    #         },
    #         network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #       },
    #       directory_information: {
    #         domain_name: "ActiveDirectoryFullyQualifiedName",
    #         active_directory_id: "DirectoryId",
    #         resource_arn: "ResourceARN"
    #       },
    #       owner_id: "AWSAccountId",
    #       source_backup_id: "BackupId",
    #       source_backup_region: "Region",
    #       resource_type: "FILE_SYSTEM" # One of: ["FILE_SYSTEM", "VOLUME"],
    #       volume: {
    #         creation_time: Time.now,
    #         file_system_id: "FileSystemId",
    #         lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #         name: "VolumeName",
    #         ontap_configuration: {
    #           flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #           junction_path: "JunctionPath",
    #           security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #           size_in_megabytes: 1,
    #           storage_efficiency_enabled: false,
    #           storage_virtual_machine_id: "StorageVirtualMachineId",
    #           storage_virtual_machine_root: false,
    #           tiering_policy: {
    #             cooling_period: 1,
    #             name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #           },
    #           uuid: "UUID",
    #           ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #           snapshot_policy: "SnapshotPolicy",
    #           copy_tags_to_backups: false,
    #           snaplock_configuration: {
    #             audit_log_volume: false,
    #             autocommit_period: {
    #               type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #               value: 1
    #             },
    #             privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #             retention_period: {
    #               default_retention: { # required
    #                 type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                 value: 1
    #               },
    #               minimum_retention: { # required
    #                 type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                 value: 1
    #               },
    #               maximum_retention: { # required
    #                 type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                 value: 1
    #               }
    #             },
    #             snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #             volume_append_mode_enabled: false
    #           },
    #           volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #           aggregate_configuration: {
    #             aggregates: ["Aggregate"],
    #             total_constituents: 1
    #           },
    #           size_in_bytes: 1
    #         },
    #         resource_arn: "ResourceARN",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         volume_id: "VolumeId",
    #         volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #         lifecycle_transition_reason: {
    #           message: "ErrorMessage"
    #         },
    #         administrative_actions: [
    #           {
    #             administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #             progress_percent: 1,
    #             request_time: Time.now,
    #             status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #             target_file_system_values: {
    #               owner_id: "AWSAccountId",
    #               creation_time: Time.now,
    #               file_system_id: "FileSystemId",
    #               file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #               lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #               failure_details: {
    #                 message: "ErrorMessage"
    #               },
    #               storage_capacity: 1,
    #               storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #               vpc_id: "VpcId",
    #               subnet_ids: ["SubnetId"],
    #               network_interface_ids: ["NetworkInterfaceId"],
    #               dns_name: "DNSName",
    #               kms_key_id: "KmsKeyId",
    #               resource_arn: "ResourceARN",
    #               tags: [
    #                 {
    #                   key: "TagKey", # required
    #                   value: "TagValue", # required
    #                 }
    #               ],
    #               windows_configuration: {
    #                 active_directory_id: "DirectoryId",
    #                 self_managed_active_directory_configuration: {
    #                   domain_name: "ActiveDirectoryFullyQualifiedName",
    #                   organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #                   file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #                   user_name: "DirectoryUserName",
    #                   dns_ips: ["IpAddress"]
    #                 },
    #                 deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #                 remote_administration_endpoint: "DNSName",
    #                 preferred_subnet_id: "SubnetId",
    #                 preferred_file_server_ip: "IpAddress",
    #                 throughput_capacity: 1,
    #                 maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #                 weekly_maintenance_start_time: "WeeklyTime",
    #                 daily_automatic_backup_start_time: "DailyTime",
    #                 automatic_backup_retention_days: 1,
    #                 copy_tags_to_backups: false,
    #                 aliases: [
    #                   {
    #                     name: "AlternateDNSName",
    #                     lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #                   }
    #                 ],
    #                 audit_log_configuration: {
    #                   file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                   file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                   audit_log_destination: "GeneralARN"
    #                 },
    #                 disk_iops_configuration: {
    #                   mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                   iops: 1
    #                 },
    #                 preferred_file_server_ipv6: "IpAddress"
    #               },
    #               lustre_configuration: {
    #                 weekly_maintenance_start_time: "WeeklyTime",
    #                 data_repository_configuration: {
    #                   lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #                   import_path: "ArchivePath",
    #                   export_path: "ArchivePath",
    #                   imported_file_chunk_size: 1,
    #                   auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #                   failure_details: {
    #                     message: "ErrorMessage"
    #                   }
    #                 },
    #                 deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #                 per_unit_storage_throughput: 1,
    #                 mount_name: "LustreFileSystemMountName",
    #                 daily_automatic_backup_start_time: "DailyTime",
    #                 automatic_backup_retention_days: 1,
    #                 copy_tags_to_backups: false,
    #                 drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #                 data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #                 log_configuration: {
    #                   level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #                   destination: "GeneralARN"
    #                 },
    #                 root_squash_configuration: {
    #                   root_squash: "LustreRootSquash",
    #                   no_squash_nids: ["LustreNoSquashNid"]
    #                 },
    #                 metadata_configuration: {
    #                   iops: 1,
    #                   mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #                 },
    #                 efa_enabled: false,
    #                 throughput_capacity: 1,
    #                 data_read_cache_configuration: {
    #                   sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                   size_gi_b: 1
    #                 }
    #               },
    #               administrative_actions: {
    #                 # recursive AdministrativeActions
    #               },
    #               ontap_configuration: {
    #                 automatic_backup_retention_days: 1,
    #                 daily_automatic_backup_start_time: "DailyTime",
    #                 deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #                 endpoint_ip_address_range: "IpAddressRange",
    #                 endpoints: {
    #                   intercluster: {
    #                     dns_name: "DNSName",
    #                     ip_addresses: ["IpAddress"],
    #                     ipv6_addresses: ["IpAddress"]
    #                   },
    #                   management: {
    #                     dns_name: "DNSName",
    #                     ip_addresses: ["IpAddress"],
    #                     ipv6_addresses: ["IpAddress"]
    #                   }
    #                 },
    #                 disk_iops_configuration: {
    #                   mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                   iops: 1
    #                 },
    #                 preferred_subnet_id: "SubnetId",
    #                 route_table_ids: ["RouteTableId"],
    #                 throughput_capacity: 1,
    #                 weekly_maintenance_start_time: "WeeklyTime",
    #                 fsx_admin_password: "AdminPassword",
    #                 ha_pairs: 1,
    #                 throughput_capacity_per_ha_pair: 1,
    #                 endpoint_ipv6_address_range: "Ipv6AddressRange"
    #               },
    #               file_system_type_version: "FileSystemTypeVersion",
    #               open_zfs_configuration: {
    #                 automatic_backup_retention_days: 1,
    #                 copy_tags_to_backups: false,
    #                 copy_tags_to_volumes: false,
    #                 daily_automatic_backup_start_time: "DailyTime",
    #                 deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #                 throughput_capacity: 1,
    #                 weekly_maintenance_start_time: "WeeklyTime",
    #                 disk_iops_configuration: {
    #                   mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                   iops: 1
    #                 },
    #                 root_volume_id: "VolumeId",
    #                 preferred_subnet_id: "SubnetId",
    #                 endpoint_ip_address_range: "IpAddressRange",
    #                 endpoint_ipv6_address_range: "Ipv6AddressRange",
    #                 route_table_ids: ["RouteTableId"],
    #                 endpoint_ip_address: "IpAddress",
    #                 endpoint_ipv6_address: "IpAddress",
    #                 read_cache_configuration: {
    #                   sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                   size_gi_b: 1
    #                 }
    #               },
    #               network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #             },
    #             failure_details: {
    #               message: "ErrorMessage"
    #             },
    #             target_volume_values: {
    #               # recursive Volume
    #             },
    #             target_snapshot_values: {
    #               resource_arn: "ResourceARN",
    #               snapshot_id: "SnapshotId",
    #               name: "SnapshotName",
    #               volume_id: "VolumeId",
    #               creation_time: Time.now,
    #               lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #               lifecycle_transition_reason: {
    #                 message: "ErrorMessage"
    #               },
    #               tags: [
    #                 {
    #                   key: "TagKey", # required
    #                   value: "TagValue", # required
    #                 }
    #               ],
    #               administrative_actions: {
    #                 # recursive AdministrativeActions
    #               }
    #             },
    #             total_transfer_bytes: 1,
    #             remaining_transfer_bytes: 1,
    #             message: "ErrorMessage"
    #           }
    #         ],
    #         open_zfs_configuration: {
    #           parent_volume_id: "VolumeId",
    #           volume_path: "VolumePath",
    #           storage_capacity_reservation_gi_b: 1,
    #           storage_capacity_quota_gi_b: 1,
    #           record_size_ki_b: 1,
    #           data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #           copy_tags_to_snapshots: false,
    #           origin_snapshot: {
    #             snapshot_arn: "ResourceARN",
    #             copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #           },
    #           read_only: false,
    #           nfs_exports: [
    #             {
    #               client_configurations: [ # required
    #                 {
    #                   clients: "OpenZFSClients", # required
    #                   options: ["OpenZFSNfsExportOption"], # required
    #                 }
    #               ]
    #             }
    #           ],
    #           user_and_group_quotas: [
    #             {
    #               type: "USER" # One of: ["USER", "GROUP"], # required
    #               id: 1, # required
    #               storage_capacity_quota_gi_b: 1, # required
    #             }
    #           ],
    #           restore_to_snapshot: "SnapshotId",
    #           delete_intermediate_snaphots: false,
    #           delete_cloned_volumes: false,
    #           delete_intermediate_data: false,
    #           source_snapshot_arn: "ResourceARN",
    #           destination_snapshot: "SnapshotId",
    #           copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #         }
    #       },
    #       size_in_bytes: 1
    #     }
    #   }
    # @return [Types::CopyBackupResponse]
    def copy_backup(params = {}, options = {})
      request = build_request(:copy_backup, params)
      request.send_request(options)
    end

    # <p>Updates an existing volume by using a snapshot from another Amazon FSx for OpenZFS file system. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/on-demand-replication.html">on-demand data replication</a> in the Amazon FSx for OpenZFS User
    #             Guide.</p>
    # @param [Hash, Types::CopySnapshotAndUpdateVolumeRequest] params
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :volume_id
    #   <p>Specifies the ID of the volume that you are copying the snapshot to.</p>
    # @option params [String] :source_snapshot_arn
    #   <p>The Amazon Resource Name (ARN) for a given resource. ARNs uniquely identify Amazon Web Services
    #               resources. We require an ARN when you need to specify a resource unambiguously across
    #               all of Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #               the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :copy_strategy
    #   <p>Specifies the strategy to use when copying data from a snapshot to the volume. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FULL_COPY</code> - Copies all data from the snapshot to the volume.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INCREMENTAL_COPY</code> - Copies only the snapshot data that's changed
    #                       since the previous replication.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>
    #                  <code>CLONE</code> isn't a valid copy strategy option for the
    #                       <code>CopySnapshotAndUpdateVolume</code> operation.</p>
    #            </note>
    # @option params [Array<String>] :options
    #   <p>Confirms that you want to delete data on the destination volume that wasn’t there
    #               during the previous snapshot replication.</p>
    #            <p>Your replication will fail if you don’t include an option for a specific type of data
    #               and that data is on your destination. For example, if you don’t include
    #                   <code>DELETE_INTERMEDIATE_SNAPSHOTS</code> and there are intermediate snapshots on
    #               the destination, you can’t copy the snapshot.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETE_INTERMEDIATE_SNAPSHOTS</code> - Deletes snapshots on the
    #                       destination volume that aren’t on the source volume.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_CLONED_VOLUMES</code> - Deletes snapshot clones on the
    #                       destination volume that aren't on the source volume.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_INTERMEDIATE_DATA</code> - Overwrites snapshots on the
    #                       destination volume that don’t match the source snapshot that you’re
    #                       copying.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     volume_id: "VolumeId", # required
    #     source_snapshot_arn: "ResourceARN", # required
    #     copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"],
    #     options: ["DELETE_INTERMEDIATE_SNAPSHOTS" # One of: ["DELETE_INTERMEDIATE_SNAPSHOTS", "DELETE_CLONED_VOLUMES", "DELETE_INTERMEDIATE_DATA"]]
    #   }
    #   options = {}
    #   response = client.copy_snapshot_and_update_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volume_id: "VolumeId",
    #     lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #     administrative_actions: [
    #       {
    #         administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #         progress_percent: 1,
    #         request_time: Time.now,
    #         status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #         target_file_system_values: {
    #           owner_id: "AWSAccountId",
    #           creation_time: Time.now,
    #           file_system_id: "FileSystemId",
    #           file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #           lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #           failure_details: {
    #             message: "ErrorMessage"
    #           },
    #           storage_capacity: 1,
    #           storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #           vpc_id: "VpcId",
    #           subnet_ids: ["SubnetId"],
    #           network_interface_ids: ["NetworkInterfaceId"],
    #           dns_name: "DNSName",
    #           kms_key_id: "KmsKeyId",
    #           resource_arn: "ResourceARN",
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             }
    #           ],
    #           windows_configuration: {
    #             active_directory_id: "DirectoryId",
    #             self_managed_active_directory_configuration: {
    #               domain_name: "ActiveDirectoryFullyQualifiedName",
    #               organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #               file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #               user_name: "DirectoryUserName",
    #               dns_ips: ["IpAddress"]
    #             },
    #             deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #             remote_administration_endpoint: "DNSName",
    #             preferred_subnet_id: "SubnetId",
    #             preferred_file_server_ip: "IpAddress",
    #             throughput_capacity: 1,
    #             maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #             weekly_maintenance_start_time: "WeeklyTime",
    #             daily_automatic_backup_start_time: "DailyTime",
    #             automatic_backup_retention_days: 1,
    #             copy_tags_to_backups: false,
    #             aliases: [
    #               {
    #                 name: "AlternateDNSName",
    #                 lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #               }
    #             ],
    #             audit_log_configuration: {
    #               file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #               file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #               audit_log_destination: "GeneralARN"
    #             },
    #             disk_iops_configuration: {
    #               mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #               iops: 1
    #             },
    #             preferred_file_server_ipv6: "IpAddress"
    #           },
    #           lustre_configuration: {
    #             weekly_maintenance_start_time: "WeeklyTime",
    #             data_repository_configuration: {
    #               lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #               import_path: "ArchivePath",
    #               export_path: "ArchivePath",
    #               imported_file_chunk_size: 1,
    #               auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #               failure_details: {
    #                 message: "ErrorMessage"
    #               }
    #             },
    #             deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #             per_unit_storage_throughput: 1,
    #             mount_name: "LustreFileSystemMountName",
    #             daily_automatic_backup_start_time: "DailyTime",
    #             automatic_backup_retention_days: 1,
    #             copy_tags_to_backups: false,
    #             drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #             data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #             log_configuration: {
    #               level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #               destination: "GeneralARN"
    #             },
    #             root_squash_configuration: {
    #               root_squash: "LustreRootSquash",
    #               no_squash_nids: ["LustreNoSquashNid"]
    #             },
    #             metadata_configuration: {
    #               iops: 1,
    #               mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #             },
    #             efa_enabled: false,
    #             throughput_capacity: 1,
    #             data_read_cache_configuration: {
    #               sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #               size_gi_b: 1
    #             }
    #           },
    #           administrative_actions: {
    #             # recursive AdministrativeActions
    #           },
    #           ontap_configuration: {
    #             automatic_backup_retention_days: 1,
    #             daily_automatic_backup_start_time: "DailyTime",
    #             deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #             endpoint_ip_address_range: "IpAddressRange",
    #             endpoints: {
    #               intercluster: {
    #                 dns_name: "DNSName",
    #                 ip_addresses: ["IpAddress"],
    #                 ipv6_addresses: ["IpAddress"]
    #               },
    #               management: {
    #                 dns_name: "DNSName",
    #                 ip_addresses: ["IpAddress"],
    #                 ipv6_addresses: ["IpAddress"]
    #               }
    #             },
    #             disk_iops_configuration: {
    #               mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #               iops: 1
    #             },
    #             preferred_subnet_id: "SubnetId",
    #             route_table_ids: ["RouteTableId"],
    #             throughput_capacity: 1,
    #             weekly_maintenance_start_time: "WeeklyTime",
    #             fsx_admin_password: "AdminPassword",
    #             ha_pairs: 1,
    #             throughput_capacity_per_ha_pair: 1,
    #             endpoint_ipv6_address_range: "Ipv6AddressRange"
    #           },
    #           file_system_type_version: "FileSystemTypeVersion",
    #           open_zfs_configuration: {
    #             automatic_backup_retention_days: 1,
    #             copy_tags_to_backups: false,
    #             copy_tags_to_volumes: false,
    #             daily_automatic_backup_start_time: "DailyTime",
    #             deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #             throughput_capacity: 1,
    #             weekly_maintenance_start_time: "WeeklyTime",
    #             disk_iops_configuration: {
    #               mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #               iops: 1
    #             },
    #             root_volume_id: "VolumeId",
    #             preferred_subnet_id: "SubnetId",
    #             endpoint_ip_address_range: "IpAddressRange",
    #             endpoint_ipv6_address_range: "Ipv6AddressRange",
    #             route_table_ids: ["RouteTableId"],
    #             endpoint_ip_address: "IpAddress",
    #             endpoint_ipv6_address: "IpAddress",
    #             read_cache_configuration: {
    #               sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #               size_gi_b: 1
    #             }
    #           },
    #           network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #         },
    #         failure_details: {
    #           message: "ErrorMessage"
    #         },
    #         target_volume_values: {
    #           creation_time: Time.now,
    #           file_system_id: "FileSystemId",
    #           lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #           name: "VolumeName",
    #           ontap_configuration: {
    #             flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #             junction_path: "JunctionPath",
    #             security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #             size_in_megabytes: 1,
    #             storage_efficiency_enabled: false,
    #             storage_virtual_machine_id: "StorageVirtualMachineId",
    #             storage_virtual_machine_root: false,
    #             tiering_policy: {
    #               cooling_period: 1,
    #               name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #             },
    #             uuid: "UUID",
    #             ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #             snapshot_policy: "SnapshotPolicy",
    #             copy_tags_to_backups: false,
    #             snaplock_configuration: {
    #               audit_log_volume: false,
    #               autocommit_period: {
    #                 type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #                 value: 1
    #               },
    #               privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #               retention_period: {
    #                 default_retention: { # required
    #                   type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                   value: 1
    #                 },
    #                 minimum_retention: { # required
    #                   type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                   value: 1
    #                 },
    #                 maximum_retention: { # required
    #                   type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                   value: 1
    #                 }
    #               },
    #               snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #               volume_append_mode_enabled: false
    #             },
    #             volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #             aggregate_configuration: {
    #               aggregates: ["Aggregate"],
    #               total_constituents: 1
    #             },
    #             size_in_bytes: 1
    #           },
    #           resource_arn: "ResourceARN",
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             }
    #           ],
    #           volume_id: "VolumeId",
    #           volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #           lifecycle_transition_reason: {
    #             message: "ErrorMessage"
    #           },
    #           administrative_actions: {
    #             # recursive AdministrativeActions
    #           },
    #           open_zfs_configuration: {
    #             parent_volume_id: "VolumeId",
    #             volume_path: "VolumePath",
    #             storage_capacity_reservation_gi_b: 1,
    #             storage_capacity_quota_gi_b: 1,
    #             record_size_ki_b: 1,
    #             data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #             copy_tags_to_snapshots: false,
    #             origin_snapshot: {
    #               snapshot_arn: "ResourceARN",
    #               copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #             },
    #             read_only: false,
    #             nfs_exports: [
    #               {
    #                 client_configurations: [ # required
    #                   {
    #                     clients: "OpenZFSClients", # required
    #                     options: ["OpenZFSNfsExportOption"], # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             user_and_group_quotas: [
    #               {
    #                 type: "USER" # One of: ["USER", "GROUP"], # required
    #                 id: 1, # required
    #                 storage_capacity_quota_gi_b: 1, # required
    #               }
    #             ],
    #             restore_to_snapshot: "SnapshotId",
    #             delete_intermediate_snaphots: false,
    #             delete_cloned_volumes: false,
    #             delete_intermediate_data: false,
    #             source_snapshot_arn: "ResourceARN",
    #             destination_snapshot: "SnapshotId",
    #             copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #           }
    #         },
    #         target_snapshot_values: {
    #           resource_arn: "ResourceARN",
    #           snapshot_id: "SnapshotId",
    #           name: "SnapshotName",
    #           volume_id: "VolumeId",
    #           creation_time: Time.now,
    #           lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #           lifecycle_transition_reason: {
    #             message: "ErrorMessage"
    #           },
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             }
    #           ],
    #           administrative_actions: {
    #             # recursive AdministrativeActions
    #           }
    #         },
    #         total_transfer_bytes: 1,
    #         remaining_transfer_bytes: 1,
    #         message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::CopySnapshotAndUpdateVolumeResponse]
    def copy_snapshot_and_update_volume(params = {}, options = {})
      request = build_request(:copy_snapshot_and_update_volume, params)
      request.send_request(options)
    end

    # <p>Creates an S3 access point and attaches it to an Amazon FSx volume. For FSx for OpenZFS file systems, the 
    #          volume must be hosted on a high-availability file system, either Single-AZ or Multi-AZ. For more information,
    #          see <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/s3accesspoints-for-FSx.html">Accessing your data using Amazon S3 access points</a>.
    #          in the Amazon FSx for OpenZFS User Guide.
    #       </p>
    #          <p>The requester requires the following permissions to perform these actions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>fsx:CreateAndAttachS3AccessPoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>s3:CreateAccessPoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>s3:GetAccessPoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>s3:PutAccessPointPolicy</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>s3:DeleteAccessPoint</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>The following actions are related to <code>CreateAndAttachS3AccessPoint</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DescribeS3AccessPointAttachments</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DetachAndDeleteS3AccessPoint</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateAndAttachS3AccessPointRequest] params
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :name
    #   <p>The name you want to assign to this S3 access point.</p>
    # @option params [String] :type
    #   <p>The type of S3 access point you want to create. Only <code>OpenZFS</code> is supported.</p>
    # @option params [Types::CreateAndAttachS3AccessPointOpenZFSConfiguration] :open_zfs_configuration
    #   <p>Specifies the configuration to use when creating and attaching an S3 access point to an FSx for OpenZFS volume.</p>
    # @option params [Types::CreateAndAttachS3AccessPointS3Configuration] :s3_access_point
    #   <p>Specifies the virtual private cloud (VPC) configuration if you're creating an access point that is restricted to a VPC. 
    #            For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/access-points-vpc.html">Creating access points restricted to a virtual private cloud</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     name: "S3AccessPointAttachmentName", # required
    #     type: "OPENZFS" # One of: ["OPENZFS"], # required
    #     open_zfs_configuration: {
    #       volume_id: "VolumeId", # required
    #       file_system_identity: { # required
    #         type: "POSIX" # One of: ["POSIX"], # required
    #         posix_user: {
    #           uid: 1, # required
    #           gid: 1, # required
    #           secondary_gids: [1]
    #         }
    #       }
    #     },
    #     s3_access_point: {
    #       vpc_configuration: {
    #         vpc_id: "VpcId"
    #       },
    #       policy: "AccessPointPolicy"
    #     }
    #   }
    #   options = {}
    #   response = client.create_and_attach_s3_access_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     s3_access_point_attachment: {
    #       lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "UPDATING", "FAILED"],
    #       lifecycle_transition_reason: {
    #         message: "ErrorMessage"
    #       },
    #       creation_time: Time.now,
    #       name: "S3AccessPointAttachmentName",
    #       type: "OPENZFS" # One of: ["OPENZFS"],
    #       open_zfs_configuration: {
    #         volume_id: "VolumeId",
    #         file_system_identity: {
    #           type: "POSIX" # One of: ["POSIX"], # required
    #           posix_user: {
    #             uid: 1, # required
    #             gid: 1, # required
    #             secondary_gids: [1]
    #           }
    #         }
    #       },
    #       s3_access_point: {
    #         resource_arn: "GeneralARN",
    #         alias: "S3AccessPointAlias",
    #         vpc_configuration: {
    #           vpc_id: "VpcId"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateAndAttachS3AccessPointResponse]
    def create_and_attach_s3_access_point(params = {}, options = {})
      request = build_request(:create_and_attach_s3_access_point, params)
      request.send_request(options)
    end

    # <p>Creates a backup of an existing Amazon FSx for Windows File Server file
    #             system, Amazon FSx for Lustre file system, Amazon FSx for NetApp ONTAP
    #             volume, or Amazon FSx for OpenZFS file system. We recommend creating regular
    #             backups so that you can restore a file system or volume from a backup if an issue arises
    #             with the original file system or volume.</p>
    #          <p>For Amazon FSx for Lustre file systems, you can create a backup only for file
    #             systems that have the following configuration:</p>
    #          <ul>
    #             <li>
    #                <p>A Persistent deployment type</p>
    #             </li>
    #             <li>
    #                <p>Are <i>not</i> linked to a data repository</p>
    #             </li>
    #          </ul>
    #          <p>For more information about backups, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>For Amazon FSx for Lustre, see <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html">Working with FSx for
    #                         Lustre backups</a>.</p>
    #             </li>
    #             <li>
    #                <p>For Amazon FSx for Windows, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html">Working with FSx for
    #                         Windows backups</a>.</p>
    #             </li>
    #             <li>
    #                <p>For Amazon FSx for NetApp ONTAP, see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/using-backups.html">Working with FSx for NetApp
    #                         ONTAP backups</a>.</p>
    #             </li>
    #             <li>
    #                <p>For Amazon FSx for OpenZFS, see <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/using-backups.html">Working with FSx for OpenZFS backups</a>.</p>
    #             </li>
    #          </ul>
    #          <p>If a backup with the specified client request token exists and the parameters match,
    #             this operation returns the description of the existing backup. If a backup with the
    #             specified client request token exists and the parameters don't match, this operation
    #             returns <code>IncompatibleParameterError</code>. If a backup with the specified client
    #             request token doesn't exist, <code>CreateBackup</code> does the following: </p>
    #          <ul>
    #             <li>
    #                <p>Creates a new Amazon FSx backup with an assigned ID, and an initial
    #                     lifecycle state of <code>CREATING</code>.</p>
    #             </li>
    #             <li>
    #                <p>Returns the description of the backup.</p>
    #             </li>
    #          </ul>
    #          <p>By using the idempotent operation, you can retry a <code>CreateBackup</code>
    #             operation without the risk of creating an extra backup. This approach can be useful when
    #             an initial call fails in a way that makes it unclear whether a backup was created. If
    #             you use the same client request token and the initial call created a backup, the
    #             operation returns a successful result because all the parameters are the same.</p>
    #          <p>The <code>CreateBackup</code> operation returns while the backup's lifecycle state is
    #             still <code>CREATING</code>. You can check the backup creation status by calling the
    #                 <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeBackups.html">DescribeBackups</a> operation, which returns the backup state along with other
    #             information.</p>
    # @param [Hash, Types::CreateBackupRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID of the file system to back up.</p>
    # @option params [String] :client_request_token
    #   <p>(Optional) A string of up to 63 ASCII characters that Amazon FSx uses to
    #               ensure idempotent creation. This string is automatically filled on your behalf when you
    #               use the Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>(Optional) The tags to apply to the backup at backup creation. The key value of the
    #                   <code>Name</code> tag appears in the console as the backup name. If you have set
    #                   <code>CopyTagsToBackups</code> to <code>true</code>, and you specify one or more
    #               tags using the <code>CreateBackup</code> operation, no existing file system tags are
    #               copied from the file system to the backup.</p>
    # @option params [String] :volume_id
    #   <p>(Optional) The ID of the FSx for ONTAP volume to back up.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId",
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     volume_id: "VolumeId"
    #   }
    #   options = {}
    #   response = client.create_backup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup: {
    #       backup_id: "BackupId", # required
    #       lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "TRANSFERRING", "DELETED", "FAILED", "PENDING", "COPYING"], # required
    #       failure_details: {
    #         message: "ErrorMessage"
    #       },
    #       type: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_INITIATED", "AWS_BACKUP"], # required
    #       progress_percent: 1,
    #       creation_time: Time.now, # required
    #       kms_key_id: "KmsKeyId",
    #       resource_arn: "ResourceARN",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       file_system: { # required
    #         owner_id: "AWSAccountId",
    #         creation_time: Time.now,
    #         file_system_id: "FileSystemId",
    #         file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #         lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #         failure_details: {
    #           message: "ErrorMessage"
    #         },
    #         storage_capacity: 1,
    #         storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #         vpc_id: "VpcId",
    #         subnet_ids: ["SubnetId"],
    #         network_interface_ids: ["NetworkInterfaceId"],
    #         dns_name: "DNSName",
    #         kms_key_id: "KmsKeyId",
    #         resource_arn: "ResourceARN",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         windows_configuration: {
    #           active_directory_id: "DirectoryId",
    #           self_managed_active_directory_configuration: {
    #             domain_name: "ActiveDirectoryFullyQualifiedName",
    #             organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #             file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #             user_name: "DirectoryUserName",
    #             dns_ips: ["IpAddress"]
    #           },
    #           deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #           remote_administration_endpoint: "DNSName",
    #           preferred_subnet_id: "SubnetId",
    #           preferred_file_server_ip: "IpAddress",
    #           throughput_capacity: 1,
    #           maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           daily_automatic_backup_start_time: "DailyTime",
    #           automatic_backup_retention_days: 1,
    #           copy_tags_to_backups: false,
    #           aliases: [
    #             {
    #               name: "AlternateDNSName",
    #               lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #             }
    #           ],
    #           audit_log_configuration: {
    #             file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #             file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #             audit_log_destination: "GeneralARN"
    #           },
    #           disk_iops_configuration: {
    #             mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #             iops: 1
    #           },
    #           preferred_file_server_ipv6: "IpAddress"
    #         },
    #         lustre_configuration: {
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           data_repository_configuration: {
    #             lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #             import_path: "ArchivePath",
    #             export_path: "ArchivePath",
    #             imported_file_chunk_size: 1,
    #             auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #             failure_details: {
    #               message: "ErrorMessage"
    #             }
    #           },
    #           deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #           per_unit_storage_throughput: 1,
    #           mount_name: "LustreFileSystemMountName",
    #           daily_automatic_backup_start_time: "DailyTime",
    #           automatic_backup_retention_days: 1,
    #           copy_tags_to_backups: false,
    #           drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #           data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #           log_configuration: {
    #             level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #             destination: "GeneralARN"
    #           },
    #           root_squash_configuration: {
    #             root_squash: "LustreRootSquash",
    #             no_squash_nids: ["LustreNoSquashNid"]
    #           },
    #           metadata_configuration: {
    #             iops: 1,
    #             mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #           },
    #           efa_enabled: false,
    #           throughput_capacity: 1,
    #           data_read_cache_configuration: {
    #             sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #             size_gi_b: 1
    #           }
    #         },
    #         administrative_actions: [
    #           {
    #             administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #             progress_percent: 1,
    #             request_time: Time.now,
    #             status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #             target_file_system_values: {
    #               # recursive FileSystem
    #             },
    #             failure_details: {
    #               message: "ErrorMessage"
    #             },
    #             target_volume_values: {
    #               creation_time: Time.now,
    #               file_system_id: "FileSystemId",
    #               lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #               name: "VolumeName",
    #               ontap_configuration: {
    #                 flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #                 junction_path: "JunctionPath",
    #                 security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #                 size_in_megabytes: 1,
    #                 storage_efficiency_enabled: false,
    #                 storage_virtual_machine_id: "StorageVirtualMachineId",
    #                 storage_virtual_machine_root: false,
    #                 tiering_policy: {
    #                   cooling_period: 1,
    #                   name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #                 },
    #                 uuid: "UUID",
    #                 ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #                 snapshot_policy: "SnapshotPolicy",
    #                 copy_tags_to_backups: false,
    #                 snaplock_configuration: {
    #                   audit_log_volume: false,
    #                   autocommit_period: {
    #                     type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #                     value: 1
    #                   },
    #                   privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #                   retention_period: {
    #                     default_retention: { # required
    #                       type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                       value: 1
    #                     },
    #                     minimum_retention: { # required
    #                       type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                       value: 1
    #                     },
    #                     maximum_retention: { # required
    #                       type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                       value: 1
    #                     }
    #                   },
    #                   snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #                   volume_append_mode_enabled: false
    #                 },
    #                 volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #                 aggregate_configuration: {
    #                   aggregates: ["Aggregate"],
    #                   total_constituents: 1
    #                 },
    #                 size_in_bytes: 1
    #               },
    #               resource_arn: "ResourceARN",
    #               tags: [
    #                 {
    #                   key: "TagKey", # required
    #                   value: "TagValue", # required
    #                 }
    #               ],
    #               volume_id: "VolumeId",
    #               volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #               lifecycle_transition_reason: {
    #                 message: "ErrorMessage"
    #               },
    #               administrative_actions: {
    #                 # recursive AdministrativeActions
    #               },
    #               open_zfs_configuration: {
    #                 parent_volume_id: "VolumeId",
    #                 volume_path: "VolumePath",
    #                 storage_capacity_reservation_gi_b: 1,
    #                 storage_capacity_quota_gi_b: 1,
    #                 record_size_ki_b: 1,
    #                 data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #                 copy_tags_to_snapshots: false,
    #                 origin_snapshot: {
    #                   snapshot_arn: "ResourceARN",
    #                   copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #                 },
    #                 read_only: false,
    #                 nfs_exports: [
    #                   {
    #                     client_configurations: [ # required
    #                       {
    #                         clients: "OpenZFSClients", # required
    #                         options: ["OpenZFSNfsExportOption"], # required
    #                       }
    #                     ]
    #                   }
    #                 ],
    #                 user_and_group_quotas: [
    #                   {
    #                     type: "USER" # One of: ["USER", "GROUP"], # required
    #                     id: 1, # required
    #                     storage_capacity_quota_gi_b: 1, # required
    #                   }
    #                 ],
    #                 restore_to_snapshot: "SnapshotId",
    #                 delete_intermediate_snaphots: false,
    #                 delete_cloned_volumes: false,
    #                 delete_intermediate_data: false,
    #                 source_snapshot_arn: "ResourceARN",
    #                 destination_snapshot: "SnapshotId",
    #                 copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #               }
    #             },
    #             target_snapshot_values: {
    #               resource_arn: "ResourceARN",
    #               snapshot_id: "SnapshotId",
    #               name: "SnapshotName",
    #               volume_id: "VolumeId",
    #               creation_time: Time.now,
    #               lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #               lifecycle_transition_reason: {
    #                 message: "ErrorMessage"
    #               },
    #               tags: [
    #                 {
    #                   key: "TagKey", # required
    #                   value: "TagValue", # required
    #                 }
    #               ],
    #               administrative_actions: {
    #                 # recursive AdministrativeActions
    #               }
    #             },
    #             total_transfer_bytes: 1,
    #             remaining_transfer_bytes: 1,
    #             message: "ErrorMessage"
    #           }
    #         ],
    #         ontap_configuration: {
    #           automatic_backup_retention_days: 1,
    #           daily_automatic_backup_start_time: "DailyTime",
    #           deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #           endpoint_ip_address_range: "IpAddressRange",
    #           endpoints: {
    #             intercluster: {
    #               dns_name: "DNSName",
    #               ip_addresses: ["IpAddress"],
    #               ipv6_addresses: ["IpAddress"]
    #             },
    #             management: {
    #               dns_name: "DNSName",
    #               ip_addresses: ["IpAddress"],
    #               ipv6_addresses: ["IpAddress"]
    #             }
    #           },
    #           disk_iops_configuration: {
    #             mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #             iops: 1
    #           },
    #           preferred_subnet_id: "SubnetId",
    #           route_table_ids: ["RouteTableId"],
    #           throughput_capacity: 1,
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           fsx_admin_password: "AdminPassword",
    #           ha_pairs: 1,
    #           throughput_capacity_per_ha_pair: 1,
    #           endpoint_ipv6_address_range: "Ipv6AddressRange"
    #         },
    #         file_system_type_version: "FileSystemTypeVersion",
    #         open_zfs_configuration: {
    #           automatic_backup_retention_days: 1,
    #           copy_tags_to_backups: false,
    #           copy_tags_to_volumes: false,
    #           daily_automatic_backup_start_time: "DailyTime",
    #           deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #           throughput_capacity: 1,
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           disk_iops_configuration: {
    #             mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #             iops: 1
    #           },
    #           root_volume_id: "VolumeId",
    #           preferred_subnet_id: "SubnetId",
    #           endpoint_ip_address_range: "IpAddressRange",
    #           endpoint_ipv6_address_range: "Ipv6AddressRange",
    #           route_table_ids: ["RouteTableId"],
    #           endpoint_ip_address: "IpAddress",
    #           endpoint_ipv6_address: "IpAddress",
    #           read_cache_configuration: {
    #             sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #             size_gi_b: 1
    #           }
    #         },
    #         network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #       },
    #       directory_information: {
    #         domain_name: "ActiveDirectoryFullyQualifiedName",
    #         active_directory_id: "DirectoryId",
    #         resource_arn: "ResourceARN"
    #       },
    #       owner_id: "AWSAccountId",
    #       source_backup_id: "BackupId",
    #       source_backup_region: "Region",
    #       resource_type: "FILE_SYSTEM" # One of: ["FILE_SYSTEM", "VOLUME"],
    #       volume: {
    #         creation_time: Time.now,
    #         file_system_id: "FileSystemId",
    #         lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #         name: "VolumeName",
    #         ontap_configuration: {
    #           flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #           junction_path: "JunctionPath",
    #           security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #           size_in_megabytes: 1,
    #           storage_efficiency_enabled: false,
    #           storage_virtual_machine_id: "StorageVirtualMachineId",
    #           storage_virtual_machine_root: false,
    #           tiering_policy: {
    #             cooling_period: 1,
    #             name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #           },
    #           uuid: "UUID",
    #           ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #           snapshot_policy: "SnapshotPolicy",
    #           copy_tags_to_backups: false,
    #           snaplock_configuration: {
    #             audit_log_volume: false,
    #             autocommit_period: {
    #               type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #               value: 1
    #             },
    #             privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #             retention_period: {
    #               default_retention: { # required
    #                 type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                 value: 1
    #               },
    #               minimum_retention: { # required
    #                 type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                 value: 1
    #               },
    #               maximum_retention: { # required
    #                 type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                 value: 1
    #               }
    #             },
    #             snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #             volume_append_mode_enabled: false
    #           },
    #           volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #           aggregate_configuration: {
    #             aggregates: ["Aggregate"],
    #             total_constituents: 1
    #           },
    #           size_in_bytes: 1
    #         },
    #         resource_arn: "ResourceARN",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         volume_id: "VolumeId",
    #         volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #         lifecycle_transition_reason: {
    #           message: "ErrorMessage"
    #         },
    #         administrative_actions: [
    #           {
    #             administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #             progress_percent: 1,
    #             request_time: Time.now,
    #             status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #             target_file_system_values: {
    #               owner_id: "AWSAccountId",
    #               creation_time: Time.now,
    #               file_system_id: "FileSystemId",
    #               file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #               lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #               failure_details: {
    #                 message: "ErrorMessage"
    #               },
    #               storage_capacity: 1,
    #               storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #               vpc_id: "VpcId",
    #               subnet_ids: ["SubnetId"],
    #               network_interface_ids: ["NetworkInterfaceId"],
    #               dns_name: "DNSName",
    #               kms_key_id: "KmsKeyId",
    #               resource_arn: "ResourceARN",
    #               tags: [
    #                 {
    #                   key: "TagKey", # required
    #                   value: "TagValue", # required
    #                 }
    #               ],
    #               windows_configuration: {
    #                 active_directory_id: "DirectoryId",
    #                 self_managed_active_directory_configuration: {
    #                   domain_name: "ActiveDirectoryFullyQualifiedName",
    #                   organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #                   file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #                   user_name: "DirectoryUserName",
    #                   dns_ips: ["IpAddress"]
    #                 },
    #                 deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #                 remote_administration_endpoint: "DNSName",
    #                 preferred_subnet_id: "SubnetId",
    #                 preferred_file_server_ip: "IpAddress",
    #                 throughput_capacity: 1,
    #                 maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #                 weekly_maintenance_start_time: "WeeklyTime",
    #                 daily_automatic_backup_start_time: "DailyTime",
    #                 automatic_backup_retention_days: 1,
    #                 copy_tags_to_backups: false,
    #                 aliases: [
    #                   {
    #                     name: "AlternateDNSName",
    #                     lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #                   }
    #                 ],
    #                 audit_log_configuration: {
    #                   file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                   file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                   audit_log_destination: "GeneralARN"
    #                 },
    #                 disk_iops_configuration: {
    #                   mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                   iops: 1
    #                 },
    #                 preferred_file_server_ipv6: "IpAddress"
    #               },
    #               lustre_configuration: {
    #                 weekly_maintenance_start_time: "WeeklyTime",
    #                 data_repository_configuration: {
    #                   lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #                   import_path: "ArchivePath",
    #                   export_path: "ArchivePath",
    #                   imported_file_chunk_size: 1,
    #                   auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #                   failure_details: {
    #                     message: "ErrorMessage"
    #                   }
    #                 },
    #                 deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #                 per_unit_storage_throughput: 1,
    #                 mount_name: "LustreFileSystemMountName",
    #                 daily_automatic_backup_start_time: "DailyTime",
    #                 automatic_backup_retention_days: 1,
    #                 copy_tags_to_backups: false,
    #                 drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #                 data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #                 log_configuration: {
    #                   level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #                   destination: "GeneralARN"
    #                 },
    #                 root_squash_configuration: {
    #                   root_squash: "LustreRootSquash",
    #                   no_squash_nids: ["LustreNoSquashNid"]
    #                 },
    #                 metadata_configuration: {
    #                   iops: 1,
    #                   mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #                 },
    #                 efa_enabled: false,
    #                 throughput_capacity: 1,
    #                 data_read_cache_configuration: {
    #                   sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                   size_gi_b: 1
    #                 }
    #               },
    #               administrative_actions: {
    #                 # recursive AdministrativeActions
    #               },
    #               ontap_configuration: {
    #                 automatic_backup_retention_days: 1,
    #                 daily_automatic_backup_start_time: "DailyTime",
    #                 deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #                 endpoint_ip_address_range: "IpAddressRange",
    #                 endpoints: {
    #                   intercluster: {
    #                     dns_name: "DNSName",
    #                     ip_addresses: ["IpAddress"],
    #                     ipv6_addresses: ["IpAddress"]
    #                   },
    #                   management: {
    #                     dns_name: "DNSName",
    #                     ip_addresses: ["IpAddress"],
    #                     ipv6_addresses: ["IpAddress"]
    #                   }
    #                 },
    #                 disk_iops_configuration: {
    #                   mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                   iops: 1
    #                 },
    #                 preferred_subnet_id: "SubnetId",
    #                 route_table_ids: ["RouteTableId"],
    #                 throughput_capacity: 1,
    #                 weekly_maintenance_start_time: "WeeklyTime",
    #                 fsx_admin_password: "AdminPassword",
    #                 ha_pairs: 1,
    #                 throughput_capacity_per_ha_pair: 1,
    #                 endpoint_ipv6_address_range: "Ipv6AddressRange"
    #               },
    #               file_system_type_version: "FileSystemTypeVersion",
    #               open_zfs_configuration: {
    #                 automatic_backup_retention_days: 1,
    #                 copy_tags_to_backups: false,
    #                 copy_tags_to_volumes: false,
    #                 daily_automatic_backup_start_time: "DailyTime",
    #                 deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #                 throughput_capacity: 1,
    #                 weekly_maintenance_start_time: "WeeklyTime",
    #                 disk_iops_configuration: {
    #                   mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                   iops: 1
    #                 },
    #                 root_volume_id: "VolumeId",
    #                 preferred_subnet_id: "SubnetId",
    #                 endpoint_ip_address_range: "IpAddressRange",
    #                 endpoint_ipv6_address_range: "Ipv6AddressRange",
    #                 route_table_ids: ["RouteTableId"],
    #                 endpoint_ip_address: "IpAddress",
    #                 endpoint_ipv6_address: "IpAddress",
    #                 read_cache_configuration: {
    #                   sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                   size_gi_b: 1
    #                 }
    #               },
    #               network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #             },
    #             failure_details: {
    #               message: "ErrorMessage"
    #             },
    #             target_volume_values: {
    #               # recursive Volume
    #             },
    #             target_snapshot_values: {
    #               resource_arn: "ResourceARN",
    #               snapshot_id: "SnapshotId",
    #               name: "SnapshotName",
    #               volume_id: "VolumeId",
    #               creation_time: Time.now,
    #               lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #               lifecycle_transition_reason: {
    #                 message: "ErrorMessage"
    #               },
    #               tags: [
    #                 {
    #                   key: "TagKey", # required
    #                   value: "TagValue", # required
    #                 }
    #               ],
    #               administrative_actions: {
    #                 # recursive AdministrativeActions
    #               }
    #             },
    #             total_transfer_bytes: 1,
    #             remaining_transfer_bytes: 1,
    #             message: "ErrorMessage"
    #           }
    #         ],
    #         open_zfs_configuration: {
    #           parent_volume_id: "VolumeId",
    #           volume_path: "VolumePath",
    #           storage_capacity_reservation_gi_b: 1,
    #           storage_capacity_quota_gi_b: 1,
    #           record_size_ki_b: 1,
    #           data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #           copy_tags_to_snapshots: false,
    #           origin_snapshot: {
    #             snapshot_arn: "ResourceARN",
    #             copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #           },
    #           read_only: false,
    #           nfs_exports: [
    #             {
    #               client_configurations: [ # required
    #                 {
    #                   clients: "OpenZFSClients", # required
    #                   options: ["OpenZFSNfsExportOption"], # required
    #                 }
    #               ]
    #             }
    #           ],
    #           user_and_group_quotas: [
    #             {
    #               type: "USER" # One of: ["USER", "GROUP"], # required
    #               id: 1, # required
    #               storage_capacity_quota_gi_b: 1, # required
    #             }
    #           ],
    #           restore_to_snapshot: "SnapshotId",
    #           delete_intermediate_snaphots: false,
    #           delete_cloned_volumes: false,
    #           delete_intermediate_data: false,
    #           source_snapshot_arn: "ResourceARN",
    #           destination_snapshot: "SnapshotId",
    #           copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #         }
    #       },
    #       size_in_bytes: 1
    #     }
    #   }
    # @return [Types::CreateBackupResponse]
    def create_backup(params = {}, options = {})
      request = build_request(:create_backup, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon FSx for Lustre data repository association (DRA). A data
    #             repository association is a link between a directory on the file system and
    #             an Amazon S3 bucket or prefix. You can have a maximum of 8 data repository
    #             associations on a file system. Data repository associations are supported
    #             on all FSx for Lustre 2.12 and 2.15 file systems, excluding
    #             <code>scratch_1</code> deployment type.</p>
    #          <p>Each data repository association must have a unique Amazon FSx file
    #             system directory and a unique S3 bucket or prefix associated with it. You
    #             can configure a data repository association for automatic import only,
    #             for automatic export only, or for both. To learn more about linking a
    #             data repository to your file system, see 
    #             <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html">Linking your file system to an S3 bucket</a>.</p>
    #          <note>
    #             <p>
    #                <code>CreateDataRepositoryAssociation</code> isn't supported
    #             on Amazon File Cache resources. To create a DRA on Amazon File Cache,
    #             use the <code>CreateFileCache</code> operation.</p>
    #          </note>
    # @param [Hash, Types::CreateDataRepositoryAssociationRequest] params
    # @option params [String] :file_system_id
    #   <p>The globally unique ID of the file system, assigned by Amazon FSx.</p>
    # @option params [String] :file_system_path
    #   <p>A path on the file system that points to a high-level directory (such
    #               as <code>/ns1/</code>) or subdirectory (such as <code>/ns1/subdir/</code>)
    #               that will be mapped 1-1 with <code>DataRepositoryPath</code>.
    #               The leading forward slash in the name is required. Two data repository
    #               associations cannot have overlapping file system paths. For example, if
    #               a data repository is associated with file system path <code>/ns1/</code>,
    #               then you cannot link another data repository with file system
    #               path <code>/ns1/ns2</code>.</p>
    #            <p>This path specifies where in your file system files will be exported
    #               from or imported to. This file system directory can be linked to only one
    #               Amazon S3 bucket, and no other S3 bucket can be linked to the directory.</p>
    #            <note>
    #               <p>If you specify only a forward slash (<code>/</code>) as the file system
    #               path, you can link only one data repository to the file system. You can only specify
    #               "/" as the file system path for the first data repository associated with a file system.</p>
    #            </note>
    # @option params [String] :data_repository_path
    #   <p>The path to the Amazon S3 data repository that will be linked to the file
    #               system. The path can be an S3 bucket or prefix in the format
    #               <code>s3://bucket-name/prefix/</code> (where <code>prefix</code>
    #               is optional). This path specifies where in the S3 data repository
    #               files will be imported from or exported to.</p>
    # @option params [Boolean] :batch_import_meta_data_on_create
    #   <p>Set to <code>true</code> to run an import data repository task to import
    #               metadata from the data repository to the file system after the data repository
    #               association is created. Default is <code>false</code>.</p>
    # @option params [Integer] :imported_file_chunk_size
    #   <p>For files imported from a data repository, this value determines the stripe count and
    #               maximum amount of data per file (in MiB) stored on a single physical disk. The maximum
    #               number of disks that a single file can be striped across is limited by the total number
    #               of disks that make up the file system.</p>
    #            <p>The default chunk size is 1,024 MiB (1 GiB) and can go as high as 512,000 MiB (500
    #               GiB). Amazon S3 objects have a maximum size of 5 TB.</p>
    # @option params [Types::S3DataRepositoryConfiguration] :s3
    #   <p>The configuration for an Amazon S3 data repository linked to an
    #               Amazon FSx Lustre file system with a data repository association.
    #               The configuration defines which file events (new, changed, or
    #               deleted files or directories) are automatically imported from
    #               the linked data repository to the file system or automatically
    #               exported from the file system to the data repository.</p>
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #     file_system_path: "Namespace",
    #     data_repository_path: "ArchivePath", # required
    #     batch_import_meta_data_on_create: false,
    #     imported_file_chunk_size: 1,
    #     s3: {
    #       auto_import_policy: {
    #         events: ["NEW" # One of: ["NEW", "CHANGED", "DELETED"]]
    #       },
    #       auto_export_policy: {
    #         events: ["NEW" # One of: ["NEW", "CHANGED", "DELETED"]]
    #       }
    #     },
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_data_repository_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association: {
    #       association_id: "DataRepositoryAssociationId",
    #       resource_arn: "ResourceARN",
    #       file_system_id: "FileSystemId",
    #       lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #       failure_details: {
    #         message: "ErrorMessage"
    #       },
    #       file_system_path: "Namespace",
    #       data_repository_path: "ArchivePath",
    #       batch_import_meta_data_on_create: false,
    #       imported_file_chunk_size: 1,
    #       s3: {
    #         auto_import_policy: {
    #           events: ["NEW" # One of: ["NEW", "CHANGED", "DELETED"]]
    #         },
    #         auto_export_policy: {
    #           events: ["NEW" # One of: ["NEW", "CHANGED", "DELETED"]]
    #         }
    #       },
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       creation_time: Time.now,
    #       file_cache_id: "FileCacheId",
    #       file_cache_path: "Namespace",
    #       data_repository_subdirectories: ["Namespace"],
    #       nfs: {
    #         version: "NFS3" # One of: ["NFS3"], # required
    #         dns_ips: ["IpAddress"],
    #         auto_export_policy: {
    #           events: ["NEW" # One of: ["NEW", "CHANGED", "DELETED"]]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateDataRepositoryAssociationResponse]
    def create_data_repository_association(params = {}, options = {})
      request = build_request(:create_data_repository_association, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon FSx for Lustre data repository task.
    #             A <code>CreateDataRepositoryTask</code> operation will fail if a data
    #             repository is not linked to the FSx file system.</p>
    #          <p>You use import and export data repository tasks to perform bulk operations between your
    #             FSx for Lustre file system and its linked data repositories. An example of a data repository
    #             task is exporting any data and metadata changes, including POSIX metadata, to files, directories,
    #             and symbolic links (symlinks) from your FSx file system to a linked data repository.</p>
    #          <p>You use release data repository tasks to release data from your file system for files that
    #             are exported to S3. The metadata of released files remains on the file system so users or applications
    #             can still access released files by reading the files again, which will restore data from
    #             Amazon S3 to the FSx for Lustre file system.</p>
    #          <p>To learn more about data repository tasks, see 
    #             <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-repository-tasks.html">Data Repository Tasks</a>. 
    #             To learn more about linking a data repository to your file system, see 
    #             <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html">Linking your file system to an S3 bucket</a>.</p>
    # @param [Hash, Types::CreateDataRepositoryTaskRequest] params
    # @option params [String] :type
    #   <p>Specifies the type of data repository task to create.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EXPORT_TO_REPOSITORY</code> tasks export from your
    #                   Amazon FSx for Lustre file system to a linked data repository.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPORT_METADATA_FROM_REPOSITORY</code> tasks import metadata
    #                   changes from a linked S3 bucket to your Amazon FSx for Lustre file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RELEASE_DATA_FROM_FILESYSTEM</code> tasks release files in
    #                   your Amazon FSx for Lustre file system that have been exported to a linked
    #                   S3 bucket and that meet your specified release criteria.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AUTO_RELEASE_DATA</code> tasks automatically release files from
    #                   an Amazon File Cache resource.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :paths
    #   <p>A list of paths for the data repository task to use when the task is processed.
    #               If a path that you provide isn't valid, the task fails. If you don't provide
    #               paths, the default behavior is to export all files to S3 (for export tasks), import
    #               all files from S3 (for import tasks), or release all exported files that meet the
    #               last accessed time criteria (for release tasks).</p>
    #            <ul>
    #               <li>
    #                  <p>For export tasks, the list contains paths on the FSx for Lustre file system
    #                   from which the files are exported to the Amazon S3 bucket. The default path is the
    #                   file system root directory. The paths you provide need to be relative to the mount
    #                   point of the file system. If the mount point is <code>/mnt/fsx</code> and
    #                   <code>/mnt/fsx/path1</code> is a directory or file on the file system you want
    #                   to export, then the path to provide is <code>path1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For import tasks, the list contains paths in the Amazon S3 bucket
    #                   from which POSIX metadata changes are imported to the FSx for Lustre file system.
    #                   The path can be an S3 bucket or prefix in the format
    #                   <code>s3://bucket-name/prefix</code> (where <code>prefix</code> is optional).</p>
    #               </li>
    #               <li>
    #                  <p>For release tasks, the list contains directory or file paths on the
    #                   FSx for Lustre file system from which to release exported files. If a directory is
    #                   specified, files within the directory are released. If a file path is specified,
    #                   only that file is released. To release all exported files in the file system,
    #                   specify a forward slash (/) as the path.</p>
    #                  <note>
    #                     <p>A file must also meet the last accessed time criteria
    #                       specified in  for the
    #                       file to be released.</p>
    #                  </note>
    #               </li>
    #            </ul>
    # @option params [String] :file_system_id
    #   <p>The globally unique ID of the file system, assigned by Amazon FSx.</p>
    # @option params [Types::CompletionReport] :report
    #   <p>Defines whether or not Amazon FSx provides a CompletionReport once the task has completed. 
    #               A CompletionReport provides a detailed  report on the files that Amazon FSx processed that meet the criteria specified by the 
    #               <code>Scope</code> parameter. For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/task-completion-report.html">Working with Task Completion Reports</a>.</p>
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    # @option params [Integer] :capacity_to_release
    #   <p>Specifies the amount of data to release, in GiB, by an Amazon File Cache
    #               <code>AUTO_RELEASE_DATA</code> task that automatically releases files from the cache.</p>
    # @option params [Types::ReleaseConfiguration] :release_configuration
    #   <p>The configuration that specifies the last accessed time criteria for files
    #               that will be released from an Amazon FSx for Lustre file system.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "EXPORT_TO_REPOSITORY" # One of: ["EXPORT_TO_REPOSITORY", "IMPORT_METADATA_FROM_REPOSITORY", "RELEASE_DATA_FROM_FILESYSTEM", "AUTO_RELEASE_DATA"], # required
    #     paths: ["DataRepositoryTaskPath"],
    #     file_system_id: "FileSystemId", # required
    #     report: { # required
    #       enabled: false, # required
    #       path: "ArchivePath",
    #       format: "REPORT_CSV_20191124" # One of: ["REPORT_CSV_20191124"],
    #       scope: "FAILED_FILES_ONLY" # One of: ["FAILED_FILES_ONLY"]
    #     },
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     capacity_to_release: 1,
    #     release_configuration: {
    #       duration_since_last_access: {
    #         unit: "DAYS" # One of: ["DAYS"],
    #         value: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_data_repository_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_repository_task: {
    #       task_id: "TaskId", # required
    #       lifecycle: "PENDING" # One of: ["PENDING", "EXECUTING", "FAILED", "SUCCEEDED", "CANCELED", "CANCELING"], # required
    #       type: "EXPORT_TO_REPOSITORY" # One of: ["EXPORT_TO_REPOSITORY", "IMPORT_METADATA_FROM_REPOSITORY", "RELEASE_DATA_FROM_FILESYSTEM", "AUTO_RELEASE_DATA"], # required
    #       creation_time: Time.now, # required
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       resource_arn: "ResourceARN",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       file_system_id: "FileSystemId",
    #       paths: ["DataRepositoryTaskPath"],
    #       failure_details: {
    #         message: "ErrorMessage"
    #       },
    #       status: {
    #         total_count: 1,
    #         succeeded_count: 1,
    #         failed_count: 1,
    #         last_updated_time: Time.now,
    #         released_capacity: 1
    #       },
    #       report: {
    #         enabled: false, # required
    #         path: "ArchivePath",
    #         format: "REPORT_CSV_20191124" # One of: ["REPORT_CSV_20191124"],
    #         scope: "FAILED_FILES_ONLY" # One of: ["FAILED_FILES_ONLY"]
    #       },
    #       capacity_to_release: 1,
    #       file_cache_id: "FileCacheId",
    #       release_configuration: {
    #         duration_since_last_access: {
    #           unit: "DAYS" # One of: ["DAYS"],
    #           value: 1
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateDataRepositoryTaskResponse]
    def create_data_repository_task(params = {}, options = {})
      request = build_request(:create_data_repository_task, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon File Cache resource.</p>
    #          <p>You can use this operation with a client request token in the request that
    #             Amazon File Cache uses to ensure idempotent creation. 
    #             If a cache with the specified client request token exists and the parameters
    #             match, <code>CreateFileCache</code> returns the description of the existing
    #             cache. If a cache with the specified client request token exists and the
    #             parameters don't match, this call returns <code>IncompatibleParameterError</code>.
    #             If a file cache with the specified client request token doesn't exist,
    #             <code>CreateFileCache</code> does the following: </p>
    #          <ul>
    #             <li>
    #                <p>Creates a new, empty Amazon File Cache resource with an assigned ID, and
    #                     an initial lifecycle state of <code>CREATING</code>.</p>
    #             </li>
    #             <li>
    #                <p>Returns the description of the cache in JSON format.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>The <code>CreateFileCache</code> call returns while the cache's lifecycle
    #                 state is still <code>CREATING</code>. You can check the cache creation status
    #                 by calling the <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileCaches.html">DescribeFileCaches</a> operation, which returns the cache state
    #                 along with other information.</p>
    #          </note>
    # @param [Hash, Types::CreateFileCacheRequest] params
    # @option params [String] :client_request_token
    #   <p>An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #            <p>By using the idempotent operation, you can retry a <code>CreateFileCache</code>
    #               operation without the risk of creating an extra cache. This approach can be useful
    #               when an initial call fails in a way that makes it unclear whether a cache was created.
    #               Examples are if a transport level timeout occurred, or your connection was reset.
    #               If you use the same client request token and the initial call created a cache, the
    #               client receives success as long as the parameters are the same.</p>
    # @option params [String] :file_cache_type
    #   <p>The type of cache that you're creating, which
    #               must be <code>LUSTRE</code>.</p>
    # @option params [String] :file_cache_type_version
    #   <p>Sets the Lustre version for the cache that you're creating,
    #               which must be <code>2.12</code>.</p>
    # @option params [Integer] :storage_capacity
    #   <p>The storage capacity of the cache in gibibytes (GiB). Valid values
    #               are 1200 GiB, 2400 GiB, and increments of 2400 GiB.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of subnet IDs that the cache will be accessible from. You can specify only
    #               one subnet ID in a call to the <code>CreateFileCache</code> operation.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>A list of IDs specifying the security groups to apply to all network interfaces
    #               created for Amazon File Cache access. This list isn't returned in later requests to
    #               describe the cache.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    # @option params [Boolean] :copy_tags_to_data_repository_associations
    #   <p>A boolean flag indicating whether tags for the cache should be copied to
    #               data repository associations. This value defaults to false.</p>
    # @option params [String] :kms_key_id
    #   <p>Specifies the ID of the Key Management Service (KMS) key to use for encrypting data on
    #               an Amazon File Cache. If a <code>KmsKeyId</code> isn't specified, the Amazon FSx-managed
    #               KMS key for your account is used. For more information,
    #               see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html">Encrypt</a> in the
    #               <i>Key Management Service API Reference</i>.</p>
    # @option params [Types::CreateFileCacheLustreConfiguration] :lustre_configuration
    #   <p>The configuration for the Amazon File Cache resource being created.</p>
    # @option params [Array<Types::FileCacheDataRepositoryAssociation>] :data_repository_associations
    #   <p>A list of up to 8 configurations for data repository associations (DRAs) to
    #               be created during the cache creation. The DRAs link the cache to either an
    #               Amazon S3 data repository or a Network File System (NFS) data repository that supports the NFSv3 protocol.</p>
    #            <p>The DRA configurations must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>All configurations on the list must be of the
    #                   same data repository type, either all S3 or all NFS. A cache
    #                   can't link to different data repository types at the same time.</p>
    #               </li>
    #               <li>
    #                  <p>An NFS DRA must link to an NFS file system that
    #                   supports the NFSv3 protocol.</p>
    #               </li>
    #            </ul>
    #            <p>DRA automatic import and automatic export is not supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     file_cache_type: "LUSTRE" # One of: ["LUSTRE"], # required
    #     file_cache_type_version: "FileSystemTypeVersion", # required
    #     storage_capacity: 1, # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     copy_tags_to_data_repository_associations: false,
    #     kms_key_id: "KmsKeyId",
    #     lustre_configuration: {
    #       per_unit_storage_throughput: 1, # required
    #       deployment_type: "CACHE_1" # One of: ["CACHE_1"], # required
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       metadata_configuration: { # required
    #         storage_capacity: 1, # required
    #       }
    #     },
    #     data_repository_associations: [
    #       {
    #         file_cache_path: "Namespace", # required
    #         data_repository_path: "ArchivePath", # required
    #         data_repository_subdirectories: ["Namespace"],
    #         nfs: {
    #           version: "NFS3" # One of: ["NFS3"], # required
    #           dns_ips: ["IpAddress"]
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_file_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_cache: {
    #       owner_id: "AWSAccountId",
    #       creation_time: Time.now,
    #       file_cache_id: "FileCacheId",
    #       file_cache_type: "LUSTRE" # One of: ["LUSTRE"],
    #       file_cache_type_version: "FileSystemTypeVersion",
    #       lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "UPDATING", "FAILED"],
    #       failure_details: {
    #         message: "ErrorMessage"
    #       },
    #       storage_capacity: 1,
    #       vpc_id: "VpcId",
    #       subnet_ids: ["SubnetId"],
    #       network_interface_ids: ["NetworkInterfaceId"],
    #       dns_name: "DNSName",
    #       kms_key_id: "KmsKeyId",
    #       resource_arn: "ResourceARN",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       copy_tags_to_data_repository_associations: false,
    #       lustre_configuration: {
    #         per_unit_storage_throughput: 1,
    #         deployment_type: "CACHE_1" # One of: ["CACHE_1"],
    #         mount_name: "LustreFileSystemMountName",
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         metadata_configuration: {
    #           storage_capacity: 1, # required
    #         },
    #         log_configuration: {
    #           level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #           destination: "GeneralARN"
    #         }
    #       },
    #       data_repository_association_ids: ["DataRepositoryAssociationId"]
    #     }
    #   }
    # @return [Types::CreateFileCacheResponse]
    def create_file_cache(params = {}, options = {})
      request = build_request(:create_file_cache, params)
      request.send_request(options)
    end

    # <p>Creates a new, empty Amazon FSx file system. You can create the following supported 
    #         Amazon FSx file systems using the <code>CreateFileSystem</code> API operation:</p>
    #          <ul>
    #             <li>
    #                <p>Amazon FSx for Lustre</p>
    #             </li>
    #             <li>
    #                <p>Amazon FSx for NetApp ONTAP</p>
    #             </li>
    #             <li>
    #                <p>Amazon FSx for OpenZFS</p>
    #             </li>
    #             <li>
    #                <p>Amazon FSx for Windows File Server</p>
    #             </li>
    #          </ul>
    #          <p>This operation requires a client request token in the request that Amazon FSx uses
    #             to ensure idempotent creation. This means that calling the operation multiple times with
    #             the same client request token has no effect. By using the idempotent operation, you can
    #             retry a <code>CreateFileSystem</code> operation without the risk of creating an extra
    #             file system. This approach can be useful when an initial call fails in a way that makes
    #             it unclear whether a file system was created. Examples are if a transport level timeout
    #             occurred, or your connection was reset. If you use the same client request token and the
    #             initial call created a file system, the client receives success as long as the
    #             parameters are the same.</p>
    #          <p>If a file system with the specified client request token exists and the parameters
    #             match, <code>CreateFileSystem</code> returns the description of the existing file
    #             system. If a file system with the specified client request token exists and the
    #             parameters don't match, this call returns <code>IncompatibleParameterError</code>. If a
    #             file system with the specified client request token doesn't exist,
    #                 <code>CreateFileSystem</code> does the following:</p>
    #          <ul>
    #             <li>
    #                <p>Creates a new, empty Amazon FSx file system with an assigned ID, and
    #                     an initial lifecycle state of <code>CREATING</code>.</p>
    #             </li>
    #             <li>
    #                <p>Returns the description of the file system in JSON format.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>The <code>CreateFileSystem</code> call returns while the file system's lifecycle
    #                 state is still <code>CREATING</code>. You can check the file-system creation status
    #                 by calling the <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html">DescribeFileSystems</a> operation, which returns the file system state
    #                 along with other information.</p>
    #          </note>
    # @param [Hash, Types::CreateFileSystemRequest] params
    # @option params [String] :client_request_token
    #   <p>A string of up to 63 ASCII characters that Amazon FSx uses to ensure
    #               idempotent creation. This string is automatically filled on your behalf when you use the
    #                   Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :file_system_type
    #   <p>The type of Amazon FSx file system to create. Valid values are
    #                   <code>WINDOWS</code>, <code>LUSTRE</code>, <code>ONTAP</code>, and
    #                   <code>OPENZFS</code>.</p>
    # @option params [Integer] :storage_capacity
    #   <p>Sets the storage capacity of the file system that you're creating, in gibibytes (GiB).</p>
    #            <p>
    #               <b>FSx for Lustre file systems</b> - The amount of
    #               storage capacity that you can configure depends on the value that you set for
    #                   <code>StorageType</code> and the Lustre <code>DeploymentType</code>, as
    #               follows:</p>
    #            <ul>
    #               <li>
    #                  <p>For <code>SCRATCH_2</code>, <code>PERSISTENT_2</code>, and <code>PERSISTENT_1</code> deployment types 
    #                   using SSD storage type, the valid values are 1200 GiB, 2400 GiB, and increments of 2400 GiB.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>PERSISTENT_1</code> HDD file systems, valid values are increments of 6000 GiB for 
    #                   12 MB/s/TiB file systems and increments of 1800 GiB for 40 MB/s/TiB file systems.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>SCRATCH_1</code> deployment type, valid values are 
    #                   1200 GiB, 2400 GiB, and increments of 3600 GiB.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>FSx for ONTAP file systems</b> - The amount of storage capacity 
    #               that you can configure depends on the value of the <code>HAPairs</code> property. The minimum value is calculated as 1,024 * <code>HAPairs</code> and the maximum is calculated as 524,288 * <code>HAPairs</code>. </p>
    #            <p>
    #               <b>FSx for OpenZFS file systems</b> - The amount of storage capacity that 
    #               you can configure is from 64 GiB up to 524,288 GiB (512 TiB).</p>
    #            <p>
    #               <b>FSx for Windows File Server file systems</b> - The amount
    #               of storage capacity that you can configure depends on the value that you set for
    #                   <code>StorageType</code> as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>For SSD storage, valid values are 32 GiB-65,536 GiB (64 TiB).</p>
    #               </li>
    #               <li>
    #                  <p>For HDD storage, valid values are 2000 GiB-65,536 GiB (64 TiB).</p>
    #               </li>
    #            </ul>
    # @option params [String] :storage_type
    #   <p>Sets the storage class for the file system that you're creating. Valid values are
    #                   <code>SSD</code>, <code>HDD</code>, and <code>INTELLIGENT_TIERING</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>Set to <code>SSD</code> to use solid state drive storage. SSD is supported on all Windows,
    #                       Lustre, ONTAP, and OpenZFS deployment types.</p>
    #               </li>
    #               <li>
    #                  <p>Set to <code>HDD</code> to use hard disk drive storage, which is supported on 
    #                       <code>SINGLE_AZ_2</code> and <code>MULTI_AZ_1</code> Windows file system deployment types,
    #                   and on <code>PERSISTENT_1</code> Lustre file system deployment types.</p>
    #               </li>
    #               <li>
    #                  <p>Set to <code>INTELLIGENT_TIERING</code> to use fully elastic, intelligently-tiered storage.
    #                       Intelligent-Tiering is only available for OpenZFS file systems with the Multi-AZ deployment type
    #                       and for Lustre file systems with the Persistent_2 deployment type.</p>
    #               </li>
    #            </ul>
    #            <p>Default value is <code>SSD</code>. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/optimize-fsx-costs.html#storage-type-options"> Storage
    #                   type options</a> in the <i>FSx for Windows File Server User
    #                   Guide</i>, <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-fsx-lustre.html#lustre-storage-classes">FSx for Lustre storage classes</a>
    #               in the <i>FSx for Lustre User Guide</i>, and <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/performance-intelligent-tiering">Working with Intelligent-Tiering</a>
    #               in the <i>Amazon FSx for OpenZFS User Guide</i>.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>Specifies the IDs of the subnets that the file system will be accessible from. For
    #               Windows and ONTAP <code>MULTI_AZ_1</code> deployment types,provide exactly two subnet
    #               IDs, one for the preferred file server and one for the standby file server. You specify
    #               one of these subnets as the preferred subnet using the <code>WindowsConfiguration >
    #                   PreferredSubnetID</code> or <code>OntapConfiguration > PreferredSubnetID</code>
    #               properties. For more information about Multi-AZ file system configuration, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html">
    #                   Availability and durability: Single-AZ and Multi-AZ file systems</a> in the
    #                   <i>Amazon FSx for Windows User Guide</i> and <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/high-availability-multiAZ.html">
    #                   Availability and durability</a> in the <i>Amazon FSx for ONTAP User
    #                   Guide</i>.</p>
    #            <p>For Windows <code>SINGLE_AZ_1</code> and <code>SINGLE_AZ_2</code> and all Lustre 
    #               deployment types, provide exactly one subnet ID.
    #              The file server is launched in that subnet's Availability Zone.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>A list of IDs specifying the security groups to apply to all network interfaces
    #               created for file system access. This list isn't returned in later requests to
    #               describe the file system.</p>
    #            <important>
    #               <p>You must specify a security group if you are creating a Multi-AZ 
    #               FSx for ONTAP file system in a VPC subnet that has been shared with you.</p>
    #            </important>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to apply to the file system that's being created. The key value of the
    #                   <code>Name</code> tag appears in the console as the file system name.</p>
    # @option params [String] :kms_key_id
    #   <p>Specifies the ID of the Key Management Service (KMS) key to use for encrypting data on
    #                Amazon FSx file systems, as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon FSx for Lustre <code>PERSISTENT_1</code>
    #                   and <code>PERSISTENT_2</code> deployment types only.</p>
    #                  <p>
    #                     <code>SCRATCH_1</code> and <code>SCRATCH_2</code> types are encrypted using 
    #                       the Amazon FSx service KMS key for your account.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for NetApp ONTAP</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for OpenZFS</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for Windows File Server</p>
    #               </li>
    #            </ul>
    #            <p>If a <code>KmsKeyId</code> isn't specified, the Amazon FSx-managed KMS key for your account is used.
    #               For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html">Encrypt</a> in the
    #               <i>Key Management Service API Reference</i>.</p>
    # @option params [Types::CreateFileSystemWindowsConfiguration] :windows_configuration
    #   <p>The Microsoft Windows configuration for the file system that's being created.</p>
    # @option params [Types::CreateFileSystemLustreConfiguration] :lustre_configuration
    #   <p>The Lustre configuration for the file system being created.</p>
    #            <note>
    #               <p>The following parameters are not supported for file systems
    #               with a data repository association created with
    #               .</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>AutoImportPolicy</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ExportPath</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ImportedFileChunkSize</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ImportPath</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </note>
    # @option params [Types::CreateFileSystemOntapConfiguration] :ontap_configuration
    #   <p>The ONTAP configuration properties of the FSx for ONTAP file system that you
    #               are creating.</p>
    # @option params [String] :file_system_type_version
    #   <p>For FSx for Lustre file systems, sets the Lustre version for the file system
    #               that you're creating. Valid values are <code>2.10</code>, <code>2.12</code>, and
    #               <code>2.15</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>2.10</code> is supported by the Scratch and Persistent_1 Lustre 
    #                   deployment types.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>2.12</code> is supported by all Lustre deployment types, except
    #                   for <code>PERSISTENT_2</code> with a metadata configuration mode.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>2.15</code> is supported by all Lustre deployment types and is
    #                   recommended for all new file systems.</p>
    #               </li>
    #            </ul>
    #            <p>Default value is <code>2.10</code>, except for the following deployments:</p>
    #            <ul>
    #               <li>
    #                  <p>Default value is <code>2.12</code> when <code>DeploymentType</code> is set to 
    #                   <code>PERSISTENT_2</code> without a metadata configuration mode.</p>
    #               </li>
    #               <li>
    #                  <p>Default value is <code>2.15</code> when <code>DeploymentType</code> is set to 
    #                   <code>PERSISTENT_2</code> with a metadata configuration mode.</p>
    #               </li>
    #            </ul>
    # @option params [Types::CreateFileSystemOpenZFSConfiguration] :open_zfs_configuration
    #   <p>The OpenZFS configuration for the file system that's being created.</p>
    # @option params [String] :network_type
    #   <p>The network type of the Amazon FSx file system that you
    #               are creating. Valid values are <code>IPV4</code> (which supports
    #               IPv4 only) and <code>DUAL</code> (for dual-stack mode, which supports
    #               both IPv4 and IPv6). The default is <code>IPV4</code>. Supported
    #               for FSx for OpenZFS, FSx for ONTAP, and FSx for Windows File Server
    #               file systems.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"], # required
    #     storage_capacity: 1,
    #     storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     kms_key_id: "KmsKeyId",
    #     windows_configuration: {
    #       active_directory_id: "DirectoryId",
    #       self_managed_active_directory_configuration: {
    #         domain_name: "ActiveDirectoryFullyQualifiedName", # required
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #         file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #         user_name: "DirectoryUserName", # required
    #         password: "DirectoryPassword", # required
    #         dns_ips: ["IpAddress"], # required
    #       },
    #       deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #       preferred_subnet_id: "SubnetId",
    #       throughput_capacity: 1, # required
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       daily_automatic_backup_start_time: "DailyTime",
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       aliases: ["AlternateDNSName"],
    #       audit_log_configuration: {
    #         file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #         file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #         audit_log_destination: "GeneralARN"
    #       },
    #       disk_iops_configuration: {
    #         mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #         iops: 1
    #       }
    #     },
    #     lustre_configuration: {
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       import_path: "ArchivePath",
    #       export_path: "ArchivePath",
    #       imported_file_chunk_size: 1,
    #       deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #       auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #       per_unit_storage_throughput: 1,
    #       daily_automatic_backup_start_time: "DailyTime",
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #       data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #       efa_enabled: false,
    #       log_configuration: {
    #         level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #         destination: "GeneralARN"
    #       },
    #       root_squash_configuration: {
    #         root_squash: "LustreRootSquash",
    #         no_squash_nids: ["LustreNoSquashNid"]
    #       },
    #       metadata_configuration: {
    #         iops: 1,
    #         mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #       },
    #       throughput_capacity: 1,
    #       data_read_cache_configuration: {
    #         sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #         size_gi_b: 1
    #       }
    #     },
    #     ontap_configuration: {
    #       automatic_backup_retention_days: 1,
    #       daily_automatic_backup_start_time: "DailyTime",
    #       deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"], # required
    #       endpoint_ip_address_range: "IpAddressRange",
    #       fsx_admin_password: "AdminPassword",
    #       disk_iops_configuration: {
    #         mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #         iops: 1
    #       },
    #       preferred_subnet_id: "SubnetId",
    #       route_table_ids: ["RouteTableId"],
    #       throughput_capacity: 1,
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       ha_pairs: 1,
    #       throughput_capacity_per_ha_pair: 1,
    #       endpoint_ipv6_address_range: "Ipv6AddressRange"
    #     },
    #     file_system_type_version: "FileSystemTypeVersion",
    #     open_zfs_configuration: {
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       copy_tags_to_volumes: false,
    #       daily_automatic_backup_start_time: "DailyTime",
    #       deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"], # required
    #       throughput_capacity: 1, # required
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       disk_iops_configuration: {
    #         mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #         iops: 1
    #       },
    #       root_volume_configuration: {
    #         record_size_ki_b: 1,
    #         data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #         nfs_exports: [
    #           {
    #             client_configurations: [ # required
    #               {
    #                 clients: "OpenZFSClients", # required
    #                 options: ["OpenZFSNfsExportOption"], # required
    #               }
    #             ]
    #           }
    #         ],
    #         user_and_group_quotas: [
    #           {
    #             type: "USER" # One of: ["USER", "GROUP"], # required
    #             id: 1, # required
    #             storage_capacity_quota_gi_b: 1, # required
    #           }
    #         ],
    #         copy_tags_to_snapshots: false,
    #         read_only: false
    #       },
    #       preferred_subnet_id: "SubnetId",
    #       endpoint_ip_address_range: "IpAddressRange",
    #       endpoint_ipv6_address_range: "Ipv6AddressRange",
    #       route_table_ids: ["RouteTableId"],
    #       read_cache_configuration: {
    #         sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #         size_gi_b: 1
    #       }
    #     },
    #     network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #   }
    #   options = {}
    #   response = client.create_file_system(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_system: {
    #       owner_id: "AWSAccountId",
    #       creation_time: Time.now,
    #       file_system_id: "FileSystemId",
    #       file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #       lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #       failure_details: {
    #         message: "ErrorMessage"
    #       },
    #       storage_capacity: 1,
    #       storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #       vpc_id: "VpcId",
    #       subnet_ids: ["SubnetId"],
    #       network_interface_ids: ["NetworkInterfaceId"],
    #       dns_name: "DNSName",
    #       kms_key_id: "KmsKeyId",
    #       resource_arn: "ResourceARN",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       windows_configuration: {
    #         active_directory_id: "DirectoryId",
    #         self_managed_active_directory_configuration: {
    #           domain_name: "ActiveDirectoryFullyQualifiedName",
    #           organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #           file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #           user_name: "DirectoryUserName",
    #           dns_ips: ["IpAddress"]
    #         },
    #         deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #         remote_administration_endpoint: "DNSName",
    #         preferred_subnet_id: "SubnetId",
    #         preferred_file_server_ip: "IpAddress",
    #         throughput_capacity: 1,
    #         maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         daily_automatic_backup_start_time: "DailyTime",
    #         automatic_backup_retention_days: 1,
    #         copy_tags_to_backups: false,
    #         aliases: [
    #           {
    #             name: "AlternateDNSName",
    #             lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #           }
    #         ],
    #         audit_log_configuration: {
    #           file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #           file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #           audit_log_destination: "GeneralARN"
    #         },
    #         disk_iops_configuration: {
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #           iops: 1
    #         },
    #         preferred_file_server_ipv6: "IpAddress"
    #       },
    #       lustre_configuration: {
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         data_repository_configuration: {
    #           lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #           import_path: "ArchivePath",
    #           export_path: "ArchivePath",
    #           imported_file_chunk_size: 1,
    #           auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #           failure_details: {
    #             message: "ErrorMessage"
    #           }
    #         },
    #         deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #         per_unit_storage_throughput: 1,
    #         mount_name: "LustreFileSystemMountName",
    #         daily_automatic_backup_start_time: "DailyTime",
    #         automatic_backup_retention_days: 1,
    #         copy_tags_to_backups: false,
    #         drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #         data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #         log_configuration: {
    #           level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #           destination: "GeneralARN"
    #         },
    #         root_squash_configuration: {
    #           root_squash: "LustreRootSquash",
    #           no_squash_nids: ["LustreNoSquashNid"]
    #         },
    #         metadata_configuration: {
    #           iops: 1,
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #         },
    #         efa_enabled: false,
    #         throughput_capacity: 1,
    #         data_read_cache_configuration: {
    #           sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #           size_gi_b: 1
    #         }
    #       },
    #       administrative_actions: [
    #         {
    #           administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #           progress_percent: 1,
    #           request_time: Time.now,
    #           status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #           target_file_system_values: {
    #             # recursive FileSystem
    #           },
    #           failure_details: {
    #             message: "ErrorMessage"
    #           },
    #           target_volume_values: {
    #             creation_time: Time.now,
    #             file_system_id: "FileSystemId",
    #             lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #             name: "VolumeName",
    #             ontap_configuration: {
    #               flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #               junction_path: "JunctionPath",
    #               security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #               size_in_megabytes: 1,
    #               storage_efficiency_enabled: false,
    #               storage_virtual_machine_id: "StorageVirtualMachineId",
    #               storage_virtual_machine_root: false,
    #               tiering_policy: {
    #                 cooling_period: 1,
    #                 name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #               },
    #               uuid: "UUID",
    #               ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #               snapshot_policy: "SnapshotPolicy",
    #               copy_tags_to_backups: false,
    #               snaplock_configuration: {
    #                 audit_log_volume: false,
    #                 autocommit_period: {
    #                   type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #                   value: 1
    #                 },
    #                 privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #                 retention_period: {
    #                   default_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   },
    #                   minimum_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   },
    #                   maximum_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   }
    #                 },
    #                 snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #                 volume_append_mode_enabled: false
    #               },
    #               volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #               aggregate_configuration: {
    #                 aggregates: ["Aggregate"],
    #                 total_constituents: 1
    #               },
    #               size_in_bytes: 1
    #             },
    #             resource_arn: "ResourceARN",
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             volume_id: "VolumeId",
    #             volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #             lifecycle_transition_reason: {
    #               message: "ErrorMessage"
    #             },
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             },
    #             open_zfs_configuration: {
    #               parent_volume_id: "VolumeId",
    #               volume_path: "VolumePath",
    #               storage_capacity_reservation_gi_b: 1,
    #               storage_capacity_quota_gi_b: 1,
    #               record_size_ki_b: 1,
    #               data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #               copy_tags_to_snapshots: false,
    #               origin_snapshot: {
    #                 snapshot_arn: "ResourceARN",
    #                 copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #               },
    #               read_only: false,
    #               nfs_exports: [
    #                 {
    #                   client_configurations: [ # required
    #                     {
    #                       clients: "OpenZFSClients", # required
    #                       options: ["OpenZFSNfsExportOption"], # required
    #                     }
    #                   ]
    #                 }
    #               ],
    #               user_and_group_quotas: [
    #                 {
    #                   type: "USER" # One of: ["USER", "GROUP"], # required
    #                   id: 1, # required
    #                   storage_capacity_quota_gi_b: 1, # required
    #                 }
    #               ],
    #               restore_to_snapshot: "SnapshotId",
    #               delete_intermediate_snaphots: false,
    #               delete_cloned_volumes: false,
    #               delete_intermediate_data: false,
    #               source_snapshot_arn: "ResourceARN",
    #               destination_snapshot: "SnapshotId",
    #               copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #             }
    #           },
    #           target_snapshot_values: {
    #             resource_arn: "ResourceARN",
    #             snapshot_id: "SnapshotId",
    #             name: "SnapshotName",
    #             volume_id: "VolumeId",
    #             creation_time: Time.now,
    #             lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #             lifecycle_transition_reason: {
    #               message: "ErrorMessage"
    #             },
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             }
    #           },
    #           total_transfer_bytes: 1,
    #           remaining_transfer_bytes: 1,
    #           message: "ErrorMessage"
    #         }
    #       ],
    #       ontap_configuration: {
    #         automatic_backup_retention_days: 1,
    #         daily_automatic_backup_start_time: "DailyTime",
    #         deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #         endpoint_ip_address_range: "IpAddressRange",
    #         endpoints: {
    #           intercluster: {
    #             dns_name: "DNSName",
    #             ip_addresses: ["IpAddress"],
    #             ipv6_addresses: ["IpAddress"]
    #           },
    #           management: {
    #             dns_name: "DNSName",
    #             ip_addresses: ["IpAddress"],
    #             ipv6_addresses: ["IpAddress"]
    #           }
    #         },
    #         disk_iops_configuration: {
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #           iops: 1
    #         },
    #         preferred_subnet_id: "SubnetId",
    #         route_table_ids: ["RouteTableId"],
    #         throughput_capacity: 1,
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         fsx_admin_password: "AdminPassword",
    #         ha_pairs: 1,
    #         throughput_capacity_per_ha_pair: 1,
    #         endpoint_ipv6_address_range: "Ipv6AddressRange"
    #       },
    #       file_system_type_version: "FileSystemTypeVersion",
    #       open_zfs_configuration: {
    #         automatic_backup_retention_days: 1,
    #         copy_tags_to_backups: false,
    #         copy_tags_to_volumes: false,
    #         daily_automatic_backup_start_time: "DailyTime",
    #         deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #         throughput_capacity: 1,
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         disk_iops_configuration: {
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #           iops: 1
    #         },
    #         root_volume_id: "VolumeId",
    #         preferred_subnet_id: "SubnetId",
    #         endpoint_ip_address_range: "IpAddressRange",
    #         endpoint_ipv6_address_range: "Ipv6AddressRange",
    #         route_table_ids: ["RouteTableId"],
    #         endpoint_ip_address: "IpAddress",
    #         endpoint_ipv6_address: "IpAddress",
    #         read_cache_configuration: {
    #           sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #           size_gi_b: 1
    #         }
    #       },
    #       network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #     }
    #   }
    # @return [Types::CreateFileSystemResponse]
    def create_file_system(params = {}, options = {})
      request = build_request(:create_file_system, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon FSx for Lustre, Amazon FSx for Windows File
    #             Server, or Amazon FSx for OpenZFS file system from an existing Amazon FSx backup.</p>
    #          <p>If a file system with the specified client request token exists and the parameters
    #             match, this operation returns the description of the file system. If a file system
    #             with the specified client request token exists but the parameters don't match, this
    #             call returns <code>IncompatibleParameterError</code>. If a file system with the
    #             specified client request token doesn't exist, this operation does the following:</p>
    #          <ul>
    #             <li>
    #                <p>Creates a new Amazon FSx file system from backup with an assigned ID,
    #                     and an initial lifecycle state of <code>CREATING</code>.</p>
    #             </li>
    #             <li>
    #                <p>Returns the description of the file system.</p>
    #             </li>
    #          </ul>
    #          <p>Parameters like the Active Directory, default share name, automatic backup, and backup
    #             settings default to the parameters of the file system that was backed up, unless
    #             overridden. You can explicitly supply other settings.</p>
    #          <p>By using the idempotent operation, you can retry a
    #                 <code>CreateFileSystemFromBackup</code> call without the risk of creating an extra
    #             file system. This approach can be useful when an initial call fails in a way that makes
    #             it unclear whether a file system was created. Examples are if a transport level timeout
    #             occurred, or your connection was reset. If you use the same client request token and the
    #             initial call created a file system, the client receives a success message as long as the
    #             parameters are the same.</p>
    #          <note>
    #             <p>The <code>CreateFileSystemFromBackup</code> call returns while the file system's
    #                 lifecycle state is still <code>CREATING</code>. You can check the file-system
    #                 creation status by calling the <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html">
    #                     DescribeFileSystems</a> operation, which returns the file system state along
    #                 with other information.</p>
    #          </note>
    # @param [Hash, Types::CreateFileSystemFromBackupRequest] params
    # @option params [String] :backup_id
    #   <p>The ID of the source backup. Specifies the backup that you are copying.</p>
    # @option params [String] :client_request_token
    #   <p>A string of up to 63 ASCII characters that Amazon FSx uses to ensure
    #               idempotent creation. This string is automatically filled on your behalf when you use the
    #                   Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>Specifies the IDs of the subnets that the file system will be accessible from. For Windows <code>MULTI_AZ_1</code> 
    #               file system deployment types, provide exactly two subnet IDs, one for the preferred file server 
    #               and one for the standby file server. You specify one of these subnets as the preferred subnet 
    #               using the <code>WindowsConfiguration > PreferredSubnetID</code> property.</p>
    #            <p>Windows <code>SINGLE_AZ_1</code> and <code>SINGLE_AZ_2</code> file system deployment
    #               types, Lustre file systems, and OpenZFS file systems provide exactly one subnet ID. The
    #               file server is launched in that subnet's Availability Zone.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>A list of IDs for the security groups that apply to the specified network interfaces
    #               created for file system access. These security groups apply to all network interfaces.
    #               This value isn't returned in later <code>DescribeFileSystem</code> requests.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be applied to the file system at file system creation. The key value of
    #               the <code>Name</code> tag appears in the console as the file system
    #               name.</p>
    # @option params [Types::CreateFileSystemWindowsConfiguration] :windows_configuration
    #   <p>The configuration for this Microsoft Windows file system.</p>
    # @option params [Types::CreateFileSystemLustreConfiguration] :lustre_configuration
    #   <p>The Lustre configuration for the file system being created.</p>
    #            <note>
    #               <p>The following parameters are not supported for file systems
    #               with a data repository association created with
    #               .</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>AutoImportPolicy</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ExportPath</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ImportedFileChunkSize</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ImportPath</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </note>
    # @option params [String] :storage_type
    #   <p>Sets the storage type for the Windows, OpenZFS, or Lustre file system that you're creating from
    #               a backup. Valid values are <code>SSD</code>, <code>HDD</code>, and <code>INTELLIGENT_TIERING</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>Set to <code>SSD</code> to use solid state drive storage. SSD is supported on all Windows and OpenZFS
    #                       deployment types.</p>
    #               </li>
    #               <li>
    #                  <p>Set to <code>HDD</code> to use hard disk drive storage. 
    #                       HDD is supported on <code>SINGLE_AZ_2</code> and <code>MULTI_AZ_1</code> FSx for Windows File Server file system deployment types.</p>
    #               </li>
    #               <li>
    #                  <p>Set to <code>INTELLIGENT_TIERING</code> to use fully elastic, intelligently-tiered storage.
    #                       Intelligent-Tiering is only available for OpenZFS file systems with the Multi-AZ deployment type
    #                       and for Lustre file systems with the Persistent_2 deployment type.</p>
    #               </li>
    #            </ul>
    #            <p> The default value is <code>SSD</code>. </p>
    #            <note>
    #               <p>HDD and SSD storage types have different minimum storage capacity requirements. 
    #               A restored file system's storage capacity is tied to the file system that was backed up. 
    #               You can create a file system that uses HDD storage from a backup of a file system that 
    #               used SSD storage if the original SSD file system had a storage capacity of at least 2000 GiB.</p>
    #            </note>
    # @option params [String] :kms_key_id
    #   <p>Specifies the ID of the Key Management Service (KMS) key to use for encrypting data on
    #                Amazon FSx file systems, as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon FSx for Lustre <code>PERSISTENT_1</code>
    #                   and <code>PERSISTENT_2</code> deployment types only.</p>
    #                  <p>
    #                     <code>SCRATCH_1</code> and <code>SCRATCH_2</code> types are encrypted using 
    #                       the Amazon FSx service KMS key for your account.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for NetApp ONTAP</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for OpenZFS</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for Windows File Server</p>
    #               </li>
    #            </ul>
    #            <p>If a <code>KmsKeyId</code> isn't specified, the Amazon FSx-managed KMS key for your account is used.
    #               For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html">Encrypt</a> in the
    #               <i>Key Management Service API Reference</i>.</p>
    # @option params [String] :file_system_type_version
    #   <p>Sets the version for the Amazon FSx for Lustre file system that you're
    #               creating from a backup. Valid values are <code>2.10</code>, <code>2.12</code>,
    #               and <code>2.15</code>.</p>
    #            <p>You can enter a Lustre version that is newer than the backup's
    #               <code>FileSystemTypeVersion</code> setting. If you don't enter a newer Lustre version,
    #               it defaults to the backup's setting.</p>
    # @option params [Types::CreateFileSystemOpenZFSConfiguration] :open_zfs_configuration
    #   <p>The OpenZFS configuration for the file system that's being created. </p>
    # @option params [Integer] :storage_capacity
    #   <p>Sets the storage capacity of the OpenZFS file system that you're creating
    #               from a backup, in gibibytes (GiB). Valid values are from 64 GiB up to 524,288 GiB
    #               (512 TiB). However, the value that you specify must be equal to or greater than the
    #               backup's storage capacity value. If you don't use the <code>StorageCapacity</code>
    #               parameter, the default is the backup's <code>StorageCapacity</code> value.</p>
    #            <p>If used to create a file system other than OpenZFS, you must provide a value
    #               that matches the backup's <code>StorageCapacity</code> value. If you provide any
    #               other value, Amazon FSx responds with an HTTP status code 400 Bad Request. </p>
    # @option params [String] :network_type
    #   <p>Sets the network type for the Amazon FSx for OpenZFS file system
    #               that you're creating from a backup.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_id: "BackupId", # required
    #     client_request_token: "ClientRequestToken",
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     windows_configuration: {
    #       active_directory_id: "DirectoryId",
    #       self_managed_active_directory_configuration: {
    #         domain_name: "ActiveDirectoryFullyQualifiedName", # required
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #         file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #         user_name: "DirectoryUserName", # required
    #         password: "DirectoryPassword", # required
    #         dns_ips: ["IpAddress"], # required
    #       },
    #       deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #       preferred_subnet_id: "SubnetId",
    #       throughput_capacity: 1, # required
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       daily_automatic_backup_start_time: "DailyTime",
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       aliases: ["AlternateDNSName"],
    #       audit_log_configuration: {
    #         file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #         file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #         audit_log_destination: "GeneralARN"
    #       },
    #       disk_iops_configuration: {
    #         mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #         iops: 1
    #       }
    #     },
    #     lustre_configuration: {
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       import_path: "ArchivePath",
    #       export_path: "ArchivePath",
    #       imported_file_chunk_size: 1,
    #       deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #       auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #       per_unit_storage_throughput: 1,
    #       daily_automatic_backup_start_time: "DailyTime",
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #       data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #       efa_enabled: false,
    #       log_configuration: {
    #         level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #         destination: "GeneralARN"
    #       },
    #       root_squash_configuration: {
    #         root_squash: "LustreRootSquash",
    #         no_squash_nids: ["LustreNoSquashNid"]
    #       },
    #       metadata_configuration: {
    #         iops: 1,
    #         mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #       },
    #       throughput_capacity: 1,
    #       data_read_cache_configuration: {
    #         sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #         size_gi_b: 1
    #       }
    #     },
    #     storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #     kms_key_id: "KmsKeyId",
    #     file_system_type_version: "FileSystemTypeVersion",
    #     open_zfs_configuration: {
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       copy_tags_to_volumes: false,
    #       daily_automatic_backup_start_time: "DailyTime",
    #       deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"], # required
    #       throughput_capacity: 1, # required
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       disk_iops_configuration: {
    #         mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #         iops: 1
    #       },
    #       root_volume_configuration: {
    #         record_size_ki_b: 1,
    #         data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #         nfs_exports: [
    #           {
    #             client_configurations: [ # required
    #               {
    #                 clients: "OpenZFSClients", # required
    #                 options: ["OpenZFSNfsExportOption"], # required
    #               }
    #             ]
    #           }
    #         ],
    #         user_and_group_quotas: [
    #           {
    #             type: "USER" # One of: ["USER", "GROUP"], # required
    #             id: 1, # required
    #             storage_capacity_quota_gi_b: 1, # required
    #           }
    #         ],
    #         copy_tags_to_snapshots: false,
    #         read_only: false
    #       },
    #       preferred_subnet_id: "SubnetId",
    #       endpoint_ip_address_range: "IpAddressRange",
    #       endpoint_ipv6_address_range: "Ipv6AddressRange",
    #       route_table_ids: ["RouteTableId"],
    #       read_cache_configuration: {
    #         sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #         size_gi_b: 1
    #       }
    #     },
    #     storage_capacity: 1,
    #     network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #   }
    #   options = {}
    #   response = client.create_file_system_from_backup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_system: {
    #       owner_id: "AWSAccountId",
    #       creation_time: Time.now,
    #       file_system_id: "FileSystemId",
    #       file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #       lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #       failure_details: {
    #         message: "ErrorMessage"
    #       },
    #       storage_capacity: 1,
    #       storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #       vpc_id: "VpcId",
    #       subnet_ids: ["SubnetId"],
    #       network_interface_ids: ["NetworkInterfaceId"],
    #       dns_name: "DNSName",
    #       kms_key_id: "KmsKeyId",
    #       resource_arn: "ResourceARN",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       windows_configuration: {
    #         active_directory_id: "DirectoryId",
    #         self_managed_active_directory_configuration: {
    #           domain_name: "ActiveDirectoryFullyQualifiedName",
    #           organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #           file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #           user_name: "DirectoryUserName",
    #           dns_ips: ["IpAddress"]
    #         },
    #         deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #         remote_administration_endpoint: "DNSName",
    #         preferred_subnet_id: "SubnetId",
    #         preferred_file_server_ip: "IpAddress",
    #         throughput_capacity: 1,
    #         maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         daily_automatic_backup_start_time: "DailyTime",
    #         automatic_backup_retention_days: 1,
    #         copy_tags_to_backups: false,
    #         aliases: [
    #           {
    #             name: "AlternateDNSName",
    #             lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #           }
    #         ],
    #         audit_log_configuration: {
    #           file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #           file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #           audit_log_destination: "GeneralARN"
    #         },
    #         disk_iops_configuration: {
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #           iops: 1
    #         },
    #         preferred_file_server_ipv6: "IpAddress"
    #       },
    #       lustre_configuration: {
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         data_repository_configuration: {
    #           lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #           import_path: "ArchivePath",
    #           export_path: "ArchivePath",
    #           imported_file_chunk_size: 1,
    #           auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #           failure_details: {
    #             message: "ErrorMessage"
    #           }
    #         },
    #         deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #         per_unit_storage_throughput: 1,
    #         mount_name: "LustreFileSystemMountName",
    #         daily_automatic_backup_start_time: "DailyTime",
    #         automatic_backup_retention_days: 1,
    #         copy_tags_to_backups: false,
    #         drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #         data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #         log_configuration: {
    #           level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #           destination: "GeneralARN"
    #         },
    #         root_squash_configuration: {
    #           root_squash: "LustreRootSquash",
    #           no_squash_nids: ["LustreNoSquashNid"]
    #         },
    #         metadata_configuration: {
    #           iops: 1,
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #         },
    #         efa_enabled: false,
    #         throughput_capacity: 1,
    #         data_read_cache_configuration: {
    #           sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #           size_gi_b: 1
    #         }
    #       },
    #       administrative_actions: [
    #         {
    #           administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #           progress_percent: 1,
    #           request_time: Time.now,
    #           status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #           target_file_system_values: {
    #             # recursive FileSystem
    #           },
    #           failure_details: {
    #             message: "ErrorMessage"
    #           },
    #           target_volume_values: {
    #             creation_time: Time.now,
    #             file_system_id: "FileSystemId",
    #             lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #             name: "VolumeName",
    #             ontap_configuration: {
    #               flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #               junction_path: "JunctionPath",
    #               security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #               size_in_megabytes: 1,
    #               storage_efficiency_enabled: false,
    #               storage_virtual_machine_id: "StorageVirtualMachineId",
    #               storage_virtual_machine_root: false,
    #               tiering_policy: {
    #                 cooling_period: 1,
    #                 name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #               },
    #               uuid: "UUID",
    #               ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #               snapshot_policy: "SnapshotPolicy",
    #               copy_tags_to_backups: false,
    #               snaplock_configuration: {
    #                 audit_log_volume: false,
    #                 autocommit_period: {
    #                   type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #                   value: 1
    #                 },
    #                 privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #                 retention_period: {
    #                   default_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   },
    #                   minimum_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   },
    #                   maximum_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   }
    #                 },
    #                 snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #                 volume_append_mode_enabled: false
    #               },
    #               volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #               aggregate_configuration: {
    #                 aggregates: ["Aggregate"],
    #                 total_constituents: 1
    #               },
    #               size_in_bytes: 1
    #             },
    #             resource_arn: "ResourceARN",
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             volume_id: "VolumeId",
    #             volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #             lifecycle_transition_reason: {
    #               message: "ErrorMessage"
    #             },
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             },
    #             open_zfs_configuration: {
    #               parent_volume_id: "VolumeId",
    #               volume_path: "VolumePath",
    #               storage_capacity_reservation_gi_b: 1,
    #               storage_capacity_quota_gi_b: 1,
    #               record_size_ki_b: 1,
    #               data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #               copy_tags_to_snapshots: false,
    #               origin_snapshot: {
    #                 snapshot_arn: "ResourceARN",
    #                 copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #               },
    #               read_only: false,
    #               nfs_exports: [
    #                 {
    #                   client_configurations: [ # required
    #                     {
    #                       clients: "OpenZFSClients", # required
    #                       options: ["OpenZFSNfsExportOption"], # required
    #                     }
    #                   ]
    #                 }
    #               ],
    #               user_and_group_quotas: [
    #                 {
    #                   type: "USER" # One of: ["USER", "GROUP"], # required
    #                   id: 1, # required
    #                   storage_capacity_quota_gi_b: 1, # required
    #                 }
    #               ],
    #               restore_to_snapshot: "SnapshotId",
    #               delete_intermediate_snaphots: false,
    #               delete_cloned_volumes: false,
    #               delete_intermediate_data: false,
    #               source_snapshot_arn: "ResourceARN",
    #               destination_snapshot: "SnapshotId",
    #               copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #             }
    #           },
    #           target_snapshot_values: {
    #             resource_arn: "ResourceARN",
    #             snapshot_id: "SnapshotId",
    #             name: "SnapshotName",
    #             volume_id: "VolumeId",
    #             creation_time: Time.now,
    #             lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #             lifecycle_transition_reason: {
    #               message: "ErrorMessage"
    #             },
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             }
    #           },
    #           total_transfer_bytes: 1,
    #           remaining_transfer_bytes: 1,
    #           message: "ErrorMessage"
    #         }
    #       ],
    #       ontap_configuration: {
    #         automatic_backup_retention_days: 1,
    #         daily_automatic_backup_start_time: "DailyTime",
    #         deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #         endpoint_ip_address_range: "IpAddressRange",
    #         endpoints: {
    #           intercluster: {
    #             dns_name: "DNSName",
    #             ip_addresses: ["IpAddress"],
    #             ipv6_addresses: ["IpAddress"]
    #           },
    #           management: {
    #             dns_name: "DNSName",
    #             ip_addresses: ["IpAddress"],
    #             ipv6_addresses: ["IpAddress"]
    #           }
    #         },
    #         disk_iops_configuration: {
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #           iops: 1
    #         },
    #         preferred_subnet_id: "SubnetId",
    #         route_table_ids: ["RouteTableId"],
    #         throughput_capacity: 1,
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         fsx_admin_password: "AdminPassword",
    #         ha_pairs: 1,
    #         throughput_capacity_per_ha_pair: 1,
    #         endpoint_ipv6_address_range: "Ipv6AddressRange"
    #       },
    #       file_system_type_version: "FileSystemTypeVersion",
    #       open_zfs_configuration: {
    #         automatic_backup_retention_days: 1,
    #         copy_tags_to_backups: false,
    #         copy_tags_to_volumes: false,
    #         daily_automatic_backup_start_time: "DailyTime",
    #         deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #         throughput_capacity: 1,
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         disk_iops_configuration: {
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #           iops: 1
    #         },
    #         root_volume_id: "VolumeId",
    #         preferred_subnet_id: "SubnetId",
    #         endpoint_ip_address_range: "IpAddressRange",
    #         endpoint_ipv6_address_range: "Ipv6AddressRange",
    #         route_table_ids: ["RouteTableId"],
    #         endpoint_ip_address: "IpAddress",
    #         endpoint_ipv6_address: "IpAddress",
    #         read_cache_configuration: {
    #           sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #           size_gi_b: 1
    #         }
    #       },
    #       network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #     }
    #   }
    # @return [Types::CreateFileSystemFromBackupResponse]
    def create_file_system_from_backup(params = {}, options = {})
      request = build_request(:create_file_system_from_backup, params)
      request.send_request(options)
    end

    # <p>Creates a snapshot of an existing Amazon FSx for OpenZFS volume. With
    #             snapshots, you can easily undo file changes and compare file versions by restoring the
    #             volume to a previous version.</p>
    #          <p>If a snapshot with the specified client request token exists, and the parameters
    #             match, this operation returns the description of the existing snapshot. If a snapshot
    #             with the specified client request token exists, and the parameters don't match, this
    #             operation returns <code>IncompatibleParameterError</code>. If a snapshot with the
    #             specified client request token doesn't exist, <code>CreateSnapshot</code> does the
    #             following:</p>
    #          <ul>
    #             <li>
    #                <p>Creates a new OpenZFS snapshot with an assigned ID, and an initial lifecycle
    #                     state of <code>CREATING</code>.</p>
    #             </li>
    #             <li>
    #                <p>Returns the description of the snapshot.</p>
    #             </li>
    #          </ul>
    #          <p>By using the idempotent operation, you can retry a <code>CreateSnapshot</code>
    #             operation without the risk of creating an extra snapshot. This approach can be useful
    #             when an initial call fails in a way that makes it unclear whether a snapshot was
    #             created. If you use the same client request token and the initial call created a
    #             snapshot, the operation returns a successful result because all the parameters are the
    #             same.</p>
    #          <p>The <code>CreateSnapshot</code> operation returns while the snapshot's lifecycle state
    #             is still <code>CREATING</code>. You can check the snapshot creation status by calling
    #             the <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeSnapshots.html">DescribeSnapshots</a> operation, which returns the snapshot state along with
    #             other information.</p>
    # @param [Hash, Types::CreateSnapshotRequest] params
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :name
    #   <p>The name of the snapshot. </p>
    # @option params [String] :volume_id
    #   <p>The ID of the volume that you are taking a snapshot of.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     name: "SnapshotName", # required
    #     volume_id: "VolumeId", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       resource_arn: "ResourceARN",
    #       snapshot_id: "SnapshotId",
    #       name: "SnapshotName",
    #       volume_id: "VolumeId",
    #       creation_time: Time.now,
    #       lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #       lifecycle_transition_reason: {
    #         message: "ErrorMessage"
    #       },
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       administrative_actions: [
    #         {
    #           administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #           progress_percent: 1,
    #           request_time: Time.now,
    #           status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #           target_file_system_values: {
    #             owner_id: "AWSAccountId",
    #             creation_time: Time.now,
    #             file_system_id: "FileSystemId",
    #             file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #             lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #             failure_details: {
    #               message: "ErrorMessage"
    #             },
    #             storage_capacity: 1,
    #             storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #             vpc_id: "VpcId",
    #             subnet_ids: ["SubnetId"],
    #             network_interface_ids: ["NetworkInterfaceId"],
    #             dns_name: "DNSName",
    #             kms_key_id: "KmsKeyId",
    #             resource_arn: "ResourceARN",
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             windows_configuration: {
    #               active_directory_id: "DirectoryId",
    #               self_managed_active_directory_configuration: {
    #                 domain_name: "ActiveDirectoryFullyQualifiedName",
    #                 organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #                 file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #                 user_name: "DirectoryUserName",
    #                 dns_ips: ["IpAddress"]
    #               },
    #               deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #               remote_administration_endpoint: "DNSName",
    #               preferred_subnet_id: "SubnetId",
    #               preferred_file_server_ip: "IpAddress",
    #               throughput_capacity: 1,
    #               maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               daily_automatic_backup_start_time: "DailyTime",
    #               automatic_backup_retention_days: 1,
    #               copy_tags_to_backups: false,
    #               aliases: [
    #                 {
    #                   name: "AlternateDNSName",
    #                   lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #                 }
    #               ],
    #               audit_log_configuration: {
    #                 file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                 file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                 audit_log_destination: "GeneralARN"
    #               },
    #               disk_iops_configuration: {
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                 iops: 1
    #               },
    #               preferred_file_server_ipv6: "IpAddress"
    #             },
    #             lustre_configuration: {
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               data_repository_configuration: {
    #                 lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #                 import_path: "ArchivePath",
    #                 export_path: "ArchivePath",
    #                 imported_file_chunk_size: 1,
    #                 auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #                 failure_details: {
    #                   message: "ErrorMessage"
    #                 }
    #               },
    #               deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #               per_unit_storage_throughput: 1,
    #               mount_name: "LustreFileSystemMountName",
    #               daily_automatic_backup_start_time: "DailyTime",
    #               automatic_backup_retention_days: 1,
    #               copy_tags_to_backups: false,
    #               drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #               data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #               log_configuration: {
    #                 level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #                 destination: "GeneralARN"
    #               },
    #               root_squash_configuration: {
    #                 root_squash: "LustreRootSquash",
    #                 no_squash_nids: ["LustreNoSquashNid"]
    #               },
    #               metadata_configuration: {
    #                 iops: 1,
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #               },
    #               efa_enabled: false,
    #               throughput_capacity: 1,
    #               data_read_cache_configuration: {
    #                 sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                 size_gi_b: 1
    #               }
    #             },
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             },
    #             ontap_configuration: {
    #               automatic_backup_retention_days: 1,
    #               daily_automatic_backup_start_time: "DailyTime",
    #               deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #               endpoint_ip_address_range: "IpAddressRange",
    #               endpoints: {
    #                 intercluster: {
    #                   dns_name: "DNSName",
    #                   ip_addresses: ["IpAddress"],
    #                   ipv6_addresses: ["IpAddress"]
    #                 },
    #                 management: {
    #                   dns_name: "DNSName",
    #                   ip_addresses: ["IpAddress"],
    #                   ipv6_addresses: ["IpAddress"]
    #                 }
    #               },
    #               disk_iops_configuration: {
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                 iops: 1
    #               },
    #               preferred_subnet_id: "SubnetId",
    #               route_table_ids: ["RouteTableId"],
    #               throughput_capacity: 1,
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               fsx_admin_password: "AdminPassword",
    #               ha_pairs: 1,
    #               throughput_capacity_per_ha_pair: 1,
    #               endpoint_ipv6_address_range: "Ipv6AddressRange"
    #             },
    #             file_system_type_version: "FileSystemTypeVersion",
    #             open_zfs_configuration: {
    #               automatic_backup_retention_days: 1,
    #               copy_tags_to_backups: false,
    #               copy_tags_to_volumes: false,
    #               daily_automatic_backup_start_time: "DailyTime",
    #               deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #               throughput_capacity: 1,
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               disk_iops_configuration: {
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                 iops: 1
    #               },
    #               root_volume_id: "VolumeId",
    #               preferred_subnet_id: "SubnetId",
    #               endpoint_ip_address_range: "IpAddressRange",
    #               endpoint_ipv6_address_range: "Ipv6AddressRange",
    #               route_table_ids: ["RouteTableId"],
    #               endpoint_ip_address: "IpAddress",
    #               endpoint_ipv6_address: "IpAddress",
    #               read_cache_configuration: {
    #                 sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                 size_gi_b: 1
    #               }
    #             },
    #             network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #           },
    #           failure_details: {
    #             message: "ErrorMessage"
    #           },
    #           target_volume_values: {
    #             creation_time: Time.now,
    #             file_system_id: "FileSystemId",
    #             lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #             name: "VolumeName",
    #             ontap_configuration: {
    #               flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #               junction_path: "JunctionPath",
    #               security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #               size_in_megabytes: 1,
    #               storage_efficiency_enabled: false,
    #               storage_virtual_machine_id: "StorageVirtualMachineId",
    #               storage_virtual_machine_root: false,
    #               tiering_policy: {
    #                 cooling_period: 1,
    #                 name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #               },
    #               uuid: "UUID",
    #               ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #               snapshot_policy: "SnapshotPolicy",
    #               copy_tags_to_backups: false,
    #               snaplock_configuration: {
    #                 audit_log_volume: false,
    #                 autocommit_period: {
    #                   type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #                   value: 1
    #                 },
    #                 privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #                 retention_period: {
    #                   default_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   },
    #                   minimum_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   },
    #                   maximum_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   }
    #                 },
    #                 snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #                 volume_append_mode_enabled: false
    #               },
    #               volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #               aggregate_configuration: {
    #                 aggregates: ["Aggregate"],
    #                 total_constituents: 1
    #               },
    #               size_in_bytes: 1
    #             },
    #             resource_arn: "ResourceARN",
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             volume_id: "VolumeId",
    #             volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #             lifecycle_transition_reason: {
    #               message: "ErrorMessage"
    #             },
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             },
    #             open_zfs_configuration: {
    #               parent_volume_id: "VolumeId",
    #               volume_path: "VolumePath",
    #               storage_capacity_reservation_gi_b: 1,
    #               storage_capacity_quota_gi_b: 1,
    #               record_size_ki_b: 1,
    #               data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #               copy_tags_to_snapshots: false,
    #               origin_snapshot: {
    #                 snapshot_arn: "ResourceARN",
    #                 copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #               },
    #               read_only: false,
    #               nfs_exports: [
    #                 {
    #                   client_configurations: [ # required
    #                     {
    #                       clients: "OpenZFSClients", # required
    #                       options: ["OpenZFSNfsExportOption"], # required
    #                     }
    #                   ]
    #                 }
    #               ],
    #               user_and_group_quotas: [
    #                 {
    #                   type: "USER" # One of: ["USER", "GROUP"], # required
    #                   id: 1, # required
    #                   storage_capacity_quota_gi_b: 1, # required
    #                 }
    #               ],
    #               restore_to_snapshot: "SnapshotId",
    #               delete_intermediate_snaphots: false,
    #               delete_cloned_volumes: false,
    #               delete_intermediate_data: false,
    #               source_snapshot_arn: "ResourceARN",
    #               destination_snapshot: "SnapshotId",
    #               copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #             }
    #           },
    #           target_snapshot_values: {
    #             # recursive Snapshot
    #           },
    #           total_transfer_bytes: 1,
    #           remaining_transfer_bytes: 1,
    #           message: "ErrorMessage"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateSnapshotResponse]
    def create_snapshot(params = {}, options = {})
      request = build_request(:create_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a storage virtual machine (SVM) for an Amazon FSx for ONTAP file system.</p>
    # @param [Hash, Types::CreateStorageVirtualMachineRequest] params
    # @option params [Types::CreateSvmActiveDirectoryConfiguration] :active_directory_configuration
    #   <p>Describes the self-managed Microsoft Active Directory to which you want to join the SVM. 
    #         Joining an Active Directory provides user authentication and access control for SMB clients, 
    #         including Microsoft Windows and macOS clients accessing the file system.</p>
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :file_system_id
    #   <p>The globally unique ID of the file system, assigned by Amazon FSx.</p>
    # @option params [String] :name
    #   <p>The name of the SVM.</p>
    # @option params [String] :svm_admin_password
    #   <p>The password to use when managing the SVM using the NetApp ONTAP CLI or REST API.
    #               If you do not specify a password, you can still use the file system's
    #               <code>fsxadmin</code> user to manage the SVM.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    # @option params [String] :root_volume_security_style
    #   <p>The security style of the root volume of the SVM. Specify one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UNIX</code> if the file system is managed by a UNIX
    #                   administrator, the majority of users are NFS clients, and an application
    #                   accessing the data uses a UNIX user as the service account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NTFS</code> if the file system is managed by a Microsoft Windows
    #                   administrator, the majority of users are SMB clients, and an application
    #                   accessing the data uses a Microsoft Windows user as the service account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MIXED</code> This is an advanced setting. For more information, see 
    #                   <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/volume-security-style.html">Volume security style</a>
    #                   in the Amazon FSx for NetApp ONTAP User Guide.</p>
    #               </li>
    #            </ul>
    #            <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     active_directory_configuration: {
    #       net_bios_name: "NetBiosAlias", # required
    #       self_managed_active_directory_configuration: {
    #         domain_name: "ActiveDirectoryFullyQualifiedName", # required
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #         file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #         user_name: "DirectoryUserName", # required
    #         password: "DirectoryPassword", # required
    #         dns_ips: ["IpAddress"], # required
    #       }
    #     },
    #     client_request_token: "ClientRequestToken",
    #     file_system_id: "FileSystemId", # required
    #     name: "StorageVirtualMachineName", # required
    #     svm_admin_password: "AdminPassword",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     root_volume_security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"]
    #   }
    #   options = {}
    #   response = client.create_storage_virtual_machine(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_virtual_machine: {
    #       active_directory_configuration: {
    #         net_bios_name: "NetBiosAlias",
    #         self_managed_active_directory_configuration: {
    #           domain_name: "ActiveDirectoryFullyQualifiedName",
    #           organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #           file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #           user_name: "DirectoryUserName",
    #           dns_ips: ["IpAddress"]
    #         }
    #       },
    #       creation_time: Time.now,
    #       endpoints: {
    #         iscsi: {
    #           dns_name: "DNSName",
    #           ip_addresses: ["IpAddress"],
    #           ipv6_addresses: ["IpAddress"]
    #         },
    #         management: {
    #           dns_name: "DNSName",
    #           ip_addresses: ["IpAddress"],
    #           ipv6_addresses: ["IpAddress"]
    #         },
    #         nfs: {
    #           dns_name: "DNSName",
    #           ip_addresses: ["IpAddress"],
    #           ipv6_addresses: ["IpAddress"]
    #         },
    #         smb: {
    #           dns_name: "DNSName",
    #           ip_addresses: ["IpAddress"],
    #           ipv6_addresses: ["IpAddress"]
    #         }
    #       },
    #       file_system_id: "FileSystemId",
    #       lifecycle: "CREATED" # One of: ["CREATED", "CREATING", "DELETING", "FAILED", "MISCONFIGURED", "PENDING"],
    #       name: "StorageVirtualMachineName",
    #       resource_arn: "ResourceARN",
    #       storage_virtual_machine_id: "StorageVirtualMachineId",
    #       subtype: "DEFAULT" # One of: ["DEFAULT", "DP_DESTINATION", "SYNC_DESTINATION", "SYNC_SOURCE"],
    #       uuid: "UUID",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       lifecycle_transition_reason: {
    #         message: "ErrorMessage"
    #       },
    #       root_volume_security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"]
    #     }
    #   }
    # @return [Types::CreateStorageVirtualMachineResponse]
    def create_storage_virtual_machine(params = {}, options = {})
      request = build_request(:create_storage_virtual_machine, params)
      request.send_request(options)
    end

    # <p>Creates an FSx for ONTAP or Amazon FSx for OpenZFS storage volume.</p>
    # @param [Hash, Types::CreateVolumeRequest] params
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :volume_type
    #   <p>Specifies the type of volume to create; <code>ONTAP</code> and <code>OPENZFS</code> are
    #               the only valid volume types.</p>
    # @option params [String] :name
    #   <p>Specifies the name of the volume that you're creating.</p>
    # @option params [Types::CreateOntapVolumeConfiguration] :ontap_configuration
    #   <p>Specifies the configuration to use when creating the ONTAP volume.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    # @option params [Types::CreateOpenZFSVolumeConfiguration] :open_zfs_configuration
    #   <p>Specifies the configuration to use when creating the OpenZFS volume.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"], # required
    #     name: "VolumeName", # required
    #     ontap_configuration: {
    #       junction_path: "JunctionPath",
    #       security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #       size_in_megabytes: 1,
    #       storage_efficiency_enabled: false,
    #       storage_virtual_machine_id: "StorageVirtualMachineId", # required
    #       tiering_policy: {
    #         cooling_period: 1,
    #         name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #       },
    #       ontap_volume_type: "RW" # One of: ["RW", "DP"],
    #       snapshot_policy: "SnapshotPolicy",
    #       copy_tags_to_backups: false,
    #       snaplock_configuration: {
    #         audit_log_volume: false,
    #         autocommit_period: {
    #           type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #           value: 1
    #         },
    #         privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #         retention_period: {
    #           default_retention: { # required
    #             type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #             value: 1
    #           },
    #           minimum_retention: { # required
    #             type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #             value: 1
    #           },
    #           maximum_retention: { # required
    #             type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #             value: 1
    #           }
    #         },
    #         snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"], # required
    #         volume_append_mode_enabled: false
    #       },
    #       volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #       aggregate_configuration: {
    #         aggregates: ["Aggregate"],
    #         constituents_per_aggregate: 1
    #       },
    #       size_in_bytes: 1
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     open_zfs_configuration: {
    #       parent_volume_id: "VolumeId", # required
    #       storage_capacity_reservation_gi_b: 1,
    #       storage_capacity_quota_gi_b: 1,
    #       record_size_ki_b: 1,
    #       data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #       copy_tags_to_snapshots: false,
    #       origin_snapshot: {
    #         snapshot_arn: "ResourceARN", # required
    #         copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"], # required
    #       },
    #       read_only: false,
    #       nfs_exports: [
    #         {
    #           client_configurations: [ # required
    #             {
    #               clients: "OpenZFSClients", # required
    #               options: ["OpenZFSNfsExportOption"], # required
    #             }
    #           ]
    #         }
    #       ],
    #       user_and_group_quotas: [
    #         {
    #           type: "USER" # One of: ["USER", "GROUP"], # required
    #           id: 1, # required
    #           storage_capacity_quota_gi_b: 1, # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volume: {
    #       creation_time: Time.now,
    #       file_system_id: "FileSystemId",
    #       lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #       name: "VolumeName",
    #       ontap_configuration: {
    #         flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #         junction_path: "JunctionPath",
    #         security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #         size_in_megabytes: 1,
    #         storage_efficiency_enabled: false,
    #         storage_virtual_machine_id: "StorageVirtualMachineId",
    #         storage_virtual_machine_root: false,
    #         tiering_policy: {
    #           cooling_period: 1,
    #           name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #         },
    #         uuid: "UUID",
    #         ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #         snapshot_policy: "SnapshotPolicy",
    #         copy_tags_to_backups: false,
    #         snaplock_configuration: {
    #           audit_log_volume: false,
    #           autocommit_period: {
    #             type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #             value: 1
    #           },
    #           privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #           retention_period: {
    #             default_retention: { # required
    #               type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #               value: 1
    #             },
    #             minimum_retention: { # required
    #               type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #               value: 1
    #             },
    #             maximum_retention: { # required
    #               type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #               value: 1
    #             }
    #           },
    #           snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #           volume_append_mode_enabled: false
    #         },
    #         volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #         aggregate_configuration: {
    #           aggregates: ["Aggregate"],
    #           total_constituents: 1
    #         },
    #         size_in_bytes: 1
    #       },
    #       resource_arn: "ResourceARN",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       volume_id: "VolumeId",
    #       volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #       lifecycle_transition_reason: {
    #         message: "ErrorMessage"
    #       },
    #       administrative_actions: [
    #         {
    #           administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #           progress_percent: 1,
    #           request_time: Time.now,
    #           status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #           target_file_system_values: {
    #             owner_id: "AWSAccountId",
    #             creation_time: Time.now,
    #             file_system_id: "FileSystemId",
    #             file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #             lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #             failure_details: {
    #               message: "ErrorMessage"
    #             },
    #             storage_capacity: 1,
    #             storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #             vpc_id: "VpcId",
    #             subnet_ids: ["SubnetId"],
    #             network_interface_ids: ["NetworkInterfaceId"],
    #             dns_name: "DNSName",
    #             kms_key_id: "KmsKeyId",
    #             resource_arn: "ResourceARN",
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             windows_configuration: {
    #               active_directory_id: "DirectoryId",
    #               self_managed_active_directory_configuration: {
    #                 domain_name: "ActiveDirectoryFullyQualifiedName",
    #                 organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #                 file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #                 user_name: "DirectoryUserName",
    #                 dns_ips: ["IpAddress"]
    #               },
    #               deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #               remote_administration_endpoint: "DNSName",
    #               preferred_subnet_id: "SubnetId",
    #               preferred_file_server_ip: "IpAddress",
    #               throughput_capacity: 1,
    #               maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               daily_automatic_backup_start_time: "DailyTime",
    #               automatic_backup_retention_days: 1,
    #               copy_tags_to_backups: false,
    #               aliases: [
    #                 {
    #                   name: "AlternateDNSName",
    #                   lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #                 }
    #               ],
    #               audit_log_configuration: {
    #                 file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                 file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                 audit_log_destination: "GeneralARN"
    #               },
    #               disk_iops_configuration: {
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                 iops: 1
    #               },
    #               preferred_file_server_ipv6: "IpAddress"
    #             },
    #             lustre_configuration: {
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               data_repository_configuration: {
    #                 lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #                 import_path: "ArchivePath",
    #                 export_path: "ArchivePath",
    #                 imported_file_chunk_size: 1,
    #                 auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #                 failure_details: {
    #                   message: "ErrorMessage"
    #                 }
    #               },
    #               deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #               per_unit_storage_throughput: 1,
    #               mount_name: "LustreFileSystemMountName",
    #               daily_automatic_backup_start_time: "DailyTime",
    #               automatic_backup_retention_days: 1,
    #               copy_tags_to_backups: false,
    #               drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #               data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #               log_configuration: {
    #                 level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #                 destination: "GeneralARN"
    #               },
    #               root_squash_configuration: {
    #                 root_squash: "LustreRootSquash",
    #                 no_squash_nids: ["LustreNoSquashNid"]
    #               },
    #               metadata_configuration: {
    #                 iops: 1,
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #               },
    #               efa_enabled: false,
    #               throughput_capacity: 1,
    #               data_read_cache_configuration: {
    #                 sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                 size_gi_b: 1
    #               }
    #             },
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             },
    #             ontap_configuration: {
    #               automatic_backup_retention_days: 1,
    #               daily_automatic_backup_start_time: "DailyTime",
    #               deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #               endpoint_ip_address_range: "IpAddressRange",
    #               endpoints: {
    #                 intercluster: {
    #                   dns_name: "DNSName",
    #                   ip_addresses: ["IpAddress"],
    #                   ipv6_addresses: ["IpAddress"]
    #                 },
    #                 management: {
    #                   dns_name: "DNSName",
    #                   ip_addresses: ["IpAddress"],
    #                   ipv6_addresses: ["IpAddress"]
    #                 }
    #               },
    #               disk_iops_configuration: {
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                 iops: 1
    #               },
    #               preferred_subnet_id: "SubnetId",
    #               route_table_ids: ["RouteTableId"],
    #               throughput_capacity: 1,
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               fsx_admin_password: "AdminPassword",
    #               ha_pairs: 1,
    #               throughput_capacity_per_ha_pair: 1,
    #               endpoint_ipv6_address_range: "Ipv6AddressRange"
    #             },
    #             file_system_type_version: "FileSystemTypeVersion",
    #             open_zfs_configuration: {
    #               automatic_backup_retention_days: 1,
    #               copy_tags_to_backups: false,
    #               copy_tags_to_volumes: false,
    #               daily_automatic_backup_start_time: "DailyTime",
    #               deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #               throughput_capacity: 1,
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               disk_iops_configuration: {
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                 iops: 1
    #               },
    #               root_volume_id: "VolumeId",
    #               preferred_subnet_id: "SubnetId",
    #               endpoint_ip_address_range: "IpAddressRange",
    #               endpoint_ipv6_address_range: "Ipv6AddressRange",
    #               route_table_ids: ["RouteTableId"],
    #               endpoint_ip_address: "IpAddress",
    #               endpoint_ipv6_address: "IpAddress",
    #               read_cache_configuration: {
    #                 sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                 size_gi_b: 1
    #               }
    #             },
    #             network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #           },
    #           failure_details: {
    #             message: "ErrorMessage"
    #           },
    #           target_volume_values: {
    #             # recursive Volume
    #           },
    #           target_snapshot_values: {
    #             resource_arn: "ResourceARN",
    #             snapshot_id: "SnapshotId",
    #             name: "SnapshotName",
    #             volume_id: "VolumeId",
    #             creation_time: Time.now,
    #             lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #             lifecycle_transition_reason: {
    #               message: "ErrorMessage"
    #             },
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             }
    #           },
    #           total_transfer_bytes: 1,
    #           remaining_transfer_bytes: 1,
    #           message: "ErrorMessage"
    #         }
    #       ],
    #       open_zfs_configuration: {
    #         parent_volume_id: "VolumeId",
    #         volume_path: "VolumePath",
    #         storage_capacity_reservation_gi_b: 1,
    #         storage_capacity_quota_gi_b: 1,
    #         record_size_ki_b: 1,
    #         data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #         copy_tags_to_snapshots: false,
    #         origin_snapshot: {
    #           snapshot_arn: "ResourceARN",
    #           copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #         },
    #         read_only: false,
    #         nfs_exports: [
    #           {
    #             client_configurations: [ # required
    #               {
    #                 clients: "OpenZFSClients", # required
    #                 options: ["OpenZFSNfsExportOption"], # required
    #               }
    #             ]
    #           }
    #         ],
    #         user_and_group_quotas: [
    #           {
    #             type: "USER" # One of: ["USER", "GROUP"], # required
    #             id: 1, # required
    #             storage_capacity_quota_gi_b: 1, # required
    #           }
    #         ],
    #         restore_to_snapshot: "SnapshotId",
    #         delete_intermediate_snaphots: false,
    #         delete_cloned_volumes: false,
    #         delete_intermediate_data: false,
    #         source_snapshot_arn: "ResourceARN",
    #         destination_snapshot: "SnapshotId",
    #         copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #       }
    #     }
    #   }
    # @return [Types::CreateVolumeResponse]
    def create_volume(params = {}, options = {})
      request = build_request(:create_volume, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon FSx for NetApp ONTAP volume from an
    #             existing Amazon FSx volume backup.</p>
    # @param [Hash, Types::CreateVolumeFromBackupRequest] params
    # @option params [String] :backup_id
    #   <p>The ID of the source backup. Specifies the backup that you are copying.</p>
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :name
    #   <p>The name of the new volume you're creating.</p>
    # @option params [Types::CreateOntapVolumeConfiguration] :ontap_configuration
    #   <p>Specifies the configuration of the ONTAP volume that you are creating.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_id: "BackupId", # required
    #     client_request_token: "ClientRequestToken",
    #     name: "VolumeName", # required
    #     ontap_configuration: {
    #       junction_path: "JunctionPath",
    #       security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #       size_in_megabytes: 1,
    #       storage_efficiency_enabled: false,
    #       storage_virtual_machine_id: "StorageVirtualMachineId", # required
    #       tiering_policy: {
    #         cooling_period: 1,
    #         name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #       },
    #       ontap_volume_type: "RW" # One of: ["RW", "DP"],
    #       snapshot_policy: "SnapshotPolicy",
    #       copy_tags_to_backups: false,
    #       snaplock_configuration: {
    #         audit_log_volume: false,
    #         autocommit_period: {
    #           type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #           value: 1
    #         },
    #         privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #         retention_period: {
    #           default_retention: { # required
    #             type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #             value: 1
    #           },
    #           minimum_retention: { # required
    #             type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #             value: 1
    #           },
    #           maximum_retention: { # required
    #             type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #             value: 1
    #           }
    #         },
    #         snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"], # required
    #         volume_append_mode_enabled: false
    #       },
    #       volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #       aggregate_configuration: {
    #         aggregates: ["Aggregate"],
    #         constituents_per_aggregate: 1
    #       },
    #       size_in_bytes: 1
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_volume_from_backup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volume: {
    #       creation_time: Time.now,
    #       file_system_id: "FileSystemId",
    #       lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #       name: "VolumeName",
    #       ontap_configuration: {
    #         flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #         junction_path: "JunctionPath",
    #         security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #         size_in_megabytes: 1,
    #         storage_efficiency_enabled: false,
    #         storage_virtual_machine_id: "StorageVirtualMachineId",
    #         storage_virtual_machine_root: false,
    #         tiering_policy: {
    #           cooling_period: 1,
    #           name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #         },
    #         uuid: "UUID",
    #         ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #         snapshot_policy: "SnapshotPolicy",
    #         copy_tags_to_backups: false,
    #         snaplock_configuration: {
    #           audit_log_volume: false,
    #           autocommit_period: {
    #             type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #             value: 1
    #           },
    #           privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #           retention_period: {
    #             default_retention: { # required
    #               type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #               value: 1
    #             },
    #             minimum_retention: { # required
    #               type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #               value: 1
    #             },
    #             maximum_retention: { # required
    #               type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #               value: 1
    #             }
    #           },
    #           snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #           volume_append_mode_enabled: false
    #         },
    #         volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #         aggregate_configuration: {
    #           aggregates: ["Aggregate"],
    #           total_constituents: 1
    #         },
    #         size_in_bytes: 1
    #       },
    #       resource_arn: "ResourceARN",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       volume_id: "VolumeId",
    #       volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #       lifecycle_transition_reason: {
    #         message: "ErrorMessage"
    #       },
    #       administrative_actions: [
    #         {
    #           administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #           progress_percent: 1,
    #           request_time: Time.now,
    #           status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #           target_file_system_values: {
    #             owner_id: "AWSAccountId",
    #             creation_time: Time.now,
    #             file_system_id: "FileSystemId",
    #             file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #             lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #             failure_details: {
    #               message: "ErrorMessage"
    #             },
    #             storage_capacity: 1,
    #             storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #             vpc_id: "VpcId",
    #             subnet_ids: ["SubnetId"],
    #             network_interface_ids: ["NetworkInterfaceId"],
    #             dns_name: "DNSName",
    #             kms_key_id: "KmsKeyId",
    #             resource_arn: "ResourceARN",
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             windows_configuration: {
    #               active_directory_id: "DirectoryId",
    #               self_managed_active_directory_configuration: {
    #                 domain_name: "ActiveDirectoryFullyQualifiedName",
    #                 organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #                 file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #                 user_name: "DirectoryUserName",
    #                 dns_ips: ["IpAddress"]
    #               },
    #               deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #               remote_administration_endpoint: "DNSName",
    #               preferred_subnet_id: "SubnetId",
    #               preferred_file_server_ip: "IpAddress",
    #               throughput_capacity: 1,
    #               maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               daily_automatic_backup_start_time: "DailyTime",
    #               automatic_backup_retention_days: 1,
    #               copy_tags_to_backups: false,
    #               aliases: [
    #                 {
    #                   name: "AlternateDNSName",
    #                   lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #                 }
    #               ],
    #               audit_log_configuration: {
    #                 file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                 file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                 audit_log_destination: "GeneralARN"
    #               },
    #               disk_iops_configuration: {
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                 iops: 1
    #               },
    #               preferred_file_server_ipv6: "IpAddress"
    #             },
    #             lustre_configuration: {
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               data_repository_configuration: {
    #                 lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #                 import_path: "ArchivePath",
    #                 export_path: "ArchivePath",
    #                 imported_file_chunk_size: 1,
    #                 auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #                 failure_details: {
    #                   message: "ErrorMessage"
    #                 }
    #               },
    #               deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #               per_unit_storage_throughput: 1,
    #               mount_name: "LustreFileSystemMountName",
    #               daily_automatic_backup_start_time: "DailyTime",
    #               automatic_backup_retention_days: 1,
    #               copy_tags_to_backups: false,
    #               drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #               data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #               log_configuration: {
    #                 level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #                 destination: "GeneralARN"
    #               },
    #               root_squash_configuration: {
    #                 root_squash: "LustreRootSquash",
    #                 no_squash_nids: ["LustreNoSquashNid"]
    #               },
    #               metadata_configuration: {
    #                 iops: 1,
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #               },
    #               efa_enabled: false,
    #               throughput_capacity: 1,
    #               data_read_cache_configuration: {
    #                 sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                 size_gi_b: 1
    #               }
    #             },
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             },
    #             ontap_configuration: {
    #               automatic_backup_retention_days: 1,
    #               daily_automatic_backup_start_time: "DailyTime",
    #               deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #               endpoint_ip_address_range: "IpAddressRange",
    #               endpoints: {
    #                 intercluster: {
    #                   dns_name: "DNSName",
    #                   ip_addresses: ["IpAddress"],
    #                   ipv6_addresses: ["IpAddress"]
    #                 },
    #                 management: {
    #                   dns_name: "DNSName",
    #                   ip_addresses: ["IpAddress"],
    #                   ipv6_addresses: ["IpAddress"]
    #                 }
    #               },
    #               disk_iops_configuration: {
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                 iops: 1
    #               },
    #               preferred_subnet_id: "SubnetId",
    #               route_table_ids: ["RouteTableId"],
    #               throughput_capacity: 1,
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               fsx_admin_password: "AdminPassword",
    #               ha_pairs: 1,
    #               throughput_capacity_per_ha_pair: 1,
    #               endpoint_ipv6_address_range: "Ipv6AddressRange"
    #             },
    #             file_system_type_version: "FileSystemTypeVersion",
    #             open_zfs_configuration: {
    #               automatic_backup_retention_days: 1,
    #               copy_tags_to_backups: false,
    #               copy_tags_to_volumes: false,
    #               daily_automatic_backup_start_time: "DailyTime",
    #               deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #               throughput_capacity: 1,
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               disk_iops_configuration: {
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                 iops: 1
    #               },
    #               root_volume_id: "VolumeId",
    #               preferred_subnet_id: "SubnetId",
    #               endpoint_ip_address_range: "IpAddressRange",
    #               endpoint_ipv6_address_range: "Ipv6AddressRange",
    #               route_table_ids: ["RouteTableId"],
    #               endpoint_ip_address: "IpAddress",
    #               endpoint_ipv6_address: "IpAddress",
    #               read_cache_configuration: {
    #                 sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                 size_gi_b: 1
    #               }
    #             },
    #             network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #           },
    #           failure_details: {
    #             message: "ErrorMessage"
    #           },
    #           target_volume_values: {
    #             # recursive Volume
    #           },
    #           target_snapshot_values: {
    #             resource_arn: "ResourceARN",
    #             snapshot_id: "SnapshotId",
    #             name: "SnapshotName",
    #             volume_id: "VolumeId",
    #             creation_time: Time.now,
    #             lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #             lifecycle_transition_reason: {
    #               message: "ErrorMessage"
    #             },
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             }
    #           },
    #           total_transfer_bytes: 1,
    #           remaining_transfer_bytes: 1,
    #           message: "ErrorMessage"
    #         }
    #       ],
    #       open_zfs_configuration: {
    #         parent_volume_id: "VolumeId",
    #         volume_path: "VolumePath",
    #         storage_capacity_reservation_gi_b: 1,
    #         storage_capacity_quota_gi_b: 1,
    #         record_size_ki_b: 1,
    #         data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #         copy_tags_to_snapshots: false,
    #         origin_snapshot: {
    #           snapshot_arn: "ResourceARN",
    #           copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #         },
    #         read_only: false,
    #         nfs_exports: [
    #           {
    #             client_configurations: [ # required
    #               {
    #                 clients: "OpenZFSClients", # required
    #                 options: ["OpenZFSNfsExportOption"], # required
    #               }
    #             ]
    #           }
    #         ],
    #         user_and_group_quotas: [
    #           {
    #             type: "USER" # One of: ["USER", "GROUP"], # required
    #             id: 1, # required
    #             storage_capacity_quota_gi_b: 1, # required
    #           }
    #         ],
    #         restore_to_snapshot: "SnapshotId",
    #         delete_intermediate_snaphots: false,
    #         delete_cloned_volumes: false,
    #         delete_intermediate_data: false,
    #         source_snapshot_arn: "ResourceARN",
    #         destination_snapshot: "SnapshotId",
    #         copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #       }
    #     }
    #   }
    # @return [Types::CreateVolumeFromBackupResponse]
    def create_volume_from_backup(params = {}, options = {})
      request = build_request(:create_volume_from_backup, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon FSx backup. After deletion, the backup no longer exists, and
    #             its data is gone.</p>
    #          <p>The <code>DeleteBackup</code> call returns instantly. The backup won't show up in
    #             later <code>DescribeBackups</code> calls.</p>
    #          <important>
    #             <p>The data in a deleted backup is also deleted and can't be recovered by any
    #                 means.</p>
    #          </important>
    # @param [Hash, Types::DeleteBackupRequest] params
    # @option params [String] :backup_id
    #   <p>The ID of the backup that you want to delete.</p>
    # @option params [String] :client_request_token
    #   <p>A string of up to 63 ASCII characters that Amazon FSx uses to ensure
    #               idempotent deletion. This parameter is automatically filled on your behalf when using
    #               the CLI or SDK.</p>
    # @example To delete a backup
    #   # This operation deletes an Amazon FSx file system backup.
    #   params = {
    #     backup_id: "backup-03e3c82e0183b7b6b"
    #   }
    #   options = {}
    #   response = client.delete_backup(params, options)
    #   response.to_h #=>
    #   {
    #     backup_id: "backup-03e3c82e0183b7b6b",
    #     lifecycle: DELETED
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_id: "BackupId", # required
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.delete_backup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_id: "BackupId",
    #     lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "TRANSFERRING", "DELETED", "FAILED", "PENDING", "COPYING"]
    #   }
    # @return [Types::DeleteBackupResponse]
    def delete_backup(params = {}, options = {})
      request = build_request(:delete_backup, params)
      request.send_request(options)
    end

    # <p>Deletes a data repository association on an Amazon FSx for Lustre
    #             file system. Deleting the data repository association unlinks the
    #             file system from the Amazon S3 bucket. When deleting a data repository
    #             association, you have the option of deleting the data in the file system
    #             that corresponds to the data repository association. Data repository
    #             associations are supported on all FSx for Lustre 2.12 and 2.15 file
    #             systems, excluding <code>scratch_1</code> deployment type.</p>
    # @param [Hash, Types::DeleteDataRepositoryAssociationRequest] params
    # @option params [String] :association_id
    #   <p>The ID of the data repository association that you want to delete.</p>
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [Boolean] :delete_data_in_file_system
    #   <p>Set to <code>true</code> to delete the data in the file system that corresponds
    #               to the data repository association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_id: "DataRepositoryAssociationId", # required
    #     client_request_token: "ClientRequestToken",
    #     delete_data_in_file_system: false
    #   }
    #   options = {}
    #   response = client.delete_data_repository_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association_id: "DataRepositoryAssociationId",
    #     lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #     delete_data_in_file_system: false
    #   }
    # @return [Types::DeleteDataRepositoryAssociationResponse]
    def delete_data_repository_association(params = {}, options = {})
      request = build_request(:delete_data_repository_association, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon File Cache resource. After deletion, the cache no longer exists, and its data
    #             is gone.</p>
    #          <p>The <code>DeleteFileCache</code> operation returns while the cache has the
    #             <code>DELETING</code> status. You can check the cache deletion status by
    #             calling the <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileCaches.html">DescribeFileCaches</a> operation, which returns a list of caches in your
    #             account. If you pass the cache ID for a deleted cache, the
    #             <code>DescribeFileCaches</code> operation returns a <code>FileCacheNotFound</code>
    #             error.</p>
    #          <important>
    #             <p>The data in a deleted cache is also deleted and can't be recovered by
    #                 any means.</p>
    #          </important>
    # @param [Hash, Types::DeleteFileCacheRequest] params
    # @option params [String] :file_cache_id
    #   <p>The ID of the cache that's being deleted.</p>
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_cache_id: "FileCacheId", # required
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.delete_file_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_cache_id: "FileCacheId",
    #     lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "UPDATING", "FAILED"]
    #   }
    # @return [Types::DeleteFileCacheResponse]
    def delete_file_cache(params = {}, options = {})
      request = build_request(:delete_file_cache, params)
      request.send_request(options)
    end

    # <p>Deletes a file system. After deletion, the file system no longer exists, and its data
    #             is gone. Any existing automatic backups and snapshots are also deleted.</p>
    #          <p>To delete an Amazon FSx for NetApp ONTAP file system, first delete all the
    #             volumes and storage virtual machines (SVMs) on the file system. Then provide a
    #                 <code>FileSystemId</code> value to the <code>DeleteFileSystem</code> operation.</p>
    #          <p>Before deleting an Amazon FSx for OpenZFS file system, make sure that there aren't 
    #         any Amazon S3 access points attached to any volume. For more information on how to list S3 
    #         access points that are attached to volumes, see 
    #             <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/access-points-list.html">Listing S3 access point attachments</a>. 
    #         For more information on how to delete S3 access points, see 
    #             <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/delete-access-point.html">Deleting an S3 access point attachment</a>.</p>
    #          <p>By default, when you delete an Amazon FSx for Windows File Server file system,
    #             a final backup is created upon deletion. This final backup isn't subject to the file
    #             system's retention policy, and must be manually deleted.</p>
    #          <p>To delete an Amazon FSx for Lustre file system, first 
    #             <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/unmounting-fs.html">unmount</a>
    #             it from every connected Amazon EC2 instance, then provide a <code>FileSystemId</code>
    #             value to the <code>DeleteFileSystem</code> operation. By default, Amazon FSx will not
    #             take a final backup when the <code>DeleteFileSystem</code> operation is invoked. On file systems
    #             not linked to an Amazon S3 bucket, set <code>SkipFinalBackup</code> to <code>false</code>
    #             to take a final backup of the file system you are deleting. Backups cannot be enabled on S3-linked
    #             file systems. To ensure all of your data is written back to S3 before deleting your file system,
    #             you can either monitor for the
    #             <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/monitoring-cloudwatch.html#auto-import-export-metrics">AgeOfOldestQueuedMessage</a>
    #             metric to be zero (if using automatic export) or you can run an
    #             <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/export-data-repo-task-dra.html">export data repository task</a>.
    #             If you have automatic export enabled and want to use an export data repository task, you have
    #             to disable automatic export before executing the export data repository task.</p>
    #          <p>The <code>DeleteFileSystem</code> operation returns while the file system has the
    #                 <code>DELETING</code> status. You can check the file system deletion status by
    #             calling the <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html">DescribeFileSystems</a> operation, which returns a list of file systems in your
    #             account. If you pass the file system ID for a deleted file system, the
    #                 <code>DescribeFileSystems</code> operation returns a <code>FileSystemNotFound</code>
    #             error.</p>
    #          <note>
    #             <p>If a data repository task is in a <code>PENDING</code> or <code>EXECUTING</code> state,
    #                 deleting an Amazon FSx for Lustre file system will fail with an HTTP status
    #                 code 400 (Bad Request).</p>
    #          </note>
    #          <important>
    #             <p>The data in a deleted file system is also deleted and can't be recovered by
    #                 any means.</p>
    #          </important>
    # @param [Hash, Types::DeleteFileSystemRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID of the file system that you want to delete.</p>
    # @option params [String] :client_request_token
    #   <p>A string of up to 63 ASCII characters that Amazon FSx uses to ensure
    #               idempotent deletion. This token is automatically filled on your behalf when using the
    #                   Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [Types::DeleteFileSystemWindowsConfiguration] :windows_configuration
    #   <p>The configuration object for the Microsoft Windows file system used in the
    #                   <code>DeleteFileSystem</code> operation.</p>
    # @option params [Types::DeleteFileSystemLustreConfiguration] :lustre_configuration
    #   <p>The configuration object for the Amazon FSx for Lustre file system being deleted in the
    #                   <code>DeleteFileSystem</code> operation.</p>
    # @option params [Types::DeleteFileSystemOpenZFSConfiguration] :open_zfs_configuration
    #   <p>The configuration object for the OpenZFS file system used in the
    #                   <code>DeleteFileSystem</code> operation.</p>
    # @example To delete a file system
    #   # This operation deletes an Amazon FSx file system.
    #   params = {
    #     file_system_id: "fs-0498eed5fe91001ec"
    #   }
    #   options = {}
    #   response = client.delete_file_system(params, options)
    #   response.to_h #=>
    #   {
    #     file_system_id: "fs-0498eed5fe91001ec",
    #     lifecycle: DELETING
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #     client_request_token: "ClientRequestToken",
    #     windows_configuration: {
    #       skip_final_backup: false,
    #       final_backup_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     },
    #     lustre_configuration: {
    #       skip_final_backup: false,
    #       final_backup_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     },
    #     open_zfs_configuration: {
    #       skip_final_backup: false,
    #       final_backup_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       options: ["DELETE_CHILD_VOLUMES_AND_SNAPSHOTS" # One of: ["DELETE_CHILD_VOLUMES_AND_SNAPSHOTS"]]
    #     }
    #   }
    #   options = {}
    #   response = client.delete_file_system(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_system_id: "FileSystemId",
    #     lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #     windows_response: {
    #       final_backup_id: "BackupId",
    #       final_backup_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     },
    #     lustre_response: {
    #       final_backup_id: "BackupId",
    #       final_backup_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     },
    #     open_zfs_response: {
    #       final_backup_id: "BackupId",
    #       final_backup_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteFileSystemResponse]
    def delete_file_system(params = {}, options = {})
      request = build_request(:delete_file_system, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon FSx for OpenZFS snapshot. After deletion, the snapshot no longer
    #             exists, and its data is gone. Deleting a snapshot doesn't affect snapshots stored in a
    #             file system backup. </p>
    #          <p>The <code>DeleteSnapshot</code> operation returns instantly. The snapshot appears with
    #             the lifecycle status of <code>DELETING</code> until the deletion is complete.</p>
    # @param [Hash, Types::DeleteSnapshotRequest] params
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :snapshot_id
    #   <p>The ID of the snapshot that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     snapshot_id: "SnapshotId", # required
    #   }
    #   options = {}
    #   response = client.delete_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot_id: "SnapshotId",
    #     lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"]
    #   }
    # @return [Types::DeleteSnapshotResponse]
    def delete_snapshot(params = {}, options = {})
      request = build_request(:delete_snapshot, params)
      request.send_request(options)
    end

    # <p>Deletes an existing Amazon FSx for ONTAP storage virtual machine (SVM). Prior 
    #         to deleting an SVM, you must delete all non-root volumes in the SVM, otherwise the operation will fail.</p>
    # @param [Hash, Types::DeleteStorageVirtualMachineRequest] params
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :storage_virtual_machine_id
    #   <p>The ID of the SVM that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     storage_virtual_machine_id: "StorageVirtualMachineId", # required
    #   }
    #   options = {}
    #   response = client.delete_storage_virtual_machine(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_virtual_machine_id: "StorageVirtualMachineId",
    #     lifecycle: "CREATED" # One of: ["CREATED", "CREATING", "DELETING", "FAILED", "MISCONFIGURED", "PENDING"]
    #   }
    # @return [Types::DeleteStorageVirtualMachineResponse]
    def delete_storage_virtual_machine(params = {}, options = {})
      request = build_request(:delete_storage_virtual_machine, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS
    #             volume.</p>
    # @param [Hash, Types::DeleteVolumeRequest] params
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :volume_id
    #   <p>The ID of the volume that you are deleting.</p>
    # @option params [Types::DeleteVolumeOntapConfiguration] :ontap_configuration
    #   <p>For Amazon FSx for ONTAP volumes, specify whether to take a final backup of
    #               the volume and apply tags to the backup. To apply tags to the backup, you must have the
    #                   <code>fsx:TagResource</code> permission.</p>
    # @option params [Types::DeleteVolumeOpenZFSConfiguration] :open_zfs_configuration
    #   <p>For Amazon FSx for OpenZFS volumes, specify whether to delete all child
    #               volumes and snapshots.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     volume_id: "VolumeId", # required
    #     ontap_configuration: {
    #       skip_final_backup: false,
    #       final_backup_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       bypass_snaplock_enterprise_retention: false
    #     },
    #     open_zfs_configuration: {
    #       options: ["DELETE_CHILD_VOLUMES_AND_SNAPSHOTS" # One of: ["DELETE_CHILD_VOLUMES_AND_SNAPSHOTS"]]
    #     }
    #   }
    #   options = {}
    #   response = client.delete_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volume_id: "VolumeId",
    #     lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #     ontap_response: {
    #       final_backup_id: "BackupId",
    #       final_backup_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteVolumeResponse]
    def delete_volume(params = {}, options = {})
      request = build_request(:delete_volume, params)
      request.send_request(options)
    end

    # <p>Returns the description of a specific Amazon FSx backup, if a
    #                 <code>BackupIds</code> value is provided for that backup. Otherwise, it returns all
    #             backups owned by your Amazon Web Services account in the Amazon Web Services Region of the
    #             endpoint that you're calling.</p>
    #          <p>When retrieving all backups, you can optionally specify the <code>MaxResults</code>
    #             parameter to limit the number of backups in a response. If more backups remain, Amazon FSx returns a <code>NextToken</code> value in the response. In this case,
    #             send a later request with the <code>NextToken</code> request parameter set to the value
    #             of the <code>NextToken</code> value from the last response.</p>
    #          <p>This operation is used in an iterative process to retrieve a list of your backups.
    #                 <code>DescribeBackups</code> is called first without a <code>NextToken</code> value.
    #             Then the operation continues to be called with the <code>NextToken</code> parameter set
    #             to the value of the last <code>NextToken</code> value until a response has no
    #                 <code>NextToken</code> value.</p>
    #          <p>When using this operation, keep the following in mind:</p>
    #          <ul>
    #             <li>
    #                <p>The operation might return fewer than the <code>MaxResults</code> value of
    #                     backup descriptions while still including a <code>NextToken</code>
    #                     value.</p>
    #             </li>
    #             <li>
    #                <p>The order of the backups returned in the response of one
    #                         <code>DescribeBackups</code> call and the order of the backups returned
    #                     across the responses of a multi-call iteration is unspecified.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeBackupsRequest] params
    # @option params [Array<String>] :backup_ids
    #   <p>The IDs of the backups that you want to retrieve. This parameter value overrides any
    #               filters. If any IDs aren't found, a <code>BackupNotFound</code> error occurs.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>The filters structure. The supported names are <code>file-system-id</code>,
    #                   <code>backup-type</code>, <code>file-system-type</code>, and
    #               <code>volume-id</code>.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of backups to return in the response. This parameter value must be
    #               greater than 0. The number of items that Amazon FSx returns is the minimum of
    #               the <code>MaxResults</code> parameter specified in the request and the service's
    #               internal maximum number of items per page.</p>
    # @option params [String] :next_token
    #   <p>An opaque pagination token returned from a previous <code>DescribeBackups</code>
    #               operation. If a token is present, the operation continues the list from where the
    #               returning call left off.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_ids: ["BackupId"],
    #     filters: [
    #       {
    #         name: "file-system-id" # One of: ["file-system-id", "backup-type", "file-system-type", "volume-id", "data-repository-type", "file-cache-id", "file-cache-type"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_backups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backups: [
    #       {
    #         backup_id: "BackupId", # required
    #         lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "TRANSFERRING", "DELETED", "FAILED", "PENDING", "COPYING"], # required
    #         failure_details: {
    #           message: "ErrorMessage"
    #         },
    #         type: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_INITIATED", "AWS_BACKUP"], # required
    #         progress_percent: 1,
    #         creation_time: Time.now, # required
    #         kms_key_id: "KmsKeyId",
    #         resource_arn: "ResourceARN",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         file_system: { # required
    #           owner_id: "AWSAccountId",
    #           creation_time: Time.now,
    #           file_system_id: "FileSystemId",
    #           file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #           lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #           failure_details: {
    #             message: "ErrorMessage"
    #           },
    #           storage_capacity: 1,
    #           storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #           vpc_id: "VpcId",
    #           subnet_ids: ["SubnetId"],
    #           network_interface_ids: ["NetworkInterfaceId"],
    #           dns_name: "DNSName",
    #           kms_key_id: "KmsKeyId",
    #           resource_arn: "ResourceARN",
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             }
    #           ],
    #           windows_configuration: {
    #             active_directory_id: "DirectoryId",
    #             self_managed_active_directory_configuration: {
    #               domain_name: "ActiveDirectoryFullyQualifiedName",
    #               organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #               file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #               user_name: "DirectoryUserName",
    #               dns_ips: ["IpAddress"]
    #             },
    #             deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #             remote_administration_endpoint: "DNSName",
    #             preferred_subnet_id: "SubnetId",
    #             preferred_file_server_ip: "IpAddress",
    #             throughput_capacity: 1,
    #             maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #             weekly_maintenance_start_time: "WeeklyTime",
    #             daily_automatic_backup_start_time: "DailyTime",
    #             automatic_backup_retention_days: 1,
    #             copy_tags_to_backups: false,
    #             aliases: [
    #               {
    #                 name: "AlternateDNSName",
    #                 lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #               }
    #             ],
    #             audit_log_configuration: {
    #               file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #               file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #               audit_log_destination: "GeneralARN"
    #             },
    #             disk_iops_configuration: {
    #               mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #               iops: 1
    #             },
    #             preferred_file_server_ipv6: "IpAddress"
    #           },
    #           lustre_configuration: {
    #             weekly_maintenance_start_time: "WeeklyTime",
    #             data_repository_configuration: {
    #               lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #               import_path: "ArchivePath",
    #               export_path: "ArchivePath",
    #               imported_file_chunk_size: 1,
    #               auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #               failure_details: {
    #                 message: "ErrorMessage"
    #               }
    #             },
    #             deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #             per_unit_storage_throughput: 1,
    #             mount_name: "LustreFileSystemMountName",
    #             daily_automatic_backup_start_time: "DailyTime",
    #             automatic_backup_retention_days: 1,
    #             copy_tags_to_backups: false,
    #             drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #             data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #             log_configuration: {
    #               level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #               destination: "GeneralARN"
    #             },
    #             root_squash_configuration: {
    #               root_squash: "LustreRootSquash",
    #               no_squash_nids: ["LustreNoSquashNid"]
    #             },
    #             metadata_configuration: {
    #               iops: 1,
    #               mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #             },
    #             efa_enabled: false,
    #             throughput_capacity: 1,
    #             data_read_cache_configuration: {
    #               sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #               size_gi_b: 1
    #             }
    #           },
    #           administrative_actions: [
    #             {
    #               administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #               progress_percent: 1,
    #               request_time: Time.now,
    #               status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #               target_file_system_values: {
    #                 # recursive FileSystem
    #               },
    #               failure_details: {
    #                 message: "ErrorMessage"
    #               },
    #               target_volume_values: {
    #                 creation_time: Time.now,
    #                 file_system_id: "FileSystemId",
    #                 lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #                 name: "VolumeName",
    #                 ontap_configuration: {
    #                   flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #                   junction_path: "JunctionPath",
    #                   security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #                   size_in_megabytes: 1,
    #                   storage_efficiency_enabled: false,
    #                   storage_virtual_machine_id: "StorageVirtualMachineId",
    #                   storage_virtual_machine_root: false,
    #                   tiering_policy: {
    #                     cooling_period: 1,
    #                     name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #                   },
    #                   uuid: "UUID",
    #                   ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #                   snapshot_policy: "SnapshotPolicy",
    #                   copy_tags_to_backups: false,
    #                   snaplock_configuration: {
    #                     audit_log_volume: false,
    #                     autocommit_period: {
    #                       type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #                       value: 1
    #                     },
    #                     privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #                     retention_period: {
    #                       default_retention: { # required
    #                         type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                         value: 1
    #                       },
    #                       minimum_retention: { # required
    #                         type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                         value: 1
    #                       },
    #                       maximum_retention: { # required
    #                         type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                         value: 1
    #                       }
    #                     },
    #                     snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #                     volume_append_mode_enabled: false
    #                   },
    #                   volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #                   aggregate_configuration: {
    #                     aggregates: ["Aggregate"],
    #                     total_constituents: 1
    #                   },
    #                   size_in_bytes: 1
    #                 },
    #                 resource_arn: "ResourceARN",
    #                 tags: [
    #                   {
    #                     key: "TagKey", # required
    #                     value: "TagValue", # required
    #                   }
    #                 ],
    #                 volume_id: "VolumeId",
    #                 volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #                 lifecycle_transition_reason: {
    #                   message: "ErrorMessage"
    #                 },
    #                 administrative_actions: {
    #                   # recursive AdministrativeActions
    #                 },
    #                 open_zfs_configuration: {
    #                   parent_volume_id: "VolumeId",
    #                   volume_path: "VolumePath",
    #                   storage_capacity_reservation_gi_b: 1,
    #                   storage_capacity_quota_gi_b: 1,
    #                   record_size_ki_b: 1,
    #                   data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #                   copy_tags_to_snapshots: false,
    #                   origin_snapshot: {
    #                     snapshot_arn: "ResourceARN",
    #                     copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #                   },
    #                   read_only: false,
    #                   nfs_exports: [
    #                     {
    #                       client_configurations: [ # required
    #                         {
    #                           clients: "OpenZFSClients", # required
    #                           options: ["OpenZFSNfsExportOption"], # required
    #                         }
    #                       ]
    #                     }
    #                   ],
    #                   user_and_group_quotas: [
    #                     {
    #                       type: "USER" # One of: ["USER", "GROUP"], # required
    #                       id: 1, # required
    #                       storage_capacity_quota_gi_b: 1, # required
    #                     }
    #                   ],
    #                   restore_to_snapshot: "SnapshotId",
    #                   delete_intermediate_snaphots: false,
    #                   delete_cloned_volumes: false,
    #                   delete_intermediate_data: false,
    #                   source_snapshot_arn: "ResourceARN",
    #                   destination_snapshot: "SnapshotId",
    #                   copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #                 }
    #               },
    #               target_snapshot_values: {
    #                 resource_arn: "ResourceARN",
    #                 snapshot_id: "SnapshotId",
    #                 name: "SnapshotName",
    #                 volume_id: "VolumeId",
    #                 creation_time: Time.now,
    #                 lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #                 lifecycle_transition_reason: {
    #                   message: "ErrorMessage"
    #                 },
    #                 tags: [
    #                   {
    #                     key: "TagKey", # required
    #                     value: "TagValue", # required
    #                   }
    #                 ],
    #                 administrative_actions: {
    #                   # recursive AdministrativeActions
    #                 }
    #               },
    #               total_transfer_bytes: 1,
    #               remaining_transfer_bytes: 1,
    #               message: "ErrorMessage"
    #             }
    #           ],
    #           ontap_configuration: {
    #             automatic_backup_retention_days: 1,
    #             daily_automatic_backup_start_time: "DailyTime",
    #             deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #             endpoint_ip_address_range: "IpAddressRange",
    #             endpoints: {
    #               intercluster: {
    #                 dns_name: "DNSName",
    #                 ip_addresses: ["IpAddress"],
    #                 ipv6_addresses: ["IpAddress"]
    #               },
    #               management: {
    #                 dns_name: "DNSName",
    #                 ip_addresses: ["IpAddress"],
    #                 ipv6_addresses: ["IpAddress"]
    #               }
    #             },
    #             disk_iops_configuration: {
    #               mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #               iops: 1
    #             },
    #             preferred_subnet_id: "SubnetId",
    #             route_table_ids: ["RouteTableId"],
    #             throughput_capacity: 1,
    #             weekly_maintenance_start_time: "WeeklyTime",
    #             fsx_admin_password: "AdminPassword",
    #             ha_pairs: 1,
    #             throughput_capacity_per_ha_pair: 1,
    #             endpoint_ipv6_address_range: "Ipv6AddressRange"
    #           },
    #           file_system_type_version: "FileSystemTypeVersion",
    #           open_zfs_configuration: {
    #             automatic_backup_retention_days: 1,
    #             copy_tags_to_backups: false,
    #             copy_tags_to_volumes: false,
    #             daily_automatic_backup_start_time: "DailyTime",
    #             deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #             throughput_capacity: 1,
    #             weekly_maintenance_start_time: "WeeklyTime",
    #             disk_iops_configuration: {
    #               mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #               iops: 1
    #             },
    #             root_volume_id: "VolumeId",
    #             preferred_subnet_id: "SubnetId",
    #             endpoint_ip_address_range: "IpAddressRange",
    #             endpoint_ipv6_address_range: "Ipv6AddressRange",
    #             route_table_ids: ["RouteTableId"],
    #             endpoint_ip_address: "IpAddress",
    #             endpoint_ipv6_address: "IpAddress",
    #             read_cache_configuration: {
    #               sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #               size_gi_b: 1
    #             }
    #           },
    #           network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #         },
    #         directory_information: {
    #           domain_name: "ActiveDirectoryFullyQualifiedName",
    #           active_directory_id: "DirectoryId",
    #           resource_arn: "ResourceARN"
    #         },
    #         owner_id: "AWSAccountId",
    #         source_backup_id: "BackupId",
    #         source_backup_region: "Region",
    #         resource_type: "FILE_SYSTEM" # One of: ["FILE_SYSTEM", "VOLUME"],
    #         volume: {
    #           creation_time: Time.now,
    #           file_system_id: "FileSystemId",
    #           lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #           name: "VolumeName",
    #           ontap_configuration: {
    #             flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #             junction_path: "JunctionPath",
    #             security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #             size_in_megabytes: 1,
    #             storage_efficiency_enabled: false,
    #             storage_virtual_machine_id: "StorageVirtualMachineId",
    #             storage_virtual_machine_root: false,
    #             tiering_policy: {
    #               cooling_period: 1,
    #               name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #             },
    #             uuid: "UUID",
    #             ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #             snapshot_policy: "SnapshotPolicy",
    #             copy_tags_to_backups: false,
    #             snaplock_configuration: {
    #               audit_log_volume: false,
    #               autocommit_period: {
    #                 type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #                 value: 1
    #               },
    #               privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #               retention_period: {
    #                 default_retention: { # required
    #                   type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                   value: 1
    #                 },
    #                 minimum_retention: { # required
    #                   type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                   value: 1
    #                 },
    #                 maximum_retention: { # required
    #                   type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                   value: 1
    #                 }
    #               },
    #               snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #               volume_append_mode_enabled: false
    #             },
    #             volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #             aggregate_configuration: {
    #               aggregates: ["Aggregate"],
    #               total_constituents: 1
    #             },
    #             size_in_bytes: 1
    #           },
    #           resource_arn: "ResourceARN",
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             }
    #           ],
    #           volume_id: "VolumeId",
    #           volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #           lifecycle_transition_reason: {
    #             message: "ErrorMessage"
    #           },
    #           administrative_actions: [
    #             {
    #               administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #               progress_percent: 1,
    #               request_time: Time.now,
    #               status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #               target_file_system_values: {
    #                 owner_id: "AWSAccountId",
    #                 creation_time: Time.now,
    #                 file_system_id: "FileSystemId",
    #                 file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #                 lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #                 failure_details: {
    #                   message: "ErrorMessage"
    #                 },
    #                 storage_capacity: 1,
    #                 storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #                 vpc_id: "VpcId",
    #                 subnet_ids: ["SubnetId"],
    #                 network_interface_ids: ["NetworkInterfaceId"],
    #                 dns_name: "DNSName",
    #                 kms_key_id: "KmsKeyId",
    #                 resource_arn: "ResourceARN",
    #                 tags: [
    #                   {
    #                     key: "TagKey", # required
    #                     value: "TagValue", # required
    #                   }
    #                 ],
    #                 windows_configuration: {
    #                   active_directory_id: "DirectoryId",
    #                   self_managed_active_directory_configuration: {
    #                     domain_name: "ActiveDirectoryFullyQualifiedName",
    #                     organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #                     file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #                     user_name: "DirectoryUserName",
    #                     dns_ips: ["IpAddress"]
    #                   },
    #                   deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #                   remote_administration_endpoint: "DNSName",
    #                   preferred_subnet_id: "SubnetId",
    #                   preferred_file_server_ip: "IpAddress",
    #                   throughput_capacity: 1,
    #                   maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #                   weekly_maintenance_start_time: "WeeklyTime",
    #                   daily_automatic_backup_start_time: "DailyTime",
    #                   automatic_backup_retention_days: 1,
    #                   copy_tags_to_backups: false,
    #                   aliases: [
    #                     {
    #                       name: "AlternateDNSName",
    #                       lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #                     }
    #                   ],
    #                   audit_log_configuration: {
    #                     file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                     file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                     audit_log_destination: "GeneralARN"
    #                   },
    #                   disk_iops_configuration: {
    #                     mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                     iops: 1
    #                   },
    #                   preferred_file_server_ipv6: "IpAddress"
    #                 },
    #                 lustre_configuration: {
    #                   weekly_maintenance_start_time: "WeeklyTime",
    #                   data_repository_configuration: {
    #                     lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #                     import_path: "ArchivePath",
    #                     export_path: "ArchivePath",
    #                     imported_file_chunk_size: 1,
    #                     auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #                     failure_details: {
    #                       message: "ErrorMessage"
    #                     }
    #                   },
    #                   deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #                   per_unit_storage_throughput: 1,
    #                   mount_name: "LustreFileSystemMountName",
    #                   daily_automatic_backup_start_time: "DailyTime",
    #                   automatic_backup_retention_days: 1,
    #                   copy_tags_to_backups: false,
    #                   drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #                   data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #                   log_configuration: {
    #                     level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #                     destination: "GeneralARN"
    #                   },
    #                   root_squash_configuration: {
    #                     root_squash: "LustreRootSquash",
    #                     no_squash_nids: ["LustreNoSquashNid"]
    #                   },
    #                   metadata_configuration: {
    #                     iops: 1,
    #                     mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #                   },
    #                   efa_enabled: false,
    #                   throughput_capacity: 1,
    #                   data_read_cache_configuration: {
    #                     sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                     size_gi_b: 1
    #                   }
    #                 },
    #                 administrative_actions: {
    #                   # recursive AdministrativeActions
    #                 },
    #                 ontap_configuration: {
    #                   automatic_backup_retention_days: 1,
    #                   daily_automatic_backup_start_time: "DailyTime",
    #                   deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #                   endpoint_ip_address_range: "IpAddressRange",
    #                   endpoints: {
    #                     intercluster: {
    #                       dns_name: "DNSName",
    #                       ip_addresses: ["IpAddress"],
    #                       ipv6_addresses: ["IpAddress"]
    #                     },
    #                     management: {
    #                       dns_name: "DNSName",
    #                       ip_addresses: ["IpAddress"],
    #                       ipv6_addresses: ["IpAddress"]
    #                     }
    #                   },
    #                   disk_iops_configuration: {
    #                     mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                     iops: 1
    #                   },
    #                   preferred_subnet_id: "SubnetId",
    #                   route_table_ids: ["RouteTableId"],
    #                   throughput_capacity: 1,
    #                   weekly_maintenance_start_time: "WeeklyTime",
    #                   fsx_admin_password: "AdminPassword",
    #                   ha_pairs: 1,
    #                   throughput_capacity_per_ha_pair: 1,
    #                   endpoint_ipv6_address_range: "Ipv6AddressRange"
    #                 },
    #                 file_system_type_version: "FileSystemTypeVersion",
    #                 open_zfs_configuration: {
    #                   automatic_backup_retention_days: 1,
    #                   copy_tags_to_backups: false,
    #                   copy_tags_to_volumes: false,
    #                   daily_automatic_backup_start_time: "DailyTime",
    #                   deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #                   throughput_capacity: 1,
    #                   weekly_maintenance_start_time: "WeeklyTime",
    #                   disk_iops_configuration: {
    #                     mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                     iops: 1
    #                   },
    #                   root_volume_id: "VolumeId",
    #                   preferred_subnet_id: "SubnetId",
    #                   endpoint_ip_address_range: "IpAddressRange",
    #                   endpoint_ipv6_address_range: "Ipv6AddressRange",
    #                   route_table_ids: ["RouteTableId"],
    #                   endpoint_ip_address: "IpAddress",
    #                   endpoint_ipv6_address: "IpAddress",
    #                   read_cache_configuration: {
    #                     sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                     size_gi_b: 1
    #                   }
    #                 },
    #                 network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #               },
    #               failure_details: {
    #                 message: "ErrorMessage"
    #               },
    #               target_volume_values: {
    #                 # recursive Volume
    #               },
    #               target_snapshot_values: {
    #                 resource_arn: "ResourceARN",
    #                 snapshot_id: "SnapshotId",
    #                 name: "SnapshotName",
    #                 volume_id: "VolumeId",
    #                 creation_time: Time.now,
    #                 lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #                 lifecycle_transition_reason: {
    #                   message: "ErrorMessage"
    #                 },
    #                 tags: [
    #                   {
    #                     key: "TagKey", # required
    #                     value: "TagValue", # required
    #                   }
    #                 ],
    #                 administrative_actions: {
    #                   # recursive AdministrativeActions
    #                 }
    #               },
    #               total_transfer_bytes: 1,
    #               remaining_transfer_bytes: 1,
    #               message: "ErrorMessage"
    #             }
    #           ],
    #           open_zfs_configuration: {
    #             parent_volume_id: "VolumeId",
    #             volume_path: "VolumePath",
    #             storage_capacity_reservation_gi_b: 1,
    #             storage_capacity_quota_gi_b: 1,
    #             record_size_ki_b: 1,
    #             data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #             copy_tags_to_snapshots: false,
    #             origin_snapshot: {
    #               snapshot_arn: "ResourceARN",
    #               copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #             },
    #             read_only: false,
    #             nfs_exports: [
    #               {
    #                 client_configurations: [ # required
    #                   {
    #                     clients: "OpenZFSClients", # required
    #                     options: ["OpenZFSNfsExportOption"], # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             user_and_group_quotas: [
    #               {
    #                 type: "USER" # One of: ["USER", "GROUP"], # required
    #                 id: 1, # required
    #                 storage_capacity_quota_gi_b: 1, # required
    #               }
    #             ],
    #             restore_to_snapshot: "SnapshotId",
    #             delete_intermediate_snaphots: false,
    #             delete_cloned_volumes: false,
    #             delete_intermediate_data: false,
    #             source_snapshot_arn: "ResourceARN",
    #             destination_snapshot: "SnapshotId",
    #             copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #           }
    #         },
    #         size_in_bytes: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeBackupsResponse]
    def describe_backups(params = {}, options = {})
      request = build_request(:describe_backups, params)
      request.send_request(options)
    end

    # <p>Returns the description of specific Amazon FSx for Lustre or Amazon File Cache
    #             data repository associations, if one or more <code>AssociationIds</code> values
    #             are provided in the request, or if filters are used in the request. Data repository
    #             associations are supported on Amazon File Cache resources and all FSx for Lustre
    #             2.12 and 2,15 file systems, excluding <code>scratch_1</code> deployment type.</p>
    #          <p>You can use filters to narrow the response to include just data repository
    #             associations for specific file systems (use the <code>file-system-id</code> filter with
    #             the ID of the file system) or caches (use the <code>file-cache-id</code> filter with
    #             the ID of the cache), or data repository associations for a specific repository type
    #             (use the <code>data-repository-type</code> filter with a value of <code>S3</code>
    #             or <code>NFS</code>). If you don't use filters, the response returns all data
    #             repository associations owned by your Amazon Web Services account in the Amazon Web Services Region
    #             of the endpoint that you're calling.</p>
    #          <p>When retrieving all data repository associations, you can paginate the response by using
    #             the optional <code>MaxResults</code> parameter to limit the number of data repository associations
    #             returned in a response. If more data repository associations remain, a
    #             <code>NextToken</code> value is returned in the response. In this case, send a later
    #             request with the <code>NextToken</code> request parameter set to the value of
    #             <code>NextToken</code> from the last response.</p>
    # @param [Hash, Types::DescribeDataRepositoryAssociationsRequest] params
    # @option params [Array<String>] :association_ids
    #   <p>IDs of the data repository associations whose descriptions you want to retrieve
    #               (String).</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>A list of <code>Filter</code> elements.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resources to return in the response. This value must be
    #               an integer greater than zero.</p>
    # @option params [String] :next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_ids: ["DataRepositoryAssociationId"],
    #     filters: [
    #       {
    #         name: "file-system-id" # One of: ["file-system-id", "backup-type", "file-system-type", "volume-id", "data-repository-type", "file-cache-id", "file-cache-type"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_data_repository_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associations: [
    #       {
    #         association_id: "DataRepositoryAssociationId",
    #         resource_arn: "ResourceARN",
    #         file_system_id: "FileSystemId",
    #         lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #         failure_details: {
    #           message: "ErrorMessage"
    #         },
    #         file_system_path: "Namespace",
    #         data_repository_path: "ArchivePath",
    #         batch_import_meta_data_on_create: false,
    #         imported_file_chunk_size: 1,
    #         s3: {
    #           auto_import_policy: {
    #             events: ["NEW" # One of: ["NEW", "CHANGED", "DELETED"]]
    #           },
    #           auto_export_policy: {
    #             events: ["NEW" # One of: ["NEW", "CHANGED", "DELETED"]]
    #           }
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         creation_time: Time.now,
    #         file_cache_id: "FileCacheId",
    #         file_cache_path: "Namespace",
    #         data_repository_subdirectories: ["Namespace"],
    #         nfs: {
    #           version: "NFS3" # One of: ["NFS3"], # required
    #           dns_ips: ["IpAddress"],
    #           auto_export_policy: {
    #             events: ["NEW" # One of: ["NEW", "CHANGED", "DELETED"]]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeDataRepositoryAssociationsResponse]
    def describe_data_repository_associations(params = {}, options = {})
      request = build_request(:describe_data_repository_associations, params)
      request.send_request(options)
    end

    # <p>Returns the description of specific Amazon FSx for Lustre or Amazon File Cache data repository tasks, if
    #             one or more <code>TaskIds</code> values are provided in the request, or if filters are used in the request. 
    #             You can use filters to narrow the response to include just tasks for specific file systems or caches, 
    #             or tasks in a specific lifecycle state. Otherwise, it returns all data repository tasks owned 
    #             by your Amazon Web Services account in the Amazon Web Services Region of the endpoint that you're calling.</p>
    #          <p>When retrieving all tasks, you can paginate the response by using  the optional <code>MaxResults</code>
    #             parameter to limit the number of tasks returned in a response. If more tasks remain,
    #             a <code>NextToken</code> value is returned in the response. In this case, send a later
    #             request with the <code>NextToken</code> request parameter set to the value of
    #             <code>NextToken</code> from the last response.</p>
    # @param [Hash, Types::DescribeDataRepositoryTasksRequest] params
    # @option params [Array<String>] :task_ids
    #   <p>(Optional) IDs of the tasks whose descriptions you want to retrieve
    #               (String).</p>
    # @option params [Array<Types::DataRepositoryTaskFilter>] :filters
    #   <p>(Optional) You can use filters to narrow the <code>DescribeDataRepositoryTasks</code> response to 
    #               include just tasks for specific file systems, or tasks in a specific lifecycle state.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resources to return in the response. This value must be an
    #               integer greater than zero.</p>
    # @option params [String] :next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_ids: ["TaskId"],
    #     filters: [
    #       {
    #         name: "file-system-id" # One of: ["file-system-id", "task-lifecycle", "data-repository-association-id", "file-cache-id"],
    #         values: ["DataRepositoryTaskFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_data_repository_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_repository_tasks: [
    #       {
    #         task_id: "TaskId", # required
    #         lifecycle: "PENDING" # One of: ["PENDING", "EXECUTING", "FAILED", "SUCCEEDED", "CANCELED", "CANCELING"], # required
    #         type: "EXPORT_TO_REPOSITORY" # One of: ["EXPORT_TO_REPOSITORY", "IMPORT_METADATA_FROM_REPOSITORY", "RELEASE_DATA_FROM_FILESYSTEM", "AUTO_RELEASE_DATA"], # required
    #         creation_time: Time.now, # required
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         resource_arn: "ResourceARN",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         file_system_id: "FileSystemId",
    #         paths: ["DataRepositoryTaskPath"],
    #         failure_details: {
    #           message: "ErrorMessage"
    #         },
    #         status: {
    #           total_count: 1,
    #           succeeded_count: 1,
    #           failed_count: 1,
    #           last_updated_time: Time.now,
    #           released_capacity: 1
    #         },
    #         report: {
    #           enabled: false, # required
    #           path: "ArchivePath",
    #           format: "REPORT_CSV_20191124" # One of: ["REPORT_CSV_20191124"],
    #           scope: "FAILED_FILES_ONLY" # One of: ["FAILED_FILES_ONLY"]
    #         },
    #         capacity_to_release: 1,
    #         file_cache_id: "FileCacheId",
    #         release_configuration: {
    #           duration_since_last_access: {
    #             unit: "DAYS" # One of: ["DAYS"],
    #             value: 1
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeDataRepositoryTasksResponse]
    def describe_data_repository_tasks(params = {}, options = {})
      request = build_request(:describe_data_repository_tasks, params)
      request.send_request(options)
    end

    # <p>Returns the description of a specific Amazon File Cache resource, if a
    #             <code>FileCacheIds</code> value is provided for that cache. Otherwise, it
    #             returns descriptions of all caches owned by your Amazon Web Services account in the
    #             Amazon Web Services Region of the endpoint that you're calling.</p>
    #          <p>When retrieving all cache descriptions, you can optionally specify the
    #             <code>MaxResults</code> parameter to limit the number of descriptions in a response.
    #             If more cache descriptions remain, the operation returns a
    #             <code>NextToken</code> value in the response. In this case, send a later request
    #             with the <code>NextToken</code> request parameter set to the value of
    #             <code>NextToken</code> from the last response.</p>
    #          <p>This operation is used in an iterative process to retrieve a list of your cache
    #             descriptions. <code>DescribeFileCaches</code> is called first without a
    #             <code>NextToken</code>value. Then the operation continues to be called with the
    #             <code>NextToken</code> parameter set to the value of the last <code>NextToken</code>
    #             value until a response has no <code>NextToken</code>.</p>
    #          <p>When using this operation, keep the following in mind:</p>
    #          <ul>
    #             <li>
    #                <p>The implementation might return fewer than <code>MaxResults</code>
    #                     cache descriptions while still including a <code>NextToken</code>
    #                     value.</p>
    #             </li>
    #             <li>
    #                <p>The order of caches returned in the response of one
    #                     <code>DescribeFileCaches</code> call and the order of caches returned
    #                     across the responses of a multicall iteration is unspecified.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeFileCachesRequest] params
    # @option params [Array<String>] :file_cache_ids
    #   <p>IDs of the caches whose descriptions you want to retrieve (String).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resources to return in the response. This value must be an
    #               integer greater than zero.</p>
    # @option params [String] :next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_cache_ids: ["FileCacheId"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_file_caches(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_caches: [
    #       {
    #         owner_id: "AWSAccountId",
    #         creation_time: Time.now,
    #         file_cache_id: "FileCacheId",
    #         file_cache_type: "LUSTRE" # One of: ["LUSTRE"],
    #         file_cache_type_version: "FileSystemTypeVersion",
    #         lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "UPDATING", "FAILED"],
    #         failure_details: {
    #           message: "ErrorMessage"
    #         },
    #         storage_capacity: 1,
    #         vpc_id: "VpcId",
    #         subnet_ids: ["SubnetId"],
    #         network_interface_ids: ["NetworkInterfaceId"],
    #         dns_name: "DNSName",
    #         kms_key_id: "KmsKeyId",
    #         resource_arn: "ResourceARN",
    #         lustre_configuration: {
    #           per_unit_storage_throughput: 1,
    #           deployment_type: "CACHE_1" # One of: ["CACHE_1"],
    #           mount_name: "LustreFileSystemMountName",
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           metadata_configuration: {
    #             storage_capacity: 1, # required
    #           },
    #           log_configuration: {
    #             level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #             destination: "GeneralARN"
    #           }
    #         },
    #         data_repository_association_ids: ["DataRepositoryAssociationId"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeFileCachesResponse]
    def describe_file_caches(params = {}, options = {})
      request = build_request(:describe_file_caches, params)
      request.send_request(options)
    end

    # <p>Returns the DNS aliases that are associated with the specified Amazon FSx for Windows File Server file system. A history of 
    #             all DNS aliases that have been associated with and disassociated from the file system is available in the list of <a>AdministrativeAction</a> 
    #         provided in the <a>DescribeFileSystems</a> operation response.</p>
    # @param [Hash, Types::DescribeFileSystemAliasesRequest] params
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :file_system_id
    #   <p>The ID of the file system to return the associated DNS aliases for
    #               (String).</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of DNS aliases to return in the response (integer). This
    #               parameter value must be greater than 0. The number of items that Amazon FSx returns is
    #               the minimum of the <code>MaxResults</code> parameter specified in the request and the
    #               service's internal maximum number of items per page.</p>
    # @option params [String] :next_token
    #   <p>Opaque pagination token returned from a previous
    #                   <code>DescribeFileSystemAliases</code> operation (String). If a token is included in the request, the action
    #               continues the list from where the previous returning call left off.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     file_system_id: "FileSystemId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_file_system_aliases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aliases: [
    #       {
    #         name: "AlternateDNSName",
    #         lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeFileSystemAliasesResponse]
    def describe_file_system_aliases(params = {}, options = {})
      request = build_request(:describe_file_system_aliases, params)
      request.send_request(options)
    end

    # <p>Returns the description of specific Amazon FSx file systems, if a
    #                 <code>FileSystemIds</code> value is provided for that file system. Otherwise, it
    #             returns descriptions of all file systems owned by your Amazon Web Services account in the
    #                 Amazon Web Services Region of the endpoint that you're calling.</p>
    #          <p>When retrieving all file system descriptions, you can optionally specify the
    #                 <code>MaxResults</code> parameter to limit the number of descriptions in a response.
    #             If more file system descriptions remain, Amazon FSx returns a
    #                 <code>NextToken</code> value in the response. In this case, send a later request
    #             with the <code>NextToken</code> request parameter set to the value of
    #                 <code>NextToken</code> from the last response.</p>
    #          <p>This operation is used in an iterative process to retrieve a list of your file system
    #             descriptions. <code>DescribeFileSystems</code> is called first without a
    #                 <code>NextToken</code>value. Then the operation continues to be called with the
    #                 <code>NextToken</code> parameter set to the value of the last <code>NextToken</code>
    #             value until a response has no <code>NextToken</code>.</p>
    #          <p>When using this operation, keep the following in mind:</p>
    #          <ul>
    #             <li>
    #                <p>The implementation might return fewer than <code>MaxResults</code> file
    #                     system descriptions while still including a <code>NextToken</code>
    #                     value.</p>
    #             </li>
    #             <li>
    #                <p>The order of file systems returned in the response of one
    #                         <code>DescribeFileSystems</code> call and the order of file systems returned
    #                     across the responses of a multicall iteration is unspecified.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeFileSystemsRequest] params
    # @option params [Array<String>] :file_system_ids
    #   <p>IDs of the file systems whose descriptions you want to retrieve
    #               (String).</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of file systems to return in the response (integer). This
    #               parameter value must be greater than 0. The number of items that Amazon FSx returns is
    #               the minimum of the <code>MaxResults</code> parameter specified in the request and the
    #               service's internal maximum number of items per page.</p>
    # @option params [String] :next_token
    #   <p>Opaque pagination token returned from a previous <code>DescribeFileSystems</code>
    #               operation (String). If a token present, the operation continues the list from where the
    #               returning call left off.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_ids: ["FileSystemId"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_file_systems(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_systems: [
    #       {
    #         owner_id: "AWSAccountId",
    #         creation_time: Time.now,
    #         file_system_id: "FileSystemId",
    #         file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #         lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #         failure_details: {
    #           message: "ErrorMessage"
    #         },
    #         storage_capacity: 1,
    #         storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #         vpc_id: "VpcId",
    #         subnet_ids: ["SubnetId"],
    #         network_interface_ids: ["NetworkInterfaceId"],
    #         dns_name: "DNSName",
    #         kms_key_id: "KmsKeyId",
    #         resource_arn: "ResourceARN",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         windows_configuration: {
    #           active_directory_id: "DirectoryId",
    #           self_managed_active_directory_configuration: {
    #             domain_name: "ActiveDirectoryFullyQualifiedName",
    #             organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #             file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #             user_name: "DirectoryUserName",
    #             dns_ips: ["IpAddress"]
    #           },
    #           deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #           remote_administration_endpoint: "DNSName",
    #           preferred_subnet_id: "SubnetId",
    #           preferred_file_server_ip: "IpAddress",
    #           throughput_capacity: 1,
    #           maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           daily_automatic_backup_start_time: "DailyTime",
    #           automatic_backup_retention_days: 1,
    #           copy_tags_to_backups: false,
    #           aliases: [
    #             {
    #               name: "AlternateDNSName",
    #               lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #             }
    #           ],
    #           audit_log_configuration: {
    #             file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #             file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #             audit_log_destination: "GeneralARN"
    #           },
    #           disk_iops_configuration: {
    #             mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #             iops: 1
    #           },
    #           preferred_file_server_ipv6: "IpAddress"
    #         },
    #         lustre_configuration: {
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           data_repository_configuration: {
    #             lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #             import_path: "ArchivePath",
    #             export_path: "ArchivePath",
    #             imported_file_chunk_size: 1,
    #             auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #             failure_details: {
    #               message: "ErrorMessage"
    #             }
    #           },
    #           deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #           per_unit_storage_throughput: 1,
    #           mount_name: "LustreFileSystemMountName",
    #           daily_automatic_backup_start_time: "DailyTime",
    #           automatic_backup_retention_days: 1,
    #           copy_tags_to_backups: false,
    #           drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #           data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #           log_configuration: {
    #             level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #             destination: "GeneralARN"
    #           },
    #           root_squash_configuration: {
    #             root_squash: "LustreRootSquash",
    #             no_squash_nids: ["LustreNoSquashNid"]
    #           },
    #           metadata_configuration: {
    #             iops: 1,
    #             mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #           },
    #           efa_enabled: false,
    #           throughput_capacity: 1,
    #           data_read_cache_configuration: {
    #             sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #             size_gi_b: 1
    #           }
    #         },
    #         administrative_actions: [
    #           {
    #             administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #             progress_percent: 1,
    #             request_time: Time.now,
    #             status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #             target_file_system_values: {
    #               # recursive FileSystem
    #             },
    #             failure_details: {
    #               message: "ErrorMessage"
    #             },
    #             target_volume_values: {
    #               creation_time: Time.now,
    #               file_system_id: "FileSystemId",
    #               lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #               name: "VolumeName",
    #               ontap_configuration: {
    #                 flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #                 junction_path: "JunctionPath",
    #                 security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #                 size_in_megabytes: 1,
    #                 storage_efficiency_enabled: false,
    #                 storage_virtual_machine_id: "StorageVirtualMachineId",
    #                 storage_virtual_machine_root: false,
    #                 tiering_policy: {
    #                   cooling_period: 1,
    #                   name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #                 },
    #                 uuid: "UUID",
    #                 ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #                 snapshot_policy: "SnapshotPolicy",
    #                 copy_tags_to_backups: false,
    #                 snaplock_configuration: {
    #                   audit_log_volume: false,
    #                   autocommit_period: {
    #                     type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #                     value: 1
    #                   },
    #                   privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #                   retention_period: {
    #                     default_retention: { # required
    #                       type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                       value: 1
    #                     },
    #                     minimum_retention: { # required
    #                       type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                       value: 1
    #                     },
    #                     maximum_retention: { # required
    #                       type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                       value: 1
    #                     }
    #                   },
    #                   snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #                   volume_append_mode_enabled: false
    #                 },
    #                 volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #                 aggregate_configuration: {
    #                   aggregates: ["Aggregate"],
    #                   total_constituents: 1
    #                 },
    #                 size_in_bytes: 1
    #               },
    #               resource_arn: "ResourceARN",
    #               tags: [
    #                 {
    #                   key: "TagKey", # required
    #                   value: "TagValue", # required
    #                 }
    #               ],
    #               volume_id: "VolumeId",
    #               volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #               lifecycle_transition_reason: {
    #                 message: "ErrorMessage"
    #               },
    #               administrative_actions: {
    #                 # recursive AdministrativeActions
    #               },
    #               open_zfs_configuration: {
    #                 parent_volume_id: "VolumeId",
    #                 volume_path: "VolumePath",
    #                 storage_capacity_reservation_gi_b: 1,
    #                 storage_capacity_quota_gi_b: 1,
    #                 record_size_ki_b: 1,
    #                 data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #                 copy_tags_to_snapshots: false,
    #                 origin_snapshot: {
    #                   snapshot_arn: "ResourceARN",
    #                   copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #                 },
    #                 read_only: false,
    #                 nfs_exports: [
    #                   {
    #                     client_configurations: [ # required
    #                       {
    #                         clients: "OpenZFSClients", # required
    #                         options: ["OpenZFSNfsExportOption"], # required
    #                       }
    #                     ]
    #                   }
    #                 ],
    #                 user_and_group_quotas: [
    #                   {
    #                     type: "USER" # One of: ["USER", "GROUP"], # required
    #                     id: 1, # required
    #                     storage_capacity_quota_gi_b: 1, # required
    #                   }
    #                 ],
    #                 restore_to_snapshot: "SnapshotId",
    #                 delete_intermediate_snaphots: false,
    #                 delete_cloned_volumes: false,
    #                 delete_intermediate_data: false,
    #                 source_snapshot_arn: "ResourceARN",
    #                 destination_snapshot: "SnapshotId",
    #                 copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #               }
    #             },
    #             target_snapshot_values: {
    #               resource_arn: "ResourceARN",
    #               snapshot_id: "SnapshotId",
    #               name: "SnapshotName",
    #               volume_id: "VolumeId",
    #               creation_time: Time.now,
    #               lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #               lifecycle_transition_reason: {
    #                 message: "ErrorMessage"
    #               },
    #               tags: [
    #                 {
    #                   key: "TagKey", # required
    #                   value: "TagValue", # required
    #                 }
    #               ],
    #               administrative_actions: {
    #                 # recursive AdministrativeActions
    #               }
    #             },
    #             total_transfer_bytes: 1,
    #             remaining_transfer_bytes: 1,
    #             message: "ErrorMessage"
    #           }
    #         ],
    #         ontap_configuration: {
    #           automatic_backup_retention_days: 1,
    #           daily_automatic_backup_start_time: "DailyTime",
    #           deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #           endpoint_ip_address_range: "IpAddressRange",
    #           endpoints: {
    #             intercluster: {
    #               dns_name: "DNSName",
    #               ip_addresses: ["IpAddress"],
    #               ipv6_addresses: ["IpAddress"]
    #             },
    #             management: {
    #               dns_name: "DNSName",
    #               ip_addresses: ["IpAddress"],
    #               ipv6_addresses: ["IpAddress"]
    #             }
    #           },
    #           disk_iops_configuration: {
    #             mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #             iops: 1
    #           },
    #           preferred_subnet_id: "SubnetId",
    #           route_table_ids: ["RouteTableId"],
    #           throughput_capacity: 1,
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           fsx_admin_password: "AdminPassword",
    #           ha_pairs: 1,
    #           throughput_capacity_per_ha_pair: 1,
    #           endpoint_ipv6_address_range: "Ipv6AddressRange"
    #         },
    #         file_system_type_version: "FileSystemTypeVersion",
    #         open_zfs_configuration: {
    #           automatic_backup_retention_days: 1,
    #           copy_tags_to_backups: false,
    #           copy_tags_to_volumes: false,
    #           daily_automatic_backup_start_time: "DailyTime",
    #           deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #           throughput_capacity: 1,
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           disk_iops_configuration: {
    #             mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #             iops: 1
    #           },
    #           root_volume_id: "VolumeId",
    #           preferred_subnet_id: "SubnetId",
    #           endpoint_ip_address_range: "IpAddressRange",
    #           endpoint_ipv6_address_range: "Ipv6AddressRange",
    #           route_table_ids: ["RouteTableId"],
    #           endpoint_ip_address: "IpAddress",
    #           endpoint_ipv6_address: "IpAddress",
    #           read_cache_configuration: {
    #             sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #             size_gi_b: 1
    #           }
    #         },
    #         network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeFileSystemsResponse]
    def describe_file_systems(params = {}, options = {})
      request = build_request(:describe_file_systems, params)
      request.send_request(options)
    end

    # <p>Describes one or more S3 access points attached to Amazon FSx volumes.</p>
    #          <p>The requester requires the following permission to perform this action:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>fsx:DescribeS3AccessPointAttachments</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeS3AccessPointAttachmentsRequest] params
    # @option params [Array<String>] :names
    #   <p>The names of the S3 access point attachments whose descriptions you want to retrieve.</p>
    # @option params [Array<Types::S3AccessPointAttachmentsFilter>] :filters
    #   <p>Enter a filter Name and Values pair to view a select set of S3 access point attachments.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resources to return in the response. This value must be an
    #               integer greater than zero.</p>
    # @option params [String] :next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     names: ["S3AccessPointAttachmentName"],
    #     filters: [
    #       {
    #         name: "file-system-id" # One of: ["file-system-id", "volume-id", "type"],
    #         values: ["S3AccessPointAttachmentsFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_s3_access_point_attachments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     s3_access_point_attachments: [
    #       {
    #         lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "UPDATING", "FAILED"],
    #         lifecycle_transition_reason: {
    #           message: "ErrorMessage"
    #         },
    #         creation_time: Time.now,
    #         name: "S3AccessPointAttachmentName",
    #         type: "OPENZFS" # One of: ["OPENZFS"],
    #         open_zfs_configuration: {
    #           volume_id: "VolumeId",
    #           file_system_identity: {
    #             type: "POSIX" # One of: ["POSIX"], # required
    #             posix_user: {
    #               uid: 1, # required
    #               gid: 1, # required
    #               secondary_gids: [1]
    #             }
    #           }
    #         },
    #         s3_access_point: {
    #           resource_arn: "GeneralARN",
    #           alias: "S3AccessPointAlias",
    #           vpc_configuration: {
    #             vpc_id: "VpcId"
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeS3AccessPointAttachmentsResponse]
    def describe_s3_access_point_attachments(params = {}, options = {})
      request = build_request(:describe_s3_access_point_attachments, params)
      request.send_request(options)
    end

    # <p>Indicates whether participant accounts in your organization can create Amazon FSx for NetApp ONTAP Multi-AZ file systems in subnets that are shared by a virtual
    #             private cloud (VPC) owner. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/creating-file-systems.html#fsxn-vpc-shared-subnets">Creating FSx for ONTAP file systems in shared subnets</a>. </p>
    # @param [Hash, Types::DescribeSharedVpcConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_shared_vpc_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     enable_fsx_route_table_updates_from_participant_accounts: "VerboseFlag"
    #   }
    # @return [Types::DescribeSharedVpcConfigurationResponse]
    def describe_shared_vpc_configuration(params = {}, options = {})
      request = build_request(:describe_shared_vpc_configuration, params)
      request.send_request(options)
    end

    # <p>Returns the description of specific Amazon FSx for OpenZFS snapshots, if a
    #                 <code>SnapshotIds</code> value is provided. Otherwise, this operation returns all
    #             snapshots owned by your Amazon Web Services account in the Amazon Web Services Region of
    #             the endpoint that you're calling.</p>
    #          <p>When retrieving all snapshots, you can optionally specify the <code>MaxResults</code>
    #             parameter to limit the number of snapshots in a response. If more backups remain,
    #                 Amazon FSx returns a <code>NextToken</code> value in the response. In this
    #             case, send a later request with the <code>NextToken</code> request parameter set to the
    #             value of <code>NextToken</code> from the last response. </p>
    #          <p>Use this operation in an iterative process to retrieve a list of your snapshots.
    #                 <code>DescribeSnapshots</code> is called first without a <code>NextToken</code>
    #             value. Then the operation continues to be called with the <code>NextToken</code>
    #             parameter set to the value of the last <code>NextToken</code> value until a response has
    #             no <code>NextToken</code> value.</p>
    #          <p>When using this operation, keep the following in mind:</p>
    #          <ul>
    #             <li>
    #                <p>The operation might return fewer than the <code>MaxResults</code> value of
    #                     snapshot descriptions while still including a <code>NextToken</code>
    #                     value.</p>
    #             </li>
    #             <li>
    #                <p>The order of snapshots returned in the response of one
    #                         <code>DescribeSnapshots</code> call and the order of backups returned across
    #                     the responses of a multi-call iteration is unspecified. </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeSnapshotsRequest] params
    # @option params [Array<String>] :snapshot_ids
    #   <p>The IDs of the snapshots that you want to retrieve. This parameter value overrides any
    #               filters. If any IDs aren't found, a <code>SnapshotNotFound</code> error occurs.</p>
    # @option params [Array<Types::SnapshotFilter>] :filters
    #   <p>The filters structure. The supported names are <code>file-system-id</code> or
    #                   <code>volume-id</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resources to return in the response. This value must be an
    #               integer greater than zero.</p>
    # @option params [String] :next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    # @option params [Boolean] :include_shared
    #   <p>Set to <code>false</code> (default) if you want to only see the snapshots owned by your
    #               Amazon Web Services account. Set to <code>true</code> if you want to see the
    #               snapshots in your account and the ones shared with you from another account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_ids: ["SnapshotId"],
    #     filters: [
    #       {
    #         name: "file-system-id" # One of: ["file-system-id", "volume-id"],
    #         values: ["SnapshotFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     include_shared: false
    #   }
    #   options = {}
    #   response = client.describe_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshots: [
    #       {
    #         resource_arn: "ResourceARN",
    #         snapshot_id: "SnapshotId",
    #         name: "SnapshotName",
    #         volume_id: "VolumeId",
    #         creation_time: Time.now,
    #         lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #         lifecycle_transition_reason: {
    #           message: "ErrorMessage"
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         administrative_actions: [
    #           {
    #             administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #             progress_percent: 1,
    #             request_time: Time.now,
    #             status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #             target_file_system_values: {
    #               owner_id: "AWSAccountId",
    #               creation_time: Time.now,
    #               file_system_id: "FileSystemId",
    #               file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #               lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #               failure_details: {
    #                 message: "ErrorMessage"
    #               },
    #               storage_capacity: 1,
    #               storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #               vpc_id: "VpcId",
    #               subnet_ids: ["SubnetId"],
    #               network_interface_ids: ["NetworkInterfaceId"],
    #               dns_name: "DNSName",
    #               kms_key_id: "KmsKeyId",
    #               resource_arn: "ResourceARN",
    #               tags: [
    #                 {
    #                   key: "TagKey", # required
    #                   value: "TagValue", # required
    #                 }
    #               ],
    #               windows_configuration: {
    #                 active_directory_id: "DirectoryId",
    #                 self_managed_active_directory_configuration: {
    #                   domain_name: "ActiveDirectoryFullyQualifiedName",
    #                   organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #                   file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #                   user_name: "DirectoryUserName",
    #                   dns_ips: ["IpAddress"]
    #                 },
    #                 deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #                 remote_administration_endpoint: "DNSName",
    #                 preferred_subnet_id: "SubnetId",
    #                 preferred_file_server_ip: "IpAddress",
    #                 throughput_capacity: 1,
    #                 maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #                 weekly_maintenance_start_time: "WeeklyTime",
    #                 daily_automatic_backup_start_time: "DailyTime",
    #                 automatic_backup_retention_days: 1,
    #                 copy_tags_to_backups: false,
    #                 aliases: [
    #                   {
    #                     name: "AlternateDNSName",
    #                     lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #                   }
    #                 ],
    #                 audit_log_configuration: {
    #                   file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                   file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                   audit_log_destination: "GeneralARN"
    #                 },
    #                 disk_iops_configuration: {
    #                   mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                   iops: 1
    #                 },
    #                 preferred_file_server_ipv6: "IpAddress"
    #               },
    #               lustre_configuration: {
    #                 weekly_maintenance_start_time: "WeeklyTime",
    #                 data_repository_configuration: {
    #                   lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #                   import_path: "ArchivePath",
    #                   export_path: "ArchivePath",
    #                   imported_file_chunk_size: 1,
    #                   auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #                   failure_details: {
    #                     message: "ErrorMessage"
    #                   }
    #                 },
    #                 deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #                 per_unit_storage_throughput: 1,
    #                 mount_name: "LustreFileSystemMountName",
    #                 daily_automatic_backup_start_time: "DailyTime",
    #                 automatic_backup_retention_days: 1,
    #                 copy_tags_to_backups: false,
    #                 drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #                 data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #                 log_configuration: {
    #                   level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #                   destination: "GeneralARN"
    #                 },
    #                 root_squash_configuration: {
    #                   root_squash: "LustreRootSquash",
    #                   no_squash_nids: ["LustreNoSquashNid"]
    #                 },
    #                 metadata_configuration: {
    #                   iops: 1,
    #                   mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #                 },
    #                 efa_enabled: false,
    #                 throughput_capacity: 1,
    #                 data_read_cache_configuration: {
    #                   sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                   size_gi_b: 1
    #                 }
    #               },
    #               administrative_actions: {
    #                 # recursive AdministrativeActions
    #               },
    #               ontap_configuration: {
    #                 automatic_backup_retention_days: 1,
    #                 daily_automatic_backup_start_time: "DailyTime",
    #                 deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #                 endpoint_ip_address_range: "IpAddressRange",
    #                 endpoints: {
    #                   intercluster: {
    #                     dns_name: "DNSName",
    #                     ip_addresses: ["IpAddress"],
    #                     ipv6_addresses: ["IpAddress"]
    #                   },
    #                   management: {
    #                     dns_name: "DNSName",
    #                     ip_addresses: ["IpAddress"],
    #                     ipv6_addresses: ["IpAddress"]
    #                   }
    #                 },
    #                 disk_iops_configuration: {
    #                   mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                   iops: 1
    #                 },
    #                 preferred_subnet_id: "SubnetId",
    #                 route_table_ids: ["RouteTableId"],
    #                 throughput_capacity: 1,
    #                 weekly_maintenance_start_time: "WeeklyTime",
    #                 fsx_admin_password: "AdminPassword",
    #                 ha_pairs: 1,
    #                 throughput_capacity_per_ha_pair: 1,
    #                 endpoint_ipv6_address_range: "Ipv6AddressRange"
    #               },
    #               file_system_type_version: "FileSystemTypeVersion",
    #               open_zfs_configuration: {
    #                 automatic_backup_retention_days: 1,
    #                 copy_tags_to_backups: false,
    #                 copy_tags_to_volumes: false,
    #                 daily_automatic_backup_start_time: "DailyTime",
    #                 deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #                 throughput_capacity: 1,
    #                 weekly_maintenance_start_time: "WeeklyTime",
    #                 disk_iops_configuration: {
    #                   mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                   iops: 1
    #                 },
    #                 root_volume_id: "VolumeId",
    #                 preferred_subnet_id: "SubnetId",
    #                 endpoint_ip_address_range: "IpAddressRange",
    #                 endpoint_ipv6_address_range: "Ipv6AddressRange",
    #                 route_table_ids: ["RouteTableId"],
    #                 endpoint_ip_address: "IpAddress",
    #                 endpoint_ipv6_address: "IpAddress",
    #                 read_cache_configuration: {
    #                   sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                   size_gi_b: 1
    #                 }
    #               },
    #               network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #             },
    #             failure_details: {
    #               message: "ErrorMessage"
    #             },
    #             target_volume_values: {
    #               creation_time: Time.now,
    #               file_system_id: "FileSystemId",
    #               lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #               name: "VolumeName",
    #               ontap_configuration: {
    #                 flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #                 junction_path: "JunctionPath",
    #                 security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #                 size_in_megabytes: 1,
    #                 storage_efficiency_enabled: false,
    #                 storage_virtual_machine_id: "StorageVirtualMachineId",
    #                 storage_virtual_machine_root: false,
    #                 tiering_policy: {
    #                   cooling_period: 1,
    #                   name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #                 },
    #                 uuid: "UUID",
    #                 ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #                 snapshot_policy: "SnapshotPolicy",
    #                 copy_tags_to_backups: false,
    #                 snaplock_configuration: {
    #                   audit_log_volume: false,
    #                   autocommit_period: {
    #                     type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #                     value: 1
    #                   },
    #                   privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #                   retention_period: {
    #                     default_retention: { # required
    #                       type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                       value: 1
    #                     },
    #                     minimum_retention: { # required
    #                       type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                       value: 1
    #                     },
    #                     maximum_retention: { # required
    #                       type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                       value: 1
    #                     }
    #                   },
    #                   snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #                   volume_append_mode_enabled: false
    #                 },
    #                 volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #                 aggregate_configuration: {
    #                   aggregates: ["Aggregate"],
    #                   total_constituents: 1
    #                 },
    #                 size_in_bytes: 1
    #               },
    #               resource_arn: "ResourceARN",
    #               tags: [
    #                 {
    #                   key: "TagKey", # required
    #                   value: "TagValue", # required
    #                 }
    #               ],
    #               volume_id: "VolumeId",
    #               volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #               lifecycle_transition_reason: {
    #                 message: "ErrorMessage"
    #               },
    #               administrative_actions: {
    #                 # recursive AdministrativeActions
    #               },
    #               open_zfs_configuration: {
    #                 parent_volume_id: "VolumeId",
    #                 volume_path: "VolumePath",
    #                 storage_capacity_reservation_gi_b: 1,
    #                 storage_capacity_quota_gi_b: 1,
    #                 record_size_ki_b: 1,
    #                 data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #                 copy_tags_to_snapshots: false,
    #                 origin_snapshot: {
    #                   snapshot_arn: "ResourceARN",
    #                   copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #                 },
    #                 read_only: false,
    #                 nfs_exports: [
    #                   {
    #                     client_configurations: [ # required
    #                       {
    #                         clients: "OpenZFSClients", # required
    #                         options: ["OpenZFSNfsExportOption"], # required
    #                       }
    #                     ]
    #                   }
    #                 ],
    #                 user_and_group_quotas: [
    #                   {
    #                     type: "USER" # One of: ["USER", "GROUP"], # required
    #                     id: 1, # required
    #                     storage_capacity_quota_gi_b: 1, # required
    #                   }
    #                 ],
    #                 restore_to_snapshot: "SnapshotId",
    #                 delete_intermediate_snaphots: false,
    #                 delete_cloned_volumes: false,
    #                 delete_intermediate_data: false,
    #                 source_snapshot_arn: "ResourceARN",
    #                 destination_snapshot: "SnapshotId",
    #                 copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #               }
    #             },
    #             target_snapshot_values: {
    #               # recursive Snapshot
    #             },
    #             total_transfer_bytes: 1,
    #             remaining_transfer_bytes: 1,
    #             message: "ErrorMessage"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeSnapshotsResponse]
    def describe_snapshots(params = {}, options = {})
      request = build_request(:describe_snapshots, params)
      request.send_request(options)
    end

    # <p>Describes one or more Amazon FSx for NetApp ONTAP storage virtual machines (SVMs).</p>
    # @param [Hash, Types::DescribeStorageVirtualMachinesRequest] params
    # @option params [Array<String>] :storage_virtual_machine_ids
    #   <p>Enter the ID of one or more SVMs that you want to view.</p>
    # @option params [Array<Types::StorageVirtualMachineFilter>] :filters
    #   <p>Enter a filter name:value pair to view a select set of SVMs.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resources to return in the response. This value must be an
    #               integer greater than zero.</p>
    # @option params [String] :next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     storage_virtual_machine_ids: ["StorageVirtualMachineId"],
    #     filters: [
    #       {
    #         name: "file-system-id" # One of: ["file-system-id"],
    #         values: ["StorageVirtualMachineFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_storage_virtual_machines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_virtual_machines: [
    #       {
    #         active_directory_configuration: {
    #           net_bios_name: "NetBiosAlias",
    #           self_managed_active_directory_configuration: {
    #             domain_name: "ActiveDirectoryFullyQualifiedName",
    #             organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #             file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #             user_name: "DirectoryUserName",
    #             dns_ips: ["IpAddress"]
    #           }
    #         },
    #         creation_time: Time.now,
    #         endpoints: {
    #           iscsi: {
    #             dns_name: "DNSName",
    #             ip_addresses: ["IpAddress"],
    #             ipv6_addresses: ["IpAddress"]
    #           },
    #           management: {
    #             dns_name: "DNSName",
    #             ip_addresses: ["IpAddress"],
    #             ipv6_addresses: ["IpAddress"]
    #           },
    #           nfs: {
    #             dns_name: "DNSName",
    #             ip_addresses: ["IpAddress"],
    #             ipv6_addresses: ["IpAddress"]
    #           },
    #           smb: {
    #             dns_name: "DNSName",
    #             ip_addresses: ["IpAddress"],
    #             ipv6_addresses: ["IpAddress"]
    #           }
    #         },
    #         file_system_id: "FileSystemId",
    #         lifecycle: "CREATED" # One of: ["CREATED", "CREATING", "DELETING", "FAILED", "MISCONFIGURED", "PENDING"],
    #         name: "StorageVirtualMachineName",
    #         resource_arn: "ResourceARN",
    #         storage_virtual_machine_id: "StorageVirtualMachineId",
    #         subtype: "DEFAULT" # One of: ["DEFAULT", "DP_DESTINATION", "SYNC_DESTINATION", "SYNC_SOURCE"],
    #         uuid: "UUID",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         lifecycle_transition_reason: {
    #           message: "ErrorMessage"
    #         },
    #         root_volume_security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeStorageVirtualMachinesResponse]
    def describe_storage_virtual_machines(params = {}, options = {})
      request = build_request(:describe_storage_virtual_machines, params)
      request.send_request(options)
    end

    # <p>Describes one or more Amazon FSx for NetApp ONTAP or Amazon FSx for
    #             OpenZFS volumes.</p>
    # @param [Hash, Types::DescribeVolumesRequest] params
    # @option params [Array<String>] :volume_ids
    #   <p>The IDs of the volumes whose descriptions you want to retrieve.</p>
    # @option params [Array<Types::VolumeFilter>] :filters
    #   <p>Enter a filter <code>Name</code> and <code>Values</code> pair to view a select set of
    #               volumes.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resources to return in the response. This value must be an
    #               integer greater than zero.</p>
    # @option params [String] :next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_ids: ["VolumeId"],
    #     filters: [
    #       {
    #         name: "file-system-id" # One of: ["file-system-id", "storage-virtual-machine-id"],
    #         values: ["VolumeFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_volumes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volumes: [
    #       {
    #         creation_time: Time.now,
    #         file_system_id: "FileSystemId",
    #         lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #         name: "VolumeName",
    #         ontap_configuration: {
    #           flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #           junction_path: "JunctionPath",
    #           security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #           size_in_megabytes: 1,
    #           storage_efficiency_enabled: false,
    #           storage_virtual_machine_id: "StorageVirtualMachineId",
    #           storage_virtual_machine_root: false,
    #           tiering_policy: {
    #             cooling_period: 1,
    #             name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #           },
    #           uuid: "UUID",
    #           ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #           snapshot_policy: "SnapshotPolicy",
    #           copy_tags_to_backups: false,
    #           snaplock_configuration: {
    #             audit_log_volume: false,
    #             autocommit_period: {
    #               type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #               value: 1
    #             },
    #             privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #             retention_period: {
    #               default_retention: { # required
    #                 type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                 value: 1
    #               },
    #               minimum_retention: { # required
    #                 type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                 value: 1
    #               },
    #               maximum_retention: { # required
    #                 type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                 value: 1
    #               }
    #             },
    #             snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #             volume_append_mode_enabled: false
    #           },
    #           volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #           aggregate_configuration: {
    #             aggregates: ["Aggregate"],
    #             total_constituents: 1
    #           },
    #           size_in_bytes: 1
    #         },
    #         resource_arn: "ResourceARN",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         volume_id: "VolumeId",
    #         volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #         lifecycle_transition_reason: {
    #           message: "ErrorMessage"
    #         },
    #         administrative_actions: [
    #           {
    #             administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #             progress_percent: 1,
    #             request_time: Time.now,
    #             status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #             target_file_system_values: {
    #               owner_id: "AWSAccountId",
    #               creation_time: Time.now,
    #               file_system_id: "FileSystemId",
    #               file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #               lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #               failure_details: {
    #                 message: "ErrorMessage"
    #               },
    #               storage_capacity: 1,
    #               storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #               vpc_id: "VpcId",
    #               subnet_ids: ["SubnetId"],
    #               network_interface_ids: ["NetworkInterfaceId"],
    #               dns_name: "DNSName",
    #               kms_key_id: "KmsKeyId",
    #               resource_arn: "ResourceARN",
    #               tags: [
    #                 {
    #                   key: "TagKey", # required
    #                   value: "TagValue", # required
    #                 }
    #               ],
    #               windows_configuration: {
    #                 active_directory_id: "DirectoryId",
    #                 self_managed_active_directory_configuration: {
    #                   domain_name: "ActiveDirectoryFullyQualifiedName",
    #                   organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #                   file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #                   user_name: "DirectoryUserName",
    #                   dns_ips: ["IpAddress"]
    #                 },
    #                 deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #                 remote_administration_endpoint: "DNSName",
    #                 preferred_subnet_id: "SubnetId",
    #                 preferred_file_server_ip: "IpAddress",
    #                 throughput_capacity: 1,
    #                 maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #                 weekly_maintenance_start_time: "WeeklyTime",
    #                 daily_automatic_backup_start_time: "DailyTime",
    #                 automatic_backup_retention_days: 1,
    #                 copy_tags_to_backups: false,
    #                 aliases: [
    #                   {
    #                     name: "AlternateDNSName",
    #                     lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #                   }
    #                 ],
    #                 audit_log_configuration: {
    #                   file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                   file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                   audit_log_destination: "GeneralARN"
    #                 },
    #                 disk_iops_configuration: {
    #                   mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                   iops: 1
    #                 },
    #                 preferred_file_server_ipv6: "IpAddress"
    #               },
    #               lustre_configuration: {
    #                 weekly_maintenance_start_time: "WeeklyTime",
    #                 data_repository_configuration: {
    #                   lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #                   import_path: "ArchivePath",
    #                   export_path: "ArchivePath",
    #                   imported_file_chunk_size: 1,
    #                   auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #                   failure_details: {
    #                     message: "ErrorMessage"
    #                   }
    #                 },
    #                 deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #                 per_unit_storage_throughput: 1,
    #                 mount_name: "LustreFileSystemMountName",
    #                 daily_automatic_backup_start_time: "DailyTime",
    #                 automatic_backup_retention_days: 1,
    #                 copy_tags_to_backups: false,
    #                 drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #                 data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #                 log_configuration: {
    #                   level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #                   destination: "GeneralARN"
    #                 },
    #                 root_squash_configuration: {
    #                   root_squash: "LustreRootSquash",
    #                   no_squash_nids: ["LustreNoSquashNid"]
    #                 },
    #                 metadata_configuration: {
    #                   iops: 1,
    #                   mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #                 },
    #                 efa_enabled: false,
    #                 throughput_capacity: 1,
    #                 data_read_cache_configuration: {
    #                   sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                   size_gi_b: 1
    #                 }
    #               },
    #               administrative_actions: {
    #                 # recursive AdministrativeActions
    #               },
    #               ontap_configuration: {
    #                 automatic_backup_retention_days: 1,
    #                 daily_automatic_backup_start_time: "DailyTime",
    #                 deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #                 endpoint_ip_address_range: "IpAddressRange",
    #                 endpoints: {
    #                   intercluster: {
    #                     dns_name: "DNSName",
    #                     ip_addresses: ["IpAddress"],
    #                     ipv6_addresses: ["IpAddress"]
    #                   },
    #                   management: {
    #                     dns_name: "DNSName",
    #                     ip_addresses: ["IpAddress"],
    #                     ipv6_addresses: ["IpAddress"]
    #                   }
    #                 },
    #                 disk_iops_configuration: {
    #                   mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                   iops: 1
    #                 },
    #                 preferred_subnet_id: "SubnetId",
    #                 route_table_ids: ["RouteTableId"],
    #                 throughput_capacity: 1,
    #                 weekly_maintenance_start_time: "WeeklyTime",
    #                 fsx_admin_password: "AdminPassword",
    #                 ha_pairs: 1,
    #                 throughput_capacity_per_ha_pair: 1,
    #                 endpoint_ipv6_address_range: "Ipv6AddressRange"
    #               },
    #               file_system_type_version: "FileSystemTypeVersion",
    #               open_zfs_configuration: {
    #                 automatic_backup_retention_days: 1,
    #                 copy_tags_to_backups: false,
    #                 copy_tags_to_volumes: false,
    #                 daily_automatic_backup_start_time: "DailyTime",
    #                 deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #                 throughput_capacity: 1,
    #                 weekly_maintenance_start_time: "WeeklyTime",
    #                 disk_iops_configuration: {
    #                   mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                   iops: 1
    #                 },
    #                 root_volume_id: "VolumeId",
    #                 preferred_subnet_id: "SubnetId",
    #                 endpoint_ip_address_range: "IpAddressRange",
    #                 endpoint_ipv6_address_range: "Ipv6AddressRange",
    #                 route_table_ids: ["RouteTableId"],
    #                 endpoint_ip_address: "IpAddress",
    #                 endpoint_ipv6_address: "IpAddress",
    #                 read_cache_configuration: {
    #                   sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                   size_gi_b: 1
    #                 }
    #               },
    #               network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #             },
    #             failure_details: {
    #               message: "ErrorMessage"
    #             },
    #             target_volume_values: {
    #               # recursive Volume
    #             },
    #             target_snapshot_values: {
    #               resource_arn: "ResourceARN",
    #               snapshot_id: "SnapshotId",
    #               name: "SnapshotName",
    #               volume_id: "VolumeId",
    #               creation_time: Time.now,
    #               lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #               lifecycle_transition_reason: {
    #                 message: "ErrorMessage"
    #               },
    #               tags: [
    #                 {
    #                   key: "TagKey", # required
    #                   value: "TagValue", # required
    #                 }
    #               ],
    #               administrative_actions: {
    #                 # recursive AdministrativeActions
    #               }
    #             },
    #             total_transfer_bytes: 1,
    #             remaining_transfer_bytes: 1,
    #             message: "ErrorMessage"
    #           }
    #         ],
    #         open_zfs_configuration: {
    #           parent_volume_id: "VolumeId",
    #           volume_path: "VolumePath",
    #           storage_capacity_reservation_gi_b: 1,
    #           storage_capacity_quota_gi_b: 1,
    #           record_size_ki_b: 1,
    #           data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #           copy_tags_to_snapshots: false,
    #           origin_snapshot: {
    #             snapshot_arn: "ResourceARN",
    #             copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #           },
    #           read_only: false,
    #           nfs_exports: [
    #             {
    #               client_configurations: [ # required
    #                 {
    #                   clients: "OpenZFSClients", # required
    #                   options: ["OpenZFSNfsExportOption"], # required
    #                 }
    #               ]
    #             }
    #           ],
    #           user_and_group_quotas: [
    #             {
    #               type: "USER" # One of: ["USER", "GROUP"], # required
    #               id: 1, # required
    #               storage_capacity_quota_gi_b: 1, # required
    #             }
    #           ],
    #           restore_to_snapshot: "SnapshotId",
    #           delete_intermediate_snaphots: false,
    #           delete_cloned_volumes: false,
    #           delete_intermediate_data: false,
    #           source_snapshot_arn: "ResourceARN",
    #           destination_snapshot: "SnapshotId",
    #           copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeVolumesResponse]
    def describe_volumes(params = {}, options = {})
      request = build_request(:describe_volumes, params)
      request.send_request(options)
    end

    # <p>Detaches an S3 access point from an Amazon FSx volume and deletes the S3 access point.</p>
    #          <p>The requester requires the following permission to perform this action:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>fsx:DetachAndDeleteS3AccessPoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>s3:DeleteAccessPoint</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DetachAndDeleteS3AccessPointRequest] params
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :name
    #   <p>The name of the S3 access point attachment that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     name: "S3AccessPointAttachmentName", # required
    #   }
    #   options = {}
    #   response = client.detach_and_delete_s3_access_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "UPDATING", "FAILED"],
    #     name: "S3AccessPointAttachmentName"
    #   }
    # @return [Types::DetachAndDeleteS3AccessPointResponse]
    def detach_and_delete_s3_access_point(params = {}, options = {})
      request = build_request(:detach_and_delete_s3_access_point, params)
      request.send_request(options)
    end

    # <p>Use this action to disassociate, or remove, one or more Domain Name Service (DNS) aliases 
    #             from an Amazon FSx for Windows File Server file system. If you attempt to disassociate a DNS alias that is not 
    #             associated with the file system, Amazon FSx responds with an HTTP status code 400 (Bad Request). For more information, see 
    #             <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html">Working with DNS Aliases</a>.</p>
    #          <p>The system generated response showing the DNS aliases that 
    #             Amazon FSx is attempting to disassociate from the file system. 
    #             Use the  API 
    #             operation to monitor the status of the aliases Amazon FSx is 
    #             disassociating with the file system.</p>
    # @param [Hash, Types::DisassociateFileSystemAliasesRequest] params
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :file_system_id
    #   <p>Specifies the file system from which to disassociate the DNS aliases.</p>
    # @option params [Array<String>] :aliases
    #   <p>An array of one or more DNS alias names to disassociate, or remove, from the file system.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     file_system_id: "FileSystemId", # required
    #     aliases: ["AlternateDNSName"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_file_system_aliases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aliases: [
    #       {
    #         name: "AlternateDNSName",
    #         lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #       }
    #     ]
    #   }
    # @return [Types::DisassociateFileSystemAliasesResponse]
    def disassociate_file_system_aliases(params = {}, options = {})
      request = build_request(:disassociate_file_system_aliases, params)
      request.send_request(options)
    end

    # <p>Lists tags for Amazon FSx resources.</p>
    #          <p>When retrieving all tags, you can optionally specify the <code>MaxResults</code>
    #             parameter to limit the number of tags in a response. If more tags remain, Amazon FSx
    #             returns a <code>NextToken</code> value in the response. In this case, send a later
    #             request with the <code>NextToken</code> request parameter set to the value of
    #                 <code>NextToken</code> from the last response.</p>
    #          <p>This action is used in an iterative process to retrieve a list of your tags.
    #                 <code>ListTagsForResource</code> is called first without a
    #             <code>NextToken</code>value. Then the action continues to be called with the
    #                 <code>NextToken</code> parameter set to the value of the last <code>NextToken</code>
    #             value until a response has no <code>NextToken</code>.</p>
    #          <p>When using this action, keep the following in mind:</p>
    #          <ul>
    #             <li>
    #                <p>The implementation might return fewer than <code>MaxResults</code> file
    #                     system descriptions while still including a <code>NextToken</code>
    #                     value.</p>
    #             </li>
    #             <li>
    #                <p>The order of tags returned in the response of one
    #                         <code>ListTagsForResource</code> call and the order of tags returned across
    #                     the responses of a multi-call iteration is unspecified.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the Amazon FSx resource that will have its tags listed.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of tags to return in the response (integer). This
    #               parameter value must be greater than 0. The number of items that Amazon FSx returns is
    #               the minimum of the <code>MaxResults</code> parameter specified in the request and the
    #               service's internal maximum number of items per page.</p>
    # @option params [String] :next_token
    #   <p>Opaque pagination token returned from a previous
    #                   <code>ListTagsForResource</code> operation (String). If a token present, the action
    #               continues the list from where the returning call left off.</p>
    # @example To list tags for a resource
    #   # This operation lists tags for an Amazon FSx resource.
    #   params = {
    #     resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "Name",
    #         value: "MyFileSystem"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Releases the file system lock from an Amazon FSx for OpenZFS file
    #             system.</p>
    # @param [Hash, Types::ReleaseFileSystemNfsV3LocksRequest] params
    # @option params [String] :file_system_id
    #   <p>The globally unique ID of the file system, assigned by Amazon FSx.</p>
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.release_file_system_nfs_v3_locks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_system: {
    #       owner_id: "AWSAccountId",
    #       creation_time: Time.now,
    #       file_system_id: "FileSystemId",
    #       file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #       lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #       failure_details: {
    #         message: "ErrorMessage"
    #       },
    #       storage_capacity: 1,
    #       storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #       vpc_id: "VpcId",
    #       subnet_ids: ["SubnetId"],
    #       network_interface_ids: ["NetworkInterfaceId"],
    #       dns_name: "DNSName",
    #       kms_key_id: "KmsKeyId",
    #       resource_arn: "ResourceARN",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       windows_configuration: {
    #         active_directory_id: "DirectoryId",
    #         self_managed_active_directory_configuration: {
    #           domain_name: "ActiveDirectoryFullyQualifiedName",
    #           organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #           file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #           user_name: "DirectoryUserName",
    #           dns_ips: ["IpAddress"]
    #         },
    #         deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #         remote_administration_endpoint: "DNSName",
    #         preferred_subnet_id: "SubnetId",
    #         preferred_file_server_ip: "IpAddress",
    #         throughput_capacity: 1,
    #         maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         daily_automatic_backup_start_time: "DailyTime",
    #         automatic_backup_retention_days: 1,
    #         copy_tags_to_backups: false,
    #         aliases: [
    #           {
    #             name: "AlternateDNSName",
    #             lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #           }
    #         ],
    #         audit_log_configuration: {
    #           file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #           file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #           audit_log_destination: "GeneralARN"
    #         },
    #         disk_iops_configuration: {
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #           iops: 1
    #         },
    #         preferred_file_server_ipv6: "IpAddress"
    #       },
    #       lustre_configuration: {
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         data_repository_configuration: {
    #           lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #           import_path: "ArchivePath",
    #           export_path: "ArchivePath",
    #           imported_file_chunk_size: 1,
    #           auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #           failure_details: {
    #             message: "ErrorMessage"
    #           }
    #         },
    #         deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #         per_unit_storage_throughput: 1,
    #         mount_name: "LustreFileSystemMountName",
    #         daily_automatic_backup_start_time: "DailyTime",
    #         automatic_backup_retention_days: 1,
    #         copy_tags_to_backups: false,
    #         drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #         data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #         log_configuration: {
    #           level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #           destination: "GeneralARN"
    #         },
    #         root_squash_configuration: {
    #           root_squash: "LustreRootSquash",
    #           no_squash_nids: ["LustreNoSquashNid"]
    #         },
    #         metadata_configuration: {
    #           iops: 1,
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #         },
    #         efa_enabled: false,
    #         throughput_capacity: 1,
    #         data_read_cache_configuration: {
    #           sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #           size_gi_b: 1
    #         }
    #       },
    #       administrative_actions: [
    #         {
    #           administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #           progress_percent: 1,
    #           request_time: Time.now,
    #           status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #           target_file_system_values: {
    #             # recursive FileSystem
    #           },
    #           failure_details: {
    #             message: "ErrorMessage"
    #           },
    #           target_volume_values: {
    #             creation_time: Time.now,
    #             file_system_id: "FileSystemId",
    #             lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #             name: "VolumeName",
    #             ontap_configuration: {
    #               flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #               junction_path: "JunctionPath",
    #               security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #               size_in_megabytes: 1,
    #               storage_efficiency_enabled: false,
    #               storage_virtual_machine_id: "StorageVirtualMachineId",
    #               storage_virtual_machine_root: false,
    #               tiering_policy: {
    #                 cooling_period: 1,
    #                 name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #               },
    #               uuid: "UUID",
    #               ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #               snapshot_policy: "SnapshotPolicy",
    #               copy_tags_to_backups: false,
    #               snaplock_configuration: {
    #                 audit_log_volume: false,
    #                 autocommit_period: {
    #                   type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #                   value: 1
    #                 },
    #                 privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #                 retention_period: {
    #                   default_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   },
    #                   minimum_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   },
    #                   maximum_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   }
    #                 },
    #                 snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #                 volume_append_mode_enabled: false
    #               },
    #               volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #               aggregate_configuration: {
    #                 aggregates: ["Aggregate"],
    #                 total_constituents: 1
    #               },
    #               size_in_bytes: 1
    #             },
    #             resource_arn: "ResourceARN",
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             volume_id: "VolumeId",
    #             volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #             lifecycle_transition_reason: {
    #               message: "ErrorMessage"
    #             },
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             },
    #             open_zfs_configuration: {
    #               parent_volume_id: "VolumeId",
    #               volume_path: "VolumePath",
    #               storage_capacity_reservation_gi_b: 1,
    #               storage_capacity_quota_gi_b: 1,
    #               record_size_ki_b: 1,
    #               data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #               copy_tags_to_snapshots: false,
    #               origin_snapshot: {
    #                 snapshot_arn: "ResourceARN",
    #                 copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #               },
    #               read_only: false,
    #               nfs_exports: [
    #                 {
    #                   client_configurations: [ # required
    #                     {
    #                       clients: "OpenZFSClients", # required
    #                       options: ["OpenZFSNfsExportOption"], # required
    #                     }
    #                   ]
    #                 }
    #               ],
    #               user_and_group_quotas: [
    #                 {
    #                   type: "USER" # One of: ["USER", "GROUP"], # required
    #                   id: 1, # required
    #                   storage_capacity_quota_gi_b: 1, # required
    #                 }
    #               ],
    #               restore_to_snapshot: "SnapshotId",
    #               delete_intermediate_snaphots: false,
    #               delete_cloned_volumes: false,
    #               delete_intermediate_data: false,
    #               source_snapshot_arn: "ResourceARN",
    #               destination_snapshot: "SnapshotId",
    #               copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #             }
    #           },
    #           target_snapshot_values: {
    #             resource_arn: "ResourceARN",
    #             snapshot_id: "SnapshotId",
    #             name: "SnapshotName",
    #             volume_id: "VolumeId",
    #             creation_time: Time.now,
    #             lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #             lifecycle_transition_reason: {
    #               message: "ErrorMessage"
    #             },
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             }
    #           },
    #           total_transfer_bytes: 1,
    #           remaining_transfer_bytes: 1,
    #           message: "ErrorMessage"
    #         }
    #       ],
    #       ontap_configuration: {
    #         automatic_backup_retention_days: 1,
    #         daily_automatic_backup_start_time: "DailyTime",
    #         deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #         endpoint_ip_address_range: "IpAddressRange",
    #         endpoints: {
    #           intercluster: {
    #             dns_name: "DNSName",
    #             ip_addresses: ["IpAddress"],
    #             ipv6_addresses: ["IpAddress"]
    #           },
    #           management: {
    #             dns_name: "DNSName",
    #             ip_addresses: ["IpAddress"],
    #             ipv6_addresses: ["IpAddress"]
    #           }
    #         },
    #         disk_iops_configuration: {
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #           iops: 1
    #         },
    #         preferred_subnet_id: "SubnetId",
    #         route_table_ids: ["RouteTableId"],
    #         throughput_capacity: 1,
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         fsx_admin_password: "AdminPassword",
    #         ha_pairs: 1,
    #         throughput_capacity_per_ha_pair: 1,
    #         endpoint_ipv6_address_range: "Ipv6AddressRange"
    #       },
    #       file_system_type_version: "FileSystemTypeVersion",
    #       open_zfs_configuration: {
    #         automatic_backup_retention_days: 1,
    #         copy_tags_to_backups: false,
    #         copy_tags_to_volumes: false,
    #         daily_automatic_backup_start_time: "DailyTime",
    #         deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #         throughput_capacity: 1,
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         disk_iops_configuration: {
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #           iops: 1
    #         },
    #         root_volume_id: "VolumeId",
    #         preferred_subnet_id: "SubnetId",
    #         endpoint_ip_address_range: "IpAddressRange",
    #         endpoint_ipv6_address_range: "Ipv6AddressRange",
    #         route_table_ids: ["RouteTableId"],
    #         endpoint_ip_address: "IpAddress",
    #         endpoint_ipv6_address: "IpAddress",
    #         read_cache_configuration: {
    #           sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #           size_gi_b: 1
    #         }
    #       },
    #       network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #     }
    #   }
    # @return [Types::ReleaseFileSystemNfsV3LocksResponse]
    def release_file_system_nfs_v3_locks(params = {}, options = {})
      request = build_request(:release_file_system_nfs_v3_locks, params)
      request.send_request(options)
    end

    # <p>Returns an Amazon FSx for OpenZFS volume to the state saved by the specified
    #             snapshot.</p>
    # @param [Hash, Types::RestoreVolumeFromSnapshotRequest] params
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :volume_id
    #   <p>The ID of the volume that you are restoring.</p>
    # @option params [String] :snapshot_id
    #   <p>The ID of the source snapshot. Specifies the snapshot that you are restoring
    #               from.</p>
    # @option params [Array<String>] :options
    #   <p>The settings used when restoring the specified volume from snapshot.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETE_INTERMEDIATE_SNAPSHOTS</code> - Deletes snapshots between the
    #                       current state and the specified snapshot. If there are intermediate snapshots
    #                       and this option isn't used, <code>RestoreVolumeFromSnapshot</code> fails.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_CLONED_VOLUMES</code> - Deletes any dependent clone volumes 
    #                       created from intermediate snapshots. If there are any dependent clone volumes and this 
    #                       option isn't used, <code>RestoreVolumeFromSnapshot</code> fails.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     volume_id: "VolumeId", # required
    #     snapshot_id: "SnapshotId", # required
    #     options: ["DELETE_INTERMEDIATE_SNAPSHOTS" # One of: ["DELETE_INTERMEDIATE_SNAPSHOTS", "DELETE_CLONED_VOLUMES"]]
    #   }
    #   options = {}
    #   response = client.restore_volume_from_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volume_id: "VolumeId",
    #     lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #     administrative_actions: [
    #       {
    #         administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #         progress_percent: 1,
    #         request_time: Time.now,
    #         status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #         target_file_system_values: {
    #           owner_id: "AWSAccountId",
    #           creation_time: Time.now,
    #           file_system_id: "FileSystemId",
    #           file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #           lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #           failure_details: {
    #             message: "ErrorMessage"
    #           },
    #           storage_capacity: 1,
    #           storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #           vpc_id: "VpcId",
    #           subnet_ids: ["SubnetId"],
    #           network_interface_ids: ["NetworkInterfaceId"],
    #           dns_name: "DNSName",
    #           kms_key_id: "KmsKeyId",
    #           resource_arn: "ResourceARN",
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             }
    #           ],
    #           windows_configuration: {
    #             active_directory_id: "DirectoryId",
    #             self_managed_active_directory_configuration: {
    #               domain_name: "ActiveDirectoryFullyQualifiedName",
    #               organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #               file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #               user_name: "DirectoryUserName",
    #               dns_ips: ["IpAddress"]
    #             },
    #             deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #             remote_administration_endpoint: "DNSName",
    #             preferred_subnet_id: "SubnetId",
    #             preferred_file_server_ip: "IpAddress",
    #             throughput_capacity: 1,
    #             maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #             weekly_maintenance_start_time: "WeeklyTime",
    #             daily_automatic_backup_start_time: "DailyTime",
    #             automatic_backup_retention_days: 1,
    #             copy_tags_to_backups: false,
    #             aliases: [
    #               {
    #                 name: "AlternateDNSName",
    #                 lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #               }
    #             ],
    #             audit_log_configuration: {
    #               file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #               file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #               audit_log_destination: "GeneralARN"
    #             },
    #             disk_iops_configuration: {
    #               mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #               iops: 1
    #             },
    #             preferred_file_server_ipv6: "IpAddress"
    #           },
    #           lustre_configuration: {
    #             weekly_maintenance_start_time: "WeeklyTime",
    #             data_repository_configuration: {
    #               lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #               import_path: "ArchivePath",
    #               export_path: "ArchivePath",
    #               imported_file_chunk_size: 1,
    #               auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #               failure_details: {
    #                 message: "ErrorMessage"
    #               }
    #             },
    #             deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #             per_unit_storage_throughput: 1,
    #             mount_name: "LustreFileSystemMountName",
    #             daily_automatic_backup_start_time: "DailyTime",
    #             automatic_backup_retention_days: 1,
    #             copy_tags_to_backups: false,
    #             drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #             data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #             log_configuration: {
    #               level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #               destination: "GeneralARN"
    #             },
    #             root_squash_configuration: {
    #               root_squash: "LustreRootSquash",
    #               no_squash_nids: ["LustreNoSquashNid"]
    #             },
    #             metadata_configuration: {
    #               iops: 1,
    #               mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #             },
    #             efa_enabled: false,
    #             throughput_capacity: 1,
    #             data_read_cache_configuration: {
    #               sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #               size_gi_b: 1
    #             }
    #           },
    #           administrative_actions: {
    #             # recursive AdministrativeActions
    #           },
    #           ontap_configuration: {
    #             automatic_backup_retention_days: 1,
    #             daily_automatic_backup_start_time: "DailyTime",
    #             deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #             endpoint_ip_address_range: "IpAddressRange",
    #             endpoints: {
    #               intercluster: {
    #                 dns_name: "DNSName",
    #                 ip_addresses: ["IpAddress"],
    #                 ipv6_addresses: ["IpAddress"]
    #               },
    #               management: {
    #                 dns_name: "DNSName",
    #                 ip_addresses: ["IpAddress"],
    #                 ipv6_addresses: ["IpAddress"]
    #               }
    #             },
    #             disk_iops_configuration: {
    #               mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #               iops: 1
    #             },
    #             preferred_subnet_id: "SubnetId",
    #             route_table_ids: ["RouteTableId"],
    #             throughput_capacity: 1,
    #             weekly_maintenance_start_time: "WeeklyTime",
    #             fsx_admin_password: "AdminPassword",
    #             ha_pairs: 1,
    #             throughput_capacity_per_ha_pair: 1,
    #             endpoint_ipv6_address_range: "Ipv6AddressRange"
    #           },
    #           file_system_type_version: "FileSystemTypeVersion",
    #           open_zfs_configuration: {
    #             automatic_backup_retention_days: 1,
    #             copy_tags_to_backups: false,
    #             copy_tags_to_volumes: false,
    #             daily_automatic_backup_start_time: "DailyTime",
    #             deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #             throughput_capacity: 1,
    #             weekly_maintenance_start_time: "WeeklyTime",
    #             disk_iops_configuration: {
    #               mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #               iops: 1
    #             },
    #             root_volume_id: "VolumeId",
    #             preferred_subnet_id: "SubnetId",
    #             endpoint_ip_address_range: "IpAddressRange",
    #             endpoint_ipv6_address_range: "Ipv6AddressRange",
    #             route_table_ids: ["RouteTableId"],
    #             endpoint_ip_address: "IpAddress",
    #             endpoint_ipv6_address: "IpAddress",
    #             read_cache_configuration: {
    #               sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #               size_gi_b: 1
    #             }
    #           },
    #           network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #         },
    #         failure_details: {
    #           message: "ErrorMessage"
    #         },
    #         target_volume_values: {
    #           creation_time: Time.now,
    #           file_system_id: "FileSystemId",
    #           lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #           name: "VolumeName",
    #           ontap_configuration: {
    #             flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #             junction_path: "JunctionPath",
    #             security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #             size_in_megabytes: 1,
    #             storage_efficiency_enabled: false,
    #             storage_virtual_machine_id: "StorageVirtualMachineId",
    #             storage_virtual_machine_root: false,
    #             tiering_policy: {
    #               cooling_period: 1,
    #               name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #             },
    #             uuid: "UUID",
    #             ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #             snapshot_policy: "SnapshotPolicy",
    #             copy_tags_to_backups: false,
    #             snaplock_configuration: {
    #               audit_log_volume: false,
    #               autocommit_period: {
    #                 type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #                 value: 1
    #               },
    #               privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #               retention_period: {
    #                 default_retention: { # required
    #                   type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                   value: 1
    #                 },
    #                 minimum_retention: { # required
    #                   type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                   value: 1
    #                 },
    #                 maximum_retention: { # required
    #                   type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                   value: 1
    #                 }
    #               },
    #               snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #               volume_append_mode_enabled: false
    #             },
    #             volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #             aggregate_configuration: {
    #               aggregates: ["Aggregate"],
    #               total_constituents: 1
    #             },
    #             size_in_bytes: 1
    #           },
    #           resource_arn: "ResourceARN",
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             }
    #           ],
    #           volume_id: "VolumeId",
    #           volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #           lifecycle_transition_reason: {
    #             message: "ErrorMessage"
    #           },
    #           administrative_actions: {
    #             # recursive AdministrativeActions
    #           },
    #           open_zfs_configuration: {
    #             parent_volume_id: "VolumeId",
    #             volume_path: "VolumePath",
    #             storage_capacity_reservation_gi_b: 1,
    #             storage_capacity_quota_gi_b: 1,
    #             record_size_ki_b: 1,
    #             data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #             copy_tags_to_snapshots: false,
    #             origin_snapshot: {
    #               snapshot_arn: "ResourceARN",
    #               copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #             },
    #             read_only: false,
    #             nfs_exports: [
    #               {
    #                 client_configurations: [ # required
    #                   {
    #                     clients: "OpenZFSClients", # required
    #                     options: ["OpenZFSNfsExportOption"], # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             user_and_group_quotas: [
    #               {
    #                 type: "USER" # One of: ["USER", "GROUP"], # required
    #                 id: 1, # required
    #                 storage_capacity_quota_gi_b: 1, # required
    #               }
    #             ],
    #             restore_to_snapshot: "SnapshotId",
    #             delete_intermediate_snaphots: false,
    #             delete_cloned_volumes: false,
    #             delete_intermediate_data: false,
    #             source_snapshot_arn: "ResourceARN",
    #             destination_snapshot: "SnapshotId",
    #             copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #           }
    #         },
    #         target_snapshot_values: {
    #           resource_arn: "ResourceARN",
    #           snapshot_id: "SnapshotId",
    #           name: "SnapshotName",
    #           volume_id: "VolumeId",
    #           creation_time: Time.now,
    #           lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #           lifecycle_transition_reason: {
    #             message: "ErrorMessage"
    #           },
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             }
    #           ],
    #           administrative_actions: {
    #             # recursive AdministrativeActions
    #           }
    #         },
    #         total_transfer_bytes: 1,
    #         remaining_transfer_bytes: 1,
    #         message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::RestoreVolumeFromSnapshotResponse]
    def restore_volume_from_snapshot(params = {}, options = {})
      request = build_request(:restore_volume_from_snapshot, params)
      request.send_request(options)
    end

    # <p>After performing steps to repair the Active Directory configuration of an FSx for Windows File Server file system, use this action to 
    #       initiate the process of Amazon FSx attempting to reconnect to the file system.</p>
    # @param [Hash, Types::StartMisconfiguredStateRecoveryRequest] params
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :file_system_id
    #   <p>The globally unique ID of the file system, assigned by Amazon FSx.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     file_system_id: "FileSystemId", # required
    #   }
    #   options = {}
    #   response = client.start_misconfigured_state_recovery(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_system: {
    #       owner_id: "AWSAccountId",
    #       creation_time: Time.now,
    #       file_system_id: "FileSystemId",
    #       file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #       lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #       failure_details: {
    #         message: "ErrorMessage"
    #       },
    #       storage_capacity: 1,
    #       storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #       vpc_id: "VpcId",
    #       subnet_ids: ["SubnetId"],
    #       network_interface_ids: ["NetworkInterfaceId"],
    #       dns_name: "DNSName",
    #       kms_key_id: "KmsKeyId",
    #       resource_arn: "ResourceARN",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       windows_configuration: {
    #         active_directory_id: "DirectoryId",
    #         self_managed_active_directory_configuration: {
    #           domain_name: "ActiveDirectoryFullyQualifiedName",
    #           organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #           file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #           user_name: "DirectoryUserName",
    #           dns_ips: ["IpAddress"]
    #         },
    #         deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #         remote_administration_endpoint: "DNSName",
    #         preferred_subnet_id: "SubnetId",
    #         preferred_file_server_ip: "IpAddress",
    #         throughput_capacity: 1,
    #         maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         daily_automatic_backup_start_time: "DailyTime",
    #         automatic_backup_retention_days: 1,
    #         copy_tags_to_backups: false,
    #         aliases: [
    #           {
    #             name: "AlternateDNSName",
    #             lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #           }
    #         ],
    #         audit_log_configuration: {
    #           file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #           file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #           audit_log_destination: "GeneralARN"
    #         },
    #         disk_iops_configuration: {
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #           iops: 1
    #         },
    #         preferred_file_server_ipv6: "IpAddress"
    #       },
    #       lustre_configuration: {
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         data_repository_configuration: {
    #           lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #           import_path: "ArchivePath",
    #           export_path: "ArchivePath",
    #           imported_file_chunk_size: 1,
    #           auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #           failure_details: {
    #             message: "ErrorMessage"
    #           }
    #         },
    #         deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #         per_unit_storage_throughput: 1,
    #         mount_name: "LustreFileSystemMountName",
    #         daily_automatic_backup_start_time: "DailyTime",
    #         automatic_backup_retention_days: 1,
    #         copy_tags_to_backups: false,
    #         drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #         data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #         log_configuration: {
    #           level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #           destination: "GeneralARN"
    #         },
    #         root_squash_configuration: {
    #           root_squash: "LustreRootSquash",
    #           no_squash_nids: ["LustreNoSquashNid"]
    #         },
    #         metadata_configuration: {
    #           iops: 1,
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #         },
    #         efa_enabled: false,
    #         throughput_capacity: 1,
    #         data_read_cache_configuration: {
    #           sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #           size_gi_b: 1
    #         }
    #       },
    #       administrative_actions: [
    #         {
    #           administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #           progress_percent: 1,
    #           request_time: Time.now,
    #           status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #           target_file_system_values: {
    #             # recursive FileSystem
    #           },
    #           failure_details: {
    #             message: "ErrorMessage"
    #           },
    #           target_volume_values: {
    #             creation_time: Time.now,
    #             file_system_id: "FileSystemId",
    #             lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #             name: "VolumeName",
    #             ontap_configuration: {
    #               flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #               junction_path: "JunctionPath",
    #               security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #               size_in_megabytes: 1,
    #               storage_efficiency_enabled: false,
    #               storage_virtual_machine_id: "StorageVirtualMachineId",
    #               storage_virtual_machine_root: false,
    #               tiering_policy: {
    #                 cooling_period: 1,
    #                 name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #               },
    #               uuid: "UUID",
    #               ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #               snapshot_policy: "SnapshotPolicy",
    #               copy_tags_to_backups: false,
    #               snaplock_configuration: {
    #                 audit_log_volume: false,
    #                 autocommit_period: {
    #                   type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #                   value: 1
    #                 },
    #                 privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #                 retention_period: {
    #                   default_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   },
    #                   minimum_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   },
    #                   maximum_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   }
    #                 },
    #                 snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #                 volume_append_mode_enabled: false
    #               },
    #               volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #               aggregate_configuration: {
    #                 aggregates: ["Aggregate"],
    #                 total_constituents: 1
    #               },
    #               size_in_bytes: 1
    #             },
    #             resource_arn: "ResourceARN",
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             volume_id: "VolumeId",
    #             volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #             lifecycle_transition_reason: {
    #               message: "ErrorMessage"
    #             },
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             },
    #             open_zfs_configuration: {
    #               parent_volume_id: "VolumeId",
    #               volume_path: "VolumePath",
    #               storage_capacity_reservation_gi_b: 1,
    #               storage_capacity_quota_gi_b: 1,
    #               record_size_ki_b: 1,
    #               data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #               copy_tags_to_snapshots: false,
    #               origin_snapshot: {
    #                 snapshot_arn: "ResourceARN",
    #                 copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #               },
    #               read_only: false,
    #               nfs_exports: [
    #                 {
    #                   client_configurations: [ # required
    #                     {
    #                       clients: "OpenZFSClients", # required
    #                       options: ["OpenZFSNfsExportOption"], # required
    #                     }
    #                   ]
    #                 }
    #               ],
    #               user_and_group_quotas: [
    #                 {
    #                   type: "USER" # One of: ["USER", "GROUP"], # required
    #                   id: 1, # required
    #                   storage_capacity_quota_gi_b: 1, # required
    #                 }
    #               ],
    #               restore_to_snapshot: "SnapshotId",
    #               delete_intermediate_snaphots: false,
    #               delete_cloned_volumes: false,
    #               delete_intermediate_data: false,
    #               source_snapshot_arn: "ResourceARN",
    #               destination_snapshot: "SnapshotId",
    #               copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #             }
    #           },
    #           target_snapshot_values: {
    #             resource_arn: "ResourceARN",
    #             snapshot_id: "SnapshotId",
    #             name: "SnapshotName",
    #             volume_id: "VolumeId",
    #             creation_time: Time.now,
    #             lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #             lifecycle_transition_reason: {
    #               message: "ErrorMessage"
    #             },
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             }
    #           },
    #           total_transfer_bytes: 1,
    #           remaining_transfer_bytes: 1,
    #           message: "ErrorMessage"
    #         }
    #       ],
    #       ontap_configuration: {
    #         automatic_backup_retention_days: 1,
    #         daily_automatic_backup_start_time: "DailyTime",
    #         deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #         endpoint_ip_address_range: "IpAddressRange",
    #         endpoints: {
    #           intercluster: {
    #             dns_name: "DNSName",
    #             ip_addresses: ["IpAddress"],
    #             ipv6_addresses: ["IpAddress"]
    #           },
    #           management: {
    #             dns_name: "DNSName",
    #             ip_addresses: ["IpAddress"],
    #             ipv6_addresses: ["IpAddress"]
    #           }
    #         },
    #         disk_iops_configuration: {
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #           iops: 1
    #         },
    #         preferred_subnet_id: "SubnetId",
    #         route_table_ids: ["RouteTableId"],
    #         throughput_capacity: 1,
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         fsx_admin_password: "AdminPassword",
    #         ha_pairs: 1,
    #         throughput_capacity_per_ha_pair: 1,
    #         endpoint_ipv6_address_range: "Ipv6AddressRange"
    #       },
    #       file_system_type_version: "FileSystemTypeVersion",
    #       open_zfs_configuration: {
    #         automatic_backup_retention_days: 1,
    #         copy_tags_to_backups: false,
    #         copy_tags_to_volumes: false,
    #         daily_automatic_backup_start_time: "DailyTime",
    #         deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #         throughput_capacity: 1,
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         disk_iops_configuration: {
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #           iops: 1
    #         },
    #         root_volume_id: "VolumeId",
    #         preferred_subnet_id: "SubnetId",
    #         endpoint_ip_address_range: "IpAddressRange",
    #         endpoint_ipv6_address_range: "Ipv6AddressRange",
    #         route_table_ids: ["RouteTableId"],
    #         endpoint_ip_address: "IpAddress",
    #         endpoint_ipv6_address: "IpAddress",
    #         read_cache_configuration: {
    #           sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #           size_gi_b: 1
    #         }
    #       },
    #       network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #     }
    #   }
    # @return [Types::StartMisconfiguredStateRecoveryResponse]
    def start_misconfigured_state_recovery(params = {}, options = {})
      request = build_request(:start_misconfigured_state_recovery, params)
      request.send_request(options)
    end

    # <p>Tags an Amazon FSx resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon FSx resource that you want to
    #               tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags for the resource. If a tag with a given key already exists, the
    #               value is replaced by the one specified in this parameter.</p>
    # @example To tag a resource
    #   # This operation tags an Amazon FSx resource.
    #   params = {
    #     resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec",
    #     tags: [
    #       {
    #         key: "Name",
    #         value: "MyFileSystem"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
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
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>This action removes a tag from an Amazon FSx resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the Amazon FSx resource to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of keys of tags on the resource to untag. In case the tag key doesn't exist,
    #               the call will still succeed to be idempotent.</p>
    # @example To untag a resource
    #   # This operation untags an Amazon FSx resource.
    #   params = {
    #     resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec",
    #     tag_keys: [
    #       "Name"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing data repository association
    #             on an Amazon FSx for Lustre file system. Data repository associations
    #             are supported on all FSx for Lustre 2.12 and 2.15 file systems,
    #             excluding <code>scratch_1</code> deployment type.</p>
    # @param [Hash, Types::UpdateDataRepositoryAssociationRequest] params
    # @option params [String] :association_id
    #   <p>The ID of the data repository association that you are updating.</p>
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [Integer] :imported_file_chunk_size
    #   <p>For files imported from a data repository, this value determines the stripe count and
    #               maximum amount of data per file (in MiB) stored on a single physical disk. The maximum
    #               number of disks that a single file can be striped across is limited by the total number
    #               of disks that make up the file system.</p>
    #            <p>The default chunk size is 1,024 MiB (1 GiB) and can go as high as 512,000 MiB (500
    #               GiB). Amazon S3 objects have a maximum size of 5 TB.</p>
    # @option params [Types::S3DataRepositoryConfiguration] :s3
    #   <p>The configuration for an Amazon S3 data repository linked to an
    #               Amazon FSx Lustre file system with a data repository association.
    #               The configuration defines which file events (new, changed, or
    #               deleted files or directories) are automatically imported from
    #               the linked data repository to the file system or automatically
    #               exported from the file system to the data repository.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_id: "DataRepositoryAssociationId", # required
    #     client_request_token: "ClientRequestToken",
    #     imported_file_chunk_size: 1,
    #     s3: {
    #       auto_import_policy: {
    #         events: ["NEW" # One of: ["NEW", "CHANGED", "DELETED"]]
    #       },
    #       auto_export_policy: {
    #         events: ["NEW" # One of: ["NEW", "CHANGED", "DELETED"]]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_data_repository_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association: {
    #       association_id: "DataRepositoryAssociationId",
    #       resource_arn: "ResourceARN",
    #       file_system_id: "FileSystemId",
    #       lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #       failure_details: {
    #         message: "ErrorMessage"
    #       },
    #       file_system_path: "Namespace",
    #       data_repository_path: "ArchivePath",
    #       batch_import_meta_data_on_create: false,
    #       imported_file_chunk_size: 1,
    #       s3: {
    #         auto_import_policy: {
    #           events: ["NEW" # One of: ["NEW", "CHANGED", "DELETED"]]
    #         },
    #         auto_export_policy: {
    #           events: ["NEW" # One of: ["NEW", "CHANGED", "DELETED"]]
    #         }
    #       },
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       creation_time: Time.now,
    #       file_cache_id: "FileCacheId",
    #       file_cache_path: "Namespace",
    #       data_repository_subdirectories: ["Namespace"],
    #       nfs: {
    #         version: "NFS3" # One of: ["NFS3"], # required
    #         dns_ips: ["IpAddress"],
    #         auto_export_policy: {
    #           events: ["NEW" # One of: ["NEW", "CHANGED", "DELETED"]]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::UpdateDataRepositoryAssociationResponse]
    def update_data_repository_association(params = {}, options = {})
      request = build_request(:update_data_repository_association, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing Amazon File Cache resource.
    #             You can update multiple properties in a single request.</p>
    # @param [Hash, Types::UpdateFileCacheRequest] params
    # @option params [String] :file_cache_id
    #   <p>The ID of the cache that you are updating.</p>
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [Types::UpdateFileCacheLustreConfiguration] :lustre_configuration
    #   <p>The configuration updates for an Amazon File Cache resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_cache_id: "FileCacheId", # required
    #     client_request_token: "ClientRequestToken",
    #     lustre_configuration: {
    #       weekly_maintenance_start_time: "WeeklyTime"
    #     }
    #   }
    #   options = {}
    #   response = client.update_file_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_cache: {
    #       owner_id: "AWSAccountId",
    #       creation_time: Time.now,
    #       file_cache_id: "FileCacheId",
    #       file_cache_type: "LUSTRE" # One of: ["LUSTRE"],
    #       file_cache_type_version: "FileSystemTypeVersion",
    #       lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "UPDATING", "FAILED"],
    #       failure_details: {
    #         message: "ErrorMessage"
    #       },
    #       storage_capacity: 1,
    #       vpc_id: "VpcId",
    #       subnet_ids: ["SubnetId"],
    #       network_interface_ids: ["NetworkInterfaceId"],
    #       dns_name: "DNSName",
    #       kms_key_id: "KmsKeyId",
    #       resource_arn: "ResourceARN",
    #       lustre_configuration: {
    #         per_unit_storage_throughput: 1,
    #         deployment_type: "CACHE_1" # One of: ["CACHE_1"],
    #         mount_name: "LustreFileSystemMountName",
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         metadata_configuration: {
    #           storage_capacity: 1, # required
    #         },
    #         log_configuration: {
    #           level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #           destination: "GeneralARN"
    #         }
    #       },
    #       data_repository_association_ids: ["DataRepositoryAssociationId"]
    #     }
    #   }
    # @return [Types::UpdateFileCacheResponse]
    def update_file_cache(params = {}, options = {})
      request = build_request(:update_file_cache, params)
      request.send_request(options)
    end

    # <p>Use this operation to update the configuration of an existing Amazon FSx file
    #       system. You can update multiple properties in a single request.</p>
    #          <p>For FSx for Windows File Server file systems, you can update the following
    #       properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AuditLogConfiguration</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>AutomaticBackupRetentionDays</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DailyAutomaticBackupStartTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DiskIopsConfiguration</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SelfManagedActiveDirectoryConfiguration</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>StorageCapacity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>StorageType</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ThroughputCapacity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>WeeklyMaintenanceStartTime</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For FSx for Lustre file systems, you can update the following
    #       properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AutoImportPolicy</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>AutomaticBackupRetentionDays</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DailyAutomaticBackupStartTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DataCompressionType</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FileSystemTypeVersion</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LogConfiguration</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LustreReadCacheConfiguration</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LustreRootSquashConfiguration</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MetadataConfiguration</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PerUnitStorageThroughput</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>StorageCapacity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ThroughputCapacity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>WeeklyMaintenanceStartTime</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For FSx for ONTAP file systems, you can update the following
    #       properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AddRouteTableIds</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>AutomaticBackupRetentionDays</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DailyAutomaticBackupStartTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DiskIopsConfiguration</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>EndpointIpv6AddressRange</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FsxAdminPassword</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>HAPairs</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RemoveRouteTableIds</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>StorageCapacity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ThroughputCapacity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ThroughputCapacityPerHAPair</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>WeeklyMaintenanceStartTime</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For FSx for OpenZFS file systems, you can update the following
    #       properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AddRouteTableIds</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>AutomaticBackupRetentionDays</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CopyTagsToBackups</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CopyTagsToVolumes</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DailyAutomaticBackupStartTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DiskIopsConfiguration</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>EndpointIpv6AddressRange</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ReadCacheConfiguration</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RemoveRouteTableIds</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>StorageCapacity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ThroughputCapacity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>WeeklyMaintenanceStartTime</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateFileSystemRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID of the file system that you are updating.</p>
    # @option params [String] :client_request_token
    #   <p>A string of up to 63 ASCII characters that Amazon FSx uses to ensure
    #         idempotent updates. This string is automatically filled on your behalf when you use the
    #           Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [Integer] :storage_capacity
    #   <p>Use this parameter to increase the storage capacity of an FSx for Windows File Server,
    #         FSx for Lustre, FSx for OpenZFS, or FSx for ONTAP file system.
    #         For second-generation FSx for ONTAP file systems, you can also decrease the storage capacity.
    #         Specifies the storage capacity target value, in GiB, for the file system that you're updating. </p>
    #            <note>
    #               <p>You can't make a storage capacity increase request if there is an existing storage
    #           capacity increase request in progress.</p>
    #            </note>
    #            <p>For Lustre file systems, the storage capacity target value can be the following:</p>
    #            <ul>
    #               <li>
    #                  <p>For <code>SCRATCH_2</code>, <code>PERSISTENT_1</code>, and <code>PERSISTENT_2 SSD</code> deployment types, valid values
    #           are in multiples of 2400 GiB. The value must be greater than the current storage capacity.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>PERSISTENT HDD</code> file systems, valid values are multiples of 6000 GiB for
    #           12-MBps throughput per TiB file systems and multiples of 1800 GiB for 40-MBps throughput
    #           per TiB file systems. The values must be greater than the current storage capacity.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>SCRATCH_1</code> file systems, you can't increase the storage capacity.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html">Managing storage and throughput
    #         capacity</a> in the <i>FSx for Lustre User Guide</i>.</p>
    #            <p>For FSx for OpenZFS file systems, the storage capacity target value must be at least 10 percent
    #         greater than the current storage capacity value. For more information, see
    #         <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/managing-storage-capacity.html">Managing storage capacity</a> in the <i>FSx for OpenZFS User
    #             Guide</i>.</p>
    #            <p>For Windows file systems, the storage capacity target value must be at least 10 percent
    #         greater than the current storage capacity value. To increase storage capacity, the file system
    #         must have at least 16 MBps of throughput capacity. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html">Managing storage
    #           capacity</a> in the <i>Amazon FSxfor Windows File Server User
    #             Guide</i>.</p>
    #            <p>For ONTAP file systems, when increasing storage capacity, the storage capacity target value must be at least 10 percent
    #         greater than the current storage capacity value. When decreasing storage capacity on second-generation file systems, the target value must be at least 9 percent smaller than the current SSD storage capacity. For more information, see
    #         <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/storage-capacity-and-IOPS.html">File system storage capacity and IOPS</a> in the Amazon FSx for NetApp ONTAP User
    #             Guide.</p>
    # @option params [Types::UpdateFileSystemWindowsConfiguration] :windows_configuration
    #   <p>The configuration updates for an Amazon FSx for Windows File Server file system.</p>
    # @option params [Types::UpdateFileSystemLustreConfiguration] :lustre_configuration
    #   <p>The configuration object for Amazon FSx for Lustre file systems used in the
    #                   <code>UpdateFileSystem</code> operation.</p>
    # @option params [Types::UpdateFileSystemOntapConfiguration] :ontap_configuration
    #   <p>The configuration updates for an Amazon FSx for NetApp ONTAP file system.</p>
    # @option params [Types::UpdateFileSystemOpenZFSConfiguration] :open_zfs_configuration
    #   <p>The configuration updates for an FSx for OpenZFS file system.</p>
    # @option params [String] :storage_type
    #   <p>Specifies the file system's storage type.</p>
    # @option params [String] :file_system_type_version
    #   <p>The Lustre version you are updating an FSx for Lustre file system to.
    #         Valid values are <code>2.12</code> and <code>2.15</code>. The value you choose must be
    #         newer than the file system's current Lustre version.</p>
    # @option params [String] :network_type
    #   <p>Changes the network type of an FSx for OpenZFS file system.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #     client_request_token: "ClientRequestToken",
    #     storage_capacity: 1,
    #     windows_configuration: {
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       daily_automatic_backup_start_time: "DailyTime",
    #       automatic_backup_retention_days: 1,
    #       throughput_capacity: 1,
    #       self_managed_active_directory_configuration: {
    #         user_name: "DirectoryUserName",
    #         password: "DirectoryPassword",
    #         dns_ips: ["IpAddress"],
    #         domain_name: "ActiveDirectoryFullyQualifiedName",
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #         file_system_administrators_group: "FileSystemAdministratorsGroupName"
    #       },
    #       audit_log_configuration: {
    #         file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #         file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #         audit_log_destination: "GeneralARN"
    #       },
    #       disk_iops_configuration: {
    #         mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #         iops: 1
    #       }
    #     },
    #     lustre_configuration: {
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       daily_automatic_backup_start_time: "DailyTime",
    #       automatic_backup_retention_days: 1,
    #       auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #       data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #       log_configuration: {
    #         level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #         destination: "GeneralARN"
    #       },
    #       root_squash_configuration: {
    #         root_squash: "LustreRootSquash",
    #         no_squash_nids: ["LustreNoSquashNid"]
    #       },
    #       per_unit_storage_throughput: 1,
    #       metadata_configuration: {
    #         iops: 1,
    #         mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"]
    #       },
    #       throughput_capacity: 1,
    #       data_read_cache_configuration: {
    #         sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #         size_gi_b: 1
    #       }
    #     },
    #     ontap_configuration: {
    #       automatic_backup_retention_days: 1,
    #       daily_automatic_backup_start_time: "DailyTime",
    #       fsx_admin_password: "AdminPassword",
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       disk_iops_configuration: {
    #         mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #         iops: 1
    #       },
    #       throughput_capacity: 1,
    #       add_route_table_ids: ["RouteTableId"],
    #       remove_route_table_ids: ["RouteTableId"],
    #       throughput_capacity_per_ha_pair: 1,
    #       ha_pairs: 1,
    #       endpoint_ipv6_address_range: "Ipv6AddressRange"
    #     },
    #     open_zfs_configuration: {
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       copy_tags_to_volumes: false,
    #       daily_automatic_backup_start_time: "DailyTime",
    #       throughput_capacity: 1,
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       disk_iops_configuration: {
    #         mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #         iops: 1
    #       },
    #       add_route_table_ids: ["RouteTableId"],
    #       remove_route_table_ids: ["RouteTableId"],
    #       read_cache_configuration: {
    #         sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #         size_gi_b: 1
    #       },
    #       endpoint_ipv6_address_range: "Ipv6AddressRange"
    #     },
    #     storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #     file_system_type_version: "FileSystemTypeVersion",
    #     network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #   }
    #   options = {}
    #   response = client.update_file_system(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_system: {
    #       owner_id: "AWSAccountId",
    #       creation_time: Time.now,
    #       file_system_id: "FileSystemId",
    #       file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #       lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #       failure_details: {
    #         message: "ErrorMessage"
    #       },
    #       storage_capacity: 1,
    #       storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #       vpc_id: "VpcId",
    #       subnet_ids: ["SubnetId"],
    #       network_interface_ids: ["NetworkInterfaceId"],
    #       dns_name: "DNSName",
    #       kms_key_id: "KmsKeyId",
    #       resource_arn: "ResourceARN",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       windows_configuration: {
    #         active_directory_id: "DirectoryId",
    #         self_managed_active_directory_configuration: {
    #           domain_name: "ActiveDirectoryFullyQualifiedName",
    #           organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #           file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #           user_name: "DirectoryUserName",
    #           dns_ips: ["IpAddress"]
    #         },
    #         deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #         remote_administration_endpoint: "DNSName",
    #         preferred_subnet_id: "SubnetId",
    #         preferred_file_server_ip: "IpAddress",
    #         throughput_capacity: 1,
    #         maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         daily_automatic_backup_start_time: "DailyTime",
    #         automatic_backup_retention_days: 1,
    #         copy_tags_to_backups: false,
    #         aliases: [
    #           {
    #             name: "AlternateDNSName",
    #             lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #           }
    #         ],
    #         audit_log_configuration: {
    #           file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #           file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #           audit_log_destination: "GeneralARN"
    #         },
    #         disk_iops_configuration: {
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #           iops: 1
    #         },
    #         preferred_file_server_ipv6: "IpAddress"
    #       },
    #       lustre_configuration: {
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         data_repository_configuration: {
    #           lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #           import_path: "ArchivePath",
    #           export_path: "ArchivePath",
    #           imported_file_chunk_size: 1,
    #           auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #           failure_details: {
    #             message: "ErrorMessage"
    #           }
    #         },
    #         deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #         per_unit_storage_throughput: 1,
    #         mount_name: "LustreFileSystemMountName",
    #         daily_automatic_backup_start_time: "DailyTime",
    #         automatic_backup_retention_days: 1,
    #         copy_tags_to_backups: false,
    #         drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #         data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #         log_configuration: {
    #           level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #           destination: "GeneralARN"
    #         },
    #         root_squash_configuration: {
    #           root_squash: "LustreRootSquash",
    #           no_squash_nids: ["LustreNoSquashNid"]
    #         },
    #         metadata_configuration: {
    #           iops: 1,
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #         },
    #         efa_enabled: false,
    #         throughput_capacity: 1,
    #         data_read_cache_configuration: {
    #           sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #           size_gi_b: 1
    #         }
    #       },
    #       administrative_actions: [
    #         {
    #           administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #           progress_percent: 1,
    #           request_time: Time.now,
    #           status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #           target_file_system_values: {
    #             # recursive FileSystem
    #           },
    #           failure_details: {
    #             message: "ErrorMessage"
    #           },
    #           target_volume_values: {
    #             creation_time: Time.now,
    #             file_system_id: "FileSystemId",
    #             lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #             name: "VolumeName",
    #             ontap_configuration: {
    #               flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #               junction_path: "JunctionPath",
    #               security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #               size_in_megabytes: 1,
    #               storage_efficiency_enabled: false,
    #               storage_virtual_machine_id: "StorageVirtualMachineId",
    #               storage_virtual_machine_root: false,
    #               tiering_policy: {
    #                 cooling_period: 1,
    #                 name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #               },
    #               uuid: "UUID",
    #               ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #               snapshot_policy: "SnapshotPolicy",
    #               copy_tags_to_backups: false,
    #               snaplock_configuration: {
    #                 audit_log_volume: false,
    #                 autocommit_period: {
    #                   type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #                   value: 1
    #                 },
    #                 privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #                 retention_period: {
    #                   default_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   },
    #                   minimum_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   },
    #                   maximum_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   }
    #                 },
    #                 snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #                 volume_append_mode_enabled: false
    #               },
    #               volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #               aggregate_configuration: {
    #                 aggregates: ["Aggregate"],
    #                 total_constituents: 1
    #               },
    #               size_in_bytes: 1
    #             },
    #             resource_arn: "ResourceARN",
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             volume_id: "VolumeId",
    #             volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #             lifecycle_transition_reason: {
    #               message: "ErrorMessage"
    #             },
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             },
    #             open_zfs_configuration: {
    #               parent_volume_id: "VolumeId",
    #               volume_path: "VolumePath",
    #               storage_capacity_reservation_gi_b: 1,
    #               storage_capacity_quota_gi_b: 1,
    #               record_size_ki_b: 1,
    #               data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #               copy_tags_to_snapshots: false,
    #               origin_snapshot: {
    #                 snapshot_arn: "ResourceARN",
    #                 copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #               },
    #               read_only: false,
    #               nfs_exports: [
    #                 {
    #                   client_configurations: [ # required
    #                     {
    #                       clients: "OpenZFSClients", # required
    #                       options: ["OpenZFSNfsExportOption"], # required
    #                     }
    #                   ]
    #                 }
    #               ],
    #               user_and_group_quotas: [
    #                 {
    #                   type: "USER" # One of: ["USER", "GROUP"], # required
    #                   id: 1, # required
    #                   storage_capacity_quota_gi_b: 1, # required
    #                 }
    #               ],
    #               restore_to_snapshot: "SnapshotId",
    #               delete_intermediate_snaphots: false,
    #               delete_cloned_volumes: false,
    #               delete_intermediate_data: false,
    #               source_snapshot_arn: "ResourceARN",
    #               destination_snapshot: "SnapshotId",
    #               copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #             }
    #           },
    #           target_snapshot_values: {
    #             resource_arn: "ResourceARN",
    #             snapshot_id: "SnapshotId",
    #             name: "SnapshotName",
    #             volume_id: "VolumeId",
    #             creation_time: Time.now,
    #             lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #             lifecycle_transition_reason: {
    #               message: "ErrorMessage"
    #             },
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             }
    #           },
    #           total_transfer_bytes: 1,
    #           remaining_transfer_bytes: 1,
    #           message: "ErrorMessage"
    #         }
    #       ],
    #       ontap_configuration: {
    #         automatic_backup_retention_days: 1,
    #         daily_automatic_backup_start_time: "DailyTime",
    #         deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #         endpoint_ip_address_range: "IpAddressRange",
    #         endpoints: {
    #           intercluster: {
    #             dns_name: "DNSName",
    #             ip_addresses: ["IpAddress"],
    #             ipv6_addresses: ["IpAddress"]
    #           },
    #           management: {
    #             dns_name: "DNSName",
    #             ip_addresses: ["IpAddress"],
    #             ipv6_addresses: ["IpAddress"]
    #           }
    #         },
    #         disk_iops_configuration: {
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #           iops: 1
    #         },
    #         preferred_subnet_id: "SubnetId",
    #         route_table_ids: ["RouteTableId"],
    #         throughput_capacity: 1,
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         fsx_admin_password: "AdminPassword",
    #         ha_pairs: 1,
    #         throughput_capacity_per_ha_pair: 1,
    #         endpoint_ipv6_address_range: "Ipv6AddressRange"
    #       },
    #       file_system_type_version: "FileSystemTypeVersion",
    #       open_zfs_configuration: {
    #         automatic_backup_retention_days: 1,
    #         copy_tags_to_backups: false,
    #         copy_tags_to_volumes: false,
    #         daily_automatic_backup_start_time: "DailyTime",
    #         deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #         throughput_capacity: 1,
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         disk_iops_configuration: {
    #           mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #           iops: 1
    #         },
    #         root_volume_id: "VolumeId",
    #         preferred_subnet_id: "SubnetId",
    #         endpoint_ip_address_range: "IpAddressRange",
    #         endpoint_ipv6_address_range: "Ipv6AddressRange",
    #         route_table_ids: ["RouteTableId"],
    #         endpoint_ip_address: "IpAddress",
    #         endpoint_ipv6_address: "IpAddress",
    #         read_cache_configuration: {
    #           sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #           size_gi_b: 1
    #         }
    #       },
    #       network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #     }
    #   }
    # @return [Types::UpdateFileSystemResponse]
    def update_file_system(params = {}, options = {})
      request = build_request(:update_file_system, params)
      request.send_request(options)
    end

    # <p>Configures whether participant accounts in your organization can create Amazon FSx for NetApp ONTAP Multi-AZ file systems in subnets that are shared by a virtual
    #             private cloud (VPC) owner. For more information, see the <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/maz-shared-vpc.html">Amazon FSx for NetApp ONTAP User
    #                 Guide</a>.</p>
    #          <note>
    #             <p>We strongly recommend that participant-created Multi-AZ file systems in the shared
    #                 VPC are deleted before you disable this feature. Once the feature is disabled, these
    #                 file systems will enter a <code>MISCONFIGURED</code> state and behave like Single-AZ
    #                 file systems. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/maz-shared-vpc.html#disabling-maz-vpc-sharing">Important considerations before disabling shared VPC support for Multi-AZ file
    #                     systems</a>.</p>
    #          </note>
    # @param [Hash, Types::UpdateSharedVpcConfigurationRequest] params
    # @option params [String] :enable_fsx_route_table_updates_from_participant_accounts
    #   <p>Specifies whether participant accounts can create FSx for ONTAP Multi-AZ
    #               file systems in shared subnets. Set to <code>true</code> to enable or <code>false</code>
    #               to disable.</p>
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     enable_fsx_route_table_updates_from_participant_accounts: "VerboseFlag",
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.update_shared_vpc_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     enable_fsx_route_table_updates_from_participant_accounts: "VerboseFlag"
    #   }
    # @return [Types::UpdateSharedVpcConfigurationResponse]
    def update_shared_vpc_configuration(params = {}, options = {})
      request = build_request(:update_shared_vpc_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the name of an Amazon FSx for OpenZFS snapshot.</p>
    # @param [Hash, Types::UpdateSnapshotRequest] params
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :name
    #   <p>The name of the snapshot to update.</p>
    # @option params [String] :snapshot_id
    #   <p>The ID of the snapshot that you want to update, in the format
    #                   <code>fsvolsnap-0123456789abcdef0</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     name: "SnapshotName", # required
    #     snapshot_id: "SnapshotId", # required
    #   }
    #   options = {}
    #   response = client.update_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       resource_arn: "ResourceARN",
    #       snapshot_id: "SnapshotId",
    #       name: "SnapshotName",
    #       volume_id: "VolumeId",
    #       creation_time: Time.now,
    #       lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #       lifecycle_transition_reason: {
    #         message: "ErrorMessage"
    #       },
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       administrative_actions: [
    #         {
    #           administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #           progress_percent: 1,
    #           request_time: Time.now,
    #           status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #           target_file_system_values: {
    #             owner_id: "AWSAccountId",
    #             creation_time: Time.now,
    #             file_system_id: "FileSystemId",
    #             file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #             lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #             failure_details: {
    #               message: "ErrorMessage"
    #             },
    #             storage_capacity: 1,
    #             storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #             vpc_id: "VpcId",
    #             subnet_ids: ["SubnetId"],
    #             network_interface_ids: ["NetworkInterfaceId"],
    #             dns_name: "DNSName",
    #             kms_key_id: "KmsKeyId",
    #             resource_arn: "ResourceARN",
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             windows_configuration: {
    #               active_directory_id: "DirectoryId",
    #               self_managed_active_directory_configuration: {
    #                 domain_name: "ActiveDirectoryFullyQualifiedName",
    #                 organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #                 file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #                 user_name: "DirectoryUserName",
    #                 dns_ips: ["IpAddress"]
    #               },
    #               deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #               remote_administration_endpoint: "DNSName",
    #               preferred_subnet_id: "SubnetId",
    #               preferred_file_server_ip: "IpAddress",
    #               throughput_capacity: 1,
    #               maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               daily_automatic_backup_start_time: "DailyTime",
    #               automatic_backup_retention_days: 1,
    #               copy_tags_to_backups: false,
    #               aliases: [
    #                 {
    #                   name: "AlternateDNSName",
    #                   lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #                 }
    #               ],
    #               audit_log_configuration: {
    #                 file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                 file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                 audit_log_destination: "GeneralARN"
    #               },
    #               disk_iops_configuration: {
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                 iops: 1
    #               },
    #               preferred_file_server_ipv6: "IpAddress"
    #             },
    #             lustre_configuration: {
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               data_repository_configuration: {
    #                 lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #                 import_path: "ArchivePath",
    #                 export_path: "ArchivePath",
    #                 imported_file_chunk_size: 1,
    #                 auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #                 failure_details: {
    #                   message: "ErrorMessage"
    #                 }
    #               },
    #               deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #               per_unit_storage_throughput: 1,
    #               mount_name: "LustreFileSystemMountName",
    #               daily_automatic_backup_start_time: "DailyTime",
    #               automatic_backup_retention_days: 1,
    #               copy_tags_to_backups: false,
    #               drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #               data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #               log_configuration: {
    #                 level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #                 destination: "GeneralARN"
    #               },
    #               root_squash_configuration: {
    #                 root_squash: "LustreRootSquash",
    #                 no_squash_nids: ["LustreNoSquashNid"]
    #               },
    #               metadata_configuration: {
    #                 iops: 1,
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #               },
    #               efa_enabled: false,
    #               throughput_capacity: 1,
    #               data_read_cache_configuration: {
    #                 sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                 size_gi_b: 1
    #               }
    #             },
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             },
    #             ontap_configuration: {
    #               automatic_backup_retention_days: 1,
    #               daily_automatic_backup_start_time: "DailyTime",
    #               deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #               endpoint_ip_address_range: "IpAddressRange",
    #               endpoints: {
    #                 intercluster: {
    #                   dns_name: "DNSName",
    #                   ip_addresses: ["IpAddress"],
    #                   ipv6_addresses: ["IpAddress"]
    #                 },
    #                 management: {
    #                   dns_name: "DNSName",
    #                   ip_addresses: ["IpAddress"],
    #                   ipv6_addresses: ["IpAddress"]
    #                 }
    #               },
    #               disk_iops_configuration: {
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                 iops: 1
    #               },
    #               preferred_subnet_id: "SubnetId",
    #               route_table_ids: ["RouteTableId"],
    #               throughput_capacity: 1,
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               fsx_admin_password: "AdminPassword",
    #               ha_pairs: 1,
    #               throughput_capacity_per_ha_pair: 1,
    #               endpoint_ipv6_address_range: "Ipv6AddressRange"
    #             },
    #             file_system_type_version: "FileSystemTypeVersion",
    #             open_zfs_configuration: {
    #               automatic_backup_retention_days: 1,
    #               copy_tags_to_backups: false,
    #               copy_tags_to_volumes: false,
    #               daily_automatic_backup_start_time: "DailyTime",
    #               deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #               throughput_capacity: 1,
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               disk_iops_configuration: {
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                 iops: 1
    #               },
    #               root_volume_id: "VolumeId",
    #               preferred_subnet_id: "SubnetId",
    #               endpoint_ip_address_range: "IpAddressRange",
    #               endpoint_ipv6_address_range: "Ipv6AddressRange",
    #               route_table_ids: ["RouteTableId"],
    #               endpoint_ip_address: "IpAddress",
    #               endpoint_ipv6_address: "IpAddress",
    #               read_cache_configuration: {
    #                 sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                 size_gi_b: 1
    #               }
    #             },
    #             network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #           },
    #           failure_details: {
    #             message: "ErrorMessage"
    #           },
    #           target_volume_values: {
    #             creation_time: Time.now,
    #             file_system_id: "FileSystemId",
    #             lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #             name: "VolumeName",
    #             ontap_configuration: {
    #               flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #               junction_path: "JunctionPath",
    #               security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #               size_in_megabytes: 1,
    #               storage_efficiency_enabled: false,
    #               storage_virtual_machine_id: "StorageVirtualMachineId",
    #               storage_virtual_machine_root: false,
    #               tiering_policy: {
    #                 cooling_period: 1,
    #                 name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #               },
    #               uuid: "UUID",
    #               ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #               snapshot_policy: "SnapshotPolicy",
    #               copy_tags_to_backups: false,
    #               snaplock_configuration: {
    #                 audit_log_volume: false,
    #                 autocommit_period: {
    #                   type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #                   value: 1
    #                 },
    #                 privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #                 retention_period: {
    #                   default_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   },
    #                   minimum_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   },
    #                   maximum_retention: { # required
    #                     type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #                     value: 1
    #                   }
    #                 },
    #                 snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #                 volume_append_mode_enabled: false
    #               },
    #               volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #               aggregate_configuration: {
    #                 aggregates: ["Aggregate"],
    #                 total_constituents: 1
    #               },
    #               size_in_bytes: 1
    #             },
    #             resource_arn: "ResourceARN",
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             volume_id: "VolumeId",
    #             volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #             lifecycle_transition_reason: {
    #               message: "ErrorMessage"
    #             },
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             },
    #             open_zfs_configuration: {
    #               parent_volume_id: "VolumeId",
    #               volume_path: "VolumePath",
    #               storage_capacity_reservation_gi_b: 1,
    #               storage_capacity_quota_gi_b: 1,
    #               record_size_ki_b: 1,
    #               data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #               copy_tags_to_snapshots: false,
    #               origin_snapshot: {
    #                 snapshot_arn: "ResourceARN",
    #                 copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #               },
    #               read_only: false,
    #               nfs_exports: [
    #                 {
    #                   client_configurations: [ # required
    #                     {
    #                       clients: "OpenZFSClients", # required
    #                       options: ["OpenZFSNfsExportOption"], # required
    #                     }
    #                   ]
    #                 }
    #               ],
    #               user_and_group_quotas: [
    #                 {
    #                   type: "USER" # One of: ["USER", "GROUP"], # required
    #                   id: 1, # required
    #                   storage_capacity_quota_gi_b: 1, # required
    #                 }
    #               ],
    #               restore_to_snapshot: "SnapshotId",
    #               delete_intermediate_snaphots: false,
    #               delete_cloned_volumes: false,
    #               delete_intermediate_data: false,
    #               source_snapshot_arn: "ResourceARN",
    #               destination_snapshot: "SnapshotId",
    #               copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #             }
    #           },
    #           target_snapshot_values: {
    #             # recursive Snapshot
    #           },
    #           total_transfer_bytes: 1,
    #           remaining_transfer_bytes: 1,
    #           message: "ErrorMessage"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateSnapshotResponse]
    def update_snapshot(params = {}, options = {})
      request = build_request(:update_snapshot, params)
      request.send_request(options)
    end

    # <p>Updates an FSx for ONTAP storage virtual machine (SVM).</p>
    # @param [Hash, Types::UpdateStorageVirtualMachineRequest] params
    # @option params [Types::UpdateSvmActiveDirectoryConfiguration] :active_directory_configuration
    #   <p>Specifies updates to an SVM's Microsoft Active Directory (AD) configuration.</p>
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :storage_virtual_machine_id
    #   <p>The ID of the SVM that you want to update, in the format <code>svm-0123456789abcdef0</code>.</p>
    # @option params [String] :svm_admin_password
    #   <p>Specifies a new SvmAdminPassword.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     active_directory_configuration: {
    #       self_managed_active_directory_configuration: {
    #         user_name: "DirectoryUserName",
    #         password: "DirectoryPassword",
    #         dns_ips: ["IpAddress"],
    #         domain_name: "ActiveDirectoryFullyQualifiedName",
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #         file_system_administrators_group: "FileSystemAdministratorsGroupName"
    #       },
    #       net_bios_name: "NetBiosAlias"
    #     },
    #     client_request_token: "ClientRequestToken",
    #     storage_virtual_machine_id: "StorageVirtualMachineId", # required
    #     svm_admin_password: "AdminPassword"
    #   }
    #   options = {}
    #   response = client.update_storage_virtual_machine(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_virtual_machine: {
    #       active_directory_configuration: {
    #         net_bios_name: "NetBiosAlias",
    #         self_managed_active_directory_configuration: {
    #           domain_name: "ActiveDirectoryFullyQualifiedName",
    #           organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #           file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #           user_name: "DirectoryUserName",
    #           dns_ips: ["IpAddress"]
    #         }
    #       },
    #       creation_time: Time.now,
    #       endpoints: {
    #         iscsi: {
    #           dns_name: "DNSName",
    #           ip_addresses: ["IpAddress"],
    #           ipv6_addresses: ["IpAddress"]
    #         },
    #         management: {
    #           dns_name: "DNSName",
    #           ip_addresses: ["IpAddress"],
    #           ipv6_addresses: ["IpAddress"]
    #         },
    #         nfs: {
    #           dns_name: "DNSName",
    #           ip_addresses: ["IpAddress"],
    #           ipv6_addresses: ["IpAddress"]
    #         },
    #         smb: {
    #           dns_name: "DNSName",
    #           ip_addresses: ["IpAddress"],
    #           ipv6_addresses: ["IpAddress"]
    #         }
    #       },
    #       file_system_id: "FileSystemId",
    #       lifecycle: "CREATED" # One of: ["CREATED", "CREATING", "DELETING", "FAILED", "MISCONFIGURED", "PENDING"],
    #       name: "StorageVirtualMachineName",
    #       resource_arn: "ResourceARN",
    #       storage_virtual_machine_id: "StorageVirtualMachineId",
    #       subtype: "DEFAULT" # One of: ["DEFAULT", "DP_DESTINATION", "SYNC_DESTINATION", "SYNC_SOURCE"],
    #       uuid: "UUID",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       lifecycle_transition_reason: {
    #         message: "ErrorMessage"
    #       },
    #       root_volume_security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"]
    #     }
    #   }
    # @return [Types::UpdateStorageVirtualMachineResponse]
    def update_storage_virtual_machine(params = {}, options = {})
      request = build_request(:update_storage_virtual_machine, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS volume.</p>
    # @param [Hash, Types::UpdateVolumeRequest] params
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    # @option params [String] :volume_id
    #   <p>The ID of the volume that you want to update, in the format
    #                   <code>fsvol-0123456789abcdef0</code>.</p>
    # @option params [Types::UpdateOntapVolumeConfiguration] :ontap_configuration
    #   <p>The configuration of the ONTAP volume that you are updating.</p>
    # @option params [String] :name
    #   <p>The name of the OpenZFS volume. OpenZFS root volumes are automatically named
    #                   <code>FSX</code>. Child volume names must be unique among their parent volume's
    #               children. The name of the volume is part of the mount string for the OpenZFS volume. </p>
    # @option params [Types::UpdateOpenZFSVolumeConfiguration] :open_zfs_configuration
    #   <p>The configuration of the OpenZFS volume that you are updating.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     volume_id: "VolumeId", # required
    #     ontap_configuration: {
    #       junction_path: "JunctionPath",
    #       security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #       size_in_megabytes: 1,
    #       storage_efficiency_enabled: false,
    #       tiering_policy: {
    #         cooling_period: 1,
    #         name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #       },
    #       snapshot_policy: "SnapshotPolicy",
    #       copy_tags_to_backups: false,
    #       snaplock_configuration: {
    #         audit_log_volume: false,
    #         autocommit_period: {
    #           type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #           value: 1
    #         },
    #         privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #         retention_period: {
    #           default_retention: { # required
    #             type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #             value: 1
    #           },
    #           minimum_retention: { # required
    #             type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #             value: 1
    #           },
    #           maximum_retention: { # required
    #             type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #             value: 1
    #           }
    #         },
    #         volume_append_mode_enabled: false
    #       },
    #       size_in_bytes: 1
    #     },
    #     name: "VolumeName",
    #     open_zfs_configuration: {
    #       storage_capacity_reservation_gi_b: 1,
    #       storage_capacity_quota_gi_b: 1,
    #       record_size_ki_b: 1,
    #       data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #       nfs_exports: [
    #         {
    #           client_configurations: [ # required
    #             {
    #               clients: "OpenZFSClients", # required
    #               options: ["OpenZFSNfsExportOption"], # required
    #             }
    #           ]
    #         }
    #       ],
    #       user_and_group_quotas: [
    #         {
    #           type: "USER" # One of: ["USER", "GROUP"], # required
    #           id: 1, # required
    #           storage_capacity_quota_gi_b: 1, # required
    #         }
    #       ],
    #       read_only: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volume: {
    #       creation_time: Time.now,
    #       file_system_id: "FileSystemId",
    #       lifecycle: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"],
    #       name: "VolumeName",
    #       ontap_configuration: {
    #         flex_cache_endpoint_type: "NONE" # One of: ["NONE", "ORIGIN", "CACHE"],
    #         junction_path: "JunctionPath",
    #         security_style: "UNIX" # One of: ["UNIX", "NTFS", "MIXED"],
    #         size_in_megabytes: 1,
    #         storage_efficiency_enabled: false,
    #         storage_virtual_machine_id: "StorageVirtualMachineId",
    #         storage_virtual_machine_root: false,
    #         tiering_policy: {
    #           cooling_period: 1,
    #           name: "SNAPSHOT_ONLY" # One of: ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #         },
    #         uuid: "UUID",
    #         ontap_volume_type: "RW" # One of: ["RW", "DP", "LS"],
    #         snapshot_policy: "SnapshotPolicy",
    #         copy_tags_to_backups: false,
    #         snaplock_configuration: {
    #           audit_log_volume: false,
    #           autocommit_period: {
    #             type: "MINUTES" # One of: ["MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "NONE"], # required
    #             value: 1
    #           },
    #           privileged_delete: "DISABLED" # One of: ["DISABLED", "ENABLED", "PERMANENTLY_DISABLED"],
    #           retention_period: {
    #             default_retention: { # required
    #               type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #               value: 1
    #             },
    #             minimum_retention: { # required
    #               type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #               value: 1
    #             },
    #             maximum_retention: { # required
    #               type: "SECONDS" # One of: ["SECONDS", "MINUTES", "HOURS", "DAYS", "MONTHS", "YEARS", "INFINITE", "UNSPECIFIED"], # required
    #               value: 1
    #             }
    #           },
    #           snaplock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "ENTERPRISE"],
    #           volume_append_mode_enabled: false
    #         },
    #         volume_style: "FLEXVOL" # One of: ["FLEXVOL", "FLEXGROUP"],
    #         aggregate_configuration: {
    #           aggregates: ["Aggregate"],
    #           total_constituents: 1
    #         },
    #         size_in_bytes: 1
    #       },
    #       resource_arn: "ResourceARN",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       volume_id: "VolumeId",
    #       volume_type: "ONTAP" # One of: ["ONTAP", "OPENZFS"],
    #       lifecycle_transition_reason: {
    #         message: "ErrorMessage"
    #       },
    #       administrative_actions: [
    #         {
    #           administrative_action_type: "FILE_SYSTEM_UPDATE" # One of: ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS", "VOLUME_RESTORE", "THROUGHPUT_OPTIMIZATION", "IOPS_OPTIMIZATION", "STORAGE_TYPE_OPTIMIZATION", "MISCONFIGURED_STATE_RECOVERY", "VOLUME_UPDATE_WITH_SNAPSHOT", "VOLUME_INITIALIZE_WITH_SNAPSHOT", "DOWNLOAD_DATA_FROM_BACKUP"],
    #           progress_percent: 1,
    #           request_time: Time.now,
    #           status: "FAILED" # One of: ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING", "OPTIMIZING", "PAUSED", "CANCELLED"],
    #           target_file_system_values: {
    #             owner_id: "AWSAccountId",
    #             creation_time: Time.now,
    #             file_system_id: "FileSystemId",
    #             file_system_type: "WINDOWS" # One of: ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"],
    #             lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"],
    #             failure_details: {
    #               message: "ErrorMessage"
    #             },
    #             storage_capacity: 1,
    #             storage_type: "SSD" # One of: ["SSD", "HDD", "INTELLIGENT_TIERING"],
    #             vpc_id: "VpcId",
    #             subnet_ids: ["SubnetId"],
    #             network_interface_ids: ["NetworkInterfaceId"],
    #             dns_name: "DNSName",
    #             kms_key_id: "KmsKeyId",
    #             resource_arn: "ResourceARN",
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             windows_configuration: {
    #               active_directory_id: "DirectoryId",
    #               self_managed_active_directory_configuration: {
    #                 domain_name: "ActiveDirectoryFullyQualifiedName",
    #                 organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #                 file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #                 user_name: "DirectoryUserName",
    #                 dns_ips: ["IpAddress"]
    #               },
    #               deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"],
    #               remote_administration_endpoint: "DNSName",
    #               preferred_subnet_id: "SubnetId",
    #               preferred_file_server_ip: "IpAddress",
    #               throughput_capacity: 1,
    #               maintenance_operations_in_progress: ["PATCHING" # One of: ["PATCHING", "BACKING_UP"]],
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               daily_automatic_backup_start_time: "DailyTime",
    #               automatic_backup_retention_days: 1,
    #               copy_tags_to_backups: false,
    #               aliases: [
    #                 {
    #                   name: "AlternateDNSName",
    #                   lifecycle: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #                 }
    #               ],
    #               audit_log_configuration: {
    #                 file_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                 file_share_access_audit_log_level: "DISABLED" # One of: ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"], # required
    #                 audit_log_destination: "GeneralARN"
    #               },
    #               disk_iops_configuration: {
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                 iops: 1
    #               },
    #               preferred_file_server_ipv6: "IpAddress"
    #             },
    #             lustre_configuration: {
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               data_repository_configuration: {
    #                 lifecycle: "CREATING" # One of: ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"],
    #                 import_path: "ArchivePath",
    #                 export_path: "ArchivePath",
    #                 imported_file_chunk_size: 1,
    #                 auto_import_policy: "NONE" # One of: ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"],
    #                 failure_details: {
    #                   message: "ErrorMessage"
    #                 }
    #               },
    #               deployment_type: "SCRATCH_1" # One of: ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"],
    #               per_unit_storage_throughput: 1,
    #               mount_name: "LustreFileSystemMountName",
    #               daily_automatic_backup_start_time: "DailyTime",
    #               automatic_backup_retention_days: 1,
    #               copy_tags_to_backups: false,
    #               drive_cache_type: "NONE" # One of: ["NONE", "READ"],
    #               data_compression_type: "NONE" # One of: ["NONE", "LZ4"],
    #               log_configuration: {
    #                 level: "DISABLED" # One of: ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"], # required
    #                 destination: "GeneralARN"
    #               },
    #               root_squash_configuration: {
    #                 root_squash: "LustreRootSquash",
    #                 no_squash_nids: ["LustreNoSquashNid"]
    #               },
    #               metadata_configuration: {
    #                 iops: 1,
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"], # required
    #               },
    #               efa_enabled: false,
    #               throughput_capacity: 1,
    #               data_read_cache_configuration: {
    #                 sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                 size_gi_b: 1
    #               }
    #             },
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             },
    #             ontap_configuration: {
    #               automatic_backup_retention_days: 1,
    #               daily_automatic_backup_start_time: "DailyTime",
    #               deployment_type: "MULTI_AZ_1" # One of: ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2", "MULTI_AZ_2"],
    #               endpoint_ip_address_range: "IpAddressRange",
    #               endpoints: {
    #                 intercluster: {
    #                   dns_name: "DNSName",
    #                   ip_addresses: ["IpAddress"],
    #                   ipv6_addresses: ["IpAddress"]
    #                 },
    #                 management: {
    #                   dns_name: "DNSName",
    #                   ip_addresses: ["IpAddress"],
    #                   ipv6_addresses: ["IpAddress"]
    #                 }
    #               },
    #               disk_iops_configuration: {
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                 iops: 1
    #               },
    #               preferred_subnet_id: "SubnetId",
    #               route_table_ids: ["RouteTableId"],
    #               throughput_capacity: 1,
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               fsx_admin_password: "AdminPassword",
    #               ha_pairs: 1,
    #               throughput_capacity_per_ha_pair: 1,
    #               endpoint_ipv6_address_range: "Ipv6AddressRange"
    #             },
    #             file_system_type_version: "FileSystemTypeVersion",
    #             open_zfs_configuration: {
    #               automatic_backup_retention_days: 1,
    #               copy_tags_to_backups: false,
    #               copy_tags_to_volumes: false,
    #               daily_automatic_backup_start_time: "DailyTime",
    #               deployment_type: "SINGLE_AZ_1" # One of: ["SINGLE_AZ_1", "SINGLE_AZ_2", "SINGLE_AZ_HA_1", "SINGLE_AZ_HA_2", "MULTI_AZ_1"],
    #               throughput_capacity: 1,
    #               weekly_maintenance_start_time: "WeeklyTime",
    #               disk_iops_configuration: {
    #                 mode: "AUTOMATIC" # One of: ["AUTOMATIC", "USER_PROVISIONED"],
    #                 iops: 1
    #               },
    #               root_volume_id: "VolumeId",
    #               preferred_subnet_id: "SubnetId",
    #               endpoint_ip_address_range: "IpAddressRange",
    #               endpoint_ipv6_address_range: "Ipv6AddressRange",
    #               route_table_ids: ["RouteTableId"],
    #               endpoint_ip_address: "IpAddress",
    #               endpoint_ipv6_address: "IpAddress",
    #               read_cache_configuration: {
    #                 sizing_mode: "NO_CACHE" # One of: ["NO_CACHE", "USER_PROVISIONED", "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"],
    #                 size_gi_b: 1
    #               }
    #             },
    #             network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #           },
    #           failure_details: {
    #             message: "ErrorMessage"
    #           },
    #           target_volume_values: {
    #             # recursive Volume
    #           },
    #           target_snapshot_values: {
    #             resource_arn: "ResourceARN",
    #             snapshot_id: "SnapshotId",
    #             name: "SnapshotName",
    #             volume_id: "VolumeId",
    #             creation_time: Time.now,
    #             lifecycle: "PENDING" # One of: ["PENDING", "CREATING", "DELETING", "AVAILABLE"],
    #             lifecycle_transition_reason: {
    #               message: "ErrorMessage"
    #             },
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               }
    #             ],
    #             administrative_actions: {
    #               # recursive AdministrativeActions
    #             }
    #           },
    #           total_transfer_bytes: 1,
    #           remaining_transfer_bytes: 1,
    #           message: "ErrorMessage"
    #         }
    #       ],
    #       open_zfs_configuration: {
    #         parent_volume_id: "VolumeId",
    #         volume_path: "VolumePath",
    #         storage_capacity_reservation_gi_b: 1,
    #         storage_capacity_quota_gi_b: 1,
    #         record_size_ki_b: 1,
    #         data_compression_type: "NONE" # One of: ["NONE", "ZSTD", "LZ4"],
    #         copy_tags_to_snapshots: false,
    #         origin_snapshot: {
    #           snapshot_arn: "ResourceARN",
    #           copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #         },
    #         read_only: false,
    #         nfs_exports: [
    #           {
    #             client_configurations: [ # required
    #               {
    #                 clients: "OpenZFSClients", # required
    #                 options: ["OpenZFSNfsExportOption"], # required
    #               }
    #             ]
    #           }
    #         ],
    #         user_and_group_quotas: [
    #           {
    #             type: "USER" # One of: ["USER", "GROUP"], # required
    #             id: 1, # required
    #             storage_capacity_quota_gi_b: 1, # required
    #           }
    #         ],
    #         restore_to_snapshot: "SnapshotId",
    #         delete_intermediate_snaphots: false,
    #         delete_cloned_volumes: false,
    #         delete_intermediate_data: false,
    #         source_snapshot_arn: "ResourceARN",
    #         destination_snapshot: "SnapshotId",
    #         copy_strategy: "CLONE" # One of: ["CLONE", "FULL_COPY", "INCREMENTAL_COPY"]
    #       }
    #     }
    #   }
    # @return [Types::UpdateVolumeResponse]
    def update_volume(params = {}, options = {})
      request = build_request(:update_volume, params)
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
      context[:gem_name] = 'aws-sdk-fsx'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
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

      # @api private
      def protocols
        {
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
