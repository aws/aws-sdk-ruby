# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-amplify/types'
require_relative 'aws-sdk-amplify/client_api'
require_relative 'aws-sdk-amplify/client'
require_relative 'aws-sdk-amplify/errors'
require_relative 'aws-sdk-amplify/resource'
require_relative 'aws-sdk-amplify/customizations'

# This module provides support for AWS Amplify. This module is available in the
# `aws-sdk-amplify` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     amplify = Aws::Amplify::Client.new
#     resp = amplify.create_app(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Amplify are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Amplify::Errors::ServiceError
#       # rescues all AWS Amplify API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Amplify

  GEM_VERSION = '1.37.0'

end
