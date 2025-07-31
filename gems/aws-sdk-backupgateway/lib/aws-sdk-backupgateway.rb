# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:backupgateway)

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
  autoload :Types, 'aws-sdk-backupgateway/types'
  autoload :ClientApi, 'aws-sdk-backupgateway/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-backupgateway/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-backupgateway/client'
  autoload :Errors, 'aws-sdk-backupgateway/errors'
  autoload :Resource, 'aws-sdk-backupgateway/resource'
  autoload :EndpointParameters, 'aws-sdk-backupgateway/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-backupgateway/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-backupgateway/endpoints'

  GEM_VERSION = '1.39.0'

end

require_relative 'aws-sdk-backupgateway/customizations'
