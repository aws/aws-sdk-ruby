# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ACM', Module.new) unless Aws.const_defined?('ACM')

# @title AWS Certificate Manager
# <fullname>Certificate Manager</fullname> <p>You can use Certificate Manager (ACM) to manage SSL/TLS certificates for your Amazon Web Services-based websites and applications. For more information about using ACM, see the <a href="https://docs.aws.amazon.com/acm/latest/userguide/">Certificate Manager User Guide</a>.</p>
module Aws::ACM
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-acm/types'
require_relative 'aws-sdk-acm/paginators'
require_relative 'aws-sdk-acm/schema'
require_relative 'aws-sdk-acm/auth_parameters'
require_relative 'aws-sdk-acm/auth_resolver'
require_relative 'aws-sdk-acm/client'
require_relative 'aws-sdk-acm/customizations'
require_relative 'aws-sdk-acm/errors'
require_relative 'aws-sdk-acm/endpoint_parameters'
require_relative 'aws-sdk-acm/endpoint_provider'
require_relative 'aws-sdk-acm/waiters'
