# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:lookoutforvision)

# This module provides support for Amazon Lookout for Vision. This module is available in the
# `aws-sdk-lookoutforvision` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lookoutfor_vision = Aws::LookoutforVision::Client.new
#     resp = lookoutfor_vision.create_dataset(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Lookout for Vision are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LookoutforVision::Errors::ServiceError
#       # rescues all Amazon Lookout for Vision API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LookoutforVision
  autoload :Types, 'aws-sdk-lookoutforvision/types'
  autoload :ClientApi, 'aws-sdk-lookoutforvision/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-lookoutforvision/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-lookoutforvision/client'
  autoload :Errors, 'aws-sdk-lookoutforvision/errors'
  autoload :Resource, 'aws-sdk-lookoutforvision/resource'
  autoload :EndpointParameters, 'aws-sdk-lookoutforvision/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-lookoutforvision/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-lookoutforvision/endpoints'

  GEM_VERSION = '1.46.0'

end

require_relative 'aws-sdk-lookoutforvision/customizations'
