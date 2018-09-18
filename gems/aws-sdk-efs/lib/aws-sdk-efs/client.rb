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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:efs)

module Aws::EFS
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :efs

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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a new, empty file system. The operation requires a creation
    # token in the request that Amazon EFS uses to ensure idempotent
    # creation (calling the operation with same creation token has no
    # effect). If a file system does not currently exist that is owned by
    # the caller's AWS account with the specified creation token, this
    # operation does the following:
    #
    # * Creates a new, empty file system. The file system will have an
    #   Amazon EFS assigned ID, and an initial lifecycle state `creating`.
    #
    # * Returns with the description of the created file system.
    #
    # Otherwise, this operation returns a `FileSystemAlreadyExists` error
    # with the ID of the existing file system.
    #
    # <note markdown="1"> For basic use cases, you can use a randomly generated UUID for the
    # creation token.
    #
    #  </note>
    #
    # The idempotent operation allows you to retry a `CreateFileSystem` call
    # without risk of creating an extra file system. This can happen when an
    # initial call fails in a way that leaves it uncertain whether or not a
    # file system was actually created. An example might be that a transport
    # level timeout occurred or your connection was reset. As long as you
    # use the same creation token, if the initial call had succeeded in
    # creating a file system, the client can learn of its existence from the
    # `FileSystemAlreadyExists` error.
    #
    # <note markdown="1"> The `CreateFileSystem` call returns while the file system's lifecycle
    # state is still `creating`. You can check the file system creation
    # status by calling the DescribeFileSystems operation, which among other
    # things returns the file system state.
    #
    #  </note>
    #
    # This operation also takes an optional `PerformanceMode` parameter that
    # you choose for your file system. We recommend `generalPurpose`
    # performance mode for most file systems. File systems using the `maxIO`
    # performance mode can scale to higher levels of aggregate throughput
    # and operations per second with a tradeoff of slightly higher latencies
    # for most file operations. The performance mode can't be changed after
    # the file system has been created. For more information, see [Amazon
    # EFS: Performance Modes][1].
    #
    # After the file system is fully created, Amazon EFS sets its lifecycle
    # state to `available`, at which point you can create one or more mount
    # targets for the file system in your VPC. For more information, see
    # CreateMountTarget. You mount your Amazon EFS file system on an EC2
    # instances in your VPC via the mount target. For more information, see
    # [Amazon EFS: How it Works][2].
    #
    # This operation requires permissions for the
    # `elasticfilesystem:CreateFileSystem` action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/efs/latest/ug/performance.html#performancemodes.html
    # [2]: http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html
    #
    # @option params [required, String] :creation_token
    #   String of up to 64 ASCII characters. Amazon EFS uses this to ensure
    #   idempotent creation.
    #
    # @option params [String] :performance_mode
    #   The `PerformanceMode` of the file system. We recommend
    #   `generalPurpose` performance mode for most file systems. File systems
    #   using the `maxIO` performance mode can scale to higher levels of
    #   aggregate throughput and operations per second with a tradeoff of
    #   slightly higher latencies for most file operations. This can't be
    #   changed after the file system has been created.
    #
    # @option params [Boolean] :encrypted
    #   A Boolean value that, if true, creates an encrypted file system. When
    #   creating an encrypted file system, you have the option of specifying a
    #   CreateFileSystemRequest$KmsKeyId for an existing AWS Key Management
    #   Service (AWS KMS) customer master key (CMK). If you don't specify a
    #   CMK, then the default CMK for Amazon EFS, `/aws/elasticfilesystem`, is
    #   used to protect the encrypted file system.
    #
    # @option params [String] :kms_key_id
    #   The ID of the AWS KMS CMK to be used to protect the encrypted file
    #   system. This parameter is only required if you want to use a
    #   non-default CMK. If this parameter is not specified, the default CMK
    #   for Amazon EFS is used. This ID can be in one of the following
    #   formats:
    #
    #   * Key ID - A unique identifier of the key, for example,
    #     `1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   * ARN - An Amazon Resource Name (ARN) for the key, for example,
    #     `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   * Key alias - A previously created display name for a key. For
    #     example, `alias/projectKey1`.
    #
    #   * Key alias ARN - An ARN for a key alias, for example,
    #     `arn:aws:kms:us-west-2:444455556666:alias/projectKey1`.
    #
    #   If KmsKeyId is specified, the CreateFileSystemRequest$Encrypted
    #   parameter must be set to true.
    #
    # @option params [String] :throughput_mode
    #   The throughput mode for the file system to be created. There are two
    #   throughput modes to choose from for your file system: bursting and
    #   provisioned. You can decrease your file system's throughput in
    #   Provisioned Throughput mode or change between the throughput modes as
    #   long as it’s been more than 24 hours since the last decrease or
    #   throughput mode change.
    #
    # @option params [Float] :provisioned_throughput_in_mibps
    #   The throughput, measured in MiB/s, that you want to provision for a
    #   file system that you're creating. The limit on throughput is 1024
    #   MiB/s. You can get these limits increased by contacting AWS Support.
    #   For more information, see [Amazon EFS Limits That You Can Increase][1]
    #   in the *Amazon EFS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits
    #
    # @return [Types::FileSystemDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FileSystemDescription#owner_id #owner_id} => String
    #   * {Types::FileSystemDescription#creation_token #creation_token} => String
    #   * {Types::FileSystemDescription#file_system_id #file_system_id} => String
    #   * {Types::FileSystemDescription#creation_time #creation_time} => Time
    #   * {Types::FileSystemDescription#life_cycle_state #life_cycle_state} => String
    #   * {Types::FileSystemDescription#name #name} => String
    #   * {Types::FileSystemDescription#number_of_mount_targets #number_of_mount_targets} => Integer
    #   * {Types::FileSystemDescription#size_in_bytes #size_in_bytes} => Types::FileSystemSize
    #   * {Types::FileSystemDescription#performance_mode #performance_mode} => String
    #   * {Types::FileSystemDescription#encrypted #encrypted} => Boolean
    #   * {Types::FileSystemDescription#kms_key_id #kms_key_id} => String
    #   * {Types::FileSystemDescription#throughput_mode #throughput_mode} => String
    #   * {Types::FileSystemDescription#provisioned_throughput_in_mibps #provisioned_throughput_in_mibps} => Float
    #
    #
    # @example Example: To create a new file system
    #
    #   # This operation creates a new file system with the default generalpurpose performance mode.
    #
    #   resp = client.create_file_system({
    #     creation_token: "tokenstring", 
    #     performance_mode: "generalPurpose", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     creation_time: Time.parse("1481841524.0"), 
    #     creation_token: "tokenstring", 
    #     file_system_id: "fs-01234567", 
    #     life_cycle_state: "creating", 
    #     number_of_mount_targets: 0, 
    #     owner_id: "012345678912", 
    #     performance_mode: "generalPurpose", 
    #     size_in_bytes: {
    #       value: 0, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_file_system({
    #     creation_token: "CreationToken", # required
    #     performance_mode: "generalPurpose", # accepts generalPurpose, maxIO
    #     encrypted: false,
    #     kms_key_id: "KmsKeyId",
    #     throughput_mode: "bursting", # accepts bursting, provisioned
    #     provisioned_throughput_in_mibps: 1.0,
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_id #=> String
    #   resp.creation_token #=> String
    #   resp.file_system_id #=> String
    #   resp.creation_time #=> Time
    #   resp.life_cycle_state #=> String, one of "creating", "available", "updating", "deleting", "deleted"
    #   resp.name #=> String
    #   resp.number_of_mount_targets #=> Integer
    #   resp.size_in_bytes.value #=> Integer
    #   resp.size_in_bytes.timestamp #=> Time
    #   resp.performance_mode #=> String, one of "generalPurpose", "maxIO"
    #   resp.encrypted #=> Boolean
    #   resp.kms_key_id #=> String
    #   resp.throughput_mode #=> String, one of "bursting", "provisioned"
    #   resp.provisioned_throughput_in_mibps #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/CreateFileSystem AWS API Documentation
    #
    # @overload create_file_system(params = {})
    # @param [Hash] params ({})
    def create_file_system(params = {}, options = {})
      req = build_request(:create_file_system, params)
      req.send_request(options)
    end

    # Creates a mount target for a file system. You can then mount the file
    # system on EC2 instances via the mount target.
    #
    # You can create one mount target in each Availability Zone in your VPC.
    # All EC2 instances in a VPC within a given Availability Zone share a
    # single mount target for a given file system. If you have multiple
    # subnets in an Availability Zone, you create a mount target in one of
    # the subnets. EC2 instances do not need to be in the same subnet as the
    # mount target in order to access their file system. For more
    # information, see [Amazon EFS: How it Works][1].
    #
    # In the request, you also specify a file system ID for which you are
    # creating the mount target and the file system's lifecycle state must
    # be `available`. For more information, see DescribeFileSystems.
    #
    # In the request, you also provide a subnet ID, which determines the
    # following:
    #
    # * VPC in which Amazon EFS creates the mount target
    #
    # * Availability Zone in which Amazon EFS creates the mount target
    #
    # * IP address range from which Amazon EFS selects the IP address of the
    #   mount target (if you don't specify an IP address in the request)
    #
    # After creating the mount target, Amazon EFS returns a response that
    # includes, a `MountTargetId` and an `IpAddress`. You use this IP
    # address when mounting the file system in an EC2 instance. You can also
    # use the mount target's DNS name when mounting the file system. The
    # EC2 instance on which you mount the file system via the mount target
    # can resolve the mount target's DNS name to its IP address. For more
    # information, see [How it Works: Implementation Overview][2].
    #
    # Note that you can create mount targets for a file system in only one
    # VPC, and there can be only one mount target per Availability Zone.
    # That is, if the file system already has one or more mount targets
    # created for it, the subnet specified in the request to add another
    # mount target must meet the following requirements:
    #
    # * Must belong to the same VPC as the subnets of the existing mount
    #   targets
    #
    # * Must not be in the same Availability Zone as any of the subnets of
    #   the existing mount targets
    #
    # If the request satisfies the requirements, Amazon EFS does the
    # following:
    #
    # * Creates a new mount target in the specified subnet.
    #
    # * Also creates a new network interface in the subnet as follows:
    #
    #   * If the request provides an `IpAddress`, Amazon EFS assigns that IP
    #     address to the network interface. Otherwise, Amazon EFS assigns a
    #     free address in the subnet (in the same way that the Amazon EC2
    #     `CreateNetworkInterface` call does when a request does not specify
    #     a primary private IP address).
    #
    #   * If the request provides `SecurityGroups`, this network interface
    #     is associated with those security groups. Otherwise, it belongs to
    #     the default security group for the subnet's VPC.
    #
    #   * Assigns the description `Mount target fsmt-id for file system
    #     fs-id ` where ` fsmt-id ` is the mount target ID, and ` fs-id ` is
    #     the `FileSystemId`.
    #
    #   * Sets the `requesterManaged` property of the network interface to
    #     `true`, and the `requesterId` value to `EFS`.
    #
    #   Each Amazon EFS mount target has one corresponding requester-managed
    #   EC2 network interface. After the network interface is created,
    #   Amazon EFS sets the `NetworkInterfaceId` field in the mount
    #   target's description to the network interface ID, and the
    #   `IpAddress` field to its address. If network interface creation
    #   fails, the entire `CreateMountTarget` operation fails.
    #
    # <note markdown="1"> The `CreateMountTarget` call returns only after creating the network
    # interface, but while the mount target state is still `creating`, you
    # can check the mount target creation status by calling the
    # DescribeMountTargets operation, which among other things returns the
    # mount target state.
    #
    #  </note>
    #
    # We recommend you create a mount target in each of the Availability
    # Zones. There are cost considerations for using a file system in an
    # Availability Zone through a mount target created in another
    # Availability Zone. For more information, see [Amazon EFS][3]. In
    # addition, by always using a mount target local to the instance's
    # Availability Zone, you eliminate a partial failure scenario. If the
    # Availability Zone in which your mount target is created goes down,
    # then you won't be able to access your file system through that mount
    # target.
    #
    # This operation requires permissions for the following action on the
    # file system:
    #
    # * `elasticfilesystem:CreateMountTarget`
    #
    # ^
    #
    # This operation also requires permissions for the following Amazon EC2
    # actions:
    #
    # * `ec2:DescribeSubnets`
    #
    # * `ec2:DescribeNetworkInterfaces`
    #
    # * `ec2:CreateNetworkInterface`
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html
    # [2]: http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html#how-it-works-implementation
    # [3]: http://aws.amazon.com/efs/
    #
    # @option params [required, String] :file_system_id
    #   ID of the file system for which to create the mount target.
    #
    # @option params [required, String] :subnet_id
    #   ID of the subnet to add the mount target in.
    #
    # @option params [String] :ip_address
    #   Valid IPv4 address within the address range of the specified subnet.
    #
    # @option params [Array<String>] :security_groups
    #   Up to five VPC security group IDs, of the form `sg-xxxxxxxx`. These
    #   must be for the same VPC as subnet specified.
    #
    # @return [Types::MountTargetDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MountTargetDescription#owner_id #owner_id} => String
    #   * {Types::MountTargetDescription#mount_target_id #mount_target_id} => String
    #   * {Types::MountTargetDescription#file_system_id #file_system_id} => String
    #   * {Types::MountTargetDescription#subnet_id #subnet_id} => String
    #   * {Types::MountTargetDescription#life_cycle_state #life_cycle_state} => String
    #   * {Types::MountTargetDescription#ip_address #ip_address} => String
    #   * {Types::MountTargetDescription#network_interface_id #network_interface_id} => String
    #
    #
    # @example Example: To create a new mount target
    #
    #   # This operation creates a new mount target for an EFS file system.
    #
    #   resp = client.create_mount_target({
    #     file_system_id: "fs-01234567", 
    #     subnet_id: "subnet-1234abcd", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_system_id: "fs-01234567", 
    #     ip_address: "192.0.0.2", 
    #     life_cycle_state: "creating", 
    #     mount_target_id: "fsmt-12340abc", 
    #     network_interface_id: "eni-cedf6789", 
    #     owner_id: "012345678912", 
    #     subnet_id: "subnet-1234abcd", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_mount_target({
    #     file_system_id: "FileSystemId", # required
    #     subnet_id: "SubnetId", # required
    #     ip_address: "IpAddress",
    #     security_groups: ["SecurityGroup"],
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_id #=> String
    #   resp.mount_target_id #=> String
    #   resp.file_system_id #=> String
    #   resp.subnet_id #=> String
    #   resp.life_cycle_state #=> String, one of "creating", "available", "updating", "deleting", "deleted"
    #   resp.ip_address #=> String
    #   resp.network_interface_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/CreateMountTarget AWS API Documentation
    #
    # @overload create_mount_target(params = {})
    # @param [Hash] params ({})
    def create_mount_target(params = {}, options = {})
      req = build_request(:create_mount_target, params)
      req.send_request(options)
    end

    # Creates or overwrites tags associated with a file system. Each tag is
    # a key-value pair. If a tag key specified in the request already exists
    # on the file system, this operation overwrites its value with the value
    # provided in the request. If you add the `Name` tag to your file
    # system, Amazon EFS returns it in the response to the
    # DescribeFileSystems operation.
    #
    # This operation requires permission for the
    # `elasticfilesystem:CreateTags` action.
    #
    # @option params [required, String] :file_system_id
    #   ID of the file system whose tags you want to modify (String). This
    #   operation modifies the tags only, not the file system.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Array of `Tag` objects to add. Each `Tag` object is a key-value pair.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To create a new tag
    #
    #   # This operation creates a new tag for an EFS file system.
    #
    #   resp = client.create_tags({
    #     file_system_id: "fs-01234567", 
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
    #   resp = client.create_tags({
    #     file_system_id: "FileSystemId", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/CreateTags AWS API Documentation
    #
    # @overload create_tags(params = {})
    # @param [Hash] params ({})
    def create_tags(params = {}, options = {})
      req = build_request(:create_tags, params)
      req.send_request(options)
    end

    # Deletes a file system, permanently severing access to its contents.
    # Upon return, the file system no longer exists and you can't access
    # any contents of the deleted file system.
    #
    # You can't delete a file system that is in use. That is, if the file
    # system has any mount targets, you must first delete them. For more
    # information, see DescribeMountTargets and DeleteMountTarget.
    #
    # <note markdown="1"> The `DeleteFileSystem` call returns while the file system state is
    # still `deleting`. You can check the file system deletion status by
    # calling the DescribeFileSystems operation, which returns a list of
    # file systems in your account. If you pass file system ID or creation
    # token for the deleted file system, the DescribeFileSystems returns a
    # `404 FileSystemNotFound` error.
    #
    #  </note>
    #
    # This operation requires permissions for the
    # `elasticfilesystem:DeleteFileSystem` action.
    #
    # @option params [required, String] :file_system_id
    #   ID of the file system you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a file system
    #
    #   # This operation deletes an EFS file system.
    #
    #   resp = client.delete_file_system({
    #     file_system_id: "fs-01234567", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_file_system({
    #     file_system_id: "FileSystemId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteFileSystem AWS API Documentation
    #
    # @overload delete_file_system(params = {})
    # @param [Hash] params ({})
    def delete_file_system(params = {}, options = {})
      req = build_request(:delete_file_system, params)
      req.send_request(options)
    end

    # Deletes the specified mount target.
    #
    # This operation forcibly breaks any mounts of the file system via the
    # mount target that is being deleted, which might disrupt instances or
    # applications using those mounts. To avoid applications getting cut off
    # abruptly, you might consider unmounting any mounts of the mount
    # target, if feasible. The operation also deletes the associated network
    # interface. Uncommitted writes may be lost, but breaking a mount target
    # using this operation does not corrupt the file system itself. The file
    # system you created remains. You can mount an EC2 instance in your VPC
    # via another mount target.
    #
    # This operation requires permissions for the following action on the
    # file system:
    #
    # * `elasticfilesystem:DeleteMountTarget`
    #
    # ^
    #
    # <note markdown="1"> The `DeleteMountTarget` call returns while the mount target state is
    # still `deleting`. You can check the mount target deletion by calling
    # the DescribeMountTargets operation, which returns a list of mount
    # target descriptions for the given file system.
    #
    #  </note>
    #
    # The operation also requires permissions for the following Amazon EC2
    # action on the mount target's network interface:
    #
    # * `ec2:DeleteNetworkInterface`
    #
    # ^
    #
    # @option params [required, String] :mount_target_id
    #   ID of the mount target to delete (String).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a mount target
    #
    #   # This operation deletes a mount target.
    #
    #   resp = client.delete_mount_target({
    #     mount_target_id: "fsmt-12340abc", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_mount_target({
    #     mount_target_id: "MountTargetId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteMountTarget AWS API Documentation
    #
    # @overload delete_mount_target(params = {})
    # @param [Hash] params ({})
    def delete_mount_target(params = {}, options = {})
      req = build_request(:delete_mount_target, params)
      req.send_request(options)
    end

    # Deletes the specified tags from a file system. If the `DeleteTags`
    # request includes a tag key that does not exist, Amazon EFS ignores it
    # and doesn't cause an error. For more information about tags and
    # related restrictions, see [Tag Restrictions][1] in the *AWS Billing
    # and Cost Management User Guide*.
    #
    # This operation requires permissions for the
    # `elasticfilesystem:DeleteTags` action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #
    # @option params [required, String] :file_system_id
    #   ID of the file system whose tags you want to delete (String).
    #
    # @option params [required, Array<String>] :tag_keys
    #   List of tag keys to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete tags for an EFS file system
    #
    #   # This operation deletes tags for an EFS file system.
    #
    #   resp = client.delete_tags({
    #     file_system_id: "fs-01234567", 
    #     tag_keys: [
    #       "Name", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags({
    #     file_system_id: "FileSystemId", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteTags AWS API Documentation
    #
    # @overload delete_tags(params = {})
    # @param [Hash] params ({})
    def delete_tags(params = {}, options = {})
      req = build_request(:delete_tags, params)
      req.send_request(options)
    end

    # Returns the description of a specific Amazon EFS file system if either
    # the file system `CreationToken` or the `FileSystemId` is provided.
    # Otherwise, it returns descriptions of all file systems owned by the
    # caller's AWS account in the AWS Region of the endpoint that you're
    # calling.
    #
    # When retrieving all file system descriptions, you can optionally
    # specify the `MaxItems` parameter to limit the number of descriptions
    # in a response. If more file system descriptions remain, Amazon EFS
    # returns a `NextMarker`, an opaque token, in the response. In this
    # case, you should send a subsequent request with the `Marker` request
    # parameter set to the value of `NextMarker`.
    #
    # To retrieve a list of your file system descriptions, this operation is
    # used in an iterative process, where `DescribeFileSystems` is called
    # first without the `Marker` and then the operation continues to call it
    # with the `Marker` parameter set to the value of the `NextMarker` from
    # the previous response until the response has no `NextMarker`.
    #
    # The implementation may return fewer than `MaxItems` file system
    # descriptions while still including a `NextMarker` value.
    #
    # The order of file systems returned in the response of one
    # `DescribeFileSystems` call and the order of file systems returned
    # across the responses of a multi-call iteration is unspecified.
    #
    # This operation requires permissions for the
    # `elasticfilesystem:DescribeFileSystems` action.
    #
    # @option params [Integer] :max_items
    #   (Optional) Specifies the maximum number of file systems to return in
    #   the response (integer). This parameter value must be greater than 0.
    #   The number of items that Amazon EFS returns is the minimum of the
    #   `MaxItems` parameter specified in the request and the service's
    #   internal maximum number of items per page.
    #
    # @option params [String] :marker
    #   (Optional) Opaque pagination token returned from a previous
    #   `DescribeFileSystems` operation (String). If present, specifies to
    #   continue the list from where the returning call had left off.
    #
    # @option params [String] :creation_token
    #   (Optional) Restricts the list to the file system with this creation
    #   token (String). You specify a creation token when you create an Amazon
    #   EFS file system.
    #
    # @option params [String] :file_system_id
    #   (Optional) ID of the file system whose description you want to
    #   retrieve (String).
    #
    # @return [Types::DescribeFileSystemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFileSystemsResponse#marker #marker} => String
    #   * {Types::DescribeFileSystemsResponse#file_systems #file_systems} => Array&lt;Types::FileSystemDescription&gt;
    #   * {Types::DescribeFileSystemsResponse#next_marker #next_marker} => String
    #
    #
    # @example Example: To describe an EFS file system
    #
    #   # This operation describes all of the EFS file systems in an account.
    #
    #   resp = client.describe_file_systems({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_systems: [
    #       {
    #         creation_time: Time.parse("1481841524.0"), 
    #         creation_token: "tokenstring", 
    #         file_system_id: "fs-01234567", 
    #         life_cycle_state: "available", 
    #         name: "MyFileSystem", 
    #         number_of_mount_targets: 1, 
    #         owner_id: "012345678912", 
    #         performance_mode: "generalPurpose", 
    #         size_in_bytes: {
    #           value: 6144, 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_file_systems({
    #     max_items: 1,
    #     marker: "Marker",
    #     creation_token: "CreationToken",
    #     file_system_id: "FileSystemId",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.file_systems #=> Array
    #   resp.file_systems[0].owner_id #=> String
    #   resp.file_systems[0].creation_token #=> String
    #   resp.file_systems[0].file_system_id #=> String
    #   resp.file_systems[0].creation_time #=> Time
    #   resp.file_systems[0].life_cycle_state #=> String, one of "creating", "available", "updating", "deleting", "deleted"
    #   resp.file_systems[0].name #=> String
    #   resp.file_systems[0].number_of_mount_targets #=> Integer
    #   resp.file_systems[0].size_in_bytes.value #=> Integer
    #   resp.file_systems[0].size_in_bytes.timestamp #=> Time
    #   resp.file_systems[0].performance_mode #=> String, one of "generalPurpose", "maxIO"
    #   resp.file_systems[0].encrypted #=> Boolean
    #   resp.file_systems[0].kms_key_id #=> String
    #   resp.file_systems[0].throughput_mode #=> String, one of "bursting", "provisioned"
    #   resp.file_systems[0].provisioned_throughput_in_mibps #=> Float
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeFileSystems AWS API Documentation
    #
    # @overload describe_file_systems(params = {})
    # @param [Hash] params ({})
    def describe_file_systems(params = {}, options = {})
      req = build_request(:describe_file_systems, params)
      req.send_request(options)
    end

    # Returns the security groups currently in effect for a mount target.
    # This operation requires that the network interface of the mount target
    # has been created and the lifecycle state of the mount target is not
    # `deleted`.
    #
    # This operation requires permissions for the following actions:
    #
    # * `elasticfilesystem:DescribeMountTargetSecurityGroups` action on the
    #   mount target's file system.
    #
    # * `ec2:DescribeNetworkInterfaceAttribute` action on the mount
    #   target's network interface.
    #
    # @option params [required, String] :mount_target_id
    #   ID of the mount target whose security groups you want to retrieve.
    #
    # @return [Types::DescribeMountTargetSecurityGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMountTargetSecurityGroupsResponse#security_groups #security_groups} => Array&lt;String&gt;
    #
    #
    # @example Example: To describe the security groups for a mount target
    #
    #   # This operation describes all of the security groups for a file system's mount target.
    #
    #   resp = client.describe_mount_target_security_groups({
    #     mount_target_id: "fsmt-12340abc", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     security_groups: [
    #       "sg-fghi4567", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_mount_target_security_groups({
    #     mount_target_id: "MountTargetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_groups #=> Array
    #   resp.security_groups[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeMountTargetSecurityGroups AWS API Documentation
    #
    # @overload describe_mount_target_security_groups(params = {})
    # @param [Hash] params ({})
    def describe_mount_target_security_groups(params = {}, options = {})
      req = build_request(:describe_mount_target_security_groups, params)
      req.send_request(options)
    end

    # Returns the descriptions of all the current mount targets, or a
    # specific mount target, for a file system. When requesting all of the
    # current mount targets, the order of mount targets returned in the
    # response is unspecified.
    #
    # This operation requires permissions for the
    # `elasticfilesystem:DescribeMountTargets` action, on either the file
    # system ID that you specify in `FileSystemId`, or on the file system of
    # the mount target that you specify in `MountTargetId`.
    #
    # @option params [Integer] :max_items
    #   (Optional) Maximum number of mount targets to return in the response.
    #   It must be an integer with a value greater than zero.
    #
    # @option params [String] :marker
    #   (Optional) Opaque pagination token returned from a previous
    #   `DescribeMountTargets` operation (String). If present, it specifies to
    #   continue the list from where the previous returning call left off.
    #
    # @option params [String] :file_system_id
    #   (Optional) ID of the file system whose mount targets you want to list
    #   (String). It must be included in your request if `MountTargetId` is
    #   not included.
    #
    # @option params [String] :mount_target_id
    #   (Optional) ID of the mount target that you want to have described
    #   (String). It must be included in your request if `FileSystemId` is not
    #   included.
    #
    # @return [Types::DescribeMountTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMountTargetsResponse#marker #marker} => String
    #   * {Types::DescribeMountTargetsResponse#mount_targets #mount_targets} => Array&lt;Types::MountTargetDescription&gt;
    #   * {Types::DescribeMountTargetsResponse#next_marker #next_marker} => String
    #
    #
    # @example Example: To describe the mount targets for a file system
    #
    #   # This operation describes all of a file system's mount targets.
    #
    #   resp = client.describe_mount_targets({
    #     file_system_id: "fs-01234567", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     mount_targets: [
    #       {
    #         file_system_id: "fs-01234567", 
    #         ip_address: "192.0.0.2", 
    #         life_cycle_state: "available", 
    #         mount_target_id: "fsmt-12340abc", 
    #         network_interface_id: "eni-cedf6789", 
    #         owner_id: "012345678912", 
    #         subnet_id: "subnet-1234abcd", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_mount_targets({
    #     max_items: 1,
    #     marker: "Marker",
    #     file_system_id: "FileSystemId",
    #     mount_target_id: "MountTargetId",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.mount_targets #=> Array
    #   resp.mount_targets[0].owner_id #=> String
    #   resp.mount_targets[0].mount_target_id #=> String
    #   resp.mount_targets[0].file_system_id #=> String
    #   resp.mount_targets[0].subnet_id #=> String
    #   resp.mount_targets[0].life_cycle_state #=> String, one of "creating", "available", "updating", "deleting", "deleted"
    #   resp.mount_targets[0].ip_address #=> String
    #   resp.mount_targets[0].network_interface_id #=> String
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeMountTargets AWS API Documentation
    #
    # @overload describe_mount_targets(params = {})
    # @param [Hash] params ({})
    def describe_mount_targets(params = {}, options = {})
      req = build_request(:describe_mount_targets, params)
      req.send_request(options)
    end

    # Returns the tags associated with a file system. The order of tags
    # returned in the response of one `DescribeTags` call and the order of
    # tags returned across the responses of a multi-call iteration (when
    # using pagination) is unspecified.
    #
    # This operation requires permissions for the
    # `elasticfilesystem:DescribeTags` action.
    #
    # @option params [Integer] :max_items
    #   (Optional) Maximum number of file system tags to return in the
    #   response. It must be an integer with a value greater than zero.
    #
    # @option params [String] :marker
    #   (Optional) Opaque pagination token returned from a previous
    #   `DescribeTags` operation (String). If present, it specifies to
    #   continue the list from where the previous call left off.
    #
    # @option params [required, String] :file_system_id
    #   ID of the file system whose tag set you want to retrieve.
    #
    # @return [Types::DescribeTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTagsResponse#marker #marker} => String
    #   * {Types::DescribeTagsResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::DescribeTagsResponse#next_marker #next_marker} => String
    #
    #
    # @example Example: To describe the tags for a file system
    #
    #   # This operation describes all of a file system's tags.
    #
    #   resp = client.describe_tags({
    #     file_system_id: "fs-01234567", 
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
    #   resp = client.describe_tags({
    #     max_items: 1,
    #     marker: "Marker",
    #     file_system_id: "FileSystemId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeTags AWS API Documentation
    #
    # @overload describe_tags(params = {})
    # @param [Hash] params ({})
    def describe_tags(params = {}, options = {})
      req = build_request(:describe_tags, params)
      req.send_request(options)
    end

    # Modifies the set of security groups in effect for a mount target.
    #
    # When you create a mount target, Amazon EFS also creates a new network
    # interface. For more information, see CreateMountTarget. This operation
    # replaces the security groups in effect for the network interface
    # associated with a mount target, with the `SecurityGroups` provided in
    # the request. This operation requires that the network interface of the
    # mount target has been created and the lifecycle state of the mount
    # target is not `deleted`.
    #
    # The operation requires permissions for the following actions:
    #
    # * `elasticfilesystem:ModifyMountTargetSecurityGroups` action on the
    #   mount target's file system.
    #
    # * `ec2:ModifyNetworkInterfaceAttribute` action on the mount target's
    #   network interface.
    #
    # @option params [required, String] :mount_target_id
    #   ID of the mount target whose security groups you want to modify.
    #
    # @option params [Array<String>] :security_groups
    #   Array of up to five VPC security group IDs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To modify the security groups associated with a mount target for a file system
    #
    #   # This operation modifies the security groups associated with a mount target for a file system.
    #
    #   resp = client.modify_mount_target_security_groups({
    #     mount_target_id: "fsmt-12340abc", 
    #     security_groups: [
    #       "sg-abcd1234", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_mount_target_security_groups({
    #     mount_target_id: "MountTargetId", # required
    #     security_groups: ["SecurityGroup"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/ModifyMountTargetSecurityGroups AWS API Documentation
    #
    # @overload modify_mount_target_security_groups(params = {})
    # @param [Hash] params ({})
    def modify_mount_target_security_groups(params = {}, options = {})
      req = build_request(:modify_mount_target_security_groups, params)
      req.send_request(options)
    end

    # Updates the throughput mode or the amount of provisioned throughput of
    # an existing file system.
    #
    # @option params [required, String] :file_system_id
    #   The ID of the file system that you want to update.
    #
    # @option params [String] :throughput_mode
    #   (Optional) The throughput mode that you want your file system to use.
    #   If you're not updating your throughput mode, you don't need to
    #   provide this value in your request.
    #
    # @option params [Float] :provisioned_throughput_in_mibps
    #   (Optional) The amount of throughput, in MiB/s, that you want to
    #   provision for your file system. If you're not updating the amount of
    #   provisioned throughput for your file system, you don't need to
    #   provide this value in your request.
    #
    # @return [Types::FileSystemDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FileSystemDescription#owner_id #owner_id} => String
    #   * {Types::FileSystemDescription#creation_token #creation_token} => String
    #   * {Types::FileSystemDescription#file_system_id #file_system_id} => String
    #   * {Types::FileSystemDescription#creation_time #creation_time} => Time
    #   * {Types::FileSystemDescription#life_cycle_state #life_cycle_state} => String
    #   * {Types::FileSystemDescription#name #name} => String
    #   * {Types::FileSystemDescription#number_of_mount_targets #number_of_mount_targets} => Integer
    #   * {Types::FileSystemDescription#size_in_bytes #size_in_bytes} => Types::FileSystemSize
    #   * {Types::FileSystemDescription#performance_mode #performance_mode} => String
    #   * {Types::FileSystemDescription#encrypted #encrypted} => Boolean
    #   * {Types::FileSystemDescription#kms_key_id #kms_key_id} => String
    #   * {Types::FileSystemDescription#throughput_mode #throughput_mode} => String
    #   * {Types::FileSystemDescription#provisioned_throughput_in_mibps #provisioned_throughput_in_mibps} => Float
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_file_system({
    #     file_system_id: "FileSystemId", # required
    #     throughput_mode: "bursting", # accepts bursting, provisioned
    #     provisioned_throughput_in_mibps: 1.0,
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_id #=> String
    #   resp.creation_token #=> String
    #   resp.file_system_id #=> String
    #   resp.creation_time #=> Time
    #   resp.life_cycle_state #=> String, one of "creating", "available", "updating", "deleting", "deleted"
    #   resp.name #=> String
    #   resp.number_of_mount_targets #=> Integer
    #   resp.size_in_bytes.value #=> Integer
    #   resp.size_in_bytes.timestamp #=> Time
    #   resp.performance_mode #=> String, one of "generalPurpose", "maxIO"
    #   resp.encrypted #=> Boolean
    #   resp.kms_key_id #=> String
    #   resp.throughput_mode #=> String, one of "bursting", "provisioned"
    #   resp.provisioned_throughput_in_mibps #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/UpdateFileSystem AWS API Documentation
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
      context[:gem_name] = 'aws-sdk-efs'
      context[:gem_version] = '1.4.0'
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
