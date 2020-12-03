# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-wafregional/types'
require_relative 'aws-sdk-wafregional/client_api'
require_relative 'aws-sdk-wafregional/client'
require_relative 'aws-sdk-wafregional/errors'
require_relative 'aws-sdk-wafregional/resource'
require_relative 'aws-sdk-wafregional/customizations'

# This module provides support for AWS WAF Regional. This module is available in the
# `aws-sdk-wafregional` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     waf_regional = Aws::WAFRegional::Client.new
#     resp = waf_regional.associate_web_acl(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS WAF Regional are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::WAFRegional::Errors::ServiceError
#       # rescues all AWS WAF Regional API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::WAFRegional

  GEM_VERSION = '1.37.0'

end
