# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:customerprofiles)

# This module provides support for Amazon Connect Customer Profiles. This module is available in the
# `aws-sdk-customerprofiles` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     customer_profiles = Aws::CustomerProfiles::Client.new
#     resp = customer_profiles.add_profile_key(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Connect Customer Profiles are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CustomerProfiles::Errors::ServiceError
#       # rescues all Amazon Connect Customer Profiles API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CustomerProfiles
  autoload :Types, 'aws-sdk-customerprofiles/types'
  autoload :ClientApi, 'aws-sdk-customerprofiles/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-customerprofiles/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-customerprofiles/client'
  autoload :Errors, 'aws-sdk-customerprofiles/errors'
  autoload :Resource, 'aws-sdk-customerprofiles/resource'
  autoload :EndpointParameters, 'aws-sdk-customerprofiles/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-customerprofiles/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-customerprofiles/endpoints'

  GEM_VERSION = '1.73.0'

end

require_relative 'aws-sdk-customerprofiles/customizations'
