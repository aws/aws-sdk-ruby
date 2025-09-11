# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MailManager', Module.new) unless Aws.const_defined?('MailManager')

# @title MailManager
# <fullname>Amazon SES Mail Manager API</fullname> <p>The Amazon SES Mail Manager API contains operations and data types that comprise the Mail Manager feature of <a href="http://aws.amazon.com/ses">Amazon Simple Email Service (SES)</a>.</p> <p>Mail Manager is a set of Amazon SES email gateway features designed to help you strengthen your organization's email infrastructure, simplify email workflow management, and streamline email compliance control. To learn more, see the <a href="https://docs.aws.amazon.com/ses/latest/dg/eb.html">Mail Manager chapter</a> in the <i>Amazon SES Developer Guide</i>.</p>
# @see https://w.amazon.com/bin/view/AWS/Border API Reference
module Aws::MailManager
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-mailmanager/types'
require_relative 'aws-sdk-mailmanager/paginators'
require_relative 'aws-sdk-mailmanager/schema'
require_relative 'aws-sdk-mailmanager/auth_parameters'
require_relative 'aws-sdk-mailmanager/auth_resolver'
require_relative 'aws-sdk-mailmanager/client'
require_relative 'aws-sdk-mailmanager/customizations'
require_relative 'aws-sdk-mailmanager/errors'
require_relative 'aws-sdk-mailmanager/endpoint_parameters'
require_relative 'aws-sdk-mailmanager/endpoint_provider'
require_relative 'aws-sdk-mailmanager/waiters'
