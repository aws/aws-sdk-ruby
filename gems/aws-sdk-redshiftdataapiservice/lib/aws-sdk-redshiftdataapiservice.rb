# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-redshiftdataapiservice/types'
require_relative 'aws-sdk-redshiftdataapiservice/client_api'
require_relative 'aws-sdk-redshiftdataapiservice/client'
require_relative 'aws-sdk-redshiftdataapiservice/errors'
require_relative 'aws-sdk-redshiftdataapiservice/resource'
require_relative 'aws-sdk-redshiftdataapiservice/customizations'

# This module provides support for Redshift Data API Service. This module is available in the
# `aws-sdk-redshiftdataapiservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     redshift_data_api_service = Aws::RedshiftDataAPIService::Client.new
#     resp = redshift_data_api_service.cancel_statement(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Redshift Data API Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::RedshiftDataAPIService::Errors::ServiceError
#       # rescues all Redshift Data API Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::RedshiftDataAPIService

  GEM_VERSION = '1.2.0'

end
