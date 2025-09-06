# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Imagebuilder', Module.new) unless Aws.const_defined?('Imagebuilder')

# @title EC2 Image Builder
# <p>EC2 Image Builder is a fully managed Amazon Web Services service that makes it easier to automate the
# 			creation, management, and deployment of customized, secure, and up-to-date
# 			"golden" server images that are pre-installed and pre-configured with software
# 			and settings to meet specific IT standards.</p>
module Aws::Imagebuilder
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-imagebuilder/types'
require_relative 'aws-sdk-imagebuilder/paginators'
require_relative 'aws-sdk-imagebuilder/schema'
require_relative 'aws-sdk-imagebuilder/auth_parameters'
require_relative 'aws-sdk-imagebuilder/auth_resolver'
require_relative 'aws-sdk-imagebuilder/client'
require_relative 'aws-sdk-imagebuilder/customizations'
require_relative 'aws-sdk-imagebuilder/errors'
require_relative 'aws-sdk-imagebuilder/endpoint_parameters'
require_relative 'aws-sdk-imagebuilder/endpoint_provider'
require_relative 'aws-sdk-imagebuilder/waiters'
