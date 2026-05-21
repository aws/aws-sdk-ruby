# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:elementalinference)

# This module provides support for AWS Elemental Inference. This module is available in the
# `aws-sdk-elementalinference` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     elemental_inference = Aws::ElementalInference::Client.new
#     resp = elemental_inference.associate_feed(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Elemental Inference are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ElementalInference::Errors::ServiceError
#       # rescues all AWS Elemental Inference API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ElementalInference
  autoload :Types, 'aws-sdk-elementalinference/types'
  autoload :ClientApi, 'aws-sdk-elementalinference/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-elementalinference/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-elementalinference/client'
  autoload :Errors, 'aws-sdk-elementalinference/errors'
  autoload :Waiters, 'aws-sdk-elementalinference/waiters'
  autoload :Resource, 'aws-sdk-elementalinference/resource'
  autoload :EndpointParameters, 'aws-sdk-elementalinference/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-elementalinference/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-elementalinference/endpoints'

  GEM_VERSION = '1.3.0'

end

require_relative 'aws-sdk-elementalinference/customizations'
