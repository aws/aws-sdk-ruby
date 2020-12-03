# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-ses/types'
require_relative 'aws-sdk-ses/client_api'
require_relative 'aws-sdk-ses/client'
require_relative 'aws-sdk-ses/errors'
require_relative 'aws-sdk-ses/waiters'
require_relative 'aws-sdk-ses/resource'
require_relative 'aws-sdk-ses/customizations'

# This module provides support for Amazon Simple Email Service. This module is available in the
# `aws-sdk-ses` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ses = Aws::SES::Client.new
#     resp = ses.clone_receipt_rule_set(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Simple Email Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SES::Errors::ServiceError
#       # rescues all Amazon Simple Email Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SES

  GEM_VERSION = '1.36.0'

end
