# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Batch', Module.new) unless Aws.const_defined?('Batch')

# @title AWS Batch
# <fullname>Batch</fullname>
#          <p>Using Batch, you can run batch computing workloads on the Amazon Web Services Cloud. Batch computing is a common means for
#    developers, scientists, and engineers to access large amounts of compute resources. Batch uses the advantages of
#    the batch computing to remove the undifferentiated heavy lifting of configuring and managing required infrastructure.
#    At the same time, it also adopts a familiar batch computing software approach. You can use Batch to efficiently
#    provision resources, and work toward eliminating capacity constraints, reducing your overall compute costs, and
#    delivering results more quickly.</p>
#          <p>As a fully managed service, Batch can run batch computing workloads of any scale. Batch automatically
#    provisions compute resources and optimizes workload distribution based on the quantity and scale of your specific
#    workloads. With Batch, there's no need to install or manage batch computing software. This means that you can focus
#    on analyzing results and solving your specific problems instead.</p>
module Aws::Batch
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-batch/types'
require_relative 'aws-sdk-batch/paginators'
require_relative 'aws-sdk-batch/schema'
require_relative 'aws-sdk-batch/auth_parameters'
require_relative 'aws-sdk-batch/auth_resolver'
require_relative 'aws-sdk-batch/client'
require_relative 'aws-sdk-batch/errors'
require_relative 'aws-sdk-batch/endpoint_parameters'
require_relative 'aws-sdk-batch/endpoint_provider'
require_relative 'aws-sdk-batch/waiters'
require_relative 'aws-sdk-batch/customizations'
