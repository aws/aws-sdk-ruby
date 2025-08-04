# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:launchwizard)

# This module provides support for AWS Launch Wizard. This module is available in the
# `aws-sdk-launchwizard` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     launch_wizard = Aws::LaunchWizard::Client.new
#     resp = launch_wizard.create_deployment(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Launch Wizard are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LaunchWizard::Errors::ServiceError
#       # rescues all AWS Launch Wizard API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LaunchWizard
  autoload :Types, 'aws-sdk-launchwizard/types'
  autoload :ClientApi, 'aws-sdk-launchwizard/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-launchwizard/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-launchwizard/client'
  autoload :Errors, 'aws-sdk-launchwizard/errors'
  autoload :Resource, 'aws-sdk-launchwizard/resource'
  autoload :EndpointParameters, 'aws-sdk-launchwizard/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-launchwizard/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-launchwizard/endpoints'

  GEM_VERSION = '1.26.0'

end

require_relative 'aws-sdk-launchwizard/customizations'
