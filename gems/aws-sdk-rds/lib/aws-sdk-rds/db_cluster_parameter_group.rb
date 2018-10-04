# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  class DBClusterParameterGroup

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
    alias :db_cluster_parameter_group_name :name

    # Provides the name of the DB parameter group family that this DB
    # cluster parameter group is compatible with.
    # @return [String]
    def db_parameter_group_family
      data[:db_parameter_group_family]
    end

    # Provides the customer-specified description for this DB cluster
    # parameter group.
    # @return [String]
    def description
      data[:description]
    end

    # The Amazon Resource Name (ARN) for the DB cluster parameter group.
    # @return [String]
    def db_cluster_parameter_group_arn
      data[:db_cluster_parameter_group_arn]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {DBClusterParameterGroup}.
    # Returns `self` making it possible to chain methods.
    #
    #     db_cluster_parameter_group.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_db_cluster_parameter_groups(db_cluster_parameter_group_name: @name)
      @data = resp.db_cluster_parameter_groups[0]
      self
    end
    alias :reload :load

    # @return [Types::DBClusterParameterGroup]
    #   Returns the data for this {DBClusterParameterGroup}. Calls
    #   {Client#describe_db_cluster_parameter_groups} if {#data_loaded?} is `false`.
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

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   dbclusterparametergroup = db_cluster_parameter_group.create({
    #     db_parameter_group_family: "String", # required
    #     description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :db_parameter_group_family
    #   The DB cluster parameter group family name. A DB cluster parameter
    #   group can be associated with one and only one DB cluster parameter
    #   group family, and can be applied only to a DB cluster running a
    #   database engine and engine version compatible with that DB cluster
    #   parameter group family.
    #
    #   **Aurora MySQL**
    #
    #   Example: `aurora5.6`, `aurora-mysql5.7`
    #
    #   **Aurora PostgreSQL**
    #
    #   Example: `aurora-postgresql9.6`
    # @option options [required, String] :description
    #   The description for the DB cluster parameter group.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @return [DBClusterParameterGroup]
    def create(options = {})
      options = options.merge(db_cluster_parameter_group_name: @name)
      resp = @client.create_db_cluster_parameter_group(options)
      DBClusterParameterGroup.new(
        name: resp.data.db_cluster_parameter_group.db_cluster_parameter_group_name,
        data: resp.data.db_cluster_parameter_group,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   db_cluster_parameter_group.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(db_cluster_parameter_group_name: @name)
      resp = @client.delete_db_cluster_parameter_group(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   dbclusterparametergroup = db_cluster_parameter_group.modify({
    #     parameters: [ # required
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         apply_type: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #         apply_method: "immediate", # accepts immediate, pending-reboot
    #         supported_engine_modes: ["String"],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, Array<Types::Parameter>] :parameters
    #   A list of parameters in the DB cluster parameter group to modify.
    # @return [DBClusterParameterGroup]
    def modify(options = {})
      options = options.merge(db_cluster_parameter_group_name: @name)
      resp = @client.modify_db_cluster_parameter_group(options)
      DBClusterParameterGroup.new(
        name: resp.data.db_cluster_parameter_group_name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbclusterparametergroup = db_cluster_parameter_group.reset({
    #     reset_all_parameters: false,
    #     parameters: [
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         apply_type: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #         apply_method: "immediate", # accepts immediate, pending-reboot
    #         supported_engine_modes: ["String"],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :reset_all_parameters
    #   A value that is set to `true` to reset all parameters in the DB
    #   cluster parameter group to their default values, and `false`
    #   otherwise. You can't use this parameter if there is a list of
    #   parameter names specified for the `Parameters` parameter.
    # @option options [Array<Types::Parameter>] :parameters
    #   A list of parameter names in the DB cluster parameter group to reset
    #   to the default values. You can't use this parameter if the
    #   `ResetAllParameters` parameter is set to `true`.
    # @return [DBClusterParameterGroup]
    def reset(options = {})
      options = options.merge(db_cluster_parameter_group_name: @name)
      resp = @client.reset_db_cluster_parameter_group(options)
      DBClusterParameterGroup.new(
        name: resp.data.db_cluster_parameter_group_name,
        client: @client
      )
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
