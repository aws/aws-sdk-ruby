# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudhsm)

# This module provides support for Amazon CloudHSM. This module is available in the
# `aws-sdk-cloudhsm` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_hsm = Aws::CloudHSM::Client.new
#     resp = cloud_hsm.add_tags_to_resource(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudHSM are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudHSM::Errors::ServiceError
#       # rescues all Amazon CloudHSM API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudHSM
  autoload :Types, 'aws-sdk-cloudhsm/types'
  autoload :ClientApi, 'aws-sdk-cloudhsm/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cloudhsm/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cloudhsm/client'
  autoload :Errors, 'aws-sdk-cloudhsm/errors'
  autoload :Resource, 'aws-sdk-cloudhsm/resource'
  autoload :EndpointParameters, 'aws-sdk-cloudhsm/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cloudhsm/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cloudhsm/endpoints'

  GEM_VERSION = '1.67.0'

end

require_relative 'aws-sdk-cloudhsm/customizations'
