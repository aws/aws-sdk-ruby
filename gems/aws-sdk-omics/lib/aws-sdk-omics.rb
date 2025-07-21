# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:omics)

# This module provides support for Amazon Omics. This module is available in the
# `aws-sdk-omics` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     omics = Aws::Omics::Client.new
#     resp = omics.abort_multipart_read_set_upload(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Omics are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Omics::Errors::ServiceError
#       # rescues all Amazon Omics API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Omics
  autoload :Types, 'aws-sdk-omics/types'
  autoload :ClientApi, 'aws-sdk-omics/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-omics/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-omics/client'
  autoload :Errors, 'aws-sdk-omics/errors'
  autoload :Waiters, 'aws-sdk-omics/waiters'
  autoload :Resource, 'aws-sdk-omics/resource'
  autoload :EndpointParameters, 'aws-sdk-omics/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-omics/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-omics/endpoints'

  GEM_VERSION = '1.49.0'

end

require_relative 'aws-sdk-omics/customizations'
