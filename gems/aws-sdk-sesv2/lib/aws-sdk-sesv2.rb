# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SESv2', Module.new) unless Aws.const_defined?('SESv2')

# @title Amazon Simple Email Service
# <fullname>Amazon SES API v2</fullname>
#          <p>
#             <a href="http://aws.amazon.com/ses">Amazon SES</a> is an Amazon Web Services service that
#             you can use to send email messages to your customers.</p>
#          <p>If you're new to Amazon SES API v2, you might find it helpful to review the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/">Amazon Simple Email Service Developer
#                 Guide</a>. The <i>Amazon SES Developer Guide</i> provides information
#             and code samples that demonstrate how to use Amazon SES API v2 features programmatically.</p>
module Aws::SESv2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-sesv2/types'
require_relative 'aws-sdk-sesv2/paginators'
require_relative 'aws-sdk-sesv2/schema'
require_relative 'aws-sdk-sesv2/auth_parameters'
require_relative 'aws-sdk-sesv2/auth_resolver'
require_relative 'aws-sdk-sesv2/client'
require_relative 'aws-sdk-sesv2/customizations'
require_relative 'aws-sdk-sesv2/errors'
require_relative 'aws-sdk-sesv2/endpoint_parameters'
require_relative 'aws-sdk-sesv2/endpoint_provider'
require_relative 'aws-sdk-sesv2/waiters'
