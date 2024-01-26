# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-datazone/types'
require_relative 'aws-sdk-datazone/client_api'
require_relative 'aws-sdk-datazone/plugins/endpoints.rb'
require_relative 'aws-sdk-datazone/client'
require_relative 'aws-sdk-datazone/errors'
require_relative 'aws-sdk-datazone/resource'
require_relative 'aws-sdk-datazone/endpoint_parameters'
require_relative 'aws-sdk-datazone/endpoint_provider'
require_relative 'aws-sdk-datazone/endpoints'
require_relative 'aws-sdk-datazone/customizations'

# This module provides support for Amazon DataZone. This module is available in the
# `aws-sdk-datazone` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     data_zone = Aws::DataZone::Client.new
#     resp = data_zone.accept_predictions(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon DataZone are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DataZone::Errors::ServiceError
#       # rescues all Amazon DataZone API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DataZone

  GEM_VERSION = '1.3.0'

end
