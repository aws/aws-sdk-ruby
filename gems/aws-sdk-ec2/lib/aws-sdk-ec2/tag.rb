# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2
  class Tag

    extend Aws::Deprecations

    # @overload def initialize(resource_id, key, value, options = {})
    #   @param [String] resource_id
    #   @param [String] key
    #   @param [String] value
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :resource_id
    #   @option options [required, String] :key
    #   @option options [required, String] :value
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @resource_id = extract_resource_id(args, options)
      @key = extract_key(args, options)
      @value = extract_value(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def resource_id
      @resource_id
    end

    # @return [String]
    def key
      @key
    end

    # @return [String]
    def value
      @value
    end

    # The resource type.
    # @return [String]
    def resource_type
      data[:resource_type]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Tag}.
    # Returns `self` making it possible to chain methods.
    #
    #     tag.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_tags(filters: [
        {
          name: "key",
          values: [@key]
        },
        {
          name: "value",
          values: [@value]
        }
      ])
      @data = resp.tags[0]
      self
    end
    alias :reload :load

    # @return [Types::TagDescription]
    #   Returns the data for this {Tag}. Calls
    #   {Client#describe_tags} if {#data_loaded?} is `false`.
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

    # @deprecated Use [Aws::EC2::Client] #wait_until instead
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
    #   tag.delete({
    #     dry_run: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<Types::Tag>] :tags
    #   One or more tags to delete. Specify a tag key and an optional tag
    #   value to delete specific tags. If you specify a tag key without a tag
    #   value, we delete any tag with this key regardless of its value. If you
    #   specify a tag key with an empty string as the tag value, we delete the
    #   tag only if its value is an empty string.
    #
    #   If you omit this parameter, we delete all user-defined tags for the
    #   specified resources. We do not delete AWS-generated tags (tags that
    #   have the `aws:` prefix).
    # @return [EmptyStructure]
    def delete(options = {})
      options = Aws::Util.deep_merge(options,
        resources: [@resource_id],
        tags: [{
          key: @key,
          value: @value
        }]
      )
      resp = @client.delete_tags(options)
      resp.data
    end

    # @deprecated
    # @api private
    def identifiers
      {
        resource_id: @resource_id,
        key: @key,
        value: @value
      }
    end
    deprecated(:identifiers)

    private

    def extract_resource_id(args, options)
      value = args[0] || options.delete(:resource_id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :resource_id"
      else
        msg = "expected :resource_id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_key(args, options)
      value = args[1] || options.delete(:key)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :key"
      else
        msg = "expected :key to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_value(args, options)
      value = args[2] || options.delete(:value)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :value"
      else
        msg = "expected :value to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection

      # @!group Batch Actions

      # @example Request syntax with placeholder values
      #
      #   tag.batch_delete!({
      #     dry_run: false,
      #   })
      # @param options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [void]
      def batch_delete!(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:resources] ||= []
          params[:tags] ||= []
          batch.each do |item|
            params[:resources] << item.resource_id
            params[:tags] << {
              key: item.key,
              value: item.value
            }
          end
          batch[0].client.delete_tags(params)
        end
        nil
      end

      # @!endgroup

    end
  end
end
