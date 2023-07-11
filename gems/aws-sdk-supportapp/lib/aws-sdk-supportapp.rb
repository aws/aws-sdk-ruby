# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-supportapp/types'
require_relative 'aws-sdk-supportapp/client_api'
require_relative 'aws-sdk-supportapp/plugins/endpoints.rb'
require_relative 'aws-sdk-supportapp/client'
require_relative 'aws-sdk-supportapp/errors'
require_relative 'aws-sdk-supportapp/resource'
require_relative 'aws-sdk-supportapp/endpoint_parameters'
require_relative 'aws-sdk-supportapp/endpoint_provider'
require_relative 'aws-sdk-supportapp/endpoints'
require_relative 'aws-sdk-supportapp/customizations'

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

  GEM_VERSION = '1.9.0'

end
