# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:artifact)

# This module provides support for AWS Artifact. This module is available in the
# `aws-sdk-artifact` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     artifact = Aws::Artifact::Client.new
#     resp = artifact.get_account_settings(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Artifact are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Artifact::Errors::ServiceError
#       # rescues all AWS Artifact API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Artifact
  autoload :Types, 'aws-sdk-artifact/types'
  autoload :ClientApi, 'aws-sdk-artifact/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-artifact/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-artifact/client'
  autoload :Errors, 'aws-sdk-artifact/errors'
  autoload :Waiters, 'aws-sdk-artifact/waiters'
  autoload :Resource, 'aws-sdk-artifact/resource'
  autoload :EndpointParameters, 'aws-sdk-artifact/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-artifact/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-artifact/endpoints'

  GEM_VERSION = '1.28.0'

end

require_relative 'aws-sdk-artifact/customizations'
