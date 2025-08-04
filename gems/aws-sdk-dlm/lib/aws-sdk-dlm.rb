# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:dlm)

# This module provides support for Amazon Data Lifecycle Manager. This module is available in the
# `aws-sdk-dlm` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     dlm = Aws::DLM::Client.new
#     resp = dlm.create_lifecycle_policy(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Data Lifecycle Manager are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DLM::Errors::ServiceError
#       # rescues all Amazon Data Lifecycle Manager API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DLM
  autoload :Types, 'aws-sdk-dlm/types'
  autoload :ClientApi, 'aws-sdk-dlm/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-dlm/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-dlm/client'
  autoload :Errors, 'aws-sdk-dlm/errors'
  autoload :Resource, 'aws-sdk-dlm/resource'
  autoload :EndpointParameters, 'aws-sdk-dlm/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-dlm/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-dlm/endpoints'

  GEM_VERSION = '1.92.0'

end

require_relative 'aws-sdk-dlm/customizations'
