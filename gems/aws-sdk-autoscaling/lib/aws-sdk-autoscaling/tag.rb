# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScaling
  class Tag

    extend Aws::Deprecations

    # @overload def initialize(key, resource_id, resource_type, options = {})
    #   @param [String] key
    #   @param [String] resource_id
    #   @param [String] resource_type
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :key
    #   @option options [required, String] :resource_id
    #   @option options [required, String] :resource_type
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @key = extract_key(args, options)
      @resource_id = extract_resource_id(args, options)
      @resource_type = extract_resource_type(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def key
      @key
    end

    # @return [String]
    def resource_id
      @resource_id
    end

    # @return [String]
    def resource_type
      @resource_type
    end

    # The tag value.
    # @return [String]
    def value
      data[:value]
    end

    # Determines whether the tag is added to new instances as they are
    # launched in the group.
    # @return [Boolean]
    def propagate_at_launch
      data[:propagate_at_launch]
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
          name: @resource_type,
          values: [@resource_id]
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

    # @deprecated Use [Aws::AutoScaling::Client] #wait_until instead
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
    #   tag.create({
    #     tags: [ # required
    #       {
    #         resource_id: "XmlString",
    #         resource_type: "XmlString",
    #         key: "TagKey", # required
    #         value: "TagValue",
    #         propagate_at_launch: false,
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, Array<Types::Tag>] :tags
    #   One or more tags.
    # @return [EmptyStructure]
    def create(options = {})
      options = Aws::Util.deep_merge(options, tags: [{
        resource_type: @resource_type,
        resource_id: @resource_id,
        key: @key
      }])
      resp = @client.create_or_update_tags(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   tag.delete({
    #     tags: [ # required
    #       {
    #         resource_id: "XmlString",
    #         resource_type: "XmlString",
    #         key: "TagKey", # required
    #         value: "TagValue",
    #         propagate_at_launch: false,
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, Array<Types::Tag>] :tags
    #   One or more tags.
    # @return [EmptyStructure]
    def delete(options = {})
      options = Aws::Util.deep_merge(options, tags: [{
        resource_type: @resource_type,
        resource_id: @resource_id,
        key: @key
      }])
      resp = @client.delete_tags(options)
      resp.data
    end

    # @deprecated
    # @api private
    def identifiers
      {
        key: @key,
        resource_id: @resource_id,
        resource_type: @resource_type
      }
    end
    deprecated(:identifiers)

    private

    def extract_key(args, options)
      value = args[0] || options.delete(:key)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :key"
      else
        msg = "expected :key to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_resource_id(args, options)
      value = args[1] || options.delete(:resource_id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :resource_id"
      else
        msg = "expected :resource_id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_resource_type(args, options)
      value = args[2] || options.delete(:resource_type)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :resource_type"
      else
        msg = "expected :resource_type to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection

      # @!group Batch Actions

      # @param options ({})
      # @return [void]
      def batch_create(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:tags] ||= []
          batch.each do |item|
            params[:tags] << {
              resource_type: item.resource_type,
              resource_id: item.resource_id,
              key: item.key
            }
          end
          batch[0].client.create_or_update_tags(params)
        end
        nil
      end

      # @param options ({})
      # @return [void]
      def batch_delete!(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:tags] ||= []
          batch.each do |item|
            params[:tags] << {
              resource_type: item.resource_type,
              resource_id: item.resource_id,
              key: item.key
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
