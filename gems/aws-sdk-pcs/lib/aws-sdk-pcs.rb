# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('PCS', Module.new) unless Aws.const_defined?('PCS')

# @title AWS Parallel Computing Service
# <p>Parallel Computing Service (PCS) is a managed service that makes it easier for you to run and scale your high performance computing (HPC) workloads, and build scientific and engineering models on Amazon Web Services using Slurm. For more information, see the <a href="https://docs.aws.amazon.com/pcs/latest/userguide">Parallel Computing Service User Guide</a>.</p> <p>This reference describes the actions and data types of the service management API. You can use the Amazon Web Services SDKs to call the API actions in software, or use the Command Line Interface (CLI) to call the API actions manually. These API actions manage the service through an Amazon Web Services account.</p> <p>The API actions operate on PCS resources. A <i>resource</i> is an entity in Amazon Web Services that you can work with. Amazon Web Services services create resources when you use the features of the service. Examples of PCS resources include clusters, compute node groups, and queues. For more information about resources in Amazon Web Services, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/getting-started-terms-and-concepts.html#term-resource">Resource</a> in the <i>Resource Explorer User Guide</i>. </p> <p>An PCS <i>compute node</i> is an Amazon EC2 instance. You don't launch compute nodes directly. PCS uses configuration information that you provide to launch compute nodes in your Amazon Web Services account. You receive billing charges for your running compute nodes. PCS automatically terminates your compute nodes when you delete the PCS resources related to those compute nodes.</p>
module Aws::PCS
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-pcs/types'
require_relative 'aws-sdk-pcs/paginators'
require_relative 'aws-sdk-pcs/schema'
require_relative 'aws-sdk-pcs/auth_parameters'
require_relative 'aws-sdk-pcs/auth_resolver'
require_relative 'aws-sdk-pcs/client'
require_relative 'aws-sdk-pcs/customizations'
require_relative 'aws-sdk-pcs/errors'
require_relative 'aws-sdk-pcs/endpoint_parameters'
require_relative 'aws-sdk-pcs/endpoint_provider'
require_relative 'aws-sdk-pcs/waiters'
