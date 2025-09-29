# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ec2)

# This module provides support for Amazon Elastic Compute Cloud. This module is available in the
# `aws-sdk-ec2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ec2 = Aws::EC2::Client.new
#     resp = ec2.accept_address_transfer(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Elastic Compute Cloud are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EC2::Errors::ServiceError
#       # rescues all Amazon Elastic Compute Cloud API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EC2
  autoload :Types, 'aws-sdk-ec2/types'
  autoload :ClientApi, 'aws-sdk-ec2/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ec2/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ec2/client'
  autoload :Errors, 'aws-sdk-ec2/errors'
  autoload :Waiters, 'aws-sdk-ec2/waiters'
  autoload :Resource, 'aws-sdk-ec2/resource'
  autoload :EndpointParameters, 'aws-sdk-ec2/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ec2/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ec2/endpoints'
  autoload :ClassicAddress, 'aws-sdk-ec2/classic_address'
  autoload :DhcpOptions, 'aws-sdk-ec2/dhcp_options'
  autoload :Image, 'aws-sdk-ec2/image'
  autoload :Instance, 'aws-sdk-ec2/instance'
  autoload :InternetGateway, 'aws-sdk-ec2/internet_gateway'
  autoload :KeyPair, 'aws-sdk-ec2/key_pair'
  autoload :KeyPairInfo, 'aws-sdk-ec2/key_pair_info'
  autoload :NetworkAcl, 'aws-sdk-ec2/network_acl'
  autoload :NatGateway, 'aws-sdk-ec2/nat_gateway'
  autoload :NetworkInterface, 'aws-sdk-ec2/network_interface'
  autoload :NetworkInterfaceAssociation, 'aws-sdk-ec2/network_interface_association'
  autoload :PlacementGroup, 'aws-sdk-ec2/placement_group'
  autoload :Route, 'aws-sdk-ec2/route'
  autoload :RouteTable, 'aws-sdk-ec2/route_table'
  autoload :RouteTableAssociation, 'aws-sdk-ec2/route_table_association'
  autoload :SecurityGroup, 'aws-sdk-ec2/security_group'
  autoload :Snapshot, 'aws-sdk-ec2/snapshot'
  autoload :Subnet, 'aws-sdk-ec2/subnet'
  autoload :Tag, 'aws-sdk-ec2/tag'
  autoload :Volume, 'aws-sdk-ec2/volume'
  autoload :Vpc, 'aws-sdk-ec2/vpc'
  autoload :VpcPeeringConnection, 'aws-sdk-ec2/vpc_peering_connection'
  autoload :VpcAddress, 'aws-sdk-ec2/vpc_address'

  GEM_VERSION = '1.560.0'

end

require_relative 'aws-sdk-ec2/customizations'
