# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:acmpca)

# This module provides support for AWS Certificate Manager Private Certificate Authority. This module is available in the
# `aws-sdk-acmpca` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     acmpca = Aws::ACMPCA::Client.new
#     resp = acmpca.create_certificate_authority(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Certificate Manager Private Certificate Authority are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ACMPCA::Errors::ServiceError
#       # rescues all AWS Certificate Manager Private Certificate Authority API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ACMPCA
  autoload :Types, 'aws-sdk-acmpca/types'
  autoload :ClientApi, 'aws-sdk-acmpca/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-acmpca/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-acmpca/client'
  autoload :Errors, 'aws-sdk-acmpca/errors'
  autoload :Waiters, 'aws-sdk-acmpca/waiters'
  autoload :Resource, 'aws-sdk-acmpca/resource'
  autoload :EndpointParameters, 'aws-sdk-acmpca/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-acmpca/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-acmpca/endpoints'

  GEM_VERSION = '1.100.0'

end

require_relative 'aws-sdk-acmpca/customizations'
