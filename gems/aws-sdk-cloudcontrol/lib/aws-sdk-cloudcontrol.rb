# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CloudControl', Module.new) unless Aws.const_defined?('CloudControl')

# @title AWS Cloud Control API
# <p>For more information about Amazon Web Services Cloud Control API, see the <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/what-is-cloudcontrolapi.html">Amazon Web Services Cloud Control API User
#         Guide</a>.</p>
module Aws::CloudControl
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cloudcontrol/types'
require_relative 'aws-sdk-cloudcontrol/paginators'
require_relative 'aws-sdk-cloudcontrol/schema'
require_relative 'aws-sdk-cloudcontrol/auth_parameters'
require_relative 'aws-sdk-cloudcontrol/auth_resolver'
require_relative 'aws-sdk-cloudcontrol/client'
require_relative 'aws-sdk-cloudcontrol/customizations'
require_relative 'aws-sdk-cloudcontrol/errors'
require_relative 'aws-sdk-cloudcontrol/endpoint_parameters'
require_relative 'aws-sdk-cloudcontrol/endpoint_provider'
require_relative 'aws-sdk-cloudcontrol/waiters'
