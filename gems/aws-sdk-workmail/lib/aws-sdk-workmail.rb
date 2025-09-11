# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('WorkMail', Module.new) unless Aws.const_defined?('WorkMail')

# @title Amazon WorkMail
# <p>WorkMail is a secure, managed business email and calendaring service with support for
#          existing desktop and mobile email clients. You can access your email, contacts, and
#          calendars using Microsoft Outlook, your browser, or other native iOS and Android email
#          applications. You can integrate WorkMail with your existing corporate directory and control
#          both the keys that encrypt your data and the location in which your data is
#          stored.</p>
#          <p>The WorkMail API is designed for the following scenarios:</p>
#          <ul>
#             <li>
#                <p>Listing and describing organizations</p>
#             </li>
#          </ul>
#          <ul>
#             <li>
#                <p>Managing users</p>
#             </li>
#          </ul>
#          <ul>
#             <li>
#                <p>Managing groups</p>
#             </li>
#          </ul>
#          <ul>
#             <li>
#                <p>Managing resources</p>
#             </li>
#          </ul>
#          <p>All WorkMail API operations are Amazon-authenticated and certificate-signed. They not
#          only require the use of the AWS SDK, but also allow for the exclusive use of AWS Identity and Access Management
#          users and roles to help facilitate access, trust, and permission policies. By creating a
#          role and allowing an IAM user to access the WorkMail site, the IAM user gains full
#          administrative visibility into the entire WorkMail organization (or as set in the IAM
#          policy). This includes, but is not limited to, the ability to create, update, and delete
#          users, groups, and resources. This allows developers to perform the scenarios listed above,
#          as well as give users the ability to grant access on a selective basis using the IAM
#          model.</p>
module Aws::WorkMail
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-workmail/types'
require_relative 'aws-sdk-workmail/paginators'
require_relative 'aws-sdk-workmail/schema'
require_relative 'aws-sdk-workmail/auth_parameters'
require_relative 'aws-sdk-workmail/auth_resolver'
require_relative 'aws-sdk-workmail/client'
require_relative 'aws-sdk-workmail/customizations'
require_relative 'aws-sdk-workmail/errors'
require_relative 'aws-sdk-workmail/endpoint_parameters'
require_relative 'aws-sdk-workmail/endpoint_provider'
require_relative 'aws-sdk-workmail/waiters'
