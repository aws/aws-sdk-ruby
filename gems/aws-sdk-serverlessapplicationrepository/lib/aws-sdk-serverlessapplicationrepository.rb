# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-serverlessapplicationrepository/types'
require_relative 'aws-sdk-serverlessapplicationrepository/client_api'
require_relative 'aws-sdk-serverlessapplicationrepository/client'
require_relative 'aws-sdk-serverlessapplicationrepository/errors'
require_relative 'aws-sdk-serverlessapplicationrepository/resource'
require_relative 'aws-sdk-serverlessapplicationrepository/customizations'

# This module provides support for AWSServerlessApplicationRepository. This module is available in the
# `aws-sdk-serverlessapplicationrepository` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     serverless_application_repository = Aws::ServerlessApplicationRepository::Client.new
#     resp = serverless_application_repository.create_application(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWSServerlessApplicationRepository are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ServerlessApplicationRepository::Errors::ServiceError
#       # rescues all AWSServerlessApplicationRepository API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ServerlessApplicationRepository

  GEM_VERSION = '1.32.0'

end
