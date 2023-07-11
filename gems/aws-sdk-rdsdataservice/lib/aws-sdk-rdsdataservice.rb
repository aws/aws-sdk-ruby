# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-rdsdataservice/types'
require_relative 'aws-sdk-rdsdataservice/client_api'
require_relative 'aws-sdk-rdsdataservice/plugins/endpoints.rb'
require_relative 'aws-sdk-rdsdataservice/client'
require_relative 'aws-sdk-rdsdataservice/errors'
require_relative 'aws-sdk-rdsdataservice/resource'
require_relative 'aws-sdk-rdsdataservice/endpoint_parameters'
require_relative 'aws-sdk-rdsdataservice/endpoint_provider'
require_relative 'aws-sdk-rdsdataservice/endpoints'
require_relative 'aws-sdk-rdsdataservice/customizations'

# This module provides support for AWS RDS DataService. This module is available in the
# `aws-sdk-rdsdataservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     rds_data_service = Aws::RDSDataService::Client.new
#     resp = rds_data_service.batch_execute_statement(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS RDS DataService are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::RDSDataService::Errors::ServiceError
#       # rescues all AWS RDS DataService API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::RDSDataService

  GEM_VERSION = '1.45.0'

end
