# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('QApps', Module.new) unless Aws.const_defined?('QApps')

# @title QApps
# <p>The Amazon Q Apps feature capability within Amazon Q Business allows web experience users to create lightweight, purpose-built AI apps to fulfill specific tasks from within their web experience. For example, users can create a Q App that exclusively generates marketing-related content to improve your marketing team's productivity or a Q App for writing customer emails and creating promotional content using a certain style of voice, tone, and branding. For more information on the capabilities, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/deploy-experience-iam-role.html#q-apps-actions">Amazon Q Apps capabilities</a> in the <i>Amazon Q Business User Guide</i>. </p> <p>For an overview of the Amazon Q App APIs, see <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_Operations_QApps.html">Overview of Amazon Q Apps API operations</a>.</p> <p>For information about the IAM access control permissions you need to use the Amazon Q Apps API, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/deploy-experience-iam-role.html"> IAM role for the Amazon Q Business web experience including Amazon Q Apps</a> in the <i>Amazon Q Business User Guide</i>.</p>
module Aws::QApps
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-qapps/types'
require_relative 'aws-sdk-qapps/paginators'
require_relative 'aws-sdk-qapps/schema'
require_relative 'aws-sdk-qapps/auth_parameters'
require_relative 'aws-sdk-qapps/auth_resolver'
require_relative 'aws-sdk-qapps/client'
require_relative 'aws-sdk-qapps/customizations'
require_relative 'aws-sdk-qapps/errors'
require_relative 'aws-sdk-qapps/endpoint_parameters'
require_relative 'aws-sdk-qapps/endpoint_provider'
require_relative 'aws-sdk-qapps/waiters'
