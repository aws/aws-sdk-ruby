# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-waf/types'
require_relative 'aws-sdk-waf/client_api'
require_relative 'aws-sdk-waf/client'
require_relative 'aws-sdk-waf/errors'
require_relative 'aws-sdk-waf/waiters'
require_relative 'aws-sdk-waf/resource'

# customizations for generated code
require_relative 'aws-sdk-waf/customizations.rb'

module Aws
  # This module provides support for AWS WAF.
  #
  # # Aws::WAF::Client
  #
  # The {Aws::WAF::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     waf = Aws::WAF::Client.new
  #     resp = waf.create_byte_match_set(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::WAF::Errors
  #
  # Errors returned from AWS WAF all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::WAF::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module WAF

    GEM_VERSION = '1.0.0'

  end
end
