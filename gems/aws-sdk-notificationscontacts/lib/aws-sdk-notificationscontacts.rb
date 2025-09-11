# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('NotificationsContacts', Module.new) unless Aws.const_defined?('NotificationsContacts')

# @title AWS User Notifications Contacts
# <p>AWS User Notifications Contacts is a service that allows you to create and manage email contacts for AWS User Notifications. The AWS User Notifications Contacts API Reference provides descriptions, API request parameters, and the JSON response for all email contact related API actions.</p>
module Aws::NotificationsContacts
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-notificationscontacts/types'
require_relative 'aws-sdk-notificationscontacts/paginators'
require_relative 'aws-sdk-notificationscontacts/schema'
require_relative 'aws-sdk-notificationscontacts/auth_parameters'
require_relative 'aws-sdk-notificationscontacts/auth_resolver'
require_relative 'aws-sdk-notificationscontacts/client'
require_relative 'aws-sdk-notificationscontacts/customizations'
require_relative 'aws-sdk-notificationscontacts/errors'
require_relative 'aws-sdk-notificationscontacts/endpoint_parameters'
require_relative 'aws-sdk-notificationscontacts/endpoint_provider'
require_relative 'aws-sdk-notificationscontacts/waiters'
