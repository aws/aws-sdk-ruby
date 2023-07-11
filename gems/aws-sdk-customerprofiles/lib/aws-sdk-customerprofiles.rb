# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-customerprofiles/types'
require_relative 'aws-sdk-customerprofiles/client_api'
require_relative 'aws-sdk-customerprofiles/plugins/endpoints.rb'
require_relative 'aws-sdk-customerprofiles/client'
require_relative 'aws-sdk-customerprofiles/errors'
require_relative 'aws-sdk-customerprofiles/resource'
require_relative 'aws-sdk-customerprofiles/endpoint_parameters'
require_relative 'aws-sdk-customerprofiles/endpoint_provider'
require_relative 'aws-sdk-customerprofiles/endpoints'
require_relative 'aws-sdk-customerprofiles/customizations'

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

  GEM_VERSION = '1.34.0'

end
