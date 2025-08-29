# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:quicksight)

# This module provides support for Amazon QuickSight. This module is available in the
# `aws-sdk-quicksight` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     quick_sight = Aws::QuickSight::Client.new
#     resp = quick_sight.batch_create_topic_reviewed_answer(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon QuickSight are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::QuickSight::Errors::ServiceError
#       # rescues all Amazon QuickSight API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::QuickSight
  autoload :Types, 'aws-sdk-quicksight/types'
  autoload :ClientApi, 'aws-sdk-quicksight/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-quicksight/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-quicksight/client'
  autoload :Errors, 'aws-sdk-quicksight/errors'
  autoload :Resource, 'aws-sdk-quicksight/resource'
  autoload :EndpointParameters, 'aws-sdk-quicksight/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-quicksight/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-quicksight/endpoints'

  GEM_VERSION = '1.157.0'

end

require_relative 'aws-sdk-quicksight/customizations'
