# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:pcaconnectorscep)

# This module provides support for Private CA Connector for SCEP. This module is available in the
# `aws-sdk-pcaconnectorscep` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     pca_connector_scep = Aws::PcaConnectorScep::Client.new
#     resp = pca_connector_scep.create_challenge(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Private CA Connector for SCEP are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PcaConnectorScep::Errors::ServiceError
#       # rescues all Private CA Connector for SCEP API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PcaConnectorScep
  autoload :Types, 'aws-sdk-pcaconnectorscep/types'
  autoload :ClientApi, 'aws-sdk-pcaconnectorscep/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-pcaconnectorscep/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-pcaconnectorscep/client'
  autoload :Errors, 'aws-sdk-pcaconnectorscep/errors'
  autoload :Waiters, 'aws-sdk-pcaconnectorscep/waiters'
  autoload :Resource, 'aws-sdk-pcaconnectorscep/resource'
  autoload :EndpointParameters, 'aws-sdk-pcaconnectorscep/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-pcaconnectorscep/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-pcaconnectorscep/endpoints'

  GEM_VERSION = '1.19.0'

end

require_relative 'aws-sdk-pcaconnectorscep/customizations'
