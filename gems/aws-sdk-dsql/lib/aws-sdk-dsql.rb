# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('DSQL', Module.new) unless Aws.const_defined?('DSQL')

# @title Amazon Aurora DSQL
# <p>This is an interface reference for Amazon Aurora DSQL. It contains documentation for one of the
#          programming or command line interfaces you can use to manage Amazon Aurora DSQL.</p>
#          <p>Amazon Aurora DSQL is a serverless, distributed SQL database suitable for workloads of any size.
#           is available in both single-Region and multi-Region configurations, so your
#          clusters and databases are always available even if an Availability Zone or an Amazon Web Services Region are unavailable.  lets you focus on using your data to
#          acquire new insights for your business and customers.</p>
module Aws::DSQL
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-dsql/types'
require_relative 'aws-sdk-dsql/paginators'
require_relative 'aws-sdk-dsql/schema'
require_relative 'aws-sdk-dsql/auth_parameters'
require_relative 'aws-sdk-dsql/auth_resolver'
require_relative 'aws-sdk-dsql/client'
require_relative 'aws-sdk-dsql/errors'
require_relative 'aws-sdk-dsql/endpoint_parameters'
require_relative 'aws-sdk-dsql/endpoint_provider'
require_relative 'aws-sdk-dsql/waiters'
require_relative 'aws-sdk-dsql/customizations'
