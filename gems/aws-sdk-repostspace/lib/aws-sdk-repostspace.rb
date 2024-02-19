# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-repostspace/types'
require_relative 'aws-sdk-repostspace/client_api'
require_relative 'aws-sdk-repostspace/plugins/endpoints.rb'
require_relative 'aws-sdk-repostspace/client'
require_relative 'aws-sdk-repostspace/errors'
require_relative 'aws-sdk-repostspace/resource'
require_relative 'aws-sdk-repostspace/endpoint_parameters'
require_relative 'aws-sdk-repostspace/endpoint_provider'
require_relative 'aws-sdk-repostspace/endpoints'
require_relative 'aws-sdk-repostspace/customizations'

# This module provides support for AWS re:Post Private. This module is available in the
# `aws-sdk-repostspace` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     repostspace = Aws::Repostspace::Client.new
#     resp = repostspace.create_space(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS re:Post Private are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Repostspace::Errors::ServiceError
#       # rescues all AWS re:Post Private API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Repostspace

  GEM_VERSION = '1.2.0'

end
