# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:fsx)

module Aws::FSx
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :fsx

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a backup of an existing Amazon FSx for Windows File Server
    # file system. Creating regular backups for your file system is a best
    # practice that complements the replication that Amazon FSx for Windows
    # File Server performs for your file system. It also enables you to
    # restore from user modification of data.
    #
    # If a backup with the specified client request token exists, and the
    # parameters match, this operation returns the description of the
    # existing backup. If a backup specified client request token exists,
    # and the parameters don't match, this operation returns
    # `IncompatibleParameterError`. If a backup with the specified client
    # request token doesn't exist, `CreateBackup` does the following:
    #
    # * Creates a new Amazon FSx backup with an assigned ID, and an initial
    #   lifecycle state of `CREATING`.
    #
    # * Returns the description of the backup.
    #
    # By using the idempotent operation, you can retry a `CreateBackup`
    # operation without the risk of creating an extra backup. This approach
    # can be useful when an initial call fails in a way that makes it
    # unclear whether a backup was created. If you use the same client
    # request token and the initial call created a backup, the operation
    # returns a successful result because all the parameters are the same.
    #
    # The `CreateFileSystem` operation returns while the backup's lifecycle
    # state is still `CREATING`. You can check the file system creation
    # status by calling the DescribeBackups operation, which returns the
    # backup state along with other information.
    #
    # <note markdown="1">
    #
    #  </note>
    #
    # @option params [required, String] :file_system_id
    #   The ID of the file system to back up.
    #
    # @option params [String] :client_request_token
    #   (Optional) A string of up to 64 ASCII characters that Amazon FSx uses
    #   to ensure idempotent creation. This string is automatically filled on
    #   your behalf when you use the AWS Command Line Interface (AWS CLI) or
    #   an AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to apply to the backup at backup creation. The key value of
    #   the `Name` tag appears in the console as the backup name.
    #
    # @return [Types::CreateBackupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBackupResponse#backup #backup} => Types::Backup
    #
    #
    # @example Example: To create a new backup
    #
    #   # This operation creates a new backup.
    #
    #   resp = client.create_backup({
    #     file_system_id: "fs-0498eed5fe91001ec", 
    #     tags: [
    #       {
    #         key: "Name", 
    #         value: "MyBackup", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     backup: {
    #       backup_id: "backup-03e3c82e0183b7b6b", 
    #       creation_time: Time.parse("1481841524.0"), 
    #       file_system: {
    #         file_system_id: "fs-0498eed5fe91001ec", 
    #         owner_id: "012345678912", 
    #         storage_capacity: 300, 
    #         windows_configuration: {
    #           active_directory_id: "d-1234abcd12", 
    #           automatic_backup_retention_days: 30, 
    #           daily_automatic_backup_start_time: "05:00", 
    #           weekly_maintenance_start_time: "1:05:00", 
    #         }, 
    #       }, 
    #       lifecycle: "CREATING", 
    #       progress_percent: 0, 
    #       resource_arn: "arn:aws:fsx:us-east-1:012345678912:backup/backup-03e3c82e0183b7b6b", 
    #       tags: [
    #         {
    #           key: "Name", 
    #           value: "MyBackup", 
    #         }, 
    #       ], 
    #       type: "USER_INITIATED", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backup({
    #     file_system_id: "FileSystemId", # required
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.backup.backup_id #=> String
    #   resp.backup.lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETED", "FAILED"
    #   resp.backup.failure_details.message #=> String
    #   resp.backup.type #=> String, one of "AUTOMATIC", "USER_INITIATED"
    #   resp.backup.progress_percent #=> Integer
    #   resp.backup.creation_time #=> Time
    #   resp.backup.kms_key_id #=> String
    #   resp.backup.resource_arn #=> String
    #   resp.backup.tags #=> Array
    #   resp.backup.tags[0].key #=> String
    #   resp.backup.tags[0].value #=> String
    #   resp.backup.file_system.owner_id #=> String
    #   resp.backup.file_system.creation_time #=> Time
    #   resp.backup.file_system.file_system_id #=> String
    #   resp.backup.file_system.file_system_type #=> String, one of "WINDOWS", "LUSTRE"
    #   resp.backup.file_system.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING"
    #   resp.backup.file_system.failure_details.message #=> String
    #   resp.backup.file_system.storage_capacity #=> Integer
    #   resp.backup.file_system.vpc_id #=> String
    #   resp.backup.file_system.subnet_ids #=> Array
    #   resp.backup.file_system.subnet_ids[0] #=> String
    #   resp.backup.file_system.network_interface_ids #=> Array
    #   resp.backup.file_system.network_interface_ids[0] #=> String
    #   resp.backup.file_system.dns_name #=> String
    #   resp.backup.file_system.kms_key_id #=> String
    #   resp.backup.file_system.resource_arn #=> String
    #   resp.backup.file_system.tags #=> Array
    #   resp.backup.file_system.tags[0].key #=> String
    #   resp.backup.file_system.tags[0].value #=> String
    #   resp.backup.file_system.windows_configuration.active_directory_id #=> String
    #   resp.backup.file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.backup.file_system.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.backup.file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.backup.file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backup.file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backup.file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backup.file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.backup.file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.backup.file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.backup.file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateBackup AWS API Documentation
    #
    # @overload create_backup(params = {})
    # @param [Hash] params ({})
    def create_backup(params = {}, options = {})
      req = build_request(:create_backup, params)
      req.send_request(options)
    end

    # Creates a new, empty Amazon FSx file system.
    #
    # If a file system with the specified client request token exists and
    # the parameters match, `CreateFileSystem` returns the description of
    # the existing file system. If a file system specified client request
    # token exists and the parameters don't match, this call returns
    # `IncompatibleParameterError`. If a file system with the specified
    # client request token doesn't exist, `CreateFileSystem` does the
    # following:
    #
    # * Creates a new, empty Amazon FSx file system with an assigned ID, and
    #   an initial lifecycle state of `CREATING`.
    #
    # * Returns the description of the file system.
    #
    # This operation requires a client request token in the request that
    # Amazon FSx uses to ensure idempotent creation. This means that calling
    # the operation multiple times with the same client request token has no
    # effect. By using the idempotent operation, you can retry a
    # `CreateFileSystem` operation without the risk of creating an extra
    # file system. This approach can be useful when an initial call fails in
    # a way that makes it unclear whether a file system was created.
    # Examples are if a transport level timeout occurred, or your connection
    # was reset. If you use the same client request token and the initial
    # call created a file system, the client receives success as long as the
    # parameters are the same.
    #
    # <note markdown="1"> The `CreateFileSystem` call returns while the file system's lifecycle
    # state is still `CREATING`. You can check the file-system creation
    # status by calling the DescribeFileSystems operation, which returns the
    # file system state along with other information.
    #
    #  </note>
    #
    # @option params [String] :client_request_token
    #   (Optional) A string of up to 64 ASCII characters that Amazon FSx uses
    #   to ensure idempotent creation. This string is automatically filled on
    #   your behalf when you use the AWS Command Line Interface (AWS CLI) or
    #   an AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :file_system_type
    #   The type of file system.
    #
    # @option params [required, Integer] :storage_capacity
    #   The storage capacity of the file system.
    #
    #   For Windows file systems, the storage capacity has a minimum of 300
    #   GiB, and a maximum of 65,536 GiB.
    #
    #   For Lustre file systems, the storage capacity has a minimum of 3,600
    #   GiB. Storage capacity is provisioned in increments of 3,600 GiB.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   A list of IDs for the subnets that the file system will be accessible
    #   from. File systems support only one subnet. The file server is also
    #   launched in that subnet's Availability Zone.
    #
    # @option params [Array<String>] :security_group_ids
    #   A list of IDs for the security groups that apply to the specified
    #   network interfaces created for file system access. These security
    #   groups will apply to all network interfaces. This list isn't returned
    #   in later describe requests.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be applied to the file system at file system creation. The
    #   key value of the `Name` tag appears in the console as the file system
    #   name.
    #
    # @option params [String] :kms_key_id
    #   The ID of your AWS Key Management Service (AWS KMS) key. This ID is
    #   used to encrypt the data in your file system at rest. For more
    #   information, see [Encrypt][1] in the *AWS Key Management Service API
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html
    #
    # @option params [Types::CreateFileSystemWindowsConfiguration] :windows_configuration
    #   The configuration for this Microsoft Windows file system.
    #
    # @option params [Types::CreateFileSystemLustreConfiguration] :lustre_configuration
    #   The configuration object for Lustre file systems used in the
    #   `CreateFileSystem` operation.
    #
    # @return [Types::CreateFileSystemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFileSystemResponse#file_system #file_system} => Types::FileSystem
    #
    #
    # @example Example: To create a new file system
    #
    #   # This operation creates a new file system.
    #
    #   resp = client.create_file_system({
    #     client_request_token: "a8ca07e4-61ec-4399-99f4-19853801bcd5", 
    #     file_system_type: "WINDOWS", 
    #     kms_key_id: "arn:aws:kms:us-east-1:012345678912:key/0ff3ea8d-130e-4133-877f-93908b6fdbd6", 
    #     security_group_ids: [
    #       "sg-edcd9784", 
    #     ], 
    #     storage_capacity: 300, 
    #     subnet_ids: [
    #       "subnet-1234abcd", 
    #     ], 
    #     tags: [
    #       {
    #         key: "Name", 
    #         value: "MyFileSystem", 
    #       }, 
    #     ], 
    #     windows_configuration: {
    #       active_directory_id: "d-1234abcd12", 
    #       automatic_backup_retention_days: 30, 
    #       daily_automatic_backup_start_time: "05:00", 
    #       throughput_capacity: 8, 
    #       weekly_maintenance_start_time: "1:05:00", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_system: {
    #       creation_time: Time.parse("1481841524.0"), 
    #       dns_name: "fs-0498eed5fe91001ec.fsx.com", 
    #       file_system_id: "fs-0498eed5fe91001ec", 
    #       kms_key_id: "arn:aws:kms:us-east-1:012345678912:key/0ff3ea8d-130e-4133-877f-93908b6fdbd6", 
    #       lifecycle: "CREATING", 
    #       owner_id: "012345678912", 
    #       resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec", 
    #       storage_capacity: 300, 
    #       subnet_ids: [
    #         "subnet-1234abcd", 
    #       ], 
    #       tags: [
    #         {
    #           key: "Name", 
    #           value: "MyFileSystem", 
    #         }, 
    #       ], 
    #       vpc_id: "vpc-ab1234cd", 
    #       windows_configuration: {
    #         active_directory_id: "d-1234abcd12", 
    #         automatic_backup_retention_days: 30, 
    #         daily_automatic_backup_start_time: "05:00", 
    #         throughput_capacity: 8, 
    #         weekly_maintenance_start_time: "1:05:00", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_file_system({
    #     client_request_token: "ClientRequestToken",
    #     file_system_type: "WINDOWS", # required, accepts WINDOWS, LUSTRE
    #     storage_capacity: 1, # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     kms_key_id: "KmsKeyId",
    #     windows_configuration: {
    #       active_directory_id: "DirectoryId",
    #       throughput_capacity: 1, # required
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       daily_automatic_backup_start_time: "DailyTime",
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #     },
    #     lustre_configuration: {
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       import_path: "ArchivePath",
    #       export_path: "ArchivePath",
    #       imported_file_chunk_size: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.file_system.owner_id #=> String
    #   resp.file_system.creation_time #=> Time
    #   resp.file_system.file_system_id #=> String
    #   resp.file_system.file_system_type #=> String, one of "WINDOWS", "LUSTRE"
    #   resp.file_system.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING"
    #   resp.file_system.failure_details.message #=> String
    #   resp.file_system.storage_capacity #=> Integer
    #   resp.file_system.vpc_id #=> String
    #   resp.file_system.subnet_ids #=> Array
    #   resp.file_system.subnet_ids[0] #=> String
    #   resp.file_system.network_interface_ids #=> Array
    #   resp.file_system.network_interface_ids[0] #=> String
    #   resp.file_system.dns_name #=> String
    #   resp.file_system.kms_key_id #=> String
    #   resp.file_system.resource_arn #=> String
    #   resp.file_system.tags #=> Array
    #   resp.file_system.tags[0].key #=> String
    #   resp.file_system.tags[0].value #=> String
    #   resp.file_system.windows_configuration.active_directory_id #=> String
    #   resp.file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.file_system.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateFileSystem AWS API Documentation
    #
    # @overload create_file_system(params = {})
    # @param [Hash] params ({})
    def create_file_system(params = {}, options = {})
      req = build_request(:create_file_system, params)
      req.send_request(options)
    end

    # Creates a new Amazon FSx file system from an existing Amazon FSx for
    # Windows File Server backup.
    #
    # If a file system with the specified client request token exists and
    # the parameters match, this call returns the description of the
    # existing file system. If a client request token specified by the file
    # system exists and the parameters don't match, this call returns
    # `IncompatibleParameterError`. If a file system with the specified
    # client request token doesn't exist, this operation does the
    # following:
    #
    # * Creates a new Amazon FSx file system from backup with an assigned
    #   ID, and an initial lifecycle state of `CREATING`.
    #
    # * Returns the description of the file system.
    #
    # Parameters like Active Directory, default share name, automatic
    # backup, and backup settings default to the parameters of the file
    # system that was backed up, unless overridden. You can explicitly
    # supply other settings.
    #
    # By using the idempotent operation, you can retry a
    # `CreateFileSystemFromBackup` call without the risk of creating an
    # extra file system. This approach can be useful when an initial call
    # fails in a way that makes it unclear whether a file system was
    # created. Examples are if a transport level timeout occurred, or your
    # connection was reset. If you use the same client request token and the
    # initial call created a file system, the client receives success as
    # long as the parameters are the same.
    #
    # <note markdown="1"> The `CreateFileSystemFromBackup` call returns while the file system's
    # lifecycle state is still `CREATING`. You can check the file-system
    # creation status by calling the DescribeFileSystems operation, which
    # returns the file system state along with other information.
    #
    #  </note>
    #
    # @option params [required, String] :backup_id
    #   The ID of the backup.
    #
    # @option params [String] :client_request_token
    #   (Optional) A string of up to 64 ASCII characters that Amazon FSx uses
    #   to ensure idempotent creation. This string is automatically filled on
    #   your behalf when you use the AWS Command Line Interface (AWS CLI) or
    #   an AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Array<String>] :subnet_ids
    #   A list of IDs for the subnets that the file system will be accessible
    #   from. Currently, you can specify only one subnet. The file server is
    #   also launched in that subnet's Availability Zone.
    #
    # @option params [Array<String>] :security_group_ids
    #   A list of IDs for the security groups that apply to the specified
    #   network interfaces created for file system access. These security
    #   groups apply to all network interfaces. This value isn't returned in
    #   later describe requests.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be applied to the file system at file system creation. The
    #   key value of the `Name` tag appears in the console as the file system
    #   name.
    #
    # @option params [Types::CreateFileSystemWindowsConfiguration] :windows_configuration
    #   The configuration for this Microsoft Windows file system.
    #
    # @return [Types::CreateFileSystemFromBackupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFileSystemFromBackupResponse#file_system #file_system} => Types::FileSystem
    #
    #
    # @example Example: To create a new file system from backup
    #
    #   # This operation creates a new file system from backup.
    #
    #   resp = client.create_file_system_from_backup({
    #     backup_id: "backup-03e3c82e0183b7b6b", 
    #     client_request_token: "f4c94ed7-238d-4c46-93db-48cd62ec33b7", 
    #     security_group_ids: [
    #       "sg-edcd9784", 
    #     ], 
    #     subnet_ids: [
    #       "subnet-1234abcd", 
    #     ], 
    #     tags: [
    #       {
    #         key: "Name", 
    #         value: "MyFileSystem", 
    #       }, 
    #     ], 
    #     windows_configuration: {
    #       throughput_capacity: 8, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_system: {
    #       creation_time: Time.parse("1481841524.0"), 
    #       dns_name: "fs-0498eed5fe91001ec.fsx.com", 
    #       file_system_id: "fs-0498eed5fe91001ec", 
    #       kms_key_id: "arn:aws:kms:us-east-1:012345678912:key/0ff3ea8d-130e-4133-877f-93908b6fdbd6", 
    #       lifecycle: "CREATING", 
    #       owner_id: "012345678912", 
    #       resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec", 
    #       storage_capacity: 300, 
    #       subnet_ids: [
    #         "subnet-1234abcd", 
    #       ], 
    #       tags: [
    #         {
    #           key: "Name", 
    #           value: "MyFileSystem", 
    #         }, 
    #       ], 
    #       vpc_id: "vpc-ab1234cd", 
    #       windows_configuration: {
    #         active_directory_id: "d-1234abcd12", 
    #         automatic_backup_retention_days: 30, 
    #         daily_automatic_backup_start_time: "05:00", 
    #         throughput_capacity: 8, 
    #         weekly_maintenance_start_time: "1:05:00", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_file_system_from_backup({
    #     backup_id: "BackupId", # required
    #     client_request_token: "ClientRequestToken",
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     windows_configuration: {
    #       active_directory_id: "DirectoryId",
    #       throughput_capacity: 1, # required
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       daily_automatic_backup_start_time: "DailyTime",
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.file_system.owner_id #=> String
    #   resp.file_system.creation_time #=> Time
    #   resp.file_system.file_system_id #=> String
    #   resp.file_system.file_system_type #=> String, one of "WINDOWS", "LUSTRE"
    #   resp.file_system.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING"
    #   resp.file_system.failure_details.message #=> String
    #   resp.file_system.storage_capacity #=> Integer
    #   resp.file_system.vpc_id #=> String
    #   resp.file_system.subnet_ids #=> Array
    #   resp.file_system.subnet_ids[0] #=> String
    #   resp.file_system.network_interface_ids #=> Array
    #   resp.file_system.network_interface_ids[0] #=> String
    #   resp.file_system.dns_name #=> String
    #   resp.file_system.kms_key_id #=> String
    #   resp.file_system.resource_arn #=> String
    #   resp.file_system.tags #=> Array
    #   resp.file_system.tags[0].key #=> String
    #   resp.file_system.tags[0].value #=> String
    #   resp.file_system.windows_configuration.active_directory_id #=> String
    #   resp.file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.file_system.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateFileSystemFromBackup AWS API Documentation
    #
    # @overload create_file_system_from_backup(params = {})
    # @param [Hash] params ({})
    def create_file_system_from_backup(params = {}, options = {})
      req = build_request(:create_file_system_from_backup, params)
      req.send_request(options)
    end

    # Deletes an Amazon FSx for Windows File Server backup, deleting its
    # contents. After deletion, the backup no longer exists, and its data is
    # gone.
    #
    # The `DeleteBackup` call returns instantly. The backup will not show up
    # in later `DescribeBackups` calls.
    #
    # The data in a deleted backup is also deleted and can't be recovered
    # by any means.
    #
    # @option params [required, String] :backup_id
    #   The ID of the backup you want to delete.
    #
    # @option params [String] :client_request_token
    #   (Optional) A string of up to 64 ASCII characters that Amazon FSx uses
    #   to ensure idempotent deletion. This is automatically filled on your
    #   behalf when using the AWS CLI or SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteBackupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBackupResponse#backup_id #backup_id} => String
    #   * {Types::DeleteBackupResponse#lifecycle #lifecycle} => String
    #
    #
    # @example Example: To delete a backup
    #
    #   # This operation deletes an Amazon FSx file system backup.
    #
    #   resp = client.delete_backup({
    #     backup_id: "backup-03e3c82e0183b7b6b", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     backup_id: "backup-03e3c82e0183b7b6b", 
    #     lifecycle: "DELETED", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup({
    #     backup_id: "BackupId", # required
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_id #=> String
    #   resp.lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteBackup AWS API Documentation
    #
    # @overload delete_backup(params = {})
    # @param [Hash] params ({})
    def delete_backup(params = {}, options = {})
      req = build_request(:delete_backup, params)
      req.send_request(options)
    end

    # Deletes a file system, deleting its contents. After deletion, the file
    # system no longer exists, and its data is gone. Any existing automatic
    # backups will also be deleted.
    #
    # By default, when you delete an Amazon FSx for Windows File Server file
    # system, a final backup is created upon deletion. This final backup is
    # not subject to the file system's retention policy, and must be
    # manually deleted.
    #
    # The `DeleteFileSystem` action returns while the file system has the
    # `DELETING` status. You can check the file system deletion status by
    # calling the DescribeFileSystems action, which returns a list of file
    # systems in your account. If you pass the file system ID for a deleted
    # file system, the DescribeFileSystems returns a `FileSystemNotFound`
    # error.
    #
    # The data in a deleted file system is also deleted and can't be
    # recovered by any means.
    #
    # @option params [required, String] :file_system_id
    #   The ID of the file system you want to delete.
    #
    # @option params [String] :client_request_token
    #   (Optional) A string of up to 64 ASCII characters that Amazon FSx uses
    #   to ensure idempotent deletion. This is automatically filled on your
    #   behalf when using the AWS CLI or SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::DeleteFileSystemWindowsConfiguration] :windows_configuration
    #   The configuration object for the Microsoft Windows file system used in
    #   the `DeleteFileSystem` operation.
    #
    # @return [Types::DeleteFileSystemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFileSystemResponse#file_system_id #file_system_id} => String
    #   * {Types::DeleteFileSystemResponse#lifecycle #lifecycle} => String
    #   * {Types::DeleteFileSystemResponse#windows_response #windows_response} => Types::DeleteFileSystemWindowsResponse
    #
    #
    # @example Example: To delete a file system
    #
    #   # This operation deletes an Amazon FSx file system.
    #
    #   resp = client.delete_file_system({
    #     file_system_id: "fs-0498eed5fe91001ec", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_system_id: "fs-0498eed5fe91001ec", 
    #     lifecycle: "DELETING", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_file_system({
    #     file_system_id: "FileSystemId", # required
    #     client_request_token: "ClientRequestToken",
    #     windows_configuration: {
    #       skip_final_backup: false,
    #       final_backup_tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue",
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.file_system_id #=> String
    #   resp.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING"
    #   resp.windows_response.final_backup_id #=> String
    #   resp.windows_response.final_backup_tags #=> Array
    #   resp.windows_response.final_backup_tags[0].key #=> String
    #   resp.windows_response.final_backup_tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteFileSystem AWS API Documentation
    #
    # @overload delete_file_system(params = {})
    # @param [Hash] params ({})
    def delete_file_system(params = {}, options = {})
      req = build_request(:delete_file_system, params)
      req.send_request(options)
    end

    # Returns the description of specific Amazon FSx for Windows File Server
    # backups, if a `BackupIds` value is provided for that backup.
    # Otherwise, it returns all backups owned by your AWS account in the AWS
    # Region of the endpoint that you're calling.
    #
    # When retrieving all backups, you can optionally specify the
    # `MaxResults` parameter to limit the number of backups in a response.
    # If more backups remain, Amazon FSx returns a `NextToken` value in the
    # response. In this case, send a later request with the `NextToken`
    # request parameter set to the value of `NextToken` from the last
    # response.
    #
    # This action is used in an iterative process to retrieve a list of your
    # backups. `DescribeBackups` is called first without a `NextToken`value.
    # Then the action continues to be called with the `NextToken` parameter
    # set to the value of the last `NextToken` value until a response has no
    # `NextToken`.
    #
    # When using this action, keep the following in mind:
    #
    # * The implementation might return fewer than `MaxResults` file system
    #   descriptions while still including a `NextToken` value.
    #
    # * The order of backups returned in the response of one
    #   `DescribeBackups` call and the order of backups returned across the
    #   responses of a multi-call iteration is unspecified.
    #
    # @option params [Array<String>] :backup_ids
    #   (Optional) IDs of the backups you want to retrieve (String). This
    #   overrides any filters. If any IDs are not found, BackupNotFound will
    #   be thrown.
    #
    # @option params [Array<Types::Filter>] :filters
    #   (Optional) Filters structure. Supported names are file-system-id and
    #   backup-type.
    #
    # @option params [Integer] :max_results
    #   (Optional) Maximum number of backups to return in the response
    #   (integer). This parameter value must be greater than 0. The number of
    #   items that Amazon FSx returns is the minimum of the `MaxResults`
    #   parameter specified in the request and the service's internal maximum
    #   number of items per page.
    #
    # @option params [String] :next_token
    #   (Optional) Opaque pagination token returned from a previous
    #   `DescribeBackups` operation (String). If a token present, the action
    #   continues the list from where the returning call left off.
    #
    # @return [Types::DescribeBackupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBackupsResponse#backups #backups} => Array&lt;Types::Backup&gt;
    #   * {Types::DescribeBackupsResponse#next_token #next_token} => String
    #
    #
    # @example Example: To describe Amazon FSx backups
    #
    #   # This operation describes all of the Amazon FSx backups in an account.
    #
    #   resp = client.describe_backups({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     backups: [
    #       {
    #         backup_id: "backup-03e3c82e0183b7b6b", 
    #         creation_time: Time.parse("1481841524.0"), 
    #         file_system: {
    #           file_system_id: "fs-0498eed5fe91001ec", 
    #           owner_id: "012345678912", 
    #           storage_capacity: 300, 
    #           windows_configuration: {
    #             active_directory_id: "d-1234abcd12", 
    #             automatic_backup_retention_days: 30, 
    #             daily_automatic_backup_start_time: "05:00", 
    #             weekly_maintenance_start_time: "1:05:00", 
    #           }, 
    #         }, 
    #         lifecycle: "AVAILABLE", 
    #         resource_arn: "arn:aws:fsx:us-east-1:012345678912:backup/backup-03e3c82e0183b7b6b", 
    #         tags: [
    #           {
    #             key: "Name", 
    #             value: "MyBackup", 
    #           }, 
    #         ], 
    #         type: "USER_INITIATED", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backups({
    #     backup_ids: ["BackupId"],
    #     filters: [
    #       {
    #         name: "file-system-id", # accepts file-system-id, backup-type
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.backups #=> Array
    #   resp.backups[0].backup_id #=> String
    #   resp.backups[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "DELETED", "FAILED"
    #   resp.backups[0].failure_details.message #=> String
    #   resp.backups[0].type #=> String, one of "AUTOMATIC", "USER_INITIATED"
    #   resp.backups[0].progress_percent #=> Integer
    #   resp.backups[0].creation_time #=> Time
    #   resp.backups[0].kms_key_id #=> String
    #   resp.backups[0].resource_arn #=> String
    #   resp.backups[0].tags #=> Array
    #   resp.backups[0].tags[0].key #=> String
    #   resp.backups[0].tags[0].value #=> String
    #   resp.backups[0].file_system.owner_id #=> String
    #   resp.backups[0].file_system.creation_time #=> Time
    #   resp.backups[0].file_system.file_system_id #=> String
    #   resp.backups[0].file_system.file_system_type #=> String, one of "WINDOWS", "LUSTRE"
    #   resp.backups[0].file_system.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING"
    #   resp.backups[0].file_system.failure_details.message #=> String
    #   resp.backups[0].file_system.storage_capacity #=> Integer
    #   resp.backups[0].file_system.vpc_id #=> String
    #   resp.backups[0].file_system.subnet_ids #=> Array
    #   resp.backups[0].file_system.subnet_ids[0] #=> String
    #   resp.backups[0].file_system.network_interface_ids #=> Array
    #   resp.backups[0].file_system.network_interface_ids[0] #=> String
    #   resp.backups[0].file_system.dns_name #=> String
    #   resp.backups[0].file_system.kms_key_id #=> String
    #   resp.backups[0].file_system.resource_arn #=> String
    #   resp.backups[0].file_system.tags #=> Array
    #   resp.backups[0].file_system.tags[0].key #=> String
    #   resp.backups[0].file_system.tags[0].value #=> String
    #   resp.backups[0].file_system.windows_configuration.active_directory_id #=> String
    #   resp.backups[0].file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.backups[0].file_system.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.backups[0].file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.backups[0].file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.backups[0].file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.backups[0].file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.backups[0].file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.backups[0].file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.backups[0].file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.backups[0].file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.backups[0].file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeBackups AWS API Documentation
    #
    # @overload describe_backups(params = {})
    # @param [Hash] params ({})
    def describe_backups(params = {}, options = {})
      req = build_request(:describe_backups, params)
      req.send_request(options)
    end

    # Returns the description of specific Amazon FSx file systems, if a
    # `FileSystemIds` value is provided for that file system. Otherwise, it
    # returns descriptions of all file systems owned by your AWS account in
    # the AWS Region of the endpoint that you're calling.
    #
    # When retrieving all file system descriptions, you can optionally
    # specify the `MaxResults` parameter to limit the number of descriptions
    # in a response. If more file system descriptions remain, Amazon FSx
    # returns a `NextToken` value in the response. In this case, send a
    # later request with the `NextToken` request parameter set to the value
    # of `NextToken` from the last response.
    #
    # This action is used in an iterative process to retrieve a list of your
    # file system descriptions. `DescribeFileSystems` is called first
    # without a `NextToken`value. Then the action continues to be called
    # with the `NextToken` parameter set to the value of the last
    # `NextToken` value until a response has no `NextToken`.
    #
    # When using this action, keep the following in mind:
    #
    # * The implementation might return fewer than `MaxResults` file system
    #   descriptions while still including a `NextToken` value.
    #
    # * The order of file systems returned in the response of one
    #   `DescribeFileSystems` call and the order of file systems returned
    #   across the responses of a multicall iteration is unspecified.
    #
    # @option params [Array<String>] :file_system_ids
    #   (Optional) IDs of the file systems whose descriptions you want to
    #   retrieve (String).
    #
    # @option params [Integer] :max_results
    #   (Optional) Maximum number of file systems to return in the response
    #   (integer). This parameter value must be greater than 0. The number of
    #   items that Amazon FSx returns is the minimum of the `MaxResults`
    #   parameter specified in the request and the service's internal maximum
    #   number of items per page.
    #
    # @option params [String] :next_token
    #   (Optional) Opaque pagination token returned from a previous
    #   `DescribeFileSystems` operation (String). If a token present, the
    #   action continues the list from where the returning call left off.
    #
    # @return [Types::DescribeFileSystemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFileSystemsResponse#file_systems #file_systems} => Array&lt;Types::FileSystem&gt;
    #   * {Types::DescribeFileSystemsResponse#next_token #next_token} => String
    #
    #
    # @example Example: To describe an Amazon FSx file system
    #
    #   # This operation describes all of the Amazon FSx file systems in an account.
    #
    #   resp = client.describe_file_systems({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_systems: [
    #       {
    #         creation_time: Time.parse("1481841524.0"), 
    #         dns_name: "fs-0498eed5fe91001ec.fsx.com", 
    #         file_system_id: "fs-0498eed5fe91001ec", 
    #         kms_key_id: "arn:aws:kms:us-east-1:012345678912:key/0ff3ea8d-130e-4133-877f-93908b6fdbd6", 
    #         lifecycle: "AVAILABLE", 
    #         network_interface_ids: [
    #           "eni-abcd1234", 
    #         ], 
    #         owner_id: "012345678912", 
    #         resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec", 
    #         storage_capacity: 300, 
    #         subnet_ids: [
    #           "subnet-1234abcd", 
    #         ], 
    #         tags: [
    #           {
    #             key: "Name", 
    #             value: "MyFileSystem", 
    #           }, 
    #         ], 
    #         vpc_id: "vpc-ab1234cd", 
    #         windows_configuration: {
    #           active_directory_id: "d-1234abcd12", 
    #           automatic_backup_retention_days: 30, 
    #           daily_automatic_backup_start_time: "05:00", 
    #           throughput_capacity: 8, 
    #           weekly_maintenance_start_time: "1:05:00", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_file_systems({
    #     file_system_ids: ["FileSystemId"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.file_systems #=> Array
    #   resp.file_systems[0].owner_id #=> String
    #   resp.file_systems[0].creation_time #=> Time
    #   resp.file_systems[0].file_system_id #=> String
    #   resp.file_systems[0].file_system_type #=> String, one of "WINDOWS", "LUSTRE"
    #   resp.file_systems[0].lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING"
    #   resp.file_systems[0].failure_details.message #=> String
    #   resp.file_systems[0].storage_capacity #=> Integer
    #   resp.file_systems[0].vpc_id #=> String
    #   resp.file_systems[0].subnet_ids #=> Array
    #   resp.file_systems[0].subnet_ids[0] #=> String
    #   resp.file_systems[0].network_interface_ids #=> Array
    #   resp.file_systems[0].network_interface_ids[0] #=> String
    #   resp.file_systems[0].dns_name #=> String
    #   resp.file_systems[0].kms_key_id #=> String
    #   resp.file_systems[0].resource_arn #=> String
    #   resp.file_systems[0].tags #=> Array
    #   resp.file_systems[0].tags[0].key #=> String
    #   resp.file_systems[0].tags[0].value #=> String
    #   resp.file_systems[0].windows_configuration.active_directory_id #=> String
    #   resp.file_systems[0].windows_configuration.throughput_capacity #=> Integer
    #   resp.file_systems[0].windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.file_systems[0].windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.file_systems[0].windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_systems[0].windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_systems[0].windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_systems[0].windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_systems[0].lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_systems[0].lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.file_systems[0].lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.file_systems[0].lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeFileSystems AWS API Documentation
    #
    # @overload describe_file_systems(params = {})
    # @param [Hash] params ({})
    def describe_file_systems(params = {}, options = {})
      req = build_request(:describe_file_systems, params)
      req.send_request(options)
    end

    # Lists tags for an Amazon FSx file systems and backups in the case of
    # Amazon FSx for Windows File Server.
    #
    # When retrieving all tags, you can optionally specify the `MaxResults`
    # parameter to limit the number of tags in a response. If more tags
    # remain, Amazon FSx returns a `NextToken` value in the response. In
    # this case, send a later request with the `NextToken` request parameter
    # set to the value of `NextToken` from the last response.
    #
    # This action is used in an iterative process to retrieve a list of your
    # tags. `ListTagsForResource` is called first without a
    # `NextToken`value. Then the action continues to be called with the
    # `NextToken` parameter set to the value of the last `NextToken` value
    # until a response has no `NextToken`.
    #
    # When using this action, keep the following in mind:
    #
    # * The implementation might return fewer than `MaxResults` file system
    #   descriptions while still including a `NextToken` value.
    #
    # * The order of tags returned in the response of one
    #   `ListTagsForResource` call and the order of tags returned across the
    #   responses of a multi-call iteration is unspecified.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the Amazon FSx resource that will have its tags listed.
    #
    # @option params [Integer] :max_results
    #   (Optional) Maximum number of tags to return in the response (integer).
    #   This parameter value must be greater than 0. The number of items that
    #   Amazon FSx returns is the minimum of the `MaxResults` parameter
    #   specified in the request and the service's internal maximum number of
    #   items per page.
    #
    # @option params [String] :next_token
    #   (Optional) Opaque pagination token returned from a previous
    #   `ListTagsForResource` operation (String). If a token present, the
    #   action continues the list from where the returning call left off.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #
    #
    # @example Example: To list tags for a resource
    #
    #   # This operation lists tags for an Amazon FSx resource.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: [
    #       {
    #         key: "Name", 
    #         value: "MyFileSystem", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceARN", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Tags an Amazon FSx resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon FSx resource that you
    #   want to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tags for the resource. If a tag with a given key already
    #   exists, the value is replaced by the one specified in this parameter.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To tag a resource
    #
    #   # This operation tags an Amazon FSx resource.
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec", 
    #     tags: [
    #       {
    #         key: "Name", 
    #         value: "MyFileSystem", 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # This action removes a tag from an Amazon FSx resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the Amazon FSx resource to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of keys of tags on the resource to untag. In case the tag key
    #   doesn't exist, the call will still succeed to be idempotent.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To untag a resource
    #
    #   # This operation untags an Amazon FSx resource.
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec", 
    #     tag_keys: [
    #       "Name", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceARN", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a file system configuration.
    #
    # @option params [required, String] :file_system_id
    #   The globally unique ID of the file system, assigned by Amazon FSx.
    #
    # @option params [String] :client_request_token
    #   (Optional) A string of up to 64 ASCII characters that Amazon FSx uses
    #   to ensure idempotent updates. This string is automatically filled on
    #   your behalf when you use the AWS Command Line Interface (AWS CLI) or
    #   an AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::UpdateFileSystemWindowsConfiguration] :windows_configuration
    #   The configuration for this Microsoft Windows file system. The only
    #   supported options are for backup and maintenance.
    #
    # @option params [Types::UpdateFileSystemLustreConfiguration] :lustre_configuration
    #   The configuration object for Amazon FSx for Lustre file systems used
    #   in the `UpdateFileSystem` operation.
    #
    # @return [Types::UpdateFileSystemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFileSystemResponse#file_system #file_system} => Types::FileSystem
    #
    #
    # @example Example: To update an existing file system
    #
    #   # This operation updates an existing file system.
    #
    #   resp = client.update_file_system({
    #     file_system_id: "fs-0498eed5fe91001ec", 
    #     windows_configuration: {
    #       automatic_backup_retention_days: 10, 
    #       daily_automatic_backup_start_time: "06:00", 
    #       weekly_maintenance_start_time: "3:06:00", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_system: {
    #       creation_time: Time.parse("1481841524.0"), 
    #       dns_name: "fs-0498eed5fe91001ec.fsx.com", 
    #       file_system_id: "fs-0498eed5fe91001ec", 
    #       kms_key_id: "arn:aws:kms:us-east-1:012345678912:key/0ff3ea8d-130e-4133-877f-93908b6fdbd6", 
    #       lifecycle: "AVAILABLE", 
    #       owner_id: "012345678912", 
    #       resource_arn: "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec", 
    #       storage_capacity: 300, 
    #       subnet_ids: [
    #         "subnet-1234abcd", 
    #       ], 
    #       tags: [
    #         {
    #           key: "Name", 
    #           value: "MyFileSystem", 
    #         }, 
    #       ], 
    #       vpc_id: "vpc-ab1234cd", 
    #       windows_configuration: {
    #         automatic_backup_retention_days: 10, 
    #         daily_automatic_backup_start_time: "06:00", 
    #         throughput_capacity: 8, 
    #         weekly_maintenance_start_time: "3:06:00", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_file_system({
    #     file_system_id: "FileSystemId", # required
    #     client_request_token: "ClientRequestToken",
    #     windows_configuration: {
    #       weekly_maintenance_start_time: "WeeklyTime",
    #       daily_automatic_backup_start_time: "DailyTime",
    #       automatic_backup_retention_days: 1,
    #     },
    #     lustre_configuration: {
    #       weekly_maintenance_start_time: "WeeklyTime",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.file_system.owner_id #=> String
    #   resp.file_system.creation_time #=> Time
    #   resp.file_system.file_system_id #=> String
    #   resp.file_system.file_system_type #=> String, one of "WINDOWS", "LUSTRE"
    #   resp.file_system.lifecycle #=> String, one of "AVAILABLE", "CREATING", "FAILED", "DELETING"
    #   resp.file_system.failure_details.message #=> String
    #   resp.file_system.storage_capacity #=> Integer
    #   resp.file_system.vpc_id #=> String
    #   resp.file_system.subnet_ids #=> Array
    #   resp.file_system.subnet_ids[0] #=> String
    #   resp.file_system.network_interface_ids #=> Array
    #   resp.file_system.network_interface_ids[0] #=> String
    #   resp.file_system.dns_name #=> String
    #   resp.file_system.kms_key_id #=> String
    #   resp.file_system.resource_arn #=> String
    #   resp.file_system.tags #=> Array
    #   resp.file_system.tags[0].key #=> String
    #   resp.file_system.tags[0].value #=> String
    #   resp.file_system.windows_configuration.active_directory_id #=> String
    #   resp.file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.file_system.windows_configuration.maintenance_operations_in_progress #=> Array
    #   resp.file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of "PATCHING", "BACKING_UP"
    #   resp.file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateFileSystem AWS API Documentation
    #
    # @overload update_file_system(params = {})
    # @param [Hash] params ({})
    def update_file_system(params = {}, options = {})
      req = build_request(:update_file_system, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-fsx'
      context[:gem_version] = '1.7.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
