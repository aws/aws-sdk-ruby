# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:apptest)

# This module provides support for AWS Mainframe Modernization Application Testing. This module is available in the
# `aws-sdk-apptest` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     app_test = Aws::AppTest::Client.new
#     resp = app_test.create_test_case(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Mainframe Modernization Application Testing are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AppTest::Errors::ServiceError
#       # rescues all AWS Mainframe Modernization Application Testing API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AppTest
  autoload :Types, 'aws-sdk-apptest/types'
  autoload :ClientApi, 'aws-sdk-apptest/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-apptest/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-apptest/client'
  autoload :Errors, 'aws-sdk-apptest/errors'
  autoload :Waiters, 'aws-sdk-apptest/waiters'
  autoload :Resource, 'aws-sdk-apptest/resource'
  autoload :EndpointParameters, 'aws-sdk-apptest/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-apptest/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-apptest/endpoints'

  GEM_VERSION = '1.17.0'

end

require_relative 'aws-sdk-apptest/customizations'
