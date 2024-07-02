# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-pcaconnectorscep/types'
require_relative 'aws-sdk-pcaconnectorscep/client_api'
require_relative 'aws-sdk-pcaconnectorscep/plugins/endpoints.rb'
require_relative 'aws-sdk-pcaconnectorscep/client'
require_relative 'aws-sdk-pcaconnectorscep/errors'
require_relative 'aws-sdk-pcaconnectorscep/waiters'
require_relative 'aws-sdk-pcaconnectorscep/resource'
require_relative 'aws-sdk-pcaconnectorscep/endpoint_parameters'
require_relative 'aws-sdk-pcaconnectorscep/endpoint_provider'
require_relative 'aws-sdk-pcaconnectorscep/endpoints'
require_relative 'aws-sdk-pcaconnectorscep/customizations'

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

  GEM_VERSION = '1.3.0'

end
