# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv2'
require_relative 'aws-sdk-importexport/types'
require_relative 'aws-sdk-importexport/client_api'
require_relative 'aws-sdk-importexport/client'
require_relative 'aws-sdk-importexport/errors'
require_relative 'aws-sdk-importexport/resource'

module Aws
  # @service
  # This module provides support for AWS Import/Export, which shipped in `aws-sdk-importexport` gem.
  #
  # # Aws::ImportExport::Client
  #
  # The {Aws::ImportExport::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     importexport = Aws::ImportExport::Client.new
  #     resp = importexport.cancel_job(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::ImportExport::Errors
  #
  # Errors returned from AWS Import/Export all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ImportExport::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module ImportExport

    GEM_VERSION = '1.0.0'

  end
end
