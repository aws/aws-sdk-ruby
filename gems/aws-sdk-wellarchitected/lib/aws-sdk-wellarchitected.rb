# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('WellArchitected', Module.new) unless Aws.const_defined?('WellArchitected')

# @title AWS Well-Architected Tool
# <fullname>Amazon Web Services Well-Architected</fullname> <p>Amazon Web Services Well-Architected helps you evaluate your architectures against Amazon Web Services best practices across operational excellence, security, reliability, performance efficiency, cost optimization, and sustainability. The service includes the Amazon Web Services Well-Architected Agent for AI-powered recommendations tailored to your specific environment, and the <a href="http://aws.amazon.com/well-architected-tool">Well-Architected Tool</a> for conducting reviews and tracking improvements.</p> <p>This is the <i>Amazon Web Services Well-Architected API Reference</i>. Through this API, you can programmatically access personalized recommendations and automation scripts from the Amazon Web Services Well-Architected Agent, and create and manage workloads, conduct lens reviews, track milestones, manage custom lenses, share workloads across accounts, and manage profiles with the Well-Architected Tool.</p> <p>For more information about the service, see the <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/intro.html">Amazon Web Services Well-Architected User Guide</a>.</p>
module Aws::WellArchitected
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-wellarchitected/types'
require_relative 'aws-sdk-wellarchitected/paginators'
require_relative 'aws-sdk-wellarchitected/schema'
require_relative 'aws-sdk-wellarchitected/auth_parameters'
require_relative 'aws-sdk-wellarchitected/auth_resolver'
require_relative 'aws-sdk-wellarchitected/client'
require_relative 'aws-sdk-wellarchitected/errors'
require_relative 'aws-sdk-wellarchitected/endpoint_parameters'
require_relative 'aws-sdk-wellarchitected/endpoint_provider'
require_relative 'aws-sdk-wellarchitected/waiters'
require_relative 'aws-sdk-wellarchitected/customizations'
