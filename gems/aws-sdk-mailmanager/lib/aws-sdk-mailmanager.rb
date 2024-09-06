# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-mailmanager/types'
require_relative 'aws-sdk-mailmanager/client_api'
require_relative 'aws-sdk-mailmanager/plugins/endpoints.rb'
require_relative 'aws-sdk-mailmanager/client'
require_relative 'aws-sdk-mailmanager/errors'
require_relative 'aws-sdk-mailmanager/resource'
require_relative 'aws-sdk-mailmanager/endpoint_parameters'
require_relative 'aws-sdk-mailmanager/endpoint_provider'
require_relative 'aws-sdk-mailmanager/endpoints'
require_relative 'aws-sdk-mailmanager/customizations'

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

  GEM_VERSION = '1.6.0'

end
