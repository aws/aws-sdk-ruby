# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('WellArchitected', Module.new) unless Aws.const_defined?('WellArchitected')

# @title AWS Well-Architected Tool
# <fullname>Well-Architected Tool</fullname>
#          <p>This is the <i>Well-Architected Tool API Reference</i>. The WA Tool API provides programmatic access to the 
#             <a href="http://aws.amazon.com/well-architected-tool">Well-Architected Tool</a> in the 
#            <a href="https://console.aws.amazon.com/wellarchitected">Amazon Web Services Management Console</a>. For information 
#             about the Well-Architected Tool, see the 
#            <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/intro.html">Well-Architected Tool User Guide</a>.</p>
module Aws::WellArchitected
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-wellarchitected/types'
require_relative 'aws-sdk-wellarchitected/paginators'
require_relative 'aws-sdk-wellarchitected/schema'
require_relative 'aws-sdk-wellarchitected/auth_parameters'
require_relative 'aws-sdk-wellarchitected/auth_resolver'
require_relative 'aws-sdk-wellarchitected/client'
require_relative 'aws-sdk-wellarchitected/customizations'
require_relative 'aws-sdk-wellarchitected/errors'
require_relative 'aws-sdk-wellarchitected/endpoint_parameters'
require_relative 'aws-sdk-wellarchitected/endpoint_provider'
require_relative 'aws-sdk-wellarchitected/waiters'
