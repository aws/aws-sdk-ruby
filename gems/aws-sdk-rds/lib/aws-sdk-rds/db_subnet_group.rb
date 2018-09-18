# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  class DBSubnetGroup

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
    alias :db_subnet_group_name :name

    # Provides the description of the DB subnet group.
    # @return [String]
    def db_subnet_group_description
      data[:db_subnet_group_description]
    end

    # Provides the VpcId of the DB subnet group.
    # @return [String]
    def vpc_id
      data[:vpc_id]
    end

    # Provides the status of the DB subnet group.
    # @return [String]
    def subnet_group_status
      data[:subnet_group_status]
    end

    # Contains a list of Subnet elements.
    # @return [Array<Types::Subnet>]
    def subnets
      data[:subnets]
    end

    # The Amazon Resource Name (ARN) for the DB subnet group.
    # @return [String]
    def db_subnet_group_arn
      data[:db_subnet_group_arn]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {DBSubnetGroup}.
    # Returns `self` making it possible to chain methods.
    #
    #     db_subnet_group.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_db_subnet_groups(db_subnet_group_name: @name)
      @data = resp.db_subnet_groups[0]
      self
    end
    alias :reload :load

    # @return [Types::DBSubnetGroup]
    #   Returns the data for this {DBSubnetGroup}. Calls
    #   {Client#describe_db_subnet_groups} if {#data_loaded?} is `false`.
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
    #   dbsubnetgroup = db_subnet_group.create({
    #     db_subnet_group_description: "String", # required
    #     subnet_ids: ["String"], # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :db_subnet_group_description
    #   The description for the DB subnet group.
    # @option options [required, Array<String>] :subnet_ids
    #   The EC2 Subnet IDs for the DB subnet group.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @return [DBSubnetGroup]
    def create(options = {})
      options = options.merge(db_subnet_group_name: @name)
      resp = @client.create_db_subnet_group(options)
      DBSubnetGroup.new(
        name: resp.data.db_subnet_group.db_subnet_group_name,
        data: resp.data.db_subnet_group,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   db_subnet_group.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(db_subnet_group_name: @name)
      resp = @client.delete_db_subnet_group(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   dbsubnetgroup = db_subnet_group.modify({
    #     db_subnet_group_description: "String",
    #     subnet_ids: ["String"], # required
    #   })
    # @param [Hash] options ({})
    # @option options [String] :db_subnet_group_description
    #   The description for the DB subnet group.
    # @option options [required, Array<String>] :subnet_ids
    #   The EC2 subnet IDs for the DB subnet group.
    # @return [DBSubnetGroup]
    def modify(options = {})
      options = options.merge(db_subnet_group_name: @name)
      resp = @client.modify_db_subnet_group(options)
      DBSubnetGroup.new(
        name: resp.data.db_subnet_group.db_subnet_group_name,
        data: resp.data.db_subnet_group,
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
