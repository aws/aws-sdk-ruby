# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ResourceGroups', Module.new) unless Aws.const_defined?('ResourceGroups')

# @title AWS Resource Groups
# <p>Resource Groups lets you organize Amazon Web Services resources such as Amazon Elastic Compute Cloud instances, Amazon Relational Database Service
#             databases, and Amazon Simple Storage Service buckets into groups using criteria that you define as tags. A
#             resource group is a collection of resources that match the resource types specified in a
#             query, and share one or more tags or portions of tags. You can create a group of
#             resources based on their roles in your cloud infrastructure, lifecycle stages, regions,
#             application layers, or virtually any criteria. Resource Groups enable you to automate management
#             tasks, such as those in Amazon Web Services Systems Manager Automation documents, on tag-related resources in
#             Amazon Web Services Systems Manager. Groups of tagged resources also let you quickly view a custom console in
#             Amazon Web Services Systems Manager that shows Config compliance and other monitoring data about member
#             resources.</p>
#          <p>To create a resource group, build a resource query, and specify tags that identify the
#             criteria that members of the group have in common. Tags are key-value pairs.</p>
#          <p>For more information about Resource Groups, see the <a href="https://docs.aws.amazon.com/ARG/latest/userguide/welcome.html">Resource Groups User Guide</a>.</p>
#          <p>Resource Groups uses a REST-compliant API that you can use to perform the following types of
#             operations.</p>
#          <ul>
#             <li>
#                <p>Create, Read, Update, and Delete (CRUD) operations on resource groups and
#                     resource query entities</p>
#             </li>
#             <li>
#                <p>Applying, editing, and removing tags from resource groups</p>
#             </li>
#             <li>
#                <p>Resolving resource group member Amazon resource names (ARN)s so they can be returned as search
#                     results</p>
#             </li>
#             <li>
#                <p>Getting data about resources that are members of a group</p>
#             </li>
#             <li>
#                <p>Searching Amazon Web Services resources based on a resource query</p>
#             </li>
#          </ul>
module Aws::ResourceGroups
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-resourcegroups/types'
require_relative 'aws-sdk-resourcegroups/paginators'
require_relative 'aws-sdk-resourcegroups/schema'
require_relative 'aws-sdk-resourcegroups/auth_parameters'
require_relative 'aws-sdk-resourcegroups/auth_resolver'
require_relative 'aws-sdk-resourcegroups/client'
require_relative 'aws-sdk-resourcegroups/errors'
require_relative 'aws-sdk-resourcegroups/endpoint_parameters'
require_relative 'aws-sdk-resourcegroups/endpoint_provider'
require_relative 'aws-sdk-resourcegroups/waiters'
require_relative 'aws-sdk-resourcegroups/customizations'
