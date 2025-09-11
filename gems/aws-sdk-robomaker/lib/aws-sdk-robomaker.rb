# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('RoboMaker', Module.new) unless Aws.const_defined?('RoboMaker')

# @title AWS RoboMaker
# <p>This section provides documentation for the AWS RoboMaker API operations.</p>
module Aws::RoboMaker
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-robomaker/types'
require_relative 'aws-sdk-robomaker/paginators'
require_relative 'aws-sdk-robomaker/schema'
require_relative 'aws-sdk-robomaker/auth_parameters'
require_relative 'aws-sdk-robomaker/auth_resolver'
require_relative 'aws-sdk-robomaker/client'
require_relative 'aws-sdk-robomaker/customizations'
require_relative 'aws-sdk-robomaker/errors'
require_relative 'aws-sdk-robomaker/endpoint_parameters'
require_relative 'aws-sdk-robomaker/endpoint_provider'
require_relative 'aws-sdk-robomaker/waiters'
