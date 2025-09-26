# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-xml'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('STS', Module.new) unless Aws.const_defined?('STS')

# @title AWS Security Token Service
# <fullname>Security Token Service</fullname>
#          <p>Security Token Service (STS) enables you to request temporary, limited-privilege 
#       credentials for users. This guide provides descriptions of the STS API. For 
#       more information about using this service, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html">Temporary Security Credentials</a>.</p>
module Aws::STS
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-sts/types'
require_relative 'aws-sdk-sts/paginators'
require_relative 'aws-sdk-sts/schema'
require_relative 'aws-sdk-sts/auth_parameters'
require_relative 'aws-sdk-sts/auth_resolver'
require_relative 'aws-sdk-sts/client'
require_relative 'aws-sdk-sts/customizations'
require_relative 'aws-sdk-sts/errors'
require_relative 'aws-sdk-sts/endpoint_parameters'
require_relative 'aws-sdk-sts/endpoint_provider'
require_relative 'aws-sdk-sts/waiters'
