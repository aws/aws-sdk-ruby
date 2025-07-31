# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:wellarchitected)

# This module provides support for AWS Well-Architected Tool. This module is available in the
# `aws-sdk-wellarchitected` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     well_architected = Aws::WellArchitected::Client.new
#     resp = well_architected.associate_lenses(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Well-Architected Tool are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::WellArchitected::Errors::ServiceError
#       # rescues all AWS Well-Architected Tool API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::WellArchitected
  autoload :Types, 'aws-sdk-wellarchitected/types'
  autoload :ClientApi, 'aws-sdk-wellarchitected/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-wellarchitected/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-wellarchitected/client'
  autoload :Errors, 'aws-sdk-wellarchitected/errors'
  autoload :Resource, 'aws-sdk-wellarchitected/resource'
  autoload :EndpointParameters, 'aws-sdk-wellarchitected/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-wellarchitected/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-wellarchitected/endpoints'

  GEM_VERSION = '1.56.0'

end

require_relative 'aws-sdk-wellarchitected/customizations'
