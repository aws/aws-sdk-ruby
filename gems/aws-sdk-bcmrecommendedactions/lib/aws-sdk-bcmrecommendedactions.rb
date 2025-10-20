# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:bcmrecommendedactions)

# This module provides support for AWS Billing and Cost Management Recommended Actions. This module is available in the
# `aws-sdk-bcmrecommendedactions` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     bcm_recommended_actions = Aws::BCMRecommendedActions::Client.new
#     resp = bcm_recommended_actions.list_recommended_actions(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Billing and Cost Management Recommended Actions are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::BCMRecommendedActions::Errors::ServiceError
#       # rescues all AWS Billing and Cost Management Recommended Actions API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::BCMRecommendedActions
  autoload :Types, 'aws-sdk-bcmrecommendedactions/types'
  autoload :ClientApi, 'aws-sdk-bcmrecommendedactions/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-bcmrecommendedactions/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-bcmrecommendedactions/client'
  autoload :Errors, 'aws-sdk-bcmrecommendedactions/errors'
  autoload :Waiters, 'aws-sdk-bcmrecommendedactions/waiters'
  autoload :Resource, 'aws-sdk-bcmrecommendedactions/resource'
  autoload :EndpointParameters, 'aws-sdk-bcmrecommendedactions/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-bcmrecommendedactions/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-bcmrecommendedactions/endpoints'

  GEM_VERSION = '1.2.0'

end

require_relative 'aws-sdk-bcmrecommendedactions/customizations'
