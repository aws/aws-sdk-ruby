# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('TaxSettings', Module.new) unless Aws.const_defined?('TaxSettings')

# @title Tax Settings
# <p>You can use the tax setting API to programmatically set, modify, and delete the tax
#       registration number (TRN), associated business legal name, and address (Collectively referred
#       to as "TRN information"). You can also programmatically view TRN information and tax addresses
#       ("Tax profiles"). </p>
#          <p>You can use this API to automate your TRN information settings instead of manually using
#       the console.</p>
#          <p>Service Endpoint</p>
#          <ul>
#             <li>
#                <p>https://tax.us-east-1.amazonaws.com</p>
#             </li>
#          </ul>
module Aws::TaxSettings
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-taxsettings/types'
require_relative 'aws-sdk-taxsettings/paginators'
require_relative 'aws-sdk-taxsettings/schema'
require_relative 'aws-sdk-taxsettings/auth_parameters'
require_relative 'aws-sdk-taxsettings/auth_resolver'
require_relative 'aws-sdk-taxsettings/client'
require_relative 'aws-sdk-taxsettings/customizations'
require_relative 'aws-sdk-taxsettings/errors'
require_relative 'aws-sdk-taxsettings/endpoint_parameters'
require_relative 'aws-sdk-taxsettings/endpoint_provider'
require_relative 'aws-sdk-taxsettings/waiters'
