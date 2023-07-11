# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-kendraranking/types'
require_relative 'aws-sdk-kendraranking/client_api'
require_relative 'aws-sdk-kendraranking/plugins/endpoints.rb'
require_relative 'aws-sdk-kendraranking/client'
require_relative 'aws-sdk-kendraranking/errors'
require_relative 'aws-sdk-kendraranking/resource'
require_relative 'aws-sdk-kendraranking/endpoint_parameters'
require_relative 'aws-sdk-kendraranking/endpoint_provider'
require_relative 'aws-sdk-kendraranking/endpoints'
require_relative 'aws-sdk-kendraranking/customizations'

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

  GEM_VERSION = '1.6.0'

end
