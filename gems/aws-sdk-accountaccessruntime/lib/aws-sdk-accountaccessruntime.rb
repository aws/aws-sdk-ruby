# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'

Aws::Plugins::GlobalConfiguration.add_identifier(:accountaccessruntime)

# This module provides support for Account Access Runtime. This module is available in the
# `aws-sdk-accountaccessruntime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     account_access_runtime = Aws::AccountAccessRuntime::Client.new
#     resp = account_access_runtime.get_role_credentials(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Account Access Runtime are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AccountAccessRuntime::Errors::ServiceError
#       # rescues all Account Access Runtime API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AccountAccessRuntime
  autoload :Types, 'aws-sdk-accountaccessruntime/types'
  autoload :ClientApi, 'aws-sdk-accountaccessruntime/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-accountaccessruntime/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-accountaccessruntime/client'
  autoload :Errors, 'aws-sdk-accountaccessruntime/errors'
  autoload :Waiters, 'aws-sdk-accountaccessruntime/waiters'
  autoload :Resource, 'aws-sdk-accountaccessruntime/resource'
  autoload :EndpointParameters, 'aws-sdk-accountaccessruntime/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-accountaccessruntime/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-accountaccessruntime/endpoints'

  GEM_VERSION = '1.2.0'

end

require_relative 'aws-sdk-accountaccessruntime/customizations'
