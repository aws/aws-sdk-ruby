# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OpsWorks
  class StackSummary

    extend Aws::Deprecations

    # @overload def initialize(stack_id, options = {})
    #   @param [String] stack_id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :stack_id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @stack_id = extract_stack_id(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def stack_id
      @stack_id
    end

    # The stack name.
    # @return [String]
    def name
      data.name
    end

    # The stack's ARN.
    # @return [String]
    def arn
      data.arn
    end

    # The number of layers.
    # @return [Integer]
    def layers_count
      data.layers_count
    end

    # The number of apps.
    # @return [Integer]
    def apps_count
      data.apps_count
    end

    # An `InstancesCount` object with the number of instances in each
    # status.
    # @return [Types::InstancesCount]
    def instances_count
      data.instances_count
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {StackSummary}.
    # Returns `self` making it possible to chain methods.
    #
    #     stack_summary.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_stack_summary(stack_id: @stack_id)
      @data = resp.stack_summary
      self
    end
    alias :reload :load

    # @return [Types::StackSummary]
    #   Returns the data for this {StackSummary}. Calls
    #   {Client#describe_stack_summary} if {#data_loaded?} is `false`.
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

    # @!group Associations

    # @return [Stack]
    def stack
      Stack.new(
        id: @stack_id,
        client: @client
      )
    end

    # @deprecated
    # @api private
    def identifiers
      { stack_id: @stack_id }
    end
    deprecated(:identifiers)

    private

    def extract_stack_id(args, options)
      value = args[0] || options.delete(:stack_id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :stack_id"
      else
        msg = "expected :stack_id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
