# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:supportapp)

# This module provides support for AWS Support App. This module is available in the
# `aws-sdk-supportapp` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     support_app = Aws::SupportApp::Client.new
#     resp = support_app.create_slack_channel_configuration(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Support App are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SupportApp::Errors::ServiceError
#       # rescues all AWS Support App API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SupportApp
  autoload :Types, 'aws-sdk-supportapp/types'
  autoload :ClientApi, 'aws-sdk-supportapp/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-supportapp/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-supportapp/client'
  autoload :Errors, 'aws-sdk-supportapp/errors'
  autoload :Resource, 'aws-sdk-supportapp/resource'
  autoload :EndpointParameters, 'aws-sdk-supportapp/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-supportapp/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-supportapp/endpoints'

  GEM_VERSION = '1.39.0'

end

require_relative 'aws-sdk-supportapp/customizations'
