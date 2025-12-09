# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:connectcases)

# This module provides support for Amazon Connect Cases. This module is available in the
# `aws-sdk-connectcases` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     connect_cases = Aws::ConnectCases::Client.new
#     resp = connect_cases.batch_get_case_rule(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Connect Cases are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ConnectCases::Errors::ServiceError
#       # rescues all Amazon Connect Cases API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ConnectCases
  autoload :Types, 'aws-sdk-connectcases/types'
  autoload :ClientApi, 'aws-sdk-connectcases/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-connectcases/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-connectcases/client'
  autoload :Errors, 'aws-sdk-connectcases/errors'
  autoload :Waiters, 'aws-sdk-connectcases/waiters'
  autoload :Resource, 'aws-sdk-connectcases/resource'
  autoload :EndpointParameters, 'aws-sdk-connectcases/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-connectcases/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-connectcases/endpoints'

  GEM_VERSION = '1.56.0'

end

require_relative 'aws-sdk-connectcases/customizations'
