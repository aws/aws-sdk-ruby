# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('WorkDocs', Module.new) unless Aws.const_defined?('WorkDocs')

# @title Amazon WorkDocs
# <p>The Amazon WorkDocs API is designed for the following use cases:</p>
#          <ul>
#             <li>
#                <p>File Migration: File migration applications are supported for users who
#                     want to migrate their files from an on-premises or off-premises file system or
#                     service. Users can insert files into a user directory structure, as well as
#                     allow for basic metadata changes, such as modifications to the permissions of
#                     files.</p>
#             </li>
#             <li>
#                <p>Security: Support security applications are supported for users who have
#                     additional security needs, such as antivirus or data loss prevention. The API
#                     actions, along with CloudTrail, allow these applications to detect when
#                     changes occur in Amazon WorkDocs. Then, the application can take the necessary
#                     actions and replace the target file. If the target file violates the policy, the
#                     application can also choose to email the user.</p>
#             </li>
#             <li>
#                <p>eDiscovery/Analytics: General administrative applications are supported,
#                     such as eDiscovery and analytics. These applications can choose to mimic or
#                     record the actions in an Amazon WorkDocs site, along with CloudTrail, to
#                     replicate data for eDiscovery, backup, or analytical applications.</p>
#             </li>
#          </ul>
#          <p>All Amazon WorkDocs API actions are Amazon authenticated and certificate-signed.
#             They not only require the use of the Amazon Web Services SDK, but also allow for the exclusive use of
#             IAM users and roles to help facilitate access, trust, and permission policies. By
#             creating a role and allowing an IAM user to access the Amazon WorkDocs site, the
#             IAM user gains full administrative visibility into the entire Amazon WorkDocs site (or as
#             set in the IAM policy). This includes, but is not limited to, the ability to modify file
#             permissions and upload any file to any user. This allows developers to perform the three
#             use cases above, as well as give users the ability to grant access on a selective basis
#             using the IAM model.</p>
#          <note>
#             <p>The pricing for Amazon WorkDocs APIs varies depending on the API call type for these actions:</p>
#             <ul>
#                <li>
#                   <p>
#                      <code>READ  (Get*)</code>
#                   </p>
#                </li>
#                <li>
#                   <p>
#                      <code>WRITE (Activate*, Add*, Create*, Deactivate*, Initiate*, Update*)</code>
#                   </p>
#                </li>
#                <li>
#                   <p>
#                      <code>LIST (Describe*)</code>
#                   </p>
#                </li>
#                <li>
#                   <p>
#                      <code>DELETE*, CANCEL</code>
#                   </p>
#                </li>
#             </ul>
#             <p>For information about Amazon WorkDocs API pricing, see <a href="https://aws.amazon.com/workdocs/pricing/">Amazon WorkDocs Pricing</a>.</p>
#          </note>
module Aws::WorkDocs
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-workdocs/types'
require_relative 'aws-sdk-workdocs/paginators'
require_relative 'aws-sdk-workdocs/schema'
require_relative 'aws-sdk-workdocs/auth_parameters'
require_relative 'aws-sdk-workdocs/auth_resolver'
require_relative 'aws-sdk-workdocs/client'
require_relative 'aws-sdk-workdocs/customizations'
require_relative 'aws-sdk-workdocs/errors'
require_relative 'aws-sdk-workdocs/endpoint_parameters'
require_relative 'aws-sdk-workdocs/endpoint_provider'
require_relative 'aws-sdk-workdocs/waiters'
