# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-xml'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CloudFormation', Module.new) unless Aws.const_defined?('CloudFormation')

# @title AWS CloudFormation
# <fullname>CloudFormation</fullname>
#          <p>CloudFormation allows you to create and manage Amazon Web Services infrastructure deployments predictably and
#    repeatedly. You can use CloudFormation to leverage Amazon Web Services products, such as Amazon Elastic Compute Cloud, Amazon Elastic Block Store,
#    Amazon Simple Notification Service, Elastic Load Balancing, and Amazon EC2 Auto Scaling to build highly reliable, highly scalable, cost-effective
#    applications without creating or configuring the underlying Amazon Web Services infrastructure.</p>
#          <p>With CloudFormation, you declare all your resources and dependencies in a template file. The
#    template defines a collection of resources as a single unit called a stack. CloudFormation creates
#    and deletes all member resources of the stack together and manages all dependencies between the
#    resources for you.</p>
#          <p>For more information about CloudFormation, see the <a href="http://aws.amazon.com/cloudformation/">CloudFormation product page</a>.</p>
#          <p>CloudFormation makes use of other Amazon Web Services products. If you need additional technical information
#    about a specific Amazon Web Services product, you can find the product's technical documentation at <a href="https://docs.aws.amazon.com/">docs.aws.amazon.com</a>.</p>
module Aws::CloudFormation
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cloudformation/types'
require_relative 'aws-sdk-cloudformation/paginators'
require_relative 'aws-sdk-cloudformation/schema'
require_relative 'aws-sdk-cloudformation/auth_parameters'
require_relative 'aws-sdk-cloudformation/auth_resolver'
require_relative 'aws-sdk-cloudformation/client'
require_relative 'aws-sdk-cloudformation/customizations'
require_relative 'aws-sdk-cloudformation/errors'
require_relative 'aws-sdk-cloudformation/endpoint_parameters'
require_relative 'aws-sdk-cloudformation/endpoint_provider'
require_relative 'aws-sdk-cloudformation/waiters'
