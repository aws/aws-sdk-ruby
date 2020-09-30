# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-route53/types'
require_relative 'aws-sdk-route53/client_api'
require_relative 'aws-sdk-route53/client'
require_relative 'aws-sdk-route53/errors'
require_relative 'aws-sdk-route53/waiters'
require_relative 'aws-sdk-route53/resource'
require_relative 'aws-sdk-route53/customizations'

# This module provides support for Amazon Route 53. This module is available in the
# `aws-sdk-route53` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     route_53 = Aws::Route53::Client.new
#     resp = route_53.associate_vpc_with_hosted_zone(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Route 53 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Route53::Errors::ServiceError
#       # rescues all Amazon Route 53 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Route53

  GEM_VERSION = '1.44.0'

end
