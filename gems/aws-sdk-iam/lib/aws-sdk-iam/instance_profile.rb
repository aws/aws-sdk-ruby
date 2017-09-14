# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  class InstanceProfile

    extend Aws::Deprecations

    # @overload def initialize(name, options = {})
    #   @param [String] name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @name = extract_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def name
      @name
    end
    alias :instance_profile_name :name

    # The path to the instance profile. For more information about paths,
    # see [IAM Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @return [String]
    def path
      data[:path]
    end

    # The stable and unique string identifying the instance profile. For
    # more information about IDs, see [IAM Identifiers][1] in the *Using
    # IAM* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @return [String]
    def instance_profile_id
      data[:instance_profile_id]
    end

    # The Amazon Resource Name (ARN) specifying the instance profile. For
    # more information about ARNs and how to use them in policies, see [IAM
    # Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @return [String]
    def arn
      data[:arn]
    end

    # The date when the instance profile was created.
    # @return [Time]
    def create_date
      data[:create_date]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {InstanceProfile}.
    # Returns `self` making it possible to chain methods.
    #
    #     instance_profile.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_instance_profile(instance_profile_name: @name)
      @data = resp.instance_profile
      self
    end
    alias :reload :load

    # @return [Types::InstanceProfile]
    #   Returns the data for this {InstanceProfile}. Calls
    #   {Client#get_instance_profile} if {#data_loaded?} is `false`.
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
    #   Returns `true` if the InstanceProfile exists.
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
    # @option options [Float] :delay (1)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [InstanceProfile]
    def wait_until_exists(options = {})
      options, params = separate_params_and_options(options)
      waiter = Waiters::InstanceProfileExists.new(options)
      yield_waiter_and_warn(waiter, &Proc.new) if block_given?
      waiter.wait(params.merge(instance_profile_name: @name))
      InstanceProfile.new({
        name: @name,
        client: @client
      })
    end

    # @deprecated Use [Aws::IAM::Client] #wait_until instead
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
    #   instance_profile.add_role({
    #     role_name: "roleNameType", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :role_name
    #   The name of the role to add.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    # @return [EmptyStructure]
    def add_role(options = {})
      options = options.merge(instance_profile_name: @name)
      resp = @client.add_role_to_instance_profile(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance_profile.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(instance_profile_name: @name)
      resp = @client.delete_instance_profile(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance_profile.remove_role({
    #     role_name: "roleNameType", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :role_name
    #   The name of the role to remove.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    # @return [EmptyStructure]
    def remove_role(options = {})
      options = options.merge(instance_profile_name: @name)
      resp = @client.remove_role_from_instance_profile(options)
      resp.data
    end

    # @!group Associations

    # @return [Role::Collection]
    def roles
      batch = []
      data[:roles].each do |d|
        batch << Role.new(
          name: d[:role_name],
          data: d,
          client: @client
        )
      end
      Role::Collection.new([batch], size: batch.size)
    end

    # @deprecated
    # @api private
    def identifiers
      { name: @name }
    end
    deprecated(:identifiers)

    private

    def extract_name(args, options)
      value = args[0] || options.delete(:name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :name"
      else
        msg = "expected :name to be a String, got #{value.class}"
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
