# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-redshiftserverless/types'
require_relative 'aws-sdk-redshiftserverless/client_api'
require_relative 'aws-sdk-redshiftserverless/plugins/endpoints.rb'
require_relative 'aws-sdk-redshiftserverless/client'
require_relative 'aws-sdk-redshiftserverless/errors'
require_relative 'aws-sdk-redshiftserverless/resource'
require_relative 'aws-sdk-redshiftserverless/endpoint_parameters'
require_relative 'aws-sdk-redshiftserverless/endpoint_provider'
require_relative 'aws-sdk-redshiftserverless/endpoints'
require_relative 'aws-sdk-redshiftserverless/customizations'

# This module provides support for Redshift Serverless. This module is available in the
# `aws-sdk-redshiftserverless` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     redshift_serverless = Aws::RedshiftServerless::Client.new
#     resp = redshift_serverless.convert_recovery_point_to_snapshot(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Redshift Serverless are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::RedshiftServerless::Errors::ServiceError
#       # rescues all Redshift Serverless API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::RedshiftServerless

  GEM_VERSION = '1.12.0'

end
