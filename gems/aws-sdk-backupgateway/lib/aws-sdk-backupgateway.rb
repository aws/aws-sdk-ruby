# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-backupgateway/types'
require_relative 'aws-sdk-backupgateway/client_api'
require_relative 'aws-sdk-backupgateway/plugins/endpoints.rb'
require_relative 'aws-sdk-backupgateway/client'
require_relative 'aws-sdk-backupgateway/errors'
require_relative 'aws-sdk-backupgateway/resource'
require_relative 'aws-sdk-backupgateway/endpoint_parameters'
require_relative 'aws-sdk-backupgateway/endpoint_provider'
require_relative 'aws-sdk-backupgateway/endpoints'
require_relative 'aws-sdk-backupgateway/customizations'

# This module provides support for AWS Backup Gateway. This module is available in the
# `aws-sdk-backupgateway` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     backup_gateway = Aws::BackupGateway::Client.new
#     resp = backup_gateway.associate_gateway_to_server(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Backup Gateway are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::BackupGateway::Errors::ServiceError
#       # rescues all AWS Backup Gateway API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::BackupGateway

  GEM_VERSION = '1.13.0'

end
