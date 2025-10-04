# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Deadline', Module.new) unless Aws.const_defined?('Deadline')

# @title AWSDeadlineCloud
# <p>The Amazon Web Services Deadline Cloud API provides infrastructure and centralized management for your
#          projects. Use the Deadline Cloud API to onboard users, assign projects, and attach permissions
#          specific to their job function.</p>
#          <p>With Deadline Cloud, content production teams can deploy resources for their workforce
#          securely in the cloud, reducing the costs of added physical infrastructure. Keep your
#          content production operations secure, while allowing your contributors to access the tools
#          they need, such as scalable high-speed storage, licenses, and cost management
#          services.</p>
module Aws::Deadline
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-deadline/types'
require_relative 'aws-sdk-deadline/paginators'
require_relative 'aws-sdk-deadline/schema'
require_relative 'aws-sdk-deadline/auth_parameters'
require_relative 'aws-sdk-deadline/auth_resolver'
require_relative 'aws-sdk-deadline/client'
require_relative 'aws-sdk-deadline/customizations'
require_relative 'aws-sdk-deadline/errors'
require_relative 'aws-sdk-deadline/endpoint_parameters'
require_relative 'aws-sdk-deadline/endpoint_provider'
require_relative 'aws-sdk-deadline/waiters'
