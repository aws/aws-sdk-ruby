# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('IoTSecureTunneling', Module.new) unless Aws.const_defined?('IoTSecureTunneling')

# @title AWS IoT Secure Tunneling
# <fullname>IoT Secure Tunneling</fullname>
#          <p>IoT Secure Tunneling creates remote connections to devices deployed in the
# 			field.</p>
#          <p>For more information about how IoT Secure Tunneling works, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/secure-tunneling.html">IoT
# 				Secure Tunneling</a>.</p>
module Aws::IoTSecureTunneling
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-iotsecuretunneling/types'
require_relative 'aws-sdk-iotsecuretunneling/paginators'
require_relative 'aws-sdk-iotsecuretunneling/schema'
require_relative 'aws-sdk-iotsecuretunneling/auth_parameters'
require_relative 'aws-sdk-iotsecuretunneling/auth_resolver'
require_relative 'aws-sdk-iotsecuretunneling/client'
require_relative 'aws-sdk-iotsecuretunneling/customizations'
require_relative 'aws-sdk-iotsecuretunneling/errors'
require_relative 'aws-sdk-iotsecuretunneling/endpoint_parameters'
require_relative 'aws-sdk-iotsecuretunneling/endpoint_provider'
require_relative 'aws-sdk-iotsecuretunneling/waiters'
