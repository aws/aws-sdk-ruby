# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('NeptuneGraph', Module.new) unless Aws.const_defined?('NeptuneGraph')

# @title Amazon Neptune Graph
# <p>Neptune Analytics is a new analytics database engine for Amazon Neptune that helps customers get to 
#     insights faster by quickly processing large amounts of graph data, invoking popular graph analytic 
#     algorithms in low-latency queries, and getting analytics results in seconds.</p>
module Aws::NeptuneGraph
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-neptunegraph/types'
require_relative 'aws-sdk-neptunegraph/paginators'
require_relative 'aws-sdk-neptunegraph/schema'
require_relative 'aws-sdk-neptunegraph/auth_parameters'
require_relative 'aws-sdk-neptunegraph/auth_resolver'
require_relative 'aws-sdk-neptunegraph/client'
require_relative 'aws-sdk-neptunegraph/customizations'
require_relative 'aws-sdk-neptunegraph/errors'
require_relative 'aws-sdk-neptunegraph/endpoint_parameters'
require_relative 'aws-sdk-neptunegraph/endpoint_provider'
require_relative 'aws-sdk-neptunegraph/waiters'
