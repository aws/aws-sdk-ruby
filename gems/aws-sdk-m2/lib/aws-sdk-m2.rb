# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('M2', Module.new) unless Aws.const_defined?('M2')

# @title AWSMainframeModernization
# <p>Amazon Web Services Mainframe Modernization provides tools and resources to help you plan and implement migration and
#          modernization from mainframes to Amazon Web Services managed runtime environments. It provides tools for
#          analyzing existing mainframe applications, developing or updating mainframe applications
#          using COBOL or PL/I, and implementing an automated pipeline for continuous integration and
#          continuous delivery (CI/CD) of the applications.</p>
module Aws::M2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-m2/types'
require_relative 'aws-sdk-m2/paginators'
require_relative 'aws-sdk-m2/schema'
require_relative 'aws-sdk-m2/auth_parameters'
require_relative 'aws-sdk-m2/auth_resolver'
require_relative 'aws-sdk-m2/client'
require_relative 'aws-sdk-m2/customizations'
require_relative 'aws-sdk-m2/errors'
require_relative 'aws-sdk-m2/endpoint_parameters'
require_relative 'aws-sdk-m2/endpoint_provider'
require_relative 'aws-sdk-m2/waiters'
