# frozen_string_literal: true

# This is generated code!

module Aws::OpsWorks
  # This module contains the types returned by client operations.
  module Types

    # <p>Describes an agent version.</p>
    # @!attribute version
    #   <p>The agent version.</p>
    #   @return [String]
    # @!attribute configuration_manager
    #   <p>The configuration manager.</p>
    #   @return [Types::StackConfigurationManager]
    class AgentVersion < Struct.new(
      :version,
      :configuration_manager,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A description of the app.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The app stack ID.</p>
    #   @return [String]
    # @!attribute shortname
    #   <p>The app's short name.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The app name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the app.</p>
    #   @return [String]
    # @!attribute data_sources
    #   <p>The app's data sources.</p>
    #   @return [Array<Types::DataSource>]
    # @!attribute type
    #   <p>The app type.</p>
    #   @return [String]
    # @!attribute app_source
    #   <p>A <code>Source</code> object that describes the app repository.</p>
    #   @return [Types::Source]
    # @!attribute domains
    #   <p>The app vhost settings with multiple domains separated by commas. For example:
    #           <code>'www.example.com, example.com'</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute enable_ssl
    #   <p>Whether to enable SSL for the app.</p>
    #   @return [Boolean]
    # @!attribute ssl_configuration
    #   <p>An <code>SslConfiguration</code> object with the SSL configuration.</p>
    #   @return [Types::SslConfiguration]
    # @!attribute attributes
    #   <p>The stack attributes.</p>
    #   @return [Hash<String, String>]
    # @!attribute created_at
    #   <p>When the app was created.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be
    #         associated with the app. After you deploy the app, these variables are defined on the
    #         associated app server instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment"> Environment Variables</a>. </p>
    #            <note>
    #               <p>There is no specific limit on the number of environment variables. 
    #             However, the size of the associated data structure - which includes the variable names, values, and protected flag 
    #             values - cannot exceed 20 KB. This limit should accommodate most if not all use cases, but if you do exceed it, you 
    #             will cause an exception (API) with an "Environment: is too large (maximum is 20 KB)" message.</p>
    #            </note>
    #   @return [Array<Types::EnvironmentVariable>]
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
      :environment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    # @!attribute layer_ids
    #   <p>The layer ID, which must correspond to a custom layer. You cannot assign a registered instance to a built-in layer.</p>
    #   @return [Array<String>]
    class AssignInstanceRequest < Struct.new(
      :instance_id,
      :layer_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume_id
    #   <p>The volume ID.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    class AssignVolumeRequest < Struct.new(
      :volume_id,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute elastic_ip
    #   <p>The Elastic IP address.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    class AssociateElasticIpRequest < Struct.new(
      :elastic_ip,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute elastic_load_balancer_name
    #   <p>The Elastic Load Balancing instance's name.</p>
    #   @return [String]
    # @!attribute layer_id
    #   <p>The ID of the layer to which the Elastic Load Balancing instance is to be attached.</p>
    #   @return [String]
    class AttachElasticLoadBalancerRequest < Struct.new(
      :elastic_load_balancer_name,
      :layer_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a load-based auto scaling upscaling or downscaling threshold configuration, which specifies when OpsWorks Stacks starts or 
    #           stops load-based instances.</p>
    # @!attribute instance_count
    #   <p>The number of instances to add or remove when the load exceeds a threshold.</p>
    #   @return [Integer]
    # @!attribute thresholds_wait_time
    #   <p>The amount of time, in minutes, that the load must exceed a threshold before more instances are added or removed.</p>
    #   @return [Integer]
    # @!attribute ignore_metrics_time
    #   <p>The amount of time (in minutes) after a scaling event occurs that OpsWorks Stacks should ignore metrics
    #             and suppress additional scaling events. For example, OpsWorks Stacks adds new instances following
    #         an upscaling event but the instances won't start reducing the load until they have been booted
    #         and configured. There is no point in raising additional scaling events during that operation,
    #         which typically takes several minutes. <code>IgnoreMetricsTime</code> allows you to direct
    #             OpsWorks Stacks to suppress scaling events long enough to get the new instances online.</p>
    #   @return [Integer]
    # @!attribute cpu_threshold
    #   <p>The CPU utilization threshold, as a percent of the available CPU. A value of -1 disables the threshold.</p>
    #   @return [Float]
    # @!attribute memory_threshold
    #   <p>The memory utilization threshold, as a percent of the available memory. A value of -1 disables the threshold.</p>
    #   @return [Float]
    # @!attribute load_threshold
    #   <p>The load threshold. A value of -1 disables the threshold. For more information about how load is computed, 
    #             see <a href="http://en.wikipedia.org/wiki/Load_%28computing%29">Load (computing)</a>.</p>
    #   @return [Float]
    # @!attribute alarms
    #   <p>Custom CloudWatch auto scaling alarms, to be used as thresholds. This parameter takes a list of up to five alarm names,
    #             which are case sensitive and must be in the same region as the stack.</p>
    #            <note>
    #               <p>To use custom alarms, you must update your service role to allow
    #             <code>cloudwatch:DescribeAlarms</code>. You can either have OpsWorks Stacks update the role for
    #         you when you first use this feature or you can edit the role manually. For more information,
    #         see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-servicerole.html">Allowing OpsWorks Stacks to Act on Your Behalf</a>.</p>
    #            </note>
    #   @return [Array<String>]
    class AutoScalingThresholds < Struct.new(
      :instance_count,
      :thresholds_wait_time,
      :ignore_metrics_time,
      :cpu_threshold,
      :memory_threshold,
      :load_threshold,
      :alarms,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a block device mapping. This data type maps directly to the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html">BlockDeviceMapping</a> data type. </p>
    # @!attribute device_name
    #   <p>The device name that is exposed to the instance, such as <code>/dev/sdh</code>. For the root
    #         device, you can use the explicit device name or you can set this parameter to
    #             <code>ROOT_DEVICE</code> and OpsWorks Stacks will provide the correct device name.</p>
    #   @return [String]
    # @!attribute no_device
    #   <p>Suppresses the specified device included in the AMI's block device mapping.</p>
    #   @return [String]
    # @!attribute virtual_name
    #   <p>The virtual device name. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html">BlockDeviceMapping</a>.</p>
    #   @return [String]
    # @!attribute ebs
    #   <p>An <code>EBSBlockDevice</code> that defines how to configure an Amazon EBS volume when the
    #         instance is launched.</p>
    #   @return [Types::EbsBlockDevice]
    class BlockDeviceMapping < Struct.new(
      :device_name,
      :no_device,
      :virtual_name,
      :ebs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Chef configuration.</p>
    # @!attribute manage_berkshelf
    #   <p>Whether to enable Berkshelf.</p>
    #   @return [Boolean]
    # @!attribute berkshelf_version
    #   <p>The Berkshelf version.</p>
    #   @return [String]
    class ChefConfiguration < Struct.new(
      :manage_berkshelf,
      :berkshelf_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_stack_id
    #   <p>The source stack ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The cloned stack name. Stack names can be a maximum of 64 characters.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The cloned stack Amazon Web Services Region, such as <code>ap-northeast-2</code>. For more information 
    #             about Amazon Web Services Regions, see
    #           <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC that the cloned stack is to be launched into. It must be in the specified region. All
    #             instances are launched into this VPC, and you cannot change the ID later.</p>
    #            <ul>
    #               <li>
    #                  <p>If your account supports EC2 Classic, the default value is no VPC.</p>
    #               </li>
    #               <li>
    #                  <p>If your account does not support EC2 Classic, the default value is the default VPC for the specified region.</p>
    #               </li>
    #            </ul>
    #            <p>If the VPC ID corresponds to a default VPC and you have specified either the
    #           <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only,
    #             OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, OpsWorks Stacks sets
    #         these parameters to the first valid Availability Zone for the specified region and the
    #         corresponding default VPC subnet ID, respectively. </p>
    #            <p>If you specify a nondefault VPC ID, note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>It must belong to a VPC in your account that is in the specified region.</p>
    #               </li>
    #               <li>
    #                  <p>You must specify a value for <code>DefaultSubnetId</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about how to use OpsWorks Stacks with a VPC, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html">Running a Stack in a
    #           VPC</a>. For more information about default VPC and EC2 Classic, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported
    #           Platforms</a>. </p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A list of stack attributes and values as key/value pairs to be added to the cloned stack.</p>
    #   @return [Hash<String, String>]
    # @!attribute service_role_arn
    #   <p>The stack Identity and Access Management (IAM) role, which allows OpsWorks Stacks to work with Amazon Web Services
    #         resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an
    #         existing IAM role. If you create a stack by using the OpsWorkss Stacks console, it creates the role for
    #             you. You can obtain an existing stack's IAM ARN programmatically by calling
    #             <a>DescribePermissions</a>. For more information about IAM ARNs, see 
    #             <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #            <note>
    #               <p>You must set this parameter to a valid service role ARN or the action will fail; there is no default value. 
    #                You can specify the source stack's service role ARN, if you prefer, but you must do so explicitly.</p>
    #            </note>
    #   @return [String]
    # @!attribute default_instance_profile_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's 
    #             EC2 instances.
    #             For more information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #   @return [String]
    # @!attribute default_os
    #   <p>The stack's operating system, which must be set to one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2</code>, <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux
    #           2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A supported Ubuntu operating system, such as <code>Ubuntu 18.04 LTS</code>, <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CentOS Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Red Hat Enterprise Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, 
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when
    #                you create instances. For more information about how to use custom AMIs with OpsWorks, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using
    #             Custom AMIs</a>.</p>
    #               </li>
    #            </ul>
    #            <p>The default option is the parent stack's operating system.
    #         Not all operating systems are supported with all versions of Chef. For more information about supported operating systems,
    #         see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">OpsWorks Stacks Operating Systems</a>.</p>
    #            <note>
    #               <p>You can specify a different Linux operating system for the cloned stack, but you cannot change from Linux to 
    #             Windows or Windows to Linux.</p>
    #            </note>
    #   @return [String]
    # @!attribute hostname_theme
    #   <p>The stack's host name theme, with spaces are replaced by underscores. The theme is used to
    #         generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set
    #         to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's
    #         short name. The other themes are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Baked_Goods</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Clouds</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Europe_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fruits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Greek_Deities_and_Titans</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Legendary_creatures_from_Japan</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Planets_and_Moons</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Roman_Deities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Scottish_Islands</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>US_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Wild_Cats</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a
    #         host name based on the current theme.</p>
    #   @return [String]
    # @!attribute default_availability_zone
    #   <p>The cloned stack's default Availability Zone, which must be in the specified region. For more
    #         information, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and
    #           Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must
    #         be in the same zone. For more information, see the <code>VpcId</code> parameter description.
    #       </p>
    #   @return [String]
    # @!attribute default_subnet_id
    #   <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the
    #           <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify
    #         otherwise when you create the instance. If you also specify a value for
    #           <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on
    #         default values and when this parameter is required, see the <code>VpcId</code> parameter
    #         description. </p>
    #   @return [String]
    # @!attribute custom_json
    #   <p>A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration 
    #             JSON values. The string should be in the following format:</p>
    #            <p>
    #               <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code>
    #            </p>
    #            <p>For more information about custom JSON, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to
    #           Modify the Stack Configuration Attributes</a>
    #            </p>
    #   @return [String]
    # @!attribute configuration_manager
    #   <p>The configuration manager. When you clone a stack we recommend that you use the configuration manager to specify the 
    #             Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>
    #   @return [Types::StackConfigurationManager]
    # @!attribute chef_configuration
    #   <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the
    #         Berkshelf version on Chef 11.10 stacks. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
    #   @return [Types::ChefConfiguration]
    # @!attribute use_custom_cookbooks
    #   <p>Whether to use custom cookbooks.</p>
    #   @return [Boolean]
    # @!attribute use_opsworks_security_groups
    #   <p>Whether to associate the OpsWorks Stacks built-in security groups with the stack's layers.</p>
    #            <p>OpsWorks Stacks provides a standard set of security groups, one for each layer, which are
    #         associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead
    #         provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the
    #         following settings: </p>
    #            <ul>
    #               <li>
    #                  <p>True - OpsWorks Stacks automatically associates the appropriate built-in security group with 
    #                 each layer (default setting). You can associate additional security groups with a layer after you create it but you cannot 
    #                 delete the built-in security group.</p>
    #               </li>
    #               <li>
    #                  <p>False - OpsWorks Stacks does not associate built-in security groups with layers. 
    #                 You must create appropriate Amazon EC2 security groups and associate a security group with each 
    #                 layer that you create. However, you can still manually associate a built-in security group with a layer on creation; 
    #                 custom security groups are required only for those layers that need custom settings.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New
    #           Stack</a>.</p>
    #   @return [Boolean]
    # @!attribute custom_cookbooks_source
    #   <p>Contains the information required to retrieve an app or cookbook from a repository. For more information, 
    #               see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Adding Apps</a> or 
    #               <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Cookbooks and Recipes</a>.</p>
    #   @return [Types::Source]
    # @!attribute default_ssh_key_name
    #   <p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, 
    #             OpsWorks installs the public key on the instance and you can use the private key with an SSH
    #         client to log in to the instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to
    #           Communicate with an Instance</a> and <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH
    #           Access</a>. You can override this setting by specifying a different key pair, or no key
    #         pair, when you <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">
    #           create an instance</a>. </p>
    #   @return [String]
    # @!attribute clone_permissions
    #   <p>Whether to clone the source stack's permissions.</p>
    #   @return [Boolean]
    # @!attribute clone_app_ids
    #   <p>A list of source stack app IDs to be included in the cloned stack.</p>
    #   @return [Array<String>]
    # @!attribute default_root_device_type
    #   <p>The default root device type. This value is used by default for all instances in the cloned
    #         stack, but you can override it when you create an instance. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The default OpsWorks Stacks agent version. You have the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>Auto-update - Set this parameter to <code>LATEST</code>. OpsWorks Stacks
    #         automatically installs new agent versions on the stack's instances as soon as
    #         they are available.</p>
    #               </li>
    #               <li>
    #                  <p>Fixed version - Set this parameter to your preferred agent version. To update 
    #                the agent version, you must edit the stack configuration and specify a new version. 
    #                OpsWorks Stacks automatically installs that version on the stack's instances.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting is <code>LATEST</code>. To specify an agent version,
    #         you must use the complete version number, not the abbreviated number shown on the console.
    #         For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p>
    #            <note>
    #               <p>You can also specify an agent version when you create or update an instance, which overrides the stack's 
    #             default setting.</p>
    #            </note>
    #   @return [String]
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
      :agent_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>CloneStack</code> request.</p>
    # @!attribute stack_id
    #   <p>The cloned stack ID.</p>
    #   @return [String]
    class CloneStackResult < Struct.new(
      :stack_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Amazon CloudWatch Logs configuration for a layer.</p>
    # @!attribute enabled
    #   <p>Whether CloudWatch Logs is enabled for a layer.</p>
    #   @return [Boolean]
    # @!attribute log_streams
    #   <p>A list of configuration options for CloudWatch Logs.</p>
    #   @return [Array<Types::CloudWatchLogsLogStream>]
    class CloudWatchLogsConfiguration < Struct.new(
      :enabled,
      :log_streams,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the CloudWatch Logs configuration for a layer. For detailed information about members of this data type, 
    #             see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html">CloudWatch Logs Agent Reference</a>.</p>
    # @!attribute log_group_name
    #   <p>Specifies the destination log group. A log group is created automatically if it doesn't already exist. 
    #               Log group names can be between 1 and 512 characters long. Allowed characters include a-z, A-Z, 0-9, '_' (underscore), 
    #               '-' (hyphen), '/' (forward slash), and '.' (period).</p>
    #   @return [String]
    # @!attribute datetime_format
    #   <p>Specifies how the time stamp is extracted from logs. For more information, see the 
    #               <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html">CloudWatch Logs Agent Reference</a>.</p>
    #   @return [String]
    # @!attribute time_zone
    #   <p>Specifies the time zone of log event time stamps.</p>
    #   @return [String]
    # @!attribute file
    #   <p>Specifies log files that you want to push to CloudWatch Logs.</p>
    #            <p>
    #               <code>File</code> can point to a specific file or multiple files (by using wild card characters such 
    #               as <code>/var/log/system.log*</code>).
    #               Only the latest file is pushed to CloudWatch Logs, based on file modification time. We recommend that you use 
    #               wild card characters to specify a series
    #               of files of the same type, such as <code>access_log.2014-06-01-01</code>, <code>access_log.2014-06-01-02</code>, and so on
    #               by using a pattern like <code>access_log.*</code>. Don't use a wildcard to match multiple file types,
    #               such as <code>access_log_80</code> and <code>access_log_443</code>. To specify multiple, different file types, add another
    #               log stream entry to the configuration file, so that each log file type is stored in a different log group.</p>
    #            <p>Zipped files are not supported.</p>
    #   @return [String]
    # @!attribute file_fingerprint_lines
    #   <p>Specifies the range of lines for identifying a file. The valid values are one number, or two dash-delimited numbers, 
    #               such as '1', '2-5'. The default value is '1', meaning the first line is used to calculate the fingerprint. 
    #               Fingerprint lines are 
    #               not sent to CloudWatch Logs unless all specified lines are available.</p>
    #   @return [String]
    # @!attribute multi_line_start_pattern
    #   <p>Specifies the pattern for identifying the start of a log message.</p>
    #   @return [String]
    # @!attribute initial_position
    #   <p>Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. 
    #               This setting is only used if there is no state persisted for that log stream.</p>
    #   @return [String]
    # @!attribute encoding
    #   <p>Specifies the encoding of the log file so that the file can be read correctly. 
    #               The default is <code>utf_8</code>. Encodings supported by Python <code>codecs.decode()</code> can be used here.</p>
    #   @return [String]
    # @!attribute buffer_duration
    #   <p>Specifies the time duration for the batching of log events. The minimum value is 5000ms and default value is 5000ms.</p>
    #   @return [Integer]
    # @!attribute batch_count
    #   <p>Specifies the max number of log events in a batch, up to 10000. The default value is 1000.</p>
    #   @return [Integer]
    # @!attribute batch_size
    #   <p>Specifies the maximum size of log events in a batch, in bytes, up to 1048576 bytes. 
    #               The default value is 32768 bytes. This size is calculated as the sum of all event messages 
    #               in UTF-8, plus 26 bytes for each log event.</p>
    #   @return [Integer]
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
      :batch_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a command.</p>
    # @!attribute command_id
    #   <p>The command ID.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The ID of the instance where the command was executed.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>The command deployment ID.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Date and time when the command was run.</p>
    #   @return [String]
    # @!attribute acknowledged_at
    #   <p>Date and time when the command was acknowledged.</p>
    #   @return [String]
    # @!attribute completed_at
    #   <p>Date when the command completed.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The command status:</p>
    #            <ul>
    #               <li>
    #                  <p>failed</p>
    #               </li>
    #               <li>
    #                  <p>successful</p>
    #               </li>
    #               <li>
    #                  <p>skipped</p>
    #               </li>
    #               <li>
    #                  <p>pending</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute exit_code
    #   <p>The command exit code.</p>
    #   @return [Integer]
    # @!attribute log_url
    #   <p>The URL of the command log.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The command type:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>configure</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deploy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>execute_recipes</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>install_dependencies</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>restart</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rollback</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>setup</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>start</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>stop</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>undeploy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>update_custom_cookbooks</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>update_dependencies</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
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
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    # @!attribute shortname
    #   <p>The app's short name.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The app name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the app.</p>
    #   @return [String]
    # @!attribute data_sources
    #   <p>The app's data source.</p>
    #   @return [Array<Types::DataSource>]
    # @!attribute type
    #   <p>The app type. Each supported type is associated with a particular layer. For example, PHP
    #             applications are associated with a PHP layer. OpsWorks Stacks deploys an application to those instances
    #         that are members of the corresponding layer. If your app isn't one of the standard types, or
    #         you prefer to implement your own Deploy recipes, specify <code>other</code>.</p>
    #   @return [String]
    # @!attribute app_source
    #   <p>A <code>Source</code> object that specifies the app repository.</p>
    #   @return [Types::Source]
    # @!attribute domains
    #   <p>The app virtual host settings, with multiple domains separated by commas. For example:
    #           <code>'www.example.com, example.com'</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute enable_ssl
    #   <p>Whether to enable SSL for the app.</p>
    #   @return [Boolean]
    # @!attribute ssl_configuration
    #   <p>An <code>SslConfiguration</code> object with the SSL configuration.</p>
    #   @return [Types::SslConfiguration]
    # @!attribute attributes
    #   <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
    #   @return [Hash<String, String>]
    # @!attribute environment
    #   <p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be
    #         associated with the app. After you deploy the app, these variables are defined on the
    #         associated app server instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment"> Environment Variables</a>.</p>
    #            <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 20 KB. This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, "Environment: is too large (maximum is 20KB)."</p>
    #            <note>
    #               <p>If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p>
    #            </note>
    #   @return [Array<Types::EnvironmentVariable>]
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
      :environment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>CreateApp</code> request.</p>
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    class CreateAppResult < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The app ID. This parameter is required for app deployments, but not for other deployment commands.</p>
    #   @return [String]
    # @!attribute instance_ids
    #   <p>The instance IDs for the deployment targets.</p>
    #   @return [Array<String>]
    # @!attribute layer_ids
    #   <p>The layer IDs for the deployment targets.</p>
    #   @return [Array<String>]
    # @!attribute command
    #   <p>A <code>DeploymentCommand</code> object that specifies the deployment command and any
    #         associated arguments.</p>
    #   @return [Types::DeploymentCommand]
    # @!attribute comment
    #   <p>A user-defined comment.</p>
    #   @return [String]
    # @!attribute custom_json
    #   <p>A string that contains user-defined, custom JSON. You can use this parameter to override some corresponding default 
    #             stack configuration JSON values. The string should be in the following format:</p>
    #            <p>
    #               <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code>
    #            </p>
    #            <p>For more information about custom JSON, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to
    #             Modify the Stack Configuration Attributes</a> and 
    #             <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html">Overriding Attributes With Custom 
    #                 JSON</a>.</p>
    #   @return [String]
    class CreateDeploymentRequest < Struct.new(
      :stack_id,
      :app_id,
      :instance_ids,
      :layer_ids,
      :command,
      :comment,
      :custom_json,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>CreateDeployment</code> request.</p>
    # @!attribute deployment_id
    #   <p>The deployment ID, which can be used with other requests to identify the deployment.</p>
    #   @return [String]
    class CreateDeploymentResult < Struct.new(
      :deployment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    # @!attribute layer_ids
    #   <p>An array that contains the instance's layer IDs.</p>
    #   @return [Array<String>]
    # @!attribute instance_type
    #   <p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types,
    #         open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>.
    #         The <b>Size</b> list contains the currently supported types. 
    #             For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance
    #           Families and Types</a>. The parameter values that you use to specify the various types are
    #         in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>
    #   @return [String]
    # @!attribute auto_scaling_type
    #   <p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>
    #   @return [String]
    # @!attribute hostname
    #   <p>The instance host name. The following are character limits for instance host names.</p>
    #            <ul>
    #               <li>
    #                  <p>Linux-based instances: 63 characters</p>
    #               </li>
    #               <li>
    #                  <p>Windows-based instances: 15 characters</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute os
    #   <p>The instance's operating system, which must be set to one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2</code>, <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, 
    #                 <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A supported Ubuntu operating system, such as <code>Ubuntu 18.04 LTS</code>, <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CentOS Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Red Hat Enterprise Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, 
    #   			   <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A custom AMI: <code>Custom</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Not all operating systems are supported with all versions of Chef. For more information about the supported operating systems,
    #             see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">OpsWorks Stacks Operating Systems</a>.</p>
    #            <p>The default option is the current Amazon Linux version. If you set this parameter to
    #           <code>Custom</code>, you must use the <a>CreateInstance</a> action's AmiId parameter to
    #         specify the custom AMI that you want to use. Block device mappings are not supported if the value is <code>Custom</code>. 
    #             For more information about how to use custom AMIs with OpsWorks Stacks, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using
    #           Custom AMIs</a>.</p>
    #   @return [String]
    # @!attribute ami_id
    #   <p>A custom AMI ID to be used to create the instance. The AMI should be based on one of the
    #         supported operating systems.
    #         For more information, see
    #         <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p>
    #            <note>
    #               <p>If you specify a custom AMI, you must set <code>Os</code> to <code>Custom</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssh_key_name
    #   <p>The instance's Amazon EC2 key-pair name.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The instance Availability Zone. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
    #   @return [String]
    # @!attribute virtualization_type
    #   <p>The instance's virtualization type, <code>paravirtual</code> or <code>hvm</code>.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The ID of the instance's subnet. If the stack is running in a VPC, you can use this parameter to override the stack's 
    #             default subnet ID value and direct OpsWorks Stacks to launch the instance in a different subnet.</p>
    #   @return [String]
    # @!attribute architecture
    #   <p>The instance architecture. The default option is <code>x86_64</code>. Instance types do not
    #         necessarily support both architectures. For a list of the architectures that are supported by
    #         the different instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Families and
    #           Types</a>.</p>
    #   @return [String]
    # @!attribute root_device_type
    #   <p>The instance root device type. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
    #   @return [String]
    # @!attribute block_device_mappings
    #   <p>An array of <code>BlockDeviceMapping</code> objects that specify the instance's block
    #         devices. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html">Block
    #           Device Mapping</a>. Note that block device mappings are not supported for custom AMIs.</p>
    #   @return [Array<Types::BlockDeviceMapping>]
    # @!attribute install_updates_on_boot
    #   <p>Whether to install operating system and package updates when the instance boots. The default
    #         value is <code>true</code>. To control when updates are installed, set this value to
    #           <code>false</code>. You must then update your instances manually by using
    #           <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or
    #         by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
    #         instances. </p>
    #            <note>
    #               <p>We strongly recommend using the default value of <code>true</code> to ensure that your
    #           instances have the latest security updates.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute ebs_optimized
    #   <p>Whether to create an Amazon EBS-optimized instance.</p>
    #   @return [Boolean]
    # @!attribute agent_version
    #   <p>The default OpsWorks Stacks agent version. You have the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INHERIT</code> - Use the stack's default agent version setting.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>version_number</i> - Use the specified agent version.
    #           This value overrides the stack's default setting.
    #           To update the agent version, edit the instance configuration and specify a
    #           new version.
    #                OpsWorks Stacks installs that version on the instance.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting is <code>INHERIT</code>. To specify an agent version,
    #         you must use the complete version number, not the abbreviated number shown on the console.
    #         For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. 
    #             AgentVersion cannot be set to Chef 12.2.</p>
    #   @return [String]
    # @!attribute tenancy
    #   <p>The instance's tenancy option. The default option is no tenancy, or if the instance is running in a VPC, 
    #             inherit tenancy settings from the VPC. The following are valid values for this parameter:  
    #             <code>dedicated</code>, <code>default</code>, or <code>host</code>. Because there are costs associated with changes 
    #             in tenancy options, we recommend that you research tenancy options before choosing them for your instances. 
    #             For more information about dedicated hosts, see 
    #             <a href="http://aws.amazon.com/ec2/dedicated-hosts/">Dedicated Hosts Overview</a> and 
    #             <a href="http://aws.amazon.com/ec2/dedicated-hosts/">Amazon EC2 Dedicated Hosts</a>. 
    #             For more information about dedicated instances, see 
    #             <a href="https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/dedicated-instance.html">Dedicated Instances</a> and 
    #             <a href="http://aws.amazon.com/ec2/purchasing-options/dedicated-instances/">Amazon EC2 Dedicated Instances</a>.</p>
    #   @return [String]
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
      :tenancy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>CreateInstance</code> request.</p>
    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    class CreateInstanceResult < Struct.new(
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The layer stack ID.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The layer type. A stack cannot have more than one built-in layer of the same type. It can have any number of custom layers. 
    #             Built-in layers are not available in Chef 12 stacks.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The layer name, which is used by the console. Layer names can be a maximum of 32 characters.</p>
    #   @return [String]
    # @!attribute shortname
    #   <p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by 
    #             OpsWorks Stacks and by Chef recipes. The short name is also used as the name for the directory where your 
    #             app files are installed. It can have a maximum of 32 characters, which are limited to the alphanumeric 
    #             characters, '-', '_', and '.'.</p>
    #            <p>Built-in layer short names are defined by OpsWorks Stacks. For more information, see the 
    #             <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html">Layer Reference</a>.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>One or more user-defined key-value pairs to be added to the stack attributes.</p>
    #            <p>To create a cluster layer, set the <code>EcsClusterArn</code> attribute to the cluster's ARN.</p>
    #   @return [Hash<String, String>]
    # @!attribute cloud_watch_logs_configuration
    #   <p>Specifies CloudWatch Logs configuration options for the layer. For more information, 
    #               see <a>CloudWatchLogsLogStream</a>.</p>
    #   @return [Types::CloudWatchLogsConfiguration]
    # @!attribute custom_instance_profile_arn
    #   <p>The ARN of an IAM profile to be used for the layer's EC2 instances. For more information
    #             about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
    #   @return [String]
    # @!attribute custom_json
    #   <p>A JSON-formatted string containing custom stack configuration and deployment attributes
    #        to be installed on the layer's instances. For more information, see
    #         <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html">
    #             Using Custom JSON</a>. This feature is supported as of version 1.7.42 of the CLI. 
    #       </p>
    #   @return [String]
    # @!attribute custom_security_group_ids
    #   <p>An array containing the layer custom security group IDs.</p>
    #   @return [Array<String>]
    # @!attribute packages
    #   <p>An array of <code>Package</code> objects that describes the layer packages.</p>
    #   @return [Array<String>]
    # @!attribute volume_configurations
    #   <p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>
    #   @return [Array<Types::VolumeConfiguration>]
    # @!attribute enable_auto_healing
    #   <p>Whether to disable auto healing for the layer.</p>
    #   @return [Boolean]
    # @!attribute auto_assign_elastic_ips
    #   <p>Whether to automatically assign an <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP
    #           address</a> to the layer's instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit
    #           a Layer</a>.</p>
    #   @return [Boolean]
    # @!attribute auto_assign_public_ips
    #   <p>For stacks that are running in a VPC, whether to automatically assign a public IP address to
    #         the layer's instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit
    #           a Layer</a>.</p>
    #   @return [Boolean]
    # @!attribute custom_recipes
    #   <p>A <code>LayerCustomRecipes</code> object that specifies the layer custom recipes.</p>
    #   @return [Types::Recipes]
    # @!attribute install_updates_on_boot
    #   <p>Whether to install operating system and package updates when the instance boots. The default
    #         value is <code>true</code>. To control when updates are installed, set this value to
    #           <code>false</code>. You must then update your instances manually by using
    #           <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or
    #         by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
    #         instances. </p>
    #            <note>
    #               <p>To ensure that your
    #           instances have the latest security updates, we strongly recommend using the default value of <code>true</code>.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute use_ebs_optimized_instances
    #   <p>Whether to use Amazon EBS-optimized instances.</p>
    #   @return [Boolean]
    # @!attribute lifecycle_event_configuration
    #   <p>A <code>LifeCycleEventConfiguration</code> object that you can use to configure the Shutdown event to
    #         specify an execution timeout and enable or disable Elastic Load Balancer connection
    #         draining.</p>
    #   @return [Types::LifecycleEventConfiguration]
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
      :lifecycle_event_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>CreateLayer</code> request.</p>
    # @!attribute layer_id
    #   <p>The layer ID.</p>
    #   @return [String]
    class CreateLayerResult < Struct.new(
      :layer_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The stack name. Stack names can be a maximum of 64 characters.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The stack's Amazon Web Services Region, such as <code>ap-south-1</code>. For more information about
    #             Amazon Web Services Regions, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
    #            <note>
    #               <p>In the CLI, this API maps to the <code>--stack-region</code> parameter. If the
    #             <code>--stack-region</code> parameter and the CLI common parameter
    #                       <code>--region</code> are set to the same value, the stack uses a
    #                       <i>regional</i> endpoint. If the <code>--stack-region</code>
    #             parameter is not set, but the CLI <code>--region</code> parameter is, this also
    #                   results in a stack with a <i>regional</i> endpoint. However, if the
    #                       <code>--region</code> parameter is set to <code>us-east-1</code>, and the
    #                       <code>--stack-region</code> parameter is set to one of the following, then the
    #                   stack uses a legacy or <i>classic</i> region: <code>us-west-1,
    #                       us-west-2, sa-east-1, eu-central-1, eu-west-1, ap-northeast-1, ap-southeast-1,
    #                       ap-southeast-2</code>. In this case, the actual API endpoint of the stack is in
    #                       <code>us-east-1</code>. Only the preceding regions are supported as classic
    #                   regions in the <code>us-east-1</code> API endpoint. Because it is a best practice to
    #             choose the regional endpoint that is closest to where you manage Amazon Web Services, we recommend
    #             that you use regional endpoints for new stacks. The CLI common
    #                       <code>--region</code> parameter always specifies a regional API endpoint; it
    #             cannot be used to specify a classic OpsWorks Stacks region.</p>
    #            </note>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC that the stack is to be launched into. The VPC must be in the stack's region. All instances are launched 
    #             into this VPC. You cannot change the ID later.</p>
    #            <ul>
    #               <li>
    #                  <p>If your account supports EC2-Classic, the default value is <code>no VPC</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If your account does not support EC2-Classic, the default value is the default VPC for the specified region.</p>
    #               </li>
    #            </ul>
    #            <p>If the VPC ID corresponds to a default VPC and you have specified either the
    #           <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only,
    #             OpsWorks Stacks infers the value of the 
    #             other parameter. If you specify neither parameter, OpsWorks Stacks sets
    #         these parameters to the first valid Availability Zone for the specified region and the
    #         corresponding default VPC subnet ID, respectively.</p>
    #            <p>If you specify a nondefault VPC ID, note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>It must belong to a VPC in your account that is in the specified region.</p>
    #               </li>
    #               <li>
    #                  <p>You must specify a value for <code>DefaultSubnetId</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about how to use OpsWorks Stacks with a VPC, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html">Running a Stack in a
    #           VPC</a>. For more information about default VPC and EC2-Classic, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported
    #           Platforms</a>. </p>
    #   @return [String]
    # @!attribute attributes
    #   <p>One or more user-defined key-value pairs to be added to the stack attributes.</p>
    #   @return [Hash<String, String>]
    # @!attribute service_role_arn
    #   <p>The stack's IAM role, which allows OpsWorks Stacks to work with Amazon Web Services
    #         resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an
    #         existing IAM role. For more information about IAM ARNs, see 
    #             <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #   @return [String]
    # @!attribute default_instance_profile_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances.
    #             For more information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #   @return [String]
    # @!attribute default_os
    #   <p>The stack's default operating system, which is installed on every instance unless you specify a different operating 
    #             system when you create the instance. You can specify one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2</code>, <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, 
    #                 <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A supported Ubuntu operating system, such as <code>Ubuntu 18.04 LTS</code>, <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CentOS Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Red Hat Enterprise Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, 
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, 
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or 
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when
    #           you create instances. For more
    #           information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">
    #           Using Custom AMIs</a>.</p>
    #               </li>
    #            </ul>
    #            <p>The default option is the current Amazon Linux version.
    #             Not all operating systems are supported with all versions of Chef. For more information about supported operating systems,
    #             see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">OpsWorks Stacks Operating Systems</a>.</p>
    #   @return [String]
    # @!attribute hostname_theme
    #   <p>The stack's host name theme, with spaces replaced by underscores. The theme is used to
    #         generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set
    #         to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's
    #         short name. The other themes are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Baked_Goods</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Clouds</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Europe_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fruits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Greek_Deities_and_Titans</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Legendary_creatures_from_Japan</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Planets_and_Moons</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Roman_Deities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Scottish_Islands</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>US_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Wild_Cats</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a
    #         host name based on the current theme.</p>
    #   @return [String]
    # @!attribute default_availability_zone
    #   <p>The stack's default Availability Zone, which must be in the specified region. For more
    #         information, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and
    #           Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must
    #         be in the same zone. For more information, see the <code>VpcId</code> parameter description.
    #       </p>
    #   @return [String]
    # @!attribute default_subnet_id
    #   <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the
    #           <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify
    #         otherwise when you create the instance. If you also specify a value for
    #           <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on
    #         default values and when this parameter is required, see the <code>VpcId</code> parameter
    #         description. </p>
    #   @return [String]
    # @!attribute custom_json
    #   <p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration 
    #             attribute values or to pass data to recipes. The string should be in the following format:</p>
    #            <p>
    #               <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code>
    #            </p>
    #            <p>For more information about custom JSON, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to
    #           Modify the Stack Configuration Attributes</a>.</p>
    #   @return [String]
    # @!attribute configuration_manager
    #   <p>The configuration manager. When you create a stack we recommend that you use the configuration manager to specify the 
    #             Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is 
    #             currently 12.</p>
    #   @return [Types::StackConfigurationManager]
    # @!attribute chef_configuration
    #   <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the
    #         Berkshelf version on Chef 11.10 stacks. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
    #   @return [Types::ChefConfiguration]
    # @!attribute use_custom_cookbooks
    #   <p>Whether the stack uses custom cookbooks.</p>
    #   @return [Boolean]
    # @!attribute use_opsworks_security_groups
    #   <p>Whether to associate the OpsWorks Stacks built-in security groups with the stack's layers.</p>
    #            <p>OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are
    #         associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead
    #         provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the
    #         following settings: </p>
    #            <ul>
    #               <li>
    #                  <p>True - OpsWorks Stacks automatically associates the appropriate built-in security group with each 
    #                 layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot 
    #                 delete the built-in security group.</p>
    #               </li>
    #               <li>
    #                  <p>False - OpsWorks Stacks does not associate built-in security groups with layers. You must create 
    #                 appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still 
    #                 manually associate a built-in security group with a layer on creation; custom security groups are required only for those 
    #                 layers that need custom settings.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New
    #           Stack</a>.</p>
    #   @return [Boolean]
    # @!attribute custom_cookbooks_source
    #   <p>Contains the information required to retrieve an app or cookbook from a repository. For more information, 
    #               see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Adding Apps</a> or 
    #               <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Cookbooks and Recipes</a>.</p>
    #   @return [Types::Source]
    # @!attribute default_ssh_key_name
    #   <p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, 
    #             OpsWorks installs the public key on the instance and you can use the private key with an SSH
    #         client to log in to the instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to
    #           Communicate with an Instance</a> and <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH
    #           Access</a>. You can override this setting by specifying a different key pair, or no key
    #         pair, when you <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">
    #           create an instance</a>. </p>
    #   @return [String]
    # @!attribute default_root_device_type
    #   <p>The default root device type. This value is the default for all instances in the stack,
    #         but you can override it when you create an instance. The default option is
    #           <code>instance-store</code>. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The default OpsWorks Stacks agent version. You have the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>Auto-update - Set this parameter to <code>LATEST</code>. OpsWorks Stacks
    #           automatically installs new agent versions on the stack's instances as soon as
    #           they are available.</p>
    #               </li>
    #               <li>
    #                  <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, 
    #                you must edit the stack configuration and specify a new version. OpsWorks Stacks installs 
    #                that version on the stack's instances.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting is the most recent release of the agent. To specify an agent version,
    #         you must use the complete version number, not the abbreviated number shown on the console.
    #         For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p>
    #            <note>
    #               <p>You can also specify an agent version when you create or update an instance, 
    #            which overrides the stack's default setting.</p>
    #            </note>
    #   @return [String]
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
      :agent_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>CreateStack</code> request.</p>
    # @!attribute stack_id
    #   <p>The stack ID, which is an opaque string that you use to identify the stack when performing
    #         actions such as <code>DescribeStacks</code>.</p>
    #   @return [String]
    class CreateStackResult < Struct.new(
      :stack_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute iam_user_arn
    #   <p>The user's IAM ARN; this can also be a federated user's ARN.</p>
    #   @return [String]
    # @!attribute ssh_username
    #   <p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If
    #             the specified name includes other punctuation marks, OpsWorks Stacks removes them. For example,
    #           <code>my.name</code> is changed to <code>myname</code>. If you do not specify an SSH
    #             user name, OpsWorks Stacks generates one from the IAM user name. </p>
    #   @return [String]
    # @!attribute ssh_public_key
    #   <p>The user's public SSH key.</p>
    #   @return [String]
    # @!attribute allow_self_management
    #   <p>Whether users can specify their own SSH public key through the My Settings page. For more
    #         information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html">Setting an IAM
    #           User's Public SSH Key</a>.</p>
    #   @return [Boolean]
    class CreateUserProfileRequest < Struct.new(
      :iam_user_arn,
      :ssh_username,
      :ssh_public_key,
      :allow_self_management,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>CreateUserProfile</code> request.</p>
    # @!attribute iam_user_arn
    #   <p>The user's IAM ARN.</p>
    #   @return [String]
    class CreateUserProfileResult < Struct.new(
      :iam_user_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an app's data source.</p>
    # @!attribute type
    #   <p>The data source's type, <code>AutoSelectOpsworksMysqlInstance</code>,
    #           <code>OpsworksMysqlInstance</code>, <code>RdsDbInstance</code>, or <code>None</code>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The data source's ARN.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The database name.</p>
    #   @return [String]
    class DataSource < Struct.new(
      :type,
      :arn,
      :database_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    class DeleteAppRequest < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    # @!attribute delete_elastic_ip
    #   <p>Whether to delete the instance Elastic IP address.</p>
    #   @return [Boolean]
    # @!attribute delete_volumes
    #   <p>Whether to delete the instance's Amazon EBS volumes.</p>
    #   @return [Boolean]
    class DeleteInstanceRequest < Struct.new(
      :instance_id,
      :delete_elastic_ip,
      :delete_volumes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute layer_id
    #   <p>The layer ID.</p>
    #   @return [String]
    class DeleteLayerRequest < Struct.new(
      :layer_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    class DeleteStackRequest < Struct.new(
      :stack_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute iam_user_arn
    #   <p>The user's IAM ARN. This can also be a federated user's ARN.</p>
    #   @return [String]
    class DeleteUserProfileRequest < Struct.new(
      :iam_user_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a deployment of a stack or app.</p>
    # @!attribute deployment_id
    #   <p>The deployment ID.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Date when the deployment was created.</p>
    #   @return [String]
    # @!attribute completed_at
    #   <p>Date when the deployment completed.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>The deployment duration.</p>
    #   @return [Integer]
    # @!attribute iam_user_arn
    #   <p>The user's IAM ARN.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>A user-defined comment.</p>
    #   @return [String]
    # @!attribute command
    #   <p>Used to specify a stack or deployment command.</p>
    #   @return [Types::DeploymentCommand]
    # @!attribute status
    #   <p>The deployment status:</p>
    #            <ul>
    #               <li>
    #                  <p>running</p>
    #               </li>
    #               <li>
    #                  <p>successful</p>
    #               </li>
    #               <li>
    #                  <p>failed</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute custom_json
    #   <p>A string that contains user-defined custom JSON. It can be used to override the corresponding default stack configuration 
    #             attribute values for stack or to pass data to recipes. The string should be in the following format:</p>
    #            <p>
    #               <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code>
    #            </p>
    #            <p>For more information on custom JSON, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to
    #           Modify the Stack Configuration Attributes</a>.</p>
    #   @return [String]
    # @!attribute instance_ids
    #   <p>The IDs of the target instances.</p>
    #   @return [Array<String>]
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
      :instance_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Used to specify a stack or deployment command.</p>
    # @!attribute name
    #   <p>Specifies the operation. You can specify only one command.</p>
    #            <p>For stacks, the following commands are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>execute_recipes</code>: Execute one or more recipes. To specify the recipes, set an
    #             <code>Args</code> parameter named <code>recipes</code> to the list of recipes to be
    #           executed. For example, to execute <code>phpapp::appsetup</code>, set <code>Args</code> to
    #             <code>{"recipes":["phpapp::appsetup"]}</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>install_dependencies</code>: Install the stack's dependencies.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>update_custom_cookbooks</code>: Update the stack's custom cookbooks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>update_dependencies</code>: Update the stack's dependencies.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The update_dependencies and install_dependencies commands are supported only for Linux instances. You can run the commands successfully on Windows instances, but they do nothing.</p>
    #            </note>
    #            <p>For apps, the following commands are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>deploy</code>: Deploy an app. Ruby on Rails apps have an optional <code>Args</code>
    #           parameter named <code>migrate</code>. Set <code>Args</code> to {"migrate":["true"]} to
    #           migrate the database. The default setting is {"migrate":["false"]}.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rollback</code> Roll the app back to the previous version. When you update an app,
    #                OpsWorks Stacks stores the previous version, up to a maximum of five versions. You can use this
    #           command to roll an app back as many as four versions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>start</code>: Start the app's web or application server.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>stop</code>: Stop the app's web or application server.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>restart</code>: Restart the app's web or application server.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>undeploy</code>: Undeploy the app.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute args
    #   <p>The arguments of those commands that take arguments. It should be set to a JSON object with the following format:</p>
    #            <p>
    #               <code>{"arg_name1" : ["value1", "value2", ...], "arg_name2" : ["value1", "value2", ...],
    #           ...}</code>
    #            </p>
    #            <p>The <code>update_dependencies</code> command takes two arguments:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>upgrade_os_to</code> - Specifies the Amazon Linux version that you want instances
    #           to run, such as <code>Amazon Linux 2</code>. You must also set
    #           the <code>allow_reboot</code> argument to true.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>allow_reboot</code> - Specifies whether to allow OpsWorks Stacks to reboot the instances if
    #           necessary, after installing the updates. This argument can be set to either
    #             <code>true</code> or <code>false</code>. The default value is <code>false</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to upgrade an instance to Amazon Linux 2018.03, set <code>Args</code> to the
    #         following.</p>
    #            <p>
    #               <code> { "upgrade_os_to":["Amazon Linux 2018.03"], "allow_reboot":["true"] } </code>
    #            </p>
    #   @return [Hash<String, Array<String>>]
    class DeploymentCommand < Struct.new(
      :name,
      :args,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ecs_cluster_arn
    #   <p>The cluster's Amazon Resource Number (ARN).</p>
    #   @return [String]
    class DeregisterEcsClusterRequest < Struct.new(
      :ecs_cluster_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute elastic_ip
    #   <p>The Elastic IP address.</p>
    #   @return [String]
    class DeregisterElasticIpRequest < Struct.new(
      :elastic_ip,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    class DeregisterInstanceRequest < Struct.new(
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rds_db_instance_arn
    #   <p>The Amazon RDS instance's ARN.</p>
    #   @return [String]
    class DeregisterRdsDbInstanceRequest < Struct.new(
      :rds_db_instance_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume_id
    #   <p>The OpsWorks Stacks volume ID, which is the GUID that OpsWorks Stacks assigned to the instance 
    #             when you registered the volume with the stack, not the Amazon EC2 volume ID.</p>
    #   @return [String]
    class DeregisterVolumeRequest < Struct.new(
      :volume_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    # @!attribute configuration_manager
    #   <p>The configuration manager.</p>
    #   @return [Types::StackConfigurationManager]
    class DescribeAgentVersionsRequest < Struct.new(
      :stack_id,
      :configuration_manager,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeAgentVersions</code> request.</p>
    # @!attribute agent_versions
    #   <p>The agent versions for the specified stack or configuration manager. Note that this value is the complete version number, 
    #             not the abbreviated number used by the console.</p>
    #   @return [Array<Types::AgentVersion>]
    class DescribeAgentVersionsResult < Struct.new(
      :agent_versions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The app stack ID. If you use this parameter, <code>DescribeApps</code> returns a description
    #         of the apps in the specified stack.</p>
    #   @return [String]
    # @!attribute app_ids
    #   <p>An array of app IDs for the apps to be described. If you use this parameter,
    #           <code>DescribeApps</code> returns a description of the specified apps. Otherwise, it returns
    #         a description of every app.</p>
    #   @return [Array<String>]
    class DescribeAppsRequest < Struct.new(
      :stack_id,
      :app_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeApps</code> request.</p>
    # @!attribute apps
    #   <p>An array of <code>App</code> objects that describe the specified apps. </p>
    #   @return [Array<Types::App>]
    class DescribeAppsResult < Struct.new(
      :apps,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p>The deployment ID. If you include this parameter, <code>DescribeCommands</code> returns a
    #         description of the commands associated with the specified deployment.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The instance ID. If you include this parameter, <code>DescribeCommands</code> returns a
    #         description of the commands associated with the specified instance.</p>
    #   @return [String]
    # @!attribute command_ids
    #   <p>An array of command IDs. If you include this parameter, <code>DescribeCommands</code> returns
    #         a description of the specified commands. Otherwise, it returns a description of every
    #         command.</p>
    #   @return [Array<String>]
    class DescribeCommandsRequest < Struct.new(
      :deployment_id,
      :instance_id,
      :command_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeCommands</code> request.</p>
    # @!attribute commands
    #   <p>An array of <code>Command</code> objects that describe each of the specified commands.</p>
    #   @return [Array<Types::Command>]
    class DescribeCommandsResult < Struct.new(
      :commands,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The stack ID. If you include this parameter, the command returns a
    #         description of the commands associated with the specified stack.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The app ID. If you include this parameter, the command returns a
    #         description of the commands associated with the specified app.</p>
    #   @return [String]
    # @!attribute deployment_ids
    #   <p>An array of deployment IDs to be described. If you include this parameter,
    #           the command returns a description of the specified deployments.
    #         Otherwise, it returns a description of every deployment.</p>
    #   @return [Array<String>]
    class DescribeDeploymentsRequest < Struct.new(
      :stack_id,
      :app_id,
      :deployment_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeDeployments</code> request.</p>
    # @!attribute deployments
    #   <p>An array of <code>Deployment</code> objects that describe the deployments.</p>
    #   @return [Array<Types::Deployment>]
    class DescribeDeploymentsResult < Struct.new(
      :deployments,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ecs_cluster_arns
    #   <p>A list of ARNs, one for each cluster to be described.</p>
    #   @return [Array<String>]
    # @!attribute stack_id
    #   <p>A stack ID.
    #         <code>DescribeEcsClusters</code> returns a description of the cluster that is registered with the stack.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results,
    #         the response object's<code>NextToken</code> parameter value is set to a token.
    #         To retrieve the next set of results, call <code>DescribeEcsClusters</code>
    #         again and assign that token to the request object's <code>NextToken</code> parameter.
    #         If there are no remaining results, the previous response
    #         object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>To receive a paginated response, use this parameter to specify the maximum number
    #         of results to be returned with a single call. If the number of available results exceeds this maximum, the
    #         response includes a <code>NextToken</code> value that you can assign
    #         to the <code>NextToken</code> request parameter to get the next set of results.</p>
    #   @return [Integer]
    class DescribeEcsClustersRequest < Struct.new(
      :ecs_cluster_arns,
      :stack_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeEcsClusters</code> request.</p>
    # @!attribute ecs_clusters
    #   <p>A list of <code>EcsCluster</code> objects containing the cluster descriptions.</p>
    #   @return [Array<Types::EcsCluster>]
    # @!attribute next_token
    #   <p>If a paginated request does not return all of the remaining results, this parameter is set to a token that
    #         you can assign to the request object's <code>NextToken</code> parameter to retrieve the next set of results.
    #         If the previous paginated request returned all of the remaining results,
    #         this parameter is set to <code>null</code>.</p>
    #   @return [String]
    class DescribeEcsClustersResult < Struct.new(
      :ecs_clusters,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The instance ID. If you include this parameter, <code>DescribeElasticIps</code> returns a
    #         description of the Elastic IP addresses associated with the specified instance.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>A stack ID. If you include this parameter, <code>DescribeElasticIps</code> returns a
    #         description of the Elastic IP addresses that are registered with the specified stack.</p>
    #   @return [String]
    # @!attribute ips
    #   <p>An array of Elastic IP addresses to be described. If you include this parameter,
    #           <code>DescribeElasticIps</code> returns a description of the specified Elastic IP addresses.
    #         Otherwise, it returns a description of every Elastic IP address.</p>
    #   @return [Array<String>]
    class DescribeElasticIpsRequest < Struct.new(
      :instance_id,
      :stack_id,
      :ips,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeElasticIps</code> request.</p>
    # @!attribute elastic_ips
    #   <p>An <code>ElasticIps</code> object that describes the specified Elastic IP addresses.</p>
    #   @return [Array<Types::ElasticIp>]
    class DescribeElasticIpsResult < Struct.new(
      :elastic_ips,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>A stack ID. The action describes the stack's Elastic Load Balancing instances.</p>
    #   @return [String]
    # @!attribute layer_ids
    #   <p>A list of layer IDs. The action describes the Elastic Load Balancing instances for the specified layers.</p>
    #   @return [Array<String>]
    class DescribeElasticLoadBalancersRequest < Struct.new(
      :stack_id,
      :layer_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeElasticLoadBalancers</code> request.</p>
    # @!attribute elastic_load_balancers
    #   <p>A list of <code>ElasticLoadBalancer</code> objects that describe the specified Elastic Load Balancing
    #         instances.</p>
    #   @return [Array<Types::ElasticLoadBalancer>]
    class DescribeElasticLoadBalancersResult < Struct.new(
      :elastic_load_balancers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>A stack ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of
    #         the instances associated with the specified stack.</p>
    #   @return [String]
    # @!attribute layer_id
    #   <p>A layer ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of
    #             the instances associated with the specified layer.</p>
    #   @return [String]
    # @!attribute instance_ids
    #   <p>An array of instance IDs to be described. If you use this parameter,
    #           <code>DescribeInstances</code> returns a description of the specified instances. Otherwise,
    #         it returns a description of every instance.</p>
    #   @return [Array<String>]
    class DescribeInstancesRequest < Struct.new(
      :stack_id,
      :layer_id,
      :instance_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeInstances</code> request.</p>
    # @!attribute instances
    #   <p>An array of <code>Instance</code> objects that describe the instances.</p>
    #   @return [Array<Types::Instance>]
    class DescribeInstancesResult < Struct.new(
      :instances,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    # @!attribute layer_ids
    #   <p>An array of layer IDs that specify the layers to be described. If you omit this parameter,
    #           <code>DescribeLayers</code> returns a description of every layer in the specified stack.</p>
    #   @return [Array<String>]
    class DescribeLayersRequest < Struct.new(
      :stack_id,
      :layer_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeLayers</code> request.</p>
    # @!attribute layers
    #   <p>An array of <code>Layer</code> objects that describe the layers.</p>
    #   @return [Array<Types::Layer>]
    class DescribeLayersResult < Struct.new(
      :layers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute layer_ids
    #   <p>An array of layer IDs.</p>
    #   @return [Array<String>]
    class DescribeLoadBasedAutoScalingRequest < Struct.new(
      :layer_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeLoadBasedAutoScaling</code> request.</p>
    # @!attribute load_based_auto_scaling_configurations
    #   <p>An array of <code>LoadBasedAutoScalingConfiguration</code> objects that describe each layer's
    #         configuration.</p>
    #   @return [Array<Types::LoadBasedAutoScalingConfiguration>]
    class DescribeLoadBasedAutoScalingResult < Struct.new(
      :load_based_auto_scaling_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeMyUserProfile</code> request.</p>
    # @!attribute user_profile
    #   <p>A <code>UserProfile</code> object that describes the user's SSH information.</p>
    #   @return [Types::SelfUserProfile]
    class DescribeMyUserProfileResult < Struct.new(
      :user_profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response to a <code>DescribeOperatingSystems</code> request.</p>
    # @!attribute operating_systems
    #   <p>Contains information in response to a <code>DescribeOperatingSystems</code> request.</p>
    #   @return [Array<Types::OperatingSystem>]
    class DescribeOperatingSystemsResponse < Struct.new(
      :operating_systems,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute iam_user_arn
    #   <p>The user's IAM ARN. This can also be a federated user's ARN. For more information about IAM 
    #             ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    class DescribePermissionsRequest < Struct.new(
      :iam_user_arn,
      :stack_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribePermissions</code> request.</p>
    # @!attribute permissions
    #   <p>An array of <code>Permission</code> objects that describe the stack permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If the request object contains only a stack ID, the array contains a
    #                <code>Permission</code> object with permissions for each of the stack IAM ARNs.</p>
    #               </li>
    #               <li>
    #                  <p>If the request object contains only an IAM ARN, the array contains a
    #             <code>Permission</code> object with permissions for each of the user's stack IDs.</p>
    #               </li>
    #               <li>
    #                  <p>If the request contains a stack ID and an IAM ARN, the array contains a single
    #                 <code>Permission</code> object with permissions for the specified stack and IAM ARN.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Permission>]
    class DescribePermissionsResult < Struct.new(
      :permissions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The instance ID. If you use this parameter, <code>DescribeRaidArrays</code> returns
    #         descriptions of the RAID arrays associated with the specified instance. </p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    # @!attribute raid_array_ids
    #   <p>An array of RAID array IDs. If you use this parameter, <code>DescribeRaidArrays</code>
    #         returns descriptions of the specified arrays. Otherwise, it returns a description of every
    #         array.</p>
    #   @return [Array<String>]
    class DescribeRaidArraysRequest < Struct.new(
      :instance_id,
      :stack_id,
      :raid_array_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeRaidArrays</code> request.</p>
    # @!attribute raid_arrays
    #   <p>A <code>RaidArrays</code> object that describes the specified RAID arrays.</p>
    #   @return [Array<Types::RaidArray>]
    class DescribeRaidArraysResult < Struct.new(
      :raid_arrays,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The ID of the stack with which the instances are registered. The operation returns descriptions of all registered 
    #             Amazon RDS instances.</p>
    #   @return [String]
    # @!attribute rds_db_instance_arns
    #   <p>An array containing the ARNs of the instances to be described.</p>
    #   @return [Array<String>]
    class DescribeRdsDbInstancesRequest < Struct.new(
      :stack_id,
      :rds_db_instance_arns,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeRdsDbInstances</code> request.</p>
    # @!attribute rds_db_instances
    #   <p>An a array of <code>RdsDbInstance</code> objects that describe the instances.</p>
    #   @return [Array<Types::RdsDbInstance>]
    class DescribeRdsDbInstancesResult < Struct.new(
      :rds_db_instances,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The stack ID. If you use this parameter, <code>DescribeServiceErrors</code> returns
    #         descriptions of the errors associated with the specified stack.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The instance ID. If you use this parameter, <code>DescribeServiceErrors</code> returns
    #         descriptions of the errors associated with the specified instance.</p>
    #   @return [String]
    # @!attribute service_error_ids
    #   <p>An array of service error IDs. If you use this parameter, <code>DescribeServiceErrors</code>
    #         returns descriptions of the specified errors. Otherwise, it returns a description of every
    #         error.</p>
    #   @return [Array<String>]
    class DescribeServiceErrorsRequest < Struct.new(
      :stack_id,
      :instance_id,
      :service_error_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeServiceErrors</code> request.</p>
    # @!attribute service_errors
    #   <p>An array of <code>ServiceError</code> objects that describe the specified service errors.</p>
    #   @return [Array<Types::ServiceError>]
    class DescribeServiceErrorsResult < Struct.new(
      :service_errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    class DescribeStackProvisioningParametersRequest < Struct.new(
      :stack_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeStackProvisioningParameters</code> request.</p>
    # @!attribute agent_installer_url
    #   <p>The OpsWorks Stacks agent installer's URL.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>An embedded object that contains the provisioning parameters.</p>
    #   @return [Hash<String, String>]
    class DescribeStackProvisioningParametersResult < Struct.new(
      :agent_installer_url,
      :parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    class DescribeStackSummaryRequest < Struct.new(
      :stack_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeStackSummary</code> request.</p>
    # @!attribute stack_summary
    #   <p>A <code>StackSummary</code> object that contains the results.</p>
    #   @return [Types::StackSummary]
    class DescribeStackSummaryResult < Struct.new(
      :stack_summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_ids
    #   <p>An array of stack IDs that specify the stacks to be described. If you omit this parameter, and have permissions to get information 
    #             about all stacks, <code>DescribeStacks</code> returns a description of every stack. If the IAM policy that is attached to an IAM 
    #         user limits the <code>DescribeStacks</code> action to specific stack ARNs, this parameter is required, and the user must specify a stack ARN that is allowed by the policy. 
    #             Otherwise, <code>DescribeStacks</code> returns an <code>AccessDenied</code> error.</p>
    #   @return [Array<String>]
    class DescribeStacksRequest < Struct.new(
      :stack_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeStacks</code> request.</p>
    # @!attribute stacks
    #   <p>An array of <code>Stack</code> objects that describe the stacks.</p>
    #   @return [Array<Types::Stack>]
    class DescribeStacksResult < Struct.new(
      :stacks,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_ids
    #   <p>An array of instance IDs.</p>
    #   @return [Array<String>]
    class DescribeTimeBasedAutoScalingRequest < Struct.new(
      :instance_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeTimeBasedAutoScaling</code> request.</p>
    # @!attribute time_based_auto_scaling_configurations
    #   <p>An array of <code>TimeBasedAutoScalingConfiguration</code> objects that describe the
    #         configuration for the specified instances.</p>
    #   @return [Array<Types::TimeBasedAutoScalingConfiguration>]
    class DescribeTimeBasedAutoScalingResult < Struct.new(
      :time_based_auto_scaling_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute iam_user_arns
    #   <p>An array of IAM or federated user ARNs that identify the users to be described.</p>
    #   @return [Array<String>]
    class DescribeUserProfilesRequest < Struct.new(
      :iam_user_arns,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeUserProfiles</code> request.</p>
    # @!attribute user_profiles
    #   <p>A <code>Users</code> object that describes the specified users.</p>
    #   @return [Array<Types::UserProfile>]
    class DescribeUserProfilesResult < Struct.new(
      :user_profiles,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The instance ID. If you use this parameter, <code>DescribeVolumes</code> returns descriptions
    #         of the volumes associated with the specified instance.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>A stack ID. The action describes the stack's registered Amazon EBS volumes.</p>
    #   @return [String]
    # @!attribute raid_array_id
    #   <p>The RAID array ID. If you use this parameter, <code>DescribeVolumes</code> returns
    #         descriptions of the volumes associated with the specified RAID array.</p>
    #   @return [String]
    # @!attribute volume_ids
    #   <p>Am array of volume IDs. If you use this parameter, <code>DescribeVolumes</code> returns
    #         descriptions of the specified volumes. Otherwise, it returns a description of every
    #         volume.</p>
    #   @return [Array<String>]
    class DescribeVolumesRequest < Struct.new(
      :instance_id,
      :stack_id,
      :raid_array_id,
      :volume_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>DescribeVolumes</code> request.</p>
    # @!attribute volumes
    #   <p>An array of volume IDs.</p>
    #   @return [Array<Types::Volume>]
    class DescribeVolumesResult < Struct.new(
      :volumes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute elastic_load_balancer_name
    #   <p>The Elastic Load Balancing instance's name.</p>
    #   @return [String]
    # @!attribute layer_id
    #   <p>The ID of the layer that the Elastic Load Balancing instance is attached to.</p>
    #   @return [String]
    class DetachElasticLoadBalancerRequest < Struct.new(
      :elastic_load_balancer_name,
      :layer_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute elastic_ip
    #   <p>The Elastic IP address.</p>
    #   @return [String]
    class DisassociateElasticIpRequest < Struct.new(
      :elastic_ip,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon EBS volume. This data type maps directly to the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html">EbsBlockDevice</a>
    #       data type.</p>
    # @!attribute snapshot_id
    #   <p>The snapshot ID.</p>
    #   @return [String]
    # @!attribute iops
    #   <p>The number of I/O operations per second (IOPS) that the volume supports. For more
    #         information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html">EbsBlockDevice</a>.</p>
    #   @return [Integer]
    # @!attribute volume_size
    #   <p>The volume size, in GiB. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html">EbsBlockDevice</a>.</p>
    #   @return [Integer]
    # @!attribute volume_type
    #   <p>The volume type. <code>gp2</code> for General Purpose (SSD) volumes, <code>io1</code> for
    #             Provisioned IOPS (SSD) volumes, <code>st1</code> for Throughput Optimized hard disk drives (HDD), <code>sc1</code> for Cold HDD,and <code>standard</code> for Magnetic volumes.</p>
    #            <p>If you specify the <code>io1</code> volume type, you must also specify a value for the <code>Iops</code> attribute. 
    #             The maximum ratio of provisioned IOPS to requested volume size (in GiB) is 50:1. Amazon Web Services uses the default volume size (in GiB) 
    #             specified in the AMI attributes to set IOPS to 50 x (volume size).</p>
    #   @return [String]
    # @!attribute delete_on_termination
    #   <p>Whether the volume is deleted on instance termination.</p>
    #   @return [Boolean]
    class EbsBlockDevice < Struct.new(
      :snapshot_id,
      :iops,
      :volume_size,
      :volume_type,
      :delete_on_termination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a registered Amazon ECS cluster.</p>
    # @!attribute ecs_cluster_arn
    #   <p>The cluster's ARN.</p>
    #   @return [String]
    # @!attribute ecs_cluster_name
    #   <p>The cluster name.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    # @!attribute registered_at
    #   <p>The time and date that the cluster was registered with the stack.</p>
    #   @return [String]
    class EcsCluster < Struct.new(
      :ecs_cluster_arn,
      :ecs_cluster_name,
      :stack_id,
      :registered_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Elastic IP address.</p>
    # @!attribute ip
    #   <p>The IP address.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name, which can be a maximum of 32 characters.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The ID of the instance that the address is attached to.</p>
    #   @return [String]
    class ElasticIp < Struct.new(
      :ip,
      :name,
      :domain,
      :region,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Elastic Load Balancing instance.</p>
    # @!attribute elastic_load_balancer_name
    #   <p>The Elastic Load Balancing instance name.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The instance's Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The instance's public DNS name.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The ID of the stack with which the instance is associated.</p>
    #   @return [String]
    # @!attribute layer_id
    #   <p>The ID of the layer to which the instance is attached.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC ID.</p>
    #   @return [String]
    # @!attribute availability_zones
    #   <p>A list of Availability Zones.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs, if the stack is running in a VPC.</p>
    #   @return [Array<String>]
    # @!attribute ec2_instance_ids
    #   <p>A list of the EC2 instances for which the Elastic Load Balancing instance is managing traffic.</p>
    #   @return [Array<String>]
    class ElasticLoadBalancer < Struct.new(
      :elastic_load_balancer_name,
      :region,
      :dns_name,
      :stack_id,
      :layer_id,
      :vpc_id,
      :availability_zones,
      :subnet_ids,
      :ec2_instance_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an app's environment variable.</p>
    # @!attribute key
    #   <p>(Required) The environment variable's name, which can consist of up to 64 characters and must be specified. 
    #             The name can contain upper- and lowercase letters, numbers, and underscores (_), but it must start with a letter or underscore.</p>
    #   @return [String]
    # @!attribute value
    #   <p>(Optional) The environment variable's value, which can be left empty. If you specify a value, 
    #             it can contain up to 256 characters, which must all be printable.</p>
    #   @return [String]
    # @!attribute secure
    #   <p>(Optional) Whether the variable's value is returned by the <a>DescribeApps</a> action.
    #         To hide an environment variable's value, set <code>Secure</code> to <code>true</code>.
    #           <code>DescribeApps</code> returns <code>*****FILTERED*****</code> instead of the actual
    #         value. The default value for <code>Secure</code> is <code>false</code>. </p>
    #   @return [Boolean]
    class EnvironmentVariable < Struct.new(
      :key,
      :value,
      :secure,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute layer_id
    #   <p>The layer ID.</p>
    #   @return [String]
    class GetHostnameSuggestionRequest < Struct.new(
      :layer_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>GetHostnameSuggestion</code> request.</p>
    # @!attribute layer_id
    #   <p>The layer ID.</p>
    #   @return [String]
    # @!attribute hostname
    #   <p>The generated host name.</p>
    #   @return [String]
    class GetHostnameSuggestionResult < Struct.new(
      :layer_id,
      :hostname,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The instance's OpsWorks Stacks ID.</p>
    #   @return [String]
    # @!attribute valid_for_in_minutes
    #   <p>The length of time (in minutes) that the grant is valid. When the grant expires at the end of this period, 
    #             the user will no longer be able to use the credentials to log in. If the user is logged in at the time, they are 
    #             logged out.</p>
    #   @return [Integer]
    class GrantAccessRequest < Struct.new(
      :instance_id,
      :valid_for_in_minutes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>GrantAccess</code> request.</p>
    # @!attribute temporary_credential
    #   <p>A <code>TemporaryCredential</code> object that contains the data needed to log in to the
    #         instance by RDP clients, such as the Microsoft Remote Desktop Connection.</p>
    #   @return [Types::TemporaryCredential]
    class GrantAccessResult < Struct.new(
      :temporary_credential,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an instance.</p>
    # @!attribute agent_version
    #   <p>The agent version. This parameter is set to <code>INHERIT</code> if
    #         the instance inherits the default stack setting or to a
    #         a version number for a fixed agent version.</p>
    #   @return [String]
    # @!attribute ami_id
    #   <p>A custom AMI ID to be used to create the instance. For more
    #         information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Instances</a>
    #            </p>
    #   @return [String]
    # @!attribute architecture
    #   <p>The instance architecture: "i386" or "x86_64".</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The instance's Amazon Resource Number (ARN).</p>
    #   @return [String]
    # @!attribute auto_scaling_type
    #   <p>For load-based or time-based instances, the type.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The instance Availability Zone. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
    #   @return [String]
    # @!attribute block_device_mappings
    #   <p>An array of <code>BlockDeviceMapping</code> objects that specify the instance's block device
    #         mappings.</p>
    #   @return [Array<Types::BlockDeviceMapping>]
    # @!attribute created_at
    #   <p>The time that the instance was created.</p>
    #   @return [String]
    # @!attribute ebs_optimized
    #   <p>Whether this is an Amazon EBS-optimized instance.</p>
    #   @return [Boolean]
    # @!attribute ec2_instance_id
    #   <p>The ID of the associated Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute ecs_cluster_arn
    #   <p>For container instances, the Amazon ECS cluster's ARN.</p>
    #   @return [String]
    # @!attribute ecs_container_instance_arn
    #   <p>For container instances, the instance's ARN.</p>
    #   @return [String]
    # @!attribute elastic_ip
    #   <p>The instance <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP address</a>.</p>
    #   @return [String]
    # @!attribute hostname
    #   <p>The instance host name. The following are character limits for instance host names.</p>
    #            <ul>
    #               <li>
    #                  <p>Linux-based instances: 63 characters</p>
    #               </li>
    #               <li>
    #                  <p>Windows-based instances: 15 characters</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute infrastructure_class
    #   <p>For registered instances, the infrastructure class: <code>ec2</code> or
    #           <code>on-premises</code>.</p>
    #   @return [String]
    # @!attribute install_updates_on_boot
    #   <p>Whether to install operating system and package updates when the instance boots. The default
    #         value is <code>true</code>. If this value is set to <code>false</code>, you must update
    #         instances manually by using <a>CreateDeployment</a> to run the
    #           <code>update_dependencies</code> stack command or
    #         by manually running <code>yum</code> (Amazon
    #         Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p>
    #            <note>
    #               <p>We strongly recommend using the default value of <code>true</code> to ensure that your
    #           instances have the latest security updates.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    # @!attribute instance_profile_arn
    #   <p>The ARN of the instance's IAM profile. For more information about IAM ARNs, 
    #             see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type, such as <code>t2.micro</code>.</p>
    #   @return [String]
    # @!attribute last_service_error_id
    #   <p>The ID of the last service error. For more information, call
    #         <a>DescribeServiceErrors</a>.</p>
    #   @return [String]
    # @!attribute layer_ids
    #   <p>An array containing the instance layer IDs.</p>
    #   @return [Array<String>]
    # @!attribute os
    #   <p>The instance's operating system.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The instance's platform.</p>
    #   @return [String]
    # @!attribute private_dns
    #   <p>The instance's private DNS name.</p>
    #   @return [String]
    # @!attribute private_ip
    #   <p>The instance's private IP address.</p>
    #   @return [String]
    # @!attribute public_dns
    #   <p>The instance public DNS name.</p>
    #   @return [String]
    # @!attribute public_ip
    #   <p>The instance public IP address.</p>
    #   @return [String]
    # @!attribute registered_by
    #   <p>For registered instances, who performed the registration.</p>
    #   @return [String]
    # @!attribute reported_agent_version
    #   <p>The instance's reported OpsWorks Stacks agent version.</p>
    #   @return [String]
    # @!attribute reported_os
    #   <p>For registered instances, the reported operating system.</p>
    #   @return [Types::ReportedOs]
    # @!attribute root_device_type
    #   <p>The instance's root device type. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
    #   @return [String]
    # @!attribute root_device_volume_id
    #   <p>The root device volume ID.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>An array containing the instance security group IDs.</p>
    #   @return [Array<String>]
    # @!attribute ssh_host_dsa_key_fingerprint
    #   <p>The SSH key's Deep Security Agent (DSA) fingerprint.</p>
    #   @return [String]
    # @!attribute ssh_host_rsa_key_fingerprint
    #   <p>The SSH key's RSA fingerprint.</p>
    #   @return [String]
    # @!attribute ssh_key_name
    #   <p>The instance's Amazon EC2 key-pair name.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The instance status:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>booting</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>connection_lost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>online</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rebooting</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>running_setup</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>setup_failed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>shutting_down</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>start_failed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>stop_failed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>stopped</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>stopping</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>terminated</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>terminating</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The instance's subnet ID; applicable only if the stack is running in a VPC.</p>
    #   @return [String]
    # @!attribute tenancy
    #   <p>The instance's tenancy option, such as <code>dedicated</code> or <code>host</code>.</p>
    #   @return [String]
    # @!attribute virtualization_type
    #   <p>The instance's virtualization type: <code>paravirtual</code> or <code>hvm</code>.</p>
    #   @return [String]
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
      :virtualization_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a description of an Amazon EC2 instance from the Amazon EC2 metadata service. For more
    #       information, see <a href="https://docs.aws.amazon.com/sdkfornet/latest/apidocs/Index.html">Instance Metadata and User Data</a>.</p>
    # @!attribute document
    #   <p>A JSON document that contains the metadata.</p>
    #   @return [String]
    # @!attribute signature
    #   <p>A signature that can be used to verify the document's accuracy and authenticity.</p>
    #   @return [String]
    class InstanceIdentity < Struct.new(
      :document,
      :signature,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes how many instances a stack has for each status.</p>
    # @!attribute assigning
    #   <p>The number of instances in the Assigning state.</p>
    #   @return [Integer]
    # @!attribute booting
    #   <p>The number of instances with <code>booting</code> status.</p>
    #   @return [Integer]
    # @!attribute connection_lost
    #   <p>The number of instances with <code>connection_lost</code> status.</p>
    #   @return [Integer]
    # @!attribute deregistering
    #   <p>The number of instances in the Deregistering state.</p>
    #   @return [Integer]
    # @!attribute online
    #   <p>The number of instances with <code>online</code> status.</p>
    #   @return [Integer]
    # @!attribute pending
    #   <p>The number of instances with <code>pending</code> status.</p>
    #   @return [Integer]
    # @!attribute rebooting
    #   <p>The number of instances with <code>rebooting</code> status.</p>
    #   @return [Integer]
    # @!attribute registered
    #   <p>The number of instances in the Registered state.</p>
    #   @return [Integer]
    # @!attribute registering
    #   <p>The number of instances in the Registering state.</p>
    #   @return [Integer]
    # @!attribute requested
    #   <p>The number of instances with <code>requested</code> status.</p>
    #   @return [Integer]
    # @!attribute running_setup
    #   <p>The number of instances with <code>running_setup</code> status.</p>
    #   @return [Integer]
    # @!attribute setup_failed
    #   <p>The number of instances with <code>setup_failed</code> status.</p>
    #   @return [Integer]
    # @!attribute shutting_down
    #   <p>The number of instances with <code>shutting_down</code> status.</p>
    #   @return [Integer]
    # @!attribute start_failed
    #   <p>The number of instances with <code>start_failed</code> status.</p>
    #   @return [Integer]
    # @!attribute stop_failed
    #   <p>The number of instances with <code>stop_failed</code> status.</p>
    #   @return [Integer]
    # @!attribute stopped
    #   <p>The number of instances with <code>stopped</code> status.</p>
    #   @return [Integer]
    # @!attribute stopping
    #   <p>The number of instances with <code>stopping</code> status.</p>
    #   @return [Integer]
    # @!attribute terminated
    #   <p>The number of instances with <code>terminated</code> status.</p>
    #   @return [Integer]
    # @!attribute terminating
    #   <p>The number of instances with <code>terminating</code> status.</p>
    #   @return [Integer]
    # @!attribute unassigning
    #   <p>The number of instances in the Unassigning state.</p>
    #   @return [Integer]
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
      :unassigning,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a layer.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Number (ARN) of a layer.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The layer stack ID.</p>
    #   @return [String]
    # @!attribute layer_id
    #   <p>The layer ID.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The layer type.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The layer name. Layer names can be a maximum of 32 characters.</p>
    #   @return [String]
    # @!attribute shortname
    #   <p>The layer short name.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The layer attributes.</p>
    #            <p>For the <code>HaproxyStatsPassword</code>, <code>MysqlRootPassword</code>, and
    #             <code>GangliaPassword</code> attributes, OpsWorks Stacks returns <code>*****FILTERED*****</code>
    #         instead of the actual value</p>
    #            <p>For an ECS Cluster layer, OpsWorks Stacks the <code>EcsClusterArn</code> attribute is set to the cluster's ARN.</p>
    #   @return [Hash<String, String>]
    # @!attribute cloud_watch_logs_configuration
    #   <p>The Amazon CloudWatch Logs configuration settings for the layer.</p>
    #   @return [Types::CloudWatchLogsConfiguration]
    # @!attribute custom_instance_profile_arn
    #   <p>The ARN of the default IAM profile to be used for the layer's EC2 instances. For more
    #             information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #   @return [String]
    # @!attribute custom_json
    #   <p>A JSON formatted string containing the layer's custom stack configuration and deployment attributes.</p>
    #   @return [String]
    # @!attribute custom_security_group_ids
    #   <p>An array containing the layer's custom security group IDs.</p>
    #   @return [Array<String>]
    # @!attribute default_security_group_names
    #   <p>An array containing the layer's security group names.</p>
    #   @return [Array<String>]
    # @!attribute packages
    #   <p>An array of <code>Package</code> objects that describe the layer's packages.</p>
    #   @return [Array<String>]
    # @!attribute volume_configurations
    #   <p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>
    #   @return [Array<Types::VolumeConfiguration>]
    # @!attribute enable_auto_healing
    #   <p>Whether auto healing is disabled for the layer.</p>
    #   @return [Boolean]
    # @!attribute auto_assign_elastic_ips
    #   <p>Whether to automatically assign an <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP
    #           address</a> to the layer's instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit
    #           a Layer</a>.</p>
    #   @return [Boolean]
    # @!attribute auto_assign_public_ips
    #   <p>For stacks that are running in a VPC, whether to automatically assign a public IP address to
    #         the layer's instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit
    #           a Layer</a>.</p>
    #   @return [Boolean]
    # @!attribute default_recipes
    #   <p>OpsWorks Stacks supports five lifecycle events: <b>setup</b>, <b>configuration</b>, 
    #               <b>deploy</b>, <b>undeploy</b>, and <b>shutdown</b>.
    #               For each layer, OpsWorks Stacks runs a set of standard recipes for each event. You can also provide 
    #               custom recipes for any or all layers and events. OpsWorks Stacks runs custom event recipes after the standard 
    #               recipes. <code>LayerCustomRecipes</code> specifies the custom recipes for a particular layer to be run in response to each of 
    #               the five events.</p>
    #            <p>To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe 
    #               name, which is the recipe's file name without the <code>.rb</code> extension. For example: <code>phpapp2::dbsetup</code> specifies the 
    #               <code>dbsetup.rb</code> recipe in the repository's <code>phpapp2</code> folder.</p>
    #   @return [Types::Recipes]
    # @!attribute custom_recipes
    #   <p>A <code>LayerCustomRecipes</code> object that specifies the layer's custom recipes.</p>
    #   @return [Types::Recipes]
    # @!attribute created_at
    #   <p>Date when the layer was created.</p>
    #   @return [String]
    # @!attribute install_updates_on_boot
    #   <p>Whether to install operating system and package updates when the instance boots. The default
    #         value is <code>true</code>. If this value is set to <code>false</code>, you must then update
    #         your instances manually by using <a>CreateDeployment</a> to run the
    #           <code>update_dependencies</code> stack command or manually running <code>yum</code> (Amazon
    #         Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p>
    #            <note>
    #               <p>We strongly recommend using the default value of <code>true</code>, to ensure that your
    #           instances have the latest security updates.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute use_ebs_optimized_instances
    #   <p>Whether the layer uses Amazon EBS-optimized instances.</p>
    #   @return [Boolean]
    # @!attribute lifecycle_event_configuration
    #   <p>A <code>LifeCycleEventConfiguration</code> object that specifies the Shutdown event
    #         configuration.</p>
    #   @return [Types::LifecycleEventConfiguration]
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
      :lifecycle_event_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the lifecycle event configuration</p>
    # @!attribute shutdown
    #   <p>A <code>ShutdownEventConfiguration</code> object that specifies the Shutdown event
    #         configuration.</p>
    #   @return [Types::ShutdownEventConfiguration]
    class LifecycleEventConfiguration < Struct.new(
      :shutdown,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The stack or layer's Amazon Resource Number (ARN).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Do not use. A validation exception occurs if you add a <code>MaxResults</code> parameter to a <code>ListTagsRequest</code> 
    #             call.
    #         </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Do not use. A validation exception occurs if you add a <code>NextToken</code> parameter to a <code>ListTagsRequest</code> 
    #             call.
    #         </p>
    #   @return [String]
    class ListTagsRequest < Struct.new(
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>ListTags</code> request.</p>
    # @!attribute tags
    #   <p>A set of key-value pairs that contain tag keys and tag values that are attached to a stack or layer.</p>
    #   @return [Hash<String, String>]
    # @!attribute next_token
    #   <p>If a paginated request does not return all of the remaining results, this parameter is set to a token that
    #               you can assign to the request object's <code>NextToken</code> parameter to get the next set of results.
    #               If the previous paginated request returned all of the remaining results,
    #               this parameter is set to <code>null</code>.
    #         </p>
    #   @return [String]
    class ListTagsResult < Struct.new(
      :tags,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a layer's load-based auto scaling configuration.</p>
    # @!attribute layer_id
    #   <p>The layer ID.</p>
    #   @return [String]
    # @!attribute enable
    #   <p>Whether load-based auto scaling is enabled for the layer.</p>
    #   @return [Boolean]
    # @!attribute up_scaling
    #   <p>An <code>AutoScalingThresholds</code> object that describes the upscaling configuration,
    #             which defines how and when OpsWorks Stacks increases the number of instances.</p>
    #   @return [Types::AutoScalingThresholds]
    # @!attribute down_scaling
    #   <p>An <code>AutoScalingThresholds</code> object that describes the downscaling configuration,
    #             which defines how and when OpsWorks Stacks reduces the number of instances.</p>
    #   @return [Types::AutoScalingThresholds]
    class LoadBasedAutoScalingConfiguration < Struct.new(
      :layer_id,
      :enable,
      :up_scaling,
      :down_scaling,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes supported operating systems in OpsWorks Stacks.</p>
    # @!attribute name
    #   <p>The name of the operating system, such as <code>Amazon Linux 2</code>.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of a supported operating system, such as <code>Amazon Linux 2</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of a supported operating system, either <code>Linux</code> or <code>Windows</code>.</p>
    #   @return [String]
    # @!attribute configuration_managers
    #   <p>Supported configuration manager name and versions for an OpsWorks Stacks operating system.</p>
    #   @return [Array<Types::OperatingSystemConfigurationManager>]
    # @!attribute reported_name
    #   <p>A short name for the operating system manufacturer.</p>
    #   @return [String]
    # @!attribute reported_version
    #   <p>The version of the operating system, including the release and edition, if applicable.</p>
    #   @return [String]
    # @!attribute supported
    #   <p>Indicates that an operating system is not supported for new instances.</p>
    #   @return [Boolean]
    class OperatingSystem < Struct.new(
      :name,
      :id,
      :type,
      :configuration_managers,
      :reported_name,
      :reported_version,
      :supported,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A block that contains information about the configuration manager (Chef) and the versions of the 
    #             configuration manager that are supported for an operating system.</p>
    # @!attribute name
    #   <p>The name of the configuration manager, which is Chef.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The versions of the configuration manager that are supported by an operating system.</p>
    #   @return [String]
    class OperatingSystemConfigurationManager < Struct.new(
      :name,
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes stack or user permissions.</p>
    # @!attribute stack_id
    #   <p>A stack ID.</p>
    #   @return [String]
    # @!attribute iam_user_arn
    #   <p>The Amazon Resource Name (ARN) for an Identity and Access Management (IAM) role. For more
    #             information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #   @return [String]
    # @!attribute allow_ssh
    #   <p>Whether the user can use SSH.</p>
    #   @return [Boolean]
    # @!attribute allow_sudo
    #   <p>Whether the user can use <b>sudo</b>.</p>
    #   @return [Boolean]
    # @!attribute level
    #   <p>The user's permission level, which must be the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>deny</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>show</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deploy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>manage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>iam_only</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information on the permissions associated with these levels, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>
    #            </p>
    #   @return [String]
    class Permission < Struct.new(
      :stack_id,
      :iam_user_arn,
      :allow_ssh,
      :allow_sudo,
      :level,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an instance's RAID array.</p>
    # @!attribute raid_array_id
    #   <p>The array ID.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The array name.</p>
    #   @return [String]
    # @!attribute raid_level
    #   <p>The <a href="http://en.wikipedia.org/wiki/Standard_RAID_levels">RAID level</a>.</p>
    #   @return [Integer]
    # @!attribute number_of_disks
    #   <p>The number of disks in the array.</p>
    #   @return [Integer]
    # @!attribute size
    #   <p>The array's size.</p>
    #   @return [Integer]
    # @!attribute device
    #   <p>The array's Linux device. For example /dev/mdadm0.</p>
    #   @return [String]
    # @!attribute mount_point
    #   <p>The array's mount point.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The array's Availability Zone. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>When the RAID array was created.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    # @!attribute volume_type
    #   <p>The volume type, standard or PIOPS.</p>
    #   @return [String]
    # @!attribute iops
    #   <p>For PIOPS volumes, the IOPS per disk.</p>
    #   @return [Integer]
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
      :iops,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon RDS instance.</p>
    # @!attribute rds_db_instance_arn
    #   <p>The instance's ARN.</p>
    #   @return [String]
    # @!attribute db_instance_identifier
    #   <p>The database instance identifier.</p>
    #   @return [String]
    # @!attribute db_user
    #   <p>The master user name.</p>
    #   @return [String]
    # @!attribute db_password
    #   <p>OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The instance's Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute address
    #   <p>The instance's address.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The instance's database engine.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The ID of the stack with which the instance is registered.</p>
    #   @return [String]
    # @!attribute missing_on_rds
    #   <p>Set to <code>true</code> if OpsWorks Stacks is unable to discover the Amazon RDS instance. 
    #             OpsWorks Stacks attempts
    #         to discover the instance only once. If this value is set to <code>true</code>, you must
    #         deregister the instance, and then register it again.</p>
    #   @return [Boolean]
    class RdsDbInstance < Struct.new(
      :rds_db_instance_arn,
      :db_instance_identifier,
      :db_user,
      :db_password,
      :region,
      :address,
      :engine,
      :stack_id,
      :missing_on_rds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    class RebootInstanceRequest < Struct.new(
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>OpsWorks Stacks supports five
    #       lifecycle events:
    #         <b>setup</b>, <b>configuration</b>, <b>deploy</b>, <b>undeploy</b>, and <b>shutdown</b>. For
    #           each layer, OpsWorks Stacks runs a set of standard recipes for each event. In addition, you can provide
    #           custom recipes for any or all layers and events. OpsWorks Stacks runs custom event recipes after the
    #       standard recipes. <code>LayerCustomRecipes</code> specifies the custom recipes for a
    #       particular layer to be run in response to each of the five events. </p>
    #          <p>To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe name, 
    #           which is the recipe's file name without the .rb extension. For example: phpapp2::dbsetup specifies the dbsetup.rb recipe in 
    #           the repository's phpapp2 folder.</p>
    # @!attribute setup
    #   <p>An array of custom recipe names to be run following a <code>setup</code> event.</p>
    #   @return [Array<String>]
    # @!attribute configure
    #   <p>An array of custom recipe names to be run following a <code>configure</code> event.</p>
    #   @return [Array<String>]
    # @!attribute deploy
    #   <p>An array of custom recipe names to be run following a <code>deploy</code> event.</p>
    #   @return [Array<String>]
    # @!attribute undeploy
    #   <p>An array of custom recipe names to be run following a <code>undeploy</code> event.</p>
    #   @return [Array<String>]
    # @!attribute shutdown
    #   <p>An array of custom recipe names to be run following a <code>shutdown</code> event.</p>
    #   @return [Array<String>]
    class Recipes < Struct.new(
      :setup,
      :configure,
      :deploy,
      :undeploy,
      :shutdown,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ecs_cluster_arn
    #   <p>The cluster's ARN.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    class RegisterEcsClusterRequest < Struct.new(
      :ecs_cluster_arn,
      :stack_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>RegisterEcsCluster</code> request.</p>
    # @!attribute ecs_cluster_arn
    #   <p>The cluster's ARN.</p>
    #   @return [String]
    class RegisterEcsClusterResult < Struct.new(
      :ecs_cluster_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute elastic_ip
    #   <p>The Elastic IP address.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    class RegisterElasticIpRequest < Struct.new(
      :elastic_ip,
      :stack_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>RegisterElasticIp</code> request.</p>
    # @!attribute elastic_ip
    #   <p>The Elastic IP address.</p>
    #   @return [String]
    class RegisterElasticIpResult < Struct.new(
      :elastic_ip,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The ID of the stack that the instance is to be registered with.</p>
    #   @return [String]
    # @!attribute hostname
    #   <p>The instance's host name. The following are character limits for instance host names.</p>
    #            <ul>
    #               <li>
    #                  <p>Linux-based instances: 63 characters</p>
    #               </li>
    #               <li>
    #                  <p>Windows-based instances: 15 characters</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute public_ip
    #   <p>The instance's public IP address.</p>
    #   @return [String]
    # @!attribute private_ip
    #   <p>The instance's private IP address.</p>
    #   @return [String]
    # @!attribute rsa_public_key
    #   <p>The instances public RSA key. This key is used to encrypt communication between the instance and the service.</p>
    #   @return [String]
    # @!attribute rsa_public_key_fingerprint
    #   <p>The instances public RSA key fingerprint.</p>
    #   @return [String]
    # @!attribute instance_identity
    #   <p>An InstanceIdentity object that contains the instance's identity.</p>
    #   @return [Types::InstanceIdentity]
    class RegisterInstanceRequest < Struct.new(
      :stack_id,
      :hostname,
      :public_ip,
      :private_ip,
      :rsa_public_key,
      :rsa_public_key_fingerprint,
      :instance_identity,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>RegisterInstanceResult</code> request.</p>
    # @!attribute instance_id
    #   <p>The registered instance's OpsWorks Stacks ID.</p>
    #   @return [String]
    class RegisterInstanceResult < Struct.new(
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    # @!attribute rds_db_instance_arn
    #   <p>The Amazon RDS instance's ARN.</p>
    #   @return [String]
    # @!attribute db_user
    #   <p>The database's master user name.</p>
    #   @return [String]
    # @!attribute db_password
    #   <p>The database password.</p>
    #   @return [String]
    class RegisterRdsDbInstanceRequest < Struct.new(
      :stack_id,
      :rds_db_instance_arn,
      :db_user,
      :db_password,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ec2_volume_id
    #   <p>The Amazon EBS volume ID.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    class RegisterVolumeRequest < Struct.new(
      :ec2_volume_id,
      :stack_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a <code>RegisterVolume</code> request.</p>
    # @!attribute volume_id
    #   <p>The volume ID.</p>
    #   @return [String]
    class RegisterVolumeResult < Struct.new(
      :volume_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A registered instance's reported operating system.</p>
    # @!attribute family
    #   <p>The operating system family.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The operating system name.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The operating system version.</p>
    #   @return [String]
    class ReportedOs < Struct.new(
      :family,
      :name,
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that a resource was not found.</p>
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a user's SSH information.</p>
    # @!attribute iam_user_arn
    #   <p>The user's IAM ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The user's name.</p>
    #   @return [String]
    # @!attribute ssh_username
    #   <p>The user's SSH user name.</p>
    #   @return [String]
    # @!attribute ssh_public_key
    #   <p>The user's SSH public key.</p>
    #   @return [String]
    class SelfUserProfile < Struct.new(
      :iam_user_arn,
      :name,
      :ssh_username,
      :ssh_public_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an OpsWorks Stacks service error.</p>
    # @!attribute service_error_id
    #   <p>The error ID.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The error type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message that describes the error.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>When the error occurred.</p>
    #   @return [String]
    class ServiceError < Struct.new(
      :service_error_id,
      :stack_id,
      :instance_id,
      :type,
      :message,
      :created_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute layer_id
    #   <p>The layer ID.</p>
    #   @return [String]
    # @!attribute enable
    #   <p>Enables load-based auto scaling for the layer.</p>
    #   @return [Boolean]
    # @!attribute up_scaling
    #   <p>An <code>AutoScalingThresholds</code> object with the upscaling threshold configuration. If
    #             the load exceeds these thresholds for a specified amount of time, OpsWorks Stacks starts a specified
    #         number of instances.</p>
    #   @return [Types::AutoScalingThresholds]
    # @!attribute down_scaling
    #   <p>An <code>AutoScalingThresholds</code> object with the downscaling threshold configuration. If
    #             the load falls below these thresholds for a specified amount of time, OpsWorks Stacks stops a specified
    #         number of instances.</p>
    #   @return [Types::AutoScalingThresholds]
    class SetLoadBasedAutoScalingRequest < Struct.new(
      :layer_id,
      :enable,
      :up_scaling,
      :down_scaling,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    # @!attribute iam_user_arn
    #   <p>The user's IAM ARN. This can also be a federated user's ARN.</p>
    #   @return [String]
    # @!attribute allow_ssh
    #   <p>The user is allowed to use SSH to communicate with the instance.</p>
    #   @return [Boolean]
    # @!attribute allow_sudo
    #   <p>The user is allowed to use <b>sudo</b> to elevate privileges.</p>
    #   @return [Boolean]
    # @!attribute level
    #   <p>The user's permission level, which must be set to one of the following strings. You cannot set your own permissions level.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>deny</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>show</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deploy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>manage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>iam_only</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about the permissions associated with these levels, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
    #   @return [String]
    class SetPermissionRequest < Struct.new(
      :stack_id,
      :iam_user_arn,
      :allow_ssh,
      :allow_sudo,
      :level,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    # @!attribute auto_scaling_schedule
    #   <p>An <code>AutoScalingSchedule</code> with the instance schedule.</p>
    #   @return [Types::WeeklyAutoScalingSchedule]
    class SetTimeBasedAutoScalingRequest < Struct.new(
      :instance_id,
      :auto_scaling_schedule,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Shutdown event configuration.</p>
    # @!attribute execution_timeout
    #   <p>The time, in seconds, that OpsWorks Stacks waits after triggering a Shutdown event before 
    #             shutting down an instance.</p>
    #   @return [Integer]
    # @!attribute delay_until_elb_connections_drained
    #   <p>Whether to enable Elastic Load Balancing connection draining. For more information, see <a href="https://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html#conn-drain">Connection Draining</a>
    #            </p>
    #   @return [Boolean]
    class ShutdownEventConfiguration < Struct.new(
      :execution_timeout,
      :delay_until_elb_connections_drained,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the information required to retrieve an app or cookbook from a repository. For more
    #       information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Creating Apps</a> or <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Custom Recipes and
    #         Cookbooks</a>.</p>
    # @!attribute type
    #   <p>The repository type.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The source URL. The following is an example of an Amazon S3 source 
    #             URL:  <code>https://s3.amazonaws.com/opsworks-demo-bucket/opsworks_cookbook_demo.tar.gz</code>.</p>
    #   @return [String]
    # @!attribute username
    #   <p>This parameter depends on the repository type.</p>
    #            <ul>
    #               <li>
    #                  <p>For Amazon S3 bundles, set <code>Username</code> to the appropriate IAM access key
    #           ID.</p>
    #               </li>
    #               <li>
    #                  <p>For HTTP bundles, Git repositories, and Subversion repositories, set <code>Username</code>
    #           to the user name.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute password
    #   <p>When included in a request, the parameter depends on the repository type.</p>
    #            <ul>
    #               <li>
    #                  <p>For Amazon S3 bundles, set <code>Password</code> to the appropriate IAM secret access
    #           key.</p>
    #               </li>
    #               <li>
    #                  <p>For HTTP bundles and Subversion repositories, set <code>Password</code> to the
    #           password.</p>
    #               </li>
    #            </ul>
    #            <p>For more information on how to safely handle IAM credentials, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html">https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html</a>.</p>
    #            <p>In responses, OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>
    #   @return [String]
    # @!attribute ssh_key
    #   <p>In requests, the repository's SSH key.</p>
    #            <p>In responses, OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The application's version. OpsWorks Stacks enables you to easily deploy new versions of an application. 
    #             One of the simplest approaches is to have branches or revisions in your repository that represent different 
    #             versions that can potentially be deployed.</p>
    #   @return [String]
    class Source < Struct.new(
      :type,
      :url,
      :username,
      :password,
      :ssh_key,
      :revision,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an app's SSL configuration.</p>
    # @!attribute certificate
    #   <p>The contents of the certificate's domain.crt file.</p>
    #   @return [String]
    # @!attribute private_key
    #   <p>The private key; the contents of the certificate's domain.kex file.</p>
    #   @return [String]
    # @!attribute chain
    #   <p>Optional. Can be used to specify an intermediate certificate authority key or client authentication.</p>
    #   @return [String]
    class SslConfiguration < Struct.new(
      :certificate,
      :private_key,
      :chain,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a stack.</p>
    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The stack name. Stack names can be a maximum of 64 characters.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The stack's ARN.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The stack Amazon Web Services Region, such as <code>ap-northeast-2</code>. For more information about 
    #             Amazon Web Services Regions, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC ID; applicable only if the stack is running in a VPC.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The stack's attributes.</p>
    #   @return [Hash<String, String>]
    # @!attribute service_role_arn
    #   <p>The stack Identity and Access Management (IAM) role.</p>
    #   @return [String]
    # @!attribute default_instance_profile_arn
    #   <p>The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances.
    #             For more information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #   @return [String]
    # @!attribute default_os
    #   <p>The stack's default operating system.</p>
    #   @return [String]
    # @!attribute hostname_theme
    #   <p>The stack host name theme, with spaces replaced by underscores.</p>
    #   @return [String]
    # @!attribute default_availability_zone
    #   <p>The stack's default Availability Zone. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
    #   @return [String]
    # @!attribute default_subnet_id
    #   <p>The default subnet ID; applicable only if the stack is running in a VPC.</p>
    #   @return [String]
    # @!attribute custom_json
    #   <p>A JSON object that contains user-defined attributes to be added to the stack configuration and deployment attributes. 
    #             You can use custom JSON to override the corresponding default stack configuration attribute values or to pass data to recipes. 
    #             The string should be in the following format:</p>
    #            <p>
    #               <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code>
    #            </p>
    #            <p>For more information on custom JSON, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to
    #           Modify the Stack Configuration Attributes</a>.</p>
    #   @return [String]
    # @!attribute configuration_manager
    #   <p>The configuration manager.</p>
    #   @return [Types::StackConfigurationManager]
    # @!attribute chef_configuration
    #   <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the
    #         Berkshelf version. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
    #   @return [Types::ChefConfiguration]
    # @!attribute use_custom_cookbooks
    #   <p>Whether the stack uses custom cookbooks.</p>
    #   @return [Boolean]
    # @!attribute use_opsworks_security_groups
    #   <p>Whether the stack automatically associates the OpsWorks Stacks built-in security groups with the stack's layers.</p>
    #   @return [Boolean]
    # @!attribute custom_cookbooks_source
    #   <p>Contains the information required to retrieve an app or cookbook from a repository. For more information, 
    #               see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Adding Apps</a> or 
    #               <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Cookbooks and Recipes</a>.</p>
    #   @return [Types::Source]
    # @!attribute default_ssh_key_name
    #   <p>A default Amazon EC2 key pair for the stack's instances. You can override this value when you create or 
    #             update an instance.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date when the stack was created.</p>
    #   @return [String]
    # @!attribute default_root_device_type
    #   <p>The default root device type. This value is used by default for all instances in the stack,
    #         but you can override it when you create an instance. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.
    #         </p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The agent version. This parameter is set to <code>LATEST</code> for auto-update.
    #         or a version number for a fixed agent version.</p>
    #   @return [String]
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
      :agent_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration manager.</p>
    # @!attribute name
    #   <p>The name. This parameter must be set to <code>Chef</code>.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The Chef version. This parameter must be set to 12, 11.10, or 11.4 for Linux stacks, and to 12.2 for Windows stacks. 
    #             The default value for Linux stacks is 12.</p>
    #   @return [String]
    class StackConfigurationManager < Struct.new(
      :name,
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summarizes the number of layers, instances, and apps in a stack.</p>
    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The stack name.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The stack's ARN.</p>
    #   @return [String]
    # @!attribute layers_count
    #   <p>The number of layers.</p>
    #   @return [Integer]
    # @!attribute apps_count
    #   <p>The number of apps.</p>
    #   @return [Integer]
    # @!attribute instances_count
    #   <p>An <code>InstancesCount</code> object with the number of instances in each status.</p>
    #   @return [Types::InstancesCount]
    class StackSummary < Struct.new(
      :stack_id,
      :name,
      :arn,
      :layers_count,
      :apps_count,
      :instances_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    class StartInstanceRequest < Struct.new(
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    class StartStackRequest < Struct.new(
      :stack_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    # @!attribute force
    #   <p>Specifies whether to force an instance to stop. If the instance's root device type is <code>ebs</code>, or EBS-backed, 
    #               adding the <code>Force</code> parameter to the <code>StopInstances</code> API call disassociates the OpsWorks Stacks 
    #               instance from EC2, and forces deletion of <i>only</i> the OpsWorks Stacks instance. 
    #               You must also delete the formerly-associated instance in EC2 after troubleshooting and replacing the OpsWorks Stacks 
    #               instance with a new one.</p>
    #   @return [Boolean]
    class StopInstanceRequest < Struct.new(
      :instance_id,
      :force,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    class StopStackRequest < Struct.new(
      :stack_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The stack or layer's Amazon Resource Number (ARN).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to a stack or layer.</p>
    #            <ul>
    #               <li>
    #                  <p>The key cannot be empty.</p>
    #               </li>
    #               <li>
    #                  <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, 
    #                 or the following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, 
    #                 or the following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Leading and trailing white spaces are trimmed from both the key and value.</p>
    #               </li>
    #               <li>
    #                  <p>A maximum of 40 tags is allowed for any resource.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the data needed by RDP clients such as the Microsoft Remote Desktop Connection to log in to the instance.</p>
    # @!attribute username
    #   <p>The user name.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password.</p>
    #   @return [String]
    # @!attribute valid_for_in_minutes
    #   <p>The length of time (in minutes) that the grant is valid. When the grant expires, at the end of this period, 
    #             the user will no longer be able to use the credentials to log in. If they are logged in at the time, they are 
    #             automatically logged out.</p>
    #   @return [Integer]
    # @!attribute instance_id
    #   <p>The instance's OpsWorks Stacks ID.</p>
    #   @return [String]
    class TemporaryCredential < Struct.new(
      :username,
      :password,
      :valid_for_in_minutes,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an instance's time-based auto scaling configuration.</p>
    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    # @!attribute auto_scaling_schedule
    #   <p>A <code>WeeklyAutoScalingSchedule</code> object with the instance schedule.</p>
    #   @return [Types::WeeklyAutoScalingSchedule]
    class TimeBasedAutoScalingConfiguration < Struct.new(
      :instance_id,
      :auto_scaling_schedule,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    class UnassignInstanceRequest < Struct.new(
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume_id
    #   <p>The volume ID.</p>
    #   @return [String]
    class UnassignVolumeRequest < Struct.new(
      :volume_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The stack or layer's Amazon Resource Number (ARN).</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of the keys of tags to be removed from a stack or layer.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The app name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the app.</p>
    #   @return [String]
    # @!attribute data_sources
    #   <p>The app's data sources.</p>
    #   @return [Array<Types::DataSource>]
    # @!attribute type
    #   <p>The app type.</p>
    #   @return [String]
    # @!attribute app_source
    #   <p>A <code>Source</code> object that specifies the app repository.</p>
    #   @return [Types::Source]
    # @!attribute domains
    #   <p>The app's virtual host settings, with multiple domains separated by commas. For example:
    #           <code>'www.example.com, example.com'</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute enable_ssl
    #   <p>Whether SSL is enabled for the app.</p>
    #   @return [Boolean]
    # @!attribute ssl_configuration
    #   <p>An <code>SslConfiguration</code> object with the SSL configuration.</p>
    #   @return [Types::SslConfiguration]
    # @!attribute attributes
    #   <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
    #   @return [Hash<String, String>]
    # @!attribute environment
    #   <p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be
    #         associated with the app. After you deploy the app, these variables are defined on the
    #         associated app server instances.For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment"> Environment Variables</a>.</p>
    #            <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - 
    #             which includes the variables' names, values, and protected flag values - cannot exceed 20 KB. This limit should accommodate most 
    #             if not all use cases. Exceeding it will cause an exception with the message, "Environment: is too large (maximum is 20 KB)."</p>
    #            <note>
    #               <p>If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p>
    #            </note>
    #   @return [Array<Types::EnvironmentVariable>]
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
      :environment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute elastic_ip
    #   <p>The IP address for which you want to update the name.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new name, which can be a maximum of 32 characters.</p>
    #   @return [String]
    class UpdateElasticIpRequest < Struct.new(
      :elastic_ip,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    # @!attribute layer_ids
    #   <p>The instance's layer IDs.</p>
    #   @return [Array<String>]
    # @!attribute instance_type
    #   <p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types,
    #         open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>.
    #         The <b>Size</b> list contains the currently supported types. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance
    #           Families and Types</a>. The parameter values that you use to specify the various types are
    #         in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>
    #   @return [String]
    # @!attribute auto_scaling_type
    #   <p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>
    #   @return [String]
    # @!attribute hostname
    #   <p>The instance host name. The following are character limits for instance host names.</p>
    #            <ul>
    #               <li>
    #                  <p>Linux-based instances: 63 characters</p>
    #               </li>
    #               <li>
    #                  <p>Windows-based instances: 15 characters</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute os
    #   <p>The instance's operating system, which must be set to one of the following. You cannot update an instance that is using 
    #             a custom AMI.</p>
    #            <ul>
    #               <li>
    #                  <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2</code>, <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux
    #           2015.03</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A supported Ubuntu operating system, such as <code>Ubuntu 18.04 LTS</code>, <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CentOS Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Red Hat Enterprise Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, 
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Not all operating systems are supported with all versions of Chef. For more information about supported operating systems,
    #             see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">OpsWorks Stacks Operating Systems</a>.</p>
    #            <p>The default option is the current Amazon Linux version. If you set this parameter to
    #           <code>Custom</code>, you must use the AmiId parameter to
    #             specify the custom AMI that you want to use. For more information about how to use custom AMIs with OpsWorks, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using
    #           Custom AMIs</a>.</p>
    #            <note>
    #               <p>You can specify a different Linux operating system for the updated stack, but you cannot change from Linux to Windows or Windows to Linux.</p>
    #            </note>
    #   @return [String]
    # @!attribute ami_id
    #   <p>The ID of the AMI that was used to create the instance. The value of this parameter must be the same AMI ID that the 
    #             instance is already using. 
    #             You cannot apply a new AMI to an instance by running UpdateInstance. UpdateInstance does not work on instances that are using 
    #             custom AMIs.
    #         </p>
    #   @return [String]
    # @!attribute ssh_key_name
    #   <p>The instance's Amazon EC2 key name.</p>
    #   @return [String]
    # @!attribute architecture
    #   <p>The instance architecture. Instance types do not necessarily support both architectures. For
    #         a list of the architectures that are supported by the different instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance
    #           Families and Types</a>.</p>
    #   @return [String]
    # @!attribute install_updates_on_boot
    #   <p>Whether to install operating system and package updates when the instance boots. The default
    #         value is <code>true</code>. To control when updates are installed, set this value to
    #           <code>false</code>. You must then update your instances manually by using
    #           <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or
    #         by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
    #         instances. </p>
    #            <note>
    #               <p>We strongly recommend using the default value of <code>true</code>, to ensure that your
    #           instances have the latest security updates.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute ebs_optimized
    #   <p>This property cannot be updated.</p>
    #   @return [Boolean]
    # @!attribute agent_version
    #   <p>The default OpsWorks Stacks agent version. You have the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INHERIT</code> - Use the stack's default agent version setting.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>version_number</i> - Use the specified agent version.
    #           This value overrides the stack's default setting.
    #           To update the agent version, you must edit the instance configuration and specify a
    #           new version.
    #                OpsWorks Stacks installs that version on the instance.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting is <code>INHERIT</code>. To specify an agent version,
    #         you must use the complete version number, not the abbreviated number shown on the console.
    #         For a list of available agent version numbers, call <a>DescribeAgentVersions</a>.</p>
    #            <p>AgentVersion cannot be set to Chef 12.2.</p>
    #   @return [String]
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
      :agent_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute layer_id
    #   <p>The layer ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The layer name, which is used by the console. Layer names can be a maximum of 32 characters.</p>
    #   @return [String]
    # @!attribute shortname
    #   <p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by 
    #             OpsWorks Stacks and by Chef. The short name is also used as the name for the directory where your app files 
    #             are installed. It can have a maximum of 32 characters and must be in the following format: /\A[a-z0-9\-\_\.]+\Z/.</p>
    #            <p>Built-in layer short names are defined by OpsWorks Stacks. For more information, see the 
    #             <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html">Layer reference</a> in the OpsWorks User Guide.
    #         </p>
    #   @return [String]
    # @!attribute attributes
    #   <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
    #   @return [Hash<String, String>]
    # @!attribute cloud_watch_logs_configuration
    #   <p>Specifies CloudWatch Logs configuration options for the layer. For more information, 
    #             see <a>CloudWatchLogsLogStream</a>.</p>
    #   @return [Types::CloudWatchLogsConfiguration]
    # @!attribute custom_instance_profile_arn
    #   <p>The ARN of an IAM profile to be used for all of the layer's EC2 instances. For more
    #             information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #   @return [String]
    # @!attribute custom_json
    #   <p>A JSON-formatted string containing custom stack configuration and deployment attributes
    #         to be installed on the layer's instances. For more information, see
    #         <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html">
    #           Using Custom JSON</a>.
    #       </p>
    #   @return [String]
    # @!attribute custom_security_group_ids
    #   <p>An array containing the layer's custom security group IDs.</p>
    #   @return [Array<String>]
    # @!attribute packages
    #   <p>An array of <code>Package</code> objects that describe the layer's packages.</p>
    #   @return [Array<String>]
    # @!attribute volume_configurations
    #   <p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>
    #   @return [Array<Types::VolumeConfiguration>]
    # @!attribute enable_auto_healing
    #   <p>Whether to disable auto healing for the layer.</p>
    #   @return [Boolean]
    # @!attribute auto_assign_elastic_ips
    #   <p>Whether to automatically assign an <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP
    #           address</a> to the layer's instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit
    #           a Layer</a>.</p>
    #   @return [Boolean]
    # @!attribute auto_assign_public_ips
    #   <p>For stacks that are running in a VPC, whether to automatically assign a public IP address to
    #         the layer's instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit
    #           a Layer</a>.</p>
    #   @return [Boolean]
    # @!attribute custom_recipes
    #   <p>A <code>LayerCustomRecipes</code> object that specifies the layer's custom recipes.</p>
    #   @return [Types::Recipes]
    # @!attribute install_updates_on_boot
    #   <p>Whether to install operating system and package updates when the instance boots. The default
    #         value is <code>true</code>. To control when updates are installed, set this value to
    #           <code>false</code>. You must then update your instances manually by using
    #           <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or
    #         manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
    #         instances. </p>
    #            <note>
    #               <p>We strongly recommend using the default value of <code>true</code>, to ensure that your
    #           instances have the latest security updates.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute use_ebs_optimized_instances
    #   <p>Whether to use Amazon EBS-optimized instances.</p>
    #   @return [Boolean]
    # @!attribute lifecycle_event_configuration
    #   <p></p>
    #   @return [Types::LifecycleEventConfiguration]
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
      :lifecycle_event_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ssh_public_key
    #   <p>The user's SSH public key.</p>
    #   @return [String]
    class UpdateMyUserProfileRequest < Struct.new(
      :ssh_public_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rds_db_instance_arn
    #   <p>The Amazon RDS instance's ARN.</p>
    #   @return [String]
    # @!attribute db_user
    #   <p>The master user name.</p>
    #   @return [String]
    # @!attribute db_password
    #   <p>The database password.</p>
    #   @return [String]
    class UpdateRdsDbInstanceRequest < Struct.new(
      :rds_db_instance_arn,
      :db_user,
      :db_password,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_id
    #   <p>The stack ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The stack's new name. Stack names can be a maximum of 64 characters.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>One or more user-defined key-value pairs to be added to the stack attributes.</p>
    #   @return [Hash<String, String>]
    # @!attribute service_role_arn
    #   <p>Do not use this parameter. You cannot update a stack's service role.</p>
    #   @return [String]
    # @!attribute default_instance_profile_arn
    #   <p>The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances.
    #             For more information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #   @return [String]
    # @!attribute default_os
    #   <p>The stack's operating system, which must be set to one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2</code>, <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, 
    #                 <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A supported Ubuntu operating system, such as <code>Ubuntu 18.04 LTS</code>, <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CentOS Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Red Hat Enterprise Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, 
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when
    #                you create instances. For more information about how to use custom AMIs with OpsWorks, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using
    #             Custom AMIs</a>.</p>
    #               </li>
    #            </ul>
    #            <p>The default option is the stack's current operating system.
    #             Not all operating systems are supported with all versions of Chef. For more information about supported operating systems,
    #             see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">OpsWorks Stacks Operating Systems</a>.</p>
    #   @return [String]
    # @!attribute hostname_theme
    #   <p>The stack's new host name theme, with spaces replaced by underscores.
    #         The theme is used to generate host names for the stack's instances.
    #         By default, <code>HostnameTheme</code> is set to <code>Layer_Dependent</code>, which creates host names by appending integers to 
    #             the
    #         layer's short name. The other themes are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Baked_Goods</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Clouds</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Europe_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fruits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Greek_Deities_and_Titans</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Legendary_creatures_from_Japan</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Planets_and_Moons</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Roman_Deities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Scottish_Islands</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>US_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Wild_Cats</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a
    #         host name based on the current theme.</p>
    #   @return [String]
    # @!attribute default_availability_zone
    #   <p>The stack's default Availability Zone, which must be in the
    #         stack's region. For more
    #         information, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and
    #           Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must
    #         be in the same zone. For more information, see <a>CreateStack</a>. </p>
    #   @return [String]
    # @!attribute default_subnet_id
    #   <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the
    #           <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify
    #         otherwise when you create the instance. If you also specify a value for
    #           <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on
    #         default values and when this parameter is required, see the <code>VpcId</code> parameter
    #         description. </p>
    #   @return [String]
    # @!attribute custom_json
    #   <p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration 
    #             JSON values or to pass data to recipes. The string should be in the following format:</p>
    #            <p>
    #               <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code>
    #            </p>
    #            <p>For more information about custom JSON, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to
    #           Modify the Stack Configuration Attributes</a>.</p>
    #   @return [String]
    # @!attribute configuration_manager
    #   <p>The configuration manager. When you update a stack, we recommend that you use the configuration manager to specify the 
    #             Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>
    #   @return [Types::StackConfigurationManager]
    # @!attribute chef_configuration
    #   <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the
    #         Berkshelf version on Chef 11.10 stacks. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
    #   @return [Types::ChefConfiguration]
    # @!attribute use_custom_cookbooks
    #   <p>Whether the stack uses custom cookbooks.</p>
    #   @return [Boolean]
    # @!attribute custom_cookbooks_source
    #   <p>Contains the information required to retrieve an app or cookbook from a repository. For more information, 
    #               see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Adding Apps</a> or 
    #               <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Cookbooks and Recipes</a>.</p>
    #   @return [Types::Source]
    # @!attribute default_ssh_key_name
    #   <p>A default Amazon EC2 key-pair name. The default value is
    #         <code>none</code>. If you specify a key-pair name,
    #             OpsWorks Stacks installs the public key on the instance and you can use the private key with an SSH
    #         client to log in to the instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to
    #           Communicate with an Instance</a> and <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH
    #           Access</a>. You can override this setting by specifying a different key pair, or no key
    #         pair, when you <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">
    #           create an instance</a>. </p>
    #   @return [String]
    # @!attribute default_root_device_type
    #   <p>The default root device type. This value is used by default for all instances in the stack,
    #         but you can override it when you create an instance. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
    #   @return [String]
    # @!attribute use_opsworks_security_groups
    #   <p>Whether to associate the OpsWorks Stacks built-in security groups with the stack's layers.</p>
    #            <p>OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are
    #         associated with layers by default. <code>UseOpsworksSecurityGroups</code> allows you to
    #         provide your own custom security groups
    #         instead of using the built-in groups. <code>UseOpsworksSecurityGroups</code> has
    #         the following settings: </p>
    #            <ul>
    #               <li>
    #                  <p>True - OpsWorks Stacks automatically associates the appropriate built-in security group with each 
    #                 layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot 
    #                 delete the built-in security group.</p>
    #               </li>
    #               <li>
    #                  <p>False - OpsWorks Stacks does not associate built-in security groups with layers. You must create 
    #                 appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still 
    #                 manually associate a built-in security group with a layer on. Custom security groups are required only for those layers 
    #                 that need custom settings.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New
    #           Stack</a>.</p>
    #   @return [Boolean]
    # @!attribute agent_version
    #   <p>The default OpsWorks Stacks agent version. You have the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>Auto-update - Set this parameter to <code>LATEST</code>. OpsWorks Stacks
    #           automatically installs new agent versions on the stack's instances as soon as
    #           they are available.</p>
    #               </li>
    #               <li>
    #                  <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must 
    #                edit the stack configuration and specify a new version. OpsWorks Stacks installs that version 
    #                on the stack's instances.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting is <code>LATEST</code>. To specify an agent version,
    #         you must use the complete version number, not the abbreviated number shown on the console.
    #         For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. 
    #             AgentVersion cannot be set to Chef 12.2.</p>
    #            <note>
    #               <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default 
    #             setting.</p>
    #            </note>
    #   @return [String]
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
      :agent_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute iam_user_arn
    #   <p>The user IAM ARN. This can also be a federated user's ARN.</p>
    #   @return [String]
    # @!attribute ssh_username
    #   <p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If
    #             the specified name includes other punctuation marks, OpsWorks Stacks removes them. For example,
    #           <code>my.name</code> will be changed to <code>myname</code>. If you do not specify an SSH
    #             user name, OpsWorks Stacks generates one from the IAM user name. </p>
    #   @return [String]
    # @!attribute ssh_public_key
    #   <p>The user's new SSH public key.</p>
    #   @return [String]
    # @!attribute allow_self_management
    #   <p>Whether users can specify their own SSH public key through the My Settings page. For more
    #         information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html">Managing User
    #           Permissions</a>.</p>
    #   @return [Boolean]
    class UpdateUserProfileRequest < Struct.new(
      :iam_user_arn,
      :ssh_username,
      :ssh_public_key,
      :allow_self_management,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume_id
    #   <p>The volume ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new name. Volume names can be a maximum of 128 characters.</p>
    #   @return [String]
    # @!attribute mount_point
    #   <p>The new mount point.</p>
    #   @return [String]
    class UpdateVolumeRequest < Struct.new(
      :volume_id,
      :name,
      :mount_point,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a user's SSH information.</p>
    # @!attribute iam_user_arn
    #   <p>The user's IAM ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The user's name.</p>
    #   @return [String]
    # @!attribute ssh_username
    #   <p>The user's SSH user name.</p>
    #   @return [String]
    # @!attribute ssh_public_key
    #   <p>The user's SSH public key.</p>
    #   @return [String]
    # @!attribute allow_self_management
    #   <p>Whether users can specify their own SSH public key through the My Settings page. For more
    #         information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html">Managing User
    #           Permissions</a>.</p>
    #   @return [Boolean]
    class UserProfile < Struct.new(
      :iam_user_arn,
      :name,
      :ssh_username,
      :ssh_public_key,
      :allow_self_management,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that a request was not valid.</p>
    # @!attribute message
    #   <p>The exception message.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an instance's Amazon EBS volume.</p>
    # @!attribute volume_id
    #   <p>The volume ID.</p>
    #   @return [String]
    # @!attribute ec2_volume_id
    #   <p>The Amazon EC2 volume ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The volume name. Volume names are a maximum of 128 characters.</p>
    #   @return [String]
    # @!attribute raid_array_id
    #   <p>The RAID array ID.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The value returned by <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeVolumes.html">DescribeVolumes</a>.</p>
    #   @return [String]
    # @!attribute size
    #   <p>The volume size.</p>
    #   @return [Integer]
    # @!attribute device
    #   <p>The device name.</p>
    #   @return [String]
    # @!attribute mount_point
    #   <p>The volume mount point. For example, "/mnt/disk1".</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region. For more information about Amazon Web Services Regions, see 
    #             <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The volume Availability Zone. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
    #   @return [String]
    # @!attribute volume_type
    #   <p>The volume type. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html">
    #             Amazon EBS Volume Types</a>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>standard</code> - Magnetic. Magnetic volumes must have a minimum size of 1 GiB and a maximum size of 1024 GiB.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>io1</code> - Provisioned IOPS (SSD). PIOPS volumes must have a minimum size of 4 GiB and a maximum size of 16384 GiB.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>gp2</code> - General Purpose (SSD). General purpose volumes must have a minimum size of 1 GiB and a maximum size 
    #                 of 16384 GiB.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>st1</code> - Throughput Optimized hard disk drive (HDD). Throughput optimized HDD volumes must have a 
    #                     minimum size of 125 GiB and a maximum size of 16384 GiB.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sc1</code> - Cold HDD. Cold HDD volumes must have a minimum size of 125 GiB and a maximum size of 16384 GiB.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute iops
    #   <p>For PIOPS volumes, the IOPS per disk.</p>
    #   @return [Integer]
    # @!attribute encrypted
    #   <p>Specifies whether an Amazon EBS volume is encrypted. For more information, 
    #               see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon EBS Encryption</a>.</p>
    #   @return [Boolean]
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
      :encrypted,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon EBS volume configuration.</p>
    # @!attribute mount_point
    #   <p>The volume mount point. For example "/dev/sdh".</p>
    #   @return [String]
    # @!attribute raid_level
    #   <p>The volume <a href="http://en.wikipedia.org/wiki/Standard_RAID_levels">RAID level</a>.</p>
    #   @return [Integer]
    # @!attribute number_of_disks
    #   <p>The number of disks in the volume.</p>
    #   @return [Integer]
    # @!attribute size
    #   <p>The volume size.</p>
    #   @return [Integer]
    # @!attribute volume_type
    #   <p>The volume type. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html">
    #             Amazon EBS Volume Types</a>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>standard</code> - Magnetic. Magnetic volumes must have a minimum size of 1 GiB and a maximum size of 1024 GiB.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>io1</code> - Provisioned IOPS (SSD). PIOPS volumes must have a minimum size of 4 GiB and a maximum size of 16384 GiB.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>gp2</code> - General Purpose (SSD). General purpose volumes must have a minimum size of 1 GiB and a maximum size 
    #                 of 16384 GiB.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>st1</code> - Throughput Optimized hard disk drive (HDD). Throughput optimized HDD volumes must have a 
    #                     minimum size of 125 GiB and a maximum size of 16384 GiB.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sc1</code> - Cold HDD. Cold HDD volumes must have a minimum size of 125 GiB and a maximum size of 16384 GiB.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute iops
    #   <p>For PIOPS volumes, the IOPS per disk.</p>
    #   @return [Integer]
    # @!attribute encrypted
    #   <p>Specifies whether an Amazon EBS volume is encrypted. For more information, 
    #               see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon EBS Encryption</a>.</p>
    #   @return [Boolean]
    class VolumeConfiguration < Struct.new(
      :mount_point,
      :raid_level,
      :number_of_disks,
      :size,
      :volume_type,
      :iops,
      :encrypted,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a time-based instance's auto scaling schedule. The schedule consists of a set of key-value pairs.</p>
    #          <ul>
    #             <li>
    #                <p>The key is the time period (a UTC hour) and must be an integer from 0 - 23.</p>
    #             </li>
    #             <li>
    #                <p>The value indicates whether the instance should be online or offline for the specified period, and must be 
    #              set to "on" or "off"</p>
    #             </li>
    #          </ul>
    #          <p>The default setting for all time periods is off, so you use the following parameters primarily to specify the online periods. You don't have to explicitly specify offline periods unless you want to change an online period to an offline period.</p>
    #          <p>The following example specifies that the instance should be online for four hours, 
    #           from UTC 1200 - 1600. It will be off for the remainder of the day.</p>
    #          <p>
    #             <code> { "12":"on", "13":"on", "14":"on", "15":"on" } </code>
    #          </p>
    # @!attribute monday
    #   <p>The schedule for Monday.</p>
    #   @return [Hash<String, String>]
    # @!attribute tuesday
    #   <p>The schedule for Tuesday.</p>
    #   @return [Hash<String, String>]
    # @!attribute wednesday
    #   <p>The schedule for Wednesday.</p>
    #   @return [Hash<String, String>]
    # @!attribute thursday
    #   <p>The schedule for Thursday.</p>
    #   @return [Hash<String, String>]
    # @!attribute friday
    #   <p>The schedule for Friday.</p>
    #   @return [Hash<String, String>]
    # @!attribute saturday
    #   <p>The schedule for Saturday.</p>
    #   @return [Hash<String, String>]
    # @!attribute sunday
    #   <p>The schedule for Sunday.</p>
    #   @return [Hash<String, String>]
    class WeeklyAutoScalingSchedule < Struct.new(
      :monday,
      :tuesday,
      :wednesday,
      :thursday,
      :friday,
      :saturday,
      :sunday,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
