# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Codestarnotifications', Module.new) unless Aws.const_defined?('Codestarnotifications')

# @title AWS CodeStar Notifications
# <p>This CodeStar Notifications API Reference provides descriptions and usage examples of the
#       operations and data types for the CodeStar Notifications API. You can use the CodeStar Notifications API
#       to work with the following objects:</p>
#          <p>Notification rules, by calling the following: </p>
#          <ul>
#             <li>
#                <p>
#                   <a>CreateNotificationRule</a>, which creates a notification rule for a
#                     resource in your account. </p>
#             </li>
#             <li>
#                <p>
#                   <a>DeleteNotificationRule</a>, which deletes a notification rule. </p>
#             </li>
#             <li>
#                <p>
#                   <a>DescribeNotificationRule</a>, which provides information about a notification rule. </p>
#             </li>
#             <li>
#                <p>
#                   <a>ListNotificationRules</a>, which lists the notification rules associated with
#           your account. </p>
#             </li>
#             <li>
#                <p>
#                   <a>UpdateNotificationRule</a>, which changes the name, events, or targets associated with a
#           notification rule. </p>
#             </li>
#             <li>
#                <p>
#                   <a>Subscribe</a>, which subscribes a target to a notification rule. </p>
#             </li>
#             <li>
#                <p>
#                   <a>Unsubscribe</a>, which removes a target from a notification rule. </p>
#             </li>
#          </ul>
#          <p>Targets, by calling the following: </p>
#          <ul>
#             <li>
#                <p>
#                   <a>DeleteTarget</a>, which removes a notification rule target from a
#           notification rule. </p>
#             </li>
#             <li>
#                <p>
#                   <a>ListTargets</a>, which lists the targets associated with a
#                     notification rule. </p>
#             </li>
#          </ul>
#          <p>Events, by calling the following: </p>
#          <ul>
#             <li>
#                <p>
#                   <a>ListEventTypes</a>, which lists the event types you can include in
#                     a notification rule. </p>
#             </li>
#          </ul>
#          <p>Tags, by calling the following: </p>
#          <ul>
#             <li>
#                <p>
#                   <a>ListTagsForResource</a>, which lists the tags already associated
#                     with a notification rule in your account. </p>
#             </li>
#             <li>
#                <p>
#                   <a>TagResource</a>, which associates a tag you provide with a
#                     notification rule in your account. </p>
#             </li>
#             <li>
#                <p>
#                   <a>UntagResource</a>, which removes a tag from a notification rule in
#                     your account. </p>
#             </li>
#          </ul>
#          <p> For information about how to use CodeStar Notifications, see the <a href="https://docs.aws.amazon.com/dtconsole/latest/userguide/what-is-dtconsole.html">Amazon Web Services Developer Tools Console User Guide</a>.
#     </p>
module Aws::Codestarnotifications
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-codestarnotifications/types'
require_relative 'aws-sdk-codestarnotifications/paginators'
require_relative 'aws-sdk-codestarnotifications/schema'
require_relative 'aws-sdk-codestarnotifications/auth_parameters'
require_relative 'aws-sdk-codestarnotifications/auth_resolver'
require_relative 'aws-sdk-codestarnotifications/client'
require_relative 'aws-sdk-codestarnotifications/customizations'
require_relative 'aws-sdk-codestarnotifications/errors'
require_relative 'aws-sdk-codestarnotifications/endpoint_parameters'
require_relative 'aws-sdk-codestarnotifications/endpoint_provider'
require_relative 'aws-sdk-codestarnotifications/waiters'
