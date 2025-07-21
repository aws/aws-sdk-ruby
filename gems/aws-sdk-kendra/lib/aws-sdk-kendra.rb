# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:kendra)

# This module provides support for AWSKendraFrontendService. This module is available in the
# `aws-sdk-kendra` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     kendra = Aws::Kendra::Client.new
#     resp = kendra.associate_entities_to_experience(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWSKendraFrontendService are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Kendra::Errors::ServiceError
#       # rescues all AWSKendraFrontendService API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Kendra
  autoload :Types, 'aws-sdk-kendra/types'
  autoload :ClientApi, 'aws-sdk-kendra/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-kendra/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-kendra/client'
  autoload :Errors, 'aws-sdk-kendra/errors'
  autoload :Resource, 'aws-sdk-kendra/resource'
  autoload :EndpointParameters, 'aws-sdk-kendra/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-kendra/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-kendra/endpoints'

  GEM_VERSION = '1.101.0'

end

require_relative 'aws-sdk-kendra/customizations'
