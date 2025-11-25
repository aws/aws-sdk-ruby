# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:dax)

# This module provides support for Amazon DynamoDB Accelerator (DAX). This module is available in the
# `aws-sdk-dax` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     dax = Aws::DAX::Client.new
#     resp = dax.create_cluster(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon DynamoDB Accelerator (DAX) are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DAX::Errors::ServiceError
#       # rescues all Amazon DynamoDB Accelerator (DAX) API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DAX
  autoload :Types, 'aws-sdk-dax/types'
  autoload :ClientApi, 'aws-sdk-dax/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-dax/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-dax/client'
  autoload :Errors, 'aws-sdk-dax/errors'
  autoload :Resource, 'aws-sdk-dax/resource'
  autoload :EndpointParameters, 'aws-sdk-dax/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-dax/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-dax/endpoints'

  GEM_VERSION = '1.80.0'

end

require_relative 'aws-sdk-dax/customizations'
