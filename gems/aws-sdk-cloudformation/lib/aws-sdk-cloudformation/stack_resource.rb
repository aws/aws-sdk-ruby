# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudFormation
  class StackResource

    extend Aws::Deprecations

    # @overload def initialize(stack_name, logical_id, options = {})
    #   @param [String] stack_name
    #   @param [String] logical_id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :stack_name
    #   @option options [required, String] :logical_id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @stack_name = extract_stack_name(args, options)
      @logical_id = extract_logical_id(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def stack_name
      @stack_name
    end

    # @return [String]
    def logical_id
      @logical_id
    end
    alias :logical_resource_id :logical_id

    # Unique identifier of the stack.
    # @return [String]
    def stack_id
      data.stack_id
    end

    # The name or unique identifier that corresponds to a physical instance
    # ID of a resource supported by AWS CloudFormation.
    # @return [String]
    def physical_resource_id
      data.physical_resource_id
    end

    # Type of resource. ((For more information, go to [ AWS Resource Types
    # Reference][1] in the AWS CloudFormation User Guide.)
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    # @return [String]
    def resource_type
      data.resource_type
    end

    # Time the status was updated.
    # @return [Time]
    def last_updated_timestamp
      data.last_updated_timestamp
    end

    # Current status of the resource.
    # @return [String]
    def resource_status
      data.resource_status
    end

    # Success/failure message associated with the resource.
    # @return [String]
    def resource_status_reason
      data.resource_status_reason
    end

    # User defined description associated with the resource.
    # @return [String]
    def description
      data.description
    end

    # The content of the `Metadata` attribute declared for the resource. For
    # more information, see [Metadata Attribute][1] in the AWS
    # CloudFormation User Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-metadata.html
    # @return [String]
    def metadata
      data.metadata
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {StackResource}.
    # Returns `self` making it possible to chain methods.
    #
    #     stack_resource.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_stack_resource(
        logical_resource_id: @logical_id,
        stack_name: @stack_name
      )
      @data = resp.stack_resource_detail
      self
    end
    alias :reload :load

    # @return [Types::StackResourceDetail]
    #   Returns the data for this {StackResource}. Calls
    #   {Client#describe_stack_resource} if {#data_loaded?} is `false`.
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
        name: @stack_name,
        client: @client
      )
    end

    # @deprecated
    # @api private
    def identifiers
      {
        stack_name: @stack_name,
        logical_id: @logical_id
      }
    end
    deprecated(:identifiers)

    private

    def extract_stack_name(args, options)
      value = args[0] || options.delete(:stack_name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :stack_name"
      else
        msg = "expected :stack_name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_logical_id(args, options)
      value = args[1] || options.delete(:logical_id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :logical_id"
      else
        msg = "expected :logical_id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
