# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('KendraRanking', Module.new) unless Aws.const_defined?('KendraRanking')

# @title Amazon Kendra Intelligent Ranking
# <p>Amazon Kendra Intelligent Ranking uses Amazon Kendra 
#             semantic search capabilities to intelligently re-rank a search 
#             service's results.</p>
module Aws::KendraRanking
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-kendraranking/types'
require_relative 'aws-sdk-kendraranking/paginators'
require_relative 'aws-sdk-kendraranking/schema'
require_relative 'aws-sdk-kendraranking/auth_parameters'
require_relative 'aws-sdk-kendraranking/auth_resolver'
require_relative 'aws-sdk-kendraranking/client'
require_relative 'aws-sdk-kendraranking/customizations'
require_relative 'aws-sdk-kendraranking/errors'
require_relative 'aws-sdk-kendraranking/endpoint_parameters'
require_relative 'aws-sdk-kendraranking/endpoint_provider'
require_relative 'aws-sdk-kendraranking/waiters'
