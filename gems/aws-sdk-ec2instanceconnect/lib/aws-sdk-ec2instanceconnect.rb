# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ec2instanceconnect)

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
  autoload :Types, 'aws-sdk-ec2instanceconnect/types'
  autoload :ClientApi, 'aws-sdk-ec2instanceconnect/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ec2instanceconnect/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ec2instanceconnect/client'
  autoload :Errors, 'aws-sdk-ec2instanceconnect/errors'
  autoload :Resource, 'aws-sdk-ec2instanceconnect/resource'
  autoload :EndpointParameters, 'aws-sdk-ec2instanceconnect/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ec2instanceconnect/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ec2instanceconnect/endpoints'

  GEM_VERSION = '1.59.0'

end

require_relative 'aws-sdk-ec2instanceconnect/customizations'
