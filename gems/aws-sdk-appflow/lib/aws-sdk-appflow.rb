# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:appflow)

# This module provides support for Amazon Appflow. This module is available in the
# `aws-sdk-appflow` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     appflow = Aws::Appflow::Client.new
#     resp = appflow.cancel_flow_executions(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Appflow are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Appflow::Errors::ServiceError
#       # rescues all Amazon Appflow API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Appflow
  autoload :Types, 'aws-sdk-appflow/types'
  autoload :ClientApi, 'aws-sdk-appflow/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-appflow/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-appflow/client'
  autoload :Errors, 'aws-sdk-appflow/errors'
  autoload :Resource, 'aws-sdk-appflow/resource'
  autoload :EndpointParameters, 'aws-sdk-appflow/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-appflow/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-appflow/endpoints'

  GEM_VERSION = '1.77.0'

end

require_relative 'aws-sdk-appflow/customizations'
