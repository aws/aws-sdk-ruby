# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:swf)

# This module provides support for Amazon Simple Workflow Service. This module is available in the
# `aws-sdk-swf` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     swf = Aws::SWF::Client.new
#     resp = swf.count_closed_workflow_executions(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Simple Workflow Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SWF::Errors::ServiceError
#       # rescues all Amazon Simple Workflow Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SWF
  autoload :Types, 'aws-sdk-swf/types'
  autoload :ClientApi, 'aws-sdk-swf/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-swf/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-swf/client'
  autoload :Errors, 'aws-sdk-swf/errors'
  autoload :Resource, 'aws-sdk-swf/resource'
  autoload :EndpointParameters, 'aws-sdk-swf/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-swf/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-swf/endpoints'

  GEM_VERSION = '1.68.0'

end

require_relative 'aws-sdk-swf/customizations'
