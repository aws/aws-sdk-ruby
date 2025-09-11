# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Neptunedata', Module.new) unless Aws.const_defined?('Neptunedata')

# @title Amazon NeptuneData
# <fullname>Neptune Data API</fullname> <p>The Amazon Neptune data API provides SDK support for more than 40 of Neptune's data operations, including data loading, query execution, data inquiry, and machine learning. It supports the Gremlin and openCypher query languages, and is available in all SDK languages. It automatically signs API requests and greatly simplifies integrating Neptune into your applications.</p>
# @see https://docs.aws.amazon.com/neptune/latest/userguide/intro.html API Reference
module Aws::Neptunedata
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-neptunedata/types'
require_relative 'aws-sdk-neptunedata/paginators'
require_relative 'aws-sdk-neptunedata/schema'
require_relative 'aws-sdk-neptunedata/auth_parameters'
require_relative 'aws-sdk-neptunedata/auth_resolver'
require_relative 'aws-sdk-neptunedata/client'
require_relative 'aws-sdk-neptunedata/customizations'
require_relative 'aws-sdk-neptunedata/errors'
require_relative 'aws-sdk-neptunedata/endpoint_parameters'
require_relative 'aws-sdk-neptunedata/endpoint_provider'
require_relative 'aws-sdk-neptunedata/waiters'
