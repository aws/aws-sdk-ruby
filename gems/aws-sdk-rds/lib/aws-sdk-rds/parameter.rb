# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  class Parameter

    extend Aws::Deprecations

    # @overload def initialize(name, options = {})
    #   @param [String] name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @name = extract_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def name
      @name
    end
    alias :parameter_name :name

    # Specifies the value of the parameter.
    # @return [String]
    def parameter_value
      data.parameter_value
    end

    # Provides a description of the parameter.
    # @return [String]
    def description
      data.description
    end

    # Indicates the source of the parameter value.
    # @return [String]
    def source
      data.source
    end

    # Specifies the engine specific parameters type.
    # @return [String]
    def apply_type
      data.apply_type
    end

    # Specifies the valid data type for the parameter.
    # @return [String]
    def data_type
      data.data_type
    end

    # Specifies the valid range of values for the parameter.
    # @return [String]
    def allowed_values
      data.allowed_values
    end

    # Indicates whether (`true`) or not (`false`) the parameter can be
    # modified. Some parameters have security or operational implications
    # that prevent them from being changed.
    # @return [Boolean]
    def is_modifiable
      data.is_modifiable
    end

    # The earliest engine version to which the parameter can apply.
    # @return [String]
    def minimum_engine_version
      data.minimum_engine_version
    end

    # Indicates when to apply parameter updates.
    # @return [String]
    def apply_method
      data.apply_method
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
    # @return [Types::Parameter]
    #   Returns the data for this {Parameter}.
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
      { name: @name }
    end
    deprecated(:identifiers)

    private

    def extract_name(args, options)
      value = args[0] || options.delete(:name)
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
