# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('DataBrew', Module.new) unless Aws.const_defined?('DataBrew')

# @title AWS Glue DataBrew
# <p>Glue DataBrew is a visual, cloud-scale data-preparation service. DataBrew
#             simplifies data preparation tasks, targeting data issues that are hard to spot and
#             time-consuming to fix. DataBrew empowers users of all technical levels to visualize the
#             data and perform one-click data transformations, with no coding required.</p>
module Aws::DataBrew
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-databrew/types'
require_relative 'aws-sdk-databrew/paginators'
require_relative 'aws-sdk-databrew/schema'
require_relative 'aws-sdk-databrew/auth_parameters'
require_relative 'aws-sdk-databrew/auth_resolver'
require_relative 'aws-sdk-databrew/client'
require_relative 'aws-sdk-databrew/customizations'
require_relative 'aws-sdk-databrew/errors'
require_relative 'aws-sdk-databrew/endpoint_parameters'
require_relative 'aws-sdk-databrew/endpoint_provider'
require_relative 'aws-sdk-databrew/waiters'
