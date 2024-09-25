# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OpsWorks
  module Types

    # Describes an agent version.
    #
    # @!attribute [rw] version
    #   The agent version.
    #   @return [String]
    #
    # @!attribute [rw] configuration_manager
    #   The configuration manager.
    #   @return [Types::StackConfigurationManager]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/AgentVersion AWS API Documentation
    #
    class AgentVersion < Struct.new(
      :version,
      :configuration_manager)
      SENSITIVE = []
      include Aws::Structure
    end

    # A description of the app.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The app stack ID.
    #   @return [String]
    #
    # @!attribute [rw] shortname
    #   The app's short name.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The app name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the app.
    #   @return [String]
    #
    # @!attribute [rw] data_sources
    #   The app's data sources.
    #   @return [Array<Types::DataSource>]
    #
    # @!attribute [rw] type
    #   The app type.
    #   @return [String]
    #
    # @!attribute [rw] app_source
    #   A `Source` object that describes the app repository.
    #   @return [Types::Source]
    #
    # @!attribute [rw] domains
    #   The app vhost settings with multiple domains separated by commas.
    #   For example: `'www.example.com, example.com'`
    #   @return [Array<String>]
    #
    # @!attribute [rw] enable_ssl
    #   Whether to enable SSL for the app.
    #   @return [Boolean]
    #
    # @!attribute [rw] ssl_configuration
    #   An `SslConfiguration` object with the SSL configuration.
    #   @return [Types::SslConfiguration]
    #
    # @!attribute [rw] attributes
    #   The stack attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_at
    #   When the app was created.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   An array of `EnvironmentVariable` objects that specify environment
    #   variables to be associated with the app. After you deploy the app,
    #   these variables are defined on the associated app server instances.
    #   For more information, see [ Environment Variables][1].
    #
    #   <note markdown="1"> There is no specific limit on the number of environment variables.
    #   However, the size of the associated data structure - which includes
    #   the variable names, values, and protected flag values - cannot
    #   exceed 20 KB. This limit should accommodate most if not all use
    #   cases, but if you do exceed it, you will cause an exception (API)
    #   with an "Environment: is too large (maximum is 20 KB)" message.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment
    #   @return [Array<Types::EnvironmentVariable>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/App AWS API Documentation
    #
    class App < Struct.new(
      :app_id,
      :stack_id,
      :shortname,
      :name,
      :description,
      :data_sources,
      :type,
      :app_source,
      :domains,
      :enable_ssl,
      :ssl_configuration,
      :attributes,
      :created_at,
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @!attribute [rw] layer_ids
    #   The layer ID, which must correspond to a custom layer. You cannot
    #   assign a registered instance to a built-in layer.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/AssignInstanceRequest AWS API Documentation
    #
    class AssignInstanceRequest < Struct.new(
      :instance_id,
      :layer_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] volume_id
    #   The volume ID.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/AssignVolumeRequest AWS API Documentation
    #
    class AssignVolumeRequest < Struct.new(
      :volume_id,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] elastic_ip
    #   The Elastic IP address.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/AssociateElasticIpRequest AWS API Documentation
    #
    class AssociateElasticIpRequest < Struct.new(
      :elastic_ip,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] elastic_load_balancer_name
    #   The Elastic Load Balancing instance's name.
    #   @return [String]
    #
    # @!attribute [rw] layer_id
    #   The ID of the layer to which the Elastic Load Balancing instance is
    #   to be attached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/AttachElasticLoadBalancerRequest AWS API Documentation
    #
    class AttachElasticLoadBalancerRequest < Struct.new(
      :elastic_load_balancer_name,
      :layer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a load-based auto scaling upscaling or downscaling threshold
    # configuration, which specifies when OpsWorks Stacks starts or stops
    # load-based instances.
    #
    # @!attribute [rw] instance_count
    #   The number of instances to add or remove when the load exceeds a
    #   threshold.
    #   @return [Integer]
    #
    # @!attribute [rw] thresholds_wait_time
    #   The amount of time, in minutes, that the load must exceed a
    #   threshold before more instances are added or removed.
    #   @return [Integer]
    #
    # @!attribute [rw] ignore_metrics_time
    #   The amount of time (in minutes) after a scaling event occurs that
    #   OpsWorks Stacks should ignore metrics and suppress additional
    #   scaling events. For example, OpsWorks Stacks adds new instances
    #   following an upscaling event but the instances won't start reducing
    #   the load until they have been booted and configured. There is no
    #   point in raising additional scaling events during that operation,
    #   which typically takes several minutes. `IgnoreMetricsTime` allows
    #   you to direct OpsWorks Stacks to suppress scaling events long enough
    #   to get the new instances online.
    #   @return [Integer]
    #
    # @!attribute [rw] cpu_threshold
    #   The CPU utilization threshold, as a percent of the available CPU. A
    #   value of -1 disables the threshold.
    #   @return [Float]
    #
    # @!attribute [rw] memory_threshold
    #   The memory utilization threshold, as a percent of the available
    #   memory. A value of -1 disables the threshold.
    #   @return [Float]
    #
    # @!attribute [rw] load_threshold
    #   The load threshold. A value of -1 disables the threshold. For more
    #   information about how load is computed, see [Load (computing)][1].
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/Load_%28computing%29
    #   @return [Float]
    #
    # @!attribute [rw] alarms
    #   Custom CloudWatch auto scaling alarms, to be used as thresholds.
    #   This parameter takes a list of up to five alarm names, which are
    #   case sensitive and must be in the same region as the stack.
    #
    #   <note markdown="1"> To use custom alarms, you must update your service role to allow
    #   `cloudwatch:DescribeAlarms`. You can either have OpsWorks Stacks
    #   update the role for you when you first use this feature or you can
    #   edit the role manually. For more information, see [Allowing OpsWorks
    #   Stacks to Act on Your Behalf][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-servicerole.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/AutoScalingThresholds AWS API Documentation
    #
    class AutoScalingThresholds < Struct.new(
      :instance_count,
      :thresholds_wait_time,
      :ignore_metrics_time,
      :cpu_threshold,
      :memory_threshold,
      :load_threshold,
      :alarms)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a block device mapping. This data type maps directly to the
    # Amazon EC2 [BlockDeviceMapping][1] data type.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html
    #
    # @!attribute [rw] device_name
    #   The device name that is exposed to the instance, such as `/dev/sdh`.
    #   For the root device, you can use the explicit device name or you can
    #   set this parameter to `ROOT_DEVICE` and OpsWorks Stacks will provide
    #   the correct device name.
    #   @return [String]
    #
    # @!attribute [rw] no_device
    #   Suppresses the specified device included in the AMI's block device
    #   mapping.
    #   @return [String]
    #
    # @!attribute [rw] virtual_name
    #   The virtual device name. For more information, see
    #   [BlockDeviceMapping][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html
    #   @return [String]
    #
    # @!attribute [rw] ebs
    #   An `EBSBlockDevice` that defines how to configure an Amazon EBS
    #   volume when the instance is launched.
    #   @return [Types::EbsBlockDevice]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/BlockDeviceMapping AWS API Documentation
    #
    class BlockDeviceMapping < Struct.new(
      :device_name,
      :no_device,
      :virtual_name,
      :ebs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the Chef configuration.
    #
    # @!attribute [rw] manage_berkshelf
    #   Whether to enable Berkshelf.
    #   @return [Boolean]
    #
    # @!attribute [rw] berkshelf_version
    #   The Berkshelf version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/ChefConfiguration AWS API Documentation
    #
    class ChefConfiguration < Struct.new(
      :manage_berkshelf,
      :berkshelf_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_stack_id
    #   The source stack ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The cloned stack name. Stack names can be a maximum of 64
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The cloned stack Amazon Web Services Region, such as
    #   `ap-northeast-2`. For more information about Amazon Web Services
    #   Regions, see [Regions and Endpoints][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC that the cloned stack is to be launched into. It
    #   must be in the specified region. All instances are launched into
    #   this VPC, and you cannot change the ID later.
    #
    #   * If your account supports EC2 Classic, the default value is no VPC.
    #
    #   * If your account does not support EC2 Classic, the default value is
    #     the default VPC for the specified region.
    #
    #   If the VPC ID corresponds to a default VPC and you have specified
    #   either the `DefaultAvailabilityZone` or the `DefaultSubnetId`
    #   parameter only, OpsWorks Stacks infers the value of the other
    #   parameter. If you specify neither parameter, OpsWorks Stacks sets
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
    #   For more information about how to use OpsWorks Stacks with a VPC,
    #   see [Running a Stack in a VPC][1]. For more information about
    #   default VPC and EC2 Classic, see [Supported Platforms][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A list of stack attributes and values as key/value pairs to be added
    #   to the cloned stack.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] service_role_arn
    #   The stack Identity and Access Management (IAM) role, which allows
    #   OpsWorks Stacks to work with Amazon Web Services resources on your
    #   behalf. You must set this parameter to the Amazon Resource Name
    #   (ARN) for an existing IAM role. If you create a stack by using the
    #   OpsWorkss Stacks console, it creates the role for you. You can
    #   obtain an existing stack's IAM ARN programmatically by calling
    #   DescribePermissions. For more information about IAM ARNs, see [Using
    #   Identifiers][1].
    #
    #   <note markdown="1"> You must set this parameter to a valid service role ARN or the
    #   action will fail; there is no default value. You can specify the
    #   source stack's service role ARN, if you prefer, but you must do so
    #   explicitly.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] default_instance_profile_arn
    #   The Amazon Resource Name (ARN) of an IAM profile that is the default
    #   profile for all of the stack's EC2 instances. For more information
    #   about IAM ARNs, see [Using Identifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] default_os
    #   The stack's operating system, which must be set to one of the
    #   following.
    #
    #   * A supported Linux operating system: An Amazon Linux version, such
    #     as `Amazon Linux 2`, `Amazon Linux 2018.03`, `Amazon Linux
    #     2017.09`, `Amazon Linux 2017.03`, `Amazon Linux 2016.09`, `Amazon
    #     Linux 2016.03`, `Amazon Linux 2015.09`, or `Amazon Linux 2015.03`.
    #
    #   * A supported Ubuntu operating system, such as `Ubuntu 18.04 LTS`,
    #     `Ubuntu 16.04 LTS`, `Ubuntu 14.04 LTS`, or `Ubuntu 12.04 LTS`.
    #
    #   * `CentOS Linux 7`
    #
    #   * `Red Hat Enterprise Linux 7`
    #
    #   * `Microsoft Windows Server 2012 R2 Base`, `Microsoft Windows Server
    #     2012 R2 with SQL Server Express`, `Microsoft Windows Server 2012
    #     R2 with SQL Server Standard`, or `Microsoft Windows Server 2012 R2
    #     with SQL Server Web`.
    #
    #   * A custom AMI: `Custom`. You specify the custom AMI you want to use
    #     when you create instances. For more information about how to use
    #     custom AMIs with OpsWorks, see [Using Custom AMIs][1].
    #
    #   The default option is the parent stack's operating system. Not all
    #   operating systems are supported with all versions of Chef. For more
    #   information about supported operating systems, see [OpsWorks Stacks
    #   Operating Systems][2].
    #
    #   <note markdown="1"> You can specify a different Linux operating system for the cloned
    #   stack, but you cannot change from Linux to Windows or Windows to
    #   Linux.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html
    #   @return [String]
    #
    # @!attribute [rw] hostname_theme
    #   The stack's host name theme, with spaces are replaced by
    #   underscores. The theme is used to generate host names for the
    #   stack's instances. By default, `HostnameTheme` is set to
    #   `Layer_Dependent`, which creates host names by appending integers to
    #   the layer's short name. The other themes are:
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
    #   @return [String]
    #
    # @!attribute [rw] default_availability_zone
    #   The cloned stack's default Availability Zone, which must be in the
    #   specified region. For more information, see [Regions and
    #   Endpoints][1]. If you also specify a value for `DefaultSubnetId`,
    #   the subnet must be in the same zone. For more information, see the
    #   `VpcId` parameter description.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html
    #   @return [String]
    #
    # @!attribute [rw] default_subnet_id
    #   The stack's default VPC subnet ID. This parameter is required if
    #   you specify a value for the `VpcId` parameter. All instances are
    #   launched into this subnet unless you specify otherwise when you
    #   create the instance. If you also specify a value for
    #   `DefaultAvailabilityZone`, the subnet must be in that zone. For
    #   information on default values and when this parameter is required,
    #   see the `VpcId` parameter description.
    #   @return [String]
    #
    # @!attribute [rw] custom_json
    #   A string that contains user-defined, custom JSON. It is used to
    #   override the corresponding default stack configuration JSON values.
    #   The string should be in the following format:
    #
    #   `"\{"key1": "value1", "key2": "value2",...\}"`
    #
    #   For more information about custom JSON, see [Use Custom JSON to
    #   Modify the Stack Configuration Attributes][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html
    #   @return [String]
    #
    # @!attribute [rw] configuration_manager
    #   The configuration manager. When you clone a stack we recommend that
    #   you use the configuration manager to specify the Chef version: 12,
    #   11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The
    #   default value for Linux stacks is currently 12.
    #   @return [Types::StackConfigurationManager]
    #
    # @!attribute [rw] chef_configuration
    #   A `ChefConfiguration` object that specifies whether to enable
    #   Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more
    #   information, see [Create a New Stack][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html
    #   @return [Types::ChefConfiguration]
    #
    # @!attribute [rw] use_custom_cookbooks
    #   Whether to use custom cookbooks.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_opsworks_security_groups
    #   Whether to associate the OpsWorks Stacks built-in security groups
    #   with the stack's layers.
    #
    #   OpsWorks Stacks provides a standard set of security groups, one for
    #   each layer, which are associated with layers by default. With
    #   `UseOpsworksSecurityGroups` you can instead provide your own custom
    #   security groups. `UseOpsworksSecurityGroups` has the following
    #   settings:
    #
    #   * True - OpsWorks Stacks automatically associates the appropriate
    #     built-in security group with each layer (default setting). You can
    #     associate additional security groups with a layer after you create
    #     it but you cannot delete the built-in security group.
    #
    #   * False - OpsWorks Stacks does not associate built-in security
    #     groups with layers. You must create appropriate Amazon EC2
    #     security groups and associate a security group with each layer
    #     that you create. However, you can still manually associate a
    #     built-in security group with a layer on creation; custom security
    #     groups are required only for those layers that need custom
    #     settings.
    #
    #   For more information, see [Create a New Stack][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_cookbooks_source
    #   Contains the information required to retrieve an app or cookbook
    #   from a repository. For more information, see [Adding Apps][1] or
    #   [Cookbooks and Recipes][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html
    #   @return [Types::Source]
    #
    # @!attribute [rw] default_ssh_key_name
    #   A default Amazon EC2 key pair name. The default value is none. If
    #   you specify a key pair name, OpsWorks installs the public key on the
    #   instance and you can use the private key with an SSH client to log
    #   in to the instance. For more information, see [ Using SSH to
    #   Communicate with an Instance][1] and [ Managing SSH Access][2]. You
    #   can override this setting by specifying a different key pair, or no
    #   key pair, when you [ create an instance][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html
    #   [3]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html
    #   @return [String]
    #
    # @!attribute [rw] clone_permissions
    #   Whether to clone the source stack's permissions.
    #   @return [Boolean]
    #
    # @!attribute [rw] clone_app_ids
    #   A list of source stack app IDs to be included in the cloned stack.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_root_device_type
    #   The default root device type. This value is used by default for all
    #   instances in the cloned stack, but you can override it when you
    #   create an instance. For more information, see [Storage for the Root
    #   Device][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The default OpsWorks Stacks agent version. You have the following
    #   options:
    #
    #   * Auto-update - Set this parameter to `LATEST`. OpsWorks Stacks
    #     automatically installs new agent versions on the stack's
    #     instances as soon as they are available.
    #
    #   * Fixed version - Set this parameter to your preferred agent
    #     version. To update the agent version, you must edit the stack
    #     configuration and specify a new version. OpsWorks Stacks
    #     automatically installs that version on the stack's instances.
    #
    #   The default setting is `LATEST`. To specify an agent version, you
    #   must use the complete version number, not the abbreviated number
    #   shown on the console. For a list of available agent version numbers,
    #   call DescribeAgentVersions. AgentVersion cannot be set to Chef 12.2.
    #
    #   <note markdown="1"> You can also specify an agent version when you create or update an
    #   instance, which overrides the stack's default setting.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CloneStackRequest AWS API Documentation
    #
    class CloneStackRequest < Struct.new(
      :source_stack_id,
      :name,
      :region,
      :vpc_id,
      :attributes,
      :service_role_arn,
      :default_instance_profile_arn,
      :default_os,
      :hostname_theme,
      :default_availability_zone,
      :default_subnet_id,
      :custom_json,
      :configuration_manager,
      :chef_configuration,
      :use_custom_cookbooks,
      :use_opsworks_security_groups,
      :custom_cookbooks_source,
      :default_ssh_key_name,
      :clone_permissions,
      :clone_app_ids,
      :default_root_device_type,
      :agent_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `CloneStack` request.
    #
    # @!attribute [rw] stack_id
    #   The cloned stack ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CloneStackResult AWS API Documentation
    #
    class CloneStackResult < Struct.new(
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the Amazon CloudWatch Logs configuration for a layer.
    #
    # @!attribute [rw] enabled
    #   Whether CloudWatch Logs is enabled for a layer.
    #   @return [Boolean]
    #
    # @!attribute [rw] log_streams
    #   A list of configuration options for CloudWatch Logs.
    #   @return [Array<Types::CloudWatchLogsLogStream>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CloudWatchLogsConfiguration AWS API Documentation
    #
    class CloudWatchLogsConfiguration < Struct.new(
      :enabled,
      :log_streams)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the CloudWatch Logs configuration for a layer. For detailed
    # information about members of this data type, see the [CloudWatch Logs
    # Agent Reference][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html
    #
    # @!attribute [rw] log_group_name
    #   Specifies the destination log group. A log group is created
    #   automatically if it doesn't already exist. Log group names can be
    #   between 1 and 512 characters long. Allowed characters include a-z,
    #   A-Z, 0-9, '\_' (underscore), '-' (hyphen), '/' (forward
    #   slash), and '.' (period).
    #   @return [String]
    #
    # @!attribute [rw] datetime_format
    #   Specifies how the time stamp is extracted from logs. For more
    #   information, see the [CloudWatch Logs Agent Reference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html
    #   @return [String]
    #
    # @!attribute [rw] time_zone
    #   Specifies the time zone of log event time stamps.
    #   @return [String]
    #
    # @!attribute [rw] file
    #   Specifies log files that you want to push to CloudWatch Logs.
    #
    #   `File` can point to a specific file or multiple files (by using wild
    #   card characters such as `/var/log/system.log*`). Only the latest
    #   file is pushed to CloudWatch Logs, based on file modification time.
    #   We recommend that you use wild card characters to specify a series
    #   of files of the same type, such as `access_log.2014-06-01-01`,
    #   `access_log.2014-06-01-02`, and so on by using a pattern like
    #   `access_log.*`. Don't use a wildcard to match multiple file types,
    #   such as `access_log_80` and `access_log_443`. To specify multiple,
    #   different file types, add another log stream entry to the
    #   configuration file, so that each log file type is stored in a
    #   different log group.
    #
    #   Zipped files are not supported.
    #   @return [String]
    #
    # @!attribute [rw] file_fingerprint_lines
    #   Specifies the range of lines for identifying a file. The valid
    #   values are one number, or two dash-delimited numbers, such as '1',
    #   '2-5'. The default value is '1', meaning the first line is used
    #   to calculate the fingerprint. Fingerprint lines are not sent to
    #   CloudWatch Logs unless all specified lines are available.
    #   @return [String]
    #
    # @!attribute [rw] multi_line_start_pattern
    #   Specifies the pattern for identifying the start of a log message.
    #   @return [String]
    #
    # @!attribute [rw] initial_position
    #   Specifies where to start to read data (start\_of\_file or
    #   end\_of\_file). The default is start\_of\_file. This setting is only
    #   used if there is no state persisted for that log stream.
    #   @return [String]
    #
    # @!attribute [rw] encoding
    #   Specifies the encoding of the log file so that the file can be read
    #   correctly. The default is `utf_8`. Encodings supported by Python
    #   `codecs.decode()` can be used here.
    #   @return [String]
    #
    # @!attribute [rw] buffer_duration
    #   Specifies the time duration for the batching of log events. The
    #   minimum value is 5000ms and default value is 5000ms.
    #   @return [Integer]
    #
    # @!attribute [rw] batch_count
    #   Specifies the max number of log events in a batch, up to 10000. The
    #   default value is 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] batch_size
    #   Specifies the maximum size of log events in a batch, in bytes, up to
    #   1048576 bytes. The default value is 32768 bytes. This size is
    #   calculated as the sum of all event messages in UTF-8, plus 26 bytes
    #   for each log event.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CloudWatchLogsLogStream AWS API Documentation
    #
    class CloudWatchLogsLogStream < Struct.new(
      :log_group_name,
      :datetime_format,
      :time_zone,
      :file,
      :file_fingerprint_lines,
      :multi_line_start_pattern,
      :initial_position,
      :encoding,
      :buffer_duration,
      :batch_count,
      :batch_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a command.
    #
    # @!attribute [rw] command_id
    #   The command ID.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance where the command was executed.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The command deployment ID.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Date and time when the command was run.
    #   @return [String]
    #
    # @!attribute [rw] acknowledged_at
    #   Date and time when the command was acknowledged.
    #   @return [String]
    #
    # @!attribute [rw] completed_at
    #   Date when the command completed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The command status:
    #
    #   * failed
    #
    #   * successful
    #
    #   * skipped
    #
    #   * pending
    #   @return [String]
    #
    # @!attribute [rw] exit_code
    #   The command exit code.
    #   @return [Integer]
    #
    # @!attribute [rw] log_url
    #   The URL of the command log.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The command type:
    #
    #   * `configure`
    #
    #   * `deploy`
    #
    #   * `execute_recipes`
    #
    #   * `install_dependencies`
    #
    #   * `restart`
    #
    #   * `rollback`
    #
    #   * `setup`
    #
    #   * `start`
    #
    #   * `stop`
    #
    #   * `undeploy`
    #
    #   * `update_custom_cookbooks`
    #
    #   * `update_dependencies`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/Command AWS API Documentation
    #
    class Command < Struct.new(
      :command_id,
      :instance_id,
      :deployment_id,
      :created_at,
      :acknowledged_at,
      :completed_at,
      :status,
      :exit_code,
      :log_url,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @!attribute [rw] shortname
    #   The app's short name.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The app name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the app.
    #   @return [String]
    #
    # @!attribute [rw] data_sources
    #   The app's data source.
    #   @return [Array<Types::DataSource>]
    #
    # @!attribute [rw] type
    #   The app type. Each supported type is associated with a particular
    #   layer. For example, PHP applications are associated with a PHP
    #   layer. OpsWorks Stacks deploys an application to those instances
    #   that are members of the corresponding layer. If your app isn't one
    #   of the standard types, or you prefer to implement your own Deploy
    #   recipes, specify `other`.
    #   @return [String]
    #
    # @!attribute [rw] app_source
    #   A `Source` object that specifies the app repository.
    #   @return [Types::Source]
    #
    # @!attribute [rw] domains
    #   The app virtual host settings, with multiple domains separated by
    #   commas. For example: `'www.example.com, example.com'`
    #   @return [Array<String>]
    #
    # @!attribute [rw] enable_ssl
    #   Whether to enable SSL for the app.
    #   @return [Boolean]
    #
    # @!attribute [rw] ssl_configuration
    #   An `SslConfiguration` object with the SSL configuration.
    #   @return [Types::SslConfiguration]
    #
    # @!attribute [rw] attributes
    #   One or more user-defined key/value pairs to be added to the stack
    #   attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] environment
    #   An array of `EnvironmentVariable` objects that specify environment
    #   variables to be associated with the app. After you deploy the app,
    #   these variables are defined on the associated app server instance.
    #   For more information, see [ Environment Variables][1].
    #
    #   There is no specific limit on the number of environment variables.
    #   However, the size of the associated data structure - which includes
    #   the variables' names, values, and protected flag values - cannot
    #   exceed 20 KB. This limit should accommodate most if not all use
    #   cases. Exceeding it will cause an exception with the message,
    #   "Environment: is too large (maximum is 20KB)."
    #
    #   <note markdown="1"> If you have specified one or more environment variables, you cannot
    #   modify the stack's Chef version.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment
    #   @return [Array<Types::EnvironmentVariable>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateAppRequest AWS API Documentation
    #
    class CreateAppRequest < Struct.new(
      :stack_id,
      :shortname,
      :name,
      :description,
      :data_sources,
      :type,
      :app_source,
      :domains,
      :enable_ssl,
      :ssl_configuration,
      :attributes,
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `CreateApp` request.
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateAppResult AWS API Documentation
    #
    class CreateAppResult < Struct.new(
      :app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The app ID. This parameter is required for app deployments, but not
    #   for other deployment commands.
    #   @return [String]
    #
    # @!attribute [rw] instance_ids
    #   The instance IDs for the deployment targets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] layer_ids
    #   The layer IDs for the deployment targets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] command
    #   A `DeploymentCommand` object that specifies the deployment command
    #   and any associated arguments.
    #   @return [Types::DeploymentCommand]
    #
    # @!attribute [rw] comment
    #   A user-defined comment.
    #   @return [String]
    #
    # @!attribute [rw] custom_json
    #   A string that contains user-defined, custom JSON. You can use this
    #   parameter to override some corresponding default stack configuration
    #   JSON values. The string should be in the following format:
    #
    #   `"\{"key1": "value1", "key2": "value2",...\}"`
    #
    #   For more information about custom JSON, see [Use Custom JSON to
    #   Modify the Stack Configuration Attributes][1] and [Overriding
    #   Attributes With Custom JSON][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateDeploymentRequest AWS API Documentation
    #
    class CreateDeploymentRequest < Struct.new(
      :stack_id,
      :app_id,
      :instance_ids,
      :layer_ids,
      :command,
      :comment,
      :custom_json)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `CreateDeployment` request.
    #
    # @!attribute [rw] deployment_id
    #   The deployment ID, which can be used with other requests to identify
    #   the deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateDeploymentResult AWS API Documentation
    #
    class CreateDeploymentResult < Struct.new(
      :deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @!attribute [rw] layer_ids
    #   An array that contains the instance's layer IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_type
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
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_type
    #   For load-based or time-based instances, the type. Windows stacks can
    #   use only time-based instances.
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   The instance host name. The following are character limits for
    #   instance host names.
    #
    #   * Linux-based instances: 63 characters
    #
    #   * Windows-based instances: 15 characters
    #   @return [String]
    #
    # @!attribute [rw] os
    #   The instance's operating system, which must be set to one of the
    #   following.
    #
    #   * A supported Linux operating system: An Amazon Linux version, such
    #     as `Amazon Linux 2`, `Amazon Linux 2018.03`, `Amazon Linux
    #     2017.09`, `Amazon Linux 2017.03`, `Amazon Linux 2016.09`, `Amazon
    #     Linux 2016.03`, `Amazon Linux 2015.09`, or `Amazon Linux 2015.03`.
    #
    #   * A supported Ubuntu operating system, such as `Ubuntu 18.04 LTS`,
    #     `Ubuntu 16.04 LTS`, `Ubuntu 14.04 LTS`, or `Ubuntu 12.04 LTS`.
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
    #   Not all operating systems are supported with all versions of Chef.
    #   For more information about the supported operating systems, see
    #   [OpsWorks Stacks Operating Systems][1].
    #
    #   The default option is the current Amazon Linux version. If you set
    #   this parameter to `Custom`, you must use the CreateInstance
    #   action's AmiId parameter to specify the custom AMI that you want to
    #   use. Block device mappings are not supported if the value is
    #   `Custom`. For more information about how to use custom AMIs with
    #   OpsWorks Stacks, see [Using Custom AMIs][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html
    #   @return [String]
    #
    # @!attribute [rw] ami_id
    #   A custom AMI ID to be used to create the instance. The AMI should be
    #   based on one of the supported operating systems. For more
    #   information, see [Using Custom AMIs][1].
    #
    #   <note markdown="1"> If you specify a custom AMI, you must set `Os` to `Custom`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html
    #   @return [String]
    #
    # @!attribute [rw] ssh_key_name
    #   The instance's Amazon EC2 key-pair name.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The instance Availability Zone. For more information, see [Regions
    #   and Endpoints][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html
    #   @return [String]
    #
    # @!attribute [rw] virtualization_type
    #   The instance's virtualization type, `paravirtual` or `hvm`.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the instance's subnet. If the stack is running in a VPC,
    #   you can use this parameter to override the stack's default subnet
    #   ID value and direct OpsWorks Stacks to launch the instance in a
    #   different subnet.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The instance architecture. The default option is `x86_64`. Instance
    #   types do not necessarily support both architectures. For a list of
    #   the architectures that are supported by the different instance
    #   types, see [Instance Families and Types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #   @return [String]
    #
    # @!attribute [rw] root_device_type
    #   The instance root device type. For more information, see [Storage
    #   for the Root Device][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   An array of `BlockDeviceMapping` objects that specify the
    #   instance's block devices. For more information, see [Block Device
    #   Mapping][1]. Note that block device mappings are not supported for
    #   custom AMIs.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html
    #   @return [Array<Types::BlockDeviceMapping>]
    #
    # @!attribute [rw] install_updates_on_boot
    #   Whether to install operating system and package updates when the
    #   instance boots. The default value is `true`. To control when updates
    #   are installed, set this value to `false`. You must then update your
    #   instances manually by using CreateDeployment to run the
    #   `update_dependencies` stack command or by manually running `yum`
    #   (Amazon Linux) or `apt-get` (Ubuntu) on the instances.
    #
    #   <note markdown="1"> We strongly recommend using the default value of `true` to ensure
    #   that your instances have the latest security updates.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] ebs_optimized
    #   Whether to create an Amazon EBS-optimized instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] agent_version
    #   The default OpsWorks Stacks agent version. You have the following
    #   options:
    #
    #   * `INHERIT` - Use the stack's default agent version setting.
    #
    #   * *version\_number* - Use the specified agent version. This value
    #     overrides the stack's default setting. To update the agent
    #     version, edit the instance configuration and specify a new
    #     version. OpsWorks Stacks installs that version on the instance.
    #
    #   The default setting is `INHERIT`. To specify an agent version, you
    #   must use the complete version number, not the abbreviated number
    #   shown on the console. For a list of available agent version numbers,
    #   call DescribeAgentVersions. AgentVersion cannot be set to Chef 12.2.
    #   @return [String]
    #
    # @!attribute [rw] tenancy
    #   The instance's tenancy option. The default option is no tenancy, or
    #   if the instance is running in a VPC, inherit tenancy settings from
    #   the VPC. The following are valid values for this parameter:
    #   `dedicated`, `default`, or `host`. Because there are costs
    #   associated with changes in tenancy options, we recommend that you
    #   research tenancy options before choosing them for your instances.
    #   For more information about dedicated hosts, see [Dedicated Hosts
    #   Overview][1] and [Amazon EC2 Dedicated Hosts][1]. For more
    #   information about dedicated instances, see [Dedicated Instances][2]
    #   and [Amazon EC2 Dedicated Instances][3].
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/dedicated-hosts/
    #   [2]: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/dedicated-instance.html
    #   [3]: http://aws.amazon.com/ec2/purchasing-options/dedicated-instances/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateInstanceRequest AWS API Documentation
    #
    class CreateInstanceRequest < Struct.new(
      :stack_id,
      :layer_ids,
      :instance_type,
      :auto_scaling_type,
      :hostname,
      :os,
      :ami_id,
      :ssh_key_name,
      :availability_zone,
      :virtualization_type,
      :subnet_id,
      :architecture,
      :root_device_type,
      :block_device_mappings,
      :install_updates_on_boot,
      :ebs_optimized,
      :agent_version,
      :tenancy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `CreateInstance` request.
    #
    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateInstanceResult AWS API Documentation
    #
    class CreateInstanceResult < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The layer stack ID.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The layer type. A stack cannot have more than one built-in layer of
    #   the same type. It can have any number of custom layers. Built-in
    #   layers are not available in Chef 12 stacks.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The layer name, which is used by the console. Layer names can be a
    #   maximum of 32 characters.
    #   @return [String]
    #
    # @!attribute [rw] shortname
    #   For custom layers only, use this parameter to specify the layer's
    #   short name, which is used internally by OpsWorks Stacks and by Chef
    #   recipes. The short name is also used as the name for the directory
    #   where your app files are installed. It can have a maximum of 32
    #   characters, which are limited to the alphanumeric characters, '-',
    #   '\_', and '.'.
    #
    #   Built-in layer short names are defined by OpsWorks Stacks. For more
    #   information, see the [Layer Reference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   One or more user-defined key-value pairs to be added to the stack
    #   attributes.
    #
    #   To create a cluster layer, set the `EcsClusterArn` attribute to the
    #   cluster's ARN.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] cloud_watch_logs_configuration
    #   Specifies CloudWatch Logs configuration options for the layer. For
    #   more information, see CloudWatchLogsLogStream.
    #   @return [Types::CloudWatchLogsConfiguration]
    #
    # @!attribute [rw] custom_instance_profile_arn
    #   The ARN of an IAM profile to be used for the layer's EC2 instances.
    #   For more information about IAM ARNs, see [Using Identifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] custom_json
    #   A JSON-formatted string containing custom stack configuration and
    #   deployment attributes to be installed on the layer's instances. For
    #   more information, see [ Using Custom JSON][1]. This feature is
    #   supported as of version 1.7.42 of the CLI.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html
    #   @return [String]
    #
    # @!attribute [rw] custom_security_group_ids
    #   An array containing the layer custom security group IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] packages
    #   An array of `Package` objects that describes the layer packages.
    #   @return [Array<String>]
    #
    # @!attribute [rw] volume_configurations
    #   A `VolumeConfigurations` object that describes the layer's Amazon
    #   EBS volumes.
    #   @return [Array<Types::VolumeConfiguration>]
    #
    # @!attribute [rw] enable_auto_healing
    #   Whether to disable auto healing for the layer.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_assign_elastic_ips
    #   Whether to automatically assign an [Elastic IP address][1] to the
    #   layer's instances. For more information, see [How to Edit a
    #   Layer][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_assign_public_ips
    #   For stacks that are running in a VPC, whether to automatically
    #   assign a public IP address to the layer's instances. For more
    #   information, see [How to Edit a Layer][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_recipes
    #   A `LayerCustomRecipes` object that specifies the layer custom
    #   recipes.
    #   @return [Types::Recipes]
    #
    # @!attribute [rw] install_updates_on_boot
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
    #   @return [Boolean]
    #
    # @!attribute [rw] use_ebs_optimized_instances
    #   Whether to use Amazon EBS-optimized instances.
    #   @return [Boolean]
    #
    # @!attribute [rw] lifecycle_event_configuration
    #   A `LifeCycleEventConfiguration` object that you can use to configure
    #   the Shutdown event to specify an execution timeout and enable or
    #   disable Elastic Load Balancer connection draining.
    #   @return [Types::LifecycleEventConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateLayerRequest AWS API Documentation
    #
    class CreateLayerRequest < Struct.new(
      :stack_id,
      :type,
      :name,
      :shortname,
      :attributes,
      :cloud_watch_logs_configuration,
      :custom_instance_profile_arn,
      :custom_json,
      :custom_security_group_ids,
      :packages,
      :volume_configurations,
      :enable_auto_healing,
      :auto_assign_elastic_ips,
      :auto_assign_public_ips,
      :custom_recipes,
      :install_updates_on_boot,
      :use_ebs_optimized_instances,
      :lifecycle_event_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `CreateLayer` request.
    #
    # @!attribute [rw] layer_id
    #   The layer ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateLayerResult AWS API Documentation
    #
    class CreateLayerResult < Struct.new(
      :layer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The stack name. Stack names can be a maximum of 64 characters.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The stack's Amazon Web Services Region, such as `ap-south-1`. For
    #   more information about Amazon Web Services Regions, see [Regions and
    #   Endpoints][1].
    #
    #   <note markdown="1"> In the CLI, this API maps to the `--stack-region` parameter. If the
    #   `--stack-region` parameter and the CLI common parameter `--region`
    #   are set to the same value, the stack uses a *regional* endpoint. If
    #   the `--stack-region` parameter is not set, but the CLI `--region`
    #   parameter is, this also results in a stack with a *regional*
    #   endpoint. However, if the `--region` parameter is set to
    #   `us-east-1`, and the `--stack-region` parameter is set to one of the
    #   following, then the stack uses a legacy or *classic* region:
    #   `us-west-1, us-west-2, sa-east-1, eu-central-1, eu-west-1,
    #   ap-northeast-1, ap-southeast-1, ap-southeast-2`. In this case, the
    #   actual API endpoint of the stack is in `us-east-1`. Only the
    #   preceding regions are supported as classic regions in the
    #   `us-east-1` API endpoint. Because it is a best practice to choose
    #   the regional endpoint that is closest to where you manage Amazon Web
    #   Services, we recommend that you use regional endpoints for new
    #   stacks. The CLI common `--region` parameter always specifies a
    #   regional API endpoint; it cannot be used to specify a classic
    #   OpsWorks Stacks region.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC that the stack is to be launched into. The VPC
    #   must be in the stack's region. All instances are launched into this
    #   VPC. You cannot change the ID later.
    #
    #   * If your account supports EC2-Classic, the default value is `no
    #     VPC`.
    #
    #   * If your account does not support EC2-Classic, the default value is
    #     the default VPC for the specified region.
    #
    #   If the VPC ID corresponds to a default VPC and you have specified
    #   either the `DefaultAvailabilityZone` or the `DefaultSubnetId`
    #   parameter only, OpsWorks Stacks infers the value of the other
    #   parameter. If you specify neither parameter, OpsWorks Stacks sets
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
    #   For more information about how to use OpsWorks Stacks with a VPC,
    #   see [Running a Stack in a VPC][1]. For more information about
    #   default VPC and EC2-Classic, see [Supported Platforms][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   One or more user-defined key-value pairs to be added to the stack
    #   attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] service_role_arn
    #   The stack's IAM role, which allows OpsWorks Stacks to work with
    #   Amazon Web Services resources on your behalf. You must set this
    #   parameter to the Amazon Resource Name (ARN) for an existing IAM
    #   role. For more information about IAM ARNs, see [Using
    #   Identifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] default_instance_profile_arn
    #   The Amazon Resource Name (ARN) of an IAM profile that is the default
    #   profile for all of the stack's EC2 instances. For more information
    #   about IAM ARNs, see [Using Identifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] default_os
    #   The stack's default operating system, which is installed on every
    #   instance unless you specify a different operating system when you
    #   create the instance. You can specify one of the following.
    #
    #   * A supported Linux operating system: An Amazon Linux version, such
    #     as `Amazon Linux 2`, `Amazon Linux 2018.03`, `Amazon Linux
    #     2017.09`, `Amazon Linux 2017.03`, `Amazon Linux 2016.09`, `Amazon
    #     Linux 2016.03`, `Amazon Linux 2015.09`, or `Amazon Linux 2015.03`.
    #
    #   * A supported Ubuntu operating system, such as `Ubuntu 18.04 LTS`,
    #     `Ubuntu 16.04 LTS`, `Ubuntu 14.04 LTS`, or `Ubuntu 12.04 LTS`.
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
    #     when you create instances. For more information, see [ Using
    #     Custom AMIs][1].
    #
    #   The default option is the current Amazon Linux version. Not all
    #   operating systems are supported with all versions of Chef. For more
    #   information about supported operating systems, see [OpsWorks Stacks
    #   Operating Systems][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html
    #   @return [String]
    #
    # @!attribute [rw] hostname_theme
    #   The stack's host name theme, with spaces replaced by underscores.
    #   The theme is used to generate host names for the stack's instances.
    #   By default, `HostnameTheme` is set to `Layer_Dependent`, which
    #   creates host names by appending integers to the layer's short name.
    #   The other themes are:
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
    #   @return [String]
    #
    # @!attribute [rw] default_availability_zone
    #   The stack's default Availability Zone, which must be in the
    #   specified region. For more information, see [Regions and
    #   Endpoints][1]. If you also specify a value for `DefaultSubnetId`,
    #   the subnet must be in the same zone. For more information, see the
    #   `VpcId` parameter description.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html
    #   @return [String]
    #
    # @!attribute [rw] default_subnet_id
    #   The stack's default VPC subnet ID. This parameter is required if
    #   you specify a value for the `VpcId` parameter. All instances are
    #   launched into this subnet unless you specify otherwise when you
    #   create the instance. If you also specify a value for
    #   `DefaultAvailabilityZone`, the subnet must be in that zone. For
    #   information on default values and when this parameter is required,
    #   see the `VpcId` parameter description.
    #   @return [String]
    #
    # @!attribute [rw] custom_json
    #   A string that contains user-defined, custom JSON. It can be used to
    #   override the corresponding default stack configuration attribute
    #   values or to pass data to recipes. The string should be in the
    #   following format:
    #
    #   `"\{"key1": "value1", "key2": "value2",...\}"`
    #
    #   For more information about custom JSON, see [Use Custom JSON to
    #   Modify the Stack Configuration Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html
    #   @return [String]
    #
    # @!attribute [rw] configuration_manager
    #   The configuration manager. When you create a stack we recommend that
    #   you use the configuration manager to specify the Chef version: 12,
    #   11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The
    #   default value for Linux stacks is currently 12.
    #   @return [Types::StackConfigurationManager]
    #
    # @!attribute [rw] chef_configuration
    #   A `ChefConfiguration` object that specifies whether to enable
    #   Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more
    #   information, see [Create a New Stack][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html
    #   @return [Types::ChefConfiguration]
    #
    # @!attribute [rw] use_custom_cookbooks
    #   Whether the stack uses custom cookbooks.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_opsworks_security_groups
    #   Whether to associate the OpsWorks Stacks built-in security groups
    #   with the stack's layers.
    #
    #   OpsWorks Stacks provides a standard set of built-in security groups,
    #   one for each layer, which are associated with layers by default.
    #   With `UseOpsworksSecurityGroups` you can instead provide your own
    #   custom security groups. `UseOpsworksSecurityGroups` has the
    #   following settings:
    #
    #   * True - OpsWorks Stacks automatically associates the appropriate
    #     built-in security group with each layer (default setting). You can
    #     associate additional security groups with a layer after you create
    #     it, but you cannot delete the built-in security group.
    #
    #   * False - OpsWorks Stacks does not associate built-in security
    #     groups with layers. You must create appropriate EC2 security
    #     groups and associate a security group with each layer that you
    #     create. However, you can still manually associate a built-in
    #     security group with a layer on creation; custom security groups
    #     are required only for those layers that need custom settings.
    #
    #   For more information, see [Create a New Stack][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_cookbooks_source
    #   Contains the information required to retrieve an app or cookbook
    #   from a repository. For more information, see [Adding Apps][1] or
    #   [Cookbooks and Recipes][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html
    #   @return [Types::Source]
    #
    # @!attribute [rw] default_ssh_key_name
    #   A default Amazon EC2 key pair name. The default value is none. If
    #   you specify a key pair name, OpsWorks installs the public key on the
    #   instance and you can use the private key with an SSH client to log
    #   in to the instance. For more information, see [ Using SSH to
    #   Communicate with an Instance][1] and [ Managing SSH Access][2]. You
    #   can override this setting by specifying a different key pair, or no
    #   key pair, when you [ create an instance][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html
    #   [3]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html
    #   @return [String]
    #
    # @!attribute [rw] default_root_device_type
    #   The default root device type. This value is the default for all
    #   instances in the stack, but you can override it when you create an
    #   instance. The default option is `instance-store`. For more
    #   information, see [Storage for the Root Device][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The default OpsWorks Stacks agent version. You have the following
    #   options:
    #
    #   * Auto-update - Set this parameter to `LATEST`. OpsWorks Stacks
    #     automatically installs new agent versions on the stack's
    #     instances as soon as they are available.
    #
    #   * Fixed version - Set this parameter to your preferred agent
    #     version. To update the agent version, you must edit the stack
    #     configuration and specify a new version. OpsWorks Stacks installs
    #     that version on the stack's instances.
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
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateStackRequest AWS API Documentation
    #
    class CreateStackRequest < Struct.new(
      :name,
      :region,
      :vpc_id,
      :attributes,
      :service_role_arn,
      :default_instance_profile_arn,
      :default_os,
      :hostname_theme,
      :default_availability_zone,
      :default_subnet_id,
      :custom_json,
      :configuration_manager,
      :chef_configuration,
      :use_custom_cookbooks,
      :use_opsworks_security_groups,
      :custom_cookbooks_source,
      :default_ssh_key_name,
      :default_root_device_type,
      :agent_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `CreateStack` request.
    #
    # @!attribute [rw] stack_id
    #   The stack ID, which is an opaque string that you use to identify the
    #   stack when performing actions such as `DescribeStacks`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateStackResult AWS API Documentation
    #
    class CreateStackResult < Struct.new(
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] iam_user_arn
    #   The user's IAM ARN; this can also be a federated user's ARN.
    #   @return [String]
    #
    # @!attribute [rw] ssh_username
    #   The user's SSH user name. The allowable characters are \[a-z\],
    #   \[A-Z\], \[0-9\], '-', and '\_'. If the specified name includes
    #   other punctuation marks, OpsWorks Stacks removes them. For example,
    #   `my.name` is changed to `myname`. If you do not specify an SSH user
    #   name, OpsWorks Stacks generates one from the IAM user name.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key
    #   The user's public SSH key.
    #   @return [String]
    #
    # @!attribute [rw] allow_self_management
    #   Whether users can specify their own SSH public key through the My
    #   Settings page. For more information, see [Setting an IAM User's
    #   Public SSH Key][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateUserProfileRequest AWS API Documentation
    #
    class CreateUserProfileRequest < Struct.new(
      :iam_user_arn,
      :ssh_username,
      :ssh_public_key,
      :allow_self_management)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `CreateUserProfile` request.
    #
    # @!attribute [rw] iam_user_arn
    #   The user's IAM ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/CreateUserProfileResult AWS API Documentation
    #
    class CreateUserProfileResult < Struct.new(
      :iam_user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an app's data source.
    #
    # @!attribute [rw] type
    #   The data source's type, `AutoSelectOpsworksMysqlInstance`,
    #   `OpsworksMysqlInstance`, `RdsDbInstance`, or `None`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The data source's ARN.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :type,
      :arn,
      :database_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeleteAppRequest AWS API Documentation
    #
    class DeleteAppRequest < Struct.new(
      :app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @!attribute [rw] delete_elastic_ip
    #   Whether to delete the instance Elastic IP address.
    #   @return [Boolean]
    #
    # @!attribute [rw] delete_volumes
    #   Whether to delete the instance's Amazon EBS volumes.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeleteInstanceRequest AWS API Documentation
    #
    class DeleteInstanceRequest < Struct.new(
      :instance_id,
      :delete_elastic_ip,
      :delete_volumes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] layer_id
    #   The layer ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeleteLayerRequest AWS API Documentation
    #
    class DeleteLayerRequest < Struct.new(
      :layer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeleteStackRequest AWS API Documentation
    #
    class DeleteStackRequest < Struct.new(
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] iam_user_arn
    #   The user's IAM ARN. This can also be a federated user's ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeleteUserProfileRequest AWS API Documentation
    #
    class DeleteUserProfileRequest < Struct.new(
      :iam_user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a deployment of a stack or app.
    #
    # @!attribute [rw] deployment_id
    #   The deployment ID.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Date when the deployment was created.
    #   @return [String]
    #
    # @!attribute [rw] completed_at
    #   Date when the deployment completed.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The deployment duration.
    #   @return [Integer]
    #
    # @!attribute [rw] iam_user_arn
    #   The user's IAM ARN.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A user-defined comment.
    #   @return [String]
    #
    # @!attribute [rw] command
    #   Used to specify a stack or deployment command.
    #   @return [Types::DeploymentCommand]
    #
    # @!attribute [rw] status
    #   The deployment status:
    #
    #   * running
    #
    #   * successful
    #
    #   * failed
    #   @return [String]
    #
    # @!attribute [rw] custom_json
    #   A string that contains user-defined custom JSON. It can be used to
    #   override the corresponding default stack configuration attribute
    #   values for stack or to pass data to recipes. The string should be in
    #   the following format:
    #
    #   `"\{"key1": "value1", "key2": "value2",...\}"`
    #
    #   For more information on custom JSON, see [Use Custom JSON to Modify
    #   the Stack Configuration Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html
    #   @return [String]
    #
    # @!attribute [rw] instance_ids
    #   The IDs of the target instances.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/Deployment AWS API Documentation
    #
    class Deployment < Struct.new(
      :deployment_id,
      :stack_id,
      :app_id,
      :created_at,
      :completed_at,
      :duration,
      :iam_user_arn,
      :comment,
      :command,
      :status,
      :custom_json,
      :instance_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to specify a stack or deployment command.
    #
    # @!attribute [rw] name
    #   Specifies the operation. You can specify only one command.
    #
    #   For stacks, the following commands are available:
    #
    #   * `execute_recipes`: Execute one or more recipes. To specify the
    #     recipes, set an `Args` parameter named `recipes` to the list of
    #     recipes to be executed. For example, to execute
    #     `phpapp::appsetup`, set `Args` to
    #     `\{"recipes":["phpapp::appsetup"]\}`.
    #
    #   * `install_dependencies`: Install the stack's dependencies.
    #
    #   * `update_custom_cookbooks`: Update the stack's custom cookbooks.
    #
    #   * `update_dependencies`: Update the stack's dependencies.
    #
    #   <note markdown="1"> The update\_dependencies and install\_dependencies commands are
    #   supported only for Linux instances. You can run the commands
    #   successfully on Windows instances, but they do nothing.
    #
    #    </note>
    #
    #   For apps, the following commands are available:
    #
    #   * `deploy`: Deploy an app. Ruby on Rails apps have an optional
    #     `Args` parameter named `migrate`. Set `Args` to
    #     \\\{"migrate":\["true"\]\\} to migrate the database. The
    #     default setting is \\\{"migrate":\["false"\]\\}.
    #
    #   * `rollback` Roll the app back to the previous version. When you
    #     update an app, OpsWorks Stacks stores the previous version, up to
    #     a maximum of five versions. You can use this command to roll an
    #     app back as many as four versions.
    #
    #   * `start`: Start the app's web or application server.
    #
    #   * `stop`: Stop the app's web or application server.
    #
    #   * `restart`: Restart the app's web or application server.
    #
    #   * `undeploy`: Undeploy the app.
    #   @return [String]
    #
    # @!attribute [rw] args
    #   The arguments of those commands that take arguments. It should be
    #   set to a JSON object with the following format:
    #
    #   `\{"arg_name1" : ["value1", "value2", ...], "arg_name2" : ["value1",
    #   "value2", ...], ...\}`
    #
    #   The `update_dependencies` command takes two arguments:
    #
    #   * `upgrade_os_to` - Specifies the Amazon Linux version that you want
    #     instances to run, such as `Amazon Linux 2`. You must also set the
    #     `allow_reboot` argument to true.
    #
    #   * `allow_reboot` - Specifies whether to allow OpsWorks Stacks to
    #     reboot the instances if necessary, after installing the updates.
    #     This argument can be set to either `true` or `false`. The default
    #     value is `false`.
    #
    #   For example, to upgrade an instance to Amazon Linux 2018.03, set
    #   `Args` to the following.
    #
    #   ` \{ "upgrade_os_to":["Amazon Linux 2018.03"],
    #   "allow_reboot":["true"] \} `
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeploymentCommand AWS API Documentation
    #
    class DeploymentCommand < Struct.new(
      :name,
      :args)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ecs_cluster_arn
    #   The cluster's Amazon Resource Number (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeregisterEcsClusterRequest AWS API Documentation
    #
    class DeregisterEcsClusterRequest < Struct.new(
      :ecs_cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] elastic_ip
    #   The Elastic IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeregisterElasticIpRequest AWS API Documentation
    #
    class DeregisterElasticIpRequest < Struct.new(
      :elastic_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeregisterInstanceRequest AWS API Documentation
    #
    class DeregisterInstanceRequest < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rds_db_instance_arn
    #   The Amazon RDS instance's ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeregisterRdsDbInstanceRequest AWS API Documentation
    #
    class DeregisterRdsDbInstanceRequest < Struct.new(
      :rds_db_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] volume_id
    #   The OpsWorks Stacks volume ID, which is the GUID that OpsWorks
    #   Stacks assigned to the instance when you registered the volume with
    #   the stack, not the Amazon EC2 volume ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DeregisterVolumeRequest AWS API Documentation
    #
    class DeregisterVolumeRequest < Struct.new(
      :volume_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @!attribute [rw] configuration_manager
    #   The configuration manager.
    #   @return [Types::StackConfigurationManager]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeAgentVersionsRequest AWS API Documentation
    #
    class DescribeAgentVersionsRequest < Struct.new(
      :stack_id,
      :configuration_manager)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeAgentVersions` request.
    #
    # @!attribute [rw] agent_versions
    #   The agent versions for the specified stack or configuration manager.
    #   Note that this value is the complete version number, not the
    #   abbreviated number used by the console.
    #   @return [Array<Types::AgentVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeAgentVersionsResult AWS API Documentation
    #
    class DescribeAgentVersionsResult < Struct.new(
      :agent_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The app stack ID. If you use this parameter, `DescribeApps` returns
    #   a description of the apps in the specified stack.
    #   @return [String]
    #
    # @!attribute [rw] app_ids
    #   An array of app IDs for the apps to be described. If you use this
    #   parameter, `DescribeApps` returns a description of the specified
    #   apps. Otherwise, it returns a description of every app.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeAppsRequest AWS API Documentation
    #
    class DescribeAppsRequest < Struct.new(
      :stack_id,
      :app_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeApps` request.
    #
    # @!attribute [rw] apps
    #   An array of `App` objects that describe the specified apps.
    #   @return [Array<Types::App>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeAppsResult AWS API Documentation
    #
    class DescribeAppsResult < Struct.new(
      :apps)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_id
    #   The deployment ID. If you include this parameter, `DescribeCommands`
    #   returns a description of the commands associated with the specified
    #   deployment.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID. If you include this parameter, `DescribeCommands`
    #   returns a description of the commands associated with the specified
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] command_ids
    #   An array of command IDs. If you include this parameter,
    #   `DescribeCommands` returns a description of the specified commands.
    #   Otherwise, it returns a description of every command.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeCommandsRequest AWS API Documentation
    #
    class DescribeCommandsRequest < Struct.new(
      :deployment_id,
      :instance_id,
      :command_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeCommands` request.
    #
    # @!attribute [rw] commands
    #   An array of `Command` objects that describe each of the specified
    #   commands.
    #   @return [Array<Types::Command>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeCommandsResult AWS API Documentation
    #
    class DescribeCommandsResult < Struct.new(
      :commands)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The stack ID. If you include this parameter, the command returns a
    #   description of the commands associated with the specified stack.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The app ID. If you include this parameter, the command returns a
    #   description of the commands associated with the specified app.
    #   @return [String]
    #
    # @!attribute [rw] deployment_ids
    #   An array of deployment IDs to be described. If you include this
    #   parameter, the command returns a description of the specified
    #   deployments. Otherwise, it returns a description of every
    #   deployment.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeDeploymentsRequest AWS API Documentation
    #
    class DescribeDeploymentsRequest < Struct.new(
      :stack_id,
      :app_id,
      :deployment_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeDeployments` request.
    #
    # @!attribute [rw] deployments
    #   An array of `Deployment` objects that describe the deployments.
    #   @return [Array<Types::Deployment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeDeploymentsResult AWS API Documentation
    #
    class DescribeDeploymentsResult < Struct.new(
      :deployments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ecs_cluster_arns
    #   A list of ARNs, one for each cluster to be described.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stack_id
    #   A stack ID. `DescribeEcsClusters` returns a description of the
    #   cluster that is registered with the stack.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's`NextToken` parameter value
    #   is set to a token. To retrieve the next set of results, call
    #   `DescribeEcsClusters` again and assign that token to the request
    #   object's `NextToken` parameter. If there are no remaining results,
    #   the previous response object's `NextToken` parameter is set to
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   To receive a paginated response, use this parameter to specify the
    #   maximum number of results to be returned with a single call. If the
    #   number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeEcsClustersRequest AWS API Documentation
    #
    class DescribeEcsClustersRequest < Struct.new(
      :ecs_cluster_arns,
      :stack_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeEcsClusters` request.
    #
    # @!attribute [rw] ecs_clusters
    #   A list of `EcsCluster` objects containing the cluster descriptions.
    #   @return [Array<Types::EcsCluster>]
    #
    # @!attribute [rw] next_token
    #   If a paginated request does not return all of the remaining results,
    #   this parameter is set to a token that you can assign to the request
    #   object's `NextToken` parameter to retrieve the next set of results.
    #   If the previous paginated request returned all of the remaining
    #   results, this parameter is set to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeEcsClustersResult AWS API Documentation
    #
    class DescribeEcsClustersResult < Struct.new(
      :ecs_clusters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The instance ID. If you include this parameter, `DescribeElasticIps`
    #   returns a description of the Elastic IP addresses associated with
    #   the specified instance.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   A stack ID. If you include this parameter, `DescribeElasticIps`
    #   returns a description of the Elastic IP addresses that are
    #   registered with the specified stack.
    #   @return [String]
    #
    # @!attribute [rw] ips
    #   An array of Elastic IP addresses to be described. If you include
    #   this parameter, `DescribeElasticIps` returns a description of the
    #   specified Elastic IP addresses. Otherwise, it returns a description
    #   of every Elastic IP address.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeElasticIpsRequest AWS API Documentation
    #
    class DescribeElasticIpsRequest < Struct.new(
      :instance_id,
      :stack_id,
      :ips)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeElasticIps` request.
    #
    # @!attribute [rw] elastic_ips
    #   An `ElasticIps` object that describes the specified Elastic IP
    #   addresses.
    #   @return [Array<Types::ElasticIp>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeElasticIpsResult AWS API Documentation
    #
    class DescribeElasticIpsResult < Struct.new(
      :elastic_ips)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   A stack ID. The action describes the stack's Elastic Load Balancing
    #   instances.
    #   @return [String]
    #
    # @!attribute [rw] layer_ids
    #   A list of layer IDs. The action describes the Elastic Load Balancing
    #   instances for the specified layers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeElasticLoadBalancersRequest AWS API Documentation
    #
    class DescribeElasticLoadBalancersRequest < Struct.new(
      :stack_id,
      :layer_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeElasticLoadBalancers` request.
    #
    # @!attribute [rw] elastic_load_balancers
    #   A list of `ElasticLoadBalancer` objects that describe the specified
    #   Elastic Load Balancing instances.
    #   @return [Array<Types::ElasticLoadBalancer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeElasticLoadBalancersResult AWS API Documentation
    #
    class DescribeElasticLoadBalancersResult < Struct.new(
      :elastic_load_balancers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   A stack ID. If you use this parameter, `DescribeInstances` returns
    #   descriptions of the instances associated with the specified stack.
    #   @return [String]
    #
    # @!attribute [rw] layer_id
    #   A layer ID. If you use this parameter, `DescribeInstances` returns
    #   descriptions of the instances associated with the specified layer.
    #   @return [String]
    #
    # @!attribute [rw] instance_ids
    #   An array of instance IDs to be described. If you use this parameter,
    #   `DescribeInstances` returns a description of the specified
    #   instances. Otherwise, it returns a description of every instance.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeInstancesRequest AWS API Documentation
    #
    class DescribeInstancesRequest < Struct.new(
      :stack_id,
      :layer_id,
      :instance_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeInstances` request.
    #
    # @!attribute [rw] instances
    #   An array of `Instance` objects that describe the instances.
    #   @return [Array<Types::Instance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeInstancesResult AWS API Documentation
    #
    class DescribeInstancesResult < Struct.new(
      :instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @!attribute [rw] layer_ids
    #   An array of layer IDs that specify the layers to be described. If
    #   you omit this parameter, `DescribeLayers` returns a description of
    #   every layer in the specified stack.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeLayersRequest AWS API Documentation
    #
    class DescribeLayersRequest < Struct.new(
      :stack_id,
      :layer_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeLayers` request.
    #
    # @!attribute [rw] layers
    #   An array of `Layer` objects that describe the layers.
    #   @return [Array<Types::Layer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeLayersResult AWS API Documentation
    #
    class DescribeLayersResult < Struct.new(
      :layers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] layer_ids
    #   An array of layer IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeLoadBasedAutoScalingRequest AWS API Documentation
    #
    class DescribeLoadBasedAutoScalingRequest < Struct.new(
      :layer_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeLoadBasedAutoScaling` request.
    #
    # @!attribute [rw] load_based_auto_scaling_configurations
    #   An array of `LoadBasedAutoScalingConfiguration` objects that
    #   describe each layer's configuration.
    #   @return [Array<Types::LoadBasedAutoScalingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeLoadBasedAutoScalingResult AWS API Documentation
    #
    class DescribeLoadBasedAutoScalingResult < Struct.new(
      :load_based_auto_scaling_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeMyUserProfile` request.
    #
    # @!attribute [rw] user_profile
    #   A `UserProfile` object that describes the user's SSH information.
    #   @return [Types::SelfUserProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeMyUserProfileResult AWS API Documentation
    #
    class DescribeMyUserProfileResult < Struct.new(
      :user_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response to a `DescribeOperatingSystems` request.
    #
    # @!attribute [rw] operating_systems
    #   Contains information in response to a `DescribeOperatingSystems`
    #   request.
    #   @return [Array<Types::OperatingSystem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeOperatingSystemsResponse AWS API Documentation
    #
    class DescribeOperatingSystemsResponse < Struct.new(
      :operating_systems)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] iam_user_arn
    #   The user's IAM ARN. This can also be a federated user's ARN. For
    #   more information about IAM ARNs, see [Using Identifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribePermissionsRequest AWS API Documentation
    #
    class DescribePermissionsRequest < Struct.new(
      :iam_user_arn,
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribePermissions` request.
    #
    # @!attribute [rw] permissions
    #   An array of `Permission` objects that describe the stack
    #   permissions.
    #
    #   * If the request object contains only a stack ID, the array contains
    #     a `Permission` object with permissions for each of the stack IAM
    #     ARNs.
    #
    #   * If the request object contains only an IAM ARN, the array contains
    #     a `Permission` object with permissions for each of the user's
    #     stack IDs.
    #
    #   * If the request contains a stack ID and an IAM ARN, the array
    #     contains a single `Permission` object with permissions for the
    #     specified stack and IAM ARN.
    #   @return [Array<Types::Permission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribePermissionsResult AWS API Documentation
    #
    class DescribePermissionsResult < Struct.new(
      :permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The instance ID. If you use this parameter, `DescribeRaidArrays`
    #   returns descriptions of the RAID arrays associated with the
    #   specified instance.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @!attribute [rw] raid_array_ids
    #   An array of RAID array IDs. If you use this parameter,
    #   `DescribeRaidArrays` returns descriptions of the specified arrays.
    #   Otherwise, it returns a description of every array.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeRaidArraysRequest AWS API Documentation
    #
    class DescribeRaidArraysRequest < Struct.new(
      :instance_id,
      :stack_id,
      :raid_array_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeRaidArrays` request.
    #
    # @!attribute [rw] raid_arrays
    #   A `RaidArrays` object that describes the specified RAID arrays.
    #   @return [Array<Types::RaidArray>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeRaidArraysResult AWS API Documentation
    #
    class DescribeRaidArraysResult < Struct.new(
      :raid_arrays)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The ID of the stack with which the instances are registered. The
    #   operation returns descriptions of all registered Amazon RDS
    #   instances.
    #   @return [String]
    #
    # @!attribute [rw] rds_db_instance_arns
    #   An array containing the ARNs of the instances to be described.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeRdsDbInstancesRequest AWS API Documentation
    #
    class DescribeRdsDbInstancesRequest < Struct.new(
      :stack_id,
      :rds_db_instance_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeRdsDbInstances` request.
    #
    # @!attribute [rw] rds_db_instances
    #   An a array of `RdsDbInstance` objects that describe the instances.
    #   @return [Array<Types::RdsDbInstance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeRdsDbInstancesResult AWS API Documentation
    #
    class DescribeRdsDbInstancesResult < Struct.new(
      :rds_db_instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The stack ID. If you use this parameter, `DescribeServiceErrors`
    #   returns descriptions of the errors associated with the specified
    #   stack.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID. If you use this parameter, `DescribeServiceErrors`
    #   returns descriptions of the errors associated with the specified
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] service_error_ids
    #   An array of service error IDs. If you use this parameter,
    #   `DescribeServiceErrors` returns descriptions of the specified
    #   errors. Otherwise, it returns a description of every error.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeServiceErrorsRequest AWS API Documentation
    #
    class DescribeServiceErrorsRequest < Struct.new(
      :stack_id,
      :instance_id,
      :service_error_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeServiceErrors` request.
    #
    # @!attribute [rw] service_errors
    #   An array of `ServiceError` objects that describe the specified
    #   service errors.
    #   @return [Array<Types::ServiceError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeServiceErrorsResult AWS API Documentation
    #
    class DescribeServiceErrorsResult < Struct.new(
      :service_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeStackProvisioningParametersRequest AWS API Documentation
    #
    class DescribeStackProvisioningParametersRequest < Struct.new(
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeStackProvisioningParameters`
    # request.
    #
    # @!attribute [rw] agent_installer_url
    #   The OpsWorks Stacks agent installer's URL.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   An embedded object that contains the provisioning parameters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeStackProvisioningParametersResult AWS API Documentation
    #
    class DescribeStackProvisioningParametersResult < Struct.new(
      :agent_installer_url,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeStackSummaryRequest AWS API Documentation
    #
    class DescribeStackSummaryRequest < Struct.new(
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeStackSummary` request.
    #
    # @!attribute [rw] stack_summary
    #   A `StackSummary` object that contains the results.
    #   @return [Types::StackSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeStackSummaryResult AWS API Documentation
    #
    class DescribeStackSummaryResult < Struct.new(
      :stack_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_ids
    #   An array of stack IDs that specify the stacks to be described. If
    #   you omit this parameter, and have permissions to get information
    #   about all stacks, `DescribeStacks` returns a description of every
    #   stack. If the IAM policy that is attached to an IAM user limits the
    #   `DescribeStacks` action to specific stack ARNs, this parameter is
    #   required, and the user must specify a stack ARN that is allowed by
    #   the policy. Otherwise, `DescribeStacks` returns an `AccessDenied`
    #   error.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeStacksRequest AWS API Documentation
    #
    class DescribeStacksRequest < Struct.new(
      :stack_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeStacks` request.
    #
    # @!attribute [rw] stacks
    #   An array of `Stack` objects that describe the stacks.
    #   @return [Array<Types::Stack>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeStacksResult AWS API Documentation
    #
    class DescribeStacksResult < Struct.new(
      :stacks)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_ids
    #   An array of instance IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeTimeBasedAutoScalingRequest AWS API Documentation
    #
    class DescribeTimeBasedAutoScalingRequest < Struct.new(
      :instance_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeTimeBasedAutoScaling` request.
    #
    # @!attribute [rw] time_based_auto_scaling_configurations
    #   An array of `TimeBasedAutoScalingConfiguration` objects that
    #   describe the configuration for the specified instances.
    #   @return [Array<Types::TimeBasedAutoScalingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeTimeBasedAutoScalingResult AWS API Documentation
    #
    class DescribeTimeBasedAutoScalingResult < Struct.new(
      :time_based_auto_scaling_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] iam_user_arns
    #   An array of IAM or federated user ARNs that identify the users to be
    #   described.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeUserProfilesRequest AWS API Documentation
    #
    class DescribeUserProfilesRequest < Struct.new(
      :iam_user_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeUserProfiles` request.
    #
    # @!attribute [rw] user_profiles
    #   A `Users` object that describes the specified users.
    #   @return [Array<Types::UserProfile>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeUserProfilesResult AWS API Documentation
    #
    class DescribeUserProfilesResult < Struct.new(
      :user_profiles)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The instance ID. If you use this parameter, `DescribeVolumes`
    #   returns descriptions of the volumes associated with the specified
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   A stack ID. The action describes the stack's registered Amazon EBS
    #   volumes.
    #   @return [String]
    #
    # @!attribute [rw] raid_array_id
    #   The RAID array ID. If you use this parameter, `DescribeVolumes`
    #   returns descriptions of the volumes associated with the specified
    #   RAID array.
    #   @return [String]
    #
    # @!attribute [rw] volume_ids
    #   Am array of volume IDs. If you use this parameter, `DescribeVolumes`
    #   returns descriptions of the specified volumes. Otherwise, it returns
    #   a description of every volume.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeVolumesRequest AWS API Documentation
    #
    class DescribeVolumesRequest < Struct.new(
      :instance_id,
      :stack_id,
      :raid_array_id,
      :volume_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `DescribeVolumes` request.
    #
    # @!attribute [rw] volumes
    #   An array of volume IDs.
    #   @return [Array<Types::Volume>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DescribeVolumesResult AWS API Documentation
    #
    class DescribeVolumesResult < Struct.new(
      :volumes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] elastic_load_balancer_name
    #   The Elastic Load Balancing instance's name.
    #   @return [String]
    #
    # @!attribute [rw] layer_id
    #   The ID of the layer that the Elastic Load Balancing instance is
    #   attached to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DetachElasticLoadBalancerRequest AWS API Documentation
    #
    class DetachElasticLoadBalancerRequest < Struct.new(
      :elastic_load_balancer_name,
      :layer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] elastic_ip
    #   The Elastic IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/DisassociateElasticIpRequest AWS API Documentation
    #
    class DisassociateElasticIpRequest < Struct.new(
      :elastic_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon EBS volume. This data type maps directly to the
    # Amazon EC2 [EbsBlockDevice][1] data type.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot ID.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The number of I/O operations per second (IOPS) that the volume
    #   supports. For more information, see [EbsBlockDevice][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html
    #   @return [Integer]
    #
    # @!attribute [rw] volume_size
    #   The volume size, in GiB. For more information, see
    #   [EbsBlockDevice][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html
    #   @return [Integer]
    #
    # @!attribute [rw] volume_type
    #   The volume type. `gp2` for General Purpose (SSD) volumes, `io1` for
    #   Provisioned IOPS (SSD) volumes, `st1` for Throughput Optimized hard
    #   disk drives (HDD), `sc1` for Cold HDD,and `standard` for Magnetic
    #   volumes.
    #
    #   If you specify the `io1` volume type, you must also specify a value
    #   for the `Iops` attribute. The maximum ratio of provisioned IOPS to
    #   requested volume size (in GiB) is 50:1. Amazon Web Services uses the
    #   default volume size (in GiB) specified in the AMI attributes to set
    #   IOPS to 50 x (volume size).
    #   @return [String]
    #
    # @!attribute [rw] delete_on_termination
    #   Whether the volume is deleted on instance termination.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/EbsBlockDevice AWS API Documentation
    #
    class EbsBlockDevice < Struct.new(
      :snapshot_id,
      :iops,
      :volume_size,
      :volume_type,
      :delete_on_termination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a registered Amazon ECS cluster.
    #
    # @!attribute [rw] ecs_cluster_arn
    #   The cluster's ARN.
    #   @return [String]
    #
    # @!attribute [rw] ecs_cluster_name
    #   The cluster name.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @!attribute [rw] registered_at
    #   The time and date that the cluster was registered with the stack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/EcsCluster AWS API Documentation
    #
    class EcsCluster < Struct.new(
      :ecs_cluster_arn,
      :ecs_cluster_name,
      :stack_id,
      :registered_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Elastic IP address.
    #
    # @!attribute [rw] ip
    #   The IP address.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name, which can be a maximum of 32 characters.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region. For more information, see [Regions
    #   and Endpoints][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance that the address is attached to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/ElasticIp AWS API Documentation
    #
    class ElasticIp < Struct.new(
      :ip,
      :name,
      :domain,
      :region,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Elastic Load Balancing instance.
    #
    # @!attribute [rw] elastic_load_balancer_name
    #   The Elastic Load Balancing instance name.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The instance's Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The instance's public DNS name.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The ID of the stack with which the instance is associated.
    #   @return [String]
    #
    # @!attribute [rw] layer_id
    #   The ID of the layer to which the instance is attached.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID.
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   A list of Availability Zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs, if the stack is running in a VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ec2_instance_ids
    #   A list of the EC2 instances for which the Elastic Load Balancing
    #   instance is managing traffic.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/ElasticLoadBalancer AWS API Documentation
    #
    class ElasticLoadBalancer < Struct.new(
      :elastic_load_balancer_name,
      :region,
      :dns_name,
      :stack_id,
      :layer_id,
      :vpc_id,
      :availability_zones,
      :subnet_ids,
      :ec2_instance_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an app's environment variable.
    #
    # @!attribute [rw] key
    #   (Required) The environment variable's name, which can consist of up
    #   to 64 characters and must be specified. The name can contain upper-
    #   and lowercase letters, numbers, and underscores (\_), but it must
    #   start with a letter or underscore.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   (Optional) The environment variable's value, which can be left
    #   empty. If you specify a value, it can contain up to 256 characters,
    #   which must all be printable.
    #   @return [String]
    #
    # @!attribute [rw] secure
    #   (Optional) Whether the variable's value is returned by the
    #   DescribeApps action. To hide an environment variable's value, set
    #   `Secure` to `true`. `DescribeApps` returns `*****FILTERED*****`
    #   instead of the actual value. The default value for `Secure` is
    #   `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/EnvironmentVariable AWS API Documentation
    #
    class EnvironmentVariable < Struct.new(
      :key,
      :value,
      :secure)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] layer_id
    #   The layer ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/GetHostnameSuggestionRequest AWS API Documentation
    #
    class GetHostnameSuggestionRequest < Struct.new(
      :layer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `GetHostnameSuggestion` request.
    #
    # @!attribute [rw] layer_id
    #   The layer ID.
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   The generated host name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/GetHostnameSuggestionResult AWS API Documentation
    #
    class GetHostnameSuggestionResult < Struct.new(
      :layer_id,
      :hostname)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The instance's OpsWorks Stacks ID.
    #   @return [String]
    #
    # @!attribute [rw] valid_for_in_minutes
    #   The length of time (in minutes) that the grant is valid. When the
    #   grant expires at the end of this period, the user will no longer be
    #   able to use the credentials to log in. If the user is logged in at
    #   the time, they are logged out.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/GrantAccessRequest AWS API Documentation
    #
    class GrantAccessRequest < Struct.new(
      :instance_id,
      :valid_for_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `GrantAccess` request.
    #
    # @!attribute [rw] temporary_credential
    #   A `TemporaryCredential` object that contains the data needed to log
    #   in to the instance by RDP clients, such as the Microsoft Remote
    #   Desktop Connection.
    #   @return [Types::TemporaryCredential]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/GrantAccessResult AWS API Documentation
    #
    class GrantAccessResult < Struct.new(
      :temporary_credential)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an instance.
    #
    # @!attribute [rw] agent_version
    #   The agent version. This parameter is set to `INHERIT` if the
    #   instance inherits the default stack setting or to a a version number
    #   for a fixed agent version.
    #   @return [String]
    #
    # @!attribute [rw] ami_id
    #   A custom AMI ID to be used to create the instance. For more
    #   information, see [Instances][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The instance architecture: "i386" or "x86\_64".
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The instance's Amazon Resource Number (ARN).
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_type
    #   For load-based or time-based instances, the type.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The instance Availability Zone. For more information, see [Regions
    #   and Endpoints][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   An array of `BlockDeviceMapping` objects that specify the
    #   instance's block device mappings.
    #   @return [Array<Types::BlockDeviceMapping>]
    #
    # @!attribute [rw] created_at
    #   The time that the instance was created.
    #   @return [String]
    #
    # @!attribute [rw] ebs_optimized
    #   Whether this is an Amazon EBS-optimized instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] ec2_instance_id
    #   The ID of the associated Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] ecs_cluster_arn
    #   For container instances, the Amazon ECS cluster's ARN.
    #   @return [String]
    #
    # @!attribute [rw] ecs_container_instance_arn
    #   For container instances, the instance's ARN.
    #   @return [String]
    #
    # @!attribute [rw] elastic_ip
    #   The instance [Elastic IP address][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   The instance host name. The following are character limits for
    #   instance host names.
    #
    #   * Linux-based instances: 63 characters
    #
    #   * Windows-based instances: 15 characters
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_class
    #   For registered instances, the infrastructure class: `ec2` or
    #   `on-premises`.
    #   @return [String]
    #
    # @!attribute [rw] install_updates_on_boot
    #   Whether to install operating system and package updates when the
    #   instance boots. The default value is `true`. If this value is set to
    #   `false`, you must update instances manually by using
    #   CreateDeployment to run the `update_dependencies` stack command or
    #   by manually running `yum` (Amazon Linux) or `apt-get` (Ubuntu) on
    #   the instances.
    #
    #   <note markdown="1"> We strongly recommend using the default value of `true` to ensure
    #   that your instances have the latest security updates.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_arn
    #   The ARN of the instance's IAM profile. For more information about
    #   IAM ARNs, see [Using Identifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type, such as `t2.micro`.
    #   @return [String]
    #
    # @!attribute [rw] last_service_error_id
    #   The ID of the last service error. For more information, call
    #   DescribeServiceErrors.
    #   @return [String]
    #
    # @!attribute [rw] layer_ids
    #   An array containing the instance layer IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] os
    #   The instance's operating system.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The instance's platform.
    #   @return [String]
    #
    # @!attribute [rw] private_dns
    #   The instance's private DNS name.
    #   @return [String]
    #
    # @!attribute [rw] private_ip
    #   The instance's private IP address.
    #   @return [String]
    #
    # @!attribute [rw] public_dns
    #   The instance public DNS name.
    #   @return [String]
    #
    # @!attribute [rw] public_ip
    #   The instance public IP address.
    #   @return [String]
    #
    # @!attribute [rw] registered_by
    #   For registered instances, who performed the registration.
    #   @return [String]
    #
    # @!attribute [rw] reported_agent_version
    #   The instance's reported OpsWorks Stacks agent version.
    #   @return [String]
    #
    # @!attribute [rw] reported_os
    #   For registered instances, the reported operating system.
    #   @return [Types::ReportedOs]
    #
    # @!attribute [rw] root_device_type
    #   The instance's root device type. For more information, see [Storage
    #   for the Root Device][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device
    #   @return [String]
    #
    # @!attribute [rw] root_device_volume_id
    #   The root device volume ID.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   An array containing the instance security group IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ssh_host_dsa_key_fingerprint
    #   The SSH key's Deep Security Agent (DSA) fingerprint.
    #   @return [String]
    #
    # @!attribute [rw] ssh_host_rsa_key_fingerprint
    #   The SSH key's RSA fingerprint.
    #   @return [String]
    #
    # @!attribute [rw] ssh_key_name
    #   The instance's Amazon EC2 key-pair name.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The instance status:
    #
    #   * `booting`
    #
    #   * `connection_lost`
    #
    #   * `online`
    #
    #   * `pending`
    #
    #   * `rebooting`
    #
    #   * `requested`
    #
    #   * `running_setup`
    #
    #   * `setup_failed`
    #
    #   * `shutting_down`
    #
    #   * `start_failed`
    #
    #   * `stop_failed`
    #
    #   * `stopped`
    #
    #   * `stopping`
    #
    #   * `terminated`
    #
    #   * `terminating`
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The instance's subnet ID; applicable only if the stack is running
    #   in a VPC.
    #   @return [String]
    #
    # @!attribute [rw] tenancy
    #   The instance's tenancy option, such as `dedicated` or `host`.
    #   @return [String]
    #
    # @!attribute [rw] virtualization_type
    #   The instance's virtualization type: `paravirtual` or `hvm`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/Instance AWS API Documentation
    #
    class Instance < Struct.new(
      :agent_version,
      :ami_id,
      :architecture,
      :arn,
      :auto_scaling_type,
      :availability_zone,
      :block_device_mappings,
      :created_at,
      :ebs_optimized,
      :ec2_instance_id,
      :ecs_cluster_arn,
      :ecs_container_instance_arn,
      :elastic_ip,
      :hostname,
      :infrastructure_class,
      :install_updates_on_boot,
      :instance_id,
      :instance_profile_arn,
      :instance_type,
      :last_service_error_id,
      :layer_ids,
      :os,
      :platform,
      :private_dns,
      :private_ip,
      :public_dns,
      :public_ip,
      :registered_by,
      :reported_agent_version,
      :reported_os,
      :root_device_type,
      :root_device_volume_id,
      :security_group_ids,
      :ssh_host_dsa_key_fingerprint,
      :ssh_host_rsa_key_fingerprint,
      :ssh_key_name,
      :stack_id,
      :status,
      :subnet_id,
      :tenancy,
      :virtualization_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a description of an Amazon EC2 instance from the Amazon EC2
    # metadata service. For more information, see [Instance Metadata and
    # User Data][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sdkfornet/latest/apidocs/Index.html
    #
    # @!attribute [rw] document
    #   A JSON document that contains the metadata.
    #   @return [String]
    #
    # @!attribute [rw] signature
    #   A signature that can be used to verify the document's accuracy and
    #   authenticity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/InstanceIdentity AWS API Documentation
    #
    class InstanceIdentity < Struct.new(
      :document,
      :signature)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes how many instances a stack has for each status.
    #
    # @!attribute [rw] assigning
    #   The number of instances in the Assigning state.
    #   @return [Integer]
    #
    # @!attribute [rw] booting
    #   The number of instances with `booting` status.
    #   @return [Integer]
    #
    # @!attribute [rw] connection_lost
    #   The number of instances with `connection_lost` status.
    #   @return [Integer]
    #
    # @!attribute [rw] deregistering
    #   The number of instances in the Deregistering state.
    #   @return [Integer]
    #
    # @!attribute [rw] online
    #   The number of instances with `online` status.
    #   @return [Integer]
    #
    # @!attribute [rw] pending
    #   The number of instances with `pending` status.
    #   @return [Integer]
    #
    # @!attribute [rw] rebooting
    #   The number of instances with `rebooting` status.
    #   @return [Integer]
    #
    # @!attribute [rw] registered
    #   The number of instances in the Registered state.
    #   @return [Integer]
    #
    # @!attribute [rw] registering
    #   The number of instances in the Registering state.
    #   @return [Integer]
    #
    # @!attribute [rw] requested
    #   The number of instances with `requested` status.
    #   @return [Integer]
    #
    # @!attribute [rw] running_setup
    #   The number of instances with `running_setup` status.
    #   @return [Integer]
    #
    # @!attribute [rw] setup_failed
    #   The number of instances with `setup_failed` status.
    #   @return [Integer]
    #
    # @!attribute [rw] shutting_down
    #   The number of instances with `shutting_down` status.
    #   @return [Integer]
    #
    # @!attribute [rw] start_failed
    #   The number of instances with `start_failed` status.
    #   @return [Integer]
    #
    # @!attribute [rw] stop_failed
    #   The number of instances with `stop_failed` status.
    #   @return [Integer]
    #
    # @!attribute [rw] stopped
    #   The number of instances with `stopped` status.
    #   @return [Integer]
    #
    # @!attribute [rw] stopping
    #   The number of instances with `stopping` status.
    #   @return [Integer]
    #
    # @!attribute [rw] terminated
    #   The number of instances with `terminated` status.
    #   @return [Integer]
    #
    # @!attribute [rw] terminating
    #   The number of instances with `terminating` status.
    #   @return [Integer]
    #
    # @!attribute [rw] unassigning
    #   The number of instances in the Unassigning state.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/InstancesCount AWS API Documentation
    #
    class InstancesCount < Struct.new(
      :assigning,
      :booting,
      :connection_lost,
      :deregistering,
      :online,
      :pending,
      :rebooting,
      :registered,
      :registering,
      :requested,
      :running_setup,
      :setup_failed,
      :shutting_down,
      :start_failed,
      :stop_failed,
      :stopped,
      :stopping,
      :terminated,
      :terminating,
      :unassigning)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a layer.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Number (ARN) of a layer.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The layer stack ID.
    #   @return [String]
    #
    # @!attribute [rw] layer_id
    #   The layer ID.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The layer type.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The layer name. Layer names can be a maximum of 32 characters.
    #   @return [String]
    #
    # @!attribute [rw] shortname
    #   The layer short name.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The layer attributes.
    #
    #   For the `HaproxyStatsPassword`, `MysqlRootPassword`, and
    #   `GangliaPassword` attributes, OpsWorks Stacks returns
    #   `*****FILTERED*****` instead of the actual value
    #
    #   For an ECS Cluster layer, OpsWorks Stacks the `EcsClusterArn`
    #   attribute is set to the cluster's ARN.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] cloud_watch_logs_configuration
    #   The Amazon CloudWatch Logs configuration settings for the layer.
    #   @return [Types::CloudWatchLogsConfiguration]
    #
    # @!attribute [rw] custom_instance_profile_arn
    #   The ARN of the default IAM profile to be used for the layer's EC2
    #   instances. For more information about IAM ARNs, see [Using
    #   Identifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] custom_json
    #   A JSON formatted string containing the layer's custom stack
    #   configuration and deployment attributes.
    #   @return [String]
    #
    # @!attribute [rw] custom_security_group_ids
    #   An array containing the layer's custom security group IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_security_group_names
    #   An array containing the layer's security group names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] packages
    #   An array of `Package` objects that describe the layer's packages.
    #   @return [Array<String>]
    #
    # @!attribute [rw] volume_configurations
    #   A `VolumeConfigurations` object that describes the layer's Amazon
    #   EBS volumes.
    #   @return [Array<Types::VolumeConfiguration>]
    #
    # @!attribute [rw] enable_auto_healing
    #   Whether auto healing is disabled for the layer.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_assign_elastic_ips
    #   Whether to automatically assign an [Elastic IP address][1] to the
    #   layer's instances. For more information, see [How to Edit a
    #   Layer][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_assign_public_ips
    #   For stacks that are running in a VPC, whether to automatically
    #   assign a public IP address to the layer's instances. For more
    #   information, see [How to Edit a Layer][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html
    #   @return [Boolean]
    #
    # @!attribute [rw] default_recipes
    #   OpsWorks Stacks supports five lifecycle events: **setup**,
    #   **configuration**, **deploy**, **undeploy**, and **shutdown**. For
    #   each layer, OpsWorks Stacks runs a set of standard recipes for each
    #   event. You can also provide custom recipes for any or all layers and
    #   events. OpsWorks Stacks runs custom event recipes after the standard
    #   recipes. `LayerCustomRecipes` specifies the custom recipes for a
    #   particular layer to be run in response to each of the five events.
    #
    #   To specify a recipe, use the cookbook's directory name in the
    #   repository followed by two colons and the recipe name, which is the
    #   recipe's file name without the `.rb` extension. For example:
    #   `phpapp2::dbsetup` specifies the `dbsetup.rb` recipe in the
    #   repository's `phpapp2` folder.
    #   @return [Types::Recipes]
    #
    # @!attribute [rw] custom_recipes
    #   A `LayerCustomRecipes` object that specifies the layer's custom
    #   recipes.
    #   @return [Types::Recipes]
    #
    # @!attribute [rw] created_at
    #   Date when the layer was created.
    #   @return [String]
    #
    # @!attribute [rw] install_updates_on_boot
    #   Whether to install operating system and package updates when the
    #   instance boots. The default value is `true`. If this value is set to
    #   `false`, you must then update your instances manually by using
    #   CreateDeployment to run the `update_dependencies` stack command or
    #   manually running `yum` (Amazon Linux) or `apt-get` (Ubuntu) on the
    #   instances.
    #
    #   <note markdown="1"> We strongly recommend using the default value of `true`, to ensure
    #   that your instances have the latest security updates.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] use_ebs_optimized_instances
    #   Whether the layer uses Amazon EBS-optimized instances.
    #   @return [Boolean]
    #
    # @!attribute [rw] lifecycle_event_configuration
    #   A `LifeCycleEventConfiguration` object that specifies the Shutdown
    #   event configuration.
    #   @return [Types::LifecycleEventConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/Layer AWS API Documentation
    #
    class Layer < Struct.new(
      :arn,
      :stack_id,
      :layer_id,
      :type,
      :name,
      :shortname,
      :attributes,
      :cloud_watch_logs_configuration,
      :custom_instance_profile_arn,
      :custom_json,
      :custom_security_group_ids,
      :default_security_group_names,
      :packages,
      :volume_configurations,
      :enable_auto_healing,
      :auto_assign_elastic_ips,
      :auto_assign_public_ips,
      :default_recipes,
      :custom_recipes,
      :created_at,
      :install_updates_on_boot,
      :use_ebs_optimized_instances,
      :lifecycle_event_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the lifecycle event configuration
    #
    # @!attribute [rw] shutdown
    #   A `ShutdownEventConfiguration` object that specifies the Shutdown
    #   event configuration.
    #   @return [Types::ShutdownEventConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/LifecycleEventConfiguration AWS API Documentation
    #
    class LifecycleEventConfiguration < Struct.new(
      :shutdown)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The stack or layer's Amazon Resource Number (ARN).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Do not use. A validation exception occurs if you add a `MaxResults`
    #   parameter to a `ListTagsRequest` call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Do not use. A validation exception occurs if you add a `NextToken`
    #   parameter to a `ListTagsRequest` call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/ListTagsRequest AWS API Documentation
    #
    class ListTagsRequest < Struct.new(
      :resource_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `ListTags` request.
    #
    # @!attribute [rw] tags
    #   A set of key-value pairs that contain tag keys and tag values that
    #   are attached to a stack or layer.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] next_token
    #   If a paginated request does not return all of the remaining results,
    #   this parameter is set to a token that you can assign to the request
    #   object's `NextToken` parameter to get the next set of results. If
    #   the previous paginated request returned all of the remaining
    #   results, this parameter is set to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/ListTagsResult AWS API Documentation
    #
    class ListTagsResult < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a layer's load-based auto scaling configuration.
    #
    # @!attribute [rw] layer_id
    #   The layer ID.
    #   @return [String]
    #
    # @!attribute [rw] enable
    #   Whether load-based auto scaling is enabled for the layer.
    #   @return [Boolean]
    #
    # @!attribute [rw] up_scaling
    #   An `AutoScalingThresholds` object that describes the upscaling
    #   configuration, which defines how and when OpsWorks Stacks increases
    #   the number of instances.
    #   @return [Types::AutoScalingThresholds]
    #
    # @!attribute [rw] down_scaling
    #   An `AutoScalingThresholds` object that describes the downscaling
    #   configuration, which defines how and when OpsWorks Stacks reduces
    #   the number of instances.
    #   @return [Types::AutoScalingThresholds]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/LoadBasedAutoScalingConfiguration AWS API Documentation
    #
    class LoadBasedAutoScalingConfiguration < Struct.new(
      :layer_id,
      :enable,
      :up_scaling,
      :down_scaling)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes supported operating systems in OpsWorks Stacks.
    #
    # @!attribute [rw] name
    #   The name of the operating system, such as `Amazon Linux 2`.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of a supported operating system, such as `Amazon Linux 2`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of a supported operating system, either `Linux` or
    #   `Windows`.
    #   @return [String]
    #
    # @!attribute [rw] configuration_managers
    #   Supported configuration manager name and versions for an OpsWorks
    #   Stacks operating system.
    #   @return [Array<Types::OperatingSystemConfigurationManager>]
    #
    # @!attribute [rw] reported_name
    #   A short name for the operating system manufacturer.
    #   @return [String]
    #
    # @!attribute [rw] reported_version
    #   The version of the operating system, including the release and
    #   edition, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] supported
    #   Indicates that an operating system is not supported for new
    #   instances.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/OperatingSystem AWS API Documentation
    #
    class OperatingSystem < Struct.new(
      :name,
      :id,
      :type,
      :configuration_managers,
      :reported_name,
      :reported_version,
      :supported)
      SENSITIVE = []
      include Aws::Structure
    end

    # A block that contains information about the configuration manager
    # (Chef) and the versions of the configuration manager that are
    # supported for an operating system.
    #
    # @!attribute [rw] name
    #   The name of the configuration manager, which is Chef.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The versions of the configuration manager that are supported by an
    #   operating system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/OperatingSystemConfigurationManager AWS API Documentation
    #
    class OperatingSystemConfigurationManager < Struct.new(
      :name,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes stack or user permissions.
    #
    # @!attribute [rw] stack_id
    #   A stack ID.
    #   @return [String]
    #
    # @!attribute [rw] iam_user_arn
    #   The Amazon Resource Name (ARN) for an Identity and Access Management
    #   (IAM) role. For more information about IAM ARNs, see [Using
    #   Identifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] allow_ssh
    #   Whether the user can use SSH.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_sudo
    #   Whether the user can use **sudo**.
    #   @return [Boolean]
    #
    # @!attribute [rw] level
    #   The user's permission level, which must be the following:
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
    #   For more information on the permissions associated with these
    #   levels, see [Managing User Permissions][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/Permission AWS API Documentation
    #
    class Permission < Struct.new(
      :stack_id,
      :iam_user_arn,
      :allow_ssh,
      :allow_sudo,
      :level)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an instance's RAID array.
    #
    # @!attribute [rw] raid_array_id
    #   The array ID.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The array name.
    #   @return [String]
    #
    # @!attribute [rw] raid_level
    #   The [RAID level][1].
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/Standard_RAID_levels
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_disks
    #   The number of disks in the array.
    #   @return [Integer]
    #
    # @!attribute [rw] size
    #   The array's size.
    #   @return [Integer]
    #
    # @!attribute [rw] device
    #   The array's Linux device. For example /dev/mdadm0.
    #   @return [String]
    #
    # @!attribute [rw] mount_point
    #   The array's mount point.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The array's Availability Zone. For more information, see [Regions
    #   and Endpoints][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   When the RAID array was created.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   The volume type, standard or PIOPS.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   For PIOPS volumes, the IOPS per disk.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RaidArray AWS API Documentation
    #
    class RaidArray < Struct.new(
      :raid_array_id,
      :instance_id,
      :name,
      :raid_level,
      :number_of_disks,
      :size,
      :device,
      :mount_point,
      :availability_zone,
      :created_at,
      :stack_id,
      :volume_type,
      :iops)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon RDS instance.
    #
    # @!attribute [rw] rds_db_instance_arn
    #   The instance's ARN.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_identifier
    #   The database instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] db_user
    #   The master user name.
    #   @return [String]
    #
    # @!attribute [rw] db_password
    #   OpsWorks Stacks returns `*****FILTERED*****` instead of the actual
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The instance's Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   The instance's address.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The instance's database engine.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The ID of the stack with which the instance is registered.
    #   @return [String]
    #
    # @!attribute [rw] missing_on_rds
    #   Set to `true` if OpsWorks Stacks is unable to discover the Amazon
    #   RDS instance. OpsWorks Stacks attempts to discover the instance only
    #   once. If this value is set to `true`, you must deregister the
    #   instance, and then register it again.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RdsDbInstance AWS API Documentation
    #
    class RdsDbInstance < Struct.new(
      :rds_db_instance_arn,
      :db_instance_identifier,
      :db_user,
      :db_password,
      :region,
      :address,
      :engine,
      :stack_id,
      :missing_on_rds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RebootInstanceRequest AWS API Documentation
    #
    class RebootInstanceRequest < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # OpsWorks Stacks supports five lifecycle events: **setup**,
    # **configuration**, **deploy**, **undeploy**, and **shutdown**. For
    # each layer, OpsWorks Stacks runs a set of standard recipes for each
    # event. In addition, you can provide custom recipes for any or all
    # layers and events. OpsWorks Stacks runs custom event recipes after the
    # standard recipes. `LayerCustomRecipes` specifies the custom recipes
    # for a particular layer to be run in response to each of the five
    # events.
    #
    # To specify a recipe, use the cookbook's directory name in the
    # repository followed by two colons and the recipe name, which is the
    # recipe's file name without the .rb extension. For example:
    # phpapp2::dbsetup specifies the dbsetup.rb recipe in the repository's
    # phpapp2 folder.
    #
    # @!attribute [rw] setup
    #   An array of custom recipe names to be run following a `setup` event.
    #   @return [Array<String>]
    #
    # @!attribute [rw] configure
    #   An array of custom recipe names to be run following a `configure`
    #   event.
    #   @return [Array<String>]
    #
    # @!attribute [rw] deploy
    #   An array of custom recipe names to be run following a `deploy`
    #   event.
    #   @return [Array<String>]
    #
    # @!attribute [rw] undeploy
    #   An array of custom recipe names to be run following a `undeploy`
    #   event.
    #   @return [Array<String>]
    #
    # @!attribute [rw] shutdown
    #   An array of custom recipe names to be run following a `shutdown`
    #   event.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/Recipes AWS API Documentation
    #
    class Recipes < Struct.new(
      :setup,
      :configure,
      :deploy,
      :undeploy,
      :shutdown)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ecs_cluster_arn
    #   The cluster's ARN.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterEcsClusterRequest AWS API Documentation
    #
    class RegisterEcsClusterRequest < Struct.new(
      :ecs_cluster_arn,
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `RegisterEcsCluster` request.
    #
    # @!attribute [rw] ecs_cluster_arn
    #   The cluster's ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterEcsClusterResult AWS API Documentation
    #
    class RegisterEcsClusterResult < Struct.new(
      :ecs_cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] elastic_ip
    #   The Elastic IP address.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterElasticIpRequest AWS API Documentation
    #
    class RegisterElasticIpRequest < Struct.new(
      :elastic_ip,
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `RegisterElasticIp` request.
    #
    # @!attribute [rw] elastic_ip
    #   The Elastic IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterElasticIpResult AWS API Documentation
    #
    class RegisterElasticIpResult < Struct.new(
      :elastic_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The ID of the stack that the instance is to be registered with.
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   The instance's host name. The following are character limits for
    #   instance host names.
    #
    #   * Linux-based instances: 63 characters
    #
    #   * Windows-based instances: 15 characters
    #   @return [String]
    #
    # @!attribute [rw] public_ip
    #   The instance's public IP address.
    #   @return [String]
    #
    # @!attribute [rw] private_ip
    #   The instance's private IP address.
    #   @return [String]
    #
    # @!attribute [rw] rsa_public_key
    #   The instances public RSA key. This key is used to encrypt
    #   communication between the instance and the service.
    #   @return [String]
    #
    # @!attribute [rw] rsa_public_key_fingerprint
    #   The instances public RSA key fingerprint.
    #   @return [String]
    #
    # @!attribute [rw] instance_identity
    #   An InstanceIdentity object that contains the instance's identity.
    #   @return [Types::InstanceIdentity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterInstanceRequest AWS API Documentation
    #
    class RegisterInstanceRequest < Struct.new(
      :stack_id,
      :hostname,
      :public_ip,
      :private_ip,
      :rsa_public_key,
      :rsa_public_key_fingerprint,
      :instance_identity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `RegisterInstanceResult` request.
    #
    # @!attribute [rw] instance_id
    #   The registered instance's OpsWorks Stacks ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterInstanceResult AWS API Documentation
    #
    class RegisterInstanceResult < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @!attribute [rw] rds_db_instance_arn
    #   The Amazon RDS instance's ARN.
    #   @return [String]
    #
    # @!attribute [rw] db_user
    #   The database's master user name.
    #   @return [String]
    #
    # @!attribute [rw] db_password
    #   The database password.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterRdsDbInstanceRequest AWS API Documentation
    #
    class RegisterRdsDbInstanceRequest < Struct.new(
      :stack_id,
      :rds_db_instance_arn,
      :db_user,
      :db_password)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ec2_volume_id
    #   The Amazon EBS volume ID.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterVolumeRequest AWS API Documentation
    #
    class RegisterVolumeRequest < Struct.new(
      :ec2_volume_id,
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a `RegisterVolume` request.
    #
    # @!attribute [rw] volume_id
    #   The volume ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/RegisterVolumeResult AWS API Documentation
    #
    class RegisterVolumeResult < Struct.new(
      :volume_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A registered instance's reported operating system.
    #
    # @!attribute [rw] family
    #   The operating system family.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The operating system name.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The operating system version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/ReportedOs AWS API Documentation
    #
    class ReportedOs < Struct.new(
      :family,
      :name,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that a resource was not found.
    #
    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a user's SSH information.
    #
    # @!attribute [rw] iam_user_arn
    #   The user's IAM ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The user's name.
    #   @return [String]
    #
    # @!attribute [rw] ssh_username
    #   The user's SSH user name.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key
    #   The user's SSH public key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/SelfUserProfile AWS API Documentation
    #
    class SelfUserProfile < Struct.new(
      :iam_user_arn,
      :name,
      :ssh_username,
      :ssh_public_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an OpsWorks Stacks service error.
    #
    # @!attribute [rw] service_error_id
    #   The error ID.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The error type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that describes the error.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   When the error occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/ServiceError AWS API Documentation
    #
    class ServiceError < Struct.new(
      :service_error_id,
      :stack_id,
      :instance_id,
      :type,
      :message,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] layer_id
    #   The layer ID.
    #   @return [String]
    #
    # @!attribute [rw] enable
    #   Enables load-based auto scaling for the layer.
    #   @return [Boolean]
    #
    # @!attribute [rw] up_scaling
    #   An `AutoScalingThresholds` object with the upscaling threshold
    #   configuration. If the load exceeds these thresholds for a specified
    #   amount of time, OpsWorks Stacks starts a specified number of
    #   instances.
    #   @return [Types::AutoScalingThresholds]
    #
    # @!attribute [rw] down_scaling
    #   An `AutoScalingThresholds` object with the downscaling threshold
    #   configuration. If the load falls below these thresholds for a
    #   specified amount of time, OpsWorks Stacks stops a specified number
    #   of instances.
    #   @return [Types::AutoScalingThresholds]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/SetLoadBasedAutoScalingRequest AWS API Documentation
    #
    class SetLoadBasedAutoScalingRequest < Struct.new(
      :layer_id,
      :enable,
      :up_scaling,
      :down_scaling)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @!attribute [rw] iam_user_arn
    #   The user's IAM ARN. This can also be a federated user's ARN.
    #   @return [String]
    #
    # @!attribute [rw] allow_ssh
    #   The user is allowed to use SSH to communicate with the instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_sudo
    #   The user is allowed to use **sudo** to elevate privileges.
    #   @return [Boolean]
    #
    # @!attribute [rw] level
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
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/SetPermissionRequest AWS API Documentation
    #
    class SetPermissionRequest < Struct.new(
      :stack_id,
      :iam_user_arn,
      :allow_ssh,
      :allow_sudo,
      :level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_schedule
    #   An `AutoScalingSchedule` with the instance schedule.
    #   @return [Types::WeeklyAutoScalingSchedule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/SetTimeBasedAutoScalingRequest AWS API Documentation
    #
    class SetTimeBasedAutoScalingRequest < Struct.new(
      :instance_id,
      :auto_scaling_schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Shutdown event configuration.
    #
    # @!attribute [rw] execution_timeout
    #   The time, in seconds, that OpsWorks Stacks waits after triggering a
    #   Shutdown event before shutting down an instance.
    #   @return [Integer]
    #
    # @!attribute [rw] delay_until_elb_connections_drained
    #   Whether to enable Elastic Load Balancing connection draining. For
    #   more information, see [Connection Draining][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html#conn-drain
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/ShutdownEventConfiguration AWS API Documentation
    #
    class ShutdownEventConfiguration < Struct.new(
      :execution_timeout,
      :delay_until_elb_connections_drained)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the information required to retrieve an app or cookbook from
    # a repository. For more information, see [Creating Apps][1] or [Custom
    # Recipes and Cookbooks][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html
    # [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html
    #
    # @!attribute [rw] type
    #   The repository type.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The source URL. The following is an example of an Amazon S3 source
    #   URL:
    #   `https://s3.amazonaws.com/opsworks-demo-bucket/opsworks_cookbook_demo.tar.gz`.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   This parameter depends on the repository type.
    #
    #   * For Amazon S3 bundles, set `Username` to the appropriate IAM
    #     access key ID.
    #
    #   * For HTTP bundles, Git repositories, and Subversion repositories,
    #     set `Username` to the user name.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   When included in a request, the parameter depends on the repository
    #   type.
    #
    #   * For Amazon S3 bundles, set `Password` to the appropriate IAM
    #     secret access key.
    #
    #   * For HTTP bundles and Subversion repositories, set `Password` to
    #     the password.
    #
    #   For more information on how to safely handle IAM credentials, see
    #   [https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html][1].
    #
    #   In responses, OpsWorks Stacks returns `*****FILTERED*****` instead
    #   of the actual value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html
    #   @return [String]
    #
    # @!attribute [rw] ssh_key
    #   In requests, the repository's SSH key.
    #
    #   In responses, OpsWorks Stacks returns `*****FILTERED*****` instead
    #   of the actual value.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The application's version. OpsWorks Stacks enables you to easily
    #   deploy new versions of an application. One of the simplest
    #   approaches is to have branches or revisions in your repository that
    #   represent different versions that can potentially be deployed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/Source AWS API Documentation
    #
    class Source < Struct.new(
      :type,
      :url,
      :username,
      :password,
      :ssh_key,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an app's SSL configuration.
    #
    # @!attribute [rw] certificate
    #   The contents of the certificate's domain.crt file.
    #   @return [String]
    #
    # @!attribute [rw] private_key
    #   The private key; the contents of the certificate's domain.kex file.
    #   @return [String]
    #
    # @!attribute [rw] chain
    #   Optional. Can be used to specify an intermediate certificate
    #   authority key or client authentication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/SslConfiguration AWS API Documentation
    #
    class SslConfiguration < Struct.new(
      :certificate,
      :private_key,
      :chain)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a stack.
    #
    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The stack name. Stack names can be a maximum of 64 characters.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The stack's ARN.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The stack Amazon Web Services Region, such as `ap-northeast-2`. For
    #   more information about Amazon Web Services Regions, see [Regions and
    #   Endpoints][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID; applicable only if the stack is running in a VPC.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The stack's attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] service_role_arn
    #   The stack Identity and Access Management (IAM) role.
    #   @return [String]
    #
    # @!attribute [rw] default_instance_profile_arn
    #   The ARN of an IAM profile that is the default profile for all of the
    #   stack's EC2 instances. For more information about IAM ARNs, see
    #   [Using Identifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] default_os
    #   The stack's default operating system.
    #   @return [String]
    #
    # @!attribute [rw] hostname_theme
    #   The stack host name theme, with spaces replaced by underscores.
    #   @return [String]
    #
    # @!attribute [rw] default_availability_zone
    #   The stack's default Availability Zone. For more information, see
    #   [Regions and Endpoints][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html
    #   @return [String]
    #
    # @!attribute [rw] default_subnet_id
    #   The default subnet ID; applicable only if the stack is running in a
    #   VPC.
    #   @return [String]
    #
    # @!attribute [rw] custom_json
    #   A JSON object that contains user-defined attributes to be added to
    #   the stack configuration and deployment attributes. You can use
    #   custom JSON to override the corresponding default stack
    #   configuration attribute values or to pass data to recipes. The
    #   string should be in the following format:
    #
    #   `"\{"key1": "value1", "key2": "value2",...\}"`
    #
    #   For more information on custom JSON, see [Use Custom JSON to Modify
    #   the Stack Configuration Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html
    #   @return [String]
    #
    # @!attribute [rw] configuration_manager
    #   The configuration manager.
    #   @return [Types::StackConfigurationManager]
    #
    # @!attribute [rw] chef_configuration
    #   A `ChefConfiguration` object that specifies whether to enable
    #   Berkshelf and the Berkshelf version. For more information, see
    #   [Create a New Stack][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html
    #   @return [Types::ChefConfiguration]
    #
    # @!attribute [rw] use_custom_cookbooks
    #   Whether the stack uses custom cookbooks.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_opsworks_security_groups
    #   Whether the stack automatically associates the OpsWorks Stacks
    #   built-in security groups with the stack's layers.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_cookbooks_source
    #   Contains the information required to retrieve an app or cookbook
    #   from a repository. For more information, see [Adding Apps][1] or
    #   [Cookbooks and Recipes][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html
    #   @return [Types::Source]
    #
    # @!attribute [rw] default_ssh_key_name
    #   A default Amazon EC2 key pair for the stack's instances. You can
    #   override this value when you create or update an instance.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date when the stack was created.
    #   @return [String]
    #
    # @!attribute [rw] default_root_device_type
    #   The default root device type. This value is used by default for all
    #   instances in the stack, but you can override it when you create an
    #   instance. For more information, see [Storage for the Root
    #   Device][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The agent version. This parameter is set to `LATEST` for
    #   auto-update. or a version number for a fixed agent version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/Stack AWS API Documentation
    #
    class Stack < Struct.new(
      :stack_id,
      :name,
      :arn,
      :region,
      :vpc_id,
      :attributes,
      :service_role_arn,
      :default_instance_profile_arn,
      :default_os,
      :hostname_theme,
      :default_availability_zone,
      :default_subnet_id,
      :custom_json,
      :configuration_manager,
      :chef_configuration,
      :use_custom_cookbooks,
      :use_opsworks_security_groups,
      :custom_cookbooks_source,
      :default_ssh_key_name,
      :created_at,
      :default_root_device_type,
      :agent_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration manager.
    #
    # @!attribute [rw] name
    #   The name. This parameter must be set to `Chef`.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The Chef version. This parameter must be set to 12, 11.10, or 11.4
    #   for Linux stacks, and to 12.2 for Windows stacks. The default value
    #   for Linux stacks is 12.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/StackConfigurationManager AWS API Documentation
    #
    class StackConfigurationManager < Struct.new(
      :name,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarizes the number of layers, instances, and apps in a stack.
    #
    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The stack name.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The stack's ARN.
    #   @return [String]
    #
    # @!attribute [rw] layers_count
    #   The number of layers.
    #   @return [Integer]
    #
    # @!attribute [rw] apps_count
    #   The number of apps.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_count
    #   An `InstancesCount` object with the number of instances in each
    #   status.
    #   @return [Types::InstancesCount]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/StackSummary AWS API Documentation
    #
    class StackSummary < Struct.new(
      :stack_id,
      :name,
      :arn,
      :layers_count,
      :apps_count,
      :instances_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/StartInstanceRequest AWS API Documentation
    #
    class StartInstanceRequest < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/StartStackRequest AWS API Documentation
    #
    class StartStackRequest < Struct.new(
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   Specifies whether to force an instance to stop. If the instance's
    #   root device type is `ebs`, or EBS-backed, adding the `Force`
    #   parameter to the `StopInstances` API call disassociates the OpsWorks
    #   Stacks instance from EC2, and forces deletion of *only* the OpsWorks
    #   Stacks instance. You must also delete the formerly-associated
    #   instance in EC2 after troubleshooting and replacing the OpsWorks
    #   Stacks instance with a new one.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/StopInstanceRequest AWS API Documentation
    #
    class StopInstanceRequest < Struct.new(
      :instance_id,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/StopStackRequest AWS API Documentation
    #
    class StopStackRequest < Struct.new(
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The stack or layer's Amazon Resource Number (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to a
    #   stack or layer.
    #
    #   * The key cannot be empty.
    #
    #   * The key can be a maximum of 127 characters, and can contain only
    #     Unicode letters, numbers, or separators, or the following special
    #     characters: `+ - = . _ : /`
    #
    #   * The value can be a maximum 255 characters, and contain only
    #     Unicode letters, numbers, or separators, or the following special
    #     characters: `+ - = . _ : /`
    #
    #   * Leading and trailing white spaces are trimmed from both the key
    #     and value.
    #
    #   * A maximum of 40 tags is allowed for any resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the data needed by RDP clients such as the Microsoft Remote
    # Desktop Connection to log in to the instance.
    #
    # @!attribute [rw] username
    #   The user name.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password.
    #   @return [String]
    #
    # @!attribute [rw] valid_for_in_minutes
    #   The length of time (in minutes) that the grant is valid. When the
    #   grant expires, at the end of this period, the user will no longer be
    #   able to use the credentials to log in. If they are logged in at the
    #   time, they are automatically logged out.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_id
    #   The instance's OpsWorks Stacks ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/TemporaryCredential AWS API Documentation
    #
    class TemporaryCredential < Struct.new(
      :username,
      :password,
      :valid_for_in_minutes,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an instance's time-based auto scaling configuration.
    #
    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_schedule
    #   A `WeeklyAutoScalingSchedule` object with the instance schedule.
    #   @return [Types::WeeklyAutoScalingSchedule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/TimeBasedAutoScalingConfiguration AWS API Documentation
    #
    class TimeBasedAutoScalingConfiguration < Struct.new(
      :instance_id,
      :auto_scaling_schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UnassignInstanceRequest AWS API Documentation
    #
    class UnassignInstanceRequest < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] volume_id
    #   The volume ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UnassignVolumeRequest AWS API Documentation
    #
    class UnassignVolumeRequest < Struct.new(
      :volume_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The stack or layer's Amazon Resource Number (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of the keys of tags to be removed from a stack or layer.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The app ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The app name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the app.
    #   @return [String]
    #
    # @!attribute [rw] data_sources
    #   The app's data sources.
    #   @return [Array<Types::DataSource>]
    #
    # @!attribute [rw] type
    #   The app type.
    #   @return [String]
    #
    # @!attribute [rw] app_source
    #   A `Source` object that specifies the app repository.
    #   @return [Types::Source]
    #
    # @!attribute [rw] domains
    #   The app's virtual host settings, with multiple domains separated by
    #   commas. For example: `'www.example.com, example.com'`
    #   @return [Array<String>]
    #
    # @!attribute [rw] enable_ssl
    #   Whether SSL is enabled for the app.
    #   @return [Boolean]
    #
    # @!attribute [rw] ssl_configuration
    #   An `SslConfiguration` object with the SSL configuration.
    #   @return [Types::SslConfiguration]
    #
    # @!attribute [rw] attributes
    #   One or more user-defined key/value pairs to be added to the stack
    #   attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] environment
    #   An array of `EnvironmentVariable` objects that specify environment
    #   variables to be associated with the app. After you deploy the app,
    #   these variables are defined on the associated app server
    #   instances.For more information, see [ Environment Variables][1].
    #
    #   There is no specific limit on the number of environment variables.
    #   However, the size of the associated data structure - which includes
    #   the variables' names, values, and protected flag values - cannot
    #   exceed 20 KB. This limit should accommodate most if not all use
    #   cases. Exceeding it will cause an exception with the message,
    #   "Environment: is too large (maximum is 20 KB)."
    #
    #   <note markdown="1"> If you have specified one or more environment variables, you cannot
    #   modify the stack's Chef version.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment
    #   @return [Array<Types::EnvironmentVariable>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateAppRequest AWS API Documentation
    #
    class UpdateAppRequest < Struct.new(
      :app_id,
      :name,
      :description,
      :data_sources,
      :type,
      :app_source,
      :domains,
      :enable_ssl,
      :ssl_configuration,
      :attributes,
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] elastic_ip
    #   The IP address for which you want to update the name.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name, which can be a maximum of 32 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateElasticIpRequest AWS API Documentation
    #
    class UpdateElasticIpRequest < Struct.new(
      :elastic_ip,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @!attribute [rw] layer_ids
    #   The instance's layer IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_type
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
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_type
    #   For load-based or time-based instances, the type. Windows stacks can
    #   use only time-based instances.
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   The instance host name. The following are character limits for
    #   instance host names.
    #
    #   * Linux-based instances: 63 characters
    #
    #   * Windows-based instances: 15 characters
    #   @return [String]
    #
    # @!attribute [rw] os
    #   The instance's operating system, which must be set to one of the
    #   following. You cannot update an instance that is using a custom AMI.
    #
    #   * A supported Linux operating system: An Amazon Linux version, such
    #     as `Amazon Linux 2`, `Amazon Linux 2018.03`, `Amazon Linux
    #     2017.09`, `Amazon Linux 2017.03`, `Amazon Linux 2016.09`, `Amazon
    #     Linux 2016.03`, `Amazon Linux 2015.09`, or `Amazon Linux 2015.03`.
    #
    #   * A supported Ubuntu operating system, such as `Ubuntu 18.04 LTS`,
    #     `Ubuntu 16.04 LTS`, `Ubuntu 14.04 LTS`, or `Ubuntu 12.04 LTS`.
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
    #   Not all operating systems are supported with all versions of Chef.
    #   For more information about supported operating systems, see
    #   [OpsWorks Stacks Operating Systems][1].
    #
    #   The default option is the current Amazon Linux version. If you set
    #   this parameter to `Custom`, you must use the AmiId parameter to
    #   specify the custom AMI that you want to use. For more information
    #   about how to use custom AMIs with OpsWorks, see [Using Custom
    #   AMIs][2].
    #
    #   <note markdown="1"> You can specify a different Linux operating system for the updated
    #   stack, but you cannot change from Linux to Windows or Windows to
    #   Linux.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html
    #   @return [String]
    #
    # @!attribute [rw] ami_id
    #   The ID of the AMI that was used to create the instance. The value of
    #   this parameter must be the same AMI ID that the instance is already
    #   using. You cannot apply a new AMI to an instance by running
    #   UpdateInstance. UpdateInstance does not work on instances that are
    #   using custom AMIs.
    #   @return [String]
    #
    # @!attribute [rw] ssh_key_name
    #   The instance's Amazon EC2 key name.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The instance architecture. Instance types do not necessarily support
    #   both architectures. For a list of the architectures that are
    #   supported by the different instance types, see [Instance Families
    #   and Types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #   @return [String]
    #
    # @!attribute [rw] install_updates_on_boot
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
    #   @return [Boolean]
    #
    # @!attribute [rw] ebs_optimized
    #   This property cannot be updated.
    #   @return [Boolean]
    #
    # @!attribute [rw] agent_version
    #   The default OpsWorks Stacks agent version. You have the following
    #   options:
    #
    #   * `INHERIT` - Use the stack's default agent version setting.
    #
    #   * *version\_number* - Use the specified agent version. This value
    #     overrides the stack's default setting. To update the agent
    #     version, you must edit the instance configuration and specify a
    #     new version. OpsWorks Stacks installs that version on the
    #     instance.
    #
    #   The default setting is `INHERIT`. To specify an agent version, you
    #   must use the complete version number, not the abbreviated number
    #   shown on the console. For a list of available agent version numbers,
    #   call DescribeAgentVersions.
    #
    #   AgentVersion cannot be set to Chef 12.2.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateInstanceRequest AWS API Documentation
    #
    class UpdateInstanceRequest < Struct.new(
      :instance_id,
      :layer_ids,
      :instance_type,
      :auto_scaling_type,
      :hostname,
      :os,
      :ami_id,
      :ssh_key_name,
      :architecture,
      :install_updates_on_boot,
      :ebs_optimized,
      :agent_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] layer_id
    #   The layer ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The layer name, which is used by the console. Layer names can be a
    #   maximum of 32 characters.
    #   @return [String]
    #
    # @!attribute [rw] shortname
    #   For custom layers only, use this parameter to specify the layer's
    #   short name, which is used internally by OpsWorks Stacks and by Chef.
    #   The short name is also used as the name for the directory where your
    #   app files are installed. It can have a maximum of 32 characters and
    #   must be in the following format: /\\A\[a-z0-9\\-\\\_\\.\]+\\Z/.
    #
    #   Built-in layer short names are defined by OpsWorks Stacks. For more
    #   information, see the [Layer reference][1] in the OpsWorks User
    #   Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   One or more user-defined key/value pairs to be added to the stack
    #   attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] cloud_watch_logs_configuration
    #   Specifies CloudWatch Logs configuration options for the layer. For
    #   more information, see CloudWatchLogsLogStream.
    #   @return [Types::CloudWatchLogsConfiguration]
    #
    # @!attribute [rw] custom_instance_profile_arn
    #   The ARN of an IAM profile to be used for all of the layer's EC2
    #   instances. For more information about IAM ARNs, see [Using
    #   Identifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] custom_json
    #   A JSON-formatted string containing custom stack configuration and
    #   deployment attributes to be installed on the layer's instances. For
    #   more information, see [ Using Custom JSON][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html
    #   @return [String]
    #
    # @!attribute [rw] custom_security_group_ids
    #   An array containing the layer's custom security group IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] packages
    #   An array of `Package` objects that describe the layer's packages.
    #   @return [Array<String>]
    #
    # @!attribute [rw] volume_configurations
    #   A `VolumeConfigurations` object that describes the layer's Amazon
    #   EBS volumes.
    #   @return [Array<Types::VolumeConfiguration>]
    #
    # @!attribute [rw] enable_auto_healing
    #   Whether to disable auto healing for the layer.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_assign_elastic_ips
    #   Whether to automatically assign an [Elastic IP address][1] to the
    #   layer's instances. For more information, see [How to Edit a
    #   Layer][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_assign_public_ips
    #   For stacks that are running in a VPC, whether to automatically
    #   assign a public IP address to the layer's instances. For more
    #   information, see [How to Edit a Layer][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_recipes
    #   A `LayerCustomRecipes` object that specifies the layer's custom
    #   recipes.
    #   @return [Types::Recipes]
    #
    # @!attribute [rw] install_updates_on_boot
    #   Whether to install operating system and package updates when the
    #   instance boots. The default value is `true`. To control when updates
    #   are installed, set this value to `false`. You must then update your
    #   instances manually by using CreateDeployment to run the
    #   `update_dependencies` stack command or manually running `yum`
    #   (Amazon Linux) or `apt-get` (Ubuntu) on the instances.
    #
    #   <note markdown="1"> We strongly recommend using the default value of `true`, to ensure
    #   that your instances have the latest security updates.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] use_ebs_optimized_instances
    #   Whether to use Amazon EBS-optimized instances.
    #   @return [Boolean]
    #
    # @!attribute [rw] lifecycle_event_configuration
    #   @return [Types::LifecycleEventConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateLayerRequest AWS API Documentation
    #
    class UpdateLayerRequest < Struct.new(
      :layer_id,
      :name,
      :shortname,
      :attributes,
      :cloud_watch_logs_configuration,
      :custom_instance_profile_arn,
      :custom_json,
      :custom_security_group_ids,
      :packages,
      :volume_configurations,
      :enable_auto_healing,
      :auto_assign_elastic_ips,
      :auto_assign_public_ips,
      :custom_recipes,
      :install_updates_on_boot,
      :use_ebs_optimized_instances,
      :lifecycle_event_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ssh_public_key
    #   The user's SSH public key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateMyUserProfileRequest AWS API Documentation
    #
    class UpdateMyUserProfileRequest < Struct.new(
      :ssh_public_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rds_db_instance_arn
    #   The Amazon RDS instance's ARN.
    #   @return [String]
    #
    # @!attribute [rw] db_user
    #   The master user name.
    #   @return [String]
    #
    # @!attribute [rw] db_password
    #   The database password.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateRdsDbInstanceRequest AWS API Documentation
    #
    class UpdateRdsDbInstanceRequest < Struct.new(
      :rds_db_instance_arn,
      :db_user,
      :db_password)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The stack ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The stack's new name. Stack names can be a maximum of 64
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   One or more user-defined key-value pairs to be added to the stack
    #   attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] service_role_arn
    #   Do not use this parameter. You cannot update a stack's service
    #   role.
    #   @return [String]
    #
    # @!attribute [rw] default_instance_profile_arn
    #   The ARN of an IAM profile that is the default profile for all of the
    #   stack's EC2 instances. For more information about IAM ARNs, see
    #   [Using Identifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] default_os
    #   The stack's operating system, which must be set to one of the
    #   following:
    #
    #   * A supported Linux operating system: An Amazon Linux version, such
    #     as `Amazon Linux 2`, `Amazon Linux 2018.03`, `Amazon Linux
    #     2017.09`, `Amazon Linux 2017.03`, `Amazon Linux 2016.09`, `Amazon
    #     Linux 2016.03`, `Amazon Linux 2015.09`, or `Amazon Linux 2015.03`.
    #
    #   * A supported Ubuntu operating system, such as `Ubuntu 18.04 LTS`,
    #     `Ubuntu 16.04 LTS`, `Ubuntu 14.04 LTS`, or `Ubuntu 12.04 LTS`.
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
    #   The default option is the stack's current operating system. Not all
    #   operating systems are supported with all versions of Chef. For more
    #   information about supported operating systems, see [OpsWorks Stacks
    #   Operating Systems][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html
    #   @return [String]
    #
    # @!attribute [rw] hostname_theme
    #   The stack's new host name theme, with spaces replaced by
    #   underscores. The theme is used to generate host names for the
    #   stack's instances. By default, `HostnameTheme` is set to
    #   `Layer_Dependent`, which creates host names by appending integers to
    #   the layer's short name. The other themes are:
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
    #   @return [String]
    #
    # @!attribute [rw] default_availability_zone
    #   The stack's default Availability Zone, which must be in the
    #   stack's region. For more information, see [Regions and
    #   Endpoints][1]. If you also specify a value for `DefaultSubnetId`,
    #   the subnet must be in the same zone. For more information, see
    #   CreateStack.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html
    #   @return [String]
    #
    # @!attribute [rw] default_subnet_id
    #   The stack's default VPC subnet ID. This parameter is required if
    #   you specify a value for the `VpcId` parameter. All instances are
    #   launched into this subnet unless you specify otherwise when you
    #   create the instance. If you also specify a value for
    #   `DefaultAvailabilityZone`, the subnet must be in that zone. For
    #   information on default values and when this parameter is required,
    #   see the `VpcId` parameter description.
    #   @return [String]
    #
    # @!attribute [rw] custom_json
    #   A string that contains user-defined, custom JSON. It can be used to
    #   override the corresponding default stack configuration JSON values
    #   or to pass data to recipes. The string should be in the following
    #   format:
    #
    #   `"\{"key1": "value1", "key2": "value2",...\}"`
    #
    #   For more information about custom JSON, see [Use Custom JSON to
    #   Modify the Stack Configuration Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html
    #   @return [String]
    #
    # @!attribute [rw] configuration_manager
    #   The configuration manager. When you update a stack, we recommend
    #   that you use the configuration manager to specify the Chef version:
    #   12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The
    #   default value for Linux stacks is currently 12.
    #   @return [Types::StackConfigurationManager]
    #
    # @!attribute [rw] chef_configuration
    #   A `ChefConfiguration` object that specifies whether to enable
    #   Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more
    #   information, see [Create a New Stack][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html
    #   @return [Types::ChefConfiguration]
    #
    # @!attribute [rw] use_custom_cookbooks
    #   Whether the stack uses custom cookbooks.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_cookbooks_source
    #   Contains the information required to retrieve an app or cookbook
    #   from a repository. For more information, see [Adding Apps][1] or
    #   [Cookbooks and Recipes][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html
    #   @return [Types::Source]
    #
    # @!attribute [rw] default_ssh_key_name
    #   A default Amazon EC2 key-pair name. The default value is `none`. If
    #   you specify a key-pair name, OpsWorks Stacks installs the public key
    #   on the instance and you can use the private key with an SSH client
    #   to log in to the instance. For more information, see [ Using SSH to
    #   Communicate with an Instance][1] and [ Managing SSH Access][2]. You
    #   can override this setting by specifying a different key pair, or no
    #   key pair, when you [ create an instance][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html
    #   [2]: https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html
    #   [3]: https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html
    #   @return [String]
    #
    # @!attribute [rw] default_root_device_type
    #   The default root device type. This value is used by default for all
    #   instances in the stack, but you can override it when you create an
    #   instance. For more information, see [Storage for the Root
    #   Device][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device
    #   @return [String]
    #
    # @!attribute [rw] use_opsworks_security_groups
    #   Whether to associate the OpsWorks Stacks built-in security groups
    #   with the stack's layers.
    #
    #   OpsWorks Stacks provides a standard set of built-in security groups,
    #   one for each layer, which are associated with layers by default.
    #   `UseOpsworksSecurityGroups` allows you to provide your own custom
    #   security groups instead of using the built-in groups.
    #   `UseOpsworksSecurityGroups` has the following settings:
    #
    #   * True - OpsWorks Stacks automatically associates the appropriate
    #     built-in security group with each layer (default setting). You can
    #     associate additional security groups with a layer after you create
    #     it, but you cannot delete the built-in security group.
    #
    #   * False - OpsWorks Stacks does not associate built-in security
    #     groups with layers. You must create appropriate EC2 security
    #     groups and associate a security group with each layer that you
    #     create. However, you can still manually associate a built-in
    #     security group with a layer on. Custom security groups are
    #     required only for those layers that need custom settings.
    #
    #   For more information, see [Create a New Stack][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html
    #   @return [Boolean]
    #
    # @!attribute [rw] agent_version
    #   The default OpsWorks Stacks agent version. You have the following
    #   options:
    #
    #   * Auto-update - Set this parameter to `LATEST`. OpsWorks Stacks
    #     automatically installs new agent versions on the stack's
    #     instances as soon as they are available.
    #
    #   * Fixed version - Set this parameter to your preferred agent
    #     version. To update the agent version, you must edit the stack
    #     configuration and specify a new version. OpsWorks Stacks installs
    #     that version on the stack's instances.
    #
    #   The default setting is `LATEST`. To specify an agent version, you
    #   must use the complete version number, not the abbreviated number
    #   shown on the console. For a list of available agent version numbers,
    #   call DescribeAgentVersions. AgentVersion cannot be set to Chef 12.2.
    #
    #   <note markdown="1"> You can also specify an agent version when you create or update an
    #   instance, which overrides the stack's default setting.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateStackRequest AWS API Documentation
    #
    class UpdateStackRequest < Struct.new(
      :stack_id,
      :name,
      :attributes,
      :service_role_arn,
      :default_instance_profile_arn,
      :default_os,
      :hostname_theme,
      :default_availability_zone,
      :default_subnet_id,
      :custom_json,
      :configuration_manager,
      :chef_configuration,
      :use_custom_cookbooks,
      :custom_cookbooks_source,
      :default_ssh_key_name,
      :default_root_device_type,
      :use_opsworks_security_groups,
      :agent_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] iam_user_arn
    #   The user IAM ARN. This can also be a federated user's ARN.
    #   @return [String]
    #
    # @!attribute [rw] ssh_username
    #   The user's SSH user name. The allowable characters are \[a-z\],
    #   \[A-Z\], \[0-9\], '-', and '\_'. If the specified name includes
    #   other punctuation marks, OpsWorks Stacks removes them. For example,
    #   `my.name` will be changed to `myname`. If you do not specify an SSH
    #   user name, OpsWorks Stacks generates one from the IAM user name.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key
    #   The user's new SSH public key.
    #   @return [String]
    #
    # @!attribute [rw] allow_self_management
    #   Whether users can specify their own SSH public key through the My
    #   Settings page. For more information, see [Managing User
    #   Permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateUserProfileRequest AWS API Documentation
    #
    class UpdateUserProfileRequest < Struct.new(
      :iam_user_arn,
      :ssh_username,
      :ssh_public_key,
      :allow_self_management)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] volume_id
    #   The volume ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name. Volume names can be a maximum of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] mount_point
    #   The new mount point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UpdateVolumeRequest AWS API Documentation
    #
    class UpdateVolumeRequest < Struct.new(
      :volume_id,
      :name,
      :mount_point)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a user's SSH information.
    #
    # @!attribute [rw] iam_user_arn
    #   The user's IAM ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The user's name.
    #   @return [String]
    #
    # @!attribute [rw] ssh_username
    #   The user's SSH user name.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key
    #   The user's SSH public key.
    #   @return [String]
    #
    # @!attribute [rw] allow_self_management
    #   Whether users can specify their own SSH public key through the My
    #   Settings page. For more information, see [Managing User
    #   Permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/UserProfile AWS API Documentation
    #
    class UserProfile < Struct.new(
      :iam_user_arn,
      :name,
      :ssh_username,
      :ssh_public_key,
      :allow_self_management)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that a request was not valid.
    #
    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an instance's Amazon EBS volume.
    #
    # @!attribute [rw] volume_id
    #   The volume ID.
    #   @return [String]
    #
    # @!attribute [rw] ec2_volume_id
    #   The Amazon EC2 volume ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The volume name. Volume names are a maximum of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] raid_array_id
    #   The RAID array ID.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The value returned by [DescribeVolumes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeVolumes.html
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The volume size.
    #   @return [Integer]
    #
    # @!attribute [rw] device
    #   The device name.
    #   @return [String]
    #
    # @!attribute [rw] mount_point
    #   The volume mount point. For example, "/mnt/disk1".
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region. For more information about Amazon
    #   Web Services Regions, see [Regions and Endpoints][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The volume Availability Zone. For more information, see [Regions and
    #   Endpoints][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   The volume type. For more information, see [ Amazon EBS Volume
    #   Types][1].
    #
    #   * `standard` - Magnetic. Magnetic volumes must have a minimum size
    #     of 1 GiB and a maximum size of 1024 GiB.
    #
    #   * `io1` - Provisioned IOPS (SSD). PIOPS volumes must have a minimum
    #     size of 4 GiB and a maximum size of 16384 GiB.
    #
    #   * `gp2` - General Purpose (SSD). General purpose volumes must have a
    #     minimum size of 1 GiB and a maximum size of 16384 GiB.
    #
    #   * `st1` - Throughput Optimized hard disk drive (HDD). Throughput
    #     optimized HDD volumes must have a minimum size of 125 GiB and a
    #     maximum size of 16384 GiB.
    #
    #   * `sc1` - Cold HDD. Cold HDD volumes must have a minimum size of 125
    #     GiB and a maximum size of 16384 GiB.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   For PIOPS volumes, the IOPS per disk.
    #   @return [Integer]
    #
    # @!attribute [rw] encrypted
    #   Specifies whether an Amazon EBS volume is encrypted. For more
    #   information, see [Amazon EBS Encryption][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/Volume AWS API Documentation
    #
    class Volume < Struct.new(
      :volume_id,
      :ec2_volume_id,
      :name,
      :raid_array_id,
      :instance_id,
      :status,
      :size,
      :device,
      :mount_point,
      :region,
      :availability_zone,
      :volume_type,
      :iops,
      :encrypted)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon EBS volume configuration.
    #
    # @!attribute [rw] mount_point
    #   The volume mount point. For example "/dev/sdh".
    #   @return [String]
    #
    # @!attribute [rw] raid_level
    #   The volume [RAID level][1].
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/Standard_RAID_levels
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_disks
    #   The number of disks in the volume.
    #   @return [Integer]
    #
    # @!attribute [rw] size
    #   The volume size.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_type
    #   The volume type. For more information, see [ Amazon EBS Volume
    #   Types][1].
    #
    #   * `standard` - Magnetic. Magnetic volumes must have a minimum size
    #     of 1 GiB and a maximum size of 1024 GiB.
    #
    #   * `io1` - Provisioned IOPS (SSD). PIOPS volumes must have a minimum
    #     size of 4 GiB and a maximum size of 16384 GiB.
    #
    #   * `gp2` - General Purpose (SSD). General purpose volumes must have a
    #     minimum size of 1 GiB and a maximum size of 16384 GiB.
    #
    #   * `st1` - Throughput Optimized hard disk drive (HDD). Throughput
    #     optimized HDD volumes must have a minimum size of 125 GiB and a
    #     maximum size of 16384 GiB.
    #
    #   * `sc1` - Cold HDD. Cold HDD volumes must have a minimum size of 125
    #     GiB and a maximum size of 16384 GiB.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   For PIOPS volumes, the IOPS per disk.
    #   @return [Integer]
    #
    # @!attribute [rw] encrypted
    #   Specifies whether an Amazon EBS volume is encrypted. For more
    #   information, see [Amazon EBS Encryption][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/VolumeConfiguration AWS API Documentation
    #
    class VolumeConfiguration < Struct.new(
      :mount_point,
      :raid_level,
      :number_of_disks,
      :size,
      :volume_type,
      :iops,
      :encrypted)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a time-based instance's auto scaling schedule. The schedule
    # consists of a set of key-value pairs.
    #
    # * The key is the time period (a UTC hour) and must be an integer from
    #   0 - 23.
    #
    # * The value indicates whether the instance should be online or offline
    #   for the specified period, and must be set to "on" or "off"
    #
    # The default setting for all time periods is off, so you use the
    # following parameters primarily to specify the online periods. You
    # don't have to explicitly specify offline periods unless you want to
    # change an online period to an offline period.
    #
    # The following example specifies that the instance should be online for
    # four hours, from UTC 1200 - 1600. It will be off for the remainder of
    # the day.
    #
    # ` \{ "12":"on", "13":"on", "14":"on", "15":"on" \} `
    #
    # @!attribute [rw] monday
    #   The schedule for Monday.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tuesday
    #   The schedule for Tuesday.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] wednesday
    #   The schedule for Wednesday.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] thursday
    #   The schedule for Thursday.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] friday
    #   The schedule for Friday.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] saturday
    #   The schedule for Saturday.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] sunday
    #   The schedule for Sunday.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworks-2013-02-18/WeeklyAutoScalingSchedule AWS API Documentation
    #
    class WeeklyAutoScalingSchedule < Struct.new(
      :monday,
      :tuesday,
      :wednesday,
      :thursday,
      :friday,
      :saturday,
      :sunday)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

