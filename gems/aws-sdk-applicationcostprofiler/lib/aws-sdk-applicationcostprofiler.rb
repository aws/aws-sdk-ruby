# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ApplicationCostProfiler', Module.new) unless Aws.const_defined?('ApplicationCostProfiler')

# @title AWS Application Cost Profiler
# <p>This reference provides descriptions of the AWS Application Cost Profiler API.</p>
#          <p>The AWS Application Cost Profiler API provides programmatic access to view, create, update, and delete
#       application cost report definitions, as well as to import your usage data into the Application Cost Profiler
#       service.</p>
#          <p>For more information about using this service, see the <a href="https://docs.aws.amazon.com/application-cost-profiler/latest/userguide/introduction.html">AWS Application Cost
#         Profiler User Guide</a>.</p>
module Aws::ApplicationCostProfiler
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-applicationcostprofiler/types'
require_relative 'aws-sdk-applicationcostprofiler/paginators'
require_relative 'aws-sdk-applicationcostprofiler/schema'
require_relative 'aws-sdk-applicationcostprofiler/auth_parameters'
require_relative 'aws-sdk-applicationcostprofiler/auth_resolver'
require_relative 'aws-sdk-applicationcostprofiler/client'
require_relative 'aws-sdk-applicationcostprofiler/errors'
require_relative 'aws-sdk-applicationcostprofiler/endpoint_parameters'
require_relative 'aws-sdk-applicationcostprofiler/endpoint_provider'
require_relative 'aws-sdk-applicationcostprofiler/waiters'
require_relative 'aws-sdk-applicationcostprofiler/customizations'
