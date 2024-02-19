# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-pcaconnectorad/types'
require_relative 'aws-sdk-pcaconnectorad/client_api'
require_relative 'aws-sdk-pcaconnectorad/plugins/endpoints.rb'
require_relative 'aws-sdk-pcaconnectorad/client'
require_relative 'aws-sdk-pcaconnectorad/errors'
require_relative 'aws-sdk-pcaconnectorad/resource'
require_relative 'aws-sdk-pcaconnectorad/endpoint_parameters'
require_relative 'aws-sdk-pcaconnectorad/endpoint_provider'
require_relative 'aws-sdk-pcaconnectorad/endpoints'
require_relative 'aws-sdk-pcaconnectorad/customizations'

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

  GEM_VERSION = '1.4.0'

end
