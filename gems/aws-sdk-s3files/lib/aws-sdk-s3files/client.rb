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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:s3files)

module Aws::S3Files
  # An API client for Aws::S3Files.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::S3Files
    @identifier = :s3files

    add_plugin(::Aws::S3Files::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::S3Files::EndpointProvider)
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

    # <p>Creates an S3 File System Access Point for application-specific access with POSIX user identity and root directory enforcement. Access points provide a way to manage access to shared datasets in multi-tenant scenarios.</p>
    # @param [Hash, Types::CreateAccessPointRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Web Services ignores the request, but does not return an error.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key-value pairs to apply to the access point for resource tagging.</p>
    # @option params [String] :file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System.</p>
    # @option params [Types::PosixUser] :posix_user
    #   <p>The POSIX identity with uid, gid, and secondary group IDs for user enforcement when accessing the file system through this access point.</p>
    # @option params [Types::RootDirectory] :root_directory
    #   <p>The root directory path for the access point, with optional creation permissions for newly created directories.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
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
    #       creation_permissions: {
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
    #     access_point_arn: "AccessPointArn", # required
    #     access_point_id: "AccessPointId", # required
    #     client_token: "ClientToken", # required
    #     file_system_id: "FileSystemId", # required
    #     status: "available" # One of: ["available", "creating", "deleting", "deleted", "error", "updating"], # required
    #     owner_id: "AwsAccountId", # required
    #     posix_user: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [1]
    #     },
    #     root_directory: {
    #       path: "Path",
    #       creation_permissions: {
    #         owner_uid: 1, # required
    #         owner_gid: 1, # required
    #         permissions: "Permissions", # required
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     name: "TagValue"
    #   }
    # @return [Types::CreateAccessPointResponse]
    def create_access_point(params = {}, options = {})
      request = build_request(:create_access_point, params)
      request.send_request(options)
    end

    # <p>Creates an S3 File System resource scoped to a bucket or prefix within a bucket, enabling file system access to S3 data. To create a file system, you need an S3 bucket and an IAM role that grants the service permission to access the bucket.</p>
    # @param [Hash, Types::CreateFileSystemRequest] params
    # @option params [String] :bucket
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket that will be accessible through the file system. The bucket must exist and be in the same Amazon Web Services Region as the file system.</p>
    # @option params [String] :prefix
    #   <p>An optional prefix within the S3 bucket to scope the file system access. If specified, the file system provides access only to objects with keys that begin with this prefix. If not specified, the file system provides access to the entire bucket.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure idempotent creation. Up to 64 ASCII characters are allowed. If you don't specify a client token, the Amazon Web Services SDK automatically generates one.</p>
    # @option params [String] :kms_key_id
    #   <p>The ARN, key ID, or alias of the KMS key to use for encryption. If not specified, the service uses a service-owned key for encryption. You can specify a KMS key using the following formats: key ID, ARN, key alias, or key alias ARN. If you use <code>KmsKeyId</code>, the file system will be encrypted.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that grants the S3 Files service permission to read and write data between the file system and the S3 bucket. This role must have the necessary permissions to access the specified bucket and prefix.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key-value pairs to apply as tags to the file system resource. Each tag is a user-defined key-value pair. You can use tags to categorize and manage your file systems. Each key must be unique for the resource.</p>
    # @option params [Boolean] :accept_bucket_warning
    #   <p>Set to true to acknowledge and accept any warnings about the bucket configuration. If not specified, the operation may fail if there are bucket configuration warnings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bucket: "BucketArn", # required
    #     prefix: "String",
    #     client_token: "CreationToken",
    #     kms_key_id: "KmsKeyId",
    #     role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     accept_bucket_warning: false
    #   }
    #   options = {}
    #   response = client.create_file_system(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_time: Time.now,
    #     file_system_arn: "FileSystemArn",
    #     file_system_id: "FileSystemId",
    #     bucket: "BucketArn",
    #     prefix: "String",
    #     client_token: "ClientToken",
    #     kms_key_id: "KmsKeyId",
    #     status: "available" # One of: ["available", "creating", "deleting", "deleted", "error", "updating"],
    #     status_message: "StatusMessage",
    #     role_arn: "RoleArn",
    #     owner_id: "AwsAccountId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     name: "TagValue"
    #   }
    # @return [Types::CreateFileSystemResponse]
    def create_file_system(params = {}, options = {})
      request = build_request(:create_file_system, params)
      request.send_request(options)
    end

    # <p>Creates a mount target resource as an endpoint for mounting the S3 File System from compute resources in a specific Availability Zone and VPC. Mount targets provide network access to the file system.</p>
    # @param [Hash, Types::CreateMountTargetRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System to create the mount target for.</p>
    # @option params [String] :subnet_id
    #   <p>The ID of the subnet where the mount target will be created. The subnet must be in the same Amazon Web Services Region as the file system. For file systems with regional availability, you can create mount targets in any subnet within the Region. The subnet determines the Availability Zone where the mount target will be located.</p>
    # @option params [String] :ipv4_address
    #   <p>A specific IPv4 address to assign to the mount target. If not specified and the IP address type supports IPv4, an address is automatically assigned from the subnet's available IPv4 address range. The address must be within the subnet's CIDR block and not already in use.</p>
    # @option params [String] :ipv6_address
    #   <p>A specific IPv6 address to assign to the mount target. If not specified and the IP address type supports IPv6, an address is automatically assigned from the subnet's available IPv6 address range. The address must be within the subnet's IPv6 CIDR block and not already in use.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type for the mount target. If not specified, <code>IPV4_ONLY</code> is used. The IP address type must match the IP configuration of the specified subnet.</p>
    # @option params [Array<String>] :security_groups
    #   <p>An array of VPC security group IDs to associate with the mount target's network interface. These security groups control network access to the mount target. If not specified, the default security group for the subnet's VPC is used. All security groups must belong to the same VPC as the subnet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #     subnet_id: "SubnetId", # required
    #     ipv4_address: "Ipv4Address",
    #     ipv6_address: "Ipv6Address",
    #     ip_address_type: "IPV4_ONLY" # One of: ["IPV4_ONLY", "IPV6_ONLY", "DUAL_STACK"],
    #     security_groups: ["SecurityGroup"]
    #   }
    #   options = {}
    #   response = client.create_mount_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     availability_zone_id: "AvailabilityZoneId",
    #     owner_id: "AwsAccountId", # required
    #     mount_target_id: "MountTargetId", # required
    #     file_system_id: "FileSystemId",
    #     subnet_id: "SubnetId", # required
    #     ipv4_address: "Ipv4Address",
    #     ipv6_address: "Ipv6Address",
    #     network_interface_id: "NetworkInterfaceId",
    #     vpc_id: "VpcId",
    #     security_groups: ["SecurityGroup"],
    #     status: "available" # One of: ["available", "creating", "deleting", "deleted", "error", "updating"],
    #     status_message: "StatusMessage"
    #   }
    # @return [Types::CreateMountTargetResponse]
    def create_mount_target(params = {}, options = {})
      request = build_request(:create_mount_target, params)
      request.send_request(options)
    end

    # <p>Deletes an S3 File System Access Point. This operation is irreversible.</p>
    # @param [Hash, Types::DeleteAccessPointRequest] params
    # @option params [String] :access_point_id
    #   <p>The ID or Amazon Resource Name (ARN) of the access point to delete.</p>
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

    # <p>Deletes an S3 File System. You can optionally force deletion of a file system that has pending export data.</p>
    # @param [Hash, Types::DeleteFileSystemRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System to delete.</p>
    # @option params [Boolean] :force_delete
    #   <p>If true, allows deletion of a file system that contains data pending export to S3. If false (the default), the deletion will fail if there is data that has not yet been exported to the S3 bucket. Use this parameter with caution as it may result in data loss.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #     force_delete: false
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

    # <p>Deletes the IAM resource policy of an S3 File System.</p>
    # @param [Hash, Types::DeleteFileSystemPolicyRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System whose resource policy to delete.</p>
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

    # <p>Deletes the specified mount target. This operation is irreversible.</p>
    # @param [Hash, Types::DeleteMountTargetRequest] params
    # @option params [String] :mount_target_id
    #   <p>The ID of the mount target to delete.</p>
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

    # <p>Returns resource information for an S3 File System Access Point.</p>
    # @param [Hash, Types::GetAccessPointRequest] params
    # @option params [String] :access_point_id
    #   <p>The ID or Amazon Resource Name (ARN) of the access point to retrieve information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_point_id: "AccessPointId", # required
    #   }
    #   options = {}
    #   response = client.get_access_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_point_arn: "AccessPointArn", # required
    #     access_point_id: "AccessPointId", # required
    #     client_token: "ClientToken", # required
    #     file_system_id: "FileSystemId", # required
    #     status: "available" # One of: ["available", "creating", "deleting", "deleted", "error", "updating"], # required
    #     owner_id: "AwsAccountId", # required
    #     posix_user: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [1]
    #     },
    #     root_directory: {
    #       path: "Path",
    #       creation_permissions: {
    #         owner_uid: 1, # required
    #         owner_gid: 1, # required
    #         permissions: "Permissions", # required
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     name: "TagValue"
    #   }
    # @return [Types::GetAccessPointResponse]
    def get_access_point(params = {}, options = {})
      request = build_request(:get_access_point, params)
      request.send_request(options)
    end

    # <p>Returns resource information for the specified S3 File System including status, configuration, and metadata.</p>
    # @param [Hash, Types::GetFileSystemRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System to retrieve information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #   }
    #   options = {}
    #   response = client.get_file_system(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_time: Time.now,
    #     file_system_arn: "FileSystemArn",
    #     file_system_id: "FileSystemId",
    #     bucket: "BucketArn",
    #     prefix: "String",
    #     client_token: "ClientToken",
    #     kms_key_id: "KmsKeyId",
    #     status: "available" # One of: ["available", "creating", "deleting", "deleted", "error", "updating"],
    #     status_message: "StatusMessage",
    #     role_arn: "RoleArn",
    #     owner_id: "AwsAccountId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     name: "TagValue"
    #   }
    # @return [Types::GetFileSystemResponse]
    def get_file_system(params = {}, options = {})
      request = build_request(:get_file_system, params)
      request.send_request(options)
    end

    # <p>Returns the IAM resource policy of an S3 File System.</p>
    # @param [Hash, Types::GetFileSystemPolicyRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System whose resource policy to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #   }
    #   options = {}
    #   response = client.get_file_system_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_system_id: "FileSystemId", # required
    #     policy: "String", # required
    #   }
    # @return [Types::GetFileSystemPolicyResponse]
    def get_file_system_policy(params = {}, options = {})
      request = build_request(:get_file_system_policy, params)
      request.send_request(options)
    end

    # <p>Returns detailed resource information for the specified mount target including network configuration.</p>
    # @param [Hash, Types::GetMountTargetRequest] params
    # @option params [String] :mount_target_id
    #   <p>The ID of the mount target to retrieve information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mount_target_id: "MountTargetId", # required
    #   }
    #   options = {}
    #   response = client.get_mount_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     availability_zone_id: "AvailabilityZoneId",
    #     owner_id: "AwsAccountId", # required
    #     mount_target_id: "MountTargetId", # required
    #     file_system_id: "FileSystemId",
    #     subnet_id: "SubnetId", # required
    #     ipv4_address: "Ipv4Address",
    #     ipv6_address: "Ipv6Address",
    #     network_interface_id: "NetworkInterfaceId",
    #     vpc_id: "VpcId",
    #     security_groups: ["SecurityGroup"],
    #     status: "available" # One of: ["available", "creating", "deleting", "deleted", "error", "updating"],
    #     status_message: "StatusMessage"
    #   }
    # @return [Types::GetMountTargetResponse]
    def get_mount_target(params = {}, options = {})
      request = build_request(:get_mount_target, params)
      request.send_request(options)
    end

    # <p>Returns the synchronization configuration for the specified S3 File System, including import data rules and expiration data rules.</p>
    # @param [Hash, Types::GetSynchronizationConfigurationRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System to retrieve the synchronization configuration for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #   }
    #   options = {}
    #   response = client.get_synchronization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     latest_version_number: 1,
    #     import_data_rules: [ # required
    #       {
    #         prefix: "String", # required
    #         trigger: "ON_DIRECTORY_FIRST_ACCESS" # One of: ["ON_DIRECTORY_FIRST_ACCESS", "ON_FILE_ACCESS"], # required
    #         size_less_than: 1, # required
    #       }
    #     ],
    #     expiration_data_rules: [ # required
    #       {
    #         days_after_last_access: 1, # required
    #       }
    #     ]
    #   }
    # @return [Types::GetSynchronizationConfigurationResponse]
    def get_synchronization_configuration(params = {}, options = {})
      request = build_request(:get_synchronization_configuration, params)
      request.send_request(options)
    end

    # <p>Returns resource information for all S3 File System Access Points associated with the specified S3 File System.</p>
    # @param [Hash, Types::ListAccessPointsRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System to list access points for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of access points to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous call to continue listing access points.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_access_points(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     access_points: [ # required
    #       {
    #         access_point_arn: "AccessPointArn", # required
    #         access_point_id: "AccessPointId", # required
    #         file_system_id: "FileSystemId", # required
    #         status: "available" # One of: ["available", "creating", "deleting", "deleted", "error", "updating"], # required
    #         owner_id: "AwsAccountId", # required
    #         posix_user: {
    #           uid: 1, # required
    #           gid: 1, # required
    #           secondary_gids: [1]
    #         },
    #         root_directory: {
    #           path: "Path",
    #           creation_permissions: {
    #             owner_uid: 1, # required
    #             owner_gid: 1, # required
    #             permissions: "Permissions", # required
    #           }
    #         },
    #         name: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListAccessPointsResponse]
    def list_access_points(params = {}, options = {})
      request = build_request(:list_access_points, params)
      request.send_request(options)
    end

    # <p>Returns a list of all S3 File Systems owned by the account with optional filtering by bucket.</p>
    # @param [Hash, Types::ListFileSystemsRequest] params
    # @option params [String] :bucket
    #   <p>Optional filter to list only file systems associated with the specified S3 bucket Amazon Resource Name (ARN). If provided, only file systems that provide access to this bucket will be returned in the response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of file systems to return in a single response. If not specified, up to 100 file systems are returned.</p>
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous call to continue listing file systems.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bucket: "BucketArn",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_file_systems(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     file_systems: [ # required
    #       {
    #         creation_time: Time.now, # required
    #         file_system_arn: "FileSystemArn", # required
    #         file_system_id: "FileSystemId", # required
    #         name: "TagValue",
    #         bucket: "BucketArn", # required
    #         status: "available" # One of: ["available", "creating", "deleting", "deleted", "error", "updating"], # required
    #         status_message: "StatusMessage",
    #         role_arn: "RoleArn", # required
    #         owner_id: "AwsAccountId", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListFileSystemsResponse]
    def list_file_systems(params = {}, options = {})
      request = build_request(:list_file_systems, params)
      request.send_request(options)
    end

    # <p>Returns resource information for all mount targets with optional filtering by file system, access point, and VPC.</p>
    # @param [Hash, Types::ListMountTargetsRequest] params
    # @option params [String] :file_system_id
    #   <p>Optional filter to list only mount targets associated with the specified S3 File System ID or Amazon Resource Name (ARN). If provided, only mount targets for this file system will be returned in the response.</p>
    # @option params [String] :access_point_id
    #   <p>Optional filter to list only mount targets associated with the specified access point ID or Amazon Resource Name (ARN).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of mount targets to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous call to continue listing mount targets.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId",
    #     access_point_id: "AccessPointId",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_mount_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     mount_targets: [ # required
    #       {
    #         availability_zone_id: "AvailabilityZoneId",
    #         file_system_id: "FileSystemId",
    #         ipv4_address: "Ipv4Address",
    #         ipv6_address: "Ipv6Address",
    #         status: "available" # One of: ["available", "creating", "deleting", "deleted", "error", "updating"],
    #         status_message: "StatusMessage",
    #         mount_target_id: "MountTargetId", # required
    #         network_interface_id: "NetworkInterfaceId",
    #         owner_id: "AwsAccountId", # required
    #         subnet_id: "SubnetId", # required
    #         vpc_id: "VpcId"
    #       }
    #     ]
    #   }
    # @return [Types::ListMountTargetsResponse]
    def list_mount_targets(params = {}, options = {})
      request = build_request(:list_mount_targets, params)
      request.send_request(options)
    end

    # <p>Lists all tags for S3 Files resources.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_id
    #   <p>The ID or Amazon Resource Name (ARN) of the resource to list tags for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of tags to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous call to continue listing tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "String"
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
    #     next_token: "String"
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Creates or replaces the IAM resource policy for an S3 File System to control access permissions.</p>
    # @param [Hash, Types::PutFileSystemPolicyRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System to apply the resource policy to.</p>
    # @option params [String] :policy
    #   <p>The JSON-formatted resource policy to apply to the file system. The policy defines the permissions for accessing the file system. The policy must be a valid JSON document that follows IAM policy syntax.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #     policy: "String", # required
    #   }
    #   options = {}
    #   response = client.put_file_system_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutFileSystemPolicyResponse]
    def put_file_system_policy(params = {}, options = {})
      request = build_request(:put_file_system_policy, params)
      request.send_request(options)
    end

    # <p>Creates or updates the synchronization configuration for the specified S3 File System, including import data rules and expiration data rules.</p>
    # @param [Hash, Types::PutSynchronizationConfigurationRequest] params
    # @option params [String] :file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System to configure synchronization for.</p>
    # @option params [Integer] :latest_version_number
    #   <p>The version number of the current synchronization configuration. Omit this value when creating a synchronization configuration for the first time. For subsequent updates, provide this value for optimistic concurrency control. If the version number does not match the current configuration, the request fails with a <code>ConflictException</code>.</p>
    # @option params [Array<Types::ImportDataRule>] :import_data_rules
    #   <p>An array of import data rules that control how data is imported from S3 into the file system.</p>
    # @option params [Array<Types::ExpirationDataRule>] :expiration_data_rules
    #   <p>An array of expiration data rules that control when cached data expires from the file system.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_id: "FileSystemId", # required
    #     latest_version_number: 1,
    #     import_data_rules: [ # required
    #       {
    #         prefix: "String", # required
    #         trigger: "ON_DIRECTORY_FIRST_ACCESS" # One of: ["ON_DIRECTORY_FIRST_ACCESS", "ON_FILE_ACCESS"], # required
    #         size_less_than: 1, # required
    #       }
    #     ],
    #     expiration_data_rules: [ # required
    #       {
    #         days_after_last_access: 1, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_synchronization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutSynchronizationConfigurationResponse]
    def put_synchronization_configuration(params = {}, options = {})
      request = build_request(:put_synchronization_configuration, params)
      request.send_request(options)
    end

    # <p>Creates tags for S3 Files resources using standard Amazon Web Services tagging APIs.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_id
    #   <p>The ID or Amazon Resource Name (ARN) of the resource to add tags to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key-value pairs to add as tags to the resource.</p>
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

    # <p>Removes tags from S3 Files resources.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_id
    #   <p>The ID or Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>An array of tag keys to remove from the resource.</p>
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

    # <p>Updates the mount target resource, specifically security group configurations.</p>
    # @param [Hash, Types::UpdateMountTargetRequest] params
    # @option params [String] :mount_target_id
    #   <p>The ID of the mount target to update.</p>
    # @option params [Array<String>] :security_groups
    #   <p>An array of VPC security group IDs to associate with the mount target's network interface. This replaces the existing security groups. All security groups must belong to the same VPC as the mount target's subnet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mount_target_id: "MountTargetId", # required
    #     security_groups: ["SecurityGroup"], # required
    #   }
    #   options = {}
    #   response = client.update_mount_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     availability_zone_id: "AvailabilityZoneId",
    #     owner_id: "AwsAccountId", # required
    #     mount_target_id: "MountTargetId", # required
    #     file_system_id: "FileSystemId",
    #     subnet_id: "SubnetId", # required
    #     ipv4_address: "Ipv4Address",
    #     ipv6_address: "Ipv6Address",
    #     network_interface_id: "NetworkInterfaceId",
    #     vpc_id: "VpcId",
    #     security_groups: ["SecurityGroup"],
    #     status: "available" # One of: ["available", "creating", "deleting", "deleted", "error", "updating"],
    #     status_message: "StatusMessage"
    #   }
    # @return [Types::UpdateMountTargetResponse]
    def update_mount_target(params = {}, options = {})
      request = build_request(:update_mount_target, params)
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
      context[:gem_name] = 'aws-sdk-s3files'
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
