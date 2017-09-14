# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  class DBSnapshotAttribute

    extend Aws::Deprecations

    # @overload def initialize(snapshot_id, name, options = {})
    #   @param [String] snapshot_id
    #   @param [String] name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :snapshot_id
    #   @option options [required, String] :name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @snapshot_id = extract_snapshot_id(args, options)
      @name = extract_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def snapshot_id
      @snapshot_id
    end

    # @return [String]
    def name
      @name
    end
    alias :attribute_name :name

    # The value or values for the manual DB snapshot attribute.
    #
    # If the `AttributeName` field is set to `restore`, then this element
    # returns a list of IDs of the AWS accounts that are authorized to copy
    # or restore the manual DB snapshot. If a value of `all` is in the list,
    # then the manual DB snapshot is public and available for any AWS
    # account to copy or restore.
    # @return [Array<String>]
    def attribute_values
      data[:attribute_values]
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
    # @return [Types::DBSnapshotAttribute]
    #   Returns the data for this {DBSnapshotAttribute}.
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
    #   db_snapshot_attribute.modify({
    #     values_to_add: ["String"],
    #     values_to_remove: ["String"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :values_to_add
    #   A list of DB snapshot attributes to add to the attribute specified by
    #   `AttributeName`.
    #
    #   To authorize other AWS accounts to copy or restore a manual snapshot,
    #   set this list to include one or more AWS account IDs, or `all` to make
    #   the manual DB snapshot restorable by any AWS account. Do not add the
    #   `all` value for any manual DB snapshots that contain private
    #   information that you don't want available to all AWS accounts.
    # @option options [Array<String>] :values_to_remove
    #   A list of DB snapshot attributes to remove from the attribute
    #   specified by `AttributeName`.
    #
    #   To remove authorization for other AWS accounts to copy or restore a
    #   manual snapshot, set this list to include one or more AWS account
    #   identifiers, or `all` to remove authorization for any AWS account to
    #   copy or restore the DB snapshot. If you specify `all`, an AWS account
    #   whose account ID is explicitly added to the `restore` attribute can
    #   still copy or restore the manual DB snapshot.
    # @return [Types::ModifyDBSnapshotAttributeResult]
    def modify(options = {})
      options = options.merge(
        attribute_name: @name,
        db_snapshot_identifier: @snapshot_id
      )
      resp = @client.modify_db_snapshot_attribute(options)
      resp.data
    end

    # @deprecated
    # @api private
    def identifiers
      {
        snapshot_id: @snapshot_id,
        name: @name
      }
    end
    deprecated(:identifiers)

    private

    def extract_snapshot_id(args, options)
      value = args[0] || options.delete(:snapshot_id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :snapshot_id"
      else
        msg = "expected :snapshot_id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_name(args, options)
      value = args[1] || options.delete(:name)
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
