# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-applicationdiscoveryservice/types'
require_relative 'aws-sdk-applicationdiscoveryservice/client_api'
require_relative 'aws-sdk-applicationdiscoveryservice/client'
require_relative 'aws-sdk-applicationdiscoveryservice/errors'
require_relative 'aws-sdk-applicationdiscoveryservice/waiters'
require_relative 'aws-sdk-applicationdiscoveryservice/resource'

# customizations for generated code
require_relative 'aws-sdk-applicationdiscoveryservice/customizations.rb'

module Aws
  # This module provides support for AWS Application Discovery Service.
  #
  # # Aws::ApplicationDiscoveryService::Client
  #
  # The {Aws::ApplicationDiscoveryService::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     applicationdiscoveryservice = Aws::ApplicationDiscoveryService::Client.new
  #     resp = applicationdiscoveryservice.create_tags(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::ApplicationDiscoveryService::Errors
  #
  # Errors returned from AWS Application Discovery Service all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ApplicationDiscoveryService::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module ApplicationDiscoveryService

    GEM_VERSION = '1.0.0'

  end
end
