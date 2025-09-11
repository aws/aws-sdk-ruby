# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('EC2InstanceConnect', Module.new) unless Aws.const_defined?('EC2InstanceConnect')

# @title AWS EC2 Instance Connect
# <p>This is the <i> Amazon EC2 Instance Connect API Reference</i>. It
#             provides descriptions, syntax, and usage examples for each of the actions for Amazon EC2
#             Instance Connect. Amazon EC2 Instance Connect enables system administrators to publish
#             one-time use SSH public keys to EC2, providing users a simple and secure way to connect
#             to their instances.</p>
#         <p>To view the Amazon EC2 Instance Connect content in the <i> Amazon EC2 User
#                 Guide</i>, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Connect-using-EC2-Instance-Connect.html">Connect to
#                 your Linux instance using EC2 Instance Connect</a>.</p>
#         <p>For Amazon EC2 APIs, see the <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Welcome.html">Amazon EC2 API
#                 Reference</a>.</p>
module Aws::EC2InstanceConnect
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-ec2instanceconnect/types'
require_relative 'aws-sdk-ec2instanceconnect/paginators'
require_relative 'aws-sdk-ec2instanceconnect/schema'
require_relative 'aws-sdk-ec2instanceconnect/auth_parameters'
require_relative 'aws-sdk-ec2instanceconnect/auth_resolver'
require_relative 'aws-sdk-ec2instanceconnect/client'
require_relative 'aws-sdk-ec2instanceconnect/customizations'
require_relative 'aws-sdk-ec2instanceconnect/errors'
require_relative 'aws-sdk-ec2instanceconnect/endpoint_parameters'
require_relative 'aws-sdk-ec2instanceconnect/endpoint_provider'
require_relative 'aws-sdk-ec2instanceconnect/waiters'
