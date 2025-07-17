# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:opsworkscm)

# This module provides support for AWS OpsWorks CM. This module is available in the
# `aws-sdk-opsworkscm` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ops_works_cm = Aws::OpsWorksCM::Client.new
#     resp = ops_works_cm.associate_node(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS OpsWorks CM are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::OpsWorksCM::Errors::ServiceError
#       # rescues all AWS OpsWorks CM API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::OpsWorksCM
  autoload :Types, 'aws-sdk-opsworkscm/types'
  autoload :ClientApi, 'aws-sdk-opsworkscm/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-opsworkscm/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-opsworkscm/client'
  autoload :Errors, 'aws-sdk-opsworkscm/errors'
  autoload :Waiters, 'aws-sdk-opsworkscm/waiters'
  autoload :Resource, 'aws-sdk-opsworkscm/resource'
  autoload :EndpointParameters, 'aws-sdk-opsworkscm/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-opsworkscm/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-opsworkscm/endpoints'

  GEM_VERSION = '1.85.0'

end

require_relative 'aws-sdk-opsworkscm/customizations'
