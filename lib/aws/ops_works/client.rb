# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class OpsWorks

    # Client class for AWS OpsWorks.
    class Client < Core::JSONClient

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method attach_elastic_load_balancer(options = {})
      # Calls the AttachElasticLoadBalancer API operation.
      # @param [Hash] options
      #   * `:elastic_load_balancer_name` - *required* - (String) The Elastic
      #     Load Balancing instance's name.
      #   * `:layer_id` - *required* - (String) The ID of the layer that the
      #     Elastic Load Balancing instance is to be attached to.
      # @return [Core::Response]

      # @!method clone_stack(options = {})
      # Calls the CloneStack API operation.
      # @param [Hash] options
      #   * `:source_stack_id` - *required* - (String) The source stack ID.
      #   * `:name` - (String) The cloned stack name.
      #   * `:region` - (String) The cloned stack AWS region, such as
      #     "us-east-1". For more information about AWS regions, see Regions
      #     and Endpoints.
      #   * `:attributes` - (Hash<String,String>) A list of stack attributes
      #     and values as key/value pairs to be added to the cloned stack.
      #   * `:service_role_arn` - *required* - (String) The stack AWS Identity
      #     and Access Management (IAM) role, which allows OpsWorks to work
      #     with AWS resources on your behalf. You must set this parameter to
      #     the Amazon Resource Name (ARN) for an existing IAM role. If you
      #     create a stack by using the OpsWorks console, it creates the role
      #     for you. You can obtain an existing stack's IAM ARN
      #     programmatically by calling DescribePermissions. For more
      #     information about IAM ARNs, see Using Identifiers. You must set
      #     this parameter to a valid service role ARN or the action will fail;
      #     there is no default value. You can specify the source stack's
      #     service role ARN, if you prefer, but you must do so explicitly.
      #   * `:default_instance_profile_arn` - (String) The ARN of an IAM
      #     profile that is the default profile for all of the stack's EC2
      #     instances. For more information about IAM ARNs, see Using
      #     Identifiers.
      #   * `:default_os` - (String) The cloned stack default operating system,
      #     which must be either "Amazon Linux" or "Ubuntu 12.04 LTS".
      #   * `:hostname_theme` - (String) The stack's host name theme, with
      #     spaces are replaced by underscores. The theme is used to generate
      #     hostnames for the stack's instances. By default, HostnameTheme is
      #     set to Layer_Dependent, which creates hostnames by appending
      #     integers to the layer's shortname. The other themes are:
      #     Baked_Goods Clouds European_Cities Fruits Greek_Deities
      #     Legendary_Creatures_from_Japan Planets_and_Moons Roman_Deities
      #     Scottish_Islands US_Cities Wild_Cats To obtain a generated
      #     hostname, call GetHostNameSuggestion, which returns a hostname
      #     based on the current theme.
      #   * `:default_availability_zone` - (String) The cloned stack's
      #     Availability Zone. For more information, see Regions and Endpoints.
      #   * `:custom_json` - (String) A string that contains user-defined,
      #     custom JSON. It is used to override the corresponding default stack
      #     configuration JSON values. The string should be in the following
      #     format and must escape characters such as '"'.: "{\"key1\":
      #     \"value1\", \"key2\": \"value2\",...}" For more information on
      #     custom JSON, see . Use Custom JSON to Modify the Stack
      #     Configuration JSON
      #   * `:use_custom_cookbooks` - (Boolean) Whether to use custom
      #     cookbooks.
      #   * `:custom_cookbooks_source` - (Hash)
      #     * `:type` - (String) The repository type. Valid values include:
      #       * `git`
      #       * `svn`
      #       * `archive`
      #       * `s3`
      #     * `:url` - (String) The source URL.
      #     * `:username` - (String) This parameter depends on the repository
      #       type. For Amazon S3 bundles, set Username to the appropriate AWS
      #       access key. For HTTP bundles, Git repositories, and Subversion
      #       repositories, set Username to the user name.
      #     * `:password` - (String) This parameter depends on the repository
      #       type. For Amazon S3 bundles, set Password to the appropriate AWS
      #       secret key. For HTTP bundles, Git repositories, and Subversion
      #       repositories, set Password to the password.
      #     * `:ssh_key` - (String) The repository's SSH key.
      #     * `:revision` - (String) The application's version. OpsWorks
      #       enables you to easily deploy new versions of an application. One
      #       of the simplest approaches is to have branches or revisions in
      #       your repository that represent different versions that can
      #       potentially be deployed.
      #   * `:default_ssh_key_name` - (String) A default SSH key for the stack
      #     instances. You can override this value when you create or update an
      #     instance.
      #   * `:clone_permissions` - (Boolean) Whether to clone the source
      #     stack's permissions.
      #   * `:clone_app_ids` - (Array<String>) A list of source stack app IDs
      #     to be included in the cloned stack.
      #   * `:default_root_device_type` - (String) The default root device
      #     type. This value is used by default for all instances in the cloned
      #     stack, but you can override it when you create an instance. For
      #     more information, see Storage for the Root Device. Valid values
      #     include:
      #     * `ebs`
      #     * `instance-store`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:stack_id` - (String)

      # @!method create_app(options = {})
      # Calls the CreateApp API operation.
      # @param [Hash] options
      #   * `:stack_id` - *required* - (String) The stack ID.
      #   * `:shortname` - (String) The app's short name.
      #   * `:name` - *required* - (String) The app name.
      #   * `:description` - (String) A description of the app.
      #   * `:type` - *required* - (String) The app type. Each supported type
      #     is associated with a particular layer. For example, PHP
      #     applications are associated with a PHP layer. OpsWorks deploys an
      #     application to those instances that are members of the
      #     corresponding layer. Valid values include:
      #     * `rails`
      #     * `php`
      #     * `nodejs`
      #     * `static`
      #     * `other`
      #   * `:app_source` - (Hash) A Source object that specifies the app
      #     repository.
      #     * `:type` - (String) The repository type. Valid values include:
      #       * `git`
      #       * `svn`
      #       * `archive`
      #       * `s3`
      #     * `:url` - (String) The source URL.
      #     * `:username` - (String) This parameter depends on the repository
      #       type. For Amazon S3 bundles, set Username to the appropriate AWS
      #       access key. For HTTP bundles, Git repositories, and Subversion
      #       repositories, set Username to the user name.
      #     * `:password` - (String) This parameter depends on the repository
      #       type. For Amazon S3 bundles, set Password to the appropriate AWS
      #       secret key. For HTTP bundles, Git repositories, and Subversion
      #       repositories, set Password to the password.
      #     * `:ssh_key` - (String) The repository's SSH key.
      #     * `:revision` - (String) The application's version. OpsWorks
      #       enables you to easily deploy new versions of an application. One
      #       of the simplest approaches is to have branches or revisions in
      #       your repository that represent different versions that can
      #       potentially be deployed.
      #   * `:domains` - (Array<String>) The app virtual host settings, with
      #     multiple domains separated by commas. For example:
      #     'www.example.com, example.com'
      #   * `:enable_ssl` - (Boolean) Whether to enable SSL for the app.
      #   * `:ssl_configuration` - (Hash) An SslConfiguration object with the
      #     SSL configuration.
      #     * `:certificate` - *required* - (String) The contents of the
      #       certificate's domain.crt file.
      #     * `:private_key` - *required* - (String) The private key; the
      #       contents of the certificate's domain.kex file.
      #     * `:chain` - (String) Optional. Can be used to specify an
      #       intermediate certificate authority key or client authentication.
      #   * `:attributes` - (Hash<String,String>) One or more user-defined
      #     key/value pairs to be added to the stack attributes bag.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:app_id` - (String)

      # @!method create_deployment(options = {})
      # Calls the CreateDeployment API operation.
      # @param [Hash] options
      #   * `:stack_id` - *required* - (String) The stack ID.
      #   * `:app_id` - (String) The app ID. This parameter is required for app
      #     deployments, but not for other deployment commands.
      #   * `:instance_ids` - (Array<String>) The instance IDs for the
      #     deployment targets.
      #   * `:command` - *required* - (Hash) A DeploymentCommand object that
      #     specifies the deployment command and any associated arguments.
      #     * `:name` - *required* - (String) Specifies the deployment
      #       operation. You can specify only one command. For stacks, the
      #       available commands are: execute_recipes: Execute the recipes that
      #       are specified by the Args parameter. install_dependencies:
      #       Installs the stack's dependencies. update_custom_cookbooks:
      #       Update the stack's custom cookbooks. update_dependencies: Update
      #       the stack's dependencies. For apps, the available commands are:
      #       deploy: Deploy the app. rollback Roll the app back to the
      #       previous version. When you update an app, OpsWorks stores the
      #       previous version, up to a maximum of five versions. You can use
      #       this command to roll an app back as many as four versions. start:
      #       Start the app's web or application server. stop: Stop the app's
      #       web or application server. restart: Restart the app's web or
      #       application server. undeploy: Undeploy the app. Valid values
      #       include:
      #       * `install_dependencies`
      #       * `update_dependencies`
      #       * `update_custom_cookbooks`
      #       * `execute_recipes`
      #       * `deploy`
      #       * `rollback`
      #       * `start`
      #       * `stop`
      #       * `restart`
      #       * `undeploy`
      #     * `:args` - (Hash<String,Array<String>>) An array of command
      #       arguments. This parameter is currently used only to specify the
      #       list of recipes to be executed by the ExecuteRecipes command.
      #   * `:comment` - (String) A user-defined comment.
      #   * `:custom_json` - (String) A string that contains user-defined,
      #     custom JSON. It is used to override the corresponding default stack
      #     configuration JSON values. The string should be in the following
      #     format and must escape characters such as '"'.: "{\"key1\":
      #     \"value1\", \"key2\": \"value2\",...}" For more information on
      #     custom JSON, see Use Custom JSON to Modify the Stack Configuration
      #     JSON.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:deployment_id` - (String)

      # @!method create_instance(options = {})
      # Calls the CreateInstance API operation.
      # @param [Hash] options
      #   * `:stack_id` - *required* - (String) The stack ID.
      #   * `:layer_ids` - *required* - (Array<String>) An array that contains
      #     the instance layer IDs.
      #   * `:instance_type` - *required* - (String) The instance type.
      #     OpsWorks supports all instance types except Cluster Compute,
      #     Cluster GPU, and High Memory Cluster. For more information, see
      #     Instance Families and Types. The parameter values that you use to
      #     specify the various types are in the API Name column of the
      #     Available Instance Types table.
      #   * `:auto_scaling_type` - (String) The instance auto scaling type,
      #     which has three possible values: AlwaysRunning: A 24/7 instance,
      #     which is not affected by auto scaling. TimeBasedAutoScaling: A
      #     time-based auto scaling instance, which is started and stopped
      #     based on a specified schedule. To specify the schedule, call
      #     SetTimeBasedAutoScaling. LoadBasedAutoScaling: A load-based auto
      #     scaling instance, which is started and stopped based on load
      #     metrics. To use load-based auto scaling, you must enable it for the
      #     instance layer and configure the thresholds by calling
      #     SetLoadBasedAutoScaling. Valid values include:
      #     * `load`
      #     * `timer`
      #   * `:hostname` - (String) The instance host name.
      #   * `:os` - (String) The instance's operating system, which must be
      #     either "Amazon Linux" or "Ubuntu 12.04 LTS".
      #   * `:ssh_key_name` - (String) The instance SSH key name.
      #   * `:availability_zone` - (String) The instance Availability Zone. For
      #     more information, see Regions and Endpoints.
      #   * `:architecture` - (String) The instance architecture. Instance
      #     types do not necessarily support both architectures. For a list of
      #     the architectures that are supported by the different instance
      #     types, see Instance Families and Types. Valid values include:
      #     * `x86_64`
      #     * `i386`
      #   * `:root_device_type` - (String) The instance root device type. For
      #     more information, see Storage for the Root Device. Valid values
      #     include:
      #     * `ebs`
      #     * `instance-store`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:instance_id` - (String)

      # @!method create_layer(options = {})
      # Calls the CreateLayer API operation.
      # @param [Hash] options
      #   * `:stack_id` - *required* - (String) The layer stack ID.
      #   * `:type` - *required* - (String) The layer type. A stack cannot have
      #     more than one layer of the same type. This parameter must be set to
      #     one of the following: lb: An HAProxy layer web: A Static Web Server
      #     layer rails-app: A Rails App Server layer php-app: A PHP App Server
      #     layer nodejs-app: A Node.js App Server layer memcached: A Memcached
      #     layer db-master: A MySQL layer monitoring-master: A Ganglia layer
      #     custom: A custom layer Valid values include:
      #     * `lb`
      #     * `web`
      #     * `php-app`
      #     * `rails-app`
      #     * `nodejs-app`
      #     * `memcached`
      #     * `db-master`
      #     * `monitoring-master`
      #     * `custom`
      #   * `:name` - *required* - (String) The layer name, which is used by
      #     the console.
      #   * `:shortname` - *required* - (String) The layer short name, which is
      #     used internally by OpsWorks and by Chef recipes. The shortname is
      #     also used as the name for the directory where your app files are
      #     installed. It can have a maximum of 200 characters, which are
      #     limited to the alphanumeric characters, '-', '_', and '.'.
      #   * `:attributes` - (Hash<String,String>) One or more user-defined
      #     key/value pairs to be added to the stack attributes bag.
      #   * `:custom_instance_profile_arn` - (String) The ARN of an IAM profile
      #     that to be used for the layer's EC2 instances. For more information
      #     about IAM ARNs, see Using Identifiers.
      #   * `:custom_security_group_ids` - (Array<String>) An array containing
      #     the layer custom security group IDs.
      #   * `:packages` - (Array<String>) An array of Package objects that
      #     describe the layer packages.
      #   * `:volume_configurations` - (Array<Hash>) A VolumeConfigurations
      #     object that describes the layer Amazon EBS volumes.
      #     * `:mount_point` - *required* - (String) The volume mount point.
      #       For example "/dev/sdh".
      #     * `:raid_level` - (Integer) The volume RAID level.
      #     * `:number_of_disks` - *required* - (Integer) The number of disks
      #       in the volume.
      #     * `:size` - *required* - (Integer) The volume size.
      #   * `:enable_auto_healing` - (Boolean) Whether to disable auto healing
      #     for the layer.
      #   * `:auto_assign_elastic_ips` - (Boolean) Whether to automatically
      #     assign an Elastic IP address to the layer.
      #   * `:custom_recipes` - (Hash) A LayerCustomRecipes object that
      #     specifies the layer custom recipes.
      #     * `:setup` - (Array<String>) An array of custom recipe names to be
      #       run following a setup event.
      #     * `:configure` - (Array<String>) An array of custom recipe names to
      #       be run following a configure event.
      #     * `:deploy` - (Array<String>) An array of custom recipe names to be
      #       run following a deploy event.
      #     * `:undeploy` - (Array<String>) An array of custom recipe names to
      #       be run following a undeploy event.
      #     * `:shutdown` - (Array<String>) An array of custom recipe names to
      #       be run following a shutdown event.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:layer_id` - (String)

      # @!method create_stack(options = {})
      # Calls the CreateStack API operation.
      # @param [Hash] options
      #   * `:name` - *required* - (String) The stack name.
      #   * `:region` - *required* - (String) The stack AWS region, such as
      #     "us-east-1". For more information about Amazon regions, see Regions
      #     and Endpoints.
      #   * `:attributes` - (Hash<String,String>) One or more user-defined
      #     key/value pairs to be added to the stack attributes bag.
      #   * `:service_role_arn` - *required* - (String) The stack AWS Identity
      #     and Access Management (IAM) role, which allows OpsWorks to work
      #     with AWS resources on your behalf. You must set this parameter to
      #     the Amazon Resource Name (ARN) for an existing IAM role. For more
      #     information about IAM ARNs, see Using Identifiers.
      #   * `:default_instance_profile_arn` - *required* - (String) The ARN of
      #     an IAM profile that is the default profile for all of the stack's
      #     EC2 instances. For more information about IAM ARNs, see Using
      #     Identifiers.
      #   * `:default_os` - (String) The cloned stack default operating system,
      #     which must be either "Amazon Linux" or "Ubuntu 12.04 LTS".
      #   * `:hostname_theme` - (String) The stack's host name theme, with
      #     spaces are replaced by underscores. The theme is used to generate
      #     hostnames for the stack's instances. By default, HostnameTheme is
      #     set to Layer_Dependent, which creates hostnames by appending
      #     integers to the layer's shortname. The other themes are:
      #     Baked_Goods Clouds European_Cities Fruits Greek_Deities
      #     Legendary_Creatures_from_Japan Planets_and_Moons Roman_Deities
      #     Scottish_Islands US_Cities Wild_Cats To obtain a generated
      #     hostname, call GetHostNameSuggestion, which returns a hostname
      #     based on the current theme.
      #   * `:default_availability_zone` - (String) The stack default
      #     Availability Zone. For more information, see Regions and Endpoints.
      #   * `:custom_json` - (String) A string that contains user-defined,
      #     custom JSON. It is used to override the corresponding default stack
      #     configuration JSON values. The string should be in the following
      #     format and must escape characters such as '"'.: "{\"key1\":
      #     \"value1\", \"key2\": \"value2\",...}" For more information on
      #     custom JSON, see Use Custom JSON to Modify the Stack Configuration
      #     JSON.
      #   * `:use_custom_cookbooks` - (Boolean) Whether the stack uses custom
      #     cookbooks.
      #   * `:custom_cookbooks_source` - (Hash)
      #     * `:type` - (String) The repository type. Valid values include:
      #       * `git`
      #       * `svn`
      #       * `archive`
      #       * `s3`
      #     * `:url` - (String) The source URL.
      #     * `:username` - (String) This parameter depends on the repository
      #       type. For Amazon S3 bundles, set Username to the appropriate AWS
      #       access key. For HTTP bundles, Git repositories, and Subversion
      #       repositories, set Username to the user name.
      #     * `:password` - (String) This parameter depends on the repository
      #       type. For Amazon S3 bundles, set Password to the appropriate AWS
      #       secret key. For HTTP bundles, Git repositories, and Subversion
      #       repositories, set Password to the password.
      #     * `:ssh_key` - (String) The repository's SSH key.
      #     * `:revision` - (String) The application's version. OpsWorks
      #       enables you to easily deploy new versions of an application. One
      #       of the simplest approaches is to have branches or revisions in
      #       your repository that represent different versions that can
      #       potentially be deployed.
      #   * `:default_ssh_key_name` - (String) A default SSH key for the stack
      #     instances. You can override this value when you create or update an
      #     instance.
      #   * `:default_root_device_type` - (String) The default root device
      #     type. This value is used by default for all instances in the cloned
      #     stack, but you can override it when you create an instance. For
      #     more information, see Storage for the Root Device. Valid values
      #     include:
      #     * `ebs`
      #     * `instance-store`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:stack_id` - (String)

      # @!method create_user_profile(options = {})
      # Calls the CreateUserProfile API operation.
      # @param [Hash] options
      #   * `:iam_user_arn` - *required* - (String) The user's IAM ARN.
      #   * `:ssh_username` - (String) The user's SSH user name.
      #   * `:ssh_public_key` - (String) The user's public SSH key.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:iam_user_arn` - (String)

      # @!method delete_app(options = {})
      # Calls the DeleteApp API operation.
      # @param [Hash] options
      #   * `:app_id` - *required* - (String) The app ID.
      # @return [Core::Response]

      # @!method delete_instance(options = {})
      # Calls the DeleteInstance API operation.
      # @param [Hash] options
      #   * `:instance_id` - *required* - (String) The instance ID.
      #   * `:delete_elastic_ip` - (Boolean) Whether to delete the instance
      #     Elastic IP address.
      #   * `:delete_volumes` - (Boolean) Whether to delete the instance Amazon
      #     EBS volumes.
      # @return [Core::Response]

      # @!method delete_layer(options = {})
      # Calls the DeleteLayer API operation.
      # @param [Hash] options
      #   * `:layer_id` - *required* - (String) The layer ID.
      # @return [Core::Response]

      # @!method delete_stack(options = {})
      # Calls the DeleteStack API operation.
      # @param [Hash] options
      #   * `:stack_id` - *required* - (String) The stack ID.
      # @return [Core::Response]

      # @!method delete_user_profile(options = {})
      # Calls the DeleteUserProfile API operation.
      # @param [Hash] options
      #   * `:iam_user_arn` - *required* - (String) The user's IAM ARN.
      # @return [Core::Response]

      # @!method describe_apps(options = {})
      # Calls the DescribeApps API operation.
      # @param [Hash] options
      #   * `:stack_id` - (String) The app stack ID. If you use this parameter,
      #     DescribeApps returns a description of the apps in the specified
      #     stack.
      #   * `:app_ids` - (Array<String>) An array of app IDs for the apps to be
      #     described. If you use this parameter, DescribeApps returns a
      #     description of the specified apps. Otherwise, it returns a
      #     description of every app.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:apps` - (Array<Hash>)
      #     * `:app_id` - (String)
      #     * `:stack_id` - (String)
      #     * `:shortname` - (String)
      #     * `:name` - (String)
      #     * `:description` - (String)
      #     * `:type` - (String)
      #     * `:app_source` - (Hash)
      #       * `:type` - (String)
      #       * `:url` - (String)
      #       * `:username` - (String)
      #       * `:password` - (String)
      #       * `:ssh_key` - (String)
      #       * `:revision` - (String)
      #     * `:domains` - (Array<String>)
      #     * `:enable_ssl` - (Boolean)
      #     * `:ssl_configuration` - (Hash)
      #       * `:certificate` - (String)
      #       * `:private_key` - (String)
      #       * `:chain` - (String)
      #     * `:attributes` - (Hash<String,String>)
      #     * `:created_at` - (String)

      # @!method describe_commands(options = {})
      # Calls the DescribeCommands API operation.
      # @param [Hash] options
      #   * `:deployment_id` - (String) The deployment ID. If you include this
      #     parameter, DescribeCommands returns a description of the commands
      #     associated with the specified deployment.
      #   * `:instance_id` - (String) The instance ID. If you include this
      #     parameter, DescribeCommands returns a description of the commands
      #     associated with the specified instance.
      #   * `:command_ids` - (Array<String>) An array of command IDs. If you
      #     include this parameter, DescribeCommands returns a description of
      #     the specified commands. Otherwise, it returns a description of
      #     every command.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:commands` - (Array<Hash>)
      #     * `:command_id` - (String)
      #     * `:instance_id` - (String)
      #     * `:deployment_id` - (String)
      #     * `:created_at` - (String)
      #     * `:acknowledged_at` - (String)
      #     * `:completed_at` - (String)
      #     * `:status` - (String)
      #     * `:exit_code` - (Integer)
      #     * `:log_url` - (String)
      #     * `:type` - (String)

      # @!method describe_deployments(options = {})
      # Calls the DescribeDeployments API operation.
      # @param [Hash] options
      #   * `:stack_id` - (String) The stack ID. If you include this parameter,
      #     DescribeDeployments returns a description of the commands
      #     associated with the specified stack.
      #   * `:app_id` - (String) The app ID. If you include this parameter,
      #     DescribeDeployments returns a description of the commands
      #     associated with the specified app.
      #   * `:deployment_ids` - (Array<String>) An array of deployment IDs to
      #     be described. If you include this parameter, DescribeDeployments
      #     returns a description of the specified deployments. Otherwise, it
      #     returns a description of every deployment.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:deployments` - (Array<Hash>)
      #     * `:deployment_id` - (String)
      #     * `:stack_id` - (String)
      #     * `:app_id` - (String)
      #     * `:created_at` - (String)
      #     * `:completed_at` - (String)
      #     * `:duration` - (Integer)
      #     * `:iam_user_arn` - (String)
      #     * `:comment` - (String)
      #     * `:command` - (Hash)
      #       * `:name` - (String)
      #       * `:args` - (Hash<String,Hash>)
      #         * `:value` - (Array<String>)
      #     * `:status` - (String)
      #     * `:custom_json` - (String)
      #     * `:instance_ids` - (Array<String>)

      # @!method describe_elastic_ips(options = {})
      # Calls the DescribeElasticIps API operation.
      # @param [Hash] options
      #   * `:instance_id` - (String) The instance ID. If you include this
      #     parameter, DescribeElasticIps returns a description of the Elastic
      #     IP addresses associated with the specified instance.
      #   * `:ips` - (Array<String>) An array of Elastic IP addresses to be
      #     described. If you include this parameter, DescribeElasticIps
      #     returns a description of the specified Elastic IP addresses.
      #     Otherwise, it returns a description of every Elastic IP address.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:elastic_ips` - (Array<Hash>)
      #     * `:ip` - (String)
      #     * `:name` - (String)
      #     * `:region` - (String)

      # @!method describe_elastic_load_balancers(options = {})
      # Calls the DescribeElasticLoadBalancers API operation.
      # @param [Hash] options
      #   * `:stack_id` - (String) A stack ID. The action describes the Elastic
      #     Load Balancing instances for the stack.
      #   * `:layer_ids` - (Array<String>) A list of layer IDs. The action
      #     describes the Elastic Load Balancing instances for the specified
      #     layers.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:elastic_load_balancers` - (Array<Hash>)
      #     * `:elastic_load_balancer_name` - (String)
      #     * `:region` - (String)
      #     * `:dns_name` - (String)
      #     * `:stack_id` - (String)
      #     * `:layer_id` - (String)
      #     * `:availability_zones` - (Array<String>)
      #     * `:ec_2_instance_ids` - (Array<String>)

      # @!method describe_instances(options = {})
      # Calls the DescribeInstances API operation.
      # @param [Hash] options
      #   * `:stack_id` - (String) A stack ID. If you use this parameter,
      #     DescribeInstances returns descriptions of the instances associated
      #     with the specified stack.
      #   * `:layer_id` - (String) A layer ID. If you use this parameter,
      #     DescribeInstances returns descriptions of the instances associated
      #     with the specified layer.
      #   * `:instance_ids` - (Array<String>) An array of instance IDs to be
      #     described. If you use this parameter, DescribeInstances returns a
      #     description of the specified instances. Otherwise, it returns a
      #     description of every instance.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:instances` - (Array<Hash>)
      #     * `:instance_id` - (String)
      #     * `:ec2_instance_id` - (String)
      #     * `:hostname` - (String)
      #     * `:stack_id` - (String)
      #     * `:layer_ids` - (Array<String>)
      #     * `:security_group_ids` - (Array<String>)
      #     * `:instance_type` - (String)
      #     * `:instance_profile_arn` - (String)
      #     * `:status` - (String)
      #     * `:os` - (String)
      #     * `:availability_zone` - (String)
      #     * `:public_dns` - (String)
      #     * `:private_dns` - (String)
      #     * `:public_ip` - (String)
      #     * `:private_ip` - (String)
      #     * `:elastic_ip` - (String)
      #     * `:auto_scaling_type` - (String)
      #     * `:ssh_key_name` - (String)
      #     * `:ssh_host_rsa_key_fingerprint` - (String)
      #     * `:ssh_host_dsa_key_fingerprint` - (String)
      #     * `:created_at` - (String)
      #     * `:last_service_error_id` - (String)
      #     * `:architecture` - (String)
      #     * `:root_device_type` - (String)
      #     * `:root_device_volume_id` - (String)

      # @!method describe_layers(options = {})
      # Calls the DescribeLayers API operation.
      # @param [Hash] options
      #   * `:stack_id` - *required* - (String) The stack ID.
      #   * `:layer_ids` - (Array<String>) An array of layer IDs that specify
      #     the layers to be described. If you omit this parameter,
      #     DescribeLayers returns a description of every layer in the
      #     specified stack.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:layers` - (Array<Hash>)
      #     * `:stack_id` - (String)
      #     * `:layer_id` - (String)
      #     * `:type` - (String)
      #     * `:name` - (String)
      #     * `:shortname` - (String)
      #     * `:attributes` - (Hash<String,String>)
      #     * `:custom_instance_profile_arn` - (String)
      #     * `:custom_security_group_ids` - (Array<String>)
      #     * `:default_security_group_names` - (Array<String>)
      #     * `:packages` - (Array<String>)
      #     * `:volume_configurations` - (Array<Hash>)
      #       * `:mount_point` - (String)
      #       * `:raid_level` - (Integer)
      #       * `:number_of_disks` - (Integer)
      #       * `:size` - (Integer)
      #     * `:enable_auto_healing` - (Boolean)
      #     * `:auto_assign_elastic_ips` - (Boolean)
      #     * `:default_recipes` - (Hash)
      #       * `:setup` - (Array<String>)
      #       * `:configure` - (Array<String>)
      #       * `:deploy` - (Array<String>)
      #       * `:undeploy` - (Array<String>)
      #       * `:shutdown` - (Array<String>)
      #     * `:custom_recipes` - (Hash)
      #       * `:setup` - (Array<String>)
      #       * `:configure` - (Array<String>)
      #       * `:deploy` - (Array<String>)
      #       * `:undeploy` - (Array<String>)
      #       * `:shutdown` - (Array<String>)
      #     * `:created_at` - (String)

      # @!method describe_load_based_auto_scaling(options = {})
      # Calls the DescribeLoadBasedAutoScaling API operation.
      # @param [Hash] options
      #   * `:layer_ids` - *required* - (Array<String>) An array of layer IDs.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:load_based_auto_scaling_configurations` - (Array<Hash>)
      #     * `:layer_id` - (String)
      #     * `:enable` - (Boolean)
      #     * `:up_scaling` - (Hash)
      #       * `:instance_count` - (Integer)
      #       * `:thresholds_wait_time` - (Integer)
      #       * `:ignore_metrics_time` - (Integer)
      #       * `:cpu_threshold` - (Numeric)
      #       * `:memory_threshold` - (Numeric)
      #       * `:load_threshold` - (Numeric)
      #     * `:down_scaling` - (Hash)
      #       * `:instance_count` - (Integer)
      #       * `:thresholds_wait_time` - (Integer)
      #       * `:ignore_metrics_time` - (Integer)
      #       * `:cpu_threshold` - (Numeric)
      #       * `:memory_threshold` - (Numeric)
      #       * `:load_threshold` - (Numeric)

      # @!method describe_permissions(options = {})
      # Calls the DescribePermissions API operation.
      # @param [Hash] options
      #   * `:iam_user_arn` - *required* - (String) The user's IAM ARN. For
      #     more information about IAM ARNs, see Using Identifiers.
      #   * `:stack_id` - *required* - (String) The stack ID.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:permissions` - (Array<Hash>)
      #     * `:stack_id` - (String)
      #     * `:iam_user_arn` - (String)
      #     * `:allow_ssh` - (Boolean)
      #     * `:allow_sudo` - (Boolean)

      # @!method describe_raid_arrays(options = {})
      # Calls the DescribeRaidArrays API operation.
      # @param [Hash] options
      #   * `:instance_id` - (String) The instance ID. If you use this
      #     parameter, DescribeRaidArrays returns descriptions of the RAID
      #     arrays associated with the specified instance.
      #   * `:raid_array_ids` - (Array<String>) An array of RAID array IDs. If
      #     you use this parameter, DescribeRaidArrays returns descriptions of
      #     the specified arrays. Otherwise, it returns a description of every
      #     array.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:raid_arrays` - (Array<Hash>)
      #     * `:raid_array_id` - (String)
      #     * `:instance_id` - (String)
      #     * `:name` - (String)
      #     * `:raid_level` - (Integer)
      #     * `:number_of_disks` - (Integer)
      #     * `:size` - (Integer)
      #     * `:device` - (String)
      #     * `:mount_point` - (String)
      #     * `:availability_zone` - (String)
      #     * `:created_at` - (String)

      # @!method describe_service_errors(options = {})
      # Calls the DescribeServiceErrors API operation.
      # @param [Hash] options
      #   * `:stack_id` - (String) The stack ID. If you use this parameter,
      #     DescribeServiceErrors returns descriptions of the errors associated
      #     with the specified stack.
      #   * `:instance_id` - (String) The instance ID. If you use this
      #     parameter, DescribeServiceErrors returns descriptions of the errors
      #     associated with the specified instance.
      #   * `:service_error_ids` - (Array<String>) An array of service error
      #     IDs. If you use this parameter, DescribeServiceErrors returns
      #     descriptions of the specified errors. Otherwise, it returns a
      #     description of every error.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:service_errors` - (Array<Hash>)
      #     * `:service_error_id` - (String)
      #     * `:stack_id` - (String)
      #     * `:instance_id` - (String)
      #     * `:type` - (String)
      #     * `:message` - (String)
      #     * `:created_at` - (String)

      # @!method describe_stacks(options = {})
      # Calls the DescribeStacks API operation.
      # @param [Hash] options
      #   * `:stack_ids` - (Array<String>) An array of stack IDs that specify
      #     the stacks to be described. If you omit this parameter,
      #     DescribeStacks returns a description of every stack.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:stacks` - (Array<Hash>)
      #     * `:stack_id` - (String)
      #     * `:name` - (String)
      #     * `:region` - (String)
      #     * `:attributes` - (Hash<String,String>)
      #     * `:service_role_arn` - (String)
      #     * `:default_instance_profile_arn` - (String)
      #     * `:default_os` - (String)
      #     * `:hostname_theme` - (String)
      #     * `:default_availability_zone` - (String)
      #     * `:custom_json` - (String)
      #     * `:use_custom_cookbooks` - (Boolean)
      #     * `:custom_cookbooks_source` - (Hash)
      #       * `:type` - (String)
      #       * `:url` - (String)
      #       * `:username` - (String)
      #       * `:password` - (String)
      #       * `:ssh_key` - (String)
      #       * `:revision` - (String)
      #     * `:default_ssh_key_name` - (String)
      #     * `:created_at` - (String)
      #     * `:default_root_device_type` - (String)

      # @!method describe_time_based_auto_scaling(options = {})
      # Calls the DescribeTimeBasedAutoScaling API operation.
      # @param [Hash] options
      #   * `:instance_ids` - *required* - (Array<String>) An array of instance
      #     IDs.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:time_based_auto_scaling_configurations` - (Array<Hash>)
      #     * `:instance_id` - (String)
      #     * `:auto_scaling_schedule` - (Hash)
      #       * `:monday` - (Hash<String,String>)
      #       * `:tuesday` - (Hash<String,String>)
      #       * `:wednesday` - (Hash<String,String>)
      #       * `:thursday` - (Hash<String,String>)
      #       * `:friday` - (Hash<String,String>)
      #       * `:saturday` - (Hash<String,String>)
      #       * `:sunday` - (Hash<String,String>)

      # @!method describe_user_profiles(options = {})
      # Calls the DescribeUserProfiles API operation.
      # @param [Hash] options
      #   * `:iam_user_arns` - *required* - (Array<String>) An array of IAM
      #     user ARNs that identify the users to be described.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:user_profiles` - (Array<Hash>)
      #     * `:iam_user_arn` - (String)
      #     * `:name` - (String)
      #     * `:ssh_username` - (String)
      #     * `:ssh_public_key` - (String)

      # @!method describe_volumes(options = {})
      # Calls the DescribeVolumes API operation.
      # @param [Hash] options
      #   * `:instance_id` - (String) The instance ID. If you use this
      #     parameter, DescribeVolumes returns descriptions of the volumes
      #     associated with the specified instance.
      #   * `:raid_array_id` - (String) The RAID array ID. If you use this
      #     parameter, DescribeVolumes returns descriptions of the volumes
      #     associated with the specified RAID array.
      #   * `:volume_ids` - (Array<String>) Am array of volume IDs. If you use
      #     this parameter, DescribeVolumes returns descriptions of the
      #     specified volumes. Otherwise, it returns a description of every
      #     volume.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:volumes` - (Array<Hash>)
      #     * `:volume_id` - (String)
      #     * `:ec2_volume_id` - (String)
      #     * `:name` - (String)
      #     * `:raid_array_id` - (String)
      #     * `:instance_id` - (String)
      #     * `:status` - (String)
      #     * `:size` - (Integer)
      #     * `:device` - (String)
      #     * `:mount_point` - (String)
      #     * `:region` - (String)
      #     * `:availability_zone` - (String)

      # @!method detach_elastic_load_balancer(options = {})
      # Calls the DetachElasticLoadBalancer API operation.
      # @param [Hash] options
      #   * `:elastic_load_balancer_name` - *required* - (String) The Elastic
      #     Load Balancing instance's name.
      #   * `:layer_id` - *required* - (String) The ID of the layer that the
      #     Elastic Load Balancing instance is attached to.
      # @return [Core::Response]

      # @!method get_hostname_suggestion(options = {})
      # Calls the GetHostnameSuggestion API operation.
      # @param [Hash] options
      #   * `:layer_id` - *required* - (String) The layer ID.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:layer_id` - (String)
      #   * `:hostname` - (String)

      # @!method reboot_instance(options = {})
      # Calls the RebootInstance API operation.
      # @param [Hash] options
      #   * `:instance_id` - *required* - (String) The instance ID.
      # @return [Core::Response]

      # @!method set_load_based_auto_scaling(options = {})
      # Calls the SetLoadBasedAutoScaling API operation.
      # @param [Hash] options
      #   * `:layer_id` - *required* - (String) The layer ID.
      #   * `:enable` - (Boolean) Enables load-based auto scaling for the
      #     layer.
      #   * `:up_scaling` - (Hash) An AutoScalingThresholds object with the
      #     upscaling threshold configuration. If the load exceeds these
      #     thresholds for a specified amount of time, OpsWorks starts a
      #     specified number of instances.
      #     * `:instance_count` - (Integer) The number of instances to add or
      #       remove when the load exceeds a threshold.
      #     * `:thresholds_wait_time` - (Integer) The amount of time, in
      #       minutes, that the load must exceed a threshold before more
      #       instances are added or removed.
      #     * `:ignore_metrics_time` - (Integer) The amount of time (in
      #       minutes) after a scaling event occurs that OpsWorks should ignore
      #       metrics and not raise any additional scaling events. For example,
      #       OpsWorks adds new instances following an upscaling event but the
      #       instances won't start reducing the load until they have been
      #       booted and configured. There is no point in raising additional
      #       scaling events during that operation, which typically takes
      #       several minutes. IgnoreMetricsTime allows you to direct OpsWorks
      #       to not raise any scaling events long enough to get the new
      #       instances online.
      #     * `:cpu_threshold` - (Float) The CPU utilization threshold, as a
      #       percent of the available CPU.
      #     * `:memory_threshold` - (Float) The memory utilization threshold,
      #       as a percent of the available memory.
      #     * `:load_threshold` - (Float) The load threshold. For more
      #       information about how load is computed, see Load (computing).
      #   * `:down_scaling` - (Hash) An AutoScalingThresholds object with the
      #     downscaling threshold configuration. If the load falls below these
      #     thresholds for a specified amount of time, OpsWorks stops a
      #     specified number of instances.
      #     * `:instance_count` - (Integer) The number of instances to add or
      #       remove when the load exceeds a threshold.
      #     * `:thresholds_wait_time` - (Integer) The amount of time, in
      #       minutes, that the load must exceed a threshold before more
      #       instances are added or removed.
      #     * `:ignore_metrics_time` - (Integer) The amount of time (in
      #       minutes) after a scaling event occurs that OpsWorks should ignore
      #       metrics and not raise any additional scaling events. For example,
      #       OpsWorks adds new instances following an upscaling event but the
      #       instances won't start reducing the load until they have been
      #       booted and configured. There is no point in raising additional
      #       scaling events during that operation, which typically takes
      #       several minutes. IgnoreMetricsTime allows you to direct OpsWorks
      #       to not raise any scaling events long enough to get the new
      #       instances online.
      #     * `:cpu_threshold` - (Float) The CPU utilization threshold, as a
      #       percent of the available CPU.
      #     * `:memory_threshold` - (Float) The memory utilization threshold,
      #       as a percent of the available memory.
      #     * `:load_threshold` - (Float) The load threshold. For more
      #       information about how load is computed, see Load (computing).
      # @return [Core::Response]

      # @!method set_permission(options = {})
      # Calls the SetPermission API operation.
      # @param [Hash] options
      #   * `:stack_id` - *required* - (String) The stack ID.
      #   * `:iam_user_arn` - *required* - (String) The user's IAM ARN.
      #   * `:allow_ssh` - (Boolean) The user is allowed to use SSH to
      #     communicate with the instance.
      #   * `:allow_sudo` - (Boolean) The user is allowed to use sudo to
      #     elevate privileges.
      # @return [Core::Response]

      # @!method set_time_based_auto_scaling(options = {})
      # Calls the SetTimeBasedAutoScaling API operation.
      # @param [Hash] options
      #   * `:instance_id` - *required* - (String) The instance ID.
      #   * `:auto_scaling_schedule` - (Hash) An AutoScalingSchedule with the
      #     instance schedule.
      #     * `:monday` - (Hash<String,String>) The schedule for Monday.
      #     * `:tuesday` - (Hash<String,String>) The schedule for Tuesday.
      #     * `:wednesday` - (Hash<String,String>) The schedule for Wednesday.
      #     * `:thursday` - (Hash<String,String>) The schedule for Thursday.
      #     * `:friday` - (Hash<String,String>) The schedule for Friday.
      #     * `:saturday` - (Hash<String,String>) The schedule for Saturday.
      #     * `:sunday` - (Hash<String,String>) The schedule for Sunday.
      # @return [Core::Response]

      # @!method start_instance(options = {})
      # Calls the StartInstance API operation.
      # @param [Hash] options
      #   * `:instance_id` - *required* - (String) The instance ID.
      # @return [Core::Response]

      # @!method start_stack(options = {})
      # Calls the StartStack API operation.
      # @param [Hash] options
      #   * `:stack_id` - *required* - (String) The stack ID.
      # @return [Core::Response]

      # @!method stop_instance(options = {})
      # Calls the StopInstance API operation.
      # @param [Hash] options
      #   * `:instance_id` - *required* - (String) The instance ID.
      # @return [Core::Response]

      # @!method stop_stack(options = {})
      # Calls the StopStack API operation.
      # @param [Hash] options
      #   * `:stack_id` - *required* - (String) The stack ID.
      # @return [Core::Response]

      # @!method update_app(options = {})
      # Calls the UpdateApp API operation.
      # @param [Hash] options
      #   * `:app_id` - *required* - (String) The app ID.
      #   * `:name` - (String) The app name.
      #   * `:description` - (String) A description of the app.
      #   * `:type` - (String) The app type. Valid values include:
      #     * `rails`
      #     * `php`
      #     * `nodejs`
      #     * `static`
      #     * `other`
      #   * `:app_source` - (Hash) A Source object that specifies the app
      #     repository.
      #     * `:type` - (String) The repository type. Valid values include:
      #       * `git`
      #       * `svn`
      #       * `archive`
      #       * `s3`
      #     * `:url` - (String) The source URL.
      #     * `:username` - (String) This parameter depends on the repository
      #       type. For Amazon S3 bundles, set Username to the appropriate AWS
      #       access key. For HTTP bundles, Git repositories, and Subversion
      #       repositories, set Username to the user name.
      #     * `:password` - (String) This parameter depends on the repository
      #       type. For Amazon S3 bundles, set Password to the appropriate AWS
      #       secret key. For HTTP bundles, Git repositories, and Subversion
      #       repositories, set Password to the password.
      #     * `:ssh_key` - (String) The repository's SSH key.
      #     * `:revision` - (String) The application's version. OpsWorks
      #       enables you to easily deploy new versions of an application. One
      #       of the simplest approaches is to have branches or revisions in
      #       your repository that represent different versions that can
      #       potentially be deployed.
      #   * `:domains` - (Array<String>) The app's virtual host settings, with
      #     multiple domains separated by commas. For example:
      #     'www.example.com, example.com'
      #   * `:enable_ssl` - (Boolean) Whether SSL is enabled for the app.
      #   * `:ssl_configuration` - (Hash) An SslConfiguration object with the
      #     SSL configuration.
      #     * `:certificate` - *required* - (String) The contents of the
      #       certificate's domain.crt file.
      #     * `:private_key` - *required* - (String) The private key; the
      #       contents of the certificate's domain.kex file.
      #     * `:chain` - (String) Optional. Can be used to specify an
      #       intermediate certificate authority key or client authentication.
      #   * `:attributes` - (Hash<String,String>) One or more user-defined
      #     key/value pairs to be added to the stack attributes bag.
      # @return [Core::Response]

      # @!method update_instance(options = {})
      # Calls the UpdateInstance API operation.
      # @param [Hash] options
      #   * `:instance_id` - *required* - (String) The instance ID.
      #   * `:layer_ids` - (Array<String>) The instance's layer IDs.
      #   * `:instance_type` - (String) The instance type. OpsWorks supports
      #     all instance types except Cluster Compute, Cluster GPU, and High
      #     Memory Cluster. For more information, see Instance Families and
      #     Types. The parameter values that you use to specify the various
      #     types are in the API Name column of the Available Instance Types
      #     table.
      #   * `:auto_scaling_type` - (String) The instance's auto scaling type,
      #     which has three possible values: AlwaysRunning: A 24/7 instance,
      #     which is not affected by auto scaling. TimeBasedAutoScaling: A
      #     time-based auto scaling instance, which is started and stopped
      #     based on a specified schedule. LoadBasedAutoScaling: A load-based
      #     auto scaling instance, which is started and stopped based on load
      #     metrics. Valid values include:
      #     * `load`
      #     * `timer`
      #   * `:hostname` - (String) The instance host name.
      #   * `:os` - (String) The instance operating system.
      #   * `:ssh_key_name` - (String) The instance SSH key name.
      #   * `:architecture` - (String) The instance architecture. Instance
      #     types do not necessarily support both architectures. For a list of
      #     the architectures that are supported by the different instance
      #     types, see Instance Families and Types. Valid values include:
      #     * `x86_64`
      #     * `i386`
      # @return [Core::Response]

      # @!method update_layer(options = {})
      # Calls the UpdateLayer API operation.
      # @param [Hash] options
      #   * `:layer_id` - *required* - (String) The layer ID.
      #   * `:name` - (String) The layer name, which is used by the console.
      #   * `:shortname` - (String) The layer short name, which is used
      #     internally by OpsWorksand by Chef. The shortname is also used as
      #     the name for the directory where your app files are installed. It
      #     can have a maximum of 200 characters and must be in the following
      #     format: /\A[a-z0-9\-\_\.]+\Z/.
      #   * `:attributes` - (Hash<String,String>) One or more user-defined
      #     key/value pairs to be added to the stack attributes bag.
      #   * `:custom_instance_profile_arn` - (String) The ARN of an IAM profile
      #     to be used for all of the layer's EC2 instances. For more
      #     information about IAM ARNs, see Using Identifiers.
      #   * `:custom_security_group_ids` - (Array<String>) An array containing
      #     the layer's custom security group IDs.
      #   * `:packages` - (Array<String>) An array of Package objects that
      #     describe the layer's packages.
      #   * `:volume_configurations` - (Array<Hash>) A VolumeConfigurations
      #     object that describes the layer's Amazon EBS volumes.
      #     * `:mount_point` - *required* - (String) The volume mount point.
      #       For example "/dev/sdh".
      #     * `:raid_level` - (Integer) The volume RAID level.
      #     * `:number_of_disks` - *required* - (Integer) The number of disks
      #       in the volume.
      #     * `:size` - *required* - (Integer) The volume size.
      #   * `:enable_auto_healing` - (Boolean) Whether to disable auto healing
      #     for the layer.
      #   * `:auto_assign_elastic_ips` - (Boolean) Whether to automatically
      #     assign an Elastic IP address to the layer.
      #   * `:custom_recipes` - (Hash) A LayerCustomRecipes object that
      #     specifies the layer's custom recipes.
      #     * `:setup` - (Array<String>) An array of custom recipe names to be
      #       run following a setup event.
      #     * `:configure` - (Array<String>) An array of custom recipe names to
      #       be run following a configure event.
      #     * `:deploy` - (Array<String>) An array of custom recipe names to be
      #       run following a deploy event.
      #     * `:undeploy` - (Array<String>) An array of custom recipe names to
      #       be run following a undeploy event.
      #     * `:shutdown` - (Array<String>) An array of custom recipe names to
      #       be run following a shutdown event.
      # @return [Core::Response]

      # @!method update_stack(options = {})
      # Calls the UpdateStack API operation.
      # @param [Hash] options
      #   * `:stack_id` - *required* - (String) The stack ID.
      #   * `:name` - (String) The stack's new name.
      #   * `:attributes` - (Hash<String,String>) One or more user-defined
      #     key/value pairs to be added to the stack attributes bag.
      #   * `:service_role_arn` - (String) The stack AWS Identity and Access
      #     Management (IAM) role, which allows OpsWorks to work with AWS
      #     resources on your behalf. You must set this parameter to the Amazon
      #     Resource Name (ARN) for an existing IAM role. For more information
      #     about IAM ARNs, see Using Identifiers. You must set this parameter
      #     to a valid service role ARN or the action will fail; there is no
      #     default value. You can specify the stack's current service role
      #     ARN, if you prefer, but you must do so explicitly.
      #   * `:default_instance_profile_arn` - (String) The ARN of an IAM
      #     profile that is the default profile for all of the stack's EC2
      #     instances. For more information about IAM ARNs, see Using
      #     Identifiers.
      #   * `:default_os` - (String) The cloned stack default operating system,
      #     which must be either "Amazon Linux" or "Ubuntu 12.04 LTS".
      #   * `:hostname_theme` - (String) The stack's new host name theme, with
      #     spaces are replaced by underscores. The theme is used to generate
      #     hostnames for the stack's instances. By default, HostnameTheme is
      #     set to Layer_Dependent, which creates hostnames by appending
      #     integers to the layer's shortname. The other themes are:
      #     Baked_Goods Clouds European_Cities Fruits Greek_Deities
      #     Legendary_Creatures_from_Japan Planets_and_Moons Roman_Deities
      #     Scottish_Islands US_Cities Wild_Cats To obtain a generated
      #     hostname, call GetHostNameSuggestion, which returns a hostname
      #     based on the current theme.
      #   * `:default_availability_zone` - (String) The stack new default
      #     Availability Zone. For more information, see Regions and Endpoints.
      #   * `:custom_json` - (String) A string that contains user-defined,
      #     custom JSON. It is used to override the corresponding default stack
      #     configuration JSON values. The string should be in the following
      #     format and must escape characters such as '"'.: "{\"key1\":
      #     \"value1\", \"key2\": \"value2\",...}" For more information on
      #     custom JSON, see Use Custom JSON to Modify the Stack Configuration
      #     JSON.
      #   * `:use_custom_cookbooks` - (Boolean) Whether the stack uses custom
      #     cookbooks.
      #   * `:custom_cookbooks_source` - (Hash)
      #     * `:type` - (String) The repository type. Valid values include:
      #       * `git`
      #       * `svn`
      #       * `archive`
      #       * `s3`
      #     * `:url` - (String) The source URL.
      #     * `:username` - (String) This parameter depends on the repository
      #       type. For Amazon S3 bundles, set Username to the appropriate AWS
      #       access key. For HTTP bundles, Git repositories, and Subversion
      #       repositories, set Username to the user name.
      #     * `:password` - (String) This parameter depends on the repository
      #       type. For Amazon S3 bundles, set Password to the appropriate AWS
      #       secret key. For HTTP bundles, Git repositories, and Subversion
      #       repositories, set Password to the password.
      #     * `:ssh_key` - (String) The repository's SSH key.
      #     * `:revision` - (String) The application's version. OpsWorks
      #       enables you to easily deploy new versions of an application. One
      #       of the simplest approaches is to have branches or revisions in
      #       your repository that represent different versions that can
      #       potentially be deployed.
      #   * `:default_ssh_key_name` - (String) A default SSH key for the stack
      #     instances. You can override this value when you create or update an
      #     instance.
      #   * `:default_root_device_type` - (String) The default root device
      #     type. This value is used by default for all instances in the cloned
      #     stack, but you can override it when you create an instance. For
      #     more information, see Storage for the Root Device. Valid values
      #     include:
      #     * `ebs`
      #     * `instance-store`
      # @return [Core::Response]

      # @!method update_user_profile(options = {})
      # Calls the UpdateUserProfile API operation.
      # @param [Hash] options
      #   * `:iam_user_arn` - *required* - (String) The user IAM ARN.
      #   * `:ssh_username` - (String) The user's new SSH user name.
      #   * `:ssh_public_key` - (String) The user's new SSH public key.
      # @return [Core::Response]

      # end client methods #

      define_client_methods('2013-02-18')

    end
  end
end
