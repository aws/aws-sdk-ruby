# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  class OptionGroupOption

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

    # The description of the option.
    # @return [String]
    def description
      data[:description]
    end

    # The name of the engine that this option can be applied to.
    # @return [String]
    def engine_name
      data[:engine_name]
    end

    # Indicates the major engine version that the option is available for.
    # @return [String]
    def major_engine_version
      data[:major_engine_version]
    end

    # The minimum required engine version for the option to be applied.
    # @return [String]
    def minimum_required_minor_engine_version
      data[:minimum_required_minor_engine_version]
    end

    # Specifies whether the option requires a port.
    # @return [Boolean]
    def port_required
      data[:port_required]
    end

    # If the option requires a port, specifies the default port for the
    # option.
    # @return [Integer]
    def default_port
      data[:default_port]
    end

    # The options that are prerequisites for this option.
    # @return [Array<String>]
    def options_depended_on
      data[:options_depended_on]
    end

    # The options that conflict with this option.
    # @return [Array<String>]
    def options_conflicts_with
      data[:options_conflicts_with]
    end

    # Persistent options can't be removed from an option group while DB
    # instances are associated with the option group. If you disassociate
    # all DB instances from the option group, your can remove the persistent
    # option from the option group.
    # @return [Boolean]
    def persistent
      data[:persistent]
    end

    # Permanent options can never be removed from an option group. An option
    # group containing a permanent option can't be removed from a DB
    # instance.
    # @return [Boolean]
    def permanent
      data[:permanent]
    end

    # If true, you must enable the Auto Minor Version Upgrade setting for
    # your DB instance before you can use this option. You can enable Auto
    # Minor Version Upgrade when you first create your DB instance, or by
    # modifying your DB instance later.
    # @return [Boolean]
    def requires_auto_minor_engine_version_upgrade
      data[:requires_auto_minor_engine_version_upgrade]
    end

    # If true, you can only use this option with a DB instance that is in a
    # VPC.
    # @return [Boolean]
    def vpc_only
      data[:vpc_only]
    end

    # If true, you can change the option to an earlier version of the
    # option. This only applies to options that have different versions
    # available.
    # @return [Boolean]
    def supports_option_version_downgrade
      data[:supports_option_version_downgrade]
    end

    # The option settings that are available (and the default value) for
    # each option in an option group.
    # @return [Array<Types::OptionGroupOptionSetting>]
    def option_group_option_settings
      data[:option_group_option_settings]
    end

    # The versions that are available for the option.
    # @return [Array<Types::OptionVersion>]
    def option_group_option_versions
      data[:option_group_option_versions]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # @raise [NotImplementedError]
    # @api private
    def load
      msg = "#load is not implemented, data only available via enumeration"
      raise NotImplementedError, msg
    end
    alias :reload :load

    # @raise [NotImplementedError] Raises when {#data_loaded?} is `false`.
    # @return [Types::OptionGroupOption]
    #   Returns the data for this {OptionGroupOption}.
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

    # @deprecated Use [Aws::RDS::Client] #wait_until instead
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

    class Collection < Aws::Resources::Collection; end
  end
end
