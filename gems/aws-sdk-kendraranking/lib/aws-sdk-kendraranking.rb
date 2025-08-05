# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:kendraranking)

# This module provides support for Amazon Kendra Intelligent Ranking. This module is available in the
# `aws-sdk-kendraranking` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     kendra_ranking = Aws::KendraRanking::Client.new
#     resp = kendra_ranking.create_rescore_execution_plan(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Kendra Intelligent Ranking are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::KendraRanking::Errors::ServiceError
#       # rescues all Amazon Kendra Intelligent Ranking API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::KendraRanking
  autoload :Types, 'aws-sdk-kendraranking/types'
  autoload :ClientApi, 'aws-sdk-kendraranking/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-kendraranking/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-kendraranking/client'
  autoload :Errors, 'aws-sdk-kendraranking/errors'
  autoload :Resource, 'aws-sdk-kendraranking/resource'
  autoload :EndpointParameters, 'aws-sdk-kendraranking/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-kendraranking/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-kendraranking/endpoints'

  GEM_VERSION = '1.34.0'

end

require_relative 'aws-sdk-kendraranking/customizations'
