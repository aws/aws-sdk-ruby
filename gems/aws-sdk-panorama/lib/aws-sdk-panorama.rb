# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:panorama)

# This module provides support for AWS Panorama. This module is available in the
# `aws-sdk-panorama` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     panorama = Aws::Panorama::Client.new
#     resp = panorama.create_application_instance(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Panorama are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Panorama::Errors::ServiceError
#       # rescues all AWS Panorama API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Panorama
  autoload :Types, 'aws-sdk-panorama/types'
  autoload :ClientApi, 'aws-sdk-panorama/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-panorama/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-panorama/client'
  autoload :Errors, 'aws-sdk-panorama/errors'
  autoload :Resource, 'aws-sdk-panorama/resource'
  autoload :EndpointParameters, 'aws-sdk-panorama/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-panorama/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-panorama/endpoints'

  GEM_VERSION = '1.45.0'

end

require_relative 'aws-sdk-panorama/customizations'
