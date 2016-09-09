# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-efs/types'
require_relative 'aws-sdk-efs/client_api'
require_relative 'aws-sdk-efs/client'
require_relative 'aws-sdk-efs/errors'
require_relative 'aws-sdk-efs/waiters'
require_relative 'aws-sdk-efs/resource'

# customizations for generated code
require_relative 'aws-sdk-efs/customizations.rb'

module Aws
  # This module provides support for Amazon Elastic File System.
  #
  # # Aws::EFS::Client
  #
  # The {Aws::EFS::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     efs = Aws::EFS::Client.new
  #     resp = efs.create_file_system(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::EFS::Errors
  #
  # Errors returned from Amazon Elastic File System all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::EFS::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module EFS

    GEM_VERSION = '1.0.0'

  end
end
