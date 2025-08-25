# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:translate)

# This module provides support for Amazon Translate. This module is available in the
# `aws-sdk-translate` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     translate = Aws::Translate::Client.new
#     resp = translate.create_parallel_data(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Translate are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Translate::Errors::ServiceError
#       # rescues all Amazon Translate API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Translate
  autoload :Types, 'aws-sdk-translate/types'
  autoload :ClientApi, 'aws-sdk-translate/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-translate/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-translate/client'
  autoload :Errors, 'aws-sdk-translate/errors'
  autoload :Resource, 'aws-sdk-translate/resource'
  autoload :EndpointParameters, 'aws-sdk-translate/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-translate/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-translate/endpoints'

  GEM_VERSION = '1.87.0'

end

require_relative 'aws-sdk-translate/customizations'
