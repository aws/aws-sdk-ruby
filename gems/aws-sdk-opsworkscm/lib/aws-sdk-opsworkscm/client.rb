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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:opsworkscm)

module Aws::OpsWorksCM
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :opsworkscm

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
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

    # Associates a new node with the server. For more information about how
    # to disassociate a node, see DisassociateNode.
    #
    # On a Chef server: This command is an alternative to `knife bootstrap`.
    #
    # Example (Chef): `aws opsworks-cm associate-node --server-name MyServer
    # --node-name MyManagedNode --engine-attributes
    # "Name=CHEF_ORGANIZATION,Value=default"
    # "Name=CHEF_NODE_PUBLIC_KEY,Value=public-key-pem"`
    #
    # On a Puppet server, this command is an alternative to the `puppet cert
    # sign` command that signs a Puppet node CSR.
    #
    # Example (Chef): `aws opsworks-cm associate-node --server-name MyServer
    # --node-name MyManagedNode --engine-attributes
    # "Name=PUPPET_NODE_CSR,Value=csr-pem"`
    #
    # A node can can only be associated with servers that are in a `HEALTHY`
    # state. Otherwise, an `InvalidStateException` is thrown. A
    # `ResourceNotFoundException` is thrown when the server does not exist.
    # A `ValidationException` is raised when parameters of the request are
    # not valid. The AssociateNode API call can be integrated into Auto
    # Scaling configurations, AWS Cloudformation templates, or the user data
    # of a server's instance.
    #
    # @option params [required, String] :server_name
    #   The name of the server with which to associate the node.
    #
    # @option params [required, String] :node_name
    #   The name of the node.
    #
    # @option params [required, Array<Types::EngineAttribute>] :engine_attributes
    #   Engine attributes used for associating the node.
    #
    #   **Attributes accepted in a AssociateNode request for Chef**
    #
    #   * `CHEF_ORGANIZATION`\: The Chef organization with which the node is
    #     associated. By default only one organization named `default` can
    #     exist.
    #
    #   * `CHEF_NODE_PUBLIC_KEY`\: A PEM-formatted public key. This key is
    #     required for the `chef-client` agent to access the Chef API.
    #
    #   **Attributes accepted in a AssociateNode request for Puppet**
    #
    #   * `PUPPET_NODE_CSR`\: A PEM-formatted certificate-signing request
    #     (CSR) that is created by the node.
    #
    #   ^
    #
    # @return [Types::AssociateNodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateNodeResponse#node_association_status_token #node_association_status_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_node({
    #     server_name: "ServerName", # required
    #     node_name: "NodeName", # required
    #     engine_attributes: [ # required
    #       {
    #         name: "EngineAttributeName",
    #         value: "EngineAttributeValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.node_association_status_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/AssociateNode AWS API Documentation
    #
    # @overload associate_node(params = {})
    # @param [Hash] params ({})
    def associate_node(params = {}, options = {})
      req = build_request(:associate_node, params)
      req.send_request(options)
    end

    # Creates an application-level backup of a server. While the server is
    # in the `BACKING_UP` state, the server cannot be changed, and no
    # additional backup can be created.
    #
    # Backups can be created for servers in `RUNNING`, `HEALTHY`, and
    # `UNHEALTHY` states. By default, you can create a maximum of 50 manual
    # backups.
    #
    # This operation is asynchronous.
    #
    # A `LimitExceededException` is thrown when the maximum number of manual
    # backups is reached. An `InvalidStateException` is thrown when the
    # server is not in any of the following states: RUNNING, HEALTHY, or
    # UNHEALTHY. A `ResourceNotFoundException` is thrown when the server is
    # not found. A `ValidationException` is thrown when parameters of the
    # request are not valid.
    #
    # @option params [required, String] :server_name
    #   The name of the server that you want to back up.
    #
    # @option params [String] :description
    #   A user-defined description of the backup.
    #
    # @return [Types::CreateBackupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBackupResponse#backup #backup} => Types::Backup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backup({
    #     server_name: "ServerName", # required
    #     description: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.backup.backup_arn #=> String
    #   resp.backup.backup_id #=> String
    #   resp.backup.backup_type #=> String, one of "AUTOMATED", "MANUAL"
    #   resp.backup.created_at #=> Time
    #   resp.backup.description #=> String
    #   resp.backup.engine #=> String
    #   resp.backup.engine_model #=> String
    #   resp.backup.engine_version #=> String
    #   resp.backup.instance_profile_arn #=> String
    #   resp.backup.instance_type #=> String
    #   resp.backup.key_pair #=> String
    #   resp.backup.preferred_backup_window #=> String
    #   resp.backup.preferred_maintenance_window #=> String
    #   resp.backup.s3_data_size #=> Integer
    #   resp.backup.s3_data_url #=> String
    #   resp.backup.s3_log_url #=> String
    #   resp.backup.security_group_ids #=> Array
    #   resp.backup.security_group_ids[0] #=> String
    #   resp.backup.server_name #=> String
    #   resp.backup.service_role_arn #=> String
    #   resp.backup.status #=> String, one of "IN_PROGRESS", "OK", "FAILED", "DELETING"
    #   resp.backup.status_description #=> String
    #   resp.backup.subnet_ids #=> Array
    #   resp.backup.subnet_ids[0] #=> String
    #   resp.backup.tools_version #=> String
    #   resp.backup.user_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/CreateBackup AWS API Documentation
    #
    # @overload create_backup(params = {})
    # @param [Hash] params ({})
    def create_backup(params = {}, options = {})
      req = build_request(:create_backup, params)
      req.send_request(options)
    end

    # Creates and immedately starts a new server. The server is ready to use
    # when it is in the `HEALTHY` state. By default, you can create a
    # maximum of 10 servers.
    #
    # This operation is asynchronous.
    #
    # A `LimitExceededException` is thrown when you have created the maximum
    # number of servers (10). A `ResourceAlreadyExistsException` is thrown
    # when a server with the same name already exists in the account. A
    # `ResourceNotFoundException` is thrown when you specify a backup ID
    # that is not valid or is for a backup that does not exist. A
    # `ValidationException` is thrown when parameters of the request are not
    # valid.
    #
    # If you do not specify a security group by adding the
    # `SecurityGroupIds` parameter, AWS OpsWorks creates a new security
    # group.
    #
    # *Chef Automate:* The default security group opens the Chef server to
    # the world on TCP port 443. If a KeyName is present, AWS OpsWorks
    # enables SSH access. SSH is also open to the world on TCP port 22.
    #
    # *Puppet Enterprise:* The default security group opens TCP ports 22,
    # 443, 4433, 8140, 8142, 8143, and 8170. If a KeyName is present, AWS
    # OpsWorks enables SSH access. SSH is also open to the world on TCP port
    # 22.
    #
    # By default, your server is accessible from any IP address. We
    # recommend that you update your security group rules to allow access
    # from known IP addresses and address ranges only. To edit security
    # group rules, open Security Groups in the navigation pane of the EC2
    # management console.
    #
    # @option params [Boolean] :associate_public_ip_address
    #   Associate a public IP address with a server that you are launching.
    #   Valid values are `true` or `false`. The default value is `true`.
    #
    # @option params [Boolean] :disable_automated_backup
    #   Enable or disable scheduled backups. Valid values are `true` or
    #   `false`. The default value is `true`.
    #
    # @option params [String] :engine
    #   The configuration management engine to use. Valid values include
    #   `Chef` and `Puppet`.
    #
    # @option params [String] :engine_model
    #   The engine model of the server. Valid values in this release include
    #   `Monolithic` for Puppet and `Single` for Chef.
    #
    # @option params [String] :engine_version
    #   The major release version of the engine that you want to use. For a
    #   Chef server, the valid value for EngineVersion is currently `12`. For
    #   a Puppet server, the valid value is `2017`.
    #
    # @option params [Array<Types::EngineAttribute>] :engine_attributes
    #   Optional engine attributes on a specified server.
    #
    #   **Attributes accepted in a Chef createServer request:**
    #
    #   * `CHEF_PIVOTAL_KEY`\: A base64-encoded RSA private key that is not
    #     stored by AWS OpsWorks for Chef Automate. This private key is
    #     required to access the Chef API. When no CHEF\_PIVOTAL\_KEY is set,
    #     one is generated and returned in the response.
    #
    #   * `CHEF_DELIVERY_ADMIN_PASSWORD`\: The password for the administrative
    #     user in the Chef Automate GUI. The password length is a minimum of
    #     eight characters, and a maximum of 32. The password can contain
    #     letters, numbers, and special characters (!/@#$%^&amp;+=\_). The
    #     password must contain at least one lower case letter, one upper case
    #     letter, one number, and one special character. When no
    #     CHEF\_DELIVERY\_ADMIN\_PASSWORD is set, one is generated and
    #     returned in the response.
    #
    #   **Attributes accepted in a Puppet createServer request:**
    #
    #   * `PUPPET_ADMIN_PASSWORD`\: To work with the Puppet Enterprise
    #     console, a password must use ASCII characters.
    #
    #   ^
    #
    # @option params [Integer] :backup_retention_count
    #   The number of automated backups that you want to keep. Whenever a new
    #   backup is created, AWS OpsWorks CM deletes the oldest backups if this
    #   number is exceeded. The default value is `1`.
    #
    # @option params [required, String] :server_name
    #   The name of the server. The server name must be unique within your AWS
    #   account, within each region. Server names must start with a letter;
    #   then letters, numbers, or hyphens (-) are allowed, up to a maximum of
    #   40 characters.
    #
    # @option params [required, String] :instance_profile_arn
    #   The ARN of the instance profile that your Amazon EC2 instances use.
    #   Although the AWS OpsWorks console typically creates the instance
    #   profile for you, if you are using API commands instead, run the
    #   service-role-creation.yaml AWS CloudFormation template, located at
    #   https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml.
    #   This template creates a CloudFormation stack that includes the
    #   instance profile you need.
    #
    # @option params [required, String] :instance_type
    #   The Amazon EC2 instance type to use. For example, `m4.large`.
    #   Recommended instance types include `t2.medium` and greater, `m4.*`, or
    #   `c4.xlarge` and greater.
    #
    # @option params [String] :key_pair
    #   The Amazon EC2 key pair to set for the instance. This parameter is
    #   optional; if desired, you may specify this parameter to connect to
    #   your instances by using SSH.
    #
    # @option params [String] :preferred_maintenance_window
    #   The start time for a one-hour period each week during which AWS
    #   OpsWorks CM performs maintenance on the instance. Valid values must be
    #   specified in the following format: `DDD:HH:MM`. The specified time is
    #   in coordinated universal time (UTC). The default value is a random
    #   one-hour period on Tuesday, Wednesday, or Friday. See
    #   `TimeWindowDefinition` for more information.
    #
    #   **Example:** `Mon:08:00`, which represents a start time of every
    #   Monday at 08:00 UTC. (8:00 a.m.)
    #
    # @option params [String] :preferred_backup_window
    #   The start time for a one-hour period during which AWS OpsWorks CM
    #   backs up application-level data on your server if automated backups
    #   are enabled. Valid values must be specified in one of the following
    #   formats:
    #
    #   * `HH:MM` for daily backups
    #
    #   * `DDD:HH:MM` for weekly backups
    #
    #   The specified time is in coordinated universal time (UTC). The default
    #   value is a random, daily start time.
    #
    #   **Example:** `08:00`, which represents a daily start time of 08:00
    #   UTC.
    #
    #   **Example:** `Mon:08:00`, which represents a start time of every
    #   Monday at 08:00 UTC. (8:00 a.m.)
    #
    # @option params [Array<String>] :security_group_ids
    #   A list of security group IDs to attach to the Amazon EC2 instance. If
    #   you add this parameter, the specified security groups must be within
    #   the VPC that is specified by `SubnetIds`.
    #
    #   If you do not specify this parameter, AWS OpsWorks CM creates one new
    #   security group that uses TCP ports 22 and 443, open to 0.0.0.0/0
    #   (everyone).
    #
    # @option params [required, String] :service_role_arn
    #   The service role that the AWS OpsWorks CM service backend uses to work
    #   with your account. Although the AWS OpsWorks management console
    #   typically creates the service role for you, if you are using the AWS
    #   CLI or API commands, run the service-role-creation.yaml AWS
    #   CloudFormation template, located at
    #   https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml.
    #   This template creates a CloudFormation stack that includes the service
    #   role and instance profile that you need.
    #
    # @option params [Array<String>] :subnet_ids
    #   The IDs of subnets in which to launch the server EC2 instance.
    #
    #   Amazon EC2-Classic customers: This field is required. All servers must
    #   run within a VPC. The VPC must have "Auto Assign Public IP" enabled.
    #
    #   EC2-VPC customers: This field is optional. If you do not specify
    #   subnet IDs, your EC2 instances are created in a default subnet that is
    #   selected by Amazon EC2. If you specify subnet IDs, the VPC must have
    #   "Auto Assign Public IP" enabled.
    #
    #   For more information about supported Amazon EC2 platforms, see
    #   [Supported Platforms][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html
    #
    # @option params [String] :backup_id
    #   If you specify this field, AWS OpsWorks CM creates the server by using
    #   the backup represented by BackupId.
    #
    # @return [Types::CreateServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServerResponse#server #server} => Types::Server
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_server({
    #     associate_public_ip_address: false,
    #     disable_automated_backup: false,
    #     engine: "String",
    #     engine_model: "String",
    #     engine_version: "String",
    #     engine_attributes: [
    #       {
    #         name: "EngineAttributeName",
    #         value: "EngineAttributeValue",
    #       },
    #     ],
    #     backup_retention_count: 1,
    #     server_name: "ServerName", # required
    #     instance_profile_arn: "InstanceProfileArn", # required
    #     instance_type: "String", # required
    #     key_pair: "KeyPair",
    #     preferred_maintenance_window: "TimeWindowDefinition",
    #     preferred_backup_window: "TimeWindowDefinition",
    #     security_group_ids: ["String"],
    #     service_role_arn: "ServiceRoleArn", # required
    #     subnet_ids: ["String"],
    #     backup_id: "BackupId",
    #   })
    #
    # @example Response structure
    #
    #   resp.server.associate_public_ip_address #=> Boolean
    #   resp.server.backup_retention_count #=> Integer
    #   resp.server.server_name #=> String
    #   resp.server.created_at #=> Time
    #   resp.server.cloud_formation_stack_arn #=> String
    #   resp.server.disable_automated_backup #=> Boolean
    #   resp.server.endpoint #=> String
    #   resp.server.engine #=> String
    #   resp.server.engine_model #=> String
    #   resp.server.engine_attributes #=> Array
    #   resp.server.engine_attributes[0].name #=> String
    #   resp.server.engine_attributes[0].value #=> String
    #   resp.server.engine_version #=> String
    #   resp.server.instance_profile_arn #=> String
    #   resp.server.instance_type #=> String
    #   resp.server.key_pair #=> String
    #   resp.server.maintenance_status #=> String, one of "SUCCESS", "FAILED"
    #   resp.server.preferred_maintenance_window #=> String
    #   resp.server.preferred_backup_window #=> String
    #   resp.server.security_group_ids #=> Array
    #   resp.server.security_group_ids[0] #=> String
    #   resp.server.service_role_arn #=> String
    #   resp.server.status #=> String, one of "BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"
    #   resp.server.status_reason #=> String
    #   resp.server.subnet_ids #=> Array
    #   resp.server.subnet_ids[0] #=> String
    #   resp.server.server_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/CreateServer AWS API Documentation
    #
    # @overload create_server(params = {})
    # @param [Hash] params ({})
    def create_server(params = {}, options = {})
      req = build_request(:create_server, params)
      req.send_request(options)
    end

    # Deletes a backup. You can delete both manual and automated backups.
    # This operation is asynchronous.
    #
    # An `InvalidStateException` is thrown when a backup deletion is already
    # in progress. A `ResourceNotFoundException` is thrown when the backup
    # does not exist. A `ValidationException` is thrown when parameters of
    # the request are not valid.
    #
    # @option params [required, String] :backup_id
    #   The ID of the backup to delete. Run the DescribeBackups command to get
    #   a list of backup IDs. Backup IDs are in the format
    #   `ServerName-yyyyMMddHHmmssSSS`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup({
    #     backup_id: "BackupId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DeleteBackup AWS API Documentation
    #
    # @overload delete_backup(params = {})
    # @param [Hash] params ({})
    def delete_backup(params = {}, options = {})
      req = build_request(:delete_backup, params)
      req.send_request(options)
    end

    # Deletes the server and the underlying AWS CloudFormation stacks
    # (including the server's EC2 instance). When you run this command, the
    # server state is updated to `DELETING`. After the server is deleted, it
    # is no longer returned by `DescribeServer` requests. If the AWS
    # CloudFormation stack cannot be deleted, the server cannot be deleted.
    #
    # This operation is asynchronous.
    #
    # An `InvalidStateException` is thrown when a server deletion is already
    # in progress. A `ResourceNotFoundException` is thrown when the server
    # does not exist. A `ValidationException` is raised when parameters of
    # the request are not valid.
    #
    # @option params [required, String] :server_name
    #   The ID of the server to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_server({
    #     server_name: "ServerName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DeleteServer AWS API Documentation
    #
    # @overload delete_server(params = {})
    # @param [Hash] params ({})
    def delete_server(params = {}, options = {})
      req = build_request(:delete_server, params)
      req.send_request(options)
    end

    # Describes your account attributes, and creates requests to increase
    # limits before they are reached or exceeded.
    #
    # This operation is synchronous.
    #
    # @return [Types::DescribeAccountAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountAttributesResponse#attributes #attributes} => Array&lt;Types::AccountAttribute&gt;
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].name #=> String
    #   resp.attributes[0].maximum #=> Integer
    #   resp.attributes[0].used #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeAccountAttributes AWS API Documentation
    #
    # @overload describe_account_attributes(params = {})
    # @param [Hash] params ({})
    def describe_account_attributes(params = {}, options = {})
      req = build_request(:describe_account_attributes, params)
      req.send_request(options)
    end

    # Describes backups. The results are ordered by time, with newest
    # backups first. If you do not specify a BackupId or ServerName, the
    # command returns all backups.
    #
    # This operation is synchronous.
    #
    # A `ResourceNotFoundException` is thrown when the backup does not
    # exist. A `ValidationException` is raised when parameters of the
    # request are not valid.
    #
    # @option params [String] :backup_id
    #   Describes a single backup.
    #
    # @option params [String] :server_name
    #   Returns backups for the server with the specified ServerName.
    #
    # @option params [String] :next_token
    #   This is not currently implemented for `DescribeBackups` requests.
    #
    # @option params [Integer] :max_results
    #   This is not currently implemented for `DescribeBackups` requests.
    #
    # @return [Types::DescribeBackupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBackupsResponse#backups #backups} => Array&lt;Types::Backup&gt;
    #   * {Types::DescribeBackupsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backups({
    #     backup_id: "BackupId",
    #     server_name: "ServerName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.backups #=> Array
    #   resp.backups[0].backup_arn #=> String
    #   resp.backups[0].backup_id #=> String
    #   resp.backups[0].backup_type #=> String, one of "AUTOMATED", "MANUAL"
    #   resp.backups[0].created_at #=> Time
    #   resp.backups[0].description #=> String
    #   resp.backups[0].engine #=> String
    #   resp.backups[0].engine_model #=> String
    #   resp.backups[0].engine_version #=> String
    #   resp.backups[0].instance_profile_arn #=> String
    #   resp.backups[0].instance_type #=> String
    #   resp.backups[0].key_pair #=> String
    #   resp.backups[0].preferred_backup_window #=> String
    #   resp.backups[0].preferred_maintenance_window #=> String
    #   resp.backups[0].s3_data_size #=> Integer
    #   resp.backups[0].s3_data_url #=> String
    #   resp.backups[0].s3_log_url #=> String
    #   resp.backups[0].security_group_ids #=> Array
    #   resp.backups[0].security_group_ids[0] #=> String
    #   resp.backups[0].server_name #=> String
    #   resp.backups[0].service_role_arn #=> String
    #   resp.backups[0].status #=> String, one of "IN_PROGRESS", "OK", "FAILED", "DELETING"
    #   resp.backups[0].status_description #=> String
    #   resp.backups[0].subnet_ids #=> Array
    #   resp.backups[0].subnet_ids[0] #=> String
    #   resp.backups[0].tools_version #=> String
    #   resp.backups[0].user_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeBackups AWS API Documentation
    #
    # @overload describe_backups(params = {})
    # @param [Hash] params ({})
    def describe_backups(params = {}, options = {})
      req = build_request(:describe_backups, params)
      req.send_request(options)
    end

    # Describes events for a specified server. Results are ordered by time,
    # with newest events first.
    #
    # This operation is synchronous.
    #
    # A `ResourceNotFoundException` is thrown when the server does not
    # exist. A `ValidationException` is raised when parameters of the
    # request are not valid.
    #
    # @option params [required, String] :server_name
    #   The name of the server for which you want to view events.
    #
    # @option params [String] :next_token
    #   NextToken is a string that is returned in some command responses. It
    #   indicates that not all entries have been returned, and that you must
    #   run at least one more request to get remaining items. To get remaining
    #   results, call `DescribeEvents` again, and assign the token from the
    #   previous results as the value of the `nextToken` parameter. If there
    #   are no more results, the response object's `nextToken` parameter
    #   value is `null`. Setting a `nextToken` value that was not returned in
    #   your previous results causes an `InvalidNextTokenException` to occur.
    #
    # @option params [Integer] :max_results
    #   To receive a paginated response, use this parameter to specify the
    #   maximum number of results to be returned with a single call. If the
    #   number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @return [Types::DescribeEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventsResponse#server_events #server_events} => Array&lt;Types::ServerEvent&gt;
    #   * {Types::DescribeEventsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events({
    #     server_name: "ServerName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.server_events #=> Array
    #   resp.server_events[0].created_at #=> Time
    #   resp.server_events[0].server_name #=> String
    #   resp.server_events[0].message #=> String
    #   resp.server_events[0].log_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeEvents AWS API Documentation
    #
    # @overload describe_events(params = {})
    # @param [Hash] params ({})
    def describe_events(params = {}, options = {})
      req = build_request(:describe_events, params)
      req.send_request(options)
    end

    # Returns the current status of an existing association or
    # disassociation request.
    #
    # A `ResourceNotFoundException` is thrown when no recent association or
    # disassociation request with the specified token is found, or when the
    # server does not exist. A `ValidationException` is raised when
    # parameters of the request are not valid.
    #
    # @option params [required, String] :node_association_status_token
    #   The token returned in either the AssociateNodeResponse or the
    #   DisassociateNodeResponse.
    #
    # @option params [required, String] :server_name
    #   The name of the server from which to disassociate the node.
    #
    # @return [Types::DescribeNodeAssociationStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNodeAssociationStatusResponse#node_association_status #node_association_status} => String
    #   * {Types::DescribeNodeAssociationStatusResponse#engine_attributes #engine_attributes} => Array&lt;Types::EngineAttribute&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_node_association_status({
    #     node_association_status_token: "NodeAssociationStatusToken", # required
    #     server_name: "ServerName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.node_association_status #=> String, one of "SUCCESS", "FAILED", "IN_PROGRESS"
    #   resp.engine_attributes #=> Array
    #   resp.engine_attributes[0].name #=> String
    #   resp.engine_attributes[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeNodeAssociationStatus AWS API Documentation
    #
    # @overload describe_node_association_status(params = {})
    # @param [Hash] params ({})
    def describe_node_association_status(params = {}, options = {})
      req = build_request(:describe_node_association_status, params)
      req.send_request(options)
    end

    # Lists all configuration management servers that are identified with
    # your account. Only the stored results from Amazon DynamoDB are
    # returned. AWS OpsWorks CM does not query other services.
    #
    # This operation is synchronous.
    #
    # A `ResourceNotFoundException` is thrown when the server does not
    # exist. A `ValidationException` is raised when parameters of the
    # request are not valid.
    #
    # @option params [String] :server_name
    #   Describes the server with the specified ServerName.
    #
    # @option params [String] :next_token
    #   This is not currently implemented for `DescribeServers` requests.
    #
    # @option params [Integer] :max_results
    #   This is not currently implemented for `DescribeServers` requests.
    #
    # @return [Types::DescribeServersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServersResponse#servers #servers} => Array&lt;Types::Server&gt;
    #   * {Types::DescribeServersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_servers({
    #     server_name: "ServerName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.servers #=> Array
    #   resp.servers[0].associate_public_ip_address #=> Boolean
    #   resp.servers[0].backup_retention_count #=> Integer
    #   resp.servers[0].server_name #=> String
    #   resp.servers[0].created_at #=> Time
    #   resp.servers[0].cloud_formation_stack_arn #=> String
    #   resp.servers[0].disable_automated_backup #=> Boolean
    #   resp.servers[0].endpoint #=> String
    #   resp.servers[0].engine #=> String
    #   resp.servers[0].engine_model #=> String
    #   resp.servers[0].engine_attributes #=> Array
    #   resp.servers[0].engine_attributes[0].name #=> String
    #   resp.servers[0].engine_attributes[0].value #=> String
    #   resp.servers[0].engine_version #=> String
    #   resp.servers[0].instance_profile_arn #=> String
    #   resp.servers[0].instance_type #=> String
    #   resp.servers[0].key_pair #=> String
    #   resp.servers[0].maintenance_status #=> String, one of "SUCCESS", "FAILED"
    #   resp.servers[0].preferred_maintenance_window #=> String
    #   resp.servers[0].preferred_backup_window #=> String
    #   resp.servers[0].security_group_ids #=> Array
    #   resp.servers[0].security_group_ids[0] #=> String
    #   resp.servers[0].service_role_arn #=> String
    #   resp.servers[0].status #=> String, one of "BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"
    #   resp.servers[0].status_reason #=> String
    #   resp.servers[0].subnet_ids #=> Array
    #   resp.servers[0].subnet_ids[0] #=> String
    #   resp.servers[0].server_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeServers AWS API Documentation
    #
    # @overload describe_servers(params = {})
    # @param [Hash] params ({})
    def describe_servers(params = {}, options = {})
      req = build_request(:describe_servers, params)
      req.send_request(options)
    end

    # Disassociates a node from an AWS OpsWorks CM server, and removes the
    # node from the server's managed nodes. After a node is disassociated,
    # the node key pair is no longer valid for accessing the configuration
    # manager's API. For more information about how to associate a node,
    # see AssociateNode.
    #
    # A node can can only be disassociated from a server that is in a
    # `HEALTHY` state. Otherwise, an `InvalidStateException` is thrown. A
    # `ResourceNotFoundException` is thrown when the server does not exist.
    # A `ValidationException` is raised when parameters of the request are
    # not valid.
    #
    # @option params [required, String] :server_name
    #   The name of the server from which to disassociate the node.
    #
    # @option params [required, String] :node_name
    #   The name of the client node.
    #
    # @option params [Array<Types::EngineAttribute>] :engine_attributes
    #   Engine attributes that are used for disassociating the node. No
    #   attributes are required for Puppet.
    #
    #   **Attributes required in a DisassociateNode request for Chef**
    #
    #   * `CHEF_ORGANIZATION`\: The Chef organization with which the node was
    #     associated. By default only one organization named `default` can
    #     exist.
    #
    #   ^
    #
    # @return [Types::DisassociateNodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateNodeResponse#node_association_status_token #node_association_status_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_node({
    #     server_name: "ServerName", # required
    #     node_name: "NodeName", # required
    #     engine_attributes: [
    #       {
    #         name: "EngineAttributeName",
    #         value: "EngineAttributeValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.node_association_status_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DisassociateNode AWS API Documentation
    #
    # @overload disassociate_node(params = {})
    # @param [Hash] params ({})
    def disassociate_node(params = {}, options = {})
      req = build_request(:disassociate_node, params)
      req.send_request(options)
    end

    # Restores a backup to a server that is in a `CONNECTION_LOST`,
    # `HEALTHY`, `RUNNING`, `UNHEALTHY`, or `TERMINATED` state. When you run
    # RestoreServer, the server's EC2 instance is deleted, and a new EC2
    # instance is configured. RestoreServer maintains the existing server
    # endpoint, so configuration management of the server's client devices
    # (nodes) should continue to work.
    #
    # This operation is asynchronous.
    #
    # An `InvalidStateException` is thrown when the server is not in a valid
    # state. A `ResourceNotFoundException` is thrown when the server does
    # not exist. A `ValidationException` is raised when parameters of the
    # request are not valid.
    #
    # @option params [required, String] :backup_id
    #   The ID of the backup that you want to use to restore a server.
    #
    # @option params [required, String] :server_name
    #   The name of the server that you want to restore.
    #
    # @option params [String] :instance_type
    #   The type of the instance to create. Valid values must be specified in
    #   the following format: `^([cm][34]|t2).*` For example, `m4.large`.
    #   Valid values are `t2.medium`, `m4.large`, and `m4.2xlarge`. If you do
    #   not specify this parameter, RestoreServer uses the instance type from
    #   the specified backup.
    #
    # @option params [String] :key_pair
    #   The name of the key pair to set on the new EC2 instance. This can be
    #   helpful if the administrator no longer has the SSH key.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_server({
    #     backup_id: "BackupId", # required
    #     server_name: "ServerName", # required
    #     instance_type: "String",
    #     key_pair: "KeyPair",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/RestoreServer AWS API Documentation
    #
    # @overload restore_server(params = {})
    # @param [Hash] params ({})
    def restore_server(params = {}, options = {})
      req = build_request(:restore_server, params)
      req.send_request(options)
    end

    # Manually starts server maintenance. This command can be useful if an
    # earlier maintenance attempt failed, and the underlying cause of
    # maintenance failure has been resolved. The server is in an
    # `UNDER_MAINTENANCE` state while maintenance is in progress.
    #
    # Maintenance can only be started on servers in `HEALTHY` and
    # `UNHEALTHY` states. Otherwise, an `InvalidStateException` is thrown. A
    # `ResourceNotFoundException` is thrown when the server does not exist.
    # A `ValidationException` is raised when parameters of the request are
    # not valid.
    #
    # @option params [required, String] :server_name
    #   The name of the server on which to run maintenance.
    #
    # @option params [Array<Types::EngineAttribute>] :engine_attributes
    #   Engine attributes that are specific to the server on which you want to
    #   run maintenance.
    #
    # @return [Types::StartMaintenanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMaintenanceResponse#server #server} => Types::Server
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_maintenance({
    #     server_name: "ServerName", # required
    #     engine_attributes: [
    #       {
    #         name: "EngineAttributeName",
    #         value: "EngineAttributeValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.server.associate_public_ip_address #=> Boolean
    #   resp.server.backup_retention_count #=> Integer
    #   resp.server.server_name #=> String
    #   resp.server.created_at #=> Time
    #   resp.server.cloud_formation_stack_arn #=> String
    #   resp.server.disable_automated_backup #=> Boolean
    #   resp.server.endpoint #=> String
    #   resp.server.engine #=> String
    #   resp.server.engine_model #=> String
    #   resp.server.engine_attributes #=> Array
    #   resp.server.engine_attributes[0].name #=> String
    #   resp.server.engine_attributes[0].value #=> String
    #   resp.server.engine_version #=> String
    #   resp.server.instance_profile_arn #=> String
    #   resp.server.instance_type #=> String
    #   resp.server.key_pair #=> String
    #   resp.server.maintenance_status #=> String, one of "SUCCESS", "FAILED"
    #   resp.server.preferred_maintenance_window #=> String
    #   resp.server.preferred_backup_window #=> String
    #   resp.server.security_group_ids #=> Array
    #   resp.server.security_group_ids[0] #=> String
    #   resp.server.service_role_arn #=> String
    #   resp.server.status #=> String, one of "BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"
    #   resp.server.status_reason #=> String
    #   resp.server.subnet_ids #=> Array
    #   resp.server.subnet_ids[0] #=> String
    #   resp.server.server_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/StartMaintenance AWS API Documentation
    #
    # @overload start_maintenance(params = {})
    # @param [Hash] params ({})
    def start_maintenance(params = {}, options = {})
      req = build_request(:start_maintenance, params)
      req.send_request(options)
    end

    # Updates settings for a server.
    #
    # This operation is synchronous.
    #
    # @option params [Boolean] :disable_automated_backup
    #   Setting DisableAutomatedBackup to `true` disables automated or
    #   scheduled backups. Automated backups are enabled by default.
    #
    # @option params [Integer] :backup_retention_count
    #   Sets the number of automated backups that you want to keep.
    #
    # @option params [required, String] :server_name
    #   The name of the server to update.
    #
    # @option params [String] :preferred_maintenance_window
    #   `DDD:HH:MM` (weekly start time) or `HH:MM` (daily start time).
    #
    #   Time windows always use coordinated universal time (UTC). Valid
    #   strings for day of week (`DDD`) are: `Mon`, `Tue`, `Wed`, `Thr`,
    #   `Fri`, `Sat`, or `Sun`.
    #
    # @option params [String] :preferred_backup_window
    #   `DDD:HH:MM` (weekly start time) or `HH:MM` (daily start time).
    #
    #   Time windows always use coordinated universal time (UTC). Valid
    #   strings for day of week (`DDD`) are: `Mon`, `Tue`, `Wed`, `Thr`,
    #   `Fri`, `Sat`, or `Sun`.
    #
    # @return [Types::UpdateServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServerResponse#server #server} => Types::Server
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_server({
    #     disable_automated_backup: false,
    #     backup_retention_count: 1,
    #     server_name: "ServerName", # required
    #     preferred_maintenance_window: "TimeWindowDefinition",
    #     preferred_backup_window: "TimeWindowDefinition",
    #   })
    #
    # @example Response structure
    #
    #   resp.server.associate_public_ip_address #=> Boolean
    #   resp.server.backup_retention_count #=> Integer
    #   resp.server.server_name #=> String
    #   resp.server.created_at #=> Time
    #   resp.server.cloud_formation_stack_arn #=> String
    #   resp.server.disable_automated_backup #=> Boolean
    #   resp.server.endpoint #=> String
    #   resp.server.engine #=> String
    #   resp.server.engine_model #=> String
    #   resp.server.engine_attributes #=> Array
    #   resp.server.engine_attributes[0].name #=> String
    #   resp.server.engine_attributes[0].value #=> String
    #   resp.server.engine_version #=> String
    #   resp.server.instance_profile_arn #=> String
    #   resp.server.instance_type #=> String
    #   resp.server.key_pair #=> String
    #   resp.server.maintenance_status #=> String, one of "SUCCESS", "FAILED"
    #   resp.server.preferred_maintenance_window #=> String
    #   resp.server.preferred_backup_window #=> String
    #   resp.server.security_group_ids #=> Array
    #   resp.server.security_group_ids[0] #=> String
    #   resp.server.service_role_arn #=> String
    #   resp.server.status #=> String, one of "BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"
    #   resp.server.status_reason #=> String
    #   resp.server.subnet_ids #=> Array
    #   resp.server.subnet_ids[0] #=> String
    #   resp.server.server_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/UpdateServer AWS API Documentation
    #
    # @overload update_server(params = {})
    # @param [Hash] params ({})
    def update_server(params = {}, options = {})
      req = build_request(:update_server, params)
      req.send_request(options)
    end

    # Updates engine-specific attributes on a specified server. The server
    # enters the `MODIFYING` state when this operation is in progress. Only
    # one update can occur at a time. You can use this command to reset a
    # Chef server's private key (`CHEF_PIVOTAL_KEY`), a Chef server's
    # admin password (`CHEF_DELIVERY_ADMIN_PASSWORD`), or a Puppet server's
    # admin password (`PUPPET_ADMIN_PASSWORD`).
    #
    # This operation is asynchronous.
    #
    # This operation can only be called for servers in `HEALTHY` or
    # `UNHEALTHY` states. Otherwise, an `InvalidStateException` is raised. A
    # `ResourceNotFoundException` is thrown when the server does not exist.
    # A `ValidationException` is raised when parameters of the request are
    # not valid.
    #
    # @option params [required, String] :server_name
    #   The name of the server to update.
    #
    # @option params [required, String] :attribute_name
    #   The name of the engine attribute to update.
    #
    # @option params [String] :attribute_value
    #   The value to set for the attribute.
    #
    # @return [Types::UpdateServerEngineAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServerEngineAttributesResponse#server #server} => Types::Server
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_server_engine_attributes({
    #     server_name: "ServerName", # required
    #     attribute_name: "AttributeName", # required
    #     attribute_value: "AttributeValue",
    #   })
    #
    # @example Response structure
    #
    #   resp.server.associate_public_ip_address #=> Boolean
    #   resp.server.backup_retention_count #=> Integer
    #   resp.server.server_name #=> String
    #   resp.server.created_at #=> Time
    #   resp.server.cloud_formation_stack_arn #=> String
    #   resp.server.disable_automated_backup #=> Boolean
    #   resp.server.endpoint #=> String
    #   resp.server.engine #=> String
    #   resp.server.engine_model #=> String
    #   resp.server.engine_attributes #=> Array
    #   resp.server.engine_attributes[0].name #=> String
    #   resp.server.engine_attributes[0].value #=> String
    #   resp.server.engine_version #=> String
    #   resp.server.instance_profile_arn #=> String
    #   resp.server.instance_type #=> String
    #   resp.server.key_pair #=> String
    #   resp.server.maintenance_status #=> String, one of "SUCCESS", "FAILED"
    #   resp.server.preferred_maintenance_window #=> String
    #   resp.server.preferred_backup_window #=> String
    #   resp.server.security_group_ids #=> Array
    #   resp.server.security_group_ids[0] #=> String
    #   resp.server.service_role_arn #=> String
    #   resp.server.status #=> String, one of "BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"
    #   resp.server.status_reason #=> String
    #   resp.server.subnet_ids #=> Array
    #   resp.server.subnet_ids[0] #=> String
    #   resp.server.server_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/UpdateServerEngineAttributes AWS API Documentation
    #
    # @overload update_server_engine_attributes(params = {})
    # @param [Hash] params ({})
    def update_server_engine_attributes(params = {}, options = {})
      req = build_request(:update_server_engine_attributes, params)
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
      context[:gem_name] = 'aws-sdk-opsworkscm'
      context[:gem_version] = '1.6.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.waiter_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name     | params                              | :delay   | :max_attempts |
    # | --------------- | ----------------------------------- | -------- | ------------- |
    # | node_associated | {#describe_node_association_status} | 15       | 15            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        node_associated: Waiters::NodeAssociated
      }
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
