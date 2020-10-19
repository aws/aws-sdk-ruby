# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-backup/types'
require_relative 'aws-sdk-backup/client_api'
require_relative 'aws-sdk-backup/client'
require_relative 'aws-sdk-backup/errors'
require_relative 'aws-sdk-backup/resource'
require_relative 'aws-sdk-backup/customizations'

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
#     resp = backup.create_backup_plan(params)
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

  GEM_VERSION = '1.24.0'

end
