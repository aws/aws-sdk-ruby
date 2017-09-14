# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  class Event

    extend Aws::Deprecations

    # @overload def initialize(source_id, date, options = {})
    #   @param [String] source_id
    #   @param [String] date
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :source_id
    #   @option options [required, String] :date
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @source_id = extract_source_id(args, options)
      @date = extract_date(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def source_id
      @source_id
    end
    alias :source_identifier :source_id

    # @return [String]
    def date
      @date
    end

    # Specifies the source type for this event.
    # @return [String]
    def source_type
      data[:source_type]
    end

    # Provides the text of this event.
    # @return [String]
    def message
      data[:message]
    end

    # Specifies the category for the event.
    # @return [Array<String>]
    def event_categories
      data[:event_categories]
    end

    # The Amazon Resource Name (ARN) for the event.
    # @return [String]
    def source_arn
      data[:source_arn]
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
    # @return [Types::Event]
    #   Returns the data for this {Event}.
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
      {
        source_id: @source_id,
        date: @date
      }
    end
    deprecated(:identifiers)

    private

    def extract_source_id(args, options)
      value = args[0] || options.delete(:source_id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :source_id"
      else
        msg = "expected :source_id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_date(args, options)
      value = args[1] || options.delete(:date)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :date"
      else
        msg = "expected :date to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
