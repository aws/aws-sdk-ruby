# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:signerdata)

# This module provides support for AWS Signer Data Plane. This module is available in the
# `aws-sdk-signerdata` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     signer_data = Aws::SignerData::Client.new
#     resp = signer_data.get_revocation_status(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Signer Data Plane are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SignerData::Errors::ServiceError
#       # rescues all AWS Signer Data Plane API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SignerData
  autoload :Types, 'aws-sdk-signerdata/types'
  autoload :ClientApi, 'aws-sdk-signerdata/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-signerdata/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-signerdata/client'
  autoload :Errors, 'aws-sdk-signerdata/errors'
  autoload :Waiters, 'aws-sdk-signerdata/waiters'
  autoload :Resource, 'aws-sdk-signerdata/resource'
  autoload :EndpointParameters, 'aws-sdk-signerdata/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-signerdata/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-signerdata/endpoints'

  GEM_VERSION = '1.5.0'

end

require_relative 'aws-sdk-signerdata/customizations'
