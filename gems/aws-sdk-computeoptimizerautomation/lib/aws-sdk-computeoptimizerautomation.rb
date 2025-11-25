# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:computeoptimizerautomation)

# This module provides support for Compute Optimizer Automation. This module is available in the
# `aws-sdk-computeoptimizerautomation` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     compute_optimizer_automation = Aws::ComputeOptimizerAutomation::Client.new
#     resp = compute_optimizer_automation.associate_accounts(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Compute Optimizer Automation are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ComputeOptimizerAutomation::Errors::ServiceError
#       # rescues all Compute Optimizer Automation API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ComputeOptimizerAutomation
  autoload :Types, 'aws-sdk-computeoptimizerautomation/types'
  autoload :ClientApi, 'aws-sdk-computeoptimizerautomation/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-computeoptimizerautomation/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-computeoptimizerautomation/client'
  autoload :Errors, 'aws-sdk-computeoptimizerautomation/errors'
  autoload :Waiters, 'aws-sdk-computeoptimizerautomation/waiters'
  autoload :Resource, 'aws-sdk-computeoptimizerautomation/resource'
  autoload :EndpointParameters, 'aws-sdk-computeoptimizerautomation/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-computeoptimizerautomation/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-computeoptimizerautomation/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-computeoptimizerautomation/customizations'
