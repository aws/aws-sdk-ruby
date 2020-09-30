# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-costandusagereportservice/types'
require_relative 'aws-sdk-costandusagereportservice/client_api'
require_relative 'aws-sdk-costandusagereportservice/client'
require_relative 'aws-sdk-costandusagereportservice/errors'
require_relative 'aws-sdk-costandusagereportservice/resource'
require_relative 'aws-sdk-costandusagereportservice/customizations'

# This module provides support for AWS Cost and Usage Report Service. This module is available in the
# `aws-sdk-costandusagereportservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     costand_usage_report_service = Aws::CostandUsageReportService::Client.new
#     resp = costand_usage_report_service.delete_report_definition(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Cost and Usage Report Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CostandUsageReportService::Errors::ServiceError
#       # rescues all AWS Cost and Usage Report Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CostandUsageReportService

  GEM_VERSION = '1.28.0'

end
