# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:socialmessaging)

# This module provides support for AWS End User Messaging Social. This module is available in the
# `aws-sdk-socialmessaging` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     social_messaging = Aws::SocialMessaging::Client.new
#     resp = social_messaging.associate_whats_app_business_account(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS End User Messaging Social are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SocialMessaging::Errors::ServiceError
#       # rescues all AWS End User Messaging Social API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SocialMessaging
  autoload :Types, 'aws-sdk-socialmessaging/types'
  autoload :ClientApi, 'aws-sdk-socialmessaging/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-socialmessaging/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-socialmessaging/client'
  autoload :Errors, 'aws-sdk-socialmessaging/errors'
  autoload :Resource, 'aws-sdk-socialmessaging/resource'
  autoload :EndpointParameters, 'aws-sdk-socialmessaging/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-socialmessaging/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-socialmessaging/endpoints'

  GEM_VERSION = '1.11.0'

end

require_relative 'aws-sdk-socialmessaging/customizations'
