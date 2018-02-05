# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OpsWorks
  class Stack

    extend Aws::Deprecations

    # @overload def initialize(id, options = {})
    #   @param [String] id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @id = extract_id(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def id
      @id
    end

    # The stack ID.
    # @return [String]
    def stack_id
      data[:stack_id]
    end

    # The stack name.
    # @return [String]
    def name
      data[:name]
    end

    # The stack's ARN.
    # @return [String]
    def arn
      data[:arn]
    end

    # The stack AWS region, such as "ap-northeast-2". For more information
    # about AWS regions, see [Regions and Endpoints][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html
    # @return [String]
    def region
      data[:region]
    end

    # The VPC ID; applicable only if the stack is running in a VPC.
    # @return [String]
    def vpc_id
      data[:vpc_id]
    end

    # The stack's attributes.
    # @return [Hash<String,String>]
    def attributes
      data[:attributes]
    end

    # The stack AWS Identity and Access Management (IAM) role.
    # @return [String]
    def service_role_arn
      data[:service_role_arn]
    end

    # The ARN of an IAM profile that is the default profile for all of the
    # stack's EC2 instances. For more information about IAM ARNs, see
    # [Using Identifiers][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @return [String]
    def default_instance_profile_arn
      data[:default_instance_profile_arn]
    end

    # The stack's default operating system.
    # @return [String]
    def default_os
      data[:default_os]
    end

    # The stack host name theme, with spaces replaced by underscores.
    # @return [String]
    def hostname_theme
      data[:hostname_theme]
    end

    # The stack's default Availability Zone. For more information, see
    # [Regions and Endpoints][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html
    # @return [String]
    def default_availability_zone
      data[:default_availability_zone]
    end

    # The default subnet ID; applicable only if the stack is running in a
    # VPC.
    # @return [String]
    def default_subnet_id
      data[:default_subnet_id]
    end

    # A JSON object that contains user-defined attributes to be added to the
    # stack configuration and deployment attributes. You can use custom JSON
    # to override the corresponding default stack configuration attribute
    # values or to pass data to recipes. The string should be in the
    # following format:
    #
    # `"\{"key1": "value1", "key2": "value2",...\}"`
    #
    # For more information on custom JSON, see [Use Custom JSON to Modify
    # the Stack Configuration Attributes][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html
    # @return [String]
    def custom_json
      data[:custom_json]
    end

    # The configuration manager.
    # @return [Types::StackConfigurationManager]
    def configuration_manager
      data[:configuration_manager]
    end

    # A `ChefConfiguration` object that specifies whether to enable
    # Berkshelf and the Berkshelf version. For more information, see [Create
    # a New Stack][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html
    # @return [Types::ChefConfiguration]
    def chef_configuration
      data[:chef_configuration]
    end

    # Whether the stack uses custom cookbooks.
    # @return [Boolean]
    def use_custom_cookbooks
      data[:use_custom_cookbooks]
    end

    # Whether the stack automatically associates the AWS OpsWorks Stacks
    # built-in security groups with the stack's layers.
    # @return [Boolean]
    def use_opsworks_security_groups
      data[:use_opsworks_security_groups]
    end

    # Contains the information required to retrieve an app or cookbook from
    # a repository. For more information, see [Creating Apps][1] or [Custom
    # Recipes and Cookbooks][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html
    # [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html
    # @return [Types::Source]
    def custom_cookbooks_source
      data[:custom_cookbooks_source]
    end

    # A default Amazon EC2 key pair for the stack's instances. You can
    # override this value when you create or update an instance.
    # @return [String]
    def default_ssh_key_name
      data[:default_ssh_key_name]
    end

    # The date when the stack was created.
    # @return [String]
    def created_at
      data[:created_at]
    end

    # The default root device type. This value is used by default for all
    # instances in the stack, but you can override it when you create an
    # instance. For more information, see [Storage for the Root Device][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device
    # @return [String]
    def default_root_device_type
      data[:default_root_device_type]
    end

    # The agent version. This parameter is set to `LATEST` for auto-update.
    # or a version number for a fixed agent version.
    # @return [String]
    def agent_version
      data[:agent_version]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Stack}.
    # Returns `self` making it possible to chain methods.
    #
    #     stack.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_stacks(stack_ids: [@id])
      @data = resp.stacks[0]
      self
    end
    alias :reload :load

    # @return [Types::Stack]
    #   Returns the data for this {Stack}. Calls
    #   {Client#describe_stacks} if {#data_loaded?} is `false`.
    def data
      load unless @data
      @data
    end

    # @return [Boolean]
    #   Returns `true` if this resource is loaded.  Accessing attributes or
    #   {#data} on an unloaded resource will trigger a call to {#load}.
    def data_loaded?
      !!@data
    end

    # @deprecated Use [Aws::OpsWorks::Client] #wait_until instead
    #
    # Waiter polls an API operation until a resource enters a desired
    # state.
    #
    # @note The waiting operation is performed on a copy. The original resource remains unchanged
    #
    # ## Basic Usage
    #
    # Waiter will polls until it is successful, it fails by
    # entering a terminal state, or until a maximum number of attempts
    # are made.
    #
    #     # polls in a loop until condition is true
    #     resource.wait_until(options) {|resource| condition}
    #
    # ## Example
    #
    #     instance.wait_until(max_attempts:10, delay:5) {|instance| instance.state.name == 'running' }
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is set
    # by passing a block to {#wait_until}:
    #
    #     # poll for ~25 seconds
    #     resource.wait_until(max_attempts:5,delay:5) {|resource|...}
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     # poll for 1 hour, instead of a number of attempts
    #     proc = Proc.new do |attempts, response|
    #       throw :failure if Time.now - started_at > 3600
    #     end
    #
    #       # disable max attempts
    #     instance.wait_until(before_wait:proc, max_attempts:nil) {...}
    #
    # ## Handling Errors
    #
    # When a waiter is successful, it returns the Resource. When a waiter
    # fails, it raises an error.
    #
    #     begin
    #       resource.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    #
    # @yield param [Resource] resource to be used in the waiting condition
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is encountered
    #   while polling for a resource that is not expected.
    #
    # @raise [NotImplementedError] Raised when the resource does not
    #
    # @option options [Integer] :max_attempts (10) Maximum number of
    # attempts
    # @option options [Integer] :delay (10) Delay between each
    # attempt in seconds
    # @option options [Proc] :before_attempt (nil) Callback
    # invoked before each attempt
    # @option options [Proc] :before_wait (nil) Callback
    # invoked before each wait
    # @return [Resource] if the waiter was successful
    def wait_until(options = {}, &block)
      self_copy = self.dup
      attempts = 0
      options[:max_attempts] = 10 unless options.key?(:max_attempts)
      options[:delay] ||= 10
      options[:poller] = Proc.new do
        attempts += 1
        if block.call(self_copy)
          [:success, self_copy]
        else
          self_copy.reload unless attempts == options[:max_attempts]
          :retry
        end
      end
      Aws::Waiters::Waiter.new(options).wait({})
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   layer = stack.create_layer({
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
    # @param [Hash] options ({})
    # @option options [required, String] :type
    #   The layer type. A stack cannot have more than one built-in layer of
    #   the same type. It can have any number of custom layers. Built-in
    #   layers are not available in Chef 12 stacks.
    # @option options [required, String] :name
    #   The layer name, which is used by the console.
    # @option options [required, String] :shortname
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
    # @option options [Hash<String,String>] :attributes
    #   One or more user-defined key-value pairs to be added to the stack
    #   attributes.
    #
    #   To create a cluster layer, set the `EcsClusterArn` attribute to the
    #   cluster's ARN.
    # @option options [Types::CloudWatchLogsConfiguration] :cloud_watch_logs_configuration
    #   Specifies CloudWatch Logs configuration options for the layer. For
    #   more information, see CloudWatchLogsLogStream.
    # @option options [String] :custom_instance_profile_arn
    #   The ARN of an IAM profile to be used for the layer's EC2 instances.
    #   For more information about IAM ARNs, see [Using Identifiers][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @option options [String] :custom_json
    #   A JSON-formatted string containing custom stack configuration and
    #   deployment attributes to be installed on the layer's instances. For
    #   more information, see [ Using Custom JSON][1]. This feature is
    #   supported as of version 1.7.42 of the AWS CLI.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html
    # @option options [Array<String>] :custom_security_group_ids
    #   An array containing the layer custom security group IDs.
    # @option options [Array<String>] :packages
    #   An array of `Package` objects that describes the layer packages.
    # @option options [Array<Types::VolumeConfiguration>] :volume_configurations
    #   A `VolumeConfigurations` object that describes the layer's Amazon EBS
    #   volumes.
    # @option options [Boolean] :enable_auto_healing
    #   Whether to disable auto healing for the layer.
    # @option options [Boolean] :auto_assign_elastic_ips
    #   Whether to automatically assign an [Elastic IP address][1] to the
    #   layer's instances. For more information, see [How to Edit a
    #   Layer][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
    #   [2]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html
    # @option options [Boolean] :auto_assign_public_ips
    #   For stacks that are running in a VPC, whether to automatically assign
    #   a public IP address to the layer's instances. For more information,
    #   see [How to Edit a Layer][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html
    # @option options [Types::Recipes] :custom_recipes
    #   A `LayerCustomRecipes` object that specifies the layer custom recipes.
    # @option options [Boolean] :install_updates_on_boot
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
    # @option options [Boolean] :use_ebs_optimized_instances
    #   Whether to use Amazon EBS-optimized instances.
    # @option options [Types::LifecycleEventConfiguration] :lifecycle_event_configuration
    #   A `LifeCycleEventConfiguration` object that you can use to configure
    #   the Shutdown event to specify an execution timeout and enable or
    #   disable Elastic Load Balancer connection draining.
    # @return [Layer]
    def create_layer(options = {})
      options = options.merge(stack_id: @id)
      resp = @client.create_layer(options)
      Layer.new(
        id: resp.data.layer_id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   stack.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(stack_id: @id)
      resp = @client.delete_stack(options)
      resp.data
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   layers = stack.layers({
    #     layer_ids: ["String"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :layer_ids
    #   An array of layer IDs that specify the layers to be described. If you
    #   omit this parameter, `DescribeLayers` returns a description of every
    #   layer in the specified stack.
    # @return [Layer::Collection]
    def layers(options = {})
      batches = Enumerator.new do |y|
        batch = []
        options = options.merge(stack_id: @id)
        resp = @client.describe_layers(options)
        resp.data.layers.each do |l|
          batch << Layer.new(
            id: l.layer_id,
            data: l,
            client: @client
          )
        end
        y.yield(batch)
      end
      Layer::Collection.new(batches)
    end

    # @return [StackSummary]
    def summary
      StackSummary.new(
        stack_id: @id,
        client: @client
      )
    end

    # @deprecated
    # @api private
    def identifiers
      { id: @id }
    end
    deprecated(:identifiers)

    private

    def extract_id(args, options)
      value = args[0] || options.delete(:id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :id"
      else
        msg = "expected :id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
