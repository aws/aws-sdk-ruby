# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Panorama', Module.new) unless Aws.const_defined?('Panorama')

# @title AWS Panorama
# <fullname>AWS Panorama</fullname>
#          <p>
#             <b>Overview</b>
#          </p>
#          <p>This is the <i>AWS Panorama API Reference</i>. For an introduction to the service, see <a href="https://docs.aws.amazon.com/panorama/latest/dev/panorama-welcome.html">What is AWS Panorama?</a> in the
#         <i>AWS Panorama Developer Guide</i>.</p>
module Aws::Panorama
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-panorama/types'
require_relative 'aws-sdk-panorama/paginators'
require_relative 'aws-sdk-panorama/schema'
require_relative 'aws-sdk-panorama/auth_parameters'
require_relative 'aws-sdk-panorama/auth_resolver'
require_relative 'aws-sdk-panorama/client'
require_relative 'aws-sdk-panorama/customizations'
require_relative 'aws-sdk-panorama/errors'
require_relative 'aws-sdk-panorama/endpoint_parameters'
require_relative 'aws-sdk-panorama/endpoint_provider'
require_relative 'aws-sdk-panorama/waiters'
