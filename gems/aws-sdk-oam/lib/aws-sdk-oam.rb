# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-oam/types'
require_relative 'aws-sdk-oam/client_api'
require_relative 'aws-sdk-oam/plugins/endpoints.rb'
require_relative 'aws-sdk-oam/client'
require_relative 'aws-sdk-oam/errors'
require_relative 'aws-sdk-oam/resource'
require_relative 'aws-sdk-oam/endpoint_parameters'
require_relative 'aws-sdk-oam/endpoint_provider'
require_relative 'aws-sdk-oam/endpoints'
require_relative 'aws-sdk-oam/customizations'

# This module provides support for CloudWatch Observability Access Manager. This module is available in the
# `aws-sdk-oam` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     oam = Aws::OAM::Client.new
#     resp = oam.create_link(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from CloudWatch Observability Access Manager are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::OAM::Errors::ServiceError
#       # rescues all CloudWatch Observability Access Manager API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::OAM

  GEM_VERSION = '1.6.0'

end
