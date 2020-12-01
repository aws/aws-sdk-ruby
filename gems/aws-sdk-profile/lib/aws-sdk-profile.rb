# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-profile/types'
require_relative 'aws-sdk-profile/client_api'
require_relative 'aws-sdk-profile/client'
require_relative 'aws-sdk-profile/errors'
require_relative 'aws-sdk-profile/resource'
require_relative 'aws-sdk-profile/customizations'

# This module provides support for Amazon Connect Customer Profiles. This module is available in the
# `aws-sdk-profile` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     profile = Aws::Profile::Client.new
#     resp = profile.add_profile_key(params)
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
#     rescue Aws::Profile::Errors::ServiceError
#       # rescues all Amazon Connect Customer Profiles API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Profile

  GEM_VERSION = '1.0.0'

end
