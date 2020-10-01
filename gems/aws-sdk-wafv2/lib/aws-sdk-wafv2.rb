# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-wafv2/types'
require_relative 'aws-sdk-wafv2/client_api'
require_relative 'aws-sdk-wafv2/client'
require_relative 'aws-sdk-wafv2/errors'
require_relative 'aws-sdk-wafv2/resource'
require_relative 'aws-sdk-wafv2/customizations'

# This module provides support for AWS WAFV2. This module is available in the
# `aws-sdk-wafv2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     wafv2 = Aws::WAFV2::Client.new
#     resp = wafv2.associate_web_acl(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS WAFV2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::WAFV2::Errors::ServiceError
#       # rescues all AWS WAFV2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::WAFV2

  GEM_VERSION = '1.14.0'

end
