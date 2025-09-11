# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('EMR', Module.new) unless Aws.const_defined?('EMR')

# @title Amazon EMR
# <p>Amazon EMR is a web service that makes it easier to process large amounts of
#          data efficiently. Amazon EMR uses Hadoop processing combined with several Amazon Web Services services to do tasks such as web indexing, data mining, log file analysis,
#          machine learning, scientific simulation, and data warehouse management.</p>
module Aws::EMR
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-emr/types'
require_relative 'aws-sdk-emr/paginators'
require_relative 'aws-sdk-emr/schema'
require_relative 'aws-sdk-emr/auth_parameters'
require_relative 'aws-sdk-emr/auth_resolver'
require_relative 'aws-sdk-emr/client'
require_relative 'aws-sdk-emr/customizations'
require_relative 'aws-sdk-emr/errors'
require_relative 'aws-sdk-emr/endpoint_parameters'
require_relative 'aws-sdk-emr/endpoint_provider'
require_relative 'aws-sdk-emr/waiters'
