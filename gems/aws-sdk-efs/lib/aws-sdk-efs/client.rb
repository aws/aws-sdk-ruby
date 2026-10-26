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
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:efs)

module Aws::EFS
  # An API client for Aws::EFS.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::MagnolioAPIServiceV20150201
    @identifier = :efs

    add_plugin(::Aws::EFS::Plugins::Endpoint)
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
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::EFS::EndpointProvider)
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
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p>Creates an EFS access point. An access point is an application-specific view
    #       into an EFS file system that applies an operating system user and group, and a file
    #       system path, to any file system request made through the access point. The operating system
    #       user and group override any identity information provided by the NFS client. The file system
    #       path is exposed as the access point's root directory. Applications using the access point can
    #       only access data in the application's own directory and any subdirectories. A file system can
    #       have a maximum of 10,000 access points unless you request an increase. To learn more, see
    #         <a href="https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html">Mounting a file
    #         system using EFS access points</a>.</p>
    #          <note>
    #             <p>If multiple requests to create access points on the same file system are sent in quick
    #         succession, and the file system is near the limit of access points, you may experience a
    #         throttling response for these requests. This is to ensure that the file system does not
    #         exceed the stated access point limit.</p>
    #          </note>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:CreateAccessPoint</code> action.</p>
    #          <p>Access points can be tagged on creation. If tags are specified in the creation action, IAM
    #       performs additional authorization on the <code>elasticfilesystem:TagResource</code> action to
    #       verify if users have permissions to create tags. Therefore, you must grant explicit
    #       permissions to use the <code>elasticfilesystem:TagResource</code> action. For more
    #       information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/using-tags-efs.html#supported-iam-actions-tagging.html">Granting
    #         permissions to tag resources during creation</a>.</p>
    # @param [Hash, Types::CreateAccessPointRequest] params
    # @option params [String] :client_token
    #   <p>A string of up to 64 ASCII characters that Amazon EFS uses to ensure idempotent
    #         creation.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Creates tags associated with the access point. Each tag is a key-value pair, each key must be unique. For more
    #         information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>
    #         in the <i>Amazon Web Services General Reference Guide</i>.</p>
    # @option params [String] :file_system_id
    #   <p>The ID of the EFS file system that the access point provides access to.</p>
    # @option params [Types::PosixUser] :posix_user
    #   <p>The operating system user and
    #         group applied to all file system requests made using the access point.</p>
    # @option params [Types::RootDirectory] :root_directory
    #   <p>Specifies the directory on the EFS file system that the access point exposes as
    #         the root directory of your file system to NFS clients using the access point. The clients
    #         using the access point can only access the root directory and below. If the
    #           <code>RootDirectory</code> > <code>Path</code> specified does not exist, Amazon EFS creates it and applies the <code>CreationInfo</code> settings when a client connects to an
    #         access point. When specifying a <code>RootDirectory</code>, you must provide the
    #           <code>Path</code>, and the <code>CreationInfo</code>.</p>
    #            <p>Amazon EFS creates a root directory only if you have provided the  CreationInfo: OwnUid, OwnGID, and permissions for the directory.
    #         If  you do not provide this information, Amazon EFS does not create the root directory. If the root directory does not exist, attempts to mount
    #         using the access point will fail.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     file_system_id: "FileSystemId", # required
    #     posix_user: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [1]
    #     },
    #     root_directory: {
    #       path: "Path",
    #       creation_info: {
    #         owner_uid: 1, # required
    #         owner_gid: 1, # required
    #         permissions: "Permissions", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_access_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_token: "ClientToken",
    #     name: "Name",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     access_point_id: "AccessPointId",
    #     access_point_arn: "AccessPointArn",
    #     file_system_id: "FileSystemId",
    #     posix_user: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [1]
    #     },
    #     root_directory: {
    #       path: "Path",
    #       creation_info: {
    #         owner_uid: 1, # required
    #         owner_gid: 1, # required
    #         permissions: "Permissions", # required
    #       }
    #     },
    #     owner_id: "AwsAccountId",
    #     life_cycle_state: "creating" # One of: ["creating", "available", "updating", "deleting", "deleted", "error"]
    #   }
    # @return [Types::CreateAccessPointOutput]
    def create_access_point(params = {}, options = {})
      request = build_request(:create_access_point, params)
      request.send_request(options)
    end

    # <p>Creates a new, empty file system. The operation requires a creation token in the
    #       request that Amazon EFS uses to ensure idempotent creation (calling the operation with same
    #       creation token has no effect). If a file system does not currently exist that is owned by the
    #       caller's Amazon Web Services account with the specified creation token, this operation does the
    #       following:</p>
    #          <ul>
    #             <li>
    #                <p>Creates a new, empty file system. The file system will have an Amazon EFS assigned
    #           ID, and an initial lifecycle state <code>creating</code>.</p>
    #             </li>
    #             <li>
    #                <p>Returns with the description of the created file system.</p>
    #             </li>
    #          </ul>
    #          <p>Otherwise, this operation returns a <code>FileSystemAlreadyExists</code> error with the
    #       ID of the existing file system.</p>
    #          <note>
    #             <p>For basic use cases, you can use a randomly generated UUID for the creation
    #         token.</p>
    #          </note>
    #          <p>The idempotent operation allows you to retry a <code>CreateFileSystem</code> call without
    #       risk of creating an extra file system. This can happen when an initial call fails in a way
    #       that leaves it uncertain whether or not a file system was actually created. An example might
    #       be that a transport level timeout occurred or your connection was reset. As long as you use
    #       the same creation token, if the initial call had succeeded in creating a file system, the
    #       client can learn of its existence from the <code>FileSystemAlreadyExists</code> error.</p>
    #          <p>For more information, see
    #       <a href="https://docs.aws.amazon.com/efs/latest/ug/creating-using-create-fs.html#creating-using-create-fs-part1">Creating a file system</a>
    #      in the <i>Amazon EFS User Guide</i>.</p>
    #          <note>
    #             <p>The <code>CreateFileSystem</code> call returns while the file system's lifecycle
    #         state is still <code>creating</code>. You can check the file system creation status by
    #         calling the <a>DescribeFileSystems</a> operation, which among other things returns the file
    #         system state.</p>
    #          </note>
    #          <p>This operation accepts an optional <code>PerformanceMode</code> parameter that you choose
    #       for your file system. We recommend <code>generalPurpose</code>
    #             <code>PerformanceMode</code> for all file
    #       systems. The <code>maxIO</code> mode is a previous generation performance type that is designed for highly parallelized workloads that can tolerate higher latencies
    #           than the <code>generalPurpose</code> mode. <code>MaxIO</code> mode is not supported for One Zone file systems or
    #           file systems that use Elastic throughput.</p>
    #          <p>The <code>PerformanceMode</code> can't be changed after the file system has been
    #       created. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/performance.html#performancemodes.html">Amazon EFS performance
    #         modes</a>.</p>
    #          <p>You can set the throughput mode for the file system using the <code>ThroughputMode</code>
    #       parameter.</p>
    #          <p>After the file system is fully created, Amazon EFS sets its lifecycle state to
    #         <code>available</code>, at which point you can create one or more mount targets for the file
    #       system in your VPC. For more information, see <a>CreateMountTarget</a>. You mount
    #       your Amazon EFS file system on an EC2 instances in your VPC by using the mount
    #       target. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html">Amazon EFS: How it Works</a>. </p>
    #          <p>This operation requires permissions for the
    #         <code>elasticfilesystem:CreateFileSystem</code> action. </p>
    #          <p>File systems can be tagged on creation. If tags are specified in the creation action, IAM
    #       performs additional authorization on the <code>elasticfilesystem:TagResource</code> action to
    #       verify if users have permissions to create tags. Therefore, you must grant explicit
    #       permissions to use the <code>elasticfilesystem:TagResource</code> action. For more
    #       information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/using-tags-efs.html#supported-iam-actions-tagging.html">Granting permissions to tag resources during creation</a>.</p>
    # @param [Hash, Types::CreateFileSystemRequest] params
    # @option params [String] :creation_token
    #   <p>A string of up to 64 ASCII characters. Amazon EFS uses this to ensure idempotent
    #         creation.</p>
    # @option params [String] :performance_mode
    #   <p>The performance mode of the file system. We recommend <code>generalPurpose</code>
    #         performance mode for all file systems. File systems using the <code>maxIO</code> performance
    #         mode can scale to higher levels of aggregate throughput and operations per second with a
    #         tradeoff of slightly higher latencies for most file operations. The performance mode
    #         can't be changed after the file system has been created. The <code>maxIO</code> mode is
    #         not supported on One Zone file systems.</p>
    #            <important>
    #               <p>Due to the higher per-operation latencies with Max I/O, we recommend using General Purpose performance mode for all file systems.</p>
    #            </important>
    #            <p>Default is <code>generalPurpose</code>.</p>
    # @option params [Boolean] :encrypted
    #   <p>A Boolean value that, if true, creates an encrypted file system. When creating an
    #         encrypted file system, you have the option of specifying an existing Key Management Service key (KMS key).
    #         If you don't specify a KMS key, then the default KMS key for
    #         Amazon EFS, <code>/aws/elasticfilesystem</code>, is used to protect the encrypted file system.
    #       </p>
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key that you want to use to protect the encrypted file
    #         system. This parameter is required only if you want to use a non-default KMS key. If this parameter is not specified, the default KMS key for Amazon EFS is used. You can specify a KMS key ID using the following
    #         formats:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID - A unique identifier of the key, for example
    #               <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>ARN - An Amazon Resource Name (ARN) for the key, for example
    #               <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Key alias - A previously created display name for a key, for example
    #               <code>alias/projectKey1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Key alias ARN - An ARN for a key alias, for example
    #               <code>arn:aws:kms:us-west-2:444455556666:alias/projectKey1</code>.</p>
    #               </li>
    #            </ul>
    #            <p>If you use <code>KmsKeyId</code>, you must set the <a>CreateFileSystemRequest$Encrypted</a>
    #         parameter to true.</p>
    #            <important>
    #               <p>EFS accepts only symmetric KMS keys. You cannot use asymmetric
    #         KMS keys with Amazon EFS file systems.</p>
    #            </important>
    # @option params [String] :throughput_mode
    #   <p>Specifies the throughput mode for the file system. The mode can be <code>bursting</code>,
    #           <code>provisioned</code>, or <code>elastic</code>. If you set <code>ThroughputMode</code> to
    #           <code>provisioned</code>, you must also set a value for
    #           <code>ProvisionedThroughputInMibps</code>. After you create the file system, you can
    #         decrease your file system's Provisioned throughput or change between the
    #         throughput modes, with certain time restrictions. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/performance.html#provisioned-throughput">Specifying
    #           throughput with provisioned mode</a> in the <i>Amazon EFS User
    #           Guide</i>. </p>
    #            <p>Default is <code>bursting</code>.</p>
    # @option params [Float] :provisioned_throughput_in_mibps
    #   <p>The throughput, measured in mebibytes per second (MiBps), that you want to provision for a
    #         file system that you're creating. Required if <code>ThroughputMode</code> is set to
    #           <code>provisioned</code>. Valid values are 1-3414 MiBps, with the upper limit depending on
    #         Region. To increase this limit, contact Amazon Web Services Support. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits">Amazon EFS quotas
    #           that you can increase</a> in the <i>Amazon EFS User
    #         Guide</i>.</p>
    # @option params [String] :availability_zone_name
    #   <p>For One Zone file systems, specify the Amazon Web Services
    #         Availability Zone in which to create the file system. Use the format <code>us-east-1a</code> to
    #         specify the  Availability Zone. For more information about One Zone file systems, see
    #         <a href="https://docs.aws.amazon.com/efs/latest/ug/availability-durability.html#file-system-type">EFS file system types</a> in the <i>Amazon EFS User Guide</i>.</p>
    #            <note>
    #               <p>One Zone file systems are not available in all Availability Zones in Amazon Web Services Regions where Amazon EFS is available.</p>
    #            </note>
    # @option params [Boolean] :backup
    #   <p>Specifies whether automatic backups are enabled on the file system that you are creating.
    #         Set the value to <code>true</code> to enable automatic backups. If you are creating a
    #         One Zone file system, automatic backups are enabled by default. For more
    #         information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/awsbackup.html#automatic-backups">Automatic backups</a> in the
    #             <i>Amazon EFS User Guide</i>.</p>
    #            <p>Default is <code>false</code>. However, if you specify an <code>AvailabilityZoneName</code>,
    #         the default is <code>true</code>.</p>
    #            <note>
    #               <p>Backup is not available in all Amazon Web Services Regions where Amazon EFS is available.</p>
    #            </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Use to create one or more tags associated with the file system. Each
    #           tag is a user-defined key-value pair. Name your file system on creation by including a
    #           <code>"Key":"Name","Value":"{value}"</code> key-value pair. Each key must be unique. For more
    #           information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>
    #           in the <i>Amazon Web Services General Reference Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     creation_token: "CreationToken", # required
    #     performance_mode: "generalPurpose" # One of: ["generalPurpose", "maxIO"],
    #     encrypted: false,
    #     kms_key_id: "KmsKeyId",
    #     throughput_mode: "bursting" # One of: ["bursting", "provisioned", "elastic"],
    #     provisioned_throughput_in_mibps: 1.0,
    #     availability_zone_name: "AvailabilityZoneName",
    #     backup: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_file_system(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_id: "AwsAccountId", # required
    #     creation_token: "CreationToken", # required
    #     file_system_id: "FileSystemId", # required
    #     file_system_arn: "FileSystemArn",
    #     creation_time: Time.now, # required
    #     life_cycle_state: "creating" # One of: ["creating", "available", "updating", "deleting", "deleted", "error"], # required
    #     name: "TagValue",
    #     number_of_mount_targets: 1, # required
    #     size_in_bytes: { # required
    #       value: 1, # required
    #       timestamp: Time.now,
    #       value_in_ia: 1,
    #       value_in_standard: 1,
    #       value_in_archive: 1
    #     },
    #     performance_mode: "generalPurpose" # One of: ["generalPurpose", "maxIO"], # required
    #     encrypted: false,
    #     kms_key_id: "KmsKeyId",
    #     throughput_mode: "bursting" # One of: ["bursting", "provisioned", "elastic"],
    #     provisioned_throughput_in_mibps: 1.0,
    #     availability_zone_name: "AvailabilityZoneName",
    #     availability_zone_id: "AvailabilityZoneId",
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     file_system_protection: {
    #       replication_overwrite_protection: "ENABLED" # One of: ["ENABLED", "DISABLED", "REPLICATING"]
    #     }
    #   }
    # @return [Types::CreateFileSystemOutput]
    def create_file_system(params = {}, options = {})
      request = build_request(:create_file_system, params)
      request.send_request(options)
    end

    # <p>Creates a mount target for a file system. You can then mount the file system on EC2
    #       instances by using the mount target.</p>
    #          <p>You can create one mount target in each Availability Zone in your VPC. All EC2 instances
    #       in a VPC within a given Availability Zone share a single mount target for a given file system. If
    #       you have multiple subnets in an Availability Zone, you create a mount target in one of the subnets.
    #       EC2 instances do not need to be in the same subnet as the mount target in order to
    #       access their file system.</p>
    #          <p>You can create only one mount target for a One Zone file system. You must
    #       create that mount target in the same Availability Zone in which the file system is located. Use the
    #         <code>AvailabilityZoneName</code> and <code>AvailabiltyZoneId</code> properties in the <a>DescribeFileSystems</a> response object to get this information. Use the
    #         <code>subnetId</code> associated with the file system's Availability Zone when creating the mount
    #       target.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html">Amazon EFS: How it Works</a>. </p>
    #          <p>To create a mount target for a file system, the file system's lifecycle state must be
    #         <code>available</code>. For more information, see <a>DescribeFileSystems</a>.</p>
    #          <p>In the request, provide the following:</p>
    #          <ul>
    #             <li>
    #                <p>The file system ID for which you are creating the mount
    #         target.</p>
    #             </li>
    #             <li>
    #                <p>A subnet ID, which determines the following:</p>
    #                <ul>
    #                   <li>
    #                      <p>The VPC in which Amazon EFS creates the mount target</p>
    #                   </li>
    #                   <li>
    #                      <p>The Availability Zone in which Amazon EFS creates the mount target</p>
    #                   </li>
    #                   <li>
    #                      <p>The IP address range from which Amazon EFS selects the IP address of the mount target
    #               (if you don't specify an IP address in the request)</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>After creating the mount target, Amazon EFS returns a response that includes, a
    #         <code>MountTargetId</code> and an <code>IpAddress</code>. You use this IP address when
    #       mounting the file system in an EC2 instance. You can also use the mount target's
    #       DNS name when mounting the file system. The EC2 instance on which you mount the file
    #       system by using the mount target can resolve the mount target's DNS name to its IP
    #       address. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html#how-it-works-implementation">How it Works:
    #         Implementation Overview</a>. </p>
    #          <p>Note that you can create mount targets for a file system in only one VPC, and there can be
    #       only one mount target per Availability Zone. That is, if the file system already has one or more
    #       mount targets created for it, the subnet specified in the request to add another mount target
    #       must meet the following requirements:</p>
    #          <ul>
    #             <li>
    #                <p>Must belong to the same VPC as the subnets of the existing mount targets</p>
    #             </li>
    #             <li>
    #                <p>Must not be in the same Availability Zone as any of the subnets of the existing mount
    #           targets</p>
    #             </li>
    #          </ul>
    #          <p>If the request satisfies the requirements, Amazon EFS does the following:</p>
    #          <ul>
    #             <li>
    #                <p>Creates a new mount target in the specified subnet.</p>
    #             </li>
    #             <li>
    #                <p>Also creates a new network interface in the subnet as follows:</p>
    #                <ul>
    #                   <li>
    #                      <p>If the request provides an <code>IpAddress</code>, Amazon EFS assigns that
    #               IP address to the network interface. Otherwise, Amazon EFS assigns a free
    #               address in the subnet (in the same way that the Amazon EC2
    #                 <code>CreateNetworkInterface</code> call does when a request does not specify a
    #               primary private IP address).</p>
    #                   </li>
    #                   <li>
    #                      <p>If the request provides <code>SecurityGroups</code>, this network interface is
    #               associated with those security groups. Otherwise, it belongs to the default security
    #               group for the subnet's VPC.</p>
    #                   </li>
    #                   <li>
    #                      <p>Assigns the description <code>Mount target <i>fsmt-id</i> for
    #                 file system <i>fs-id</i>
    #                         </code> where <code>
    #                            <i>fsmt-id</i>
    #                         </code> is the mount target ID, and <code>
    #                            <i>fs-id</i>
    #                         </code> is the <code>FileSystemId</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>Sets the <code>requesterManaged</code> property of the network interface to
    #                 <code>true</code>, and the <code>requesterId</code> value to
    #               <code>EFS</code>.</p>
    #                   </li>
    #                </ul>
    #                <p>Each Amazon EFS mount target has one corresponding requester-managed
    #           EC2 network interface. After the network interface is created, Amazon EFS
    #           sets the <code>NetworkInterfaceId</code> field in the mount target's description to
    #           the network interface ID, and the <code>IpAddress</code> field to its address. If network
    #           interface creation fails, the entire <code>CreateMountTarget</code> operation
    #           fails.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>The <code>CreateMountTarget</code> call returns only after creating the network
    #         interface, but while the mount target state is still <code>creating</code>, you can check
    #         the mount target creation status by calling the <a>DescribeMountTargets</a> operation, which among other things returns the mount
    #         target state.</p>
    #          </note>
    #          <p>We recommend that you create a mount target in each of the Availability Zones. There are cost
    #       considerations for using a file system in an Availability Zone through a mount target created in
    #       another Availability Zone. For more information, see <a href="http://aws.amazon.com/efs/pricing/">Amazon EFS pricing</a>. In addition, by always using a mount target local to the
    #       instance's Availability Zone, you eliminate a partial failure scenario. If the Availability Zone in
    #       which your mount target is created goes down, then you can't access your file system
    #       through that mount target. </p>
    #          <p>This operation requires permissions for the following action on the file
    #       system:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>elasticfilesystem:CreateMountTarget</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>This operation also requires permissions for the following Amazon EC2
    #       actions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ec2:DescribeSubnets</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ec2:DescribeNetworkInterfaces</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ec2:CreateNetworkInterface</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateMountTargetRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID of the file system for which to create the mount target.</p>
    # @option params [String] :subnet_id
    #   <p>The ID of the subnet to add the mount target in. For One Zone file systems, use the subnet
    #         that is associated with the file system's Availability Zone.</p>
    # @option params [String] :ip_address
    #   <p>If the IP address type for the mount target is IPv4, then specify the IPv4 address within
    #         the address range of the specified subnet.</p>
    # @option params [String] :ipv6_address
    #   <p>If the IP address type for the mount target is IPv6, then specify the IPv6 address within
    #         the address range of the specified subnet.</p>
    # @option params [String] :ip_address_type
    #   <p>Specify the type of IP address of the mount target you are creating. Options are IPv4,
    #         dual stack, or IPv6. If you don’t specify an IpAddressType, then IPv4 is used.</p>
    #            <ul>
    #               <li>
    #                  <p>IPV4_ONLY – Create mount target with IPv4 only subnet or dual-stack subnet.</p>
    #               </li>
    #               <li>
    #                  <p>DUAL_STACK – Create mount target with dual-stack subnet.</p>
    #               </li>
    #               <li>
    #                  <p>IPV6_ONLY – Create mount target with IPv6 only subnet.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Creating IPv6 mount target only ENI in dual-stack subnet is not supported.</p>
    #            </note>
    # @option params [Array<String>] :security_groups
    #   <p>VPC security group IDs, of the form <code>sg-xxxxxxxx</code>. These must be for the same
    #         VPC as the subnet specified. The maximum number of security groups depends on account quota.
    #         For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html">Amazon VPC Quotas</a>
    #         in the <i>Amazon VPC User Guide</i> (see the <b>Security Groups</b>
    #         table).
    #       </p>
    # @example To create a new mount target
    #   # This operation creates a new mount target for an EFS file system.
    #   params = {
    #     file_system_id: "fs-01234567",
    #     subnet_id: "subnet-1234abcd"
    #   }
    #   options = {}
    #   response = client.create_mount_target(params, options)
    #   response.to_h #=>
    #   {
    #     owner_id: "012345678912",
    #     mount_target_id: "fsmt-12340abc",
    #     file_system_id: "fs-01234567",
    #     subnet_id: "subnet-1234abcd",
    #     life_cycle_state: creating,
    #     ip_address: "192.0.0.2",
    #     network_interface_id: "eni-cedf6789"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #     subnet_id: "SubnetId", # required
    #     ip_address: "IpAddress",
    #     ipv6_address: "Ipv6Address",
    #     ip_address_type: "IPV4_ONLY" # One of: ["IPV4_ONLY", "IPV6_ONLY", "DUAL_STACK"],
    #     security_groups: ["SecurityGroup"]
    #   }
    #   options = {}
    #   response = client.create_mount_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_id: "AwsAccountId",
    #     mount_target_id: "MountTargetId", # required
    #     file_system_id: "FileSystemId", # required
    #     subnet_id: "SubnetId", # required
    #     life_cycle_state: "creating" # One of: ["creating", "available", "updating", "deleting", "deleted", "error"], # required
    #     ip_address: "IpAddress",
    #     ipv6_address: "Ipv6Address",
    #     network_interface_id: "NetworkInterfaceId",
    #     availability_zone_id: "AvailabilityZoneId",
    #     availability_zone_name: "AvailabilityZoneName",
    #     vpc_id: "VpcId"
    #   }
    # @return [Types::CreateMountTargetOutput]
    def create_mount_target(params = {}, options = {})
      request = build_request(:create_mount_target, params)
      request.send_request(options)
    end

    # <p>Creates a replication conﬁguration to either a new or existing EFS file system.
    #       For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/efs-replication.html">Amazon EFS replication</a> in the <i>Amazon EFS User
    #         Guide</i>. The replication configuration specifies the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Source file system</b> – The EFS file
    #           system that you want to replicate. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Destination file system</b> – The destination file
    #           system to which the source file system is replicated. There can only be one destination
    #           file system in a replication configuration. </p>
    #                <note>
    #                   <p>A file system can be part of only one replication configuration. </p>
    #                </note>
    #                <p>The destination parameters for the replication configuration depend on
    #           whether you are replicating to a new file system or to an existing file system, and if you
    #           are replicating across Amazon Web Services accounts. See <a>DestinationToCreate</a> for more information.</p>
    #             </li>
    #          </ul>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:CreateReplicationConfiguration</code>
    #        action. Additionally, other permissions are required depending on how you are replicating file systems.
    #        For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/efs-replication.html#efs-replication-permissions">Required permissions for replication</a>
    #       in the <i>Amazon EFS User
    #              Guide</i>.</p>
    # @param [Hash, Types::CreateReplicationConfigurationRequest] params
    # @option params [String] :source_file_system_id
    #   <p>Specifies the Amazon EFS file system that you want to replicate. This file system cannot already be
    #       a source or destination file system in another replication configuration.</p>
    # @option params [Array<Types::DestinationToCreate>] :destinations
    #   <p>An array of destination configuration objects. Only one destination configuration object is supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_file_system_id: "FileSystemId", # required
    #     destinations: [ # required
    #       {
    #         region: "RegionName",
    #         availability_zone_name: "AvailabilityZoneName",
    #         kms_key_id: "KmsKeyId",
    #         file_system_id: "FileSystemId",
    #         role_arn: "RoleArn"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_replication_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_file_system_id: "FileSystemId", # required
    #     source_file_system_region: "RegionName", # required
    #     source_file_system_arn: "FileSystemArn", # required
    #     original_source_file_system_arn: "FileSystemArn", # required
    #     creation_time: Time.now, # required
    #     destinations: [ # required
    #       {
    #         status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DELETING", "ERROR", "PAUSED", "PAUSING"], # required
    #         file_system_id: "FileSystemId", # required
    #         region: "RegionName", # required
    #         last_replicated_timestamp: Time.now,
    #         owner_id: "AwsAccountId",
    #         status_message: "StatusMessage",
    #         role_arn: "RoleArn"
    #       }
    #     ],
    #     source_file_system_owner_id: "AwsAccountId"
    #   }
    # @return [Types::CreateReplicationConfigurationOutput]
    def create_replication_configuration(params = {}, options = {})
      request = build_request(:create_replication_configuration, params)
      request.send_request(options)
    end

    # <note>
    #             <p>DEPRECATED - <code>CreateTags</code> is deprecated and not maintained. To create tags for EFS
    #         resources, use the  API action.</p>
    #          </note>
    #          <p>Creates or overwrites tags associated with a file system. Each tag is a key-value pair. If
    #       a tag key specified in the request already exists on the file system, this operation
    #       overwrites its value with the value provided in the request. If you add the <code>Name</code>
    #       tag to your file system, Amazon EFS returns it in the response to the <a>DescribeFileSystems</a> operation. </p>
    #          <p>This operation requires permission for the <code>elasticfilesystem:CreateTags</code>
    #       action.</p>
    # @param [Hash, Types::CreateTagsRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID of the file system whose tags you want to modify (String). This operation modifies
    #         the tags only, not the file system.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of <code>Tag</code> objects to add. Each <code>Tag</code> object is a key-value
    #         pair. </p>
    # @example To create a new tag
    #   # This operation creates a new tag for an EFS file system.
    #   params = {
    #     file_system_id: "fs-01234567",
    #     tags: [
    #       {
    #         key: "Name",
    #         value: "MyFileSystem"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_tags(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   Use TagResource.
    # @return [Smithy::Schema::EmptyStructure]
    def create_tags(params = {}, options = {})
      request = build_request(:create_tags, params)
      request.send_request(options)
    end

    # <p>Deletes the specified access point. After deletion is complete, new clients can no
    #       longer connect to the access points. Clients connected to the access point at the time of
    #       deletion will continue to function until they terminate their connection.</p>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:DeleteAccessPoint</code> action.</p>
    # @param [Hash, Types::DeleteAccessPointRequest] params
    # @option params [String] :access_point_id
    #   <p>The ID of the access point that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_point_id: "AccessPointId", # required
    #   }
    #   options = {}
    #   response = client.delete_access_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_access_point(params = {}, options = {})
      request = build_request(:delete_access_point, params)
      request.send_request(options)
    end

    # <p>Deletes a file system, permanently severing access to its contents. Upon return, the
    #       file system no longer exists and you can't access any contents of the deleted file
    #       system.</p>
    #          <p>You need to manually delete mount targets attached to a file system before you can delete
    #     an EFS file system. This step is performed for you when you use the Amazon Web Services console
    #     to delete a file system.</p>
    #          <note>
    #             <p>You cannot delete a file system that is part of an EFS replication configuration.
    #       You need to delete the replication configuration first.</p>
    #          </note>
    #          <p> You can't delete a file system that is in use. That is, if the file system has
    #       any mount targets, you must first delete them. For more information, see <a>DescribeMountTargets</a> and <a>DeleteMountTarget</a>. </p>
    #          <note>
    #             <p>The <code>DeleteFileSystem</code> call returns while the file system state is still
    #           <code>deleting</code>. You can check the file system deletion status by calling the <a>DescribeFileSystems</a> operation, which returns a list of file systems in your
    #         account. If you pass file system ID or creation token for the deleted file system, the <a>DescribeFileSystems</a> returns a <code>404 FileSystemNotFound</code>
    #         error.</p>
    #          </note>
    #          <p>This operation requires permissions for the
    #         <code>elasticfilesystem:DeleteFileSystem</code> action.</p>
    # @param [Hash, Types::DeleteFileSystemRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID of the file system you want to delete.</p>
    # @example To delete a file system
    #   # This operation deletes an EFS file system.
    #   params = {
    #     file_system_id: "fs-01234567"
    #   }
    #   options = {}
    #   response = client.delete_file_system(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #   }
    #   options = {}
    #   response = client.delete_file_system(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_file_system(params = {}, options = {})
      request = build_request(:delete_file_system, params)
      request.send_request(options)
    end

    # <p>Deletes the <code>FileSystemPolicy</code> for the specified file system.
    #       The default <code>FileSystemPolicy</code> goes into effect once the existing policy is deleted.
    #       For more information about the default file system policy, see <a href="https://docs.aws.amazon.com/efs/latest/ug/res-based-policies-efs.html">Using Resource-based Policies with EFS</a>.</p>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:DeleteFileSystemPolicy</code> action.</p>
    # @param [Hash, Types::DeleteFileSystemPolicyRequest] params
    # @option params [String] :file_system_id
    #   <p>Specifies the EFS file system for which to delete the
    #           <code>FileSystemPolicy</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #   }
    #   options = {}
    #   response = client.delete_file_system_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_file_system_policy(params = {}, options = {})
      request = build_request(:delete_file_system_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the specified mount target.</p>
    #          <p>This operation forcibly breaks any mounts of the file system by using the mount target
    #       that is being deleted, which might disrupt instances or applications using those mounts. To
    #       avoid applications getting cut off abruptly, you might consider unmounting any mounts of the
    #       mount target, if feasible. The operation also deletes the associated network interface.
    #       Uncommitted writes might be lost, but breaking a mount target using this operation does not
    #       corrupt the file system itself. The file system you created remains. You can mount an
    #       EC2 instance in your VPC by using another mount target.</p>
    #          <p>This operation requires permissions for the following action on the file
    #       system:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>elasticfilesystem:DeleteMountTarget</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>The <code>DeleteMountTarget</code> call returns while the mount target state is still
    #           <code>deleting</code>. You can check the mount target deletion by calling the <a>DescribeMountTargets</a> operation, which returns a list of mount target
    #         descriptions for the given file system. </p>
    #          </note>
    #          <p>The operation also requires permissions for the following Amazon EC2 action on the
    #       mount target's network interface:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ec2:DeleteNetworkInterface</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteMountTargetRequest] params
    # @option params [String] :mount_target_id
    #   <p>The ID of the mount target to delete (String).</p>
    # @example To delete a mount target
    #   # This operation deletes a mount target.
    #   params = {
    #     mount_target_id: "fsmt-12340abc"
    #   }
    #   options = {}
    #   response = client.delete_mount_target(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     mount_target_id: "MountTargetId", # required
    #   }
    #   options = {}
    #   response = client.delete_mount_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_mount_target(params = {}, options = {})
      request = build_request(:delete_mount_target, params)
      request.send_request(options)
    end

    # <p>Deletes a replication configuration. Deleting a replication configuration ends the
    #       replication process. After a replication configuration is deleted, the destination file system
    #       becomes <code>Writeable</code> and its replication overwrite protection is re-enabled. For
    #       more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/delete-replications.html">Delete a replication configuration</a>.</p>
    #          <p>This operation requires permissions for the
    #         <code>elasticfilesystem:DeleteReplicationConfiguration</code> action. </p>
    # @param [Hash, Types::DeleteReplicationConfigurationRequest] params
    # @option params [String] :source_file_system_id
    #   <p>The ID of the source file system in the replication configuration.</p>
    # @option params [String] :deletion_mode
    #   <p>When replicating across Amazon Web Services accounts or across Amazon Web Services Regions,
    #         Amazon EFS deletes the replication configuration from both the source
    #         and destination account or Region (<code>ALL_CONFIGURATIONS</code>) by default.
    #         If there's a configuration or permissions issue that prevents Amazon EFS from deleting the
    #         replication configuration from both sides, you can use the <code>LOCAL_CONFIGURATION_ONLY</code> mode
    #         to delete the replication configuration from only the local side (the account
    #          or Region from which the delete is performed). </p>
    #            <note>
    #               <p>Only use the <code>LOCAL_CONFIGURATION_ONLY</code> mode in the case that Amazon EFS is unable
    #          to delete the replication configuration in both the source and destination account or Region.
    #           Deleting the local configuration
    #          leaves the configuration in the other account or Region unrecoverable.</p>
    #               <p>Additionally, do not use this mode for same-account, same-region replication as doing so results in a
    #           BadRequest exception error.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_file_system_id: "FileSystemId", # required
    #     deletion_mode: "ALL_CONFIGURATIONS" # One of: ["ALL_CONFIGURATIONS", "LOCAL_CONFIGURATION_ONLY"]
    #   }
    #   options = {}
    #   response = client.delete_replication_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_replication_configuration(params = {}, options = {})
      request = build_request(:delete_replication_configuration, params)
      request.send_request(options)
    end

    # <note>
    #             <p>DEPRECATED - <code>DeleteTags</code> is deprecated and not maintained. To remove tags from EFS
    #         resources, use the  API action.</p>
    #          </note>
    #          <p>Deletes the specified tags from a file system. If the <code>DeleteTags</code> request
    #       includes a tag key that doesn't exist, Amazon EFS ignores it and doesn't cause an
    #       error. For more information about tags and related restrictions, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Tag restrictions</a> in the
    #         <i>Billing and Cost Management User Guide</i>.</p>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:DeleteTags</code>
    #       action.</p>
    # @param [Hash, Types::DeleteTagsRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID of the file system whose tags you want to delete (String).</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to delete.</p>
    # @example To delete tags for an EFS file system
    #   # This operation deletes tags for an EFS file system.
    #   params = {
    #     file_system_id: "fs-01234567",
    #     tag_keys: [
    #       "Name"
    #     ]
    #   }
    #   options = {}
    #   response = client.delete_tags(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.delete_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   Use UntagResource.
    # @return [Smithy::Schema::EmptyStructure]
    def delete_tags(params = {}, options = {})
      request = build_request(:delete_tags, params)
      request.send_request(options)
    end

    # <p>Returns the description of a specific Amazon EFS access point if the
    #         <code>AccessPointId</code> is provided. If you provide an EFS
    #         <code>FileSystemId</code>, it returns descriptions of all access points for that file
    #       system. You can provide either an <code>AccessPointId</code> or a <code>FileSystemId</code> in
    #       the request, but not both. </p>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:DescribeAccessPoints</code> action.</p>
    # @param [Hash, Types::DescribeAccessPointsRequest] params
    # @option params [Integer] :max_results
    #   <p>(Optional) When retrieving all access points for a file system,
    #         you can optionally specify the <code>MaxItems</code> parameter to limit the number of objects returned in a response.
    #         The default value is 100. </p>
    # @option params [String] :next_token
    #   <p>
    #               <code>NextToken</code> is present if the response is paginated. You can use
    #         <code>NextMarker</code> in the subsequent request to fetch the next page of access point descriptions.</p>
    # @option params [String] :access_point_id
    #   <p>(Optional) Specifies an EFS access point to describe in the response; mutually
    #         exclusive with <code>FileSystemId</code>.</p>
    # @option params [String] :file_system_id
    #   <p>(Optional) If you provide a <code>FileSystemId</code>, EFS returns all access
    #         points for that file system; mutually exclusive with <code>AccessPointId</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "Token",
    #     access_point_id: "AccessPointId",
    #     file_system_id: "FileSystemId"
    #   }
    #   options = {}
    #   response = client.describe_access_points(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_points: [
    #       {
    #         client_token: "ClientToken",
    #         name: "Name",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         access_point_id: "AccessPointId",
    #         access_point_arn: "AccessPointArn",
    #         file_system_id: "FileSystemId",
    #         posix_user: {
    #           uid: 1, # required
    #           gid: 1, # required
    #           secondary_gids: [1]
    #         },
    #         root_directory: {
    #           path: "Path",
    #           creation_info: {
    #             owner_uid: 1, # required
    #             owner_gid: 1, # required
    #             permissions: "Permissions", # required
    #           }
    #         },
    #         owner_id: "AwsAccountId",
    #         life_cycle_state: "creating" # One of: ["creating", "available", "updating", "deleting", "deleted", "error"]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::DescribeAccessPointsResponse]
    def describe_access_points(params = {}, options = {})
      request = build_request(:describe_access_points, params)
      request.send_request(options)
    end

    # <p>Returns the account preferences settings for the Amazon Web Services account associated with the user making the request, in the current Amazon Web Services Region.</p>
    # @param [Hash, Types::DescribeAccountPreferencesRequest] params
    # @option params [String] :next_token
    #   <p>(Optional) You can use <code>NextToken</code> in a subsequent request to fetch the next page of
    #         Amazon Web Services account preferences if the response payload was paginated.</p>
    # @option params [Integer] :max_results
    #   <p>(Optional) When retrieving account preferences,
    #         you can optionally specify the <code>MaxItems</code> parameter to limit the number of objects returned in a response.
    #         The default value is 100. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_account_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_id_preference: {
    #       resource_id_type: "LONG_ID" # One of: ["LONG_ID", "SHORT_ID"],
    #       resources: ["FILE_SYSTEM" # One of: ["FILE_SYSTEM", "MOUNT_TARGET"]]
    #     },
    #     next_token: "Token"
    #   }
    # @return [Types::DescribeAccountPreferencesResponse]
    def describe_account_preferences(params = {}, options = {})
      request = build_request(:describe_account_preferences, params)
      request.send_request(options)
    end

    # <p>Returns the backup policy for the specified EFS file system.</p>
    # @param [Hash, Types::DescribeBackupPolicyRequest] params
    # @option params [String] :file_system_id
    #   <p>Specifies which EFS file system for which to retrieve the
    #           <code>BackupPolicy</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #   }
    #   options = {}
    #   response = client.describe_backup_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_policy: {
    #       status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"], # required
    #     }
    #   }
    # @return [Types::DescribeBackupPolicyOutput]
    def describe_backup_policy(params = {}, options = {})
      request = build_request(:describe_backup_policy, params)
      request.send_request(options)
    end

    # <p>Returns the <code>FileSystemPolicy</code> for the specified EFS file
    #       system.</p>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:DescribeFileSystemPolicy</code> action.</p>
    # @param [Hash, Types::DescribeFileSystemPolicyRequest] params
    # @option params [String] :file_system_id
    #   <p>Specifies which EFS file system to retrieve the <code>FileSystemPolicy</code>
    #         for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #   }
    #   options = {}
    #   response = client.describe_file_system_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_system_id: "FileSystemId",
    #     policy: "Policy"
    #   }
    # @return [Types::DescribeFileSystemPolicyOutput]
    def describe_file_system_policy(params = {}, options = {})
      request = build_request(:describe_file_system_policy, params)
      request.send_request(options)
    end

    # <p>Returns the description of a specific Amazon EFS file system if either the file system
    #         <code>CreationToken</code> or the <code>FileSystemId</code> is provided. Otherwise, it
    #       returns descriptions of all file systems owned by the caller's Amazon Web Services account in the
    #       Amazon Web Services Region of the endpoint that you're calling.</p>
    #          <p>When retrieving all file system descriptions, you can optionally specify the
    #         <code>MaxItems</code> parameter to limit the number of descriptions in a response.
    #       This number is automatically set to 100. If more file system descriptions remain,
    #       Amazon EFS returns a <code>NextMarker</code>, an opaque token, in the response. In this case,
    #       you should send a subsequent request with the <code>Marker</code> request parameter set to the
    #       value of <code>NextMarker</code>. </p>
    #          <p>To retrieve a list of your file system descriptions, this operation is used in an
    #       iterative process, where <code>DescribeFileSystems</code> is called first without the
    #         <code>Marker</code> and then the operation continues to call it with the <code>Marker</code>
    #       parameter set to the value of the <code>NextMarker</code> from the previous response until the
    #       response has no <code>NextMarker</code>. </p>
    #          <p> The order of file systems returned in the response of one
    #         <code>DescribeFileSystems</code> call and the order of file systems returned across the
    #       responses of a multi-call iteration is unspecified. </p>
    #          <p> This operation requires permissions for the
    #         <code>elasticfilesystem:DescribeFileSystems</code> action. </p>
    # @param [Hash, Types::DescribeFileSystemsRequest] params
    # @option params [Integer] :max_items
    #   <p>(Optional) Specifies the maximum number of file systems to return in the response
    #         (integer). This number is automatically set to 100. The response is paginated at 100 per page if you have more than 100 file systems.
    #         </p>
    # @option params [String] :marker
    #   <p>(Optional) Opaque pagination token returned from a previous
    #           <code>DescribeFileSystems</code> operation (String). If present, specifies to continue the
    #         list from where the returning call had left off. </p>
    # @option params [String] :creation_token
    #   <p>(Optional) Restricts the list to the file system with this creation token (String). You
    #         specify a creation token when you create an Amazon EFS file system.</p>
    # @option params [String] :file_system_id
    #   <p>(Optional) ID of the file system whose description you want to retrieve
    #         (String).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_items: 1,
    #     marker: "Marker",
    #     creation_token: "CreationToken",
    #     file_system_id: "FileSystemId"
    #   }
    #   options = {}
    #   response = client.describe_file_systems(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "Marker",
    #     file_systems: [
    #       {
    #         owner_id: "AwsAccountId", # required
    #         creation_token: "CreationToken", # required
    #         file_system_id: "FileSystemId", # required
    #         file_system_arn: "FileSystemArn",
    #         creation_time: Time.now, # required
    #         life_cycle_state: "creating" # One of: ["creating", "available", "updating", "deleting", "deleted", "error"], # required
    #         name: "TagValue",
    #         number_of_mount_targets: 1, # required
    #         size_in_bytes: { # required
    #           value: 1, # required
    #           timestamp: Time.now,
    #           value_in_ia: 1,
    #           value_in_standard: 1,
    #           value_in_archive: 1
    #         },
    #         performance_mode: "generalPurpose" # One of: ["generalPurpose", "maxIO"], # required
    #         encrypted: false,
    #         kms_key_id: "KmsKeyId",
    #         throughput_mode: "bursting" # One of: ["bursting", "provisioned", "elastic"],
    #         provisioned_throughput_in_mibps: 1.0,
    #         availability_zone_name: "AvailabilityZoneName",
    #         availability_zone_id: "AvailabilityZoneId",
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         file_system_protection: {
    #           replication_overwrite_protection: "ENABLED" # One of: ["ENABLED", "DISABLED", "REPLICATING"]
    #         }
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::DescribeFileSystemsResponse]
    def describe_file_systems(params = {}, options = {})
      request = build_request(:describe_file_systems, params)
      request.send_request(options)
    end

    # <p>Returns the current <code>LifecycleConfiguration</code> object for the specified
    #       EFS file system. Lifecycle management uses the <code>LifecycleConfiguration</code>
    #       object to identify when to move files between storage classes. For a file system without a
    #         <code>LifecycleConfiguration</code> object, the call returns an empty array in the
    #       response.</p>
    #          <p>This operation requires permissions for the
    #         <code>elasticfilesystem:DescribeLifecycleConfiguration</code> operation.</p>
    # @param [Hash, Types::DescribeLifecycleConfigurationRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID of the file system whose <code>LifecycleConfiguration</code> object you want to
    #         retrieve (String).</p>
    # @example To describe the lifecycle configuration for a file system
    #   # This operation describes a file system's LifecycleConfiguration. EFS lifecycle management uses the LifecycleConfiguration object to identify which files to move to the EFS Infrequent Access (IA) storage class.
    #   params = {
    #     file_system_id: "fs-01234567"
    #   }
    #   options = {}
    #   response = client.describe_lifecycle_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     lifecycle_policies: [
    #       {
    #         transition_to_ia: AFTER_30_DAYS
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #   }
    #   options = {}
    #   response = client.describe_lifecycle_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_policies: [
    #       {
    #         transition_to_ia: "AFTER_7_DAYS" # One of: ["AFTER_7_DAYS", "AFTER_14_DAYS", "AFTER_30_DAYS", "AFTER_60_DAYS", "AFTER_90_DAYS", "AFTER_1_DAY", "AFTER_180_DAYS", "AFTER_270_DAYS", "AFTER_365_DAYS"],
    #         transition_to_primary_storage_class: "AFTER_1_ACCESS" # One of: ["AFTER_1_ACCESS"],
    #         transition_to_archive: "AFTER_1_DAY" # One of: ["AFTER_1_DAY", "AFTER_7_DAYS", "AFTER_14_DAYS", "AFTER_30_DAYS", "AFTER_60_DAYS", "AFTER_90_DAYS", "AFTER_180_DAYS", "AFTER_270_DAYS", "AFTER_365_DAYS"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeLifecycleConfigurationOutput]
    def describe_lifecycle_configuration(params = {}, options = {})
      request = build_request(:describe_lifecycle_configuration, params)
      request.send_request(options)
    end

    # <p>Returns the security groups currently in effect for a mount target. This operation
    #       requires that the network interface of the mount target has been created and the lifecycle
    #       state of the mount target is not <code>deleted</code>.</p>
    #          <p>This operation requires permissions for the following actions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>elasticfilesystem:DescribeMountTargetSecurityGroups</code> action on the mount
    #           target's file system. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ec2:DescribeNetworkInterfaceAttribute</code> action on the mount target's
    #           network interface. </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeMountTargetSecurityGroupsRequest] params
    # @option params [String] :mount_target_id
    #   <p>The ID of the mount target whose security groups you want to retrieve.</p>
    # @example To describe the security groups for a mount target
    #   # This operation describes all of the security groups for a file system's mount target.
    #   params = {
    #     mount_target_id: "fsmt-12340abc"
    #   }
    #   options = {}
    #   response = client.describe_mount_target_security_groups(params, options)
    #   response.to_h #=>
    #   {
    #     security_groups: [
    #       "sg-4567abcd"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     mount_target_id: "MountTargetId", # required
    #   }
    #   options = {}
    #   response = client.describe_mount_target_security_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_groups: ["SecurityGroup"], # required
    #   }
    # @return [Types::DescribeMountTargetSecurityGroupsResponse]
    def describe_mount_target_security_groups(params = {}, options = {})
      request = build_request(:describe_mount_target_security_groups, params)
      request.send_request(options)
    end

    # <p>Returns the descriptions of all the current mount targets, or a specific mount target,
    #       for a file system. When requesting all of the current mount targets, the order of mount
    #       targets returned in the response is unspecified.</p>
    #          <p>This operation requires permissions for the
    #         <code>elasticfilesystem:DescribeMountTargets</code> action, on either the file system ID
    #       that you specify in <code>FileSystemId</code>, or on the file system of the mount target that
    #       you specify in <code>MountTargetId</code>.</p>
    # @param [Hash, Types::DescribeMountTargetsRequest] params
    # @option params [Integer] :max_items
    #   <p>(Optional) Maximum number of mount targets to return in the response. Currently, this
    #         number is automatically set to
    #         10, and other values are ignored. The response is paginated at 100 per page if you have more than 100 mount targets.</p>
    # @option params [String] :marker
    #   <p>(Optional) Opaque pagination token returned from a previous
    #           <code>DescribeMountTargets</code> operation (String). If present, it specifies to continue
    #         the list from where the previous returning call left off.</p>
    # @option params [String] :file_system_id
    #   <p>(Optional) ID of the file system whose mount targets you want to list (String). It must
    #         be included in your request if an <code>AccessPointId</code> or <code>MountTargetId</code> is not included. Accepts either a file system ID or ARN as input.</p>
    # @option params [String] :mount_target_id
    #   <p>(Optional) ID of the mount target that you want to have described (String). It must be
    #         included in your request if <code>FileSystemId</code> is not included. Accepts either a mount target ID or ARN as input.</p>
    # @option params [String] :access_point_id
    #   <p>(Optional) The ID of the access point whose mount targets that you want to list. It must be included in your request if a
    #         <code>FileSystemId</code> or <code>MountTargetId</code> is not included in your request. Accepts either an access point ID or ARN as input.</p>
    # @example To describe the mount targets for a file system
    #   # This operation describes all of a file system's mount targets.
    #   params = {
    #     file_system_id: "fs-01234567"
    #   }
    #   options = {}
    #   response = client.describe_mount_targets(params, options)
    #   response.to_h #=>
    #   {
    #     mount_targets: [
    #       {
    #         mount_target_id: "fsmt-12340abc",
    #         network_interface_id: "eni-cedf6789",
    #         file_system_id: "fs-01234567",
    #         life_cycle_state: available,
    #         subnet_id: "subnet-1234abcd",
    #         owner_id: "012345678912",
    #         ip_address: "192.0.0.2"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_items: 1,
    #     marker: "Marker",
    #     file_system_id: "FileSystemId",
    #     mount_target_id: "MountTargetId",
    #     access_point_id: "AccessPointId"
    #   }
    #   options = {}
    #   response = client.describe_mount_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "Marker",
    #     mount_targets: [
    #       {
    #         owner_id: "AwsAccountId",
    #         mount_target_id: "MountTargetId", # required
    #         file_system_id: "FileSystemId", # required
    #         subnet_id: "SubnetId", # required
    #         life_cycle_state: "creating" # One of: ["creating", "available", "updating", "deleting", "deleted", "error"], # required
    #         ip_address: "IpAddress",
    #         ipv6_address: "Ipv6Address",
    #         network_interface_id: "NetworkInterfaceId",
    #         availability_zone_id: "AvailabilityZoneId",
    #         availability_zone_name: "AvailabilityZoneName",
    #         vpc_id: "VpcId"
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::DescribeMountTargetsResponse]
    def describe_mount_targets(params = {}, options = {})
      request = build_request(:describe_mount_targets, params)
      request.send_request(options)
    end

    # <p>Retrieves the replication configuration for a specific file system. If a file system is
    #       not specified, all of the replication configurations for the Amazon Web Services account in an
    #         Amazon Web Services Region are retrieved.</p>
    # @param [Hash, Types::DescribeReplicationConfigurationsRequest] params
    # @option params [String] :file_system_id
    #   <p>You can retrieve the replication configuration for a specific file system by providing its
    #         file system ID. For cross-account,cross-region replication, an account can only describe the replication
    #         configuration for a file system in its own Region.</p>
    # @option params [String] :next_token
    #   <p>
    #               <code>NextToken</code> is present if the response is paginated. You can use
    #           <code>NextToken</code> in a subsequent request to fetch the next page of
    #         output.</p>
    # @option params [Integer] :max_results
    #   <p>(Optional) To limit the number of objects returned in a response, you can specify the
    #           <code>MaxItems</code> parameter. The default value is 100. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId",
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_replication_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replications: [
    #       {
    #         source_file_system_id: "FileSystemId", # required
    #         source_file_system_region: "RegionName", # required
    #         source_file_system_arn: "FileSystemArn", # required
    #         original_source_file_system_arn: "FileSystemArn", # required
    #         creation_time: Time.now, # required
    #         destinations: [ # required
    #           {
    #             status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DELETING", "ERROR", "PAUSED", "PAUSING"], # required
    #             file_system_id: "FileSystemId", # required
    #             region: "RegionName", # required
    #             last_replicated_timestamp: Time.now,
    #             owner_id: "AwsAccountId",
    #             status_message: "StatusMessage",
    #             role_arn: "RoleArn"
    #           }
    #         ],
    #         source_file_system_owner_id: "AwsAccountId"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::DescribeReplicationConfigurationsResponse]
    def describe_replication_configurations(params = {}, options = {})
      request = build_request(:describe_replication_configurations, params)
      request.send_request(options)
    end

    # <note>
    #             <p>DEPRECATED - The <code>DescribeTags</code> action is deprecated and not maintained. To view
    #         tags associated with EFS resources, use the <code>ListTagsForResource</code> API
    #         action.</p>
    #          </note>
    #          <p>Returns the tags associated with a file system. The order of tags returned in the
    #       response of one <code>DescribeTags</code> call and the order of tags returned across the
    #       responses of a multiple-call iteration (when using pagination) is unspecified. </p>
    #          <p> This operation requires permissions for the
    #         <code>elasticfilesystem:DescribeTags</code> action. </p>
    # @param [Hash, Types::DescribeTagsRequest] params
    # @option params [Integer] :max_items
    #   <p>(Optional) The maximum number of file system tags to return in the response. Currently,
    #         this number is automatically set to
    #         100, and other values are ignored. The response is paginated at 100 per page if you have more than 100 tags.</p>
    # @option params [String] :marker
    #   <p>(Optional) An opaque pagination token returned from a previous
    #           <code>DescribeTags</code> operation (String). If present, it specifies to continue the list
    #         from where the previous call left off.</p>
    # @option params [String] :file_system_id
    #   <p>The ID of the file system whose tag set you want to retrieve.</p>
    # @example To describe the tags for a file system
    #   # This operation describes all of a file system's tags.
    #   params = {
    #     file_system_id: "fs-01234567"
    #   }
    #   options = {}
    #   response = client.describe_tags(params, options)
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
    #     max_items: 1,
    #     marker: "Marker",
    #     file_system_id: "FileSystemId", # required
    #   }
    #   options = {}
    #   response = client.describe_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "Marker",
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @deprecated
    #   Use ListTagsForResource.
    # @return [Types::DescribeTagsResponse]
    def describe_tags(params = {}, options = {})
      request = build_request(:describe_tags, params)
      request.send_request(options)
    end

    # <p>Lists all tags for a top-level EFS resource. You must provide the ID of the
    #       resource that you want to retrieve the tags for.</p>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:DescribeAccessPoints</code> action.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_id
    #   <p>Specifies the EFS resource you want to retrieve tags for. You can retrieve tags
    #         for EFS file systems and access points using this API endpoint.</p>
    # @option params [Integer] :max_results
    #   <p>(Optional) Specifies the maximum number of tag objects to return in the response. The default value is 100.</p>
    # @option params [String] :next_token
    #   <p>(Optional) You can use <code>NextToken</code> in a subsequent request to fetch the next page of access point descriptions if the response payload was paginated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "Token"
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
    #     next_token: "Token"
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Modifies the set of security groups in effect for a mount target.</p>
    #          <p>When you create a mount target, Amazon EFS also creates a new network interface. For
    #       more information, see <a>CreateMountTarget</a>. This operation replaces the security groups in effect for the
    #       network interface associated with a mount target, with the <code>SecurityGroups</code>
    #       provided in the request. This operation requires that the network interface of the mount
    #       target has been created and the lifecycle state of the mount target is not
    #         <code>deleted</code>. </p>
    #          <p>The operation requires permissions for the following actions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>elasticfilesystem:ModifyMountTargetSecurityGroups</code> action on the mount
    #           target's file system. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ec2:ModifyNetworkInterfaceAttribute</code> action on the mount target's network
    #           interface. </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ModifyMountTargetSecurityGroupsRequest] params
    # @option params [String] :mount_target_id
    #   <p>The ID of the mount target whose security groups you want to modify.</p>
    # @option params [Array<String>] :security_groups
    #   <p>An array of VPC security group IDs. </p>
    # @example To modify the security groups associated with a mount target for a file system
    #   # This operation modifies the security groups associated with a mount target for a file system.
    #   params = {
    #     mount_target_id: "fsmt-12340abc",
    #     security_groups: [
    #       "sg-abcd1234"
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_mount_target_security_groups(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     mount_target_id: "MountTargetId", # required
    #     security_groups: ["SecurityGroup"]
    #   }
    #   options = {}
    #   response = client.modify_mount_target_security_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def modify_mount_target_security_groups(params = {}, options = {})
      request = build_request(:modify_mount_target_security_groups, params)
      request.send_request(options)
    end

    # <p>Use this operation to set the account preference in the current Amazon Web Services Region
    #       to use long 17 character (63 bit) or short 8 character (32 bit) resource IDs for new
    #       EFS file system and mount target resources. All existing resource IDs are not
    #       affected by any changes you make. You can set the ID preference during the opt-in period as
    #       EFS transitions to long resource IDs. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/manage-efs-resource-ids.html">Managing Amazon EFS resource IDs</a>.</p>
    #          <note>
    #             <p>Starting in October, 2021, you will receive an error if you try to set the account preference
    #         to use the short 8 character format resource ID. Contact Amazon Web Services support if you
    #         receive an error and must use short IDs for file system and mount target resources.</p>
    #          </note>
    # @param [Hash, Types::PutAccountPreferencesRequest] params
    # @option params [String] :resource_id_type
    #   <p>Specifies the EFS resource ID preference to set for the user's Amazon Web Services account, in the current Amazon Web Services Region, either <code>LONG_ID</code>
    #         (17 characters), or <code>SHORT_ID</code> (8 characters).</p>
    #            <note>
    #               <p>Starting in October, 2021, you will receive an error when setting the account preference to
    #             <code>SHORT_ID</code>. Contact Amazon Web Services support if you receive an error and must
    #           use short IDs for file system and mount target resources.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id_type: "LONG_ID" # One of: ["LONG_ID", "SHORT_ID"], # required
    #   }
    #   options = {}
    #   response = client.put_account_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_id_preference: {
    #       resource_id_type: "LONG_ID" # One of: ["LONG_ID", "SHORT_ID"],
    #       resources: ["FILE_SYSTEM" # One of: ["FILE_SYSTEM", "MOUNT_TARGET"]]
    #     }
    #   }
    # @return [Types::PutAccountPreferencesResponse]
    def put_account_preferences(params = {}, options = {})
      request = build_request(:put_account_preferences, params)
      request.send_request(options)
    end

    # <p>Updates the file system's backup policy. Use this action to start or stop automatic backups of the file system. </p>
    # @param [Hash, Types::PutBackupPolicyRequest] params
    # @option params [String] :file_system_id
    #   <p>Specifies which EFS file system to update the backup policy for.</p>
    # @option params [Types::BackupPolicy] :backup_policy
    #   <p>The backup policy included in the <code>PutBackupPolicy</code> request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #     backup_policy: { # required
    #       status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_backup_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_policy: {
    #       status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"], # required
    #     }
    #   }
    # @return [Types::PutBackupPolicyOutput]
    def put_backup_policy(params = {}, options = {})
      request = build_request(:put_backup_policy, params)
      request.send_request(options)
    end

    # <p>Applies an Amazon EFS
    #       <code>FileSystemPolicy</code> to an Amazon EFS file system. A file system policy is an
    #       IAM resource-based policy and can contain multiple policy statements. A file system always has
    #       exactly one file system policy, which can be the default policy or an explicit policy set or
    #       updated using this API operation. EFS file system policies have a 20,000 character
    #       limit. When an explicit policy is set, it overrides the default policy. For more information
    #       about the default file system policy, see <a href="https://docs.aws.amazon.com/efs/latest/ug/iam-access-control-nfs-efs.html#default-filesystempolicy">
    #         Default EFS file system policy</a>. </p>
    #          <note>
    #             <p>EFS file system policies have a 20,000 character limit.</p>
    #          </note>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:PutFileSystemPolicy</code> action.</p>
    # @param [Hash, Types::PutFileSystemPolicyRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID of the EFS file system that you want to create or update the
    #           <code>FileSystemPolicy</code> for.</p>
    # @option params [String] :policy
    #   <p>The <code>FileSystemPolicy</code> that you're creating. Accepts a JSON formatted
    #         policy definition. EFS file system policies have a 20,000 character limit. To find
    #         out more about the elements that make up a file system policy, see <a href="https://docs.aws.amazon.com/efs/latest/ug/security_iam_service-with-iam.html#security_iam_service-with-iam-resource-based-policies">Resource-based policies within Amazon EFS</a>. </p>
    # @option params [Boolean] :bypass_policy_lockout_safety_check
    #   <p>(Optional) A boolean that specifies whether or not to bypass the <code>FileSystemPolicy</code> lockout safety check. The lockout safety check
    #         determines whether the policy in the request will lock out, or prevent, the IAM principal that is making the request from making future <code>PutFileSystemPolicy</code> requests on this file system.
    #         Set <code>BypassPolicyLockoutSafetyCheck</code> to <code>True</code> only when you intend to prevent
    #         the IAM principal that is making the request from making subsequent <code>PutFileSystemPolicy</code> requests on this file system.
    #         The default value is <code>False</code>.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #     policy: "Policy", # required
    #     bypass_policy_lockout_safety_check: false
    #   }
    #   options = {}
    #   response = client.put_file_system_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_system_id: "FileSystemId",
    #     policy: "Policy"
    #   }
    # @return [Types::PutFileSystemPolicyOutput]
    def put_file_system_policy(params = {}, options = {})
      request = build_request(:put_file_system_policy, params)
      request.send_request(options)
    end

    # <p>Use this action to manage storage for your file system. A
    #         <code>LifecycleConfiguration</code> consists of one or more <code>LifecyclePolicy</code>
    #       objects that define the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>
    #                      <code>TransitionToIA</code>
    #                   </b> –
    #           When to move files in the file system from primary storage (Standard storage class) into the Infrequent Access
    #         (IA) storage.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>
    #                      <code>TransitionToArchive</code>
    #                   </b> –
    #           When to move files in the file system from their current storage class (either IA or Standard storage) into the
    #          Archive storage.</p>
    #                <p>File systems cannot transition into Archive storage before transitioning into IA  storage. Therefore,
    #         TransitionToArchive must either not be set or must be later than TransitionToIA.</p>
    #                <note>
    #                   <p> The Archive storage class is available only for file systems that use the Elastic throughput mode
    # and the General Purpose performance mode. </p>
    #                </note>
    #             </li>
    #          </ul>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>
    #                      <code>TransitionToPrimaryStorageClass</code>
    #                   </b> –
    #           Whether to move files in the file system back to primary storage (Standard storage class) after they are accessed in IA
    #         or Archive storage.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/lifecycle-management-efs.html"> Managing file system
    #       storage</a>.</p>
    #          <p>Each Amazon EFS file system supports one lifecycle configuration, which applies to
    #       all files in the file system. If a <code>LifecycleConfiguration</code> object already exists
    #       for the specified file system, a <code>PutLifecycleConfiguration</code> call modifies the
    #       existing configuration. A <code>PutLifecycleConfiguration</code> call with an empty
    #         <code>LifecyclePolicies</code> array in the request body deletes any existing
    #         <code>LifecycleConfiguration</code>. In the request, specify the following: </p>
    #          <ul>
    #             <li>
    #                <p>The ID for the file system for which you are enabling, disabling, or modifying
    #           lifecycle management.</p>
    #             </li>
    #             <li>
    #                <p>A <code>LifecyclePolicies</code> array of <code>LifecyclePolicy</code> objects that
    #           define when to move files to IA storage, to Archive storage,
    #           and back to primary storage.</p>
    #                <note>
    #                   <p>Amazon EFS requires that each <code>LifecyclePolicy</code>
    #           object have only have a single transition, so the <code>LifecyclePolicies</code> array needs to be structured with separate
    #           <code>LifecyclePolicy</code> objects. See the example requests in the following section for more information.</p>
    #                </note>
    #             </li>
    #          </ul>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:PutLifecycleConfiguration</code> operation.</p>
    #          <p>To apply a <code>LifecycleConfiguration</code> object to an encrypted file system, you
    #       need the same Key Management Service permissions as when you created the encrypted file system.</p>
    # @param [Hash, Types::PutLifecycleConfigurationRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID of the file system for which you are creating the
    #           <code>LifecycleConfiguration</code> object (String).</p>
    # @option params [Array<Types::LifecyclePolicy>] :lifecycle_policies
    #   <p>An array of <code>LifecyclePolicy</code> objects that define the file system's
    #           <code>LifecycleConfiguration</code> object. A <code>LifecycleConfiguration</code> object
    #         informs lifecycle management of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>TransitionToIA</code>
    #                     </b> –
    #         When to move files in the file system from primary storage (Standard storage class) into the Infrequent Access
    #           (IA) storage.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>TransitionToArchive</code>
    #                     </b> –
    #             When to move files in the file system from their current storage class (either IA or Standard storage) into the
    #            Archive storage.</p>
    #                  <p>File systems cannot transition into Archive storage before transitioning into IA  storage. Therefore,
    #           TransitionToArchive must either not be set or must be later than TransitionToIA.</p>
    #                  <note>
    #                     <p>The Archive storage class is available only for file systems that use the Elastic throughput mode
    #   and the General Purpose performance mode. </p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>TransitionToPrimaryStorageClass</code>
    #                     </b> – Whether to move files in the file system back to primary storage (Standard storage class) after they are accessed in IA
    #           or Archive storage.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>When using the <code>put-lifecycle-configuration</code> CLI command or the
    #             <code>PutLifecycleConfiguration</code> API action, Amazon EFS requires that each
    #             <code>LifecyclePolicy</code> object have only a single transition. This means that in a
    #           request body, <code>LifecyclePolicies</code> must be structured as an array of
    #             <code>LifecyclePolicy</code> objects, one object for each storage transition. See the example
    #           requests in the following section for more information.</p>
    #            </note>
    # @example Creates a new lifecycleconfiguration object for a file system
    #   # This operation enables lifecycle management on a file system by creating a new LifecycleConfiguration object. A LifecycleConfiguration object defines when files in an Amazon EFS file system are automatically transitioned to the lower-cost EFS Infrequent Access (IA) storage class. A LifecycleConfiguration applies to all files in a file system.
    #   params = {
    #     file_system_id: "fs-01234567",
    #     lifecycle_policies: [
    #       {
    #         transition_to_ia: AFTER_30_DAYS
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_lifecycle_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     lifecycle_policies: [
    #       {
    #         transition_to_ia: AFTER_30_DAYS
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #     lifecycle_policies: [ # required
    #       {
    #         transition_to_ia: "AFTER_7_DAYS" # One of: ["AFTER_7_DAYS", "AFTER_14_DAYS", "AFTER_30_DAYS", "AFTER_60_DAYS", "AFTER_90_DAYS", "AFTER_1_DAY", "AFTER_180_DAYS", "AFTER_270_DAYS", "AFTER_365_DAYS"],
    #         transition_to_primary_storage_class: "AFTER_1_ACCESS" # One of: ["AFTER_1_ACCESS"],
    #         transition_to_archive: "AFTER_1_DAY" # One of: ["AFTER_1_DAY", "AFTER_7_DAYS", "AFTER_14_DAYS", "AFTER_30_DAYS", "AFTER_60_DAYS", "AFTER_90_DAYS", "AFTER_180_DAYS", "AFTER_270_DAYS", "AFTER_365_DAYS"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_lifecycle_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_policies: [
    #       {
    #         transition_to_ia: "AFTER_7_DAYS" # One of: ["AFTER_7_DAYS", "AFTER_14_DAYS", "AFTER_30_DAYS", "AFTER_60_DAYS", "AFTER_90_DAYS", "AFTER_1_DAY", "AFTER_180_DAYS", "AFTER_270_DAYS", "AFTER_365_DAYS"],
    #         transition_to_primary_storage_class: "AFTER_1_ACCESS" # One of: ["AFTER_1_ACCESS"],
    #         transition_to_archive: "AFTER_1_DAY" # One of: ["AFTER_1_DAY", "AFTER_7_DAYS", "AFTER_14_DAYS", "AFTER_30_DAYS", "AFTER_60_DAYS", "AFTER_90_DAYS", "AFTER_180_DAYS", "AFTER_270_DAYS", "AFTER_365_DAYS"]
    #       }
    #     ]
    #   }
    # @return [Types::PutLifecycleConfigurationOutput]
    def put_lifecycle_configuration(params = {}, options = {})
      request = build_request(:put_lifecycle_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a tag for an EFS resource. You can create tags for EFS file
    #       systems and access points using this API operation.</p>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:TagResource</code> action.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_id
    #   <p>The ID specifying the EFS resource that you want to create a tag for.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of <code>Tag</code> objects to add. Each <code>Tag</code> object is a key-value
    #         pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
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

    # <p>Removes tags from an EFS resource. You can remove tags from EFS file
    #       systems and access points using this API operation.</p>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:UntagResource</code> action.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_id
    #   <p>Specifies the EFS resource that you want to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the key-value tag pairs that you want to remove from the specified
    #         EFS resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
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

    # <p>Updates the throughput mode or the amount of provisioned throughput of an existing file
    #       system.</p>
    # @param [Hash, Types::UpdateFileSystemRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID of the file system that you want to update.</p>
    # @option params [String] :throughput_mode
    #   <p>(Optional) Updates the file system's throughput mode. If you're not
    #         updating your throughput mode, you don't need to provide this value in your
    #         request. If you are changing the <code>ThroughputMode</code> to <code>provisioned</code>,
    #         you must also set a value for <code>ProvisionedThroughputInMibps</code>.</p>
    # @option params [Float] :provisioned_throughput_in_mibps
    #   <p>(Optional) The throughput, measured in mebibytes per second (MiBps), that you want to
    #         provision for a file system that you're creating. Required if <code>ThroughputMode</code>
    #         is set to <code>provisioned</code>. Valid values are 1-3414 MiBps, with the upper limit
    #         depending on Region. To increase this limit, contact Amazon Web Services Support. For more information,
    #         see <a href="https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits">Amazon EFS
    #           quotas that you can increase</a> in the <i>Amazon EFS User
    #           Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #     throughput_mode: "bursting" # One of: ["bursting", "provisioned", "elastic"],
    #     provisioned_throughput_in_mibps: 1.0
    #   }
    #   options = {}
    #   response = client.update_file_system(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_id: "AwsAccountId", # required
    #     creation_token: "CreationToken", # required
    #     file_system_id: "FileSystemId", # required
    #     file_system_arn: "FileSystemArn",
    #     creation_time: Time.now, # required
    #     life_cycle_state: "creating" # One of: ["creating", "available", "updating", "deleting", "deleted", "error"], # required
    #     name: "TagValue",
    #     number_of_mount_targets: 1, # required
    #     size_in_bytes: { # required
    #       value: 1, # required
    #       timestamp: Time.now,
    #       value_in_ia: 1,
    #       value_in_standard: 1,
    #       value_in_archive: 1
    #     },
    #     performance_mode: "generalPurpose" # One of: ["generalPurpose", "maxIO"], # required
    #     encrypted: false,
    #     kms_key_id: "KmsKeyId",
    #     throughput_mode: "bursting" # One of: ["bursting", "provisioned", "elastic"],
    #     provisioned_throughput_in_mibps: 1.0,
    #     availability_zone_name: "AvailabilityZoneName",
    #     availability_zone_id: "AvailabilityZoneId",
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     file_system_protection: {
    #       replication_overwrite_protection: "ENABLED" # One of: ["ENABLED", "DISABLED", "REPLICATING"]
    #     }
    #   }
    # @return [Types::UpdateFileSystemOutput]
    def update_file_system(params = {}, options = {})
      request = build_request(:update_file_system, params)
      request.send_request(options)
    end

    # <p>Updates protection on the file system.</p>
    #          <p>This operation requires permissions for the
    #         <code>elasticfilesystem:UpdateFileSystemProtection</code> action. </p>
    # @param [Hash, Types::UpdateFileSystemProtectionRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID of the file system to update. </p>
    # @option params [String] :replication_overwrite_protection
    #   <p>The status of the file system's replication overwrite protection.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – The file system cannot be used as the destination file
    #             system in a replication configuration. The file system is writeable. Replication overwrite
    #             protection is <code>ENABLED</code> by default. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – The file system can be used as the destination file
    #             system in a replication configuration. The file system is read-only and can only be
    #             modified by EFS replication.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REPLICATING</code> – The file system is being used as the destination file
    #             system in a replication configuration. The file system is read-only and is only modified
    #             only by EFS replication.</p>
    #               </li>
    #            </ul>
    #            <p>If the replication configuration is deleted, the file system's replication overwrite
    #         protection is re-enabled and the file system becomes writeable.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #     replication_overwrite_protection: "ENABLED" # One of: ["ENABLED", "DISABLED", "REPLICATING"]
    #   }
    #   options = {}
    #   response = client.update_file_system_protection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_overwrite_protection: "ENABLED" # One of: ["ENABLED", "DISABLED", "REPLICATING"]
    #   }
    # @return [Types::UpdateFileSystemProtectionOutput]
    def update_file_system_protection(params = {}, options = {})
      request = build_request(:update_file_system_protection, params)
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
      context[:gem_name] = 'aws-sdk-efs'
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
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
