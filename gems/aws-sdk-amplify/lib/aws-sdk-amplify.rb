# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Amplify', Module.new) unless Aws.const_defined?('Amplify')

# @title AWS Amplify
# <p>Amplify enables developers to develop and deploy cloud-powered mobile and web apps.
#             Amplify Hosting provides a continuous delivery and hosting service for web applications.
#             For more information, see the <a href="https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html">Amplify Hosting User Guide</a>. The
#             Amplify Framework is a comprehensive set of SDKs, libraries, tools, and documentation
#             for client app development. For more information, see the <a href="https://docs.amplify.aws/">Amplify Framework.</a>
#          </p>
module Aws::Amplify
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-amplify/types'
require_relative 'aws-sdk-amplify/paginators'
require_relative 'aws-sdk-amplify/schema'
require_relative 'aws-sdk-amplify/auth_parameters'
require_relative 'aws-sdk-amplify/auth_resolver'
require_relative 'aws-sdk-amplify/client'
require_relative 'aws-sdk-amplify/errors'
require_relative 'aws-sdk-amplify/endpoint_parameters'
require_relative 'aws-sdk-amplify/endpoint_provider'
require_relative 'aws-sdk-amplify/waiters'
require_relative 'aws-sdk-amplify/customizations'
