# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:securityir)

# This module provides support for Security Incident Response. This module is available in the
# `aws-sdk-securityir` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     security_ir = Aws::SecurityIR::Client.new
#     resp = security_ir.batch_get_member_account_details(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Security Incident Response are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SecurityIR::Errors::ServiceError
#       # rescues all Security Incident Response API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SecurityIR
  autoload :Types, 'aws-sdk-securityir/types'
  autoload :ClientApi, 'aws-sdk-securityir/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-securityir/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-securityir/client'
  autoload :Errors, 'aws-sdk-securityir/errors'
  autoload :Waiters, 'aws-sdk-securityir/waiters'
  autoload :Resource, 'aws-sdk-securityir/resource'
  autoload :EndpointParameters, 'aws-sdk-securityir/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-securityir/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-securityir/endpoints'

  GEM_VERSION = '1.14.0'

end

require_relative 'aws-sdk-securityir/customizations'
