# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Fis', Module.new) unless Aws.const_defined?('Fis')

# @title AWS Fault Injection Simulator
# <p>Amazon Web Services Fault Injection Service is a managed service that enables you to perform fault injection 
#            experiments on your Amazon Web Services workloads. For more information, see the <a href="https://docs.aws.amazon.com/fis/latest/userguide/">Fault Injection Service User Guide</a>.</p>
module Aws::Fis
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-fis/types'
require_relative 'aws-sdk-fis/paginators'
require_relative 'aws-sdk-fis/schema'
require_relative 'aws-sdk-fis/auth_parameters'
require_relative 'aws-sdk-fis/auth_resolver'
require_relative 'aws-sdk-fis/client'
require_relative 'aws-sdk-fis/errors'
require_relative 'aws-sdk-fis/endpoint_parameters'
require_relative 'aws-sdk-fis/endpoint_provider'
require_relative 'aws-sdk-fis/waiters'
require_relative 'aws-sdk-fis/customizations'
