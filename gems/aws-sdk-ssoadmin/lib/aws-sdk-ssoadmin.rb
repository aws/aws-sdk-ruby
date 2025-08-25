# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ssoadmin)

# This module provides support for AWS Single Sign-On Admin. This module is available in the
# `aws-sdk-ssoadmin` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sso_admin = Aws::SSOAdmin::Client.new
#     resp = sso_admin.attach_customer_managed_policy_reference_to_permission_set(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Single Sign-On Admin are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SSOAdmin::Errors::ServiceError
#       # rescues all AWS Single Sign-On Admin API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SSOAdmin
  autoload :Types, 'aws-sdk-ssoadmin/types'
  autoload :ClientApi, 'aws-sdk-ssoadmin/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ssoadmin/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ssoadmin/client'
  autoload :Errors, 'aws-sdk-ssoadmin/errors'
  autoload :Waiters, 'aws-sdk-ssoadmin/waiters'
  autoload :Resource, 'aws-sdk-ssoadmin/resource'
  autoload :EndpointParameters, 'aws-sdk-ssoadmin/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ssoadmin/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ssoadmin/endpoints'

  GEM_VERSION = '1.60.0'

end

require_relative 'aws-sdk-ssoadmin/customizations'
