# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ssmquicksetup)

# This module provides support for AWS Systems Manager QuickSetup. This module is available in the
# `aws-sdk-ssmquicksetup` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ssm_quick_setup = Aws::SSMQuickSetup::Client.new
#     resp = ssm_quick_setup.create_configuration_manager(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Systems Manager QuickSetup are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SSMQuickSetup::Errors::ServiceError
#       # rescues all AWS Systems Manager QuickSetup API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SSMQuickSetup
  autoload :Types, 'aws-sdk-ssmquicksetup/types'
  autoload :ClientApi, 'aws-sdk-ssmquicksetup/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ssmquicksetup/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ssmquicksetup/client'
  autoload :Errors, 'aws-sdk-ssmquicksetup/errors'
  autoload :Resource, 'aws-sdk-ssmquicksetup/resource'
  autoload :EndpointParameters, 'aws-sdk-ssmquicksetup/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ssmquicksetup/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ssmquicksetup/endpoints'

  GEM_VERSION = '1.18.0'

end

require_relative 'aws-sdk-ssmquicksetup/customizations'
