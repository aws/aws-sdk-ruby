# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CloudHSMV2', Module.new) unless Aws.const_defined?('CloudHSMV2')

# @title AWS CloudHSM V2
# <p>For more information about CloudHSM, see <a href="http://aws.amazon.com/cloudhsm/">CloudHSM</a> and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">
#       CloudHSM User Guide</a>.</p>
module Aws::CloudHSMV2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cloudhsmv2/types'
require_relative 'aws-sdk-cloudhsmv2/paginators'
require_relative 'aws-sdk-cloudhsmv2/schema'
require_relative 'aws-sdk-cloudhsmv2/auth_parameters'
require_relative 'aws-sdk-cloudhsmv2/auth_resolver'
require_relative 'aws-sdk-cloudhsmv2/client'
require_relative 'aws-sdk-cloudhsmv2/customizations'
require_relative 'aws-sdk-cloudhsmv2/errors'
require_relative 'aws-sdk-cloudhsmv2/endpoint_parameters'
require_relative 'aws-sdk-cloudhsmv2/endpoint_provider'
require_relative 'aws-sdk-cloudhsmv2/waiters'
