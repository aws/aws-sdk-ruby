# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-backupstorage/types'
require_relative 'aws-sdk-backupstorage/client_api'
require_relative 'aws-sdk-backupstorage/plugins/endpoints.rb'
require_relative 'aws-sdk-backupstorage/client'
require_relative 'aws-sdk-backupstorage/errors'
require_relative 'aws-sdk-backupstorage/resource'
require_relative 'aws-sdk-backupstorage/endpoint_parameters'
require_relative 'aws-sdk-backupstorage/endpoint_provider'
require_relative 'aws-sdk-backupstorage/endpoints'
require_relative 'aws-sdk-backupstorage/customizations'

# This module provides support for AWS Backup Storage. This module is available in the
# `aws-sdk-backupstorage` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     backup_storage = Aws::BackupStorage::Client.new
#     resp = backup_storage.delete_object(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Backup Storage are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::BackupStorage::Errors::ServiceError
#       # rescues all AWS Backup Storage API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::BackupStorage

  GEM_VERSION = '1.7.0'

end
