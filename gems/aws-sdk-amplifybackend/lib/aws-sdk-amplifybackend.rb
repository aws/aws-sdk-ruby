# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:amplifybackend)

# This module provides support for AmplifyBackend. This module is available in the
# `aws-sdk-amplifybackend` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     amplify_backend = Aws::AmplifyBackend::Client.new
#     resp = amplify_backend.clone_backend(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AmplifyBackend are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AmplifyBackend::Errors::ServiceError
#       # rescues all AmplifyBackend API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AmplifyBackend
  autoload :Types, 'aws-sdk-amplifybackend/types'
  autoload :ClientApi, 'aws-sdk-amplifybackend/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-amplifybackend/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-amplifybackend/client'
  autoload :Errors, 'aws-sdk-amplifybackend/errors'
  autoload :Resource, 'aws-sdk-amplifybackend/resource'
  autoload :EndpointParameters, 'aws-sdk-amplifybackend/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-amplifybackend/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-amplifybackend/endpoints'

  GEM_VERSION = '1.52.0'

end

require_relative 'aws-sdk-amplifybackend/customizations'
