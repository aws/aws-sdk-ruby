# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-emrserverlesswebservice/types'
require_relative 'aws-sdk-emrserverlesswebservice/client_api'
require_relative 'aws-sdk-emrserverlesswebservice/client'
require_relative 'aws-sdk-emrserverlesswebservice/errors'
require_relative 'aws-sdk-emrserverlesswebservice/resource'
require_relative 'aws-sdk-emrserverlesswebservice/customizations'

# This module provides support for EMR Serverless Web Service. This module is available in the
# `aws-sdk-emrserverlesswebservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     emr_serverless_web_service = Aws::EMRServerlessWebService::Client.new
#     resp = emr_serverless_web_service.cancel_job_run(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from EMR Serverless Web Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EMRServerlessWebService::Errors::ServiceError
#       # rescues all EMR Serverless Web Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EMRServerlessWebService

  GEM_VERSION = '1.0.0'

end
