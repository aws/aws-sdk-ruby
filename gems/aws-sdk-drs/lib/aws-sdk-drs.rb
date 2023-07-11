# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-drs/types'
require_relative 'aws-sdk-drs/client_api'
require_relative 'aws-sdk-drs/plugins/endpoints.rb'
require_relative 'aws-sdk-drs/client'
require_relative 'aws-sdk-drs/errors'
require_relative 'aws-sdk-drs/resource'
require_relative 'aws-sdk-drs/endpoint_parameters'
require_relative 'aws-sdk-drs/endpoint_provider'
require_relative 'aws-sdk-drs/endpoints'
require_relative 'aws-sdk-drs/customizations'

# This module provides support for Elastic Disaster Recovery Service. This module is available in the
# `aws-sdk-drs` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     drs = Aws::Drs::Client.new
#     resp = drs.associate_source_network_stack(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Elastic Disaster Recovery Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Drs::Errors::ServiceError
#       # rescues all Elastic Disaster Recovery Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Drs

  GEM_VERSION = '1.19.0'

end
