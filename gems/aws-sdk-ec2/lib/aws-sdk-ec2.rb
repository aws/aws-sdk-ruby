# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
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

# customizations for generated code
require_relative 'aws-sdk-ec2/customizations.rb'

module Aws
  # This module provides support for Amazon Elastic Compute Cloud.
  #
  # # Aws::EC2::Client
  #
  # The {Aws::EC2::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     ec2 = Aws::EC2::Client.new
  #     resp = ec2.accept_vpc_peering_connection(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::EC2::Errors
  #
  # Errors returned from Amazon Elastic Compute Cloud all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::EC2::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module EC2

    GEM_VERSION = '1.0.0'

  end
end
