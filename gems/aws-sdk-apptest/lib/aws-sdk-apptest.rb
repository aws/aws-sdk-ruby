# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-apptest/types'
require_relative 'aws-sdk-apptest/client_api'
require_relative 'aws-sdk-apptest/plugins/endpoints.rb'
require_relative 'aws-sdk-apptest/client'
require_relative 'aws-sdk-apptest/errors'
require_relative 'aws-sdk-apptest/waiters'
require_relative 'aws-sdk-apptest/resource'
require_relative 'aws-sdk-apptest/endpoint_parameters'
require_relative 'aws-sdk-apptest/endpoint_provider'
require_relative 'aws-sdk-apptest/endpoints'
require_relative 'aws-sdk-apptest/customizations'

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

  GEM_VERSION = '1.4.0'

end
