# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Glacier
  class Archive

    extend Aws::Deprecations

    # @overload def initialize(account_id, vault_name, id, options = {})
    #   @param [String] account_id
    #   @param [String] vault_name
    #   @param [String] id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :account_id
    #   @option options [required, String] :vault_name
    #   @option options [required, String] :id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @account_id = extract_account_id(args, options)
      @vault_name = extract_vault_name(args, options)
      @id = extract_id(args, options)
      @data = Aws::EmptyStructure.new
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

    # @return [String]
    def id
      @id
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

    # @api private
    # @return [EmptyStructure]
    def data
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
    #   archive.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(
        account_id: @account_id,
        vault_name: @vault_name,
        archive_id: @id
      )
      resp = @client.delete_archive(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   archive.initiate_archive_retrieval()
    # @param [Hash] options ({})
    # @return [Job]
    def initiate_archive_retrieval(options = {})
      options = Aws::Util.deep_merge(options,
        vault_name: @vault_name,
        account_id: @account_id,
        job_parameters: {
          type: "archive-retrieval",
          archive_id: @id
        }
      )
      resp = @client.initiate_job(options)
      Job.new(
        id: resp.data.job_id,
        account_id: @account_id,
        vault_name: @vault_name,
        client: @client
      )
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
        vault_name: @vault_name,
        id: @id
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

    def extract_id(args, options)
      value = args[2] || options.delete(:id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :id"
      else
        msg = "expected :id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
