# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:proton)

# This module provides support for AWS Proton. This module is available in the
# `aws-sdk-proton` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     proton = Aws::Proton::Client.new
#     resp = proton.accept_environment_account_connection(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Proton are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Proton::Errors::ServiceError
#       # rescues all AWS Proton API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Proton
  autoload :Types, 'aws-sdk-proton/types'
  autoload :ClientApi, 'aws-sdk-proton/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-proton/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-proton/client'
  autoload :Errors, 'aws-sdk-proton/errors'
  autoload :Waiters, 'aws-sdk-proton/waiters'
  autoload :Resource, 'aws-sdk-proton/resource'
  autoload :EndpointParameters, 'aws-sdk-proton/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-proton/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-proton/endpoints'

  GEM_VERSION = '1.57.0'

end

require_relative 'aws-sdk-proton/customizations'
