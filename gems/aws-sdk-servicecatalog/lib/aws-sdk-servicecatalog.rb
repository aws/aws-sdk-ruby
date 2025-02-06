# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:servicecatalog)

# This module provides support for AWS Service Catalog. This module is available in the
# `aws-sdk-servicecatalog` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     service_catalog = Aws::ServiceCatalog::Client.new
#     resp = service_catalog.accept_portfolio_share(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Service Catalog are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ServiceCatalog::Errors::ServiceError
#       # rescues all AWS Service Catalog API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ServiceCatalog
  autoload :Types, 'aws-sdk-servicecatalog/types'
  autoload :ClientApi, 'aws-sdk-servicecatalog/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-servicecatalog/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-servicecatalog/client'
  autoload :Errors, 'aws-sdk-servicecatalog/errors'
  autoload :Resource, 'aws-sdk-servicecatalog/resource'
  autoload :EndpointParameters, 'aws-sdk-servicecatalog/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-servicecatalog/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-servicecatalog/endpoints'

  GEM_VERSION = '1.109.0'

end

require_relative 'aws-sdk-servicecatalog/customizations'
