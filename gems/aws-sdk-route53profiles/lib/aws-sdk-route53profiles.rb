# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-route53profiles/types'
require_relative 'aws-sdk-route53profiles/client_api'
require_relative 'aws-sdk-route53profiles/plugins/endpoints.rb'
require_relative 'aws-sdk-route53profiles/client'
require_relative 'aws-sdk-route53profiles/errors'
require_relative 'aws-sdk-route53profiles/resource'
require_relative 'aws-sdk-route53profiles/endpoint_parameters'
require_relative 'aws-sdk-route53profiles/endpoint_provider'
require_relative 'aws-sdk-route53profiles/endpoints'
require_relative 'aws-sdk-route53profiles/customizations'

# This module provides support for Route 53 Profiles. This module is available in the
# `aws-sdk-route53profiles` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     route_53_profiles = Aws::Route53Profiles::Client.new
#     resp = route_53_profiles.associate_profile(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Route 53 Profiles are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Route53Profiles::Errors::ServiceError
#       # rescues all Route 53 Profiles API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Route53Profiles

  GEM_VERSION = '1.7.0'

end
