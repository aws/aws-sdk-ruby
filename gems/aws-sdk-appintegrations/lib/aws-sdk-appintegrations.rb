# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('AppIntegrations', Module.new) unless Aws.const_defined?('AppIntegrations')

# @title Amazon AppIntegrations Service
# <ul>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_AppIntegrations_Service.html">Amazon AppIntegrations
#             actions</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_AppIntegrations_Service.html">Amazon AppIntegrations
#             data types</a>
#                </p>
#             </li>
#          </ul>
#          <p>The Amazon AppIntegrations service enables you to configure and reuse connections to external
#       applications.</p>
#          <p>For information about how you can use external applications with Amazon Connect, see
#       the following topics in the <i>Amazon Connect Administrator
#       Guide</i>:</p>
#          <ul>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/connect/latest/adminguide/3p-apps.html">Third-party
#             applications (3p apps) in the agent workspace</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-q-connect.html">Use
#             Amazon Q in Connect for generative AI–powered agent assistance in
#           real-time</a>
#                </p>
#             </li>
#          </ul>
module Aws::AppIntegrations
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-appintegrations/types'
require_relative 'aws-sdk-appintegrations/paginators'
require_relative 'aws-sdk-appintegrations/schema'
require_relative 'aws-sdk-appintegrations/auth_parameters'
require_relative 'aws-sdk-appintegrations/auth_resolver'
require_relative 'aws-sdk-appintegrations/client'
require_relative 'aws-sdk-appintegrations/customizations'
require_relative 'aws-sdk-appintegrations/errors'
require_relative 'aws-sdk-appintegrations/endpoint_parameters'
require_relative 'aws-sdk-appintegrations/endpoint_provider'
require_relative 'aws-sdk-appintegrations/waiters'
