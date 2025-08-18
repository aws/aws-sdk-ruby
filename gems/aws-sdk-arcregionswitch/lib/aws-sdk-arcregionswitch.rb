# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:arcregionswitch)

# This module provides support for ARC - Region switch. This module is available in the
# `aws-sdk-arcregionswitch` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     arc_regionswitch = Aws::ARCRegionswitch::Client.new
#     resp = arc_regionswitch.approve_plan_execution_step(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from ARC - Region switch are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ARCRegionswitch::Errors::ServiceError
#       # rescues all ARC - Region switch API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ARCRegionswitch
  autoload :Types, 'aws-sdk-arcregionswitch/types'
  autoload :ClientApi, 'aws-sdk-arcregionswitch/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-arcregionswitch/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-arcregionswitch/client'
  autoload :Errors, 'aws-sdk-arcregionswitch/errors'
  autoload :Waiters, 'aws-sdk-arcregionswitch/waiters'
  autoload :Resource, 'aws-sdk-arcregionswitch/resource'
  autoload :EndpointParameters, 'aws-sdk-arcregionswitch/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-arcregionswitch/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-arcregionswitch/endpoints'

  GEM_VERSION = '1.2.0'

end

require_relative 'aws-sdk-arcregionswitch/customizations'
