# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:endusermessaging)

# This module provides support for AWS End User Messaging. This module is available in the
# `aws-sdk-endusermessaging` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     end_user_messaging = Aws::EndUserMessaging::Client.new
#     resp = end_user_messaging.create_brand_profile(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS End User Messaging are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EndUserMessaging::Errors::ServiceError
#       # rescues all AWS End User Messaging API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EndUserMessaging
  autoload :Types, 'aws-sdk-endusermessaging/types'
  autoload :ClientApi, 'aws-sdk-endusermessaging/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-endusermessaging/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-endusermessaging/client'
  autoload :Errors, 'aws-sdk-endusermessaging/errors'
  autoload :Waiters, 'aws-sdk-endusermessaging/waiters'
  autoload :Resource, 'aws-sdk-endusermessaging/resource'
  autoload :EndpointParameters, 'aws-sdk-endusermessaging/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-endusermessaging/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-endusermessaging/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-endusermessaging/customizations'
