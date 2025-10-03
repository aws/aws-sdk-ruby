# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:imagebuilder)

# This module provides support for EC2 Image Builder. This module is available in the
# `aws-sdk-imagebuilder` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     imagebuilder = Aws::Imagebuilder::Client.new
#     resp = imagebuilder.cancel_image_creation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from EC2 Image Builder are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Imagebuilder::Errors::ServiceError
#       # rescues all EC2 Image Builder API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Imagebuilder
  autoload :Types, 'aws-sdk-imagebuilder/types'
  autoload :ClientApi, 'aws-sdk-imagebuilder/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-imagebuilder/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-imagebuilder/client'
  autoload :Errors, 'aws-sdk-imagebuilder/errors'
  autoload :Resource, 'aws-sdk-imagebuilder/resource'
  autoload :EndpointParameters, 'aws-sdk-imagebuilder/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-imagebuilder/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-imagebuilder/endpoints'

  GEM_VERSION = '1.89.0'

end

require_relative 'aws-sdk-imagebuilder/customizations'
