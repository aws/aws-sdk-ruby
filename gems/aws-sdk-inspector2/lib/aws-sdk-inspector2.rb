# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Inspector2', Module.new) unless Aws.const_defined?('Inspector2')

# @title Inspector2
# <p>Amazon Inspector is a vulnerability discovery service that automates continuous scanning for
#          security vulnerabilities within your Amazon EC2, Amazon ECR, and Amazon Web Services Lambda environments.</p>
module Aws::Inspector2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-inspector2/types'
require_relative 'aws-sdk-inspector2/paginators'
require_relative 'aws-sdk-inspector2/schema'
require_relative 'aws-sdk-inspector2/auth_parameters'
require_relative 'aws-sdk-inspector2/auth_resolver'
require_relative 'aws-sdk-inspector2/client'
require_relative 'aws-sdk-inspector2/errors'
require_relative 'aws-sdk-inspector2/endpoint_parameters'
require_relative 'aws-sdk-inspector2/endpoint_provider'
require_relative 'aws-sdk-inspector2/waiters'
require_relative 'aws-sdk-inspector2/customizations'
