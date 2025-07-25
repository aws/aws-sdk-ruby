# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:notificationscontacts)

# This module provides support for AWS User Notifications Contacts. This module is available in the
# `aws-sdk-notificationscontacts` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     notifications_contacts = Aws::NotificationsContacts::Client.new
#     resp = notifications_contacts.activate_email_contact(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS User Notifications Contacts are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::NotificationsContacts::Errors::ServiceError
#       # rescues all AWS User Notifications Contacts API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::NotificationsContacts
  autoload :Types, 'aws-sdk-notificationscontacts/types'
  autoload :ClientApi, 'aws-sdk-notificationscontacts/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-notificationscontacts/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-notificationscontacts/client'
  autoload :Errors, 'aws-sdk-notificationscontacts/errors'
  autoload :Waiters, 'aws-sdk-notificationscontacts/waiters'
  autoload :Resource, 'aws-sdk-notificationscontacts/resource'
  autoload :EndpointParameters, 'aws-sdk-notificationscontacts/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-notificationscontacts/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-notificationscontacts/endpoints'

  GEM_VERSION = '1.7.0'

end

require_relative 'aws-sdk-notificationscontacts/customizations'
