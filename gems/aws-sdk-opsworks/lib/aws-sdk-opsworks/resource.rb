# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OpsWorks

  # This class provides a resource oriented interface for OpsWorks.
  # To create a resource object:
  #
  #     resource = Aws::OpsWorks::Resource.new(region: 'us-west-2')
  #
  # You can supply a client object with custom configuration that will be used for all resource operations.
  # If you do not pass `:client`, a default client will be constructed.
  #
  #     client = Aws::OpsWorks::Client.new(region: 'us-west-2')
  #     resource = Aws::OpsWorks::Resource.new(client: client)
  #
  class Resource

    # @param options ({})
    # @option options [Client] :client
    def initialize(options = {})
      @client = options[:client] || Client.new(options)
    end

    # @return [Client]
    def client
      @client
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   stack = ops_works.create_stack({
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
    # @param [Hash] options ({})
    # @option options [required, String] :name
    #   The stack name.
    # @option options [required, String] :region
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
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html
    # @option options [String] :vpc_id
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
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html
    # @option options [Hash<String,String>] :attributes
    #   One or more user-defined key-value pairs to be added to the stack
    #   attributes.
    # @option options [required, String] :service_role_arn
    #   The stack's AWS Identity and Access Management (IAM) role, which
    #   allows AWS OpsWorks Stacks to work with AWS resources on your behalf.
    #   You must set this parameter to the Amazon Resource Name (ARN) for an
    #   existing IAM role. For more information about IAM ARNs, see [Using
    #   Identifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @option options [required, String] :default_instance_profile_arn
    #   The Amazon Resource Name (ARN) of an IAM profile that is the default
    #   profile for all of the stack's EC2 instances. For more information
    #   about IAM ARNs, see [Using Identifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @option options [String] :default_os
    #   The stack's default operating system, which is installed on every
    #   instance unless you specify a different operating system when you
    #   create the instance. You can specify one of the following.
    #
    #   * A supported Linux operating system: An Amazon Linux version, such as
    #     `Amazon Linux 2018.03`, `Amazon Linux 2017.09`, `Amazon Linux
    #     2017.03`, `Amazon Linux 2016.09`, `Amazon Linux 2016.03`, `Amazon
    #     Linux 2015.09`, or `Amazon Linux 2015.03`.
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
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html
    # @option options [String] :hostname_theme
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
    #   * `Greek_Deities_and_Titans`
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
    # @option options [String] :default_availability_zone
    #   The stack's default Availability Zone, which must be in the specified
    #   region. For more information, see [Regions and Endpoints][1]. If you
    #   also specify a value for `DefaultSubnetId`, the subnet must be in the
    #   same zone. For more information, see the `VpcId` parameter
    #   description.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html
    # @option options [String] :default_subnet_id
    #   The stack's default VPC subnet ID. This parameter is required if you
    #   specify a value for the `VpcId` parameter. All instances are launched
    #   into this subnet unless you specify otherwise when you create the
    #   instance. If you also specify a value for `DefaultAvailabilityZone`,
    #   the subnet must be in that zone. For information on default values and
    #   when this parameter is required, see the `VpcId` parameter
    #   description.
    # @option options [String] :custom_json
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
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html
    # @option options [Types::StackConfigurationManager] :configuration_manager
    #   The configuration manager. When you create a stack we recommend that
    #   you use the configuration manager to specify the Chef version: 12,
    #   11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The
    #   default value for Linux stacks is currently 12.
    # @option options [Types::ChefConfiguration] :chef_configuration
    #   A `ChefConfiguration` object that specifies whether to enable
    #   Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more
    #   information, see [Create a New Stack][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html
    # @option options [Boolean] :use_custom_cookbooks
    #   Whether the stack uses custom cookbooks.
    # @option options [Boolean] :use_opsworks_security_groups
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
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html
    # @option options [Types::Source] :custom_cookbooks_source
    #   Contains the information required to retrieve an app or cookbook from
    #   a repository. For more information, see [Adding Apps][1] or [Cookbooks
    #   and Recipes][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html
    # @option options [String] :default_ssh_key_name
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
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html
    #   [3]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html
    # @option options [String] :default_root_device_type
    #   The default root device type. This value is the default for all
    #   instances in the stack, but you can override it when you create an
    #   instance. The default option is `instance-store`. For more
    #   information, see [Storage for the Root Device][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device
    # @option options [String] :agent_version
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
    # @return [Stack]
    def create_stack(options = {})
      resp = @client.create_stack(options)
      Stack.new(
        id: resp.data.stack_id,
        client: @client
      )
    end

    # @!group Associations

    # @param [String] id
    # @return [Layer]
    def layer(id)
      Layer.new(
        id: id,
        client: @client
      )
    end

    # @param [String] id
    # @return [Stack]
    def stack(id)
      Stack.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   stacks = ops_works.stacks({
    #     stack_ids: ["String"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :stack_ids
    #   An array of stack IDs that specify the stacks to be described. If you
    #   omit this parameter, `DescribeStacks` returns a description of every
    #   stack.
    # @return [Stack::Collection]
    def stacks(options = {})
      batches = Enumerator.new do |y|
        batch = []
        resp = @client.describe_stacks(options)
        resp.data.stacks.each do |s|
          batch << Stack.new(
            id: s.stack_id,
            data: s,
            client: @client
          )
        end
        y.yield(batch)
      end
      Stack::Collection.new(batches)
    end

  end
end
