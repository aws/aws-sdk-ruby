# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScaling
  class Instance

    extend Aws::Deprecations

    # @overload def initialize(group_name, id, options = {})
    #   @param [String] group_name
    #   @param [String] id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :group_name
    #   @option options [required, String] :id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @group_name = extract_group_name(args, options)
      @id = extract_id(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def group_name
      @group_name
    end
    alias :auto_scaling_group_name :group_name

    # @return [String]
    def id
      @id
    end
    alias :instance_id :id

    # The Availability Zone for the instance.
    # @return [String]
    def availability_zone
      data[:availability_zone]
    end

    # The lifecycle state for the instance. For more information, see [Auto
    # Scaling Lifecycle][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroupLifecycle.html
    # @return [String]
    def lifecycle_state
      data[:lifecycle_state]
    end

    # The last reported health status of this instance. "Healthy" means
    # that the instance is healthy and should remain in service.
    # "Unhealthy" means that the instance is unhealthy and Amazon EC2 Auto
    # Scaling should terminate and replace it.
    # @return [String]
    def health_status
      data[:health_status]
    end

    # The launch configuration used to launch the instance. This value is
    # not available if you attached the instance to the Auto Scaling group.
    # @return [String]
    def launch_configuration_name
      data[:launch_configuration_name]
    end

    # The launch template for the instance.
    # @return [Types::LaunchTemplateSpecification]
    def launch_template
      data[:launch_template]
    end

    # Indicates whether the instance is protected from termination by Amazon
    # EC2 Auto Scaling when scaling in.
    # @return [Boolean]
    def protected_from_scale_in
      data[:protected_from_scale_in]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Instance}.
    # Returns `self` making it possible to chain methods.
    #
    #     instance.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_auto_scaling_instances(instance_ids: [@id])
      @data = resp.auto_scaling_instances[0]
      self
    end
    alias :reload :load

    # @return [Types::AutoScalingInstanceDetails]
    #   Returns the data for this {Instance}. Calls
    #   {Client#describe_auto_scaling_instances} if {#data_loaded?} is `false`.
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

    # @deprecated Use [Aws::AutoScaling::Client] #wait_until instead
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
    #   instance.attach()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def attach(options = {})
      options = Aws::Util.deep_merge(options,
        auto_scaling_group_name: @group_name,
        instance_ids: [@id]
      )
      resp = @client.attach_instances(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   activity = instance.detach({
    #     should_decrement_desired_capacity: false, # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, Boolean] :should_decrement_desired_capacity
    #   Indicates whether the Auto Scaling group decrements the desired
    #   capacity value by the number of instances detached.
    # @return [Activity::Collection]
    def detach(options = {})
      batch = []
      options = Aws::Util.deep_merge(options,
        auto_scaling_group_name: @group_name,
        instance_ids: [@id]
      )
      resp = @client.detach_instances(options)
      resp.data.activities.each do |a|
        batch << Activity.new(
          id: a.activity_id,
          data: a,
          client: @client
        )
      end
      Activity::Collection.new([batch], size: batch.size)
    end

    # @example Request syntax with placeholder values
    #
    #   activity = instance.enter_standby({
    #     should_decrement_desired_capacity: false, # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, Boolean] :should_decrement_desired_capacity
    #   Indicates whether to decrement the desired capacity of the Auto
    #   Scaling group by the number of instances moved to `Standby` mode.
    # @return [Activity::Collection]
    def enter_standby(options = {})
      batch = []
      options = Aws::Util.deep_merge(options,
        auto_scaling_group_name: @group_name,
        instance_ids: [@id]
      )
      resp = @client.enter_standby(options)
      resp.data.activities.each do |a|
        batch << Activity.new(
          id: a.activity_id,
          data: a,
          client: @client
        )
      end
      Activity::Collection.new([batch], size: batch.size)
    end

    # @example Request syntax with placeholder values
    #
    #   instance.exit_standby()
    # @param [Hash] options ({})
    # @return [Activity::Collection]
    def exit_standby(options = {})
      batch = []
      options = Aws::Util.deep_merge(options,
        auto_scaling_group_name: @group_name,
        instance_ids: [@id]
      )
      resp = @client.exit_standby(options)
      resp.data.activities.each do |a|
        batch << Activity.new(
          id: a.activity_id,
          data: a,
          client: @client
        )
      end
      Activity::Collection.new([batch], size: batch.size)
    end

    # @example Request syntax with placeholder values
    #
    #   instance.set_health({
    #     health_status: "XmlStringMaxLen32", # required
    #     should_respect_grace_period: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :health_status
    #   The health status of the instance. Set to `Healthy` if you want the
    #   instance to remain in service. Set to `Unhealthy` if you want the
    #   instance to be out of service. Amazon EC2 Auto Scaling will terminate
    #   and replace the unhealthy instance.
    # @option options [Boolean] :should_respect_grace_period
    #   If the Auto Scaling group of the specified instance has a
    #   `HealthCheckGracePeriod` specified for the group, by default, this
    #   call will respect the grace period. Set this to `False`, if you do not
    #   want the call to respect the grace period associated with the group.
    #
    #   For more information, see the description of the health check grace
    #   period for CreateAutoScalingGroup.
    # @return [EmptyStructure]
    def set_health(options = {})
      options = options.merge(instance_id: @id)
      resp = @client.set_instance_health(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   activity = instance.terminate({
    #     should_decrement_desired_capacity: false, # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, Boolean] :should_decrement_desired_capacity
    #   Indicates whether terminating the instance also decrements the size of
    #   the Auto Scaling group.
    # @return [Activity]
    def terminate(options = {})
      options = options.merge(instance_id: @id)
      resp = @client.terminate_instance_in_auto_scaling_group(options)
      Activity.new(
        id: resp.data.activity.activity_id,
        data: resp.data.activity,
        client: @client
      )
    end

    # @!group Associations

    # @return [AutoScalingGroup]
    def group
      AutoScalingGroup.new(
        name: @group_name,
        client: @client
      )
    end

    # @return [LaunchConfiguration, nil]
    def launch_configuration
      if data[:launch_configuration_name]
        LaunchConfiguration.new(
          name: data[:launch_configuration_name],
          client: @client
        )
      else
        nil
      end
    end

    # @deprecated
    # @api private
    def identifiers
      {
        group_name: @group_name,
        id: @id
      }
    end
    deprecated(:identifiers)

    private

    def extract_group_name(args, options)
      value = args[0] || options.delete(:group_name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :group_name"
      else
        msg = "expected :group_name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_id(args, options)
      value = args[1] || options.delete(:id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :id"
      else
        msg = "expected :id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection

      # @!group Batch Actions

      # @param options ({})
      # @return [void]
      def batch_attach(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:auto_scaling_group_name] = batch[0].group_name
          params[:instance_ids] ||= []
          batch.each do |item|
            params[:instance_ids] << item.id
          end
          batch[0].client.attach_instances(params)
        end
        nil
      end

      # @example Request syntax with placeholder values
      #
      #   instance.batch_detach({
      #     should_decrement_desired_capacity: false, # required
      #   })
      # @param options ({})
      # @option options [required, Boolean] :should_decrement_desired_capacity
      #   Indicates whether the Auto Scaling group decrements the desired
      #   capacity value by the number of instances detached.
      # @return [void]
      def batch_detach(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:auto_scaling_group_name] = batch[0].group_name
          params[:instance_ids] ||= []
          batch.each do |item|
            params[:instance_ids] << item.id
          end
          batch[0].client.detach_instances(params)
        end
        nil
      end

      # @example Request syntax with placeholder values
      #
      #   instance.batch_enter_standby({
      #     should_decrement_desired_capacity: false, # required
      #   })
      # @param options ({})
      # @option options [required, Boolean] :should_decrement_desired_capacity
      #   Indicates whether to decrement the desired capacity of the Auto
      #   Scaling group by the number of instances moved to `Standby` mode.
      # @return [void]
      def batch_enter_standby(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:auto_scaling_group_name] = batch[0].group_name
          params[:instance_ids] ||= []
          batch.each do |item|
            params[:instance_ids] << item.id
          end
          batch[0].client.enter_standby(params)
        end
        nil
      end

      # @param options ({})
      # @return [void]
      def batch_exit_standby(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:auto_scaling_group_name] = batch[0].group_name
          params[:instance_ids] ||= []
          batch.each do |item|
            params[:instance_ids] << item.id
          end
          batch[0].client.exit_standby(params)
        end
        nil
      end

      # @!endgroup

    end
  end
end
