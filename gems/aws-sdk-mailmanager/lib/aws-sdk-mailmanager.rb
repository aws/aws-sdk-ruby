# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:mailmanager)

# This module provides support for MailManager. This module is available in the
# `aws-sdk-mailmanager` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     mail_manager = Aws::MailManager::Client.new
#     resp = mail_manager.create_addon_instance(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from MailManager are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MailManager::Errors::ServiceError
#       # rescues all MailManager API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MailManager
  autoload :Types, 'aws-sdk-mailmanager/types'
  autoload :ClientApi, 'aws-sdk-mailmanager/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-mailmanager/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-mailmanager/client'
  autoload :Errors, 'aws-sdk-mailmanager/errors'
  autoload :Waiters, 'aws-sdk-mailmanager/waiters'
  autoload :Resource, 'aws-sdk-mailmanager/resource'
  autoload :EndpointParameters, 'aws-sdk-mailmanager/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-mailmanager/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-mailmanager/endpoints'

  GEM_VERSION = '1.32.0'

end

require_relative 'aws-sdk-mailmanager/customizations'
