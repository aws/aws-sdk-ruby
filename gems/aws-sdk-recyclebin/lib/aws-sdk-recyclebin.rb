# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:recyclebin)

# This module provides support for Amazon Recycle Bin. This module is available in the
# `aws-sdk-recyclebin` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     recycle_bin = Aws::RecycleBin::Client.new
#     resp = recycle_bin.create_rule(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Recycle Bin are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::RecycleBin::Errors::ServiceError
#       # rescues all Amazon Recycle Bin API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::RecycleBin
  autoload :Types, 'aws-sdk-recyclebin/types'
  autoload :ClientApi, 'aws-sdk-recyclebin/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-recyclebin/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-recyclebin/client'
  autoload :Errors, 'aws-sdk-recyclebin/errors'
  autoload :Resource, 'aws-sdk-recyclebin/resource'
  autoload :EndpointParameters, 'aws-sdk-recyclebin/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-recyclebin/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-recyclebin/endpoints'

  GEM_VERSION = '1.43.0'

end

require_relative 'aws-sdk-recyclebin/customizations'
