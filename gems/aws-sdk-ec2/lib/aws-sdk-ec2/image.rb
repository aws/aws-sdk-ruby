# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2
  class Image

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
    alias :image_id :id

    # The architecture of the image.
    # @return [String]
    def architecture
      data[:architecture]
    end

    # The date and time the image was created.
    # @return [String]
    def creation_date
      data[:creation_date]
    end

    # The location of the AMI.
    # @return [String]
    def image_location
      data[:image_location]
    end

    # The type of image.
    # @return [String]
    def image_type
      data[:image_type]
    end

    # Indicates whether the image has public launch permissions. The value
    # is `true` if this image has public launch permissions or `false` if it
    # has only implicit and explicit launch permissions.
    # @return [Boolean]
    def public
      data[:public]
    end

    # The kernel associated with the image, if any. Only applicable for
    # machine images.
    # @return [String]
    def kernel_id
      data[:kernel_id]
    end

    # The AWS account ID of the image owner.
    # @return [String]
    def owner_id
      data[:owner_id]
    end

    # The value is `Windows` for Windows AMIs; otherwise blank.
    # @return [String]
    def platform
      data[:platform]
    end

    # Any product codes associated with the AMI.
    # @return [Array<Types::ProductCode>]
    def product_codes
      data[:product_codes]
    end

    # The RAM disk associated with the image, if any. Only applicable for
    # machine images.
    # @return [String]
    def ramdisk_id
      data[:ramdisk_id]
    end

    # The current state of the AMI. If the state is `available`, the image
    # is successfully registered and can be used to launch an instance.
    # @return [String]
    def state
      data[:state]
    end

    # Any block device mapping entries.
    # @return [Array<Types::BlockDeviceMapping>]
    def block_device_mappings
      data[:block_device_mappings]
    end

    # The description of the AMI that was provided during image creation.
    # @return [String]
    def description
      data[:description]
    end

    # Specifies whether enhanced networking with ENA is enabled.
    # @return [Boolean]
    def ena_support
      data[:ena_support]
    end

    # The hypervisor type of the image.
    # @return [String]
    def hypervisor
      data[:hypervisor]
    end

    # The AWS account alias (for example, `amazon`, `self`) or the AWS
    # account ID of the AMI owner.
    # @return [String]
    def image_owner_alias
      data[:image_owner_alias]
    end

    # The name of the AMI that was provided during image creation.
    # @return [String]
    def name
      data[:name]
    end

    # The device name of the root device volume (for example, `/dev/sda1`).
    # @return [String]
    def root_device_name
      data[:root_device_name]
    end

    # The type of root device used by the AMI. The AMI can use an EBS volume
    # or an instance store volume.
    # @return [String]
    def root_device_type
      data[:root_device_type]
    end

    # Specifies whether enhanced networking with the Intel 82599 Virtual
    # Function interface is enabled.
    # @return [String]
    def sriov_net_support
      data[:sriov_net_support]
    end

    # The reason for the state change.
    # @return [Types::StateReason]
    def state_reason
      data[:state_reason]
    end

    # Any tags assigned to the image.
    # @return [Array<Types::Tag>]
    def tags
      data[:tags]
    end

    # The type of virtualization of the AMI.
    # @return [String]
    def virtualization_type
      data[:virtualization_type]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Image}.
    # Returns `self` making it possible to chain methods.
    #
    #     image.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_images(image_ids: [@id])
      @data = resp.images[0]
      self
    end
    alias :reload :load

    # @return [Types::Image]
    #   Returns the data for this {Image}. Calls
    #   {Client#describe_images} if {#data_loaded?} is `false`.
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

    # @param [Hash] options ({})
    # @return [Boolean]
    #   Returns `true` if the Image exists.
    def exists?(options = {})
      begin
        wait_until_exists(options.merge(max_attempts: 1))
        true
      rescue Aws::Waiters::Errors::UnexpectedError => e
        raise e.error
      rescue Aws::Waiters::Errors::WaiterFailed
        false
      end
    end

    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts (40)
    # @option options [Float] :delay (15)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [Image]
    def wait_until_exists(options = {})
      options, params = separate_params_and_options(options)
      waiter = Waiters::ImageExists.new(options)
      yield_waiter_and_warn(waiter, &Proc.new) if block_given?
      resp = waiter.wait(params.merge(image_ids: [@id]))
      Image.new({
        id: @id,
        data: resp.data.images[0],
        client: @client
      })
    end

    # @deprecated Use [Aws::EC2::Client] #wait_until instead
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
    #   tag = image.create_tags({
    #     dry_run: false,
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, Array<Types::Tag>] :tags
    #   One or more tags. The `value` parameter is required, but if you don't
    #   want the tag to have a value, specify the parameter with no value, and
    #   we set the value to an empty string.
    # @return [Tag::Collection]
    def create_tags(options = {})
      batch = []
      options = Aws::Util.deep_merge(options, resources: [@id])
      resp = @client.create_tags(options)
      options[:tags].each do |t|
        batch << Tag.new(
          resource_id: @id,
          key: t[:key],
          value: t[:value],
          client: @client
        )
      end
      Tag::Collection.new([batch], size: batch.size)
    end

    # @example Request syntax with placeholder values
    #
    #   image.deregister({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def deregister(options = {})
      options = options.merge(image_id: @id)
      resp = @client.deregister_image(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   image.describe_attribute({
    #     attribute: "description", # required, accepts description, kernel, ramdisk, launchPermission, productCodes, blockDeviceMapping, sriovNetSupport
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :attribute
    #   The AMI attribute.
    #
    #   **Note**\: Depending on your account privileges, the
    #   `blockDeviceMapping` attribute may return a `Client.AuthFailure`
    #   error. If this happens, use DescribeImages to get information about
    #   the block device mapping for the AMI.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::ImageAttribute]
    def describe_attribute(options = {})
      options = options.merge(image_id: @id)
      resp = @client.describe_image_attribute(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   image.modify_attribute({
    #     attribute: "String",
    #     description: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     launch_permission: {
    #       add: [
    #         {
    #           group: "all", # accepts all
    #           user_id: "String",
    #         },
    #       ],
    #       remove: [
    #         {
    #           group: "all", # accepts all
    #           user_id: "String",
    #         },
    #       ],
    #     },
    #     operation_type: "add", # accepts add, remove
    #     product_codes: ["String"],
    #     user_groups: ["String"],
    #     user_ids: ["String"],
    #     value: "String",
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :attribute
    #   The name of the attribute to modify. The valid values are
    #   `description`, `launchPermission`, and `productCodes`.
    # @option options [Types::AttributeValue] :description
    #   A new description for the AMI.
    # @option options [Types::LaunchPermissionModifications] :launch_permission
    #   A new launch permission for the AMI.
    # @option options [String] :operation_type
    #   The operation type. This parameter can be used only when the
    #   `Attribute` parameter is `launchPermission`.
    # @option options [Array<String>] :product_codes
    #   One or more DevPay product codes. After you add a product code to an
    #   AMI, it can't be removed.
    # @option options [Array<String>] :user_groups
    #   One or more user groups. This parameter can be used only when the
    #   `Attribute` parameter is `launchPermission`.
    # @option options [Array<String>] :user_ids
    #   One or more AWS account IDs. This parameter can be used only when the
    #   `Attribute` parameter is `launchPermission`.
    # @option options [String] :value
    #   The value of the attribute being modified. This parameter can be used
    #   only when the `Attribute` parameter is `description` or
    #   `productCodes`.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def modify_attribute(options = {})
      options = options.merge(image_id: @id)
      resp = @client.modify_image_attribute(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   image.reset_attribute({
    #     attribute: "launchPermission", # required, accepts launchPermission
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :attribute
    #   The attribute to reset (currently you can only reset the launch
    #   permission attribute).
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def reset_attribute(options = {})
      options = options.merge(image_id: @id)
      resp = @client.reset_image_attribute(options)
      resp.data
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

    def yield_waiter_and_warn(waiter, &block)
      if !@waiter_block_warned
        msg = "pass options to configure the waiter; "
        msg << "yielding the waiter is deprecated"
        warn(msg)
        @waiter_block_warned = true
      end
      yield(waiter.waiter)
    end

    def separate_params_and_options(options)
      opts = Set.new([:client, :max_attempts, :delay, :before_attempt, :before_wait])
      waiter_opts = {}
      waiter_params = {}
      options.each_pair do |key, value|
        if opts.include?(key)
          waiter_opts[key] = value
        else
          waiter_params[key] = value
        end
      end
      waiter_opts[:client] ||= @client
      [waiter_opts, waiter_params]
    end

    class Collection < Aws::Resources::Collection; end
  end
end
