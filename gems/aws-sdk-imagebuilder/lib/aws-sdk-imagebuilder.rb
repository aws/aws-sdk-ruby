# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Imagebuilder', Module.new) unless Aws.const_defined?('Imagebuilder')

# @title EC2 Image Builder
# <p>EC2 Image Builder automates the
# 			creation, management, and deployment of customized, secure, and up-to-date
# 			server images. You can build Amazon Machine Images (AMIs) and container images
# 			that are pre-installed and pre-configured with software and settings to meet
# 			specific IT standards.</p>
#          <p>For an introduction to the service concepts that these API operations work with,
# 			see <a href="https://docs.aws.amazon.com/imagebuilder/latest/userguide/how-image-builder-works.html">How Image Builder
# 				works</a> in the <i>EC2 Image Builder User Guide</i>.</p>
module Aws::Imagebuilder
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-imagebuilder/types'
require_relative 'aws-sdk-imagebuilder/paginators'
require_relative 'aws-sdk-imagebuilder/schema'
require_relative 'aws-sdk-imagebuilder/auth_parameters'
require_relative 'aws-sdk-imagebuilder/auth_resolver'
require_relative 'aws-sdk-imagebuilder/client'
require_relative 'aws-sdk-imagebuilder/errors'
require_relative 'aws-sdk-imagebuilder/endpoint_parameters'
require_relative 'aws-sdk-imagebuilder/endpoint_provider'
require_relative 'aws-sdk-imagebuilder/waiters'
require_relative 'aws-sdk-imagebuilder/customizations'
