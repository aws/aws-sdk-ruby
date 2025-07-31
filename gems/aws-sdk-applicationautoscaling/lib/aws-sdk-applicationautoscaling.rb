# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:applicationautoscaling)

# This module provides support for Application Auto Scaling. This module is available in the
# `aws-sdk-applicationautoscaling` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     application_auto_scaling = Aws::ApplicationAutoScaling::Client.new
#     resp = application_auto_scaling.delete_scaling_policy(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Application Auto Scaling are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ApplicationAutoScaling::Errors::ServiceError
#       # rescues all Application Auto Scaling API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ApplicationAutoScaling
  autoload :Types, 'aws-sdk-applicationautoscaling/types'
  autoload :ClientApi, 'aws-sdk-applicationautoscaling/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-applicationautoscaling/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-applicationautoscaling/client'
  autoload :Errors, 'aws-sdk-applicationautoscaling/errors'
  autoload :Resource, 'aws-sdk-applicationautoscaling/resource'
  autoload :EndpointParameters, 'aws-sdk-applicationautoscaling/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-applicationautoscaling/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-applicationautoscaling/endpoints'

  GEM_VERSION = '1.109.0'

end

require_relative 'aws-sdk-applicationautoscaling/customizations'
