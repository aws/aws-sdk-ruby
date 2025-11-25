# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:inspector)

# This module provides support for Amazon Inspector. This module is available in the
# `aws-sdk-inspector` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     inspector = Aws::Inspector::Client.new
#     resp = inspector.add_attributes_to_findings(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Inspector are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Inspector::Errors::ServiceError
#       # rescues all Amazon Inspector API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Inspector
  autoload :Types, 'aws-sdk-inspector/types'
  autoload :ClientApi, 'aws-sdk-inspector/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-inspector/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-inspector/client'
  autoload :Errors, 'aws-sdk-inspector/errors'
  autoload :Resource, 'aws-sdk-inspector/resource'
  autoload :EndpointParameters, 'aws-sdk-inspector/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-inspector/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-inspector/endpoints'

  GEM_VERSION = '1.84.0'

end

require_relative 'aws-sdk-inspector/customizations'
