# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2
  class RouteTableAssociation

    extend Aws::Deprecations

    # @overload def initialize(id, options = {})
    #   @param [String] id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @id = extract_id(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def id
      @id
    end
    alias :route_table_association_id :id

    # Indicates whether this is the main route table.
    # @return [Boolean]
    def main
      data.main
    end

    # The ID of the route table.
    # @return [String]
    def route_table_id
      data.route_table_id
    end

    # The ID of the subnet. A subnet ID is not returned for an implicit
    # association.
    # @return [String]
    def subnet_id
      data.subnet_id
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
    # @return [Types::RouteTableAssociation]
    #   Returns the data for this {RouteTableAssociation}.
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

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   route_table_association.delete({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(association_id: @id)
      resp = @client.disassociate_route_table(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   routetableassociation = route_table_association.replace_subnet({
    #     dry_run: false,
    #     route_table_id: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :route_table_id
    #   The ID of the new route table to associate with the subnet.
    # @return [RouteTableAssociation]
    def replace_subnet(options = {})
      options = options.merge(association_id: @id)
      resp = @client.replace_route_table_association(options)
      RouteTableAssociation.new(
        id: resp.data.new_association_id,
        client: @client
      )
    end

    # @!group Associations

    # @return [RouteTable, nil]
    def route_table
      if data.route_table_id
        RouteTable.new(
          id: data.route_table_id,
          client: @client
        )
      else
        nil
      end
    end

    # @return [Subnet, nil]
    def subnet
      if data.subnet_id
        Subnet.new(
          id: data.subnet_id,
          client: @client
        )
      else
        nil
      end
    end

    # @deprecated
    # @api private
    def identifiers
      { id: @id }
    end
    deprecated(:identifiers)

    private

    def extract_id(args, options)
      value = args[0] || options.delete(:id)
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
