# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:workspacesinstances)

# This module provides support for Amazon Workspaces Instances. This module is available in the
# `aws-sdk-workspacesinstances` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     workspaces_instances = Aws::WorkspacesInstances::Client.new
#     resp = workspaces_instances.associate_volume(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Workspaces Instances are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::WorkspacesInstances::Errors::ServiceError
#       # rescues all Amazon Workspaces Instances API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::WorkspacesInstances
  autoload :Types, 'aws-sdk-workspacesinstances/types'
  autoload :ClientApi, 'aws-sdk-workspacesinstances/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-workspacesinstances/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-workspacesinstances/client'
  autoload :Errors, 'aws-sdk-workspacesinstances/errors'
  autoload :Waiters, 'aws-sdk-workspacesinstances/waiters'
  autoload :Resource, 'aws-sdk-workspacesinstances/resource'
  autoload :EndpointParameters, 'aws-sdk-workspacesinstances/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-workspacesinstances/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-workspacesinstances/endpoints'

  GEM_VERSION = '1.8.0'

end

require_relative 'aws-sdk-workspacesinstances/customizations'
