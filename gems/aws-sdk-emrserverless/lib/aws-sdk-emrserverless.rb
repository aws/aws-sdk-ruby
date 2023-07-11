# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-emrserverless/types'
require_relative 'aws-sdk-emrserverless/client_api'
require_relative 'aws-sdk-emrserverless/plugins/endpoints.rb'
require_relative 'aws-sdk-emrserverless/client'
require_relative 'aws-sdk-emrserverless/errors'
require_relative 'aws-sdk-emrserverless/resource'
require_relative 'aws-sdk-emrserverless/endpoint_parameters'
require_relative 'aws-sdk-emrserverless/endpoint_provider'
require_relative 'aws-sdk-emrserverless/endpoints'
require_relative 'aws-sdk-emrserverless/customizations'

# This module provides support for EMR Serverless. This module is available in the
# `aws-sdk-emrserverless` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     emr_serverless = Aws::EMRServerless::Client.new
#     resp = emr_serverless.cancel_job_run(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from EMR Serverless are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EMRServerless::Errors::ServiceError
#       # rescues all EMR Serverless API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EMRServerless

  GEM_VERSION = '1.13.0'

end
