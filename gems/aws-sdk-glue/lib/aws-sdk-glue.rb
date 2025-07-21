# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:glue)

# This module provides support for AWS Glue. This module is available in the
# `aws-sdk-glue` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     glue = Aws::Glue::Client.new
#     resp = glue.batch_create_partition(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Glue are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Glue::Errors::ServiceError
#       # rescues all AWS Glue API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Glue
  autoload :Types, 'aws-sdk-glue/types'
  autoload :ClientApi, 'aws-sdk-glue/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-glue/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-glue/client'
  autoload :Errors, 'aws-sdk-glue/errors'
  autoload :Resource, 'aws-sdk-glue/resource'
  autoload :EndpointParameters, 'aws-sdk-glue/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-glue/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-glue/endpoints'

  GEM_VERSION = '1.226.0'

end

require_relative 'aws-sdk-glue/customizations'
