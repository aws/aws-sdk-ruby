# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Glacier
  class Notification

    extend Aws::Deprecations

    # @overload def initialize(account_id, vault_name, options = {})
    #   @param [String] account_id
    #   @param [String] vault_name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :account_id
    #   @option options [required, String] :vault_name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @account_id = extract_account_id(args, options)
      @vault_name = extract_vault_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def account_id
      @account_id
    end

    # @return [String]
    def vault_name
      @vault_name
    end

    # The Amazon Simple Notification Service (Amazon SNS) topic Amazon
    # Resource Name (ARN).
    # @return [String]
    def sns_topic
      data[:sns_topic]
    end

    # A list of one or more events for which Amazon Glacier will send a
    # notification to the specified Amazon SNS topic.
    # @return [Array<String>]
    def events
      data[:events]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Notification}.
    # Returns `self` making it possible to chain methods.
    #
    #     notification.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_vault_notifications(
        account_id: @account_id,
        vault_name: @vault_name
      )
      @data = resp.vault_notification_config
      self
    end
    alias :reload :load

    # @return [Types::VaultNotificationConfig]
    #   Returns the data for this {Notification}. Calls
    #   {Client#get_vault_notifications} if {#data_loaded?} is `false`.
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

    # @deprecated Use [Aws::Glacier::Client] #wait_until instead
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
    #   notification.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(
        account_id: @account_id,
        vault_name: @vault_name
      )
      resp = @client.delete_vault_notifications(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   notification.set({
    #     vault_notification_config: {
    #       sns_topic: "string",
    #       events: ["string"],
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [Types::VaultNotificationConfig] :vault_notification_config
    #   Provides options for specifying notification configuration.
    # @return [EmptyStructure]
    def set(options = {})
      options = options.merge(
        account_id: @account_id,
        vault_name: @vault_name
      )
      resp = @client.set_vault_notifications(options)
      resp.data
    end

    # @!group Associations

    # @return [Vault]
    def vault
      Vault.new(
        account_id: @account_id,
        name: @vault_name,
        client: @client
      )
    end

    # @deprecated
    # @api private
    def identifiers
      {
        account_id: @account_id,
        vault_name: @vault_name
      }
    end
    deprecated(:identifiers)

    private

    def extract_account_id(args, options)
      value = args[0] || options.delete(:account_id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :account_id"
      else
        msg = "expected :account_id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_vault_name(args, options)
      value = args[1] || options.delete(:vault_name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :vault_name"
      else
        msg = "expected :vault_name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
