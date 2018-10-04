# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  class DBParameterGroup

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
    alias :db_parameter_group_name :name

    # Provides the name of the DB parameter group family that this DB
    # parameter group is compatible with.
    # @return [String]
    def db_parameter_group_family
      data[:db_parameter_group_family]
    end

    # Provides the customer-specified description for this DB parameter
    # group.
    # @return [String]
    def description
      data[:description]
    end

    # The Amazon Resource Name (ARN) for the DB parameter group.
    # @return [String]
    def db_parameter_group_arn
      data[:db_parameter_group_arn]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {DBParameterGroup}.
    # Returns `self` making it possible to chain methods.
    #
    #     db_parameter_group.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_db_parameter_groups(db_parameter_group_name: @name)
      @data = resp.db_parameter_groups[0]
      self
    end
    alias :reload :load

    # @return [Types::DBParameterGroup]
    #   Returns the data for this {DBParameterGroup}. Calls
    #   {Client#describe_db_parameter_groups} if {#data_loaded?} is `false`.
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
    #   dbparametergroup = db_parameter_group.create({
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
    #   The DB parameter group family name. A DB parameter group can be
    #   associated with one and only one DB parameter group family, and can be
    #   applied only to a DB instance running a database engine and engine
    #   version compatible with that DB parameter group family.
    #
    #   To list all of the available parameter group families, use the
    #   following command:
    #
    #   `aws rds describe-db-engine-versions --query
    #   "DBEngineVersions[].DBParameterGroupFamily"`
    #
    #   <note markdown="1"> The output contains duplicates.
    #
    #    </note>
    # @option options [required, String] :description
    #   The description for the DB parameter group.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @return [DBParameterGroup]
    def create(options = {})
      options = options.merge(db_parameter_group_name: @name)
      resp = @client.create_db_parameter_group(options)
      DBParameterGroup.new(
        name: resp.data.db_parameter_group.db_parameter_group_name,
        data: resp.data.db_parameter_group,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbparametergroup = db_parameter_group.copy({
    #     target_db_parameter_group_identifier: "String", # required
    #     target_db_parameter_group_description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :target_db_parameter_group_identifier
    #   The identifier for the copied DB parameter group.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-db-parameter-group`
    # @option options [required, String] :target_db_parameter_group_description
    #   A description for the copied DB parameter group.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @return [DBParameterGroup]
    def copy(options = {})
      options = options.merge(source_db_parameter_group_identifier: @name)
      resp = @client.copy_db_parameter_group(options)
      DBParameterGroup.new(
        name: resp.data.db_parameter_group.db_parameter_group_name,
        data: resp.data.db_parameter_group,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   db_parameter_group.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(db_parameter_group_name: @name)
      resp = @client.delete_db_parameter_group(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   dbparametergroup = db_parameter_group.modify({
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
    #   An array of parameter names, values, and the apply method for the
    #   parameter update. At least one parameter name, value, and apply method
    #   must be supplied; subsequent arguments are optional. A maximum of 20
    #   parameters can be modified in a single request.
    #
    #   Valid Values (for the application method): `immediate |
    #   pending-reboot`
    #
    #   <note markdown="1"> You can use the immediate value with dynamic parameters only. You can
    #   use the pending-reboot value for both dynamic and static parameters,
    #   and changes are applied when you reboot the DB instance without
    #   failover.
    #
    #    </note>
    # @return [DBParameterGroup]
    def modify(options = {})
      options = options.merge(db_parameter_group_name: @name)
      resp = @client.modify_db_parameter_group(options)
      DBParameterGroup.new(
        name: resp.data.db_parameter_group_name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbparametergroup = db_parameter_group.reset({
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
    #   Specifies whether (`true`) or not (`false`) to reset all parameters in
    #   the DB parameter group to default values.
    #
    #   Default: `true`
    # @option options [Array<Types::Parameter>] :parameters
    #   To reset the entire DB parameter group, specify the `DBParameterGroup`
    #   name and `ResetAllParameters` parameters. To reset specific
    #   parameters, provide a list of the following: `ParameterName` and
    #   `ApplyMethod`. A maximum of 20 parameters can be modified in a single
    #   request.
    #
    #   **MySQL**
    #
    #   Valid Values (for Apply method): `immediate` \| `pending-reboot`
    #
    #   You can use the immediate value with dynamic parameters only. You can
    #   use the `pending-reboot` value for both dynamic and static parameters,
    #   and changes are applied when DB instance reboots.
    #
    #   **MariaDB**
    #
    #   Valid Values (for Apply method): `immediate` \| `pending-reboot`
    #
    #   You can use the immediate value with dynamic parameters only. You can
    #   use the `pending-reboot` value for both dynamic and static parameters,
    #   and changes are applied when DB instance reboots.
    #
    #   **Oracle**
    #
    #   Valid Values (for Apply method): `pending-reboot`
    # @return [DBParameterGroup]
    def reset(options = {})
      options = options.merge(db_parameter_group_name: @name)
      resp = @client.reset_db_parameter_group(options)
      DBParameterGroup.new(
        name: resp.data.db_parameter_group_name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   eventsubscription = db_parameter_group.subscribe_to({
    #     subscription_name: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :subscription_name
    #   The name of the RDS event notification subscription you want to add a
    #   source identifier to.
    # @return [EventSubscription]
    def subscribe_to(options = {})
      options = options.merge(source_identifier: @name)
      resp = @client.add_source_identifier_to_subscription(options)
      EventSubscription.new(
        name: resp.data.event_subscription.cust_subscription_id,
        data: resp.data.event_subscription,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   eventsubscription = db_parameter_group.unsubscribe_from({
    #     subscription_name: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :subscription_name
    #   The name of the RDS event notification subscription you want to remove
    #   a source identifier from.
    # @return [EventSubscription]
    def unsubscribe_from(options = {})
      options = options.merge(source_identifier: @name)
      resp = @client.remove_source_identifier_from_subscription(options)
      EventSubscription.new(
        name: resp.data.event_subscription.cust_subscription_id,
        data: resp.data.event_subscription,
        client: @client
      )
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   events = db_parameter_group.events({
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     event_categories: ["String"],
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Time,DateTime,Date,Integer,String] :start_time
    #   The beginning of the time interval to retrieve events for, specified
    #   in ISO 8601 format. For more information about ISO 8601, go to the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   Example: 2009-07-08T18:00Z
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    # @option options [Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time interval for which to retrieve events, specified
    #   in ISO 8601 format. For more information about ISO 8601, go to the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   Example: 2009-07-08T18:00Z
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    # @option options [Integer] :duration
    #   The number of minutes to retrieve events for.
    #
    #   Default: 60
    # @option options [Array<String>] :event_categories
    #   A list of event categories that trigger notifications for a event
    #   notification subscription.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    # @return [Event::Collection]
    def events(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          source_type: "db-parameter-group",
          source_identifier: @name
        )
        resp = @client.describe_events(options)
        resp.each_page do |page|
          batch = []
          page.data.events.each do |e|
            batch << Event.new(
              source_id: e.source_identifier,
              date: e.date,
              data: e,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Event::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   parameters = db_parameter_group.parameters({
    #     source: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :source
    #   The parameter types to return.
    #
    #   Default: All parameter types returned
    #
    #   Valid Values: `user | system | engine-default`
    # @option options [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    # @return [Parameter::Collection]
    def parameters(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(db_parameter_group_name: @name)
        resp = @client.describe_db_parameters(options)
        resp.each_page do |page|
          batch = []
          page.data.parameters.each do |p|
            batch << Parameter.new(
              name: p.parameter_name,
              data: p,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Parameter::Collection.new(batches)
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
