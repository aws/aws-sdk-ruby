# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
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

module Aws
  # @service
  # This module provides support for AWS WAF, which shipped in `aws-sdk-waf` gem.
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
