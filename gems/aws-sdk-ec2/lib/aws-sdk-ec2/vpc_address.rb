# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2
  class VpcAddress

    extend Aws::Deprecations

    # @overload def initialize(allocation_id, options = {})
    #   @param [String] allocation_id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :allocation_id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @allocation_id = extract_allocation_id(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def allocation_id
      @allocation_id
    end

    # The ID of the instance that the address is associated with (if any).
    # @return [String]
    def instance_id
      data.instance_id
    end

    # The Elastic IP address.
    # @return [String]
    def public_ip
      data.public_ip
    end

    # The ID representing the association of the address with an instance in
    # a VPC.
    # @return [String]
    def association_id
      data.association_id
    end

    # Indicates whether this Elastic IP address is for use with instances in
    # EC2-Classic (`standard`) or instances in a VPC (`vpc`).
    # @return [String]
    def domain
      data.domain
    end

    # The ID of the network interface.
    # @return [String]
    def network_interface_id
      data.network_interface_id
    end

    # The ID of the AWS account that owns the network interface.
    # @return [String]
    def network_interface_owner_id
      data.network_interface_owner_id
    end

    # The private IP address associated with the Elastic IP address.
    # @return [String]
    def private_ip_address
      data.private_ip_address
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {VpcAddress}.
    # Returns `self` making it possible to chain methods.
    #
    #     vpc_address.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_addresses(allocation_ids: [@allocation_id])
      @data = resp.addresses[0]
      self
    end
    alias :reload :load

    # @return [Types::Address]
    #   Returns the data for this {VpcAddress}. Calls
    #   {Client#describe_addresses} if {#data_loaded?} is `false`.
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
    #   vpc_address.associate({
    #     instance_id: "String",
    #     public_ip: "String",
    #     allow_reassociation: false,
    #     dry_run: false,
    #     network_interface_id: "String",
    #     private_ip_address: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :instance_id
    #   The ID of the instance. This is required for EC2-Classic. For EC2-VPC,
    #   you can specify either the instance ID or the network interface ID,
    #   but not both. The operation fails if you specify an instance ID unless
    #   exactly one network interface is attached.
    # @option options [String] :public_ip
    #   The Elastic IP address. This is required for EC2-Classic.
    # @option options [Boolean] :allow_reassociation
    #   \[EC2-VPC\] For a VPC in an EC2-Classic account, specify true to allow
    #   an Elastic IP address that is already associated with an instance or
    #   network interface to be reassociated with the specified instance or
    #   network interface. Otherwise, the operation fails. In a VPC in an
    #   EC2-VPC-only account, reassociation is automatic, therefore you can
    #   specify false to ensure the operation fails if the Elastic IP address
    #   is already associated with another resource.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [String] :network_interface_id
    #   \[EC2-VPC\] The ID of the network interface. If the instance has more
    #   than one network interface, you must specify a network interface ID.
    # @option options [String] :private_ip_address
    #   \[EC2-VPC\] The primary or secondary private IP address to associate
    #   with the Elastic IP address. If no private IP address is specified,
    #   the Elastic IP address is associated with the primary private IP
    #   address.
    # @return [Types::AssociateAddressResult]
    def associate(options = {})
      options = options.merge(allocation_id: @allocation_id)
      resp = @client.associate_address(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   vpc_address.release({
    #     public_ip: "String",
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :public_ip
    #   \[EC2-Classic\] The Elastic IP address. Required for EC2-Classic.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def release(options = {})
      options = options.merge(allocation_id: data.allocation_id)
      resp = @client.release_address(options)
      resp.data
    end

    # @!group Associations

    # @return [NetworkInterfaceAssociation, nil]
    def association
      if data.association_id
        NetworkInterfaceAssociation.new(
          id: data.association_id,
          client: @client
        )
      else
        nil
      end
    end

    # @deprecated
    # @api private
    def identifiers
      { allocation_id: @allocation_id }
    end
    deprecated(:identifiers)

    private

    def extract_allocation_id(args, options)
      value = args[0] || options.delete(:allocation_id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :allocation_id"
      else
        msg = "expected :allocation_id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
