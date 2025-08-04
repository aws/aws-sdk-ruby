# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:pcaconnectorad)

# This module provides support for PcaConnectorAd. This module is available in the
# `aws-sdk-pcaconnectorad` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     pca_connector_ad = Aws::PcaConnectorAd::Client.new
#     resp = pca_connector_ad.create_connector(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from PcaConnectorAd are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PcaConnectorAd::Errors::ServiceError
#       # rescues all PcaConnectorAd API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PcaConnectorAd
  autoload :Types, 'aws-sdk-pcaconnectorad/types'
  autoload :ClientApi, 'aws-sdk-pcaconnectorad/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-pcaconnectorad/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-pcaconnectorad/client'
  autoload :Errors, 'aws-sdk-pcaconnectorad/errors'
  autoload :Resource, 'aws-sdk-pcaconnectorad/resource'
  autoload :EndpointParameters, 'aws-sdk-pcaconnectorad/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-pcaconnectorad/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-pcaconnectorad/endpoints'

  GEM_VERSION = '1.27.0'

end

require_relative 'aws-sdk-pcaconnectorad/customizations'
