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
      data.source_type
    end

    # Provides the text of this event.
    # @return [String]
    def message
      data.message
    end

    # Specifies the category for the event.
    # @return [Array<String>]
    def event_categories
      data.event_categories
    end

    # The Amazon Resource Name (ARN) for the event.
    # @return [String]
    def source_arn
      data.source_arn
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
