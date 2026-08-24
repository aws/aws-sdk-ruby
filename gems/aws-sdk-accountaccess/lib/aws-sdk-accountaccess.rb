# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:accountaccess)

# This module provides support for Account Access. This module is available in the
# `aws-sdk-accountaccess` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     account_access = Aws::AccountAccess::Client.new
#     resp = account_access.create_application(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Account Access are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AccountAccess::Errors::ServiceError
#       # rescues all Account Access API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AccountAccess
  autoload :Types, 'aws-sdk-accountaccess/types'
  autoload :ClientApi, 'aws-sdk-accountaccess/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-accountaccess/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-accountaccess/client'
  autoload :Errors, 'aws-sdk-accountaccess/errors'
  autoload :Waiters, 'aws-sdk-accountaccess/waiters'
  autoload :Resource, 'aws-sdk-accountaccess/resource'
  autoload :EndpointParameters, 'aws-sdk-accountaccess/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-accountaccess/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-accountaccess/endpoints'

  GEM_VERSION = '1.1.0'

end

require_relative 'aws-sdk-accountaccess/customizations'
