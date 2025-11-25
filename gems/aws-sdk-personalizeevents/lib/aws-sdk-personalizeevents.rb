# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:personalizeevents)

# This module provides support for Amazon Personalize Events. This module is available in the
# `aws-sdk-personalizeevents` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     personalize_events = Aws::PersonalizeEvents::Client.new
#     resp = personalize_events.put_action_interactions(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Personalize Events are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PersonalizeEvents::Errors::ServiceError
#       # rescues all Amazon Personalize Events API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PersonalizeEvents
  autoload :Types, 'aws-sdk-personalizeevents/types'
  autoload :ClientApi, 'aws-sdk-personalizeevents/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-personalizeevents/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-personalizeevents/client'
  autoload :Errors, 'aws-sdk-personalizeevents/errors'
  autoload :Resource, 'aws-sdk-personalizeevents/resource'
  autoload :EndpointParameters, 'aws-sdk-personalizeevents/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-personalizeevents/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-personalizeevents/endpoints'

  GEM_VERSION = '1.70.0'

end

require_relative 'aws-sdk-personalizeevents/customizations'
