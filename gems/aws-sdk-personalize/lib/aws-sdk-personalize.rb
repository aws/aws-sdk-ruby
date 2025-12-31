# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:personalize)

# This module provides support for Amazon Personalize. This module is available in the
# `aws-sdk-personalize` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     personalize = Aws::Personalize::Client.new
#     resp = personalize.create_batch_inference_job(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Personalize are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Personalize::Errors::ServiceError
#       # rescues all Amazon Personalize API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Personalize
  autoload :Types, 'aws-sdk-personalize/types'
  autoload :ClientApi, 'aws-sdk-personalize/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-personalize/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-personalize/client'
  autoload :Errors, 'aws-sdk-personalize/errors'
  autoload :Resource, 'aws-sdk-personalize/resource'
  autoload :EndpointParameters, 'aws-sdk-personalize/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-personalize/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-personalize/endpoints'

  GEM_VERSION = '1.92.0'

end

require_relative 'aws-sdk-personalize/customizations'
