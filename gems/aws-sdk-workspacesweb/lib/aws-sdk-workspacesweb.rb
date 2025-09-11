# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('WorkSpacesWeb', Module.new) unless Aws.const_defined?('WorkSpacesWeb')

# @title Amazon WorkSpaces Web
# <p>Amazon WorkSpaces Secure Browser is a low cost, fully managed WorkSpace built
#          specifically to facilitate secure, web-based workloads. WorkSpaces Secure Browser makes it
#          easy for customers to safely provide their employees with access to internal websites and
#          SaaS web applications without the administrative burden of appliances or specialized client
#          software. WorkSpaces Secure Browser provides simple policy tools tailored for user
#          interactions, while offloading common tasks like capacity management, scaling, and
#          maintaining browser images.</p>
module Aws::WorkSpacesWeb
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-workspacesweb/types'
require_relative 'aws-sdk-workspacesweb/paginators'
require_relative 'aws-sdk-workspacesweb/schema'
require_relative 'aws-sdk-workspacesweb/auth_parameters'
require_relative 'aws-sdk-workspacesweb/auth_resolver'
require_relative 'aws-sdk-workspacesweb/client'
require_relative 'aws-sdk-workspacesweb/customizations'
require_relative 'aws-sdk-workspacesweb/errors'
require_relative 'aws-sdk-workspacesweb/endpoint_parameters'
require_relative 'aws-sdk-workspacesweb/endpoint_provider'
require_relative 'aws-sdk-workspacesweb/waiters'
