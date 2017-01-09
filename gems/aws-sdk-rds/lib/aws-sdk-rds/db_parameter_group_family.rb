# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  class DBParameterGroupFamily

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
      @data = Aws::EmptyStructure.new
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def name
      @name
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

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   engine_default_cluster_parameters = db_parameter_group_family.engine_default_cluster_parameters({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    # @option options [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    # @option options [String] :marker
    #   An optional pagination token provided by a previous
    #   `DescribeEngineDefaultClusterParameters` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    # @return [Parameter::Collection]
    def engine_default_cluster_parameters(options = {})
      batches = Enumerator.new do |y|
        batch = []
        options = options.merge(db_parameter_group_family: @name)
        resp = @client.describe_engine_default_cluster_parameters(options)
        resp.data.engine_defaults.parameters.each do |p|
          batch << Parameter.new(
            name: p.parameter_name,
            data: p,
            client: @client
          )
        end
        y.yield(batch)
      end
      Parameter::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   engine_default_parameters = db_parameter_group_family.engine_default_parameters({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   Not currently supported.
    # @return [Parameter::Collection]
    def engine_default_parameters(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(db_parameter_group_family: @name)
        resp = @client.describe_engine_default_parameters(options)
        resp.each_page do |page|
          batch = []
          page.data.engine_defaults.parameters.each do |p|
            batch << Parameter.new(
              name: p.parameter_name,
              data: p,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Parameter::Collection.new(batches)
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
