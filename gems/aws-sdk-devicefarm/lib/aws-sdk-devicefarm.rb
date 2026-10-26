# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('DeviceFarm', Module.new) unless Aws.const_defined?('DeviceFarm')

# @title AWS Device Farm
# <p>Welcome to the AWS Device Farm API documentation, which contains APIs for:</p>
#          <ul>
#             <li>
#                <p>Testing on desktop browsers</p>
#                <p> Device Farm makes it possible for you to test your web applications on desktop browsers using
#                     Selenium. The APIs for desktop browser testing contain <code>TestGrid</code> in their names. For
#                     more information, see <a href="https://docs.aws.amazon.com/devicefarm/latest/testgrid/">Testing Web
#                         Applications on Selenium with Device Farm</a>.</p>
#             </li>
#             <li>
#                <p>Testing on real mobile devices</p>
#                <p>Device Farm makes it possible for you to test apps on physical phones, tablets, and other
#                     devices in the cloud. For more information, see the <a href="https://docs.aws.amazon.com/devicefarm/latest/developerguide/">Device Farm Developer Guide</a>.</p>
#             </li>
#          </ul>
module Aws::DeviceFarm
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-devicefarm/types'
require_relative 'aws-sdk-devicefarm/paginators'
require_relative 'aws-sdk-devicefarm/schema'
require_relative 'aws-sdk-devicefarm/auth_parameters'
require_relative 'aws-sdk-devicefarm/auth_resolver'
require_relative 'aws-sdk-devicefarm/client'
require_relative 'aws-sdk-devicefarm/errors'
require_relative 'aws-sdk-devicefarm/endpoint_parameters'
require_relative 'aws-sdk-devicefarm/endpoint_provider'
require_relative 'aws-sdk-devicefarm/waiters'
require_relative 'aws-sdk-devicefarm/customizations'
