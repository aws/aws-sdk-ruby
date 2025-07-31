# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:route53profiles)

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
  autoload :Types, 'aws-sdk-route53profiles/types'
  autoload :ClientApi, 'aws-sdk-route53profiles/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-route53profiles/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-route53profiles/client'
  autoload :Errors, 'aws-sdk-route53profiles/errors'
  autoload :Resource, 'aws-sdk-route53profiles/resource'
  autoload :EndpointParameters, 'aws-sdk-route53profiles/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-route53profiles/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-route53profiles/endpoints'

  GEM_VERSION = '1.22.0'

end

require_relative 'aws-sdk-route53profiles/customizations'
