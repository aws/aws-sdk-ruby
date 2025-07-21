# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:repostspace)

# This module provides support for AWS re:Post Private. This module is available in the
# `aws-sdk-repostspace` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     repostspace = Aws::Repostspace::Client.new
#     resp = repostspace.batch_add_channel_role_to_accessors(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS re:Post Private are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Repostspace::Errors::ServiceError
#       # rescues all AWS re:Post Private API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Repostspace
  autoload :Types, 'aws-sdk-repostspace/types'
  autoload :ClientApi, 'aws-sdk-repostspace/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-repostspace/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-repostspace/client'
  autoload :Errors, 'aws-sdk-repostspace/errors'
  autoload :Waiters, 'aws-sdk-repostspace/waiters'
  autoload :Resource, 'aws-sdk-repostspace/resource'
  autoload :EndpointParameters, 'aws-sdk-repostspace/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-repostspace/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-repostspace/endpoints'

  GEM_VERSION = '1.23.0'

end

require_relative 'aws-sdk-repostspace/customizations'
