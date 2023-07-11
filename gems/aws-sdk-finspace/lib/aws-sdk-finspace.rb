# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-finspace/types'
require_relative 'aws-sdk-finspace/client_api'
require_relative 'aws-sdk-finspace/plugins/endpoints.rb'
require_relative 'aws-sdk-finspace/client'
require_relative 'aws-sdk-finspace/errors'
require_relative 'aws-sdk-finspace/resource'
require_relative 'aws-sdk-finspace/endpoint_parameters'
require_relative 'aws-sdk-finspace/endpoint_provider'
require_relative 'aws-sdk-finspace/endpoints'
require_relative 'aws-sdk-finspace/customizations'

# This module provides support for FinSpace User Environment Management service. This module is available in the
# `aws-sdk-finspace` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     finspace = Aws::Finspace::Client.new
#     resp = finspace.create_environment(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from FinSpace User Environment Management service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Finspace::Errors::ServiceError
#       # rescues all FinSpace User Environment Management service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Finspace

  GEM_VERSION = '1.19.0'

end
