# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ssm)

# This module provides support for Amazon Simple Systems Manager (SSM). This module is available in the
# `aws-sdk-ssm` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ssm = Aws::SSM::Client.new
#     resp = ssm.add_tags_to_resource(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Simple Systems Manager (SSM) are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SSM::Errors::ServiceError
#       # rescues all Amazon Simple Systems Manager (SSM) API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SSM
  autoload :Types, 'aws-sdk-ssm/types'
  autoload :ClientApi, 'aws-sdk-ssm/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ssm/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ssm/client'
  autoload :Errors, 'aws-sdk-ssm/errors'
  autoload :Waiters, 'aws-sdk-ssm/waiters'
  autoload :Resource, 'aws-sdk-ssm/resource'
  autoload :EndpointParameters, 'aws-sdk-ssm/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ssm/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ssm/endpoints'

  GEM_VERSION = '1.191.0'

end

require_relative 'aws-sdk-ssm/customizations'
