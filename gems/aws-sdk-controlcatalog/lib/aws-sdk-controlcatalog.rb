# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:controlcatalog)

# This module provides support for AWS Control Catalog. This module is available in the
# `aws-sdk-controlcatalog` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     control_catalog = Aws::ControlCatalog::Client.new
#     resp = control_catalog.get_control(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Control Catalog are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ControlCatalog::Errors::ServiceError
#       # rescues all AWS Control Catalog API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ControlCatalog
  autoload :Types, 'aws-sdk-controlcatalog/types'
  autoload :ClientApi, 'aws-sdk-controlcatalog/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-controlcatalog/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-controlcatalog/client'
  autoload :Errors, 'aws-sdk-controlcatalog/errors'
  autoload :Waiters, 'aws-sdk-controlcatalog/waiters'
  autoload :Resource, 'aws-sdk-controlcatalog/resource'
  autoload :EndpointParameters, 'aws-sdk-controlcatalog/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-controlcatalog/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-controlcatalog/endpoints'

  GEM_VERSION = '1.28.0'

end

require_relative 'aws-sdk-controlcatalog/customizations'
