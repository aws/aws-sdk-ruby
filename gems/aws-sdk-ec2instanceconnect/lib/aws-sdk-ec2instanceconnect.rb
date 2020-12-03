# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-ec2instanceconnect/types'
require_relative 'aws-sdk-ec2instanceconnect/client_api'
require_relative 'aws-sdk-ec2instanceconnect/client'
require_relative 'aws-sdk-ec2instanceconnect/errors'
require_relative 'aws-sdk-ec2instanceconnect/resource'
require_relative 'aws-sdk-ec2instanceconnect/customizations'

# This module provides support for AWS EC2 Instance Connect. This module is available in the
# `aws-sdk-ec2instanceconnect` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ec2_instance_connect = Aws::EC2InstanceConnect::Client.new
#     resp = ec2_instance_connect.send_ssh_public_key(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS EC2 Instance Connect are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EC2InstanceConnect::Errors::ServiceError
#       # rescues all AWS EC2 Instance Connect API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EC2InstanceConnect

  GEM_VERSION = '1.11.0'

end
