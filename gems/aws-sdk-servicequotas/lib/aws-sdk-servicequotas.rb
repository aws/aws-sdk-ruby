# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ServiceQuotas', Module.new) unless Aws.const_defined?('ServiceQuotas')

# @title Service Quotas
# <p>With Service Quotas, you can view and manage your quotas easily as your Amazon Web Services workloads grow.
#             Quotas, also referred to as limits, are the maximum number of resources that you can
#             create in your Amazon Web Services account. For more information, see the <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/">Service Quotas User Guide</a>.</p>
#          <p>You need Amazon Web Services CLI version 2.13.20 or higher to view and manage resource-level quotas such as <code>Instances
#         per domain</code> for Amazon OpenSearch Service.</p>
module Aws::ServiceQuotas
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-servicequotas/types'
require_relative 'aws-sdk-servicequotas/paginators'
require_relative 'aws-sdk-servicequotas/schema'
require_relative 'aws-sdk-servicequotas/auth_parameters'
require_relative 'aws-sdk-servicequotas/auth_resolver'
require_relative 'aws-sdk-servicequotas/client'
require_relative 'aws-sdk-servicequotas/customizations'
require_relative 'aws-sdk-servicequotas/errors'
require_relative 'aws-sdk-servicequotas/endpoint_parameters'
require_relative 'aws-sdk-servicequotas/endpoint_provider'
require_relative 'aws-sdk-servicequotas/waiters'
