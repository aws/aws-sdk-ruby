# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-launchwizard/types'
require_relative 'aws-sdk-launchwizard/client_api'
require_relative 'aws-sdk-launchwizard/plugins/endpoints.rb'
require_relative 'aws-sdk-launchwizard/client'
require_relative 'aws-sdk-launchwizard/errors'
require_relative 'aws-sdk-launchwizard/resource'
require_relative 'aws-sdk-launchwizard/endpoint_parameters'
require_relative 'aws-sdk-launchwizard/endpoint_provider'
require_relative 'aws-sdk-launchwizard/endpoints'
require_relative 'aws-sdk-launchwizard/customizations'

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

  GEM_VERSION = '1.3.0'

end
