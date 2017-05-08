# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  class EventCategoryMap

    extend Aws::Deprecations

    # @overload def initialize(source_type, options = {})
    #   @param [String] source_type
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :source_type
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @source_type = extract_source_type(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def source_type
      @source_type
    end

    # The event categories for the specified source type
    # @return [Array<String>]
    def event_categories
      data.event_categories
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {EventCategoryMap}.
    # Returns `self` making it possible to chain methods.
    #
    #     event_category_map.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_event_categories(source_type: @name)
      @data = resp.event_categories_map_list[0]
      self
    end
    alias :reload :load

    # @return [Types::EventCategoriesMap]
    #   Returns the data for this {EventCategoryMap}. Calls
    #   {Client#describe_event_categories} if {#data_loaded?} is `false`.
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

    # @deprecated
    # @api private
    def identifiers
      { source_type: @source_type }
    end
    deprecated(:identifiers)

    private

    def extract_source_type(args, options)
      value = args[0] || options.delete(:source_type)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :source_type"
      else
        msg = "expected :source_type to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
