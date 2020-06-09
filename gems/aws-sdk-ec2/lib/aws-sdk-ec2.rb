# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sigv4'
require 'aws-sdk-core'

require_relative 'aws-sdk-ec2/types'
require_relative 'aws-sdk-ec2/client_api'
require_relative 'aws-sdk-ec2/client'
require_relative 'aws-sdk-ec2/errors'
require_relative 'aws-sdk-ec2/waiters'
require_relative 'aws-sdk-ec2/resource'
require_relative 'aws-sdk-ec2/classic_address'
require_relative 'aws-sdk-ec2/dhcp_options'
require_relative 'aws-sdk-ec2/image'
require_relative 'aws-sdk-ec2/instance'
require_relative 'aws-sdk-ec2/internet_gateway'
require_relative 'aws-sdk-ec2/key_pair'
require_relative 'aws-sdk-ec2/key_pair_info'
require_relative 'aws-sdk-ec2/network_acl'
require_relative 'aws-sdk-ec2/nat_gateway'
require_relative 'aws-sdk-ec2/network_interface'
require_relative 'aws-sdk-ec2/network_interface_association'
require_relative 'aws-sdk-ec2/placement_group'
require_relative 'aws-sdk-ec2/route'
require_relative 'aws-sdk-ec2/route_table'
require_relative 'aws-sdk-ec2/route_table_association'
require_relative 'aws-sdk-ec2/security_group'
require_relative 'aws-sdk-ec2/snapshot'
require_relative 'aws-sdk-ec2/subnet'
require_relative 'aws-sdk-ec2/tag'
require_relative 'aws-sdk-ec2/volume'
require_relative 'aws-sdk-ec2/vpc'
require_relative 'aws-sdk-ec2/vpc_peering_connection'
require_relative 'aws-sdk-ec2/vpc_address'
require_relative 'aws-sdk-ec2/customizations'

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
#     resp = ec2.accept_reserved_instances_exchange_quote(params)
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
# @service
module Aws::EC2

  GEM_VERSION = '1.165.0'

end
