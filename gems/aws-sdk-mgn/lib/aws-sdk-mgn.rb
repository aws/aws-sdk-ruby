# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:mgn)

# This module provides support for Application Migration Service. This module is available in the
# `aws-sdk-mgn` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     mgn = Aws::Mgn::Client.new
#     resp = mgn.archive_application(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Application Migration Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Mgn::Errors::ServiceError
#       # rescues all Application Migration Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Mgn
  autoload :Types, 'aws-sdk-mgn/types'
  autoload :ClientApi, 'aws-sdk-mgn/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-mgn/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-mgn/client'
  autoload :Errors, 'aws-sdk-mgn/errors'
  autoload :Resource, 'aws-sdk-mgn/resource'
  autoload :EndpointParameters, 'aws-sdk-mgn/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-mgn/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-mgn/endpoints'

  GEM_VERSION = '1.54.0'

end

require_relative 'aws-sdk-mgn/customizations'
