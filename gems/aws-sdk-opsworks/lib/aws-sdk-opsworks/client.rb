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

Aws::Plugins::GlobalConfiguration.add_identifier(:opsworks)

module Aws::OpsWorks
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :opsworks

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

    # Assign a registered instance to a layer.
    #
    # * You can assign registered on-premises instances to any layer type.
    #
    # * You can assign registered Amazon EC2 instances only to custom
    #   layers.
    #
    # * You cannot use this action with instances that were created with AWS
    #   OpsWorks Stacks.
    #
    # **Required Permissions**\: To use this action, an AWS Identity and
    # Access Management (IAM) user must have a Manage permissions level for
    # the stack or an attached policy that explicitly grants permissions.
    # For more information on user permissions, see [Managing User
    # Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :instance_id
    #   The instance ID.
    #
    # @option params [required, Array<String>] :layer_ids
    #   The layer ID, which must correspond to a custom layer. You cannot
    #   assign a registered instance to a built-in layer.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.assign_instance({
    #     instance_id: "String", # required
    #     layer_ids: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/AssignInstance AWS API Documentation
    #
    # @overload assign_instance(params = {})
    # @param [Hash] params ({})
    def assign_instance(params = {}, options = {})
      req = build_request(:assign_instance, params)
      req.send_request(options)
    end

    # Assigns one of the stack's registered Amazon EBS volumes to a
    # specified instance. The volume must first be registered with the stack
    # by calling RegisterVolume. After you register the volume, you must
    # call UpdateVolume to specify a mount point before calling
    # `AssignVolume`. For more information, see [Resource Management][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :volume_id
    #   The volume ID.
    #
    # @option params [String] :instance_id
    #   The instance ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.assign_volume({
    #     volume_id: "String", # required
    #     instance_id: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/AssignVolume AWS API Documentation
    #
    # @overload assign_volume(params = {})
    # @param [Hash] params ({})
    def assign_volume(params = {}, options = {})
      req = build_request(:assign_volume, params)
      req.send_request(options)
    end

    # Associates one of the stack's registered Elastic IP addresses with a
    # specified instance. The address must first be registered with the
    # stack by calling RegisterElasticIp. For more information, see
    # [Resource Management][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :elastic_ip
    #   The Elastic IP address.
    #
    # @option params [String] :instance_id
    #   The instance ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_elastic_ip({
    #     elastic_ip: "String", # required
    #     instance_id: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/AssociateElasticIp AWS API Documentation
    #
    # @overload associate_elastic_ip(params = {})
    # @param [Hash] params ({})
    def associate_elastic_ip(params = {}, options = {})
      req = build_request(:associate_elastic_ip, params)
      req.send_request(options)
    end

    # Attaches an Elastic Load Balancing load balancer to a specified layer.
    # AWS OpsWorks Stacks does not support Application Load Balancer. You
    # can only use Classic Load Balancer with AWS OpsWorks Stacks. For more
    # information, see [Elastic Load Balancing][1].
    #
    # <note markdown="1"> You must create the Elastic Load Balancing instance separately, by
    # using the Elastic Load Balancing console, API, or CLI. For more
    # information, see [ Elastic Load Balancing Developer Guide][2].
    #
    #  </note>
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][3].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/layers-elb.html
    # [2]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html
    # [3]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :elastic_load_balancer_name
    #   The Elastic Load Balancing instance's name.
    #
    # @option params [required, String] :layer_id
    #   The ID of the layer to which the Elastic Load Balancing instance is to
    #   be attached.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_elastic_load_balancer({
    #     elastic_load_balancer_name: "String", # required
    #     layer_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/AttachElasticLoadBalancer AWS API Documentation
    #
    # @overload attach_elastic_load_balancer(params = {})
    # @param [Hash] params ({})
    def attach_elastic_load_balancer(params = {}, options = {})
      req = build_request(:attach_elastic_load_balancer, params)
      req.send_request(options)
    end

    # Creates a clone of a specified stack. For more information, see [Clone
    # a Stack][1]. By default, all parameters are set to the values used by
    # the parent stack.
    #
    # **Required Permissions**\: To use this action, an IAM user must have
    # an attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :source_stack_id
    #   The source stack ID.
    #
    # @option params [String] :name
    #   The cloned stack name.
    #
    # @option params [String] :region
    #   The cloned stack AWS region, such as "ap-northeast-2". For more
    #   information about AWS regions, see [Regions and Endpoints][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html
    #
    # @option params [String] :vpc_id
    #   The ID of the VPC that the cloned stack is to be launched into. It
    #   must be in the specified region. All instances are launched into this
    #   VPC, and you cannot change the ID later.
    #
    #   * If your account supports EC2 Classic, the default value is no VPC.
    #
    #   * If your account does not support EC2 Classic, the default value is
    #     the default VPC for the specified region.
    #
    #   If the VPC ID corresponds to a default VPC and you have specified
    #   either the `DefaultAvailabilityZone` or the `DefaultSubnetId`
    #   parameter only, AWS OpsWorks Stacks infers the value of the other
    #   parameter. If you specify neither parameter, AWS OpsWorks Stacks sets
    #   these parameters to the first valid Availability Zone for the
    #   specified region and the corresponding default VPC subnet ID,
    #   respectively.
    #
    #   If you specify a nondefault VPC ID, note the following:
    #
    #   * It must belong to a VPC in your account that is in the specified
    #     region.
    #
    #   * You must specify a value for `DefaultSubnetId`.
    #
    #   For more information about how to use AWS OpsWorks Stacks with a VPC,
    #   see [Running a Stack in a VPC][1]. For more information about default
    #   VPC and EC2 Classic, see [Supported Platforms][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html
    #   [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html
    #
    # @option params [Hash<String,String>] :attributes
    #   A list of stack attributes and values as key/value pairs to be added
    #   to the cloned stack.
    #
    # @option params [required, String] :service_role_arn
    #   The stack AWS Identity and Access Management (IAM) role, which allows
    #   AWS OpsWorks Stacks to work with AWS resources on your behalf. You
    #   must set this parameter to the Amazon Resource Name (ARN) for an
    #   existing IAM role. If you create a stack by using the AWS OpsWorks
    #   Stacks console, it creates the role for you. You can obtain an
    #   existing stack's IAM ARN programmatically by calling
    #   DescribePermissions. For more information about IAM ARNs, see [Using
    #   Identifiers][1].
    #
    #   <note markdown="1"> You must set this parameter to a valid service role ARN or the action
    #   will fail; there is no default value. You can specify the source
    #   stack's service role ARN, if you prefer, but you must do so
    #   explicitly.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #
    # @option params [String] :default_instance_profile_arn
    #   The Amazon Resource Name (ARN) of an IAM profile that is the default
    #   profile for all of the stack's EC2 instances. For more information
    #   about IAM ARNs, see [Using Identifiers][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #
    # @option params [String] :default_os
    #   The stack's operating system, which must be set to one of the
    #   following.
    #
    #   * A supported Linux operating system: An Amazon Linux version, such as
    #     `Amazon Linux 2017.09`, `Amazon Linux 2017.03`, `Amazon Linux
    #     2016.09`, `Amazon Linux 2016.03`, `Amazon Linux 2015.09`, or `Amazon
    #     Linux 2015.03`.
    #
    #   * A supported Ubuntu operating system, such as `Ubuntu 16.04 LTS`,
    #     `Ubuntu 14.04 LTS`, or `Ubuntu 12.04 LTS`.
    #
    #   * `CentOS Linux 7`
    #
    #   * `Red Hat Enterprise Linux 7`
    #
    #   * `Microsoft Windows Server 2012 R2 Base`, `Microsoft Windows Server
    #     2012 R2 with SQL Server Express`, `Microsoft Windows Server 2012 R2
    #     with SQL Server Standard`, or `Microsoft Windows Server 2012 R2 with
    #     SQL Server Web`.
    #
    #   * A custom AMI: `Custom`. You specify the custom AMI you want to use
    #     when you create instances. For more information about how to use
    #     custom AMIs with OpsWorks, see [Using Custom AMIs][1].
    #
    #   The default option is the parent stack's operating system. For more
    #   information about supported operating systems, see [AWS OpsWorks
    #   Stacks Operating Systems][2].
    #
    #   <note markdown="1"> You can specify a different Linux operating system for the cloned
    #   stack, but you cannot change from Linux to Windows or Windows to
    #   Linux.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html
    #   [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html
    #
    # @option params [String] :hostname_theme
    #   The stack's host name theme, with spaces are replaced by underscores.
    #   The theme is used to generate host names for the stack's instances.
    #   By default, `HostnameTheme` is set to `Layer_Dependent`, which creates
    #   host names by appending integers to the layer's short name. The other
    #   themes are:
    #
    #   * `Baked_Goods`
    #
    #   * `Clouds`
    #
    #   * `Europe_Cities`
    #
    #   * `Fruits`
    #
    #   * `Greek_Deities`
    #
    #   * `Legendary_creatures_from_Japan`
    #
    #   * `Planets_and_Moons`
    #
    #   * `Roman_Deities`
    #
    #   * `Scottish_Islands`
    #
    #   * `US_Cities`
    #
    #   * `Wild_Cats`
    #
    #   To obtain a generated host name, call `GetHostNameSuggestion`, which
    #   returns a host name based on the current theme.
    #
    # @option params [String] :default_availability_zone
    #   The cloned stack's default Availability Zone, which must be in the
    #   specified region. For more information, see [Regions and
    #   Endpoints][1]. If you also specify a value for `DefaultSubnetId`, the
    #   subnet must be in the same zone. For more information, see the `VpcId`
    #   parameter description.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html
    #
    # @option params [String] :default_subnet_id
    #   The stack's default VPC subnet ID. This parameter is required if you
    #   specify a value for the `VpcId` parameter. All instances are launched
    #   into this subnet unless you specify otherwise when you create the
    #   instance. If you also specify a value for `DefaultAvailabilityZone`,
    #   the subnet must be in that zone. For information on default values and
    #   when this parameter is required, see the `VpcId` parameter
    #   description.
    #
    # @option params [String] :custom_json
    #   A string that contains user-defined, custom JSON. It is used to
    #   override the corresponding default stack configuration JSON values.
    #   The string should be in the following format:
    #
    #   `"\{"key1": "value1", "key2": "value2",...\}"`
    #
    #   For more information about custom JSON, see [Use Custom JSON to Modify
    #   the Stack Configuration Attributes][1]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html
    #
    # @option params [Types::StackConfigurationManager] :configuration_manager
    #   The configuration manager. When you clone a stack we recommend that
    #   you use the configuration manager to specify the Chef version: 12,
    #   11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The
    #   default value for Linux stacks is currently 12.
    #
    # @option params [Types::ChefConfiguration] :chef_configuration
    #   A `ChefConfiguration` object that specifies whether to enable
    #   Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more
    #   information, see [Create a New Stack][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html
    #
    # @option params [Boolean] :use_custom_cookbooks
    #   Whether to use custom cookbooks.
    #
    # @option params [Boolean] :use_opsworks_security_groups
    #   Whether to associate the AWS OpsWorks Stacks built-in security groups
    #   with the stack's layers.
    #
    #   AWS OpsWorks Stacks provides a standard set of built-in security
    #   groups, one for each layer, which are associated with layers by
    #   default. With `UseOpsworksSecurityGroups` you can instead provide your
    #   own custom security groups. `UseOpsworksSecurityGroups` has the
    #   following settings:
    #
    #   * True - AWS OpsWorks Stacks automatically associates the appropriate
    #     built-in security group with each layer (default setting). You can
    #     associate additional security groups with a layer after you create
    #     it but you cannot delete the built-in security group.
    #
    #   * False - AWS OpsWorks Stacks does not associate built-in security
    #     groups with layers. You must create appropriate Amazon Elastic
    #     Compute Cloud (Amazon EC2) security groups and associate a security
    #     group with each layer that you create. However, you can still
    #     manually associate a built-in security group with a layer on
    #     creation; custom security groups are required only for those layers
    #     that need custom settings.
    #
    #   For more information, see [Create a New Stack][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html
    #
    # @option params [Types::Source] :custom_cookbooks_source
    #   Contains the information required to retrieve an app or cookbook from
    #   a repository. For more information, see [Creating Apps][1] or [Custom
    #   Recipes and Cookbooks][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html
    #   [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html
    #
    # @option params [String] :default_ssh_key_name
    #   A default Amazon EC2 key pair name. The default value is none. If you
    #   specify a key pair name, AWS OpsWorks installs the public key on the
    #   instance and you can use the private key with an SSH client to log in
    #   to the instance. For more information, see [ Using SSH to Communicate
    #   with an Instance][1] and [ Managing SSH Access][2]. You can override
    #   this setting by specifying a different key pair, or no key pair, when
    #   you [ create an instance][3].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html
    #   [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html
    #   [3]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html
    #
    # @option params [Boolean] :clone_permissions
    #   Whether to clone the source stack's permissions.
    #
    # @option params [Array<String>] :clone_app_ids
    #   A list of source stack app IDs to be included in the cloned stack.
    #
    # @option params [String] :default_root_device_type
    #   The default root device type. This value is used by default for all
    #   instances in the cloned stack, but you can override it when you create
    #   an instance. For more information, see [Storage for the Root
    #   Device][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device
    #
    # @option params [String] :agent_version
    #   The default AWS OpsWorks Stacks agent version. You have the following
    #   options:
    #
    #   * Auto-update - Set this parameter to `LATEST`. AWS OpsWorks Stacks
    #     automatically installs new agent versions on the stack's instances
    #     as soon as they are available.
    #
    #   * Fixed version - Set this parameter to your preferred agent version.
    #     To update the agent version, you must edit the stack configuration
    #     and specify a new version. AWS OpsWorks Stacks then automatically
    #     installs that version on the stack's instances.
    #
    #   The default setting is `LATEST`. To specify an agent version, you must
    #   use the complete version number, not the abbreviated number shown on
    #   the console. For a list of available agent version numbers, call
    #   DescribeAgentVersions. AgentVersion cannot be set to Chef 12.2.
    #
    #   <note markdown="1"> You can also specify an agent version when you create or update an
    #   instance, which overrides the stack's default setting.
    #
    #    </note>
    #
    # @return [Types::CloneStackResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CloneStackResult#stack_id #stack_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.clone_stack({
    #     source_stack_id: "String", # required
    #     name: "String",
    #     region: "String",
    #     vpc_id: "String",
    #     attributes: {
    #       "Color" => "String",
    #     },
    #     service_role_arn: "String", # required
    #     default_instance_profile_arn: "String",
    #     default_os: "String",
    #     hostname_theme: "String",
    #     default_availability_zone: "String",
    #     default_subnet_id: "String",
    #     custom_json: "String",
    #     configuration_manager: {
    #       name: "String",
    #       version: "String",
    #     },
    #     chef_configuration: {
    #       manage_berkshelf: false,
    #       berkshelf_version: "String",
    #     },
    #     use_custom_cookbooks: false,
    #     use_opsworks_security_groups: false,
    #     custom_cookbooks_source: {
    #       type: "git", # accepts git, svn, archive, s3
    #       url: "String",
    #       username: "String",
    #       password: "String",
    #       ssh_key: "String",
    #       revision: "String",
    #     },
    #     default_ssh_key_name: "String",
    #     clone_permissions: false,
    #     clone_app_ids: ["String"],
    #     default_root_device_type: "ebs", # accepts ebs, instance-store
    #     agent_version: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CloneStack AWS API Documentation
    #
    # @overload clone_stack(params = {})
    # @param [Hash] params ({})
    def clone_stack(params = {}, options = {})
      req = build_request(:clone_stack, params)
      req.send_request(options)
    end

    # Creates an app for a specified stack. For more information, see
    # [Creating Apps][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :stack_id
    #   The stack ID.
    #
    # @option params [String] :shortname
    #   The app's short name.
    #
    # @option params [required, String] :name
    #   The app name.
    #
    # @option params [String] :description
    #   A description of the app.
    #
    # @option params [Array<Types::DataSource>] :data_sources
    #   The app's data source.
    #
    # @option params [required, String] :type
    #   The app type. Each supported type is associated with a particular
    #   layer. For example, PHP applications are associated with a PHP layer.
    #   AWS OpsWorks Stacks deploys an application to those instances that are
    #   members of the corresponding layer. If your app isn't one of the
    #   standard types, or you prefer to implement your own Deploy recipes,
    #   specify `other`.
    #
    # @option params [Types::Source] :app_source
    #   A `Source` object that specifies the app repository.
    #
    # @option params [Array<String>] :domains
    #   The app virtual host settings, with multiple domains separated by
    #   commas. For example: `'www.example.com, example.com'`
    #
    # @option params [Boolean] :enable_ssl
    #   Whether to enable SSL for the app.
    #
    # @option params [Types::SslConfiguration] :ssl_configuration
    #   An `SslConfiguration` object with the SSL configuration.
    #
    # @option params [Hash<String,String>] :attributes
    #   One or more user-defined key/value pairs to be added to the stack
    #   attributes.
    #
    # @option params [Array<Types::EnvironmentVariable>] :environment
    #   An array of `EnvironmentVariable` objects that specify environment
    #   variables to be associated with the app. After you deploy the app,
    #   these variables are defined on the associated app server instance. For
    #   more information, see [ Environment Variables][1].
    #
    #   There is no specific limit on the number of environment variables.
    #   However, the size of the associated data structure - which includes
    #   the variables' names, values, and protected flag values - cannot
    #   exceed 10 KB (10240 Bytes). This limit should accommodate most if not
    #   all use cases. Exceeding it will cause an exception with the message,
    #   "Environment: is too large (maximum is 10KB)."
    #
    #   <note markdown="1"> This parameter is supported only by Chef 11.10 stacks. If you have
    #   specified one or more environment variables, you cannot modify the
    #   stack's Chef version.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment
    #
    # @return [Types::CreateAppResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppResult#app_id #app_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app({
    #     stack_id: "String", # required
    #     shortname: "String",
    #     name: "String", # required
    #     description: "String",
    #     data_sources: [
    #       {
    #         type: "String",
    #         arn: "String",
    #         database_name: "String",
    #       },
    #     ],
    #     type: "aws-flow-ruby", # required, accepts aws-flow-ruby, java, rails, php, nodejs, static, other
    #     app_source: {
    #       type: "git", # accepts git, svn, archive, s3
    #       url: "String",
    #       username: "String",
    #       password: "String",
    #       ssh_key: "String",
    #       revision: "String",
    #     },
    #     domains: ["String"],
    #     enable_ssl: false,
    #     ssl_configuration: {
    #       certificate: "String", # required
    #       private_key: "String", # required
    #       chain: "String",
    #     },
    #     attributes: {
    #       "DocumentRoot" => "String",
    #     },
    #     environment: [
    #       {
    #         key: "String", # required
    #         value: "String", # required
    #         secure: false,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateApp AWS API Documentation
    #
    # @overload create_app(params = {})
    # @param [Hash] params ({})
    def create_app(params = {}, options = {})
      req = build_request(:create_app, params)
      req.send_request(options)
    end

    # Runs deployment or stack commands. For more information, see
    # [Deploying Apps][1] and [Run Stack Commands][2].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Deploy or Manage permissions level for the stack, or an attached
    # policy that explicitly grants permissions. For more information on
    # user permissions, see [Managing User Permissions][3].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html
    # [3]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :stack_id
    #   The stack ID.
    #
    # @option params [String] :app_id
    #   The app ID. This parameter is required for app deployments, but not
    #   for other deployment commands.
    #
    # @option params [Array<String>] :instance_ids
    #   The instance IDs for the deployment targets.
    #
    # @option params [Array<String>] :layer_ids
    #   The layer IDs for the deployment targets.
    #
    # @option params [required, Types::DeploymentCommand] :command
    #   A `DeploymentCommand` object that specifies the deployment command and
    #   any associated arguments.
    #
    # @option params [String] :comment
    #   A user-defined comment.
    #
    # @option params [String] :custom_json
    #   A string that contains user-defined, custom JSON. It is used to
    #   override the corresponding default stack configuration JSON values.
    #   The string should be in the following format:
    #
    #   `"\{"key1": "value1", "key2": "value2",...\}"`
    #
    #   For more information about custom JSON, see [Use Custom JSON to Modify
    #   the Stack Configuration Attributes][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html
    #
    # @return [Types::CreateDeploymentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeploymentResult#deployment_id #deployment_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment({
    #     stack_id: "String", # required
    #     app_id: "String",
    #     instance_ids: ["String"],
    #     layer_ids: ["String"],
    #     command: { # required
    #       name: "install_dependencies", # required, accepts install_dependencies, update_dependencies, update_custom_cookbooks, execute_recipes, configure, setup, deploy, rollback, start, stop, restart, undeploy
    #       args: {
    #         "String" => ["String"],
    #       },
    #     },
    #     comment: "String",
    #     custom_json: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateDeployment AWS API Documentation
    #
    # @overload create_deployment(params = {})
    # @param [Hash] params ({})
    def create_deployment(params = {}, options = {})
      req = build_request(:create_deployment, params)
      req.send_request(options)
    end

    # Creates an instance in a specified stack. For more information, see
    # [Adding an Instance to a Layer][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :stack_id
    #   The stack ID.
    #
    # @option params [required, Array<String>] :layer_ids
    #   An array that contains the instance's layer IDs.
    #
    # @option params [required, String] :instance_type
    #   The instance type, such as `t2.micro`. For a list of supported
    #   instance types, open the stack in the console, choose **Instances**,
    #   and choose **+ Instance**. The **Size** list contains the currently
    #   supported types. For more information, see [Instance Families and
    #   Types][1]. The parameter values that you use to specify the various
    #   types are in the **API Name** column of the **Available Instance
    #   Types** table.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #
    # @option params [String] :auto_scaling_type
    #   For load-based or time-based instances, the type. Windows stacks can
    #   use only time-based instances.
    #
    # @option params [String] :hostname
    #   The instance host name.
    #
    # @option params [String] :os
    #   The instance's operating system, which must be set to one of the
    #   following.
    #
    #   * A supported Linux operating system: An Amazon Linux version, such as
    #     `Amazon Linux 2017.09`, `Amazon Linux 2017.03`, `Amazon Linux
    #     2016.09`, `Amazon Linux 2016.03`, `Amazon Linux 2015.09`, or `Amazon
    #     Linux 2015.03`.
    #
    #   * A supported Ubuntu operating system, such as `Ubuntu 16.04 LTS`,
    #     `Ubuntu 14.04 LTS`, or `Ubuntu 12.04 LTS`.
    #
    #   * `CentOS Linux 7`
    #
    #   * `Red Hat Enterprise Linux 7`
    #
    #   * A supported Windows operating system, such as `Microsoft Windows
    #     Server 2012 R2 Base`, `Microsoft Windows Server 2012 R2 with SQL
    #     Server Express`, `Microsoft Windows Server 2012 R2 with SQL Server
    #     Standard`, or `Microsoft Windows Server 2012 R2 with SQL Server
    #     Web`.
    #
    #   * A custom AMI: `Custom`.
    #
    #   For more information about the supported operating systems, see [AWS
    #   OpsWorks Stacks Operating Systems][1].
    #
    #   The default option is the current Amazon Linux version. If you set
    #   this parameter to `Custom`, you must use the CreateInstance action's
    #   AmiId parameter to specify the custom AMI that you want to use. Block
    #   device mappings are not supported if the value is `Custom`. For more
    #   information about supported operating systems, see [Operating
    #   Systems][1]For more information about how to use custom AMIs with AWS
    #   OpsWorks Stacks, see [Using Custom AMIs][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html
    #   [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html
    #
    # @option params [String] :ami_id
    #   A custom AMI ID to be used to create the instance. The AMI should be
    #   based on one of the supported operating systems. For more information,
    #   see [Using Custom AMIs][1].
    #
    #   <note markdown="1"> If you specify a custom AMI, you must set `Os` to `Custom`.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html
    #
    # @option params [String] :ssh_key_name
    #   The instance's Amazon EC2 key-pair name.
    #
    # @option params [String] :availability_zone
    #   The instance Availability Zone. For more information, see [Regions and
    #   Endpoints][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html
    #
    # @option params [String] :virtualization_type
    #   The instance's virtualization type, `paravirtual` or `hvm`.
    #
    # @option params [String] :subnet_id
    #   The ID of the instance's subnet. If the stack is running in a VPC,
    #   you can use this parameter to override the stack's default subnet ID
    #   value and direct AWS OpsWorks Stacks to launch the instance in a
    #   different subnet.
    #
    # @option params [String] :architecture
    #   The instance architecture. The default option is `x86_64`. Instance
    #   types do not necessarily support both architectures. For a list of the
    #   architectures that are supported by the different instance types, see
    #   [Instance Families and Types][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #
    # @option params [String] :root_device_type
    #   The instance root device type. For more information, see [Storage for
    #   the Root Device][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device
    #
    # @option params [Array<Types::BlockDeviceMapping>] :block_device_mappings
    #   An array of `BlockDeviceMapping` objects that specify the instance's
    #   block devices. For more information, see [Block Device Mapping][1].
    #   Note that block device mappings are not supported for custom AMIs.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html
    #
    # @option params [Boolean] :install_updates_on_boot
    #   Whether to install operating system and package updates when the
    #   instance boots. The default value is `true`. To control when updates
    #   are installed, set this value to `false`. You must then update your
    #   instances manually by using CreateDeployment to run the
    #   `update_dependencies` stack command or by manually running `yum`
    #   (Amazon Linux) or `apt-get` (Ubuntu) on the instances.
    #
    #   <note markdown="1"> We strongly recommend using the default value of `true` to ensure that
    #   your instances have the latest security updates.
    #
    #    </note>
    #
    # @option params [Boolean] :ebs_optimized
    #   Whether to create an Amazon EBS-optimized instance.
    #
    # @option params [String] :agent_version
    #   The default AWS OpsWorks Stacks agent version. You have the following
    #   options:
    #
    #   * `INHERIT` - Use the stack's default agent version setting.
    #
    #   * *version\_number* - Use the specified agent version. This value
    #     overrides the stack's default setting. To update the agent version,
    #     edit the instance configuration and specify a new version. AWS
    #     OpsWorks Stacks then automatically installs that version on the
    #     instance.
    #
    #   The default setting is `INHERIT`. To specify an agent version, you
    #   must use the complete version number, not the abbreviated number shown
    #   on the console. For a list of available agent version numbers, call
    #   DescribeAgentVersions. AgentVersion cannot be set to Chef 12.2.
    #
    # @option params [String] :tenancy
    #   The instance's tenancy option. The default option is no tenancy, or
    #   if the instance is running in a VPC, inherit tenancy settings from the
    #   VPC. The following are valid values for this parameter: `dedicated`,
    #   `default`, or `host`. Because there are costs associated with changes
    #   in tenancy options, we recommend that you research tenancy options
    #   before choosing them for your instances. For more information about
    #   dedicated hosts, see [Dedicated Hosts Overview][1] and [Amazon EC2
    #   Dedicated Hosts][1]. For more information about dedicated instances,
    #   see [Dedicated Instances][2] and [Amazon EC2 Dedicated Instances][3].
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/dedicated-hosts/
    #   [2]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/dedicated-instance.html
    #   [3]: http://aws.amazon.com/ec2/purchasing-options/dedicated-instances/
    #
    # @return [Types::CreateInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInstanceResult#instance_id #instance_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instance({
    #     stack_id: "String", # required
    #     layer_ids: ["String"], # required
    #     instance_type: "String", # required
    #     auto_scaling_type: "load", # accepts load, timer
    #     hostname: "String",
    #     os: "String",
    #     ami_id: "String",
    #     ssh_key_name: "String",
    #     availability_zone: "String",
    #     virtualization_type: "String",
    #     subnet_id: "String",
    #     architecture: "x86_64", # accepts x86_64, i386
    #     root_device_type: "ebs", # accepts ebs, instance-store
    #     block_device_mappings: [
    #       {
    #         device_name: "String",
    #         no_device: "String",
    #         virtual_name: "String",
    #         ebs: {
    #           snapshot_id: "String",
    #           iops: 1,
    #           volume_size: 1,
    #           volume_type: "gp2", # accepts gp2, io1, standard
    #           delete_on_termination: false,
    #         },
    #       },
    #     ],
    #     install_updates_on_boot: false,
    #     ebs_optimized: false,
    #     agent_version: "String",
    #     tenancy: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateInstance AWS API Documentation
    #
    # @overload create_instance(params = {})
    # @param [Hash] params ({})
    def create_instance(params = {}, options = {})
      req = build_request(:create_instance, params)
      req.send_request(options)
    end

    # Creates a layer. For more information, see [How to Create a Layer][1].
    #
    # <note markdown="1"> You should use **CreateLayer** for noncustom layer types such as PHP
    # App Server only if the stack does not have an existing layer of that
    # type. A stack can have at most one instance of each noncustom layer;
    # if you attempt to create a second instance, **CreateLayer** fails. A
    # stack can have an arbitrary number of custom layers, so you can call
    # **CreateLayer** as many times as you like for that layer type.
    #
    #  </note>
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :stack_id
    #   The layer stack ID.
    #
    # @option params [required, String] :type
    #   The layer type. A stack cannot have more than one built-in layer of
    #   the same type. It can have any number of custom layers. Built-in
    #   layers are not available in Chef 12 stacks.
    #
    # @option params [required, String] :name
    #   The layer name, which is used by the console.
    #
    # @option params [required, String] :shortname
    #   For custom layers only, use this parameter to specify the layer's
    #   short name, which is used internally by AWS OpsWorks Stacks and by
    #   Chef recipes. The short name is also used as the name for the
    #   directory where your app files are installed. It can have a maximum of
    #   200 characters, which are limited to the alphanumeric characters,
    #   '-', '\_', and '.'.
    #
    #   The built-in layers' short names are defined by AWS OpsWorks Stacks.
    #   For more information, see the [Layer Reference][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/layers.html
    #
    # @option params [Hash<String,String>] :attributes
    #   One or more user-defined key-value pairs to be added to the stack
    #   attributes.
    #
    #   To create a cluster layer, set the `EcsClusterArn` attribute to the
    #   cluster's ARN.
    #
    # @option params [Types::CloudWatchLogsConfiguration] :cloud_watch_logs_configuration
    #   Specifies CloudWatch Logs configuration options for the layer. For
    #   more information, see CloudWatchLogsLogStream.
    #
    # @option params [String] :custom_instance_profile_arn
    #   The ARN of an IAM profile to be used for the layer's EC2 instances.
    #   For more information about IAM ARNs, see [Using Identifiers][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #
    # @option params [String] :custom_json
    #   A JSON-formatted string containing custom stack configuration and
    #   deployment attributes to be installed on the layer's instances. For
    #   more information, see [ Using Custom JSON][1]. This feature is
    #   supported as of version 1.7.42 of the AWS CLI.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html
    #
    # @option params [Array<String>] :custom_security_group_ids
    #   An array containing the layer custom security group IDs.
    #
    # @option params [Array<String>] :packages
    #   An array of `Package` objects that describes the layer packages.
    #
    # @option params [Array<Types::VolumeConfiguration>] :volume_configurations
    #   A `VolumeConfigurations` object that describes the layer's Amazon EBS
    #   volumes.
    #
    # @option params [Boolean] :enable_auto_healing
    #   Whether to disable auto healing for the layer.
    #
    # @option params [Boolean] :auto_assign_elastic_ips
    #   Whether to automatically assign an [Elastic IP address][1] to the
    #   layer's instances. For more information, see [How to Edit a
    #   Layer][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
    #   [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html
    #
    # @option params [Boolean] :auto_assign_public_ips
    #   For stacks that are running in a VPC, whether to automatically assign
    #   a public IP address to the layer's instances. For more information,
    #   see [How to Edit a Layer][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html
    #
    # @option params [Types::Recipes] :custom_recipes
    #   A `LayerCustomRecipes` object that specifies the layer custom recipes.
    #
    # @option params [Boolean] :install_updates_on_boot
    #   Whether to install operating system and package updates when the
    #   instance boots. The default value is `true`. To control when updates
    #   are installed, set this value to `false`. You must then update your
    #   instances manually by using CreateDeployment to run the
    #   `update_dependencies` stack command or by manually running `yum`
    #   (Amazon Linux) or `apt-get` (Ubuntu) on the instances.
    #
    #   <note markdown="1"> To ensure that your instances have the latest security updates, we
    #   strongly recommend using the default value of `true`.
    #
    #    </note>
    #
    # @option params [Boolean] :use_ebs_optimized_instances
    #   Whether to use Amazon EBS-optimized instances.
    #
    # @option params [Types::LifecycleEventConfiguration] :lifecycle_event_configuration
    #   A `LifeCycleEventConfiguration` object that you can use to configure
    #   the Shutdown event to specify an execution timeout and enable or
    #   disable Elastic Load Balancer connection draining.
    #
    # @return [Types::CreateLayerResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLayerResult#layer_id #layer_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_layer({
    #     stack_id: "String", # required
    #     type: "aws-flow-ruby", # required, accepts aws-flow-ruby, ecs-cluster, java-app, lb, web, php-app, rails-app, nodejs-app, memcached, db-master, monitoring-master, custom
    #     name: "String", # required
    #     shortname: "String", # required
    #     attributes: {
    #       "EcsClusterArn" => "String",
    #     },
    #     cloud_watch_logs_configuration: {
    #       enabled: false,
    #       log_streams: [
    #         {
    #           log_group_name: "String",
    #           datetime_format: "String",
    #           time_zone: "LOCAL", # accepts LOCAL, UTC
    #           file: "String",
    #           file_fingerprint_lines: "String",
    #           multi_line_start_pattern: "String",
    #           initial_position: "start_of_file", # accepts start_of_file, end_of_file
    #           encoding: "ascii", # accepts ascii, big5, big5hkscs, cp037, cp424, cp437, cp500, cp720, cp737, cp775, cp850, cp852, cp855, cp856, cp857, cp858, cp860, cp861, cp862, cp863, cp864, cp865, cp866, cp869, cp874, cp875, cp932, cp949, cp950, cp1006, cp1026, cp1140, cp1250, cp1251, cp1252, cp1253, cp1254, cp1255, cp1256, cp1257, cp1258, euc_jp, euc_jis_2004, euc_jisx0213, euc_kr, gb2312, gbk, gb18030, hz, iso2022_jp, iso2022_jp_1, iso2022_jp_2, iso2022_jp_2004, iso2022_jp_3, iso2022_jp_ext, iso2022_kr, latin_1, iso8859_2, iso8859_3, iso8859_4, iso8859_5, iso8859_6, iso8859_7, iso8859_8, iso8859_9, iso8859_10, iso8859_13, iso8859_14, iso8859_15, iso8859_16, johab, koi8_r, koi8_u, mac_cyrillic, mac_greek, mac_iceland, mac_latin2, mac_roman, mac_turkish, ptcp154, shift_jis, shift_jis_2004, shift_jisx0213, utf_32, utf_32_be, utf_32_le, utf_16, utf_16_be, utf_16_le, utf_7, utf_8, utf_8_sig
    #           buffer_duration: 1,
    #           batch_count: 1,
    #           batch_size: 1,
    #         },
    #       ],
    #     },
    #     custom_instance_profile_arn: "String",
    #     custom_json: "String",
    #     custom_security_group_ids: ["String"],
    #     packages: ["String"],
    #     volume_configurations: [
    #       {
    #         mount_point: "String", # required
    #         raid_level: 1,
    #         number_of_disks: 1, # required
    #         size: 1, # required
    #         volume_type: "String",
    #         iops: 1,
    #         encrypted: false,
    #       },
    #     ],
    #     enable_auto_healing: false,
    #     auto_assign_elastic_ips: false,
    #     auto_assign_public_ips: false,
    #     custom_recipes: {
    #       setup: ["String"],
    #       configure: ["String"],
    #       deploy: ["String"],
    #       undeploy: ["String"],
    #       shutdown: ["String"],
    #     },
    #     install_updates_on_boot: false,
    #     use_ebs_optimized_instances: false,
    #     lifecycle_event_configuration: {
    #       shutdown: {
    #         execution_timeout: 1,
    #         delay_until_elb_connections_drained: false,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.layer_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateLayer AWS API Documentation
    #
    # @overload create_layer(params = {})
    # @param [Hash] params ({})
    def create_layer(params = {}, options = {})
      req = build_request(:create_layer, params)
      req.send_request(options)
    end

    # Creates a new stack. For more information, see [Create a New
    # Stack][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have
    # an attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :name
    #   The stack name.
    #
    # @option params [required, String] :region
    #   The stack's AWS region, such as `ap-south-1`. For more information
    #   about Amazon regions, see [Regions and Endpoints][1].
    #
    #   <note markdown="1"> In the AWS CLI, this API maps to the `--stack-region` parameter. If
    #   the `--stack-region` parameter and the AWS CLI common parameter
    #   `--region` are set to the same value, the stack uses a *regional*
    #   endpoint. If the `--stack-region` parameter is not set, but the AWS
    #   CLI `--region` parameter is, this also results in a stack with a
    #   *regional* endpoint. However, if the `--region` parameter is set to
    #   `us-east-1`, and the `--stack-region` parameter is set to one of the
    #   following, then the stack uses a legacy or *classic* region:
    #   `us-west-1, us-west-2, sa-east-1, eu-central-1, eu-west-1,
    #   ap-northeast-1, ap-southeast-1, ap-southeast-2`. In this case, the
    #   actual API endpoint of the stack is in `us-east-1`. Only the preceding
    #   regions are supported as classic regions in the `us-east-1` API
    #   endpoint. Because it is a best practice to choose the regional
    #   endpoint that is closest to where you manage AWS, we recommend that
    #   you use regional endpoints for new stacks. The AWS CLI common
    #   `--region` parameter always specifies a regional API endpoint; it
    #   cannot be used to specify a classic AWS OpsWorks Stacks region.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html
    #
    # @option params [String] :vpc_id
    #   The ID of the VPC that the stack is to be launched into. The VPC must
    #   be in the stack's region. All instances are launched into this VPC.
    #   You cannot change the ID later.
    #
    #   * If your account supports EC2-Classic, the default value is `no VPC`.
    #
    #   * If your account does not support EC2-Classic, the default value is
    #     the default VPC for the specified region.
    #
    #   If the VPC ID corresponds to a default VPC and you have specified
    #   either the `DefaultAvailabilityZone` or the `DefaultSubnetId`
    #   parameter only, AWS OpsWorks Stacks infers the value of the other
    #   parameter. If you specify neither parameter, AWS OpsWorks Stacks sets
    #   these parameters to the first valid Availability Zone for the
    #   specified region and the corresponding default VPC subnet ID,
    #   respectively.
    #
    #   If you specify a nondefault VPC ID, note the following:
    #
    #   * It must belong to a VPC in your account that is in the specified
    #     region.
    #
    #   * You must specify a value for `DefaultSubnetId`.
    #
    #   For more information about how to use AWS OpsWorks Stacks with a VPC,
    #   see [Running a Stack in a VPC][1]. For more information about default
    #   VPC and EC2-Classic, see [Supported Platforms][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html
    #   [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html
    #
    # @option params [Hash<String,String>] :attributes
    #   One or more user-defined key-value pairs to be added to the stack
    #   attributes.
    #
    # @option params [required, String] :service_role_arn
    #   The stack's AWS Identity and Access Management (IAM) role, which
    #   allows AWS OpsWorks Stacks to work with AWS resources on your behalf.
    #   You must set this parameter to the Amazon Resource Name (ARN) for an
    #   existing IAM role. For more information about IAM ARNs, see [Using
    #   Identifiers][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #
    # @option params [required, String] :default_instance_profile_arn
    #   The Amazon Resource Name (ARN) of an IAM profile that is the default
    #   profile for all of the stack's EC2 instances. For more information
    #   about IAM ARNs, see [Using Identifiers][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #
    # @option params [String] :default_os
    #   The stack's default operating system, which is installed on every
    #   instance unless you specify a different operating system when you
    #   create the instance. You can specify one of the following.
    #
    #   * A supported Linux operating system: An Amazon Linux version, such as
    #     `Amazon Linux 2017.09`, `Amazon Linux 2017.03`, `Amazon Linux
    #     2016.09`, `Amazon Linux 2016.03`, `Amazon Linux 2015.09`, or `Amazon
    #     Linux 2015.03`.
    #
    #   * A supported Ubuntu operating system, such as `Ubuntu 16.04 LTS`,
    #     `Ubuntu 14.04 LTS`, or `Ubuntu 12.04 LTS`.
    #
    #   * `CentOS Linux 7`
    #
    #   * `Red Hat Enterprise Linux 7`
    #
    #   * A supported Windows operating system, such as `Microsoft Windows
    #     Server 2012 R2 Base`, `Microsoft Windows Server 2012 R2 with SQL
    #     Server Express`, `Microsoft Windows Server 2012 R2 with SQL Server
    #     Standard`, or `Microsoft Windows Server 2012 R2 with SQL Server
    #     Web`.
    #
    #   * A custom AMI: `Custom`. You specify the custom AMI you want to use
    #     when you create instances. For more information, see [ Using Custom
    #     AMIs][1].
    #
    #   The default option is the current Amazon Linux version. For more
    #   information about supported operating systems, see [AWS OpsWorks
    #   Stacks Operating Systems][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html
    #   [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html
    #
    # @option params [String] :hostname_theme
    #   The stack's host name theme, with spaces replaced by underscores. The
    #   theme is used to generate host names for the stack's instances. By
    #   default, `HostnameTheme` is set to `Layer_Dependent`, which creates
    #   host names by appending integers to the layer's short name. The other
    #   themes are:
    #
    #   * `Baked_Goods`
    #
    #   * `Clouds`
    #
    #   * `Europe_Cities`
    #
    #   * `Fruits`
    #
    #   * `Greek_Deities`
    #
    #   * `Legendary_creatures_from_Japan`
    #
    #   * `Planets_and_Moons`
    #
    #   * `Roman_Deities`
    #
    #   * `Scottish_Islands`
    #
    #   * `US_Cities`
    #
    #   * `Wild_Cats`
    #
    #   To obtain a generated host name, call `GetHostNameSuggestion`, which
    #   returns a host name based on the current theme.
    #
    # @option params [String] :default_availability_zone
    #   The stack's default Availability Zone, which must be in the specified
    #   region. For more information, see [Regions and Endpoints][1]. If you
    #   also specify a value for `DefaultSubnetId`, the subnet must be in the
    #   same zone. For more information, see the `VpcId` parameter
    #   description.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html
    #
    # @option params [String] :default_subnet_id
    #   The stack's default VPC subnet ID. This parameter is required if you
    #   specify a value for the `VpcId` parameter. All instances are launched
    #   into this subnet unless you specify otherwise when you create the
    #   instance. If you also specify a value for `DefaultAvailabilityZone`,
    #   the subnet must be in that zone. For information on default values and
    #   when this parameter is required, see the `VpcId` parameter
    #   description.
    #
    # @option params [String] :custom_json
    #   A string that contains user-defined, custom JSON. It can be used to
    #   override the corresponding default stack configuration attribute
    #   values or to pass data to recipes. The string should be in the
    #   following format:
    #
    #   `"\{"key1": "value1", "key2": "value2",...\}"`
    #
    #   For more information about custom JSON, see [Use Custom JSON to Modify
    #   the Stack Configuration Attributes][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html
    #
    # @option params [Types::StackConfigurationManager] :configuration_manager
    #   The configuration manager. When you create a stack we recommend that
    #   you use the configuration manager to specify the Chef version: 12,
    #   11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The
    #   default value for Linux stacks is currently 12.
    #
    # @option params [Types::ChefConfiguration] :chef_configuration
    #   A `ChefConfiguration` object that specifies whether to enable
    #   Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more
    #   information, see [Create a New Stack][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html
    #
    # @option params [Boolean] :use_custom_cookbooks
    #   Whether the stack uses custom cookbooks.
    #
    # @option params [Boolean] :use_opsworks_security_groups
    #   Whether to associate the AWS OpsWorks Stacks built-in security groups
    #   with the stack's layers.
    #
    #   AWS OpsWorks Stacks provides a standard set of built-in security
    #   groups, one for each layer, which are associated with layers by
    #   default. With `UseOpsworksSecurityGroups` you can instead provide your
    #   own custom security groups. `UseOpsworksSecurityGroups` has the
    #   following settings:
    #
    #   * True - AWS OpsWorks Stacks automatically associates the appropriate
    #     built-in security group with each layer (default setting). You can
    #     associate additional security groups with a layer after you create
    #     it, but you cannot delete the built-in security group.
    #
    #   * False - AWS OpsWorks Stacks does not associate built-in security
    #     groups with layers. You must create appropriate EC2 security groups
    #     and associate a security group with each layer that you create.
    #     However, you can still manually associate a built-in security group
    #     with a layer on creation; custom security groups are required only
    #     for those layers that need custom settings.
    #
    #   For more information, see [Create a New Stack][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html
    #
    # @option params [Types::Source] :custom_cookbooks_source
    #   Contains the information required to retrieve an app or cookbook from
    #   a repository. For more information, see [Creating Apps][1] or [Custom
    #   Recipes and Cookbooks][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html
    #   [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html
    #
    # @option params [String] :default_ssh_key_name
    #   A default Amazon EC2 key pair name. The default value is none. If you
    #   specify a key pair name, AWS OpsWorks installs the public key on the
    #   instance and you can use the private key with an SSH client to log in
    #   to the instance. For more information, see [ Using SSH to Communicate
    #   with an Instance][1] and [ Managing SSH Access][2]. You can override
    #   this setting by specifying a different key pair, or no key pair, when
    #   you [ create an instance][3].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html
    #   [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html
    #   [3]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html
    #
    # @option params [String] :default_root_device_type
    #   The default root device type. This value is the default for all
    #   instances in the stack, but you can override it when you create an
    #   instance. The default option is `instance-store`. For more
    #   information, see [Storage for the Root Device][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device
    #
    # @option params [String] :agent_version
    #   The default AWS OpsWorks Stacks agent version. You have the following
    #   options:
    #
    #   * Auto-update - Set this parameter to `LATEST`. AWS OpsWorks Stacks
    #     automatically installs new agent versions on the stack's instances
    #     as soon as they are available.
    #
    #   * Fixed version - Set this parameter to your preferred agent version.
    #     To update the agent version, you must edit the stack configuration
    #     and specify a new version. AWS OpsWorks Stacks then automatically
    #     installs that version on the stack's instances.
    #
    #   The default setting is the most recent release of the agent. To
    #   specify an agent version, you must use the complete version number,
    #   not the abbreviated number shown on the console. For a list of
    #   available agent version numbers, call DescribeAgentVersions.
    #   AgentVersion cannot be set to Chef 12.2.
    #
    #   <note markdown="1"> You can also specify an agent version when you create or update an
    #   instance, which overrides the stack's default setting.
    #
    #    </note>
    #
    # @return [Types::CreateStackResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStackResult#stack_id #stack_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack({
    #     name: "String", # required
    #     region: "String", # required
    #     vpc_id: "String",
    #     attributes: {
    #       "Color" => "String",
    #     },
    #     service_role_arn: "String", # required
    #     default_instance_profile_arn: "String", # required
    #     default_os: "String",
    #     hostname_theme: "String",
    #     default_availability_zone: "String",
    #     default_subnet_id: "String",
    #     custom_json: "String",
    #     configuration_manager: {
    #       name: "String",
    #       version: "String",
    #     },
    #     chef_configuration: {
    #       manage_berkshelf: false,
    #       berkshelf_version: "String",
    #     },
    #     use_custom_cookbooks: false,
    #     use_opsworks_security_groups: false,
    #     custom_cookbooks_source: {
    #       type: "git", # accepts git, svn, archive, s3
    #       url: "String",
    #       username: "String",
    #       password: "String",
    #       ssh_key: "String",
    #       revision: "String",
    #     },
    #     default_ssh_key_name: "String",
    #     default_root_device_type: "ebs", # accepts ebs, instance-store
    #     agent_version: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateStack AWS API Documentation
    #
    # @overload create_stack(params = {})
    # @param [Hash] params ({})
    def create_stack(params = {}, options = {})
      req = build_request(:create_stack, params)
      req.send_request(options)
    end

    # Creates a new user profile.
    #
    # **Required Permissions**\: To use this action, an IAM user must have
    # an attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :iam_user_arn
    #   The user's IAM ARN; this can also be a federated user's ARN.
    #
    # @option params [String] :ssh_username
    #   The user's SSH user name. The allowable characters are \[a-z\],
    #   \[A-Z\], \[0-9\], '-', and '\_'. If the specified name includes
    #   other punctuation marks, AWS OpsWorks Stacks removes them. For
    #   example, `my.name` will be changed to `myname`. If you do not specify
    #   an SSH user name, AWS OpsWorks Stacks generates one from the IAM user
    #   name.
    #
    # @option params [String] :ssh_public_key
    #   The user's public SSH key.
    #
    # @option params [Boolean] :allow_self_management
    #   Whether users can specify their own SSH public key through the My
    #   Settings page. For more information, see [Setting an IAM User's
    #   Public SSH Key][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html
    #
    # @return [Types::CreateUserProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserProfileResult#iam_user_arn #iam_user_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_profile({
    #     iam_user_arn: "String", # required
    #     ssh_username: "String",
    #     ssh_public_key: "String",
    #     allow_self_management: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.iam_user_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateUserProfile AWS API Documentation
    #
    # @overload create_user_profile(params = {})
    # @param [Hash] params ({})
    def create_user_profile(params = {}, options = {})
      req = build_request(:create_user_profile, params)
      req.send_request(options)
    end

    # Deletes a specified app.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :app_id
    #   The app ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app({
    #     app_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeleteApp AWS API Documentation
    #
    # @overload delete_app(params = {})
    # @param [Hash] params ({})
    def delete_app(params = {}, options = {})
      req = build_request(:delete_app, params)
      req.send_request(options)
    end

    # Deletes a specified instance, which terminates the associated Amazon
    # EC2 instance. You must stop an instance before you can delete it.
    #
    # For more information, see [Deleting Instances][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :instance_id
    #   The instance ID.
    #
    # @option params [Boolean] :delete_elastic_ip
    #   Whether to delete the instance Elastic IP address.
    #
    # @option params [Boolean] :delete_volumes
    #   Whether to delete the instance's Amazon EBS volumes.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance({
    #     instance_id: "String", # required
    #     delete_elastic_ip: false,
    #     delete_volumes: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeleteInstance AWS API Documentation
    #
    # @overload delete_instance(params = {})
    # @param [Hash] params ({})
    def delete_instance(params = {}, options = {})
      req = build_request(:delete_instance, params)
      req.send_request(options)
    end

    # Deletes a specified layer. You must first stop and then delete all
    # associated instances or unassign registered instances. For more
    # information, see [How to Delete a Layer][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :layer_id
    #   The layer ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_layer({
    #     layer_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeleteLayer AWS API Documentation
    #
    # @overload delete_layer(params = {})
    # @param [Hash] params ({})
    def delete_layer(params = {}, options = {})
      req = build_request(:delete_layer, params)
      req.send_request(options)
    end

    # Deletes a specified stack. You must first delete all instances,
    # layers, and apps or deregister registered instances. For more
    # information, see [Shut Down a Stack][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-shutting.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :stack_id
    #   The stack ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stack({
    #     stack_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeleteStack AWS API Documentation
    #
    # @overload delete_stack(params = {})
    # @param [Hash] params ({})
    def delete_stack(params = {}, options = {})
      req = build_request(:delete_stack, params)
      req.send_request(options)
    end

    # Deletes a user profile.
    #
    # **Required Permissions**\: To use this action, an IAM user must have
    # an attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :iam_user_arn
    #   The user's IAM ARN. This can also be a federated user's ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_profile({
    #     iam_user_arn: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeleteUserProfile AWS API Documentation
    #
    # @overload delete_user_profile(params = {})
    # @param [Hash] params ({})
    def delete_user_profile(params = {}, options = {})
      req = build_request(:delete_user_profile, params)
      req.send_request(options)
    end

    # Deregisters a specified Amazon ECS cluster from a stack. For more
    # information, see [ Resource Management][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see
    # [http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :ecs_cluster_arn
    #   The cluster's Amazon Resource Number (ARN).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_ecs_cluster({
    #     ecs_cluster_arn: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeregisterEcsCluster AWS API Documentation
    #
    # @overload deregister_ecs_cluster(params = {})
    # @param [Hash] params ({})
    def deregister_ecs_cluster(params = {}, options = {})
      req = build_request(:deregister_ecs_cluster, params)
      req.send_request(options)
    end

    # Deregisters a specified Elastic IP address. The address can then be
    # registered by another stack. For more information, see [Resource
    # Management][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :elastic_ip
    #   The Elastic IP address.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_elastic_ip({
    #     elastic_ip: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeregisterElasticIp AWS API Documentation
    #
    # @overload deregister_elastic_ip(params = {})
    # @param [Hash] params ({})
    def deregister_elastic_ip(params = {}, options = {})
      req = build_request(:deregister_elastic_ip, params)
      req.send_request(options)
    end

    # Deregister a registered Amazon EC2 or on-premises instance. This
    # action removes the instance from the stack and returns it to your
    # control. This action cannot be used with instances that were created
    # with AWS OpsWorks Stacks.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :instance_id
    #   The instance ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_instance({
    #     instance_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeregisterInstance AWS API Documentation
    #
    # @overload deregister_instance(params = {})
    # @param [Hash] params ({})
    def deregister_instance(params = {}, options = {})
      req = build_request(:deregister_instance, params)
      req.send_request(options)
    end

    # Deregisters an Amazon RDS instance.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :rds_db_instance_arn
    #   The Amazon RDS instance's ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_rds_db_instance({
    #     rds_db_instance_arn: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeregisterRdsDbInstance AWS API Documentation
    #
    # @overload deregister_rds_db_instance(params = {})
    # @param [Hash] params ({})
    def deregister_rds_db_instance(params = {}, options = {})
      req = build_request(:deregister_rds_db_instance, params)
      req.send_request(options)
    end

    # Deregisters an Amazon EBS volume. The volume can then be registered by
    # another stack. For more information, see [Resource Management][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :volume_id
    #   The AWS OpsWorks Stacks volume ID, which is the GUID that AWS OpsWorks
    #   Stacks assigned to the instance when you registered the volume with
    #   the stack, not the Amazon EC2 volume ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_volume({
    #     volume_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeregisterVolume AWS API Documentation
    #
    # @overload deregister_volume(params = {})
    # @param [Hash] params ({})
    def deregister_volume(params = {}, options = {})
      req = build_request(:deregister_volume, params)
      req.send_request(options)
    end

    # Describes the available AWS OpsWorks Stacks agent versions. You must
    # specify a stack ID or a configuration manager. `DescribeAgentVersions`
    # returns a list of available agent versions for the specified stack or
    # configuration manager.
    #
    # @option params [String] :stack_id
    #   The stack ID.
    #
    # @option params [Types::StackConfigurationManager] :configuration_manager
    #   The configuration manager.
    #
    # @return [Types::DescribeAgentVersionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAgentVersionsResult#agent_versions #agent_versions} => Array&lt;Types::AgentVersion&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_agent_versions({
    #     stack_id: "String",
    #     configuration_manager: {
    #       name: "String",
    #       version: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_versions #=> Array
    #   resp.agent_versions[0].version #=> String
    #   resp.agent_versions[0].configuration_manager.name #=> String
    #   resp.agent_versions[0].configuration_manager.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeAgentVersions AWS API Documentation
    #
    # @overload describe_agent_versions(params = {})
    # @param [Hash] params ({})
    def describe_agent_versions(params = {}, options = {})
      req = build_request(:describe_agent_versions, params)
      req.send_request(options)
    end

    # Requests a description of a specified set of apps.
    #
    # <note markdown="1"> This call accepts only one resource-identifying parameter.
    #
    #  </note>
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Show, Deploy, or Manage permissions level for the stack, or an
    # attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [String] :stack_id
    #   The app stack ID. If you use this parameter, `DescribeApps` returns a
    #   description of the apps in the specified stack.
    #
    # @option params [Array<String>] :app_ids
    #   An array of app IDs for the apps to be described. If you use this
    #   parameter, `DescribeApps` returns a description of the specified apps.
    #   Otherwise, it returns a description of every app.
    #
    # @return [Types::DescribeAppsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppsResult#apps #apps} => Array&lt;Types::App&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_apps({
    #     stack_id: "String",
    #     app_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.apps #=> Array
    #   resp.apps[0].app_id #=> String
    #   resp.apps[0].stack_id #=> String
    #   resp.apps[0].shortname #=> String
    #   resp.apps[0].name #=> String
    #   resp.apps[0].description #=> String
    #   resp.apps[0].data_sources #=> Array
    #   resp.apps[0].data_sources[0].type #=> String
    #   resp.apps[0].data_sources[0].arn #=> String
    #   resp.apps[0].data_sources[0].database_name #=> String
    #   resp.apps[0].type #=> String, one of "aws-flow-ruby", "java", "rails", "php", "nodejs", "static", "other"
    #   resp.apps[0].app_source.type #=> String, one of "git", "svn", "archive", "s3"
    #   resp.apps[0].app_source.url #=> String
    #   resp.apps[0].app_source.username #=> String
    #   resp.apps[0].app_source.password #=> String
    #   resp.apps[0].app_source.ssh_key #=> String
    #   resp.apps[0].app_source.revision #=> String
    #   resp.apps[0].domains #=> Array
    #   resp.apps[0].domains[0] #=> String
    #   resp.apps[0].enable_ssl #=> Boolean
    #   resp.apps[0].ssl_configuration.certificate #=> String
    #   resp.apps[0].ssl_configuration.private_key #=> String
    #   resp.apps[0].ssl_configuration.chain #=> String
    #   resp.apps[0].attributes #=> Hash
    #   resp.apps[0].attributes["AppAttributesKeys"] #=> String
    #   resp.apps[0].created_at #=> String
    #   resp.apps[0].environment #=> Array
    #   resp.apps[0].environment[0].key #=> String
    #   resp.apps[0].environment[0].value #=> String
    #   resp.apps[0].environment[0].secure #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeApps AWS API Documentation
    #
    # @overload describe_apps(params = {})
    # @param [Hash] params ({})
    def describe_apps(params = {}, options = {})
      req = build_request(:describe_apps, params)
      req.send_request(options)
    end

    # Describes the results of specified commands.
    #
    # <note markdown="1"> This call accepts only one resource-identifying parameter.
    #
    #  </note>
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Show, Deploy, or Manage permissions level for the stack, or an
    # attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [String] :deployment_id
    #   The deployment ID. If you include this parameter, `DescribeCommands`
    #   returns a description of the commands associated with the specified
    #   deployment.
    #
    # @option params [String] :instance_id
    #   The instance ID. If you include this parameter, `DescribeCommands`
    #   returns a description of the commands associated with the specified
    #   instance.
    #
    # @option params [Array<String>] :command_ids
    #   An array of command IDs. If you include this parameter,
    #   `DescribeCommands` returns a description of the specified commands.
    #   Otherwise, it returns a description of every command.
    #
    # @return [Types::DescribeCommandsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCommandsResult#commands #commands} => Array&lt;Types::Command&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_commands({
    #     deployment_id: "String",
    #     instance_id: "String",
    #     command_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.commands #=> Array
    #   resp.commands[0].command_id #=> String
    #   resp.commands[0].instance_id #=> String
    #   resp.commands[0].deployment_id #=> String
    #   resp.commands[0].created_at #=> String
    #   resp.commands[0].acknowledged_at #=> String
    #   resp.commands[0].completed_at #=> String
    #   resp.commands[0].status #=> String
    #   resp.commands[0].exit_code #=> Integer
    #   resp.commands[0].log_url #=> String
    #   resp.commands[0].type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeCommands AWS API Documentation
    #
    # @overload describe_commands(params = {})
    # @param [Hash] params ({})
    def describe_commands(params = {}, options = {})
      req = build_request(:describe_commands, params)
      req.send_request(options)
    end

    # Requests a description of a specified set of deployments.
    #
    # <note markdown="1"> This call accepts only one resource-identifying parameter.
    #
    #  </note>
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Show, Deploy, or Manage permissions level for the stack, or an
    # attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [String] :stack_id
    #   The stack ID. If you include this parameter, the command returns a
    #   description of the commands associated with the specified stack.
    #
    # @option params [String] :app_id
    #   The app ID. If you include this parameter, the command returns a
    #   description of the commands associated with the specified app.
    #
    # @option params [Array<String>] :deployment_ids
    #   An array of deployment IDs to be described. If you include this
    #   parameter, the command returns a description of the specified
    #   deployments. Otherwise, it returns a description of every deployment.
    #
    # @return [Types::DescribeDeploymentsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDeploymentsResult#deployments #deployments} => Array&lt;Types::Deployment&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_deployments({
    #     stack_id: "String",
    #     app_id: "String",
    #     deployment_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.deployments #=> Array
    #   resp.deployments[0].deployment_id #=> String
    #   resp.deployments[0].stack_id #=> String
    #   resp.deployments[0].app_id #=> String
    #   resp.deployments[0].created_at #=> String
    #   resp.deployments[0].completed_at #=> String
    #   resp.deployments[0].duration #=> Integer
    #   resp.deployments[0].iam_user_arn #=> String
    #   resp.deployments[0].comment #=> String
    #   resp.deployments[0].command.name #=> String, one of "install_dependencies", "update_dependencies", "update_custom_cookbooks", "execute_recipes", "configure", "setup", "deploy", "rollback", "start", "stop", "restart", "undeploy"
    #   resp.deployments[0].command.args #=> Hash
    #   resp.deployments[0].command.args["String"] #=> Array
    #   resp.deployments[0].command.args["String"][0] #=> String
    #   resp.deployments[0].status #=> String
    #   resp.deployments[0].custom_json #=> String
    #   resp.deployments[0].instance_ids #=> Array
    #   resp.deployments[0].instance_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeDeployments AWS API Documentation
    #
    # @overload describe_deployments(params = {})
    # @param [Hash] params ({})
    def describe_deployments(params = {}, options = {})
      req = build_request(:describe_deployments, params)
      req.send_request(options)
    end

    # Describes Amazon ECS clusters that are registered with a stack. If you
    # specify only a stack ID, you can use the `MaxResults` and `NextToken`
    # parameters to paginate the response. However, AWS OpsWorks Stacks
    # currently supports only one cluster per layer, so the result set has a
    # maximum of one element.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Show, Deploy, or Manage permissions level for the stack or an attached
    # policy that explicitly grants permission. For more information about
    # user permissions, see [Managing User Permissions][1].
    #
    # This call accepts only one resource-identifying parameter.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [Array<String>] :ecs_cluster_arns
    #   A list of ARNs, one for each cluster to be described.
    #
    # @option params [String] :stack_id
    #   A stack ID. `DescribeEcsClusters` returns a description of the cluster
    #   that is registered with the stack.
    #
    # @option params [String] :next_token
    #   If the previous paginated request did not return all of the remaining
    #   results, the response object's`NextToken` parameter value is set to a
    #   token. To retrieve the next set of results, call `DescribeEcsClusters`
    #   again and assign that token to the request object's `NextToken`
    #   parameter. If there are no remaining results, the previous response
    #   object's `NextToken` parameter is set to `null`.
    #
    # @option params [Integer] :max_results
    #   To receive a paginated response, use this parameter to specify the
    #   maximum number of results to be returned with a single call. If the
    #   number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    # @return [Types::DescribeEcsClustersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEcsClustersResult#ecs_clusters #ecs_clusters} => Array&lt;Types::EcsCluster&gt;
    #   * {Types::DescribeEcsClustersResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ecs_clusters({
    #     ecs_cluster_arns: ["String"],
    #     stack_id: "String",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.ecs_clusters #=> Array
    #   resp.ecs_clusters[0].ecs_cluster_arn #=> String
    #   resp.ecs_clusters[0].ecs_cluster_name #=> String
    #   resp.ecs_clusters[0].stack_id #=> String
    #   resp.ecs_clusters[0].registered_at #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeEcsClusters AWS API Documentation
    #
    # @overload describe_ecs_clusters(params = {})
    # @param [Hash] params ({})
    def describe_ecs_clusters(params = {}, options = {})
      req = build_request(:describe_ecs_clusters, params)
      req.send_request(options)
    end

    # Describes [Elastic IP addresses][1].
    #
    # <note markdown="1"> This call accepts only one resource-identifying parameter.
    #
    #  </note>
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Show, Deploy, or Manage permissions level for the stack, or an
    # attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [String] :instance_id
    #   The instance ID. If you include this parameter, `DescribeElasticIps`
    #   returns a description of the Elastic IP addresses associated with the
    #   specified instance.
    #
    # @option params [String] :stack_id
    #   A stack ID. If you include this parameter, `DescribeElasticIps`
    #   returns a description of the Elastic IP addresses that are registered
    #   with the specified stack.
    #
    # @option params [Array<String>] :ips
    #   An array of Elastic IP addresses to be described. If you include this
    #   parameter, `DescribeElasticIps` returns a description of the specified
    #   Elastic IP addresses. Otherwise, it returns a description of every
    #   Elastic IP address.
    #
    # @return [Types::DescribeElasticIpsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeElasticIpsResult#elastic_ips #elastic_ips} => Array&lt;Types::ElasticIp&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_elastic_ips({
    #     instance_id: "String",
    #     stack_id: "String",
    #     ips: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.elastic_ips #=> Array
    #   resp.elastic_ips[0].ip #=> String
    #   resp.elastic_ips[0].name #=> String
    #   resp.elastic_ips[0].domain #=> String
    #   resp.elastic_ips[0].region #=> String
    #   resp.elastic_ips[0].instance_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeElasticIps AWS API Documentation
    #
    # @overload describe_elastic_ips(params = {})
    # @param [Hash] params ({})
    def describe_elastic_ips(params = {}, options = {})
      req = build_request(:describe_elastic_ips, params)
      req.send_request(options)
    end

    # Describes a stack's Elastic Load Balancing instances.
    #
    # <note markdown="1"> This call accepts only one resource-identifying parameter.
    #
    #  </note>
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Show, Deploy, or Manage permissions level for the stack, or an
    # attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [String] :stack_id
    #   A stack ID. The action describes the stack's Elastic Load Balancing
    #   instances.
    #
    # @option params [Array<String>] :layer_ids
    #   A list of layer IDs. The action describes the Elastic Load Balancing
    #   instances for the specified layers.
    #
    # @return [Types::DescribeElasticLoadBalancersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeElasticLoadBalancersResult#elastic_load_balancers #elastic_load_balancers} => Array&lt;Types::ElasticLoadBalancer&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_elastic_load_balancers({
    #     stack_id: "String",
    #     layer_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.elastic_load_balancers #=> Array
    #   resp.elastic_load_balancers[0].elastic_load_balancer_name #=> String
    #   resp.elastic_load_balancers[0].region #=> String
    #   resp.elastic_load_balancers[0].dns_name #=> String
    #   resp.elastic_load_balancers[0].stack_id #=> String
    #   resp.elastic_load_balancers[0].layer_id #=> String
    #   resp.elastic_load_balancers[0].vpc_id #=> String
    #   resp.elastic_load_balancers[0].availability_zones #=> Array
    #   resp.elastic_load_balancers[0].availability_zones[0] #=> String
    #   resp.elastic_load_balancers[0].subnet_ids #=> Array
    #   resp.elastic_load_balancers[0].subnet_ids[0] #=> String
    #   resp.elastic_load_balancers[0].ec2_instance_ids #=> Array
    #   resp.elastic_load_balancers[0].ec2_instance_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeElasticLoadBalancers AWS API Documentation
    #
    # @overload describe_elastic_load_balancers(params = {})
    # @param [Hash] params ({})
    def describe_elastic_load_balancers(params = {}, options = {})
      req = build_request(:describe_elastic_load_balancers, params)
      req.send_request(options)
    end

    # Requests a description of a set of instances.
    #
    # <note markdown="1"> This call accepts only one resource-identifying parameter.
    #
    #  </note>
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Show, Deploy, or Manage permissions level for the stack, or an
    # attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [String] :stack_id
    #   A stack ID. If you use this parameter, `DescribeInstances` returns
    #   descriptions of the instances associated with the specified stack.
    #
    # @option params [String] :layer_id
    #   A layer ID. If you use this parameter, `DescribeInstances` returns
    #   descriptions of the instances associated with the specified layer.
    #
    # @option params [Array<String>] :instance_ids
    #   An array of instance IDs to be described. If you use this parameter,
    #   `DescribeInstances` returns a description of the specified instances.
    #   Otherwise, it returns a description of every instance.
    #
    # @return [Types::DescribeInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstancesResult#instances #instances} => Array&lt;Types::Instance&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instances({
    #     stack_id: "String",
    #     layer_id: "String",
    #     instance_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].agent_version #=> String
    #   resp.instances[0].ami_id #=> String
    #   resp.instances[0].architecture #=> String, one of "x86_64", "i386"
    #   resp.instances[0].arn #=> String
    #   resp.instances[0].auto_scaling_type #=> String, one of "load", "timer"
    #   resp.instances[0].availability_zone #=> String
    #   resp.instances[0].block_device_mappings #=> Array
    #   resp.instances[0].block_device_mappings[0].device_name #=> String
    #   resp.instances[0].block_device_mappings[0].no_device #=> String
    #   resp.instances[0].block_device_mappings[0].virtual_name #=> String
    #   resp.instances[0].block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.instances[0].block_device_mappings[0].ebs.iops #=> Integer
    #   resp.instances[0].block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.instances[0].block_device_mappings[0].ebs.volume_type #=> String, one of "gp2", "io1", "standard"
    #   resp.instances[0].block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.instances[0].created_at #=> String
    #   resp.instances[0].ebs_optimized #=> Boolean
    #   resp.instances[0].ec2_instance_id #=> String
    #   resp.instances[0].ecs_cluster_arn #=> String
    #   resp.instances[0].ecs_container_instance_arn #=> String
    #   resp.instances[0].elastic_ip #=> String
    #   resp.instances[0].hostname #=> String
    #   resp.instances[0].infrastructure_class #=> String
    #   resp.instances[0].install_updates_on_boot #=> Boolean
    #   resp.instances[0].instance_id #=> String
    #   resp.instances[0].instance_profile_arn #=> String
    #   resp.instances[0].instance_type #=> String
    #   resp.instances[0].last_service_error_id #=> String
    #   resp.instances[0].layer_ids #=> Array
    #   resp.instances[0].layer_ids[0] #=> String
    #   resp.instances[0].os #=> String
    #   resp.instances[0].platform #=> String
    #   resp.instances[0].private_dns #=> String
    #   resp.instances[0].private_ip #=> String
    #   resp.instances[0].public_dns #=> String
    #   resp.instances[0].public_ip #=> String
    #   resp.instances[0].registered_by #=> String
    #   resp.instances[0].reported_agent_version #=> String
    #   resp.instances[0].reported_os.family #=> String
    #   resp.instances[0].reported_os.name #=> String
    #   resp.instances[0].reported_os.version #=> String
    #   resp.instances[0].root_device_type #=> String, one of "ebs", "instance-store"
    #   resp.instances[0].root_device_volume_id #=> String
    #   resp.instances[0].security_group_ids #=> Array
    #   resp.instances[0].security_group_ids[0] #=> String
    #   resp.instances[0].ssh_host_dsa_key_fingerprint #=> String
    #   resp.instances[0].ssh_host_rsa_key_fingerprint #=> String
    #   resp.instances[0].ssh_key_name #=> String
    #   resp.instances[0].stack_id #=> String
    #   resp.instances[0].status #=> String
    #   resp.instances[0].subnet_id #=> String
    #   resp.instances[0].tenancy #=> String
    #   resp.instances[0].virtualization_type #=> String, one of "paravirtual", "hvm"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeInstances AWS API Documentation
    #
    # @overload describe_instances(params = {})
    # @param [Hash] params ({})
    def describe_instances(params = {}, options = {})
      req = build_request(:describe_instances, params)
      req.send_request(options)
    end

    # Requests a description of one or more layers in a specified stack.
    #
    # <note markdown="1"> This call accepts only one resource-identifying parameter.
    #
    #  </note>
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Show, Deploy, or Manage permissions level for the stack, or an
    # attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [String] :stack_id
    #   The stack ID.
    #
    # @option params [Array<String>] :layer_ids
    #   An array of layer IDs that specify the layers to be described. If you
    #   omit this parameter, `DescribeLayers` returns a description of every
    #   layer in the specified stack.
    #
    # @return [Types::DescribeLayersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLayersResult#layers #layers} => Array&lt;Types::Layer&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_layers({
    #     stack_id: "String",
    #     layer_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.layers #=> Array
    #   resp.layers[0].arn #=> String
    #   resp.layers[0].stack_id #=> String
    #   resp.layers[0].layer_id #=> String
    #   resp.layers[0].type #=> String, one of "aws-flow-ruby", "ecs-cluster", "java-app", "lb", "web", "php-app", "rails-app", "nodejs-app", "memcached", "db-master", "monitoring-master", "custom"
    #   resp.layers[0].name #=> String
    #   resp.layers[0].shortname #=> String
    #   resp.layers[0].attributes #=> Hash
    #   resp.layers[0].attributes["LayerAttributesKeys"] #=> String
    #   resp.layers[0].cloud_watch_logs_configuration.enabled #=> Boolean
    #   resp.layers[0].cloud_watch_logs_configuration.log_streams #=> Array
    #   resp.layers[0].cloud_watch_logs_configuration.log_streams[0].log_group_name #=> String
    #   resp.layers[0].cloud_watch_logs_configuration.log_streams[0].datetime_format #=> String
    #   resp.layers[0].cloud_watch_logs_configuration.log_streams[0].time_zone #=> String, one of "LOCAL", "UTC"
    #   resp.layers[0].cloud_watch_logs_configuration.log_streams[0].file #=> String
    #   resp.layers[0].cloud_watch_logs_configuration.log_streams[0].file_fingerprint_lines #=> String
    #   resp.layers[0].cloud_watch_logs_configuration.log_streams[0].multi_line_start_pattern #=> String
    #   resp.layers[0].cloud_watch_logs_configuration.log_streams[0].initial_position #=> String, one of "start_of_file", "end_of_file"
    #   resp.layers[0].cloud_watch_logs_configuration.log_streams[0].encoding #=> String, one of "ascii", "big5", "big5hkscs", "cp037", "cp424", "cp437", "cp500", "cp720", "cp737", "cp775", "cp850", "cp852", "cp855", "cp856", "cp857", "cp858", "cp860", "cp861", "cp862", "cp863", "cp864", "cp865", "cp866", "cp869", "cp874", "cp875", "cp932", "cp949", "cp950", "cp1006", "cp1026", "cp1140", "cp1250", "cp1251", "cp1252", "cp1253", "cp1254", "cp1255", "cp1256", "cp1257", "cp1258", "euc_jp", "euc_jis_2004", "euc_jisx0213", "euc_kr", "gb2312", "gbk", "gb18030", "hz", "iso2022_jp", "iso2022_jp_1", "iso2022_jp_2", "iso2022_jp_2004", "iso2022_jp_3", "iso2022_jp_ext", "iso2022_kr", "latin_1", "iso8859_2", "iso8859_3", "iso8859_4", "iso8859_5", "iso8859_6", "iso8859_7", "iso8859_8", "iso8859_9", "iso8859_10", "iso8859_13", "iso8859_14", "iso8859_15", "iso8859_16", "johab", "koi8_r", "koi8_u", "mac_cyrillic", "mac_greek", "mac_iceland", "mac_latin2", "mac_roman", "mac_turkish", "ptcp154", "shift_jis", "shift_jis_2004", "shift_jisx0213", "utf_32", "utf_32_be", "utf_32_le", "utf_16", "utf_16_be", "utf_16_le", "utf_7", "utf_8", "utf_8_sig"
    #   resp.layers[0].cloud_watch_logs_configuration.log_streams[0].buffer_duration #=> Integer
    #   resp.layers[0].cloud_watch_logs_configuration.log_streams[0].batch_count #=> Integer
    #   resp.layers[0].cloud_watch_logs_configuration.log_streams[0].batch_size #=> Integer
    #   resp.layers[0].custom_instance_profile_arn #=> String
    #   resp.layers[0].custom_json #=> String
    #   resp.layers[0].custom_security_group_ids #=> Array
    #   resp.layers[0].custom_security_group_ids[0] #=> String
    #   resp.layers[0].default_security_group_names #=> Array
    #   resp.layers[0].default_security_group_names[0] #=> String
    #   resp.layers[0].packages #=> Array
    #   resp.layers[0].packages[0] #=> String
    #   resp.layers[0].volume_configurations #=> Array
    #   resp.layers[0].volume_configurations[0].mount_point #=> String
    #   resp.layers[0].volume_configurations[0].raid_level #=> Integer
    #   resp.layers[0].volume_configurations[0].number_of_disks #=> Integer
    #   resp.layers[0].volume_configurations[0].size #=> Integer
    #   resp.layers[0].volume_configurations[0].volume_type #=> String
    #   resp.layers[0].volume_configurations[0].iops #=> Integer
    #   resp.layers[0].volume_configurations[0].encrypted #=> Boolean
    #   resp.layers[0].enable_auto_healing #=> Boolean
    #   resp.layers[0].auto_assign_elastic_ips #=> Boolean
    #   resp.layers[0].auto_assign_public_ips #=> Boolean
    #   resp.layers[0].default_recipes.setup #=> Array
    #   resp.layers[0].default_recipes.setup[0] #=> String
    #   resp.layers[0].default_recipes.configure #=> Array
    #   resp.layers[0].default_recipes.configure[0] #=> String
    #   resp.layers[0].default_recipes.deploy #=> Array
    #   resp.layers[0].default_recipes.deploy[0] #=> String
    #   resp.layers[0].default_recipes.undeploy #=> Array
    #   resp.layers[0].default_recipes.undeploy[0] #=> String
    #   resp.layers[0].default_recipes.shutdown #=> Array
    #   resp.layers[0].default_recipes.shutdown[0] #=> String
    #   resp.layers[0].custom_recipes.setup #=> Array
    #   resp.layers[0].custom_recipes.setup[0] #=> String
    #   resp.layers[0].custom_recipes.configure #=> Array
    #   resp.layers[0].custom_recipes.configure[0] #=> String
    #   resp.layers[0].custom_recipes.deploy #=> Array
    #   resp.layers[0].custom_recipes.deploy[0] #=> String
    #   resp.layers[0].custom_recipes.undeploy #=> Array
    #   resp.layers[0].custom_recipes.undeploy[0] #=> String
    #   resp.layers[0].custom_recipes.shutdown #=> Array
    #   resp.layers[0].custom_recipes.shutdown[0] #=> String
    #   resp.layers[0].created_at #=> String
    #   resp.layers[0].install_updates_on_boot #=> Boolean
    #   resp.layers[0].use_ebs_optimized_instances #=> Boolean
    #   resp.layers[0].lifecycle_event_configuration.shutdown.execution_timeout #=> Integer
    #   resp.layers[0].lifecycle_event_configuration.shutdown.delay_until_elb_connections_drained #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeLayers AWS API Documentation
    #
    # @overload describe_layers(params = {})
    # @param [Hash] params ({})
    def describe_layers(params = {}, options = {})
      req = build_request(:describe_layers, params)
      req.send_request(options)
    end

    # Describes load-based auto scaling configurations for specified layers.
    #
    # <note markdown="1"> You must specify at least one of the parameters.
    #
    #  </note>
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Show, Deploy, or Manage permissions level for the stack, or an
    # attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, Array<String>] :layer_ids
    #   An array of layer IDs.
    #
    # @return [Types::DescribeLoadBasedAutoScalingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoadBasedAutoScalingResult#load_based_auto_scaling_configurations #load_based_auto_scaling_configurations} => Array&lt;Types::LoadBasedAutoScalingConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_based_auto_scaling({
    #     layer_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.load_based_auto_scaling_configurations #=> Array
    #   resp.load_based_auto_scaling_configurations[0].layer_id #=> String
    #   resp.load_based_auto_scaling_configurations[0].enable #=> Boolean
    #   resp.load_based_auto_scaling_configurations[0].up_scaling.instance_count #=> Integer
    #   resp.load_based_auto_scaling_configurations[0].up_scaling.thresholds_wait_time #=> Integer
    #   resp.load_based_auto_scaling_configurations[0].up_scaling.ignore_metrics_time #=> Integer
    #   resp.load_based_auto_scaling_configurations[0].up_scaling.cpu_threshold #=> Float
    #   resp.load_based_auto_scaling_configurations[0].up_scaling.memory_threshold #=> Float
    #   resp.load_based_auto_scaling_configurations[0].up_scaling.load_threshold #=> Float
    #   resp.load_based_auto_scaling_configurations[0].up_scaling.alarms #=> Array
    #   resp.load_based_auto_scaling_configurations[0].up_scaling.alarms[0] #=> String
    #   resp.load_based_auto_scaling_configurations[0].down_scaling.instance_count #=> Integer
    #   resp.load_based_auto_scaling_configurations[0].down_scaling.thresholds_wait_time #=> Integer
    #   resp.load_based_auto_scaling_configurations[0].down_scaling.ignore_metrics_time #=> Integer
    #   resp.load_based_auto_scaling_configurations[0].down_scaling.cpu_threshold #=> Float
    #   resp.load_based_auto_scaling_configurations[0].down_scaling.memory_threshold #=> Float
    #   resp.load_based_auto_scaling_configurations[0].down_scaling.load_threshold #=> Float
    #   resp.load_based_auto_scaling_configurations[0].down_scaling.alarms #=> Array
    #   resp.load_based_auto_scaling_configurations[0].down_scaling.alarms[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeLoadBasedAutoScaling AWS API Documentation
    #
    # @overload describe_load_based_auto_scaling(params = {})
    # @param [Hash] params ({})
    def describe_load_based_auto_scaling(params = {}, options = {})
      req = build_request(:describe_load_based_auto_scaling, params)
      req.send_request(options)
    end

    # Describes a user's SSH information.
    #
    # **Required Permissions**\: To use this action, an IAM user must have
    # self-management enabled or an attached policy that explicitly grants
    # permissions. For more information about user permissions, see
    # [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @return [Types::DescribeMyUserProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMyUserProfileResult#user_profile #user_profile} => Types::SelfUserProfile
    #
    # @example Response structure
    #
    #   resp.user_profile.iam_user_arn #=> String
    #   resp.user_profile.name #=> String
    #   resp.user_profile.ssh_username #=> String
    #   resp.user_profile.ssh_public_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeMyUserProfile AWS API Documentation
    #
    # @overload describe_my_user_profile(params = {})
    # @param [Hash] params ({})
    def describe_my_user_profile(params = {}, options = {})
      req = build_request(:describe_my_user_profile, params)
      req.send_request(options)
    end

    # Describes the operating systems that are supported by AWS OpsWorks
    # Stacks.
    #
    # @return [Types::DescribeOperatingSystemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOperatingSystemsResponse#operating_systems #operating_systems} => Array&lt;Types::OperatingSystem&gt;
    #
    # @example Response structure
    #
    #   resp.operating_systems #=> Array
    #   resp.operating_systems[0].name #=> String
    #   resp.operating_systems[0].id #=> String
    #   resp.operating_systems[0].type #=> String
    #   resp.operating_systems[0].configuration_managers #=> Array
    #   resp.operating_systems[0].configuration_managers[0].name #=> String
    #   resp.operating_systems[0].configuration_managers[0].version #=> String
    #   resp.operating_systems[0].reported_name #=> String
    #   resp.operating_systems[0].reported_version #=> String
    #   resp.operating_systems[0].supported #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeOperatingSystems AWS API Documentation
    #
    # @overload describe_operating_systems(params = {})
    # @param [Hash] params ({})
    def describe_operating_systems(params = {}, options = {})
      req = build_request(:describe_operating_systems, params)
      req.send_request(options)
    end

    # Describes the permissions for a specified stack.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [String] :iam_user_arn
    #   The user's IAM ARN. This can also be a federated user's ARN. For
    #   more information about IAM ARNs, see [Using Identifiers][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #
    # @option params [String] :stack_id
    #   The stack ID.
    #
    # @return [Types::DescribePermissionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePermissionsResult#permissions #permissions} => Array&lt;Types::Permission&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_permissions({
    #     iam_user_arn: "String",
    #     stack_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.permissions #=> Array
    #   resp.permissions[0].stack_id #=> String
    #   resp.permissions[0].iam_user_arn #=> String
    #   resp.permissions[0].allow_ssh #=> Boolean
    #   resp.permissions[0].allow_sudo #=> Boolean
    #   resp.permissions[0].level #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribePermissions AWS API Documentation
    #
    # @overload describe_permissions(params = {})
    # @param [Hash] params ({})
    def describe_permissions(params = {}, options = {})
      req = build_request(:describe_permissions, params)
      req.send_request(options)
    end

    # Describe an instance's RAID arrays.
    #
    # <note markdown="1"> This call accepts only one resource-identifying parameter.
    #
    #  </note>
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Show, Deploy, or Manage permissions level for the stack, or an
    # attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [String] :instance_id
    #   The instance ID. If you use this parameter, `DescribeRaidArrays`
    #   returns descriptions of the RAID arrays associated with the specified
    #   instance.
    #
    # @option params [String] :stack_id
    #   The stack ID.
    #
    # @option params [Array<String>] :raid_array_ids
    #   An array of RAID array IDs. If you use this parameter,
    #   `DescribeRaidArrays` returns descriptions of the specified arrays.
    #   Otherwise, it returns a description of every array.
    #
    # @return [Types::DescribeRaidArraysResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRaidArraysResult#raid_arrays #raid_arrays} => Array&lt;Types::RaidArray&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_raid_arrays({
    #     instance_id: "String",
    #     stack_id: "String",
    #     raid_array_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.raid_arrays #=> Array
    #   resp.raid_arrays[0].raid_array_id #=> String
    #   resp.raid_arrays[0].instance_id #=> String
    #   resp.raid_arrays[0].name #=> String
    #   resp.raid_arrays[0].raid_level #=> Integer
    #   resp.raid_arrays[0].number_of_disks #=> Integer
    #   resp.raid_arrays[0].size #=> Integer
    #   resp.raid_arrays[0].device #=> String
    #   resp.raid_arrays[0].mount_point #=> String
    #   resp.raid_arrays[0].availability_zone #=> String
    #   resp.raid_arrays[0].created_at #=> String
    #   resp.raid_arrays[0].stack_id #=> String
    #   resp.raid_arrays[0].volume_type #=> String
    #   resp.raid_arrays[0].iops #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeRaidArrays AWS API Documentation
    #
    # @overload describe_raid_arrays(params = {})
    # @param [Hash] params ({})
    def describe_raid_arrays(params = {}, options = {})
      req = build_request(:describe_raid_arrays, params)
      req.send_request(options)
    end

    # Describes Amazon RDS instances.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Show, Deploy, or Manage permissions level for the stack, or an
    # attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    # This call accepts only one resource-identifying parameter.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :stack_id
    #   The ID of the stack with which the instances are registered. The
    #   operation returns descriptions of all registered Amazon RDS instances.
    #
    # @option params [Array<String>] :rds_db_instance_arns
    #   An array containing the ARNs of the instances to be described.
    #
    # @return [Types::DescribeRdsDbInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRdsDbInstancesResult#rds_db_instances #rds_db_instances} => Array&lt;Types::RdsDbInstance&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rds_db_instances({
    #     stack_id: "String", # required
    #     rds_db_instance_arns: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.rds_db_instances #=> Array
    #   resp.rds_db_instances[0].rds_db_instance_arn #=> String
    #   resp.rds_db_instances[0].db_instance_identifier #=> String
    #   resp.rds_db_instances[0].db_user #=> String
    #   resp.rds_db_instances[0].db_password #=> String
    #   resp.rds_db_instances[0].region #=> String
    #   resp.rds_db_instances[0].address #=> String
    #   resp.rds_db_instances[0].engine #=> String
    #   resp.rds_db_instances[0].stack_id #=> String
    #   resp.rds_db_instances[0].missing_on_rds #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeRdsDbInstances AWS API Documentation
    #
    # @overload describe_rds_db_instances(params = {})
    # @param [Hash] params ({})
    def describe_rds_db_instances(params = {}, options = {})
      req = build_request(:describe_rds_db_instances, params)
      req.send_request(options)
    end

    # Describes AWS OpsWorks Stacks service errors.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Show, Deploy, or Manage permissions level for the stack, or an
    # attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    # This call accepts only one resource-identifying parameter.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [String] :stack_id
    #   The stack ID. If you use this parameter, `DescribeServiceErrors`
    #   returns descriptions of the errors associated with the specified
    #   stack.
    #
    # @option params [String] :instance_id
    #   The instance ID. If you use this parameter, `DescribeServiceErrors`
    #   returns descriptions of the errors associated with the specified
    #   instance.
    #
    # @option params [Array<String>] :service_error_ids
    #   An array of service error IDs. If you use this parameter,
    #   `DescribeServiceErrors` returns descriptions of the specified errors.
    #   Otherwise, it returns a description of every error.
    #
    # @return [Types::DescribeServiceErrorsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServiceErrorsResult#service_errors #service_errors} => Array&lt;Types::ServiceError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_service_errors({
    #     stack_id: "String",
    #     instance_id: "String",
    #     service_error_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.service_errors #=> Array
    #   resp.service_errors[0].service_error_id #=> String
    #   resp.service_errors[0].stack_id #=> String
    #   resp.service_errors[0].instance_id #=> String
    #   resp.service_errors[0].type #=> String
    #   resp.service_errors[0].message #=> String
    #   resp.service_errors[0].created_at #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeServiceErrors AWS API Documentation
    #
    # @overload describe_service_errors(params = {})
    # @param [Hash] params ({})
    def describe_service_errors(params = {}, options = {})
      req = build_request(:describe_service_errors, params)
      req.send_request(options)
    end

    # Requests a description of a stack's provisioning parameters.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Show, Deploy, or Manage permissions level for the stack or an attached
    # policy that explicitly grants permissions. For more information about
    # user permissions, see [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :stack_id
    #   The stack ID.
    #
    # @return [Types::DescribeStackProvisioningParametersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackProvisioningParametersResult#agent_installer_url #agent_installer_url} => String
    #   * {Types::DescribeStackProvisioningParametersResult#parameters #parameters} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_provisioning_parameters({
    #     stack_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_installer_url #=> String
    #   resp.parameters #=> Hash
    #   resp.parameters["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeStackProvisioningParameters AWS API Documentation
    #
    # @overload describe_stack_provisioning_parameters(params = {})
    # @param [Hash] params ({})
    def describe_stack_provisioning_parameters(params = {}, options = {})
      req = build_request(:describe_stack_provisioning_parameters, params)
      req.send_request(options)
    end

    # Describes the number of layers and apps in a specified stack, and the
    # number of instances in each state, such as `running_setup` or
    # `online`.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Show, Deploy, or Manage permissions level for the stack, or an
    # attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :stack_id
    #   The stack ID.
    #
    # @return [Types::DescribeStackSummaryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStackSummaryResult#stack_summary #stack_summary} => Types::StackSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_summary({
    #     stack_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_summary.stack_id #=> String
    #   resp.stack_summary.name #=> String
    #   resp.stack_summary.arn #=> String
    #   resp.stack_summary.layers_count #=> Integer
    #   resp.stack_summary.apps_count #=> Integer
    #   resp.stack_summary.instances_count.assigning #=> Integer
    #   resp.stack_summary.instances_count.booting #=> Integer
    #   resp.stack_summary.instances_count.connection_lost #=> Integer
    #   resp.stack_summary.instances_count.deregistering #=> Integer
    #   resp.stack_summary.instances_count.online #=> Integer
    #   resp.stack_summary.instances_count.pending #=> Integer
    #   resp.stack_summary.instances_count.rebooting #=> Integer
    #   resp.stack_summary.instances_count.registered #=> Integer
    #   resp.stack_summary.instances_count.registering #=> Integer
    #   resp.stack_summary.instances_count.requested #=> Integer
    #   resp.stack_summary.instances_count.running_setup #=> Integer
    #   resp.stack_summary.instances_count.setup_failed #=> Integer
    #   resp.stack_summary.instances_count.shutting_down #=> Integer
    #   resp.stack_summary.instances_count.start_failed #=> Integer
    #   resp.stack_summary.instances_count.stop_failed #=> Integer
    #   resp.stack_summary.instances_count.stopped #=> Integer
    #   resp.stack_summary.instances_count.stopping #=> Integer
    #   resp.stack_summary.instances_count.terminated #=> Integer
    #   resp.stack_summary.instances_count.terminating #=> Integer
    #   resp.stack_summary.instances_count.unassigning #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeStackSummary AWS API Documentation
    #
    # @overload describe_stack_summary(params = {})
    # @param [Hash] params ({})
    def describe_stack_summary(params = {}, options = {})
      req = build_request(:describe_stack_summary, params)
      req.send_request(options)
    end

    # Requests a description of one or more stacks.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Show, Deploy, or Manage permissions level for the stack, or an
    # attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [Array<String>] :stack_ids
    #   An array of stack IDs that specify the stacks to be described. If you
    #   omit this parameter, `DescribeStacks` returns a description of every
    #   stack.
    #
    # @return [Types::DescribeStacksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStacksResult#stacks #stacks} => Array&lt;Types::Stack&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stacks({
    #     stack_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.stacks #=> Array
    #   resp.stacks[0].stack_id #=> String
    #   resp.stacks[0].name #=> String
    #   resp.stacks[0].arn #=> String
    #   resp.stacks[0].region #=> String
    #   resp.stacks[0].vpc_id #=> String
    #   resp.stacks[0].attributes #=> Hash
    #   resp.stacks[0].attributes["StackAttributesKeys"] #=> String
    #   resp.stacks[0].service_role_arn #=> String
    #   resp.stacks[0].default_instance_profile_arn #=> String
    #   resp.stacks[0].default_os #=> String
    #   resp.stacks[0].hostname_theme #=> String
    #   resp.stacks[0].default_availability_zone #=> String
    #   resp.stacks[0].default_subnet_id #=> String
    #   resp.stacks[0].custom_json #=> String
    #   resp.stacks[0].configuration_manager.name #=> String
    #   resp.stacks[0].configuration_manager.version #=> String
    #   resp.stacks[0].chef_configuration.manage_berkshelf #=> Boolean
    #   resp.stacks[0].chef_configuration.berkshelf_version #=> String
    #   resp.stacks[0].use_custom_cookbooks #=> Boolean
    #   resp.stacks[0].use_opsworks_security_groups #=> Boolean
    #   resp.stacks[0].custom_cookbooks_source.type #=> String, one of "git", "svn", "archive", "s3"
    #   resp.stacks[0].custom_cookbooks_source.url #=> String
    #   resp.stacks[0].custom_cookbooks_source.username #=> String
    #   resp.stacks[0].custom_cookbooks_source.password #=> String
    #   resp.stacks[0].custom_cookbooks_source.ssh_key #=> String
    #   resp.stacks[0].custom_cookbooks_source.revision #=> String
    #   resp.stacks[0].default_ssh_key_name #=> String
    #   resp.stacks[0].created_at #=> String
    #   resp.stacks[0].default_root_device_type #=> String, one of "ebs", "instance-store"
    #   resp.stacks[0].agent_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeStacks AWS API Documentation
    #
    # @overload describe_stacks(params = {})
    # @param [Hash] params ({})
    def describe_stacks(params = {}, options = {})
      req = build_request(:describe_stacks, params)
      req.send_request(options)
    end

    # Describes time-based auto scaling configurations for specified
    # instances.
    #
    # <note markdown="1"> You must specify at least one of the parameters.
    #
    #  </note>
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Show, Deploy, or Manage permissions level for the stack, or an
    # attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, Array<String>] :instance_ids
    #   An array of instance IDs.
    #
    # @return [Types::DescribeTimeBasedAutoScalingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTimeBasedAutoScalingResult#time_based_auto_scaling_configurations #time_based_auto_scaling_configurations} => Array&lt;Types::TimeBasedAutoScalingConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_time_based_auto_scaling({
    #     instance_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.time_based_auto_scaling_configurations #=> Array
    #   resp.time_based_auto_scaling_configurations[0].instance_id #=> String
    #   resp.time_based_auto_scaling_configurations[0].auto_scaling_schedule.monday #=> Hash
    #   resp.time_based_auto_scaling_configurations[0].auto_scaling_schedule.monday["Hour"] #=> String
    #   resp.time_based_auto_scaling_configurations[0].auto_scaling_schedule.tuesday #=> Hash
    #   resp.time_based_auto_scaling_configurations[0].auto_scaling_schedule.tuesday["Hour"] #=> String
    #   resp.time_based_auto_scaling_configurations[0].auto_scaling_schedule.wednesday #=> Hash
    #   resp.time_based_auto_scaling_configurations[0].auto_scaling_schedule.wednesday["Hour"] #=> String
    #   resp.time_based_auto_scaling_configurations[0].auto_scaling_schedule.thursday #=> Hash
    #   resp.time_based_auto_scaling_configurations[0].auto_scaling_schedule.thursday["Hour"] #=> String
    #   resp.time_based_auto_scaling_configurations[0].auto_scaling_schedule.friday #=> Hash
    #   resp.time_based_auto_scaling_configurations[0].auto_scaling_schedule.friday["Hour"] #=> String
    #   resp.time_based_auto_scaling_configurations[0].auto_scaling_schedule.saturday #=> Hash
    #   resp.time_based_auto_scaling_configurations[0].auto_scaling_schedule.saturday["Hour"] #=> String
    #   resp.time_based_auto_scaling_configurations[0].auto_scaling_schedule.sunday #=> Hash
    #   resp.time_based_auto_scaling_configurations[0].auto_scaling_schedule.sunday["Hour"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeTimeBasedAutoScaling AWS API Documentation
    #
    # @overload describe_time_based_auto_scaling(params = {})
    # @param [Hash] params ({})
    def describe_time_based_auto_scaling(params = {}, options = {})
      req = build_request(:describe_time_based_auto_scaling, params)
      req.send_request(options)
    end

    # Describe specified users.
    #
    # **Required Permissions**\: To use this action, an IAM user must have
    # an attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [Array<String>] :iam_user_arns
    #   An array of IAM or federated user ARNs that identify the users to be
    #   described.
    #
    # @return [Types::DescribeUserProfilesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserProfilesResult#user_profiles #user_profiles} => Array&lt;Types::UserProfile&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_profiles({
    #     iam_user_arns: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.user_profiles #=> Array
    #   resp.user_profiles[0].iam_user_arn #=> String
    #   resp.user_profiles[0].name #=> String
    #   resp.user_profiles[0].ssh_username #=> String
    #   resp.user_profiles[0].ssh_public_key #=> String
    #   resp.user_profiles[0].allow_self_management #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeUserProfiles AWS API Documentation
    #
    # @overload describe_user_profiles(params = {})
    # @param [Hash] params ({})
    def describe_user_profiles(params = {}, options = {})
      req = build_request(:describe_user_profiles, params)
      req.send_request(options)
    end

    # Describes an instance's Amazon EBS volumes.
    #
    # <note markdown="1"> This call accepts only one resource-identifying parameter.
    #
    #  </note>
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Show, Deploy, or Manage permissions level for the stack, or an
    # attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [String] :instance_id
    #   The instance ID. If you use this parameter, `DescribeVolumes` returns
    #   descriptions of the volumes associated with the specified instance.
    #
    # @option params [String] :stack_id
    #   A stack ID. The action describes the stack's registered Amazon EBS
    #   volumes.
    #
    # @option params [String] :raid_array_id
    #   The RAID array ID. If you use this parameter, `DescribeVolumes`
    #   returns descriptions of the volumes associated with the specified RAID
    #   array.
    #
    # @option params [Array<String>] :volume_ids
    #   Am array of volume IDs. If you use this parameter, `DescribeVolumes`
    #   returns descriptions of the specified volumes. Otherwise, it returns a
    #   description of every volume.
    #
    # @return [Types::DescribeVolumesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVolumesResult#volumes #volumes} => Array&lt;Types::Volume&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_volumes({
    #     instance_id: "String",
    #     stack_id: "String",
    #     raid_array_id: "String",
    #     volume_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.volumes #=> Array
    #   resp.volumes[0].volume_id #=> String
    #   resp.volumes[0].ec2_volume_id #=> String
    #   resp.volumes[0].name #=> String
    #   resp.volumes[0].raid_array_id #=> String
    #   resp.volumes[0].instance_id #=> String
    #   resp.volumes[0].status #=> String
    #   resp.volumes[0].size #=> Integer
    #   resp.volumes[0].device #=> String
    #   resp.volumes[0].mount_point #=> String
    #   resp.volumes[0].region #=> String
    #   resp.volumes[0].availability_zone #=> String
    #   resp.volumes[0].volume_type #=> String
    #   resp.volumes[0].iops #=> Integer
    #   resp.volumes[0].encrypted #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeVolumes AWS API Documentation
    #
    # @overload describe_volumes(params = {})
    # @param [Hash] params ({})
    def describe_volumes(params = {}, options = {})
      req = build_request(:describe_volumes, params)
      req.send_request(options)
    end

    # Detaches a specified Elastic Load Balancing instance from its layer.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :elastic_load_balancer_name
    #   The Elastic Load Balancing instance's name.
    #
    # @option params [required, String] :layer_id
    #   The ID of the layer that the Elastic Load Balancing instance is
    #   attached to.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_elastic_load_balancer({
    #     elastic_load_balancer_name: "String", # required
    #     layer_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DetachElasticLoadBalancer AWS API Documentation
    #
    # @overload detach_elastic_load_balancer(params = {})
    # @param [Hash] params ({})
    def detach_elastic_load_balancer(params = {}, options = {})
      req = build_request(:detach_elastic_load_balancer, params)
      req.send_request(options)
    end

    # Disassociates an Elastic IP address from its instance. The address
    # remains registered with the stack. For more information, see [Resource
    # Management][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :elastic_ip
    #   The Elastic IP address.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_elastic_ip({
    #     elastic_ip: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DisassociateElasticIp AWS API Documentation
    #
    # @overload disassociate_elastic_ip(params = {})
    # @param [Hash] params ({})
    def disassociate_elastic_ip(params = {}, options = {})
      req = build_request(:disassociate_elastic_ip, params)
      req.send_request(options)
    end

    # Gets a generated host name for the specified layer, based on the
    # current host name theme.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :layer_id
    #   The layer ID.
    #
    # @return [Types::GetHostnameSuggestionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHostnameSuggestionResult#layer_id #layer_id} => String
    #   * {Types::GetHostnameSuggestionResult#hostname #hostname} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_hostname_suggestion({
    #     layer_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.layer_id #=> String
    #   resp.hostname #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/GetHostnameSuggestion AWS API Documentation
    #
    # @overload get_hostname_suggestion(params = {})
    # @param [Hash] params ({})
    def get_hostname_suggestion(params = {}, options = {})
      req = build_request(:get_hostname_suggestion, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action can be used only with Windows stacks.
    #
    #  </note>
    #
    # Grants RDP access to a Windows instance for a specified time period.
    #
    # @option params [required, String] :instance_id
    #   The instance's AWS OpsWorks Stacks ID.
    #
    # @option params [Integer] :valid_for_in_minutes
    #   The length of time (in minutes) that the grant is valid. When the
    #   grant expires at the end of this period, the user will no longer be
    #   able to use the credentials to log in. If the user is logged in at the
    #   time, he or she automatically will be logged out.
    #
    # @return [Types::GrantAccessResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GrantAccessResult#temporary_credential #temporary_credential} => Types::TemporaryCredential
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.grant_access({
    #     instance_id: "String", # required
    #     valid_for_in_minutes: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.temporary_credential.username #=> String
    #   resp.temporary_credential.password #=> String
    #   resp.temporary_credential.valid_for_in_minutes #=> Integer
    #   resp.temporary_credential.instance_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/GrantAccess AWS API Documentation
    #
    # @overload grant_access(params = {})
    # @param [Hash] params ({})
    def grant_access(params = {}, options = {})
      req = build_request(:grant_access, params)
      req.send_request(options)
    end

    # Returns a list of tags that are applied to the specified stack or
    # layer.
    #
    # @option params [required, String] :resource_arn
    #   The stack or layer's Amazon Resource Number (ARN).
    #
    # @option params [Integer] :max_results
    #   Do not use. A validation exception occurs if you add a `MaxResults`
    #   parameter to a `ListTagsRequest` call.
    #
    # @option params [String] :next_token
    #   Do not use. A validation exception occurs if you add a `NextToken`
    #   parameter to a `ListTagsRequest` call.
    #
    # @return [Types::ListTagsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResult#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::ListTagsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     resource_arn: "ResourceArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Reboots a specified instance. For more information, see [Starting,
    # Stopping, and Rebooting Instances][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :instance_id
    #   The instance ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_instance({
    #     instance_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RebootInstance AWS API Documentation
    #
    # @overload reboot_instance(params = {})
    # @param [Hash] params ({})
    def reboot_instance(params = {}, options = {})
      req = build_request(:reboot_instance, params)
      req.send_request(options)
    end

    # Registers a specified Amazon ECS cluster with a stack. You can
    # register only one cluster with a stack. A cluster can be registered
    # with only one stack. For more information, see [ Resource
    # Management][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [ Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :ecs_cluster_arn
    #   The cluster's ARN.
    #
    # @option params [required, String] :stack_id
    #   The stack ID.
    #
    # @return [Types::RegisterEcsClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterEcsClusterResult#ecs_cluster_arn #ecs_cluster_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_ecs_cluster({
    #     ecs_cluster_arn: "String", # required
    #     stack_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ecs_cluster_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterEcsCluster AWS API Documentation
    #
    # @overload register_ecs_cluster(params = {})
    # @param [Hash] params ({})
    def register_ecs_cluster(params = {}, options = {})
      req = build_request(:register_ecs_cluster, params)
      req.send_request(options)
    end

    # Registers an Elastic IP address with a specified stack. An address can
    # be registered with only one stack at a time. If the address is already
    # registered, you must first deregister it by calling
    # DeregisterElasticIp. For more information, see [Resource
    # Management][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :elastic_ip
    #   The Elastic IP address.
    #
    # @option params [required, String] :stack_id
    #   The stack ID.
    #
    # @return [Types::RegisterElasticIpResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterElasticIpResult#elastic_ip #elastic_ip} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_elastic_ip({
    #     elastic_ip: "String", # required
    #     stack_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.elastic_ip #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterElasticIp AWS API Documentation
    #
    # @overload register_elastic_ip(params = {})
    # @param [Hash] params ({})
    def register_elastic_ip(params = {}, options = {})
      req = build_request(:register_elastic_ip, params)
      req.send_request(options)
    end

    # Registers instances that were created outside of AWS OpsWorks Stacks
    # with a specified stack.
    #
    # <note markdown="1"> We do not recommend using this action to register instances. The
    # complete registration operation includes two tasks: installing the AWS
    # OpsWorks Stacks agent on the instance, and registering the instance
    # with the stack. `RegisterInstance` handles only the second step. You
    # should instead use the AWS CLI `register` command, which performs the
    # entire registration operation. For more information, see [ Registering
    # an Instance with an AWS OpsWorks Stacks Stack][1].
    #
    #  </note>
    #
    # Registered instances have the same requirements as instances that are
    # created by using the CreateInstance API. For example, registered
    # instances must be running a supported Linux-based operating system,
    # and they must have a supported instance type. For more information
    # about requirements for instances that you want to register, see [
    # Preparing the Instance][2].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][3].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register-registering-preparer.html
    # [3]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :stack_id
    #   The ID of the stack that the instance is to be registered with.
    #
    # @option params [String] :hostname
    #   The instance's hostname.
    #
    # @option params [String] :public_ip
    #   The instance's public IP address.
    #
    # @option params [String] :private_ip
    #   The instance's private IP address.
    #
    # @option params [String] :rsa_public_key
    #   The instances public RSA key. This key is used to encrypt
    #   communication between the instance and the service.
    #
    # @option params [String] :rsa_public_key_fingerprint
    #   The instances public RSA key fingerprint.
    #
    # @option params [Types::InstanceIdentity] :instance_identity
    #   An InstanceIdentity object that contains the instance's identity.
    #
    # @return [Types::RegisterInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterInstanceResult#instance_id #instance_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_instance({
    #     stack_id: "String", # required
    #     hostname: "String",
    #     public_ip: "String",
    #     private_ip: "String",
    #     rsa_public_key: "String",
    #     rsa_public_key_fingerprint: "String",
    #     instance_identity: {
    #       document: "String",
    #       signature: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterInstance AWS API Documentation
    #
    # @overload register_instance(params = {})
    # @param [Hash] params ({})
    def register_instance(params = {}, options = {})
      req = build_request(:register_instance, params)
      req.send_request(options)
    end

    # Registers an Amazon RDS instance with a stack.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :stack_id
    #   The stack ID.
    #
    # @option params [required, String] :rds_db_instance_arn
    #   The Amazon RDS instance's ARN.
    #
    # @option params [required, String] :db_user
    #   The database's master user name.
    #
    # @option params [required, String] :db_password
    #   The database password.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_rds_db_instance({
    #     stack_id: "String", # required
    #     rds_db_instance_arn: "String", # required
    #     db_user: "String", # required
    #     db_password: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterRdsDbInstance AWS API Documentation
    #
    # @overload register_rds_db_instance(params = {})
    # @param [Hash] params ({})
    def register_rds_db_instance(params = {}, options = {})
      req = build_request(:register_rds_db_instance, params)
      req.send_request(options)
    end

    # Registers an Amazon EBS volume with a specified stack. A volume can be
    # registered with only one stack at a time. If the volume is already
    # registered, you must first deregister it by calling DeregisterVolume.
    # For more information, see [Resource Management][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [String] :ec2_volume_id
    #   The Amazon EBS volume ID.
    #
    # @option params [required, String] :stack_id
    #   The stack ID.
    #
    # @return [Types::RegisterVolumeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterVolumeResult#volume_id #volume_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_volume({
    #     ec2_volume_id: "String",
    #     stack_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.volume_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterVolume AWS API Documentation
    #
    # @overload register_volume(params = {})
    # @param [Hash] params ({})
    def register_volume(params = {}, options = {})
      req = build_request(:register_volume, params)
      req.send_request(options)
    end

    # Specify the load-based auto scaling configuration for a specified
    # layer. For more information, see [Managing Load with Time-based and
    # Load-based Instances][1].
    #
    # <note markdown="1"> To use load-based auto scaling, you must create a set of load-based
    # auto scaling instances. Load-based auto scaling operates only on the
    # instances from that set, so you must ensure that you have created
    # enough instances to handle the maximum anticipated load.
    #
    #  </note>
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :layer_id
    #   The layer ID.
    #
    # @option params [Boolean] :enable
    #   Enables load-based auto scaling for the layer.
    #
    # @option params [Types::AutoScalingThresholds] :up_scaling
    #   An `AutoScalingThresholds` object with the upscaling threshold
    #   configuration. If the load exceeds these thresholds for a specified
    #   amount of time, AWS OpsWorks Stacks starts a specified number of
    #   instances.
    #
    # @option params [Types::AutoScalingThresholds] :down_scaling
    #   An `AutoScalingThresholds` object with the downscaling threshold
    #   configuration. If the load falls below these thresholds for a
    #   specified amount of time, AWS OpsWorks Stacks stops a specified number
    #   of instances.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_load_based_auto_scaling({
    #     layer_id: "String", # required
    #     enable: false,
    #     up_scaling: {
    #       instance_count: 1,
    #       thresholds_wait_time: 1,
    #       ignore_metrics_time: 1,
    #       cpu_threshold: 1.0,
    #       memory_threshold: 1.0,
    #       load_threshold: 1.0,
    #       alarms: ["String"],
    #     },
    #     down_scaling: {
    #       instance_count: 1,
    #       thresholds_wait_time: 1,
    #       ignore_metrics_time: 1,
    #       cpu_threshold: 1.0,
    #       memory_threshold: 1.0,
    #       load_threshold: 1.0,
    #       alarms: ["String"],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/SetLoadBasedAutoScaling AWS API Documentation
    #
    # @overload set_load_based_auto_scaling(params = {})
    # @param [Hash] params ({})
    def set_load_based_auto_scaling(params = {}, options = {})
      req = build_request(:set_load_based_auto_scaling, params)
      req.send_request(options)
    end

    # Specifies a user's permissions. For more information, see [Security
    # and Permissions][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :stack_id
    #   The stack ID.
    #
    # @option params [required, String] :iam_user_arn
    #   The user's IAM ARN. This can also be a federated user's ARN.
    #
    # @option params [Boolean] :allow_ssh
    #   The user is allowed to use SSH to communicate with the instance.
    #
    # @option params [Boolean] :allow_sudo
    #   The user is allowed to use **sudo** to elevate privileges.
    #
    # @option params [String] :level
    #   The user's permission level, which must be set to one of the
    #   following strings. You cannot set your own permissions level.
    #
    #   * `deny`
    #
    #   * `show`
    #
    #   * `deploy`
    #
    #   * `manage`
    #
    #   * `iam_only`
    #
    #   For more information about the permissions associated with these
    #   levels, see [Managing User Permissions][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_permission({
    #     stack_id: "String", # required
    #     iam_user_arn: "String", # required
    #     allow_ssh: false,
    #     allow_sudo: false,
    #     level: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/SetPermission AWS API Documentation
    #
    # @overload set_permission(params = {})
    # @param [Hash] params ({})
    def set_permission(params = {}, options = {})
      req = build_request(:set_permission, params)
      req.send_request(options)
    end

    # Specify the time-based auto scaling configuration for a specified
    # instance. For more information, see [Managing Load with Time-based and
    # Load-based Instances][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :instance_id
    #   The instance ID.
    #
    # @option params [Types::WeeklyAutoScalingSchedule] :auto_scaling_schedule
    #   An `AutoScalingSchedule` with the instance schedule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_time_based_auto_scaling({
    #     instance_id: "String", # required
    #     auto_scaling_schedule: {
    #       monday: {
    #         "Hour" => "Switch",
    #       },
    #       tuesday: {
    #         "Hour" => "Switch",
    #       },
    #       wednesday: {
    #         "Hour" => "Switch",
    #       },
    #       thursday: {
    #         "Hour" => "Switch",
    #       },
    #       friday: {
    #         "Hour" => "Switch",
    #       },
    #       saturday: {
    #         "Hour" => "Switch",
    #       },
    #       sunday: {
    #         "Hour" => "Switch",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/SetTimeBasedAutoScaling AWS API Documentation
    #
    # @overload set_time_based_auto_scaling(params = {})
    # @param [Hash] params ({})
    def set_time_based_auto_scaling(params = {}, options = {})
      req = build_request(:set_time_based_auto_scaling, params)
      req.send_request(options)
    end

    # Starts a specified instance. For more information, see [Starting,
    # Stopping, and Rebooting Instances][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :instance_id
    #   The instance ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_instance({
    #     instance_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/StartInstance AWS API Documentation
    #
    # @overload start_instance(params = {})
    # @param [Hash] params ({})
    def start_instance(params = {}, options = {})
      req = build_request(:start_instance, params)
      req.send_request(options)
    end

    # Starts a stack's instances.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :stack_id
    #   The stack ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_stack({
    #     stack_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/StartStack AWS API Documentation
    #
    # @overload start_stack(params = {})
    # @param [Hash] params ({})
    def start_stack(params = {}, options = {})
      req = build_request(:start_stack, params)
      req.send_request(options)
    end

    # Stops a specified instance. When you stop a standard instance, the
    # data disappears and must be reinstalled when you restart the instance.
    # You can stop an Amazon EBS-backed instance without losing data. For
    # more information, see [Starting, Stopping, and Rebooting
    # Instances][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :instance_id
    #   The instance ID.
    #
    # @option params [Boolean] :force
    #   Specifies whether to force an instance to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_instance({
    #     instance_id: "String", # required
    #     force: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/StopInstance AWS API Documentation
    #
    # @overload stop_instance(params = {})
    # @param [Hash] params ({})
    def stop_instance(params = {}, options = {})
      req = build_request(:stop_instance, params)
      req.send_request(options)
    end

    # Stops a specified stack.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :stack_id
    #   The stack ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_stack({
    #     stack_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/StopStack AWS API Documentation
    #
    # @overload stop_stack(params = {})
    # @param [Hash] params ({})
    def stop_stack(params = {}, options = {})
      req = build_request(:stop_stack, params)
      req.send_request(options)
    end

    # Apply cost-allocation tags to a specified stack or layer in AWS
    # OpsWorks Stacks. For more information about how tagging works, see
    # [Tags][1] in the AWS OpsWorks User Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The stack or layer's Amazon Resource Number (ARN).
    #
    # @option params [required, Hash<String,String>] :tags
    #   A map that contains tag keys and tag values that are attached to a
    #   stack or layer.
    #
    #   * The key cannot be empty.
    #
    #   * The key can be a maximum of 127 characters, and can contain only
    #     Unicode letters, numbers, or separators, or the following special
    #     characters: `+ - = . _ : /`
    #
    #   * The value can be a maximum 255 characters, and contain only Unicode
    #     letters, numbers, or separators, or the following special
    #     characters: `+ - = . _ : /`
    #
    #   * Leading and trailing white spaces are trimmed from both the key and
    #     value.
    #
    #   * A maximum of 40 tags is allowed for any resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Unassigns a registered instance from all layers that are using the
    # instance. The instance remains in the stack as an unassigned instance,
    # and can be assigned to another layer as needed. You cannot use this
    # action with instances that were created with AWS OpsWorks Stacks.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack or an attached policy that
    # explicitly grants permissions. For more information about user
    # permissions, see [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :instance_id
    #   The instance ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unassign_instance({
    #     instance_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UnassignInstance AWS API Documentation
    #
    # @overload unassign_instance(params = {})
    # @param [Hash] params ({})
    def unassign_instance(params = {}, options = {})
      req = build_request(:unassign_instance, params)
      req.send_request(options)
    end

    # Unassigns an assigned Amazon EBS volume. The volume remains registered
    # with the stack. For more information, see [Resource Management][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :volume_id
    #   The volume ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unassign_volume({
    #     volume_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UnassignVolume AWS API Documentation
    #
    # @overload unassign_volume(params = {})
    # @param [Hash] params ({})
    def unassign_volume(params = {}, options = {})
      req = build_request(:unassign_volume, params)
      req.send_request(options)
    end

    # Removes tags from a specified stack or layer.
    #
    # @option params [required, String] :resource_arn
    #   The stack or layer's Amazon Resource Number (ARN).
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of the keys of tags to be removed from a stack or layer.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a specified app.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Deploy or Manage permissions level for the stack, or an attached
    # policy that explicitly grants permissions. For more information on
    # user permissions, see [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :app_id
    #   The app ID.
    #
    # @option params [String] :name
    #   The app name.
    #
    # @option params [String] :description
    #   A description of the app.
    #
    # @option params [Array<Types::DataSource>] :data_sources
    #   The app's data sources.
    #
    # @option params [String] :type
    #   The app type.
    #
    # @option params [Types::Source] :app_source
    #   A `Source` object that specifies the app repository.
    #
    # @option params [Array<String>] :domains
    #   The app's virtual host settings, with multiple domains separated by
    #   commas. For example: `'www.example.com, example.com'`
    #
    # @option params [Boolean] :enable_ssl
    #   Whether SSL is enabled for the app.
    #
    # @option params [Types::SslConfiguration] :ssl_configuration
    #   An `SslConfiguration` object with the SSL configuration.
    #
    # @option params [Hash<String,String>] :attributes
    #   One or more user-defined key/value pairs to be added to the stack
    #   attributes.
    #
    # @option params [Array<Types::EnvironmentVariable>] :environment
    #   An array of `EnvironmentVariable` objects that specify environment
    #   variables to be associated with the app. After you deploy the app,
    #   these variables are defined on the associated app server instances.For
    #   more information, see [ Environment Variables][1].
    #
    #   There is no specific limit on the number of environment variables.
    #   However, the size of the associated data structure - which includes
    #   the variables' names, values, and protected flag values - cannot
    #   exceed 10 KB (10240 Bytes). This limit should accommodate most if not
    #   all use cases. Exceeding it will cause an exception with the message,
    #   "Environment: is too large (maximum is 10KB)."
    #
    #   <note markdown="1"> This parameter is supported only by Chef 11.10 stacks. If you have
    #   specified one or more environment variables, you cannot modify the
    #   stack's Chef version.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app({
    #     app_id: "String", # required
    #     name: "String",
    #     description: "String",
    #     data_sources: [
    #       {
    #         type: "String",
    #         arn: "String",
    #         database_name: "String",
    #       },
    #     ],
    #     type: "aws-flow-ruby", # accepts aws-flow-ruby, java, rails, php, nodejs, static, other
    #     app_source: {
    #       type: "git", # accepts git, svn, archive, s3
    #       url: "String",
    #       username: "String",
    #       password: "String",
    #       ssh_key: "String",
    #       revision: "String",
    #     },
    #     domains: ["String"],
    #     enable_ssl: false,
    #     ssl_configuration: {
    #       certificate: "String", # required
    #       private_key: "String", # required
    #       chain: "String",
    #     },
    #     attributes: {
    #       "DocumentRoot" => "String",
    #     },
    #     environment: [
    #       {
    #         key: "String", # required
    #         value: "String", # required
    #         secure: false,
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateApp AWS API Documentation
    #
    # @overload update_app(params = {})
    # @param [Hash] params ({})
    def update_app(params = {}, options = {})
      req = build_request(:update_app, params)
      req.send_request(options)
    end

    # Updates a registered Elastic IP address's name. For more information,
    # see [Resource Management][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :elastic_ip
    #   The IP address for which you want to update the name.
    #
    # @option params [String] :name
    #   The new name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_elastic_ip({
    #     elastic_ip: "String", # required
    #     name: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateElasticIp AWS API Documentation
    #
    # @overload update_elastic_ip(params = {})
    # @param [Hash] params ({})
    def update_elastic_ip(params = {}, options = {})
      req = build_request(:update_elastic_ip, params)
      req.send_request(options)
    end

    # Updates a specified instance.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :instance_id
    #   The instance ID.
    #
    # @option params [Array<String>] :layer_ids
    #   The instance's layer IDs.
    #
    # @option params [String] :instance_type
    #   The instance type, such as `t2.micro`. For a list of supported
    #   instance types, open the stack in the console, choose **Instances**,
    #   and choose **+ Instance**. The **Size** list contains the currently
    #   supported types. For more information, see [Instance Families and
    #   Types][1]. The parameter values that you use to specify the various
    #   types are in the **API Name** column of the **Available Instance
    #   Types** table.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #
    # @option params [String] :auto_scaling_type
    #   For load-based or time-based instances, the type. Windows stacks can
    #   use only time-based instances.
    #
    # @option params [String] :hostname
    #   The instance host name.
    #
    # @option params [String] :os
    #   The instance's operating system, which must be set to one of the
    #   following. You cannot update an instance that is using a custom AMI.
    #
    #   * A supported Linux operating system: An Amazon Linux version, such as
    #     `Amazon Linux 2017.09`, `Amazon Linux 2017.03`, `Amazon Linux
    #     2016.09`, `Amazon Linux 2016.03`, `Amazon Linux 2015.09`, or `Amazon
    #     Linux 2015.03`.
    #
    #   * A supported Ubuntu operating system, such as `Ubuntu 16.04 LTS`,
    #     `Ubuntu 14.04 LTS`, or `Ubuntu 12.04 LTS`.
    #
    #   * `CentOS Linux 7`
    #
    #   * `Red Hat Enterprise Linux 7`
    #
    #   * A supported Windows operating system, such as `Microsoft Windows
    #     Server 2012 R2 Base`, `Microsoft Windows Server 2012 R2 with SQL
    #     Server Express`, `Microsoft Windows Server 2012 R2 with SQL Server
    #     Standard`, or `Microsoft Windows Server 2012 R2 with SQL Server
    #     Web`.
    #
    #   For more information about supported operating systems, see [AWS
    #   OpsWorks Stacks Operating Systems][1].
    #
    #   The default option is the current Amazon Linux version. If you set
    #   this parameter to `Custom`, you must use the AmiId parameter to
    #   specify the custom AMI that you want to use. For more information
    #   about supported operating systems, see [Operating Systems][1]. For
    #   more information about how to use custom AMIs with OpsWorks, see
    #   [Using Custom AMIs][2].
    #
    #   <note markdown="1"> You can specify a different Linux operating system for the updated
    #   stack, but you cannot change from Linux to Windows or Windows to
    #   Linux.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html
    #   [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html
    #
    # @option params [String] :ami_id
    #   The ID of the AMI that was used to create the instance. The value of
    #   this parameter must be the same AMI ID that the instance is already
    #   using. You cannot apply a new AMI to an instance by running
    #   UpdateInstance. UpdateInstance does not work on instances that are
    #   using custom AMIs.
    #
    # @option params [String] :ssh_key_name
    #   The instance's Amazon EC2 key name.
    #
    # @option params [String] :architecture
    #   The instance architecture. Instance types do not necessarily support
    #   both architectures. For a list of the architectures that are supported
    #   by the different instance types, see [Instance Families and Types][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #
    # @option params [Boolean] :install_updates_on_boot
    #   Whether to install operating system and package updates when the
    #   instance boots. The default value is `true`. To control when updates
    #   are installed, set this value to `false`. You must then update your
    #   instances manually by using CreateDeployment to run the
    #   `update_dependencies` stack command or by manually running `yum`
    #   (Amazon Linux) or `apt-get` (Ubuntu) on the instances.
    #
    #   <note markdown="1"> We strongly recommend using the default value of `true`, to ensure
    #   that your instances have the latest security updates.
    #
    #    </note>
    #
    # @option params [Boolean] :ebs_optimized
    #   This property cannot be updated.
    #
    # @option params [String] :agent_version
    #   The default AWS OpsWorks Stacks agent version. You have the following
    #   options:
    #
    #   * `INHERIT` - Use the stack's default agent version setting.
    #
    #   * *version\_number* - Use the specified agent version. This value
    #     overrides the stack's default setting. To update the agent version,
    #     you must edit the instance configuration and specify a new version.
    #     AWS OpsWorks Stacks then automatically installs that version on the
    #     instance.
    #
    #   The default setting is `INHERIT`. To specify an agent version, you
    #   must use the complete version number, not the abbreviated number shown
    #   on the console. For a list of available agent version numbers, call
    #   DescribeAgentVersions.
    #
    #   AgentVersion cannot be set to Chef 12.2.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_instance({
    #     instance_id: "String", # required
    #     layer_ids: ["String"],
    #     instance_type: "String",
    #     auto_scaling_type: "load", # accepts load, timer
    #     hostname: "String",
    #     os: "String",
    #     ami_id: "String",
    #     ssh_key_name: "String",
    #     architecture: "x86_64", # accepts x86_64, i386
    #     install_updates_on_boot: false,
    #     ebs_optimized: false,
    #     agent_version: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateInstance AWS API Documentation
    #
    # @overload update_instance(params = {})
    # @param [Hash] params ({})
    def update_instance(params = {}, options = {})
      req = build_request(:update_instance, params)
      req.send_request(options)
    end

    # Updates a specified layer.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :layer_id
    #   The layer ID.
    #
    # @option params [String] :name
    #   The layer name, which is used by the console.
    #
    # @option params [String] :shortname
    #   For custom layers only, use this parameter to specify the layer's
    #   short name, which is used internally by AWS OpsWorks Stacks and by
    #   Chef. The short name is also used as the name for the directory where
    #   your app files are installed. It can have a maximum of 200 characters
    #   and must be in the following format: /\\A\[a-z0-9\\-\\\_\\.\]+\\Z/.
    #
    #   The built-in layers' short names are defined by AWS OpsWorks Stacks.
    #   For more information, see the [Layer Reference][1]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/layers.html
    #
    # @option params [Hash<String,String>] :attributes
    #   One or more user-defined key/value pairs to be added to the stack
    #   attributes.
    #
    # @option params [Types::CloudWatchLogsConfiguration] :cloud_watch_logs_configuration
    #   Specifies CloudWatch Logs configuration options for the layer. For
    #   more information, see CloudWatchLogsLogStream.
    #
    # @option params [String] :custom_instance_profile_arn
    #   The ARN of an IAM profile to be used for all of the layer's EC2
    #   instances. For more information about IAM ARNs, see [Using
    #   Identifiers][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #
    # @option params [String] :custom_json
    #   A JSON-formatted string containing custom stack configuration and
    #   deployment attributes to be installed on the layer's instances. For
    #   more information, see [ Using Custom JSON][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html
    #
    # @option params [Array<String>] :custom_security_group_ids
    #   An array containing the layer's custom security group IDs.
    #
    # @option params [Array<String>] :packages
    #   An array of `Package` objects that describe the layer's packages.
    #
    # @option params [Array<Types::VolumeConfiguration>] :volume_configurations
    #   A `VolumeConfigurations` object that describes the layer's Amazon EBS
    #   volumes.
    #
    # @option params [Boolean] :enable_auto_healing
    #   Whether to disable auto healing for the layer.
    #
    # @option params [Boolean] :auto_assign_elastic_ips
    #   Whether to automatically assign an [Elastic IP address][1] to the
    #   layer's instances. For more information, see [How to Edit a
    #   Layer][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
    #   [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html
    #
    # @option params [Boolean] :auto_assign_public_ips
    #   For stacks that are running in a VPC, whether to automatically assign
    #   a public IP address to the layer's instances. For more information,
    #   see [How to Edit a Layer][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html
    #
    # @option params [Types::Recipes] :custom_recipes
    #   A `LayerCustomRecipes` object that specifies the layer's custom
    #   recipes.
    #
    # @option params [Boolean] :install_updates_on_boot
    #   Whether to install operating system and package updates when the
    #   instance boots. The default value is `true`. To control when updates
    #   are installed, set this value to `false`. You must then update your
    #   instances manually by using CreateDeployment to run the
    #   `update_dependencies` stack command or manually running `yum` (Amazon
    #   Linux) or `apt-get` (Ubuntu) on the instances.
    #
    #   <note markdown="1"> We strongly recommend using the default value of `true`, to ensure
    #   that your instances have the latest security updates.
    #
    #    </note>
    #
    # @option params [Boolean] :use_ebs_optimized_instances
    #   Whether to use Amazon EBS-optimized instances.
    #
    # @option params [Types::LifecycleEventConfiguration] :lifecycle_event_configuration
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_layer({
    #     layer_id: "String", # required
    #     name: "String",
    #     shortname: "String",
    #     attributes: {
    #       "EcsClusterArn" => "String",
    #     },
    #     cloud_watch_logs_configuration: {
    #       enabled: false,
    #       log_streams: [
    #         {
    #           log_group_name: "String",
    #           datetime_format: "String",
    #           time_zone: "LOCAL", # accepts LOCAL, UTC
    #           file: "String",
    #           file_fingerprint_lines: "String",
    #           multi_line_start_pattern: "String",
    #           initial_position: "start_of_file", # accepts start_of_file, end_of_file
    #           encoding: "ascii", # accepts ascii, big5, big5hkscs, cp037, cp424, cp437, cp500, cp720, cp737, cp775, cp850, cp852, cp855, cp856, cp857, cp858, cp860, cp861, cp862, cp863, cp864, cp865, cp866, cp869, cp874, cp875, cp932, cp949, cp950, cp1006, cp1026, cp1140, cp1250, cp1251, cp1252, cp1253, cp1254, cp1255, cp1256, cp1257, cp1258, euc_jp, euc_jis_2004, euc_jisx0213, euc_kr, gb2312, gbk, gb18030, hz, iso2022_jp, iso2022_jp_1, iso2022_jp_2, iso2022_jp_2004, iso2022_jp_3, iso2022_jp_ext, iso2022_kr, latin_1, iso8859_2, iso8859_3, iso8859_4, iso8859_5, iso8859_6, iso8859_7, iso8859_8, iso8859_9, iso8859_10, iso8859_13, iso8859_14, iso8859_15, iso8859_16, johab, koi8_r, koi8_u, mac_cyrillic, mac_greek, mac_iceland, mac_latin2, mac_roman, mac_turkish, ptcp154, shift_jis, shift_jis_2004, shift_jisx0213, utf_32, utf_32_be, utf_32_le, utf_16, utf_16_be, utf_16_le, utf_7, utf_8, utf_8_sig
    #           buffer_duration: 1,
    #           batch_count: 1,
    #           batch_size: 1,
    #         },
    #       ],
    #     },
    #     custom_instance_profile_arn: "String",
    #     custom_json: "String",
    #     custom_security_group_ids: ["String"],
    #     packages: ["String"],
    #     volume_configurations: [
    #       {
    #         mount_point: "String", # required
    #         raid_level: 1,
    #         number_of_disks: 1, # required
    #         size: 1, # required
    #         volume_type: "String",
    #         iops: 1,
    #         encrypted: false,
    #       },
    #     ],
    #     enable_auto_healing: false,
    #     auto_assign_elastic_ips: false,
    #     auto_assign_public_ips: false,
    #     custom_recipes: {
    #       setup: ["String"],
    #       configure: ["String"],
    #       deploy: ["String"],
    #       undeploy: ["String"],
    #       shutdown: ["String"],
    #     },
    #     install_updates_on_boot: false,
    #     use_ebs_optimized_instances: false,
    #     lifecycle_event_configuration: {
    #       shutdown: {
    #         execution_timeout: 1,
    #         delay_until_elb_connections_drained: false,
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateLayer AWS API Documentation
    #
    # @overload update_layer(params = {})
    # @param [Hash] params ({})
    def update_layer(params = {}, options = {})
      req = build_request(:update_layer, params)
      req.send_request(options)
    end

    # Updates a user's SSH public key.
    #
    # **Required Permissions**\: To use this action, an IAM user must have
    # self-management enabled or an attached policy that explicitly grants
    # permissions. For more information about user permissions, see
    # [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [String] :ssh_public_key
    #   The user's SSH public key.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_my_user_profile({
    #     ssh_public_key: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateMyUserProfile AWS API Documentation
    #
    # @overload update_my_user_profile(params = {})
    # @param [Hash] params ({})
    def update_my_user_profile(params = {}, options = {})
      req = build_request(:update_my_user_profile, params)
      req.send_request(options)
    end

    # Updates an Amazon RDS instance.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :rds_db_instance_arn
    #   The Amazon RDS instance's ARN.
    #
    # @option params [String] :db_user
    #   The master user name.
    #
    # @option params [String] :db_password
    #   The database password.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rds_db_instance({
    #     rds_db_instance_arn: "String", # required
    #     db_user: "String",
    #     db_password: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateRdsDbInstance AWS API Documentation
    #
    # @overload update_rds_db_instance(params = {})
    # @param [Hash] params ({})
    def update_rds_db_instance(params = {}, options = {})
      req = build_request(:update_rds_db_instance, params)
      req.send_request(options)
    end

    # Updates a specified stack.
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :stack_id
    #   The stack ID.
    #
    # @option params [String] :name
    #   The stack's new name.
    #
    # @option params [Hash<String,String>] :attributes
    #   One or more user-defined key-value pairs to be added to the stack
    #   attributes.
    #
    # @option params [String] :service_role_arn
    #   Do not use this parameter. You cannot update a stack's service role.
    #
    # @option params [String] :default_instance_profile_arn
    #   The ARN of an IAM profile that is the default profile for all of the
    #   stack's EC2 instances. For more information about IAM ARNs, see
    #   [Using Identifiers][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #
    # @option params [String] :default_os
    #   The stack's operating system, which must be set to one of the
    #   following:
    #
    #   * A supported Linux operating system: An Amazon Linux version, such as
    #     `Amazon Linux 2017.09`, `Amazon Linux 2017.03`, `Amazon Linux
    #     2016.09`, `Amazon Linux 2016.03`, `Amazon Linux 2015.09`, or `Amazon
    #     Linux 2015.03`.
    #
    #   * A supported Ubuntu operating system, such as `Ubuntu 16.04 LTS`,
    #     `Ubuntu 14.04 LTS`, or `Ubuntu 12.04 LTS`.
    #
    #   * `CentOS Linux 7`
    #
    #   * `Red Hat Enterprise Linux 7`
    #
    #   * A supported Windows operating system, such as `Microsoft Windows
    #     Server 2012 R2 Base`, `Microsoft Windows Server 2012 R2 with SQL
    #     Server Express`, `Microsoft Windows Server 2012 R2 with SQL Server
    #     Standard`, or `Microsoft Windows Server 2012 R2 with SQL Server
    #     Web`.
    #
    #   * A custom AMI: `Custom`. You specify the custom AMI you want to use
    #     when you create instances. For more information about how to use
    #     custom AMIs with OpsWorks, see [Using Custom AMIs][1].
    #
    #   The default option is the stack's current operating system. For more
    #   information about supported operating systems, see [AWS OpsWorks
    #   Stacks Operating Systems][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html
    #   [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html
    #
    # @option params [String] :hostname_theme
    #   The stack's new host name theme, with spaces replaced by underscores.
    #   The theme is used to generate host names for the stack's instances.
    #   By default, `HostnameTheme` is set to `Layer_Dependent`, which creates
    #   host names by appending integers to the layer's short name. The other
    #   themes are:
    #
    #   * `Baked_Goods`
    #
    #   * `Clouds`
    #
    #   * `Europe_Cities`
    #
    #   * `Fruits`
    #
    #   * `Greek_Deities`
    #
    #   * `Legendary_creatures_from_Japan`
    #
    #   * `Planets_and_Moons`
    #
    #   * `Roman_Deities`
    #
    #   * `Scottish_Islands`
    #
    #   * `US_Cities`
    #
    #   * `Wild_Cats`
    #
    #   To obtain a generated host name, call `GetHostNameSuggestion`, which
    #   returns a host name based on the current theme.
    #
    # @option params [String] :default_availability_zone
    #   The stack's default Availability Zone, which must be in the stack's
    #   region. For more information, see [Regions and Endpoints][1]. If you
    #   also specify a value for `DefaultSubnetId`, the subnet must be in the
    #   same zone. For more information, see CreateStack.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html
    #
    # @option params [String] :default_subnet_id
    #   The stack's default VPC subnet ID. This parameter is required if you
    #   specify a value for the `VpcId` parameter. All instances are launched
    #   into this subnet unless you specify otherwise when you create the
    #   instance. If you also specify a value for `DefaultAvailabilityZone`,
    #   the subnet must be in that zone. For information on default values and
    #   when this parameter is required, see the `VpcId` parameter
    #   description.
    #
    # @option params [String] :custom_json
    #   A string that contains user-defined, custom JSON. It can be used to
    #   override the corresponding default stack configuration JSON values or
    #   to pass data to recipes. The string should be in the following format:
    #
    #   `"\{"key1": "value1", "key2": "value2",...\}"`
    #
    #   For more information about custom JSON, see [Use Custom JSON to Modify
    #   the Stack Configuration Attributes][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html
    #
    # @option params [Types::StackConfigurationManager] :configuration_manager
    #   The configuration manager. When you update a stack, we recommend that
    #   you use the configuration manager to specify the Chef version: 12,
    #   11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The
    #   default value for Linux stacks is currently 12.
    #
    # @option params [Types::ChefConfiguration] :chef_configuration
    #   A `ChefConfiguration` object that specifies whether to enable
    #   Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more
    #   information, see [Create a New Stack][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html
    #
    # @option params [Boolean] :use_custom_cookbooks
    #   Whether the stack uses custom cookbooks.
    #
    # @option params [Types::Source] :custom_cookbooks_source
    #   Contains the information required to retrieve an app or cookbook from
    #   a repository. For more information, see [Creating Apps][1] or [Custom
    #   Recipes and Cookbooks][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html
    #   [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html
    #
    # @option params [String] :default_ssh_key_name
    #   A default Amazon EC2 key-pair name. The default value is `none`. If
    #   you specify a key-pair name, AWS OpsWorks Stacks installs the public
    #   key on the instance and you can use the private key with an SSH client
    #   to log in to the instance. For more information, see [ Using SSH to
    #   Communicate with an Instance][1] and [ Managing SSH Access][2]. You
    #   can override this setting by specifying a different key pair, or no
    #   key pair, when you [ create an instance][3].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html
    #   [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html
    #   [3]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html
    #
    # @option params [String] :default_root_device_type
    #   The default root device type. This value is used by default for all
    #   instances in the stack, but you can override it when you create an
    #   instance. For more information, see [Storage for the Root Device][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device
    #
    # @option params [Boolean] :use_opsworks_security_groups
    #   Whether to associate the AWS OpsWorks Stacks built-in security groups
    #   with the stack's layers.
    #
    #   AWS OpsWorks Stacks provides a standard set of built-in security
    #   groups, one for each layer, which are associated with layers by
    #   default. `UseOpsworksSecurityGroups` allows you to provide your own
    #   custom security groups instead of using the built-in groups.
    #   `UseOpsworksSecurityGroups` has the following settings:
    #
    #   * True - AWS OpsWorks Stacks automatically associates the appropriate
    #     built-in security group with each layer (default setting). You can
    #     associate additional security groups with a layer after you create
    #     it, but you cannot delete the built-in security group.
    #
    #   * False - AWS OpsWorks Stacks does not associate built-in security
    #     groups with layers. You must create appropriate EC2 security groups
    #     and associate a security group with each layer that you create.
    #     However, you can still manually associate a built-in security group
    #     with a layer on. Custom security groups are required only for those
    #     layers that need custom settings.
    #
    #   For more information, see [Create a New Stack][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html
    #
    # @option params [String] :agent_version
    #   The default AWS OpsWorks Stacks agent version. You have the following
    #   options:
    #
    #   * Auto-update - Set this parameter to `LATEST`. AWS OpsWorks Stacks
    #     automatically installs new agent versions on the stack's instances
    #     as soon as they are available.
    #
    #   * Fixed version - Set this parameter to your preferred agent version.
    #     To update the agent version, you must edit the stack configuration
    #     and specify a new version. AWS OpsWorks Stacks then automatically
    #     installs that version on the stack's instances.
    #
    #   The default setting is `LATEST`. To specify an agent version, you must
    #   use the complete version number, not the abbreviated number shown on
    #   the console. For a list of available agent version numbers, call
    #   DescribeAgentVersions. AgentVersion cannot be set to Chef 12.2.
    #
    #   <note markdown="1"> You can also specify an agent version when you create or update an
    #   instance, which overrides the stack's default setting.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stack({
    #     stack_id: "String", # required
    #     name: "String",
    #     attributes: {
    #       "Color" => "String",
    #     },
    #     service_role_arn: "String",
    #     default_instance_profile_arn: "String",
    #     default_os: "String",
    #     hostname_theme: "String",
    #     default_availability_zone: "String",
    #     default_subnet_id: "String",
    #     custom_json: "String",
    #     configuration_manager: {
    #       name: "String",
    #       version: "String",
    #     },
    #     chef_configuration: {
    #       manage_berkshelf: false,
    #       berkshelf_version: "String",
    #     },
    #     use_custom_cookbooks: false,
    #     custom_cookbooks_source: {
    #       type: "git", # accepts git, svn, archive, s3
    #       url: "String",
    #       username: "String",
    #       password: "String",
    #       ssh_key: "String",
    #       revision: "String",
    #     },
    #     default_ssh_key_name: "String",
    #     default_root_device_type: "ebs", # accepts ebs, instance-store
    #     use_opsworks_security_groups: false,
    #     agent_version: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateStack AWS API Documentation
    #
    # @overload update_stack(params = {})
    # @param [Hash] params ({})
    def update_stack(params = {}, options = {})
      req = build_request(:update_stack, params)
      req.send_request(options)
    end

    # Updates a specified user profile.
    #
    # **Required Permissions**\: To use this action, an IAM user must have
    # an attached policy that explicitly grants permissions. For more
    # information about user permissions, see [Managing User
    # Permissions][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :iam_user_arn
    #   The user IAM ARN. This can also be a federated user's ARN.
    #
    # @option params [String] :ssh_username
    #   The user's SSH user name. The allowable characters are \[a-z\],
    #   \[A-Z\], \[0-9\], '-', and '\_'. If the specified name includes
    #   other punctuation marks, AWS OpsWorks Stacks removes them. For
    #   example, `my.name` will be changed to `myname`. If you do not specify
    #   an SSH user name, AWS OpsWorks Stacks generates one from the IAM user
    #   name.
    #
    # @option params [String] :ssh_public_key
    #   The user's new SSH public key.
    #
    # @option params [Boolean] :allow_self_management
    #   Whether users can specify their own SSH public key through the My
    #   Settings page. For more information, see [Managing User
    #   Permissions][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_profile({
    #     iam_user_arn: "String", # required
    #     ssh_username: "String",
    #     ssh_public_key: "String",
    #     allow_self_management: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateUserProfile AWS API Documentation
    #
    # @overload update_user_profile(params = {})
    # @param [Hash] params ({})
    def update_user_profile(params = {}, options = {})
      req = build_request(:update_user_profile, params)
      req.send_request(options)
    end

    # Updates an Amazon EBS volume's name or mount point. For more
    # information, see [Resource Management][1].
    #
    # **Required Permissions**\: To use this action, an IAM user must have a
    # Manage permissions level for the stack, or an attached policy that
    # explicitly grants permissions. For more information on user
    # permissions, see [Managing User Permissions][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #
    # @option params [required, String] :volume_id
    #   The volume ID.
    #
    # @option params [String] :name
    #   The new name.
    #
    # @option params [String] :mount_point
    #   The new mount point.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_volume({
    #     volume_id: "String", # required
    #     name: "String",
    #     mount_point: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateVolume AWS API Documentation
    #
    # @overload update_volume(params = {})
    # @param [Hash] params ({})
    def update_volume(params = {}, options = {})
      req = build_request(:update_volume, params)
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
      context[:gem_name] = 'aws-sdk-opsworks'
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
    # | waiter_name           | params                  | :delay   | :max_attempts |
    # | --------------------- | ----------------------- | -------- | ------------- |
    # | app_exists            | {#describe_apps}        | 1        | 40            |
    # | deployment_successful | {#describe_deployments} | 15       | 40            |
    # | instance_online       | {#describe_instances}   | 15       | 40            |
    # | instance_registered   | {#describe_instances}   | 15       | 40            |
    # | instance_stopped      | {#describe_instances}   | 15       | 40            |
    # | instance_terminated   | {#describe_instances}   | 15       | 40            |
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
        app_exists: Waiters::AppExists,
        deployment_successful: Waiters::DeploymentSuccessful,
        instance_online: Waiters::InstanceOnline,
        instance_registered: Waiters::InstanceRegistered,
        instance_stopped: Waiters::InstanceStopped,
        instance_terminated: Waiters::InstanceTerminated
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
