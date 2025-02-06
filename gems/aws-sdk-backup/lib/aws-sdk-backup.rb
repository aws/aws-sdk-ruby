# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:backup)

# This module provides support for AWS Backup. This module is available in the
# `aws-sdk-backup` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     backup = Aws::Backup::Client.new
#     resp = backup.cancel_legal_hold(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Backup are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Backup::Errors::ServiceError
#       # rescues all AWS Backup API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Backup
  autoload :Types, 'aws-sdk-backup/types'
  autoload :ClientApi, 'aws-sdk-backup/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-backup/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-backup/client'
  autoload :Errors, 'aws-sdk-backup/errors'
  autoload :Resource, 'aws-sdk-backup/resource'
  autoload :EndpointParameters, 'aws-sdk-backup/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-backup/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-backup/endpoints'

  GEM_VERSION = '1.85.0'

end

require_relative 'aws-sdk-backup/customizations'
