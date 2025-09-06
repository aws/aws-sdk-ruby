# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Notifications', Module.new) unless Aws.const_defined?('Notifications')

# @title AWS User Notifications
# <p>The <i>Amazon Web Services User Notifications API Reference</i> provides descriptions, API request parameters, and the JSON response for each of the User Notification API actions.</p>
#          <p>User Notification control plane APIs are currently available in US East (Virginia) - <code>us-east-1</code>.</p>
#          <p>
#             <a href="https://docs.aws.amazon.com/notifications/latest/APIReference/API_GetNotificationEvent.html">GetNotificationEvent</a>
# 	 and <a href="https://docs.aws.amazon.com/notifications/latest/APIReference/API_ListNotificationEvents.html">ListNotificationEvents</a> APIs are currently available in
# 	 <a href="https://docs.aws.amazon.com/notifications/latest/userguide/supported-regions.html">commercial partition Regions</a> and only return notifications stored in the same Region in which they're called.</p>
#          <p>The User Notifications console can only be used in US East (Virginia). Your data however, is stored in each Region chosen as a 
# 	 <a href="https://docs.aws.amazon.com/notifications/latest/userguide/notification-hubs.html">notification hub</a> in addition to US East (Virginia).</p>
module Aws::Notifications
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-notifications/types'
require_relative 'aws-sdk-notifications/paginators'
require_relative 'aws-sdk-notifications/schema'
require_relative 'aws-sdk-notifications/auth_parameters'
require_relative 'aws-sdk-notifications/auth_resolver'
require_relative 'aws-sdk-notifications/client'
require_relative 'aws-sdk-notifications/customizations'
require_relative 'aws-sdk-notifications/errors'
require_relative 'aws-sdk-notifications/endpoint_parameters'
require_relative 'aws-sdk-notifications/endpoint_provider'
require_relative 'aws-sdk-notifications/waiters'
