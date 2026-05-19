# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:securityagent)

# This module provides support for AWS Security Agent. This module is available in the
# `aws-sdk-securityagent` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     security_agent = Aws::SecurityAgent::Client.new
#     resp = security_agent.add_artifact(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Security Agent are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SecurityAgent::Errors::ServiceError
#       # rescues all AWS Security Agent API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SecurityAgent
  autoload :Types, 'aws-sdk-securityagent/types'
  autoload :ClientApi, 'aws-sdk-securityagent/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-securityagent/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-securityagent/client'
  autoload :Errors, 'aws-sdk-securityagent/errors'
  autoload :Waiters, 'aws-sdk-securityagent/waiters'
  autoload :Resource, 'aws-sdk-securityagent/resource'
  autoload :EndpointParameters, 'aws-sdk-securityagent/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-securityagent/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-securityagent/endpoints'

  GEM_VERSION = '1.2.0'

end

require_relative 'aws-sdk-securityagent/customizations'
