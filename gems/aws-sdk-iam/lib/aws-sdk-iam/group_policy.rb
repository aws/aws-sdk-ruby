# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  class GroupPolicy

    extend Aws::Deprecations

    # @overload def initialize(group_name, name, options = {})
    #   @param [String] group_name
    #   @param [String] name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :group_name
    #   @option options [required, String] :name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @group_name = extract_group_name(args, options)
      @name = extract_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def group_name
      @group_name
    end

    # @return [String]
    def name
      @name
    end
    alias :policy_name :name

    # The policy document.
    # @return [String]
    def policy_document
      data[:policy_document]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {GroupPolicy}.
    # Returns `self` making it possible to chain methods.
    #
    #     group_policy.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_group_policy(
        group_name: @group_name,
        policy_name: @name
      )
      @data = resp.data
      self
    end
    alias :reload :load

    # @return [Types::GetGroupPolicyResponse]
    #   Returns the data for this {GroupPolicy}. Calls
    #   {Client#get_group_policy} if {#data_loaded?} is `false`.
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
    #   group_policy.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(
        group_name: @group_name,
        policy_name: @name
      )
      resp = @client.delete_group_policy(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   group_policy.put({
    #     policy_document: "policyDocumentType", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :policy_document
    #   The policy document.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (\\u0020) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through \\u00FF)
    #
    #   * The special characters tab (\\u0009), line feed (\\u000A), and
    #     carriage return (\\u000D)
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    # @return [EmptyStructure]
    def put(options = {})
      options = options.merge(
        group_name: @group_name,
        policy_name: @name
      )
      resp = @client.put_group_policy(options)
      resp.data
    end

    # @!group Associations

    # @return [Group]
    def group
      Group.new(
        name: @group_name,
        client: @client
      )
    end

    # @deprecated
    # @api private
    def identifiers
      {
        group_name: @group_name,
        name: @name
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
