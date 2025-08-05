# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:fsx)

# This module provides support for Amazon FSx. This module is available in the
# `aws-sdk-fsx` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     f_sx = Aws::FSx::Client.new
#     resp = f_sx.associate_file_system_aliases(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon FSx are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::FSx::Errors::ServiceError
#       # rescues all Amazon FSx API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::FSx
  autoload :Types, 'aws-sdk-fsx/types'
  autoload :ClientApi, 'aws-sdk-fsx/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-fsx/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-fsx/client'
  autoload :Errors, 'aws-sdk-fsx/errors'
  autoload :Resource, 'aws-sdk-fsx/resource'
  autoload :EndpointParameters, 'aws-sdk-fsx/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-fsx/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-fsx/endpoints'

  GEM_VERSION = '1.118.0'

end

require_relative 'aws-sdk-fsx/customizations'
