# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:inspector2)

# This module provides support for Inspector2. This module is available in the
# `aws-sdk-inspector2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     inspector_2 = Aws::Inspector2::Client.new
#     resp = inspector_2.associate_member(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Inspector2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Inspector2::Errors::ServiceError
#       # rescues all Inspector2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Inspector2
  autoload :Types, 'aws-sdk-inspector2/types'
  autoload :ClientApi, 'aws-sdk-inspector2/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-inspector2/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-inspector2/client'
  autoload :Errors, 'aws-sdk-inspector2/errors'
  autoload :Resource, 'aws-sdk-inspector2/resource'
  autoload :EndpointParameters, 'aws-sdk-inspector2/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-inspector2/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-inspector2/endpoints'

  GEM_VERSION = '1.57.0'

end

require_relative 'aws-sdk-inspector2/customizations'
