# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('DirectConnect', Module.new) unless Aws.const_defined?('DirectConnect')

# @title AWS Direct Connect
# <p>Direct Connect links your internal network to an Direct Connect location over a standard Ethernet fiber-optic cable. 
#       One end of the cable is connected to your router, the other to an Direct Connect router. With this connection
#       in place, you can create virtual interfaces directly to the Amazon Web Services Cloud (for example, to Amazon EC2 
#       and Amazon S3) and to Amazon VPC, bypassing Internet service providers in your network path. A 
#       connection provides access to all Amazon Web Services Regions except the China (Beijing) and (China) Ningxia Regions. 
#       Amazon Web Services resources in the China Regions can only be accessed through locations associated with those Regions.</p>
module Aws::DirectConnect
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-directconnect/types'
require_relative 'aws-sdk-directconnect/paginators'
require_relative 'aws-sdk-directconnect/schema'
require_relative 'aws-sdk-directconnect/auth_parameters'
require_relative 'aws-sdk-directconnect/auth_resolver'
require_relative 'aws-sdk-directconnect/client'
require_relative 'aws-sdk-directconnect/customizations'
require_relative 'aws-sdk-directconnect/errors'
require_relative 'aws-sdk-directconnect/endpoint_parameters'
require_relative 'aws-sdk-directconnect/endpoint_provider'
require_relative 'aws-sdk-directconnect/waiters'
