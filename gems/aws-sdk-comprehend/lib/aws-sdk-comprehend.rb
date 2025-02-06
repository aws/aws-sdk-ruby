# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:comprehend)

# This module provides support for Amazon Comprehend. This module is available in the
# `aws-sdk-comprehend` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     comprehend = Aws::Comprehend::Client.new
#     resp = comprehend.batch_detect_dominant_language(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Comprehend are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Comprehend::Errors::ServiceError
#       # rescues all Amazon Comprehend API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Comprehend
  autoload :Types, 'aws-sdk-comprehend/types'
  autoload :ClientApi, 'aws-sdk-comprehend/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-comprehend/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-comprehend/client'
  autoload :Errors, 'aws-sdk-comprehend/errors'
  autoload :Resource, 'aws-sdk-comprehend/resource'
  autoload :EndpointParameters, 'aws-sdk-comprehend/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-comprehend/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-comprehend/endpoints'

  GEM_VERSION = '1.97.0'

end

require_relative 'aws-sdk-comprehend/customizations'
