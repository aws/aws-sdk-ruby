# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:novaact)

# This module provides support for Nova Act Service. This module is available in the
# `aws-sdk-novaact` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     nova_act = Aws::NovaAct::Client.new
#     resp = nova_act.create_act(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Nova Act Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::NovaAct::Errors::ServiceError
#       # rescues all Nova Act Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::NovaAct
  autoload :Types, 'aws-sdk-novaact/types'
  autoload :ClientApi, 'aws-sdk-novaact/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-novaact/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-novaact/client'
  autoload :Errors, 'aws-sdk-novaact/errors'
  autoload :Waiters, 'aws-sdk-novaact/waiters'
  autoload :Resource, 'aws-sdk-novaact/resource'
  autoload :EndpointParameters, 'aws-sdk-novaact/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-novaact/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-novaact/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-novaact/customizations'
