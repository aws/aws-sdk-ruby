# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:resiliencehubv2)

# This module provides support for AWS Resilience Hub V2. This module is available in the
# `aws-sdk-resiliencehubv2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     resiliencehubv_2 = Aws::Resiliencehubv2::Client.new
#     resp = resiliencehubv_2.create_assertion(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Resilience Hub V2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Resiliencehubv2::Errors::ServiceError
#       # rescues all AWS Resilience Hub V2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Resiliencehubv2
  autoload :Types, 'aws-sdk-resiliencehubv2/types'
  autoload :ClientApi, 'aws-sdk-resiliencehubv2/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-resiliencehubv2/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-resiliencehubv2/client'
  autoload :Errors, 'aws-sdk-resiliencehubv2/errors'
  autoload :Waiters, 'aws-sdk-resiliencehubv2/waiters'
  autoload :Resource, 'aws-sdk-resiliencehubv2/resource'
  autoload :EndpointParameters, 'aws-sdk-resiliencehubv2/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-resiliencehubv2/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-resiliencehubv2/endpoints'

  GEM_VERSION = '1.2.0'

end

require_relative 'aws-sdk-resiliencehubv2/customizations'
